**显示图像是大多数移动应用的基础。flutter提供了Image Widget来显示不同类型的图象**
为了处理来自URL的图象。使用Image.network

  Image.network(
     '图片的网址'
  )
  
支持动画gif

为了能够圆润的使图片慢慢地展示出来。
使用占位符和缓存
--淡入渐出的带有占位符的图象。使用transparent_image包，地址为https://pub.dartlang.org/packages/transparent_image
--处理缓存的图片。使用cached_network_image包，地址为https://pub.dartlang.org/packages/cached_network_image
