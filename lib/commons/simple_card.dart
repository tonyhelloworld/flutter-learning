import 'package:flutter/material.dart';

class SimpleCard extends StatelessWidget {
  /// 前缀标记
  final Color prefixBadge;

  /// 后缀标记
  final Color suffixBadge;

  /// 前缀图标
  final IconData icon;

  /// 后缀图标
  final IconData suffixIcon;

  /// 图标颜色
  final Color iconColor;

  /// 后缀图标颜色
  final Color suffixIconColor;

  /// 标题
  final String title;

  /// 说明
  final String description;

  /// 点击事件
  final Function onTap;

  /// 背景颜色
  final Color backgroundColor;

  /// 标题颜色
  final Color titleColor;

  /// 说明颜色
  final Color decriptionColor;

  const SimpleCard(
      {Key key,
      this.prefixBadge,
      this.suffixBadge,
      this.icon,
      this.suffixIcon,
      this.iconColor,
      this.suffixIconColor,
      this.title,
      this.description,
      this.onTap,
      this.backgroundColor,
      this.titleColor,
      this.decriptionColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: this.onTap,
        child: Card(
          color: (this.backgroundColor != null)
              ? this.backgroundColor
              : Colors.white,
          margin: EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              (this.prefixBadge != null)
                  ? Container(
                      color: this.prefixBadge,
                      width: 10.0,
                      height: 60.0,
                    )
                  : Container(),
              (this.icon != null)
                  ? Container(
                      margin: EdgeInsets.all(5.0),
                      width: 50.0,
                      height: 50.0,
                      child: Icon(
                        this.icon,
                        color: (this.iconColor != null)
                            ? this.iconColor
                            : Colors.black,
                      ),
                    )
                  : Container(
                      margin: EdgeInsets.only(left: 20.0),
                    ),
              Expanded(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      (this.title != null)
                          ? Container(
                              child: Text(
                                this.title,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                    color: (this.titleColor != null)
                                        ? this.titleColor
                                        : Colors.black),
                              ),
                            )
                          : Container(),
                      (this.description != null)
                          ? Container(
                              child: Text(
                                this.description,
                                style: TextStyle(
                                    fontWeight: FontWeight.w100,
                                    fontSize: 10.0,
                                    color: (this.decriptionColor != null)
                                        ? this.decriptionColor
                                        : Colors.grey),
                              ),
                            )
                          : Container(),
                    ],
                  ),
                ),
                flex: 1,
              ),
              (this.suffixIcon != null)
                  ? Container(
                      margin: EdgeInsets.only(right: 10.0),
                      child: Icon(
                        this.suffixIcon,
                        color: (this.suffixIconColor != null)
                            ? this.suffixIconColor
                            : Colors.black,
                      ),
                    )
                  : Container(),
              (this.suffixBadge != null)
                  ? Container(
                      color: this.suffixBadge,
                      width: 10.0,
                      height: 60.0,
                    )
                  : Container()
            ],
          ),
        ),
      ),
    );
  }
}
