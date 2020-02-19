package edu.etime.yqxdc.controllers.webcontrollers;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import edu.etime.yqxdc.dto.GoodsDto;
import edu.etime.yqxdc.pojo.Goods;
import edu.etime.yqxdc.pojo.GoodsType;
import edu.etime.yqxdc.pojo.SysRole;
import edu.etime.yqxdc.services.interfaces.GoodsService;
import edu.etime.yqxdc.services.interfaces.GoodsTypeService;
import edu.etime.yqxdc.tools.Pagers;

@Controller
@RequestMapping("/web/goods")
public class WebGoodsController {
    @Autowired
    private GoodsService service;
    @Autowired
	private GoodsTypeService gtservice;
    /**
     *select
     * @param gname
     * @param gtid
     * @param model
     * @param index
     * @return
     */
 
	@RequestMapping("/list")    
	public String listpage(String gname,String gtid,Model model, Integer index){
		if(index==null){
			index=1;
		}
		//初始化商品类型
		GoodsType goodstype = new GoodsType();
		goodstype.setGtstate(1);
		List<GoodsType> goodsTypeList = gtservice.selectGoodsTypeList(goodstype);
		model.addAttribute("goodstypelist", goodsTypeList);
		
		//2����ѯ��Ʒ�б�
		Goods goods = new Goods();
		if(gname!=null){
			goods.setGname(gname);
		}
		if(gtid!=null){
			goods.setGtid(gtid);
		}
		//List<Goodsdto> goodslist = service.selectGoods(goods);//ģ����ѯ
		Pagers<GoodsDto> p= service.selectSysRolepage(goods, index, 5);//��ҳ��ѯ
		model.addAttribute("p", p);
		
		//3����ת��list.jspҳ��		
		return "goods/goods-list";
	}
	/**
	 * 增加一个菜品
	 * @param model
	 * @return
	 */
	@RequestMapping("/toadd")
	public String toadd(Model model){
		GoodsType goodstype = new GoodsType();
		goodstype.setGtstate(1);
		List<GoodsType> goodsTypeList = gtservice.selectGoodsTypeList(goodstype);
		model.addAttribute("type", goodsTypeList);
		//��ת������
		return "goods/goods-add";
	}
	
	/**
	 * ������Ʒ����
	 * @param goods ��Ʒ����
	 * @param file ��Ҫ�ϴ���ͼƬ
	 * @param request
	 * @return
	 */
	@RequestMapping("/add")
	public String add(Goods goods,@RequestParam("file") MultipartFile file,HttpServletRequest request,Model model){
		//1���ϴ�ͼƬ
		if(file!=null && !file.isEmpty()){
			//��ȡ�ļ�������
			String oldname = file.getOriginalFilename();
			//��ȡ�ļ��ĺ�׺��
			String sux = oldname.substring(oldname.lastIndexOf(".")); 
			//�����Ե��ļ���
			String newname = UUID.randomUUID().toString()+sux;
			//��ȡ�ļ����ϴ�����·��
			String upload = request.getSession().getServletContext().getRealPath("/file/")+newname;
			//�ϴ�ͼƬ
			try {
				file.transferTo(new File(upload));
				//�ϴ��ļ�֮�󣬽��ļ����Ʒ��뵽goods������
				goods.setGimg(newname);
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}			
		}
		//2��Ϊ���goods��������
		goods.setGid(UUID.randomUUID().toString());
		System.out.println(goods.toString());
		
		//3������
		int rtn = service.insertGoods(goods);
		//4����������
		if(rtn>0){
			return "redirect:/web/goods/list";
		}else{
			model.addAttribute("msg", "添加商品失败");
			return "goods/goods-add";
		}
	}
	/**
	 * 初始化商品名称
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping("/toedit/{id}")
	public String toedit(@PathVariable(value = "id")String id, Model model){
		
		
		//chu shi hua goodstype
		GoodsType goodstype = new GoodsType();
		//可用的商品类型
		goodstype.setGtstate(1);
		List<GoodsType> goodsTypeList = gtservice.selectGoodsTypeList(goodstype);
		model.addAttribute("type", goodsTypeList);
		//通过id来查询商品
		Goods goods =service.selectGoodsById(id);
		//jsp页面即可使用goods.字段获取相应的数据
		model.addAttribute("goods" , goods);
		return "goods/goods-edit";
	}
	/**
	 * 编辑
	 * @param goods
	 * @param model
	 * @return
	 */
	@RequestMapping("/edit")
	public String edit(Goods goods,Model model){
		int rtn=service.updateGoods(goods);
		System.out.println(rtn);
		System.out.println(goods);
		if(rtn>0){
			return "redirect:/web/goods/list";
		}else {
			model.addAttribute("msg","fail to edit");
			return "goods/goods-edit";
		}
		
	}
}
