package com.yayao.pagination;

import java.util.List;
/**
 * 分页类
 * @author yy
 *
 * @param <E>
 */
public class PageBean {
    private List list;      //返回某一页的记录列表  
 
    private int allRow;         //总记录数  
    private int totalPage;      //总页数  
    private int currentPage;    //当前页数  
    private int pageSize;       //每页记录数  
      
    private boolean isFirstPage;        //是否为第一页  
    private boolean isLastPage;         //是否为最后一页  
    private boolean hasPreviousPage;    //是否有上一页  
    private boolean hasNextPage;        //是否有下一页  
      
      
    /** 
     * 初始化分页信息 
     */  
    public void init(){  
        this.isFirstPage=isFirstPage();  
        this.isLastPage=isLastPage();  
        this.hasPreviousPage=isHasPreviousPage();  
        this.hasNextPage=isHasNextPage();  
    }  
      
    /** 
     * 判断分页信息,只需getter方法 （is方法）
     */  
    public boolean isFirstPage(){  
        return currentPage==1;  //如实当前页是第一页
    }  
      
    public boolean isLastPage(){  
        return currentPage==totalPage;  //如果当前页是最后一页
    }  
      
    public boolean isHasPreviousPage(){  
        return currentPage!=1;  //只要当前页不是第一页
    }  
      
    public boolean isHasNextPage(){  
        return currentPage!=totalPage; //只要当前页不是最后一页
    }  
      
      
        /**  
    　　 * 计算总页数,静态方法,供外部直接通过类名调用  
    　　 * @param pageSize 每页记录数  
    　　 * @param allRow 总记录数  
    　　 * @return 总页数  
    　　 */   
    public static int countTotalPage(final int pageSize,final int allRow){   
        int totalPage = allRow % pageSize == 0 ? allRow/pageSize : allRow/pageSize+1;   
        return totalPage;  
    }  
  
       /** 
    　　* 计算当前页开始记录 
    　　* @parampageSize每页记录数 
    　　* @paramcurrentPage当前第几页 
    　　* @return当前页开始记录号 
    　　*/  
    public static int countOffset(final int pageSize,final int currentPage){   
        final int offset = pageSize*(currentPage-1);   
        return offset;   
    }   
  
        /**   
    　　 * 计算当前页,若为0或者请求的URL中没有"?page=",则用1代替  
    　　 * @param page 传入的参数(可能为空,即0,则返回1)  
    　　 * @return 当前页  
    　　 */   
    public static int countCurrentPage(int page){   
        final int curPage = (page==0?1:page);   
        return curPage;   
    }   
      
      
    public List getList() {  
        return list;  
    }  
  
    public void setList(List list) {  
        this.list = list;  
    }  
          
    public int getAllRow() {  
        return allRow;  
    }  
    public void setAllRow(int allRow) {  
        this.allRow = allRow;  
    }  
    public int getPageSize() {  
        return pageSize;  
    }  
    public void setPageSize(int pageSize) {  
        this.pageSize = pageSize;  
    }  
    public int getTotalPage() {  
        return totalPage;  
    }  
    public void setTotalPage(int totalPage) {  
        this.totalPage = totalPage;  
    }  
    public int getCurrentPage() {  
        return currentPage;  
    }  
    public void setCurrentPage(int currentPage) {  
        this.currentPage = currentPage;  
    }  
}
