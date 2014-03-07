跟我一起写Makefile (PDF重制版)
##############################

简介
----

《跟我一起写Makefile》是\ `陈皓`_\ 发表在其CSDN博客上的系列文章，一直受到读者的推荐，是很都人学习Makefile的首选文档。目前网络上流传的PDF版本多为祝冬华整理的版本。这个版本的排版一般，代码部分没有做任何语法高亮。

2010年初学Makefile的时候，读了前几章皮毛，一直用到了现在。最近想着重新学习一下Makefile，顺便学习一下Sphinx，重新制作一个更精美的PDF版本。

相关
----

- 书的文字部分来自于\ `Andriki`_\ 提供的Mediawiki源码；
- 使用\ `Sphinx`_\ 制作文档
- 项目主页：https://github.com/seisman/how-to-write-makefile
- 网页在线版：http://htwm.readthedocs.org/zh_CN/latest/
- PDF下载：http://pan.baidu.com/s/1o6DHFbO
- epub下载：http://pan.baidu.com/s/1i3E7Qcd

sphinx中文支持
--------------

sphinx在利用LaTeX生成PDF时，对中文支持不够，因而修改sphinx如下:

#. 将\ ``sphinx/texinputs/Makefile``\ 中的\ ``pdflatex``\ 替换成\ ``xelatex``;
#. 修改\ ``sphinx/writers/latex.py``\ ，在231行左右对中文做特殊处理；

   .. code-block:: python

    if builder.config.language == 'zh_CN':    
        self.elements['babel'] = ''
        self.elements['inputenc'] = ''
        self.elements['utf8extra'] = ''

#. 修改\ ``conf.py``\.

.. _`陈皓`: http://coolshell.cn/haoel
.. _`Andriki`: http://andriki.com/mediawiki/index.php?title=Linux:%E8%B7%9F%E6%88%91%E4%B8%80%E8%B5%B7%E5%86%99Makefile
.. _`Sphinx`: http://sphinx-doc.org/



