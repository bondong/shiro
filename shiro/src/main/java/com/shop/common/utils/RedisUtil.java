package com.shop.common.utils;
import java.util.Set;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.exceptions.JedisConnectionException;

import com.shop.common.utils.SerializeUtil;
import com.shop.common.utils.StringUtils;
/*
 * 清空redis中关于sojson的数据
 * */
public class RedisUtil {
	
	public static Jedis getJedis(){
		Jedis jd;
		try {
			 jd = new Jedis("127.0.0.1", 6379);
	        } catch (JedisConnectionException e) {
				String message = StringUtils.trim(e.getMessage());
				if("Could not get a resource from the pool".equalsIgnoreCase(message)){
					System.out.println("++++++++++请检查你的redis服务++++++++");
					System.exit(0);//停止项目
				}
				throw new JedisConnectionException(e);
	        } catch (Exception e) {
	            throw new RuntimeException(e);
	        }
		
		System.out.println("Connection to server sucessfully");
	    //查看服务是否运行
	    System.out.println("Server is running: "+jd.ping());
		return jd;
	}
	
	public static void testChinese(Jedis jedis){
		try {
			String testKey = "测试中文key-sojson";
			String testValue = "测试中文value-sojson";		
			System.out.println("测试数据  " + testKey + ":" + testValue);
			byte[] bTestKey = SerializeUtil.serialize(testKey);
			byte[] bTestValue = SerializeUtil.serialize(testValue);
			System.out.println("测试数据序列化  " + bTestKey + ":" + bTestValue);
			
			System.out.println("测试数据放入redis.........");
			jedis.set(testKey, testValue);
			jedis.set(bTestKey, bTestValue);
			String returnSValue = jedis.get(testKey);
			System.out.println("取出的value:" + returnSValue);
			byte[] returnValue = jedis.get(bTestKey);
			System.out.println("取出的value:" + returnValue);
			if (null != returnValue){
				System.out.println("反序列化value" + SerializeUtil.deserialize(returnValue));
				}
			
			} catch (Exception e) {
	            throw new RuntimeException(e);
	        }
	}
	
    public static void main(String[] args) {

        //连接本地的 Redis 服务
    	Jedis jedis = getJedis();
    	jedis.select(1);
    	
		/*jedis.set("key2", "jedis test2");
		String string = jedis.get("key2");
		System.out.println(string);
		jedis.del("key2");*/
    	try{
	     /* Set<String> Keys = jedis.keys("*sojson*");  
	      if (Keys != null && Keys.size() > 0) {  
	          for (String bs : Keys) {  
		        	  String value = jedis.get(bs);
		              System.out.println(value);
	          			jedis.del(bs);
	               }
	          }*/
	      Set<byte[]> byteKeys = jedis.keys(("*sojson*").getBytes());  
          if (byteKeys != null && byteKeys.size() > 0) {  
              for (byte[] bs : byteKeys) {  
	              System.out.println("del:"+jedis.get(bs));
              		jedis.del(bs);
              	}
              }  
	      }  catch (Exception e) {
		     throw e;
	      } 
    	testChinese(jedis);
    	jedis.disconnect();
	}
}