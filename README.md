## 原版模板
[wennboo
HDU-latex-template-for-master](https://github.com/wennboo/HDU-latex-template-for-master)

## 个人版本的修改

Linux 环境下可以使用 GNU make
```
make
```

## 建议使用方法

使用 [peru](https://github.com/buildinspace/peru) 保持模板更新
```bash
peru reup --force
```

个人设置如下:
```yaml
imports:
  HDU_thesis_latex_template: thesis

git module HDU_thesis_latex_template:
  url: git@github.com:chenboshuo/HDU_thesis_latex_template.git
  pick: [makefile, styles]
```

## 其他调整
- :see_no_evil: 增加 `.gitignore` 可以使用
```
git clean -fXd
```
或
```
make clean
```
清理中间文件

- :wrench: 删除了 linux 的错误字体设置(https://github.com/chenboshuo/HDU-latex-template-for-master/commit/340e46327b908e5ea8b2a5b280e322d22bd4425d)
- :green_heart: 使用 github actions, 可以从 actions/Artifacts 获得样例 pdf
- :art: 调整目录结构, 将手册指南放到草稿模式中, 草稿模式可以提供 label name, 方便引用
- :art: 不重载 citep, 使用新的命令 upcite
- :sparkles: 完成原来模板注释的缩略词功能
- :alien: 根据[通知附件](https://computer.hdu.edu.cn/2025/0110/c6769a274385/page.htm)修改盲审模板
- :alien: 使用中英混合排版库修改摘要的实现方式
