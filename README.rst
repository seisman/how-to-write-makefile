跟我一起写Makefile (PDF重制版)
##############################

.. image:: https://travis-ci.org/seisman/how-to-write-makefile.svg?branch=master
    :target: https://travis-ci.org/seisman/how-to-write-makefile

简介
----

《跟我一起写Makefile》是 `陈皓`_ 发表在其CSDN博客上的系列文章。该系列文章翻译整理自 `GNU Make Manual`_ ，一直受到读者的推荐，是很多人学习Makefile的首选文档。目前网络上流传的PDF版本多为祝冬华整理的版本。这个版本的排版一般，代码部分没有做任何语法高亮。

2010年初学Makefile的时候，读了前几章皮毛，一直用到了现在。最近想着重新学习一下Makefile，顺便学习一下Sphinx，重新制作一个更精美的PDF版本。

相关
----

- 书的文字部分来自于 `Andriki`_ 提供的Mediawiki源码；
- 使用 `Sphinx`_ 制作文档
- 项目主页： https://github.com/seisman/how-to-write-makefile
- 网页在线版： https://seisman.github.io/how-to-write-makefile/
- PDF下载： https://seisman.github.io/how-to-write-makefile/Makefile.pdf

本地编译
--------

#. Clone项目到本地::

   $ git clone https://github.com/seisman/how-to-write-makefile.git

#. 安装依赖::

   $ pip install -r requirements.txt

#. 编译生成HTML::

   $ make html
   $ firefox build/html/index.html&

#. 编译生成PDF（要求安装TeXLive 2016）::

   $ make latexpdf
   $ evince build/latex/Makefile.pdf&

.. _`陈皓`: http://coolshell.cn/haoel
.. _`Andriki`: http://andriki.com/mediawiki/index.php?title=Linux:%E8%B7%9F%E6%88%91%E4%B8%80%E8%B5%B7%E5%86%99Makefile
.. _`Sphinx`: http://sphinx-doc.org/
.. _`GNU Make Manual`: https://www.gnu.org/software/make/manual/
