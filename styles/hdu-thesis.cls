%  This latex profect is made by WangBo (School of Automation,HDU) in 2022.5,
%  which is partly built based on the template of SEU and UESTC.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%\bfseries是全局命令，加粗
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%\vspace*{} and \vspace{}前者在页面开头没作用%%%%%%%%%

\ProvidesClass{styles/hdu-thesis}

%%%%%%%%%%%%%确定基本信息%%%%%%%
\newif\ifbachelorp\bachelorpfalse
\newif\ifbachelord\bachelordfalse
\newif\ifbachelorr\bachelorrfalse
\newif\ifmaster\masterfalse
\newif\ifpromaster\promasterfalse
\newif\ifdoctor\doctorfalse
\newif\ifengdoctor\engdoctorfalse
\newif\ifmasterr\masterrfalse
\newif\ifpromasterr\promasterrfalse
\newif\ifdoctorr\doctorrfalse
\newif\ifengdoctorr\engdoctorrfalse
%%%%%%%%%%控制封面flag%%%%%%%%%%%
\newif\ifmdeclaration\mdeclarationfalse
\newif\ifbdeclaration\bdeclarationfalse
\newif\ifbcover\bcoverfalse
\newif\ifmcover\mcoverfalse

%%%%%%%%%%控制页眉flag%%%%%%%%%%%
\newif\ifreviewhead\reviewheadfalse



\DeclareOption{bachelor_p}{\bachelorptrue\bdeclarationtrue\bcovertrue}
\DeclareOption{bachelor_d}{\bachelordtrue\bdeclarationtrue\bcovertrue}
\DeclareOption{bachelor_review}
{\bachelorrtrue}

\DeclareOption{master}{\mastertrue\mdeclarationtrue\mcovertrue}
\DeclareOption{promaster}{\promastertrue\mdeclarationtrue\mcovertrue}
\DeclareOption{doctor}{\doctortrue\mdeclarationtrue\mcovertrue}
\DeclareOption{engdoctor}{\engdoctortrue\mdeclarationtrue\mcovertrue}
\DeclareOption{master_review}{\masterrtrue\reviewheadtrue}
\DeclareOption{promaster_review}{\promasterrtrue\reviewheadtrue}
\DeclareOption{doctor_review}{\doctorrtrue\reviewheadtrue}
\DeclareOption{engdoctor_review}{\engdoctorrtrue\reviewheadtrue}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
\LoadClass[12pt, openany, twoside]{book}%小四号 12pt
\RequirePackage[a4paper,
  inner=3cm, outer=3cm, top=3cm, bottom=3cm,
  bindingoffset=0cm]{geometry}


\RequirePackage{ifxetex}
\RequireXeTeX

\RequirePackage{xcolor}
\RequirePackage[final]{graphicx}
\RequirePackage{epstopdf}
\RequirePackage[font={doublespacing, small}, labelsep=space, skip=6pt]{caption}

\RequirePackage{array}
\RequirePackage{booktabs}
\setlength{\heavyrulewidth}{0.5pt}
\setlength{\lightrulewidth}{0.5pt}
\setlength{\arrayrulewidth}{0.5pt}
\setlength{\cmidrulewidth}{0.5pt}

\RequirePackage{setspace}
\RequirePackage{multirow}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{lmodern}
\RequirePackage[nopostdot]{glossaries}
\RequirePackage{mathspec}
\RequirePackage{bbding}%%%%%%%%%%五角星

\RequirePackage{xeCJK}
\RequirePackage{ifplatform}

\ifwindows
  \setCJKmainfont[AutoFakeBold=true]{SimSun}
  \newCJKfontfamily{\heiti}{SimHei}
  \newCJKfontfamily{\kaiti}{KaiTi}
  \newfontfamily{\heiti@letter}{SimHei}
\else
\ifmacosx
  \setCJKmainfont[AutoFakeBold=true]{Songti SC}
  \newCJKfontfamily{\heiti}{STHeiti}
  \newCJKfontfamily{\kaiti}{STKaiti}
  \newCJKfontfamily{\Fangsong}{STFangsong}
  \newfontfamily{\heiti@letter}{STHeiti}
\else
  \setCJKmainfont[AutoFakeBold=true]{SimSun}
  \newCJKfontfamily{\heiti}{SimHei}
  \newCJKfontfamily{\kaiti}{KaiTi}
  \newfontfamily{\heiti@letter}{SimHei}
\fi

\setmainfont{Times New Roman}% 英文默认Time New Roman

\newcommand{\chuhao}{\fontsize{42pt}{46pt}\selectfont}
\newcommand{\xiaochuhao}{\fontsize{36pt}{36pt}\selectfont}
\newcommand{\dayihao}{\fontsize{28pt}{28pt}\selectfont}
\newcommand{\yihao}{\fontsize{26pt}{26pt}\selectfont}
\newcommand{\xiaoyihao}{\fontsize{24pt}{24pt}\selectfont}
\newcommand{\erhao}{\fontsize{22pt}{22pt}\selectfont}
\newcommand{\xiaoerhao}{\fontsize{18pt}{18pt}\selectfont}
\newcommand{\sanhao}{\fontsize{15.75pt}{15.75pt}\selectfont}
\newcommand{\xiaosanhao}{\fontsize{15pt}{15pt}\selectfont}
\newcommand{\sihao}{\fontsize{14pt}{14pt}\selectfont}
\newcommand{\xiaosihao}{\fontsize{12pt}{12pt}\selectfont}
\newcommand{\wuhao}{\fontsize{10.5pt}{11pt}\selectfont}
\newcommand{\xiaowuhao}{\fontsize{9pt}{11pt}\selectfont}
\newcommand{\liuhao}{\fontsize{7.5pt}{9pt}\selectfont}
\newcommand{\xiaoliuhao}{\fontsize{6.5pt}{7.5pt}\selectfont}
\newcommand{\qihao}{\fontsize{5.5pt}{6.5pt}\selectfont}

%\makeatletter
\newcommand\one@space{\phantom{一}}
\newcommand\two@space{\phantom{一二}}

\newcommand{\cn@title}{}
\newcommand{\cn@author}{}
\newcommand{\cn@date}{}
\newcommand{\cn@school}{}
\newcommand{\cn@major}{}
\newcommand{\cn@advisor}{}
\newcommand{\cn@month}{}
\newcommand{\cn@authordirection}{}
\newcommand{\cn@authornumber}{}
\newcommand{\cn@authorclass}{}
\newcommand{\cn@graduateyear}{}

\newcommand{\en@title}{}
\newcommand{\en@author}{}
\newcommand{\en@thedate}{}
\newcommand{\en@school}{}
\newcommand{\en@major}{}
\newcommand{\en@advisor}{}
\newcommand{\en@year}{}
\newcommand{\en@month}{}
\newcommand{\en@authordirection}{}
\newcommand{\en@authornumber}{}


\renewcommand{\title}[2]{
  \renewcommand{\cn@title}{#1}
  \renewcommand{\en@title}{#2}
}

\renewcommand{\author}[2]{
  \renewcommand{\cn@author}{#1}
  \renewcommand{\en@author}{#2}
}

\renewcommand{\date}[2]{
  \renewcommand{\cn@date}{#1}
  \renewcommand{\en@thedate}{#2}
}

\newcommand{\completedate}[3]{
  \renewcommand{\en@year}{#1}
  \renewcommand{\cn@month}{#2}
  \renewcommand{\en@month}{#3}
}

\newcommand{\authordirection}[2]{
  \renewcommand{\cn@authordirection}{#1}
  \renewcommand{\en@authordirection}{#2}
}

\newcommand{\major}[2]{
  \renewcommand{\cn@major}{#1}
  \renewcommand{\en@major}{#2}
}

\newcommand{\school}[2]{
  \renewcommand{\cn@school}{#1}
  \renewcommand{\en@school}{#2}
}

\newcommand{\advisor}[2]{
  \renewcommand{\cn@advisor}{#1}
  \renewcommand{\en@advisor}{#2}
}

\newcommand{\authornumber}[1]{
  \renewcommand{\cn@authornumber}{#1}
}

\newcommand{\authorclass}[1]{
  \renewcommand{\cn@authorclass}{#1}
}

\newcommand{\graduateyear}[1]{
  \renewcommand{\cn@graduateyear}{#1}
}

\ifbachelorp
  \def\cn@degree{学士}
  \def\en@degree{Bachelor}
  \def\cn@booktitle{本科毕业论文}
  \def\en@booktitle{Bachelor Thesis}
  \def\cn@thesisheader{杭州电子科技大学本科毕业论文}
  \def\en@thesisheader{Bachelor Thesis of Hangzhou Dianzi University}
\else \ifbachelord
  \def\cn@degree{学士}
  \def\en@degree{Bachelor}
  \def\cn@booktitle{本科毕业设计}
  \def\en@booktitle{Bachelor Thesis}
  \def\cn@thesisheader{杭州电子科技大学本科毕业设计}
  \def\en@thesisheader{Bachelor Thesis of Hangzhou Dianzi University}
\else \ifbachelorr
  \def\cn@degree{学士}
  \def\en@degree{Bachelor}
  \def\cn@booktitle{本科毕业设计（论文）}
  \def\en@booktitle{Bachelor Thesis}
  \def\cn@thesisheader{本科毕业设计（论文）}
  \def\en@thesisheader{Bachelor Thesis}
\else \ifmaster
  \def\cn@degree{硕士}
  \def\en@degree{Master}
  \def\class@degree{学术}
  \def\cn@booktitle{硕士学位论文}
  \def\en@booktitle{Master Thesis}
  \def\cn@thesisheader{杭州电子科技大学硕士学位论文}
  \def\en@thesisheader{Master Thesis of Hangzhou Dianzi University}
\else \ifpromaster
  \def\cn@degree{硕士}
  \def\en@degree{Master}
  \def\class@degree{专业}
  \def\cn@booktitle{硕士学位论文}
  \def\en@booktitle{Master Thesis for Degree}
  \def\cn@thesisheader{杭州电子科技大学硕士学位论文}
  \def\en@thesisheader{Master Thesis of Hangzhou Dianzi University}
\else \ifdoctor
  \def\cn@degree{博士}
  \def\en@degree{Doctor}
  \def\class@degree{学术}
  \def\cn@booktitle{博士学位论文}
  \def\en@booktitle{Doctoral Dissertation}
  \def\cn@thesisheader{杭州电子科技大学博士学位论文}
  \def\en@thesisheader{Doctoral Dissertation of Hangzhou Dianzi University}
\else \ifengdoctor
  \def\cn@degree{博士}
  \def\class@degree{工程}
  \def\en@degree{Engineering Doctor}
  \def\cn@booktitle{博士学位论文}
  \def\en@booktitle{Doctoral Dissertation}
  \def\cn@thesisheader{杭州电子科技大学博士学位论文}
  \def\en@thesisheader{Doctoral Dissertation of
  Hangzhou Dianzi University}
\else \ifmasterr
  \def\cn@degree{硕士}
  \def\class@degree{学术}
  \def\en@degree{Master}
  \def\cn@booktitle{硕士学位论文}
  \def\en@booktitle{Master Thesis}
  \def\cn@thesisheader{浙江省硕士学位论文}
  \def\en@thesisheader{Master Thesis of Zhejiang Province}
\else \ifpromasterr
  \def\cn@degree{硕士}
  \def\class@degree{专业}
  \def\en@degree{Professional Master}
  \def\cn@booktitle{硕士学位论文}
  \def\en@booktitle{Master Thesis}
  \def\cn@thesisheader{浙江省硕士学位论文}
  \def\en@thesisheader{Master Thesis of Zhejiang Province}
\else \ifdoctorr
  \def\cn@degree{博士}
  \def\class@degree{学术}
  \def\en@degree{Doctor}
  \def\cn@booktitle{博士学位论文}
  \def\en@booktitle{Doctoral Dissertation}
  \def\cn@thesisheader{浙江省博士学位论文}
  \def\en@thesisheader{Doctoral Dissertation of Zhejiang Province}
\else \ifengdoctorr
  \def\cn@degree{博士}
  \def\en@degree{Doctor}
  \def\class@degree{工程}
  \def\cn@booktitle{博士学位论文}
  \def\en@booktitle{Doctoral Dissertation}
  \def\cn@thesisheader{浙江省博士学位论文}
  \def\en@thesisheader{Doctoral Dissertation of Zhejiang Province}
\fi
\fi
\fi
\fi
\fi
\fi
\fi
\fi
\fi
\fi
\fi




%%%%%%%%%%%%%%% 本科生毕业设计（论文）封面b_non_review %%%%%%%%%%%
\newcommand{\thetitlepage@bachelor}{
  \thispagestyle{empty}
\pdfbookmark{封面}{cover}
\begin{center}
  \includegraphics[width=0.9\textwidth]{styles/HDUlogo.pdf} \\[1cm]
  \makebox[7cm][s]{\yihao\bfseries \hspace{0.5cm} \cn@booktitle} \\[3cm]

\begin{tabular}{lp{9cm}}
  \hspace{1.5cm}\xiaoerhao\kaiti 题目 & \multirow[t]{2}{9cm}{
      \centering
        \xiaoerhao\kaiti\cn@title
  } \\
  \cline{2-2}
          & \\[3pt]
  \cline{2-2}
\end{tabular}\hspace*{\fill} \\[4.5cm]

  \begin{tabular}{>{\sanhao\kaiti}l
      >{\centering\arraybackslash\sanhao\kaiti}
      p{7cm}p{18pt}}
    姓\two@space 名 & \cn@author&\\
    \cline{2-2}\\[3pt]
    专\two@space 业 & \cn@major&\\
    \cline{2-2}\\[3pt]
    学\two@space 院 & \cn@school&\\
      \cline{2-2}\\[3pt]
    学\two@space 号 & \cn@authornumber&\\
      \cline{2-2}\\[3pt]
    指导教师& \cn@advisor & \\
    \cline{2-2}\\[3pt]
    完成日期 & \en@year 年\cn@month 月 &\\
    \cline{2-2}\\[3pt]
  \end{tabular}
\end{center}
\coverblankpage
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




%%%%%%%%%%%%%%%%%%% bachelor送审版本封面\%%%%%%%%%%%%%%
\newcommand{\thetitlepage@bachelor@review}{
  %%%%%%%%%%中文标题页%%%%%%%%%%%
  \newpage
  \thispagestyle{empty}
 {\noindent \xiaosihao \textbf{}}\\[2cm]
  \begin{center}
    \makebox[\textwidth][s]{\chuhao \textbf{\cn@thesisheader}}\\[26pt]
    \makebox[4.5cm][s]{\xiaochuhao\bfseries  (\en@year 届)} \\[2cm]
  %\begin{spacing}{2}
  \begin{tabular}{>{\erhao\bfseries}l
    >{\centering\arraybackslash\erhao}
    p{9cm}p{22pt}}
  题\two@space 目& \multirow[t]{2}{9cm}{
    \centering
      \kaiti\erhao\cn@title
} &\\
\cline{2-2}
        & \\[12pt]
\cline{2-2}\\[1.4cm]
 学\two@space 院 & \kaiti \cn@school& \\\cline{2-2}\\[1.3cm]
  专\two@space 业 & \kaiti \cn@major& \\\cline{2-2}\\[1.3cm]
  班\two@space 级 & \kaiti \cn@authorclass& \\\cline{2-2}\\[1.3cm]
  完成日期 & \kaiti \en@year 年\cn@month 月 &\\
    \cline{2-2}\\[3pt]
  \end{tabular}
  \end{center}
  \coverblankpage
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%









%%%%%%%%%%%%%%%%%%%%% master非送审版本封面 %%%%%%%%%%%%%%%%%%%%%
\newcommand{\thetitlepage@master@one}{
  \thispagestyle{empty}
\pdfbookmark{封面}{cover}%%%cover是链接供索引
\begin{center}
  \includegraphics[width=0.9\textwidth]{styles/HDUlogo.pdf} \\[1cm]
  \makebox[8cm][s]{\yihao\bfseries\cn@booktitle} \\[3cm]

\begin{tabular}{lp{9cm}}
  \hspace{1.5cm}\xiaoerhao\kaiti 题目 & \multirow[t]{2}{9cm}{
      \centering
        \xiaoerhao\kaiti\cn@title
  } \\
  \cline{2-2}
          & \\[3pt]
  \cline{2-2}
\end{tabular}\hspace*{\fill} \\[5cm]

  \begin{tabular}{>{\sanhao\kaiti}l
      >{\centering\arraybackslash\sanhao\kaiti}
      p{7cm}p{18pt}}
    姓\two@space 名 & \cn@author&\\
    \cline{2-2}\\[3pt]
    专\two@space 业 & \cn@major&\\
    \cline{2-2}\\[3pt]
    指导教师& \cn@advisor & \\
    \cline{2-2}\\[3pt]
    完成日期 & \zhdigits{\en@year}年\zhnumber{\cn@month}月 &\\
    \cline{2-2}\\[3pt]
  \end{tabular}
\end{center}
\coverblankpage
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%





%%%%%%%%%%%%%%%%%%% master非送审版本标题页 %%%%%%%%%%%%%%
\newcommand{\thetitlepage@master@two}{
  %%%%%%%%%%中文标题页%%%%%%%%%%%
  \newpage
  \thispagestyle{empty}
  \vspace*{1cm}
  \begin{center}
  \multirow[t]{2}{14cm}{
    \centering
      \xiaoerhao 杭州电子科技大学\cn@booktitle
    }\\[4.5cm]

  \multirow[t]{2}{14cm}{
    \centering
      \xiaoyihao\heiti\cn@title
    } \\[7cm]
  \begin{tabular}{>{\sanhao\kaiti}l
    >{\centering\arraybackslash\sanhao\kaiti}
    p{7cm}p{8pt}}
  姓\two@space 名 & \cn@author&\\
  \cline{2-2}\\[3pt]
  指导教师& \cn@advisor & \\
  \cline{2-2}\\[3pt]
  \end{tabular}\\
  \vspace{2.5cm}
  \sihao{\zhdigits{\en@year}年\zhnumber{\cn@month}月}
  \end{center}
  \coverblankpage

  %%%%%%%%%%%%%%%%英文标题页%%%%%%%%%%%%%%%
  \thispagestyle{empty}
  \vspace*{1cm}
  \begin{center}
  \multirow[t]{2}{14cm}{
    \centering
      \xiaoerhao\bfseries A Thesis Submitted to \\
  Hangzhou Dianzi University
  for the Degree of \en@degree
    }\\[4.5cm]

  \multirow[t]{2}{14cm}{
    \centering
      \xiaoyihao\bfseries\en@title
    } \\
  \vspace{7cm}
  \begin{tabular}{>{\sanhao\bfseries}l
    >{\centering\arraybackslash\sanhao\bfseries}
    p{7cm}p{8pt}}
    Author & \en@author&\\
  \cline{2-2}\\[3pt]
  Supervisor & \en@advisor & \\
  \cline{2-2}\\[3pt]
  \end{tabular}\\[2.5cm]
  \sihao{\en@month, \en@year}
  \end{center}
  \coverblankpage
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%







%%%%%%%%%%%%%%%%%%% master送审版本封面m_phd_review \%%%%%%%%%%%%%%
\newcommand{\thetitlepage@master@review}{
  %%%%%%%%%%中文标题页%%%%%%%%%%%
  \newpage
  \thispagestyle{empty}
  {\noindent \xiaosihao \textbf{\FiveStar 全日制\class@degree 学位研究生}}\\[3cm]
  \begin{center}
    \makebox[\textwidth][s]{\xiaochuhao \textbf{\cn@thesisheader}}\\[4.5cm]
  %\begin{spacing}{2}
  \begin{tabular}{>{\xiaoerhao\bfseries}l
    >{\arraybackslash\xiaoerhao\bfseries}
    p{8.5cm}p{22pt}}
  论文题目：& \cn@title \\[2cm]
  专业名称： & \cn@major& \\[2cm]
  研究方向： & \cn@authordirection \\
  \end{tabular}
  \end{center}
  \coverblankpage
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%








%%%%%%%%%%%%%%%原创性声明%%%%%%%%%%%%%%%
\newcommand{\originalitydeclaration}{
  \newpage
\thispagestyle{empty}
%\cleardoublepage
\vspace*{20pt}
\begin{center}{\sihao\bfseries 杭州电子科技大学
			\\学位论文原创性声明和使用授权说明}\end{center}
\par\vspace*{30pt}
\begin{center}{\sihao\bfseries 原创性声明}\end{center}
\vspace*{10pt}
{\xiaosihao

本人郑重声明： 所呈交的学位论文，是本人在导师的指导下，独立进行研究工作所取得的成果。除文中已经注明引用的内容外，本论文不含任何其他个人或集体已经发表或撰写过的作品或成果。对本文的研究做出重要贡献的个人和集体，均已在文中以明确方式标明。\\申请学位论文与资料若有不实之处，本人承担一切相关责任。}
\\
\\
{\xiaosihao
	论文作者签名：\hspace{8em}日期：\hspace{7ex}年\hspace{5ex}月\hspace{5ex}日}


\par\vspace*{30pt}
\begin{center}{\sihao\bfseries 学位论文使用授权说明}\end{center}
\vspace*{10pt}
%\renewcommand{\baselinestretch}{1.5}
{\xiaosihao %

本人完全了解杭州电子科技大学关于保留和使用学位论文的规定，即：研究生在校攻读学位期间论文工作的知识产权单位属杭州电子科技大学。本人保证毕业离校后，发表论文或使用论文工作成果时署名单位仍然为杭州电子科技大学。学校有权保留送交论文的复印件，允许查阅和借阅论文；学校可以公布论文的全部或部分内容，可以允许采用影印、缩印或其它复制手段保存论文。（保密论文在解密后遵守此规定）
\\
\\
\\
\\
\\
{\xiaosihao
	论文作者签名：\hspace{8em}日期：\hspace{7ex}年\hspace{5ex}月\hspace{5ex}日\\
	\\
	\\
	指导教师签名：\hspace{8em}日期：\hspace{7ex}年\hspace{5ex}月\hspace{5ex}日
}
}
\coverblankpage
}


%%%%%%%%%%%%%%%本科生诚信声明%%%%%%%%%%%%%%%
\newcommand{\integritydeclaration}{
  \newpage
\thispagestyle{empty}
\vspace*{2cm}
\begin{center}
  \makebox[2.5cm][s]{\sihao\bfseries 诚信承诺}
\end{center}
\par
\begin{spacing}{2.5}
{\xiaosihao
我谨在此承诺：本人所写的毕业设计（论文）《\cn@title》均系本人独立完成，没有抄袭行为，凡涉及其他作者的观点和材料，均作了注释，若有不实，后果由本人承担。
}\\[2cm]
\rightline{\sihao\bfseries 承诺人（签名）\hspace{2cm}}
\rightline{\sihao\bfseries \one@space 年 \hspace{0.6cm} 月\hspace{0.6cm} 日\hspace{1cm} }
\end{spacing}
\coverblankpage
}


\RequirePackage{zhnumber}
\RequirePackage{pifont}

\RequirePackage[hyphens]{xurl}
\RequirePackage[hyperfootnotes=false,
  bookmarksnumbered,
  bookmarksdepth=4,
  final
]{hyperref}
\hypersetup{
  colorlinks=true,
  citecolor=black,
  linkcolor=black,
  urlcolor=blue
}

\RequirePackage{indentfirst}
\RequirePackage{float}
\RequirePackage{fancyhdr}%%%%fancy用
\RequirePackage{titlesec}
\RequirePackage{appendix}
\RequirePackage[normalem]{ulem}
\RequirePackage{enumitem}

\RequirePackage[algochapter, boxruled, linesnumbered]{algorithm2e}
\RequirePackage[numbers,sort&compress]{natbib}
\RequirePackage{etoolbox}
\RequirePackage{newfloat}
%\RequirePackage[resetlabels]{multibib}
\RequirePackage[notlof,notlot,nottoc]{tocbibind}%%%%%%%把图列表、表格列表放入目录
\RequirePackage{everypage-1x}
\RequirePackage{ifoddpage}
\RequirePackage{pdfpages}

\graphicspath{{./pic/}}
\RequirePackage[titles]{tocloft}
\RequirePackage[labelformat=simple]{subfig}
\captionsetup[subfigure]{font=small, belowskip=6pt, width=36pt}
\renewcommand{\thesubfigure}{(\alph{subfigure})}
\newcommand{\floatcontinue}{\end{figure}\newpage\begin{figure}[tb]\ContinuedFloat}

\urlstyle{rm}
\raggedbottom
%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%正文页眉，章节等设置%%%%%%%%%%%%%%%%%%%%%%%
\setlength{\headheight}{15pt}
\pagestyle{fancy}
\linespread{1.391}%行距设置
\setlength\parindent{24pt}%首行缩进
\titlespacing{\chapter}{0pt}{0pt}{18pt}
\titlespacing{\section}{0pt}{18pt}{6pt}
\titlespacing{\subsection}{0pt}{12pt}{6pt}
\titlespacing{\subsubsection}{0pt}{12pt}{6pt}

%%%%%%%%%%%%%%%%%%%%%%章节中文型标题%%%%%%%%
 %\renewcommand\thechapter{第\zhnumber{\arabic{chapter}}章}
 \renewcommand\thechapter{第{\arabic{chapter}}章}
%\renewcommand\thechapter{{\arabic{chapter}}}
\renewcommand\thesection{\arabic{chapter}.\arabic{section}}

%%%%%%%%%%%%%%%%各类标题设置%%%%%%%%%%%%%%%%%
\captionsetup{format=hang}%标题设置
\captionsetup{width=\textwidth - 42pt}
\captionsetup[figure]{aboveskip=6pt, belowskip=0pt}
\captionsetup[table]{aboveskip=9pt, belowskip=0pt}
\setlength{\intextsep}{9pt}%%浮动图等距离文本距离
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%目录的深度，章节的深度%%%%%%%%%%%%%%%%%%%%%%%%%%
\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{2}
%%%%%%%%%%%%%%章节字号设置%%%%%%%%%%%%%%%%%%%%%%%
\titleformat{\chapter}[block]
  {\centering\sanhao\heiti\thispagestyle{fancy}}{\thechapter}{7.5pt}{}
\titleformat{\section}[block]
  {\sihao\heiti}%%%%%%%%字体
  {\thesection}{7pt}{}%%%%%%%%%%%标号与文字间距

\titleformat{\subsection}[block]
  {\xiaosihao\heiti}
  {\thesubsection}{7pt}{}

\titleformat{\subsubsection}[block]
  {\xiaosihao\heiti}
  {\thesubsubsection}{6pt}{}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%%%%%%%%%%%%%%%%%%%公式、图表、定理等编号等设置%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newtheorem{theorem}{定理}[chapter]
\newtheorem{axiom}{公理}[chapter]
\newtheorem{corollary}{推论}[chapter]
\newtheorem{lemma}{引理}[chapter]
\newtheorem{definition}{定义}[chapter]
\newtheorem{example}{举例}[chapter]
\newtheorem{proposition}{命题}[chapter]
\newtheorem{problem}{问题}[chapter]
\newtheorem{assumption}{假设}[chapter]
\newtheorem{remark}{注}[chapter]


\renewcommand{\theequation}{\arabic{chapter}-\arabic{equation}}
\renewcommand{\thetable}{\arabic{chapter}-\arabic{table}}
\renewcommand{\thefigure}{\arabic{chapter}-\arabic{figure}}
\renewcommand{\thetheorem}{\arabic{chapter}.\arabic{theorem}}
\renewcommand{\theaxiom}{\arabic{chapter}.\arabic{axiom}}
\renewcommand{\thecorollary}{\arabic{chapter}.\arabic{corollary}}
\renewcommand{\thelemma}{\arabic{chapter}.\arabic{lemma}}
\renewcommand{\thedefinition}{\arabic{chapter}.\arabic{definition}}
\renewcommand{\theexample}{\arabic{chapter}.\arabic{example}}
\renewcommand{\theproposition}{\arabic{chapter}.\arabic{proposition}}
\renewcommand{\theproblem}{\arabic{chapter}.\arabic{problem}}
\renewcommand{\theassumption}{\arabic{chapter}.\arabic{assumption}}
\renewcommand{\theremark}{\arabic{chapter}.\arabic{remark}}
\renewcommand\thealgocf{\arabic{chapter}-\arabic{algocf}}
\renewcommand{\proofname}{\bfseries 证明}

%%%%%%%%%%%%章节型中文名字设置%%%%%%%%%%%%%%
\renewcommand{\contentsname}{目\one@space 录}
\renewcommand{\bibname}{参考文献}
\renewcommand{\figurename}{图}
\renewcommand{\tablename}{表}
\renewcommand{\listtablename}{表格目录}
\renewcommand{\listfigurename}{图目录}
\SetAlgorithmName{算法}{算法}{算法列表}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%圆圈数字的脚注设置%%%%%%%%%%%%%%
%\makeatletter是在tex文档中使用latex的命令@
\newcommand*{\circnum}[1]{%
  \expandafter\@circnum\csname c@#1\endcsname
}
\newcommand*{\@circnum}[1]{%
  \ifnum#1<1 %
    \@ctrerr
  \else
    \ifnum#1>20 %
      \@ctrerr
    \else
      \ding{\the\numexpr 171+(#1)\relax}%
    \fi
  \fi
}
%\makeatother

\renewcommand*{\thefootnote}{\circnum{footnote}}


%%%%%%%%%%%%%%%%%目录列表的格式设置%%%%%%%%%%%%%%%%%%%%%%%%

\tocloftpagestyle{fancy}%%%%%便于对页眉页脚进行控制
\renewcommand{\cfttoctitlefont}{\xiaosanhao\heiti}
%\renewcommand\cftchapfont{\bfseries}%%章节加粗
\renewcommand{\cftchappagefont}{\normalfont}
\renewcommand\cftchapleader{\cftdotfill{\cftdotsep}}%%%%%%章后面dotfill加点点
\renewcommand{\cftdotsep}{0.5}%%%%目录等点与点间距离
\setlength{\cftbeforetoctitleskip}{0pt}
\setlength{\cftaftertoctitleskip}{18pt}
\setlength{\cftbeforechapskip}{0pt}%%%%章后间隔

\addtolength{\cftchapnumwidth}{24pt} %章节与内容的间隔

\cftsetindents{section}{21pt}{22pt}%%%%%调整indent到章的宽度
\cftsetindents{subsection}{44pt}{31pt}
\cftsetindents{subsubsection}{76pt}{41pt}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%空白页设置%%%%%%%%%%%
\newcommand\coverblankpage{%
  \newpage
  \null
  \thispagestyle{empty}%当前页不显示页码
  \newpage
}
%%%%%%%%%%%%%%%%%%%%%%%



% %%%%%%%%%%%%%%%%%%%%%%封面设置%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\makecover}{
  \ifbcover
    \thetitlepage@bachelor
  \else
    \ifbachelorr
      \thetitlepage@bachelor@review
    \else \ifmcover
      \thetitlepage@master@one
      \thetitlepage@master@two
    \else
      \thetitlepage@master@review
    \fi
    \fi
  \fi
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%原创性声明%%%%%%%%%%%%%%

\newcommand{\makedeclaration}{
%%%%%%%%%%
\ifbdeclaration
\integritydeclaration
\else \ifmdeclaration
\originalitydeclaration
\fi
\fi
}

%%%%%%%%%%%%%非正常页编号%%%%%%%%%%%%
\newcommand\blankpage{%
  \newpage
  \null
  %\thispagestyle{empty}%当前页不显示页码
  \newpage
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%中英文摘要%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\cnabstract}{
  %\setcounter{page}{1}
  \pagenumbering{Roman}
  %\addtocontents{toc}{\protect\setcounter{tocdepth}{0}}
  %\setcounter{section}{0}
    \chapter*{摘\one@space 要}
    \addcontentsline{toc}{chapter}{摘\one@space 要}
    \fancyhf{} %清除以前对页眉页脚的设置
    \fancyhead[C]{\wuhao 摘\one@space 要}
    %送审版页眉
    \ifreviewhead
    \fancyhead[C]{\wuhao\cn@thesisheader}
    \fi
    \fancyfoot[CE,CO]{\xiaowuhao \thepage}
}

\newcommand{\cnkeyword}[1]{
  \par\vspace{\baselineskip}
  \noindent
  \@hangfrom{\makebox[48pt][l]{\heiti 关键词：}}#1
}


\newcommand{\enabstract}{
  \chapter*{\bfseries ABSTRACT}
  \addcontentsline{toc}{chapter}{ABSTRACT}
    \fancyhf{}
    \fancyhead[C]{\wuhao ABSTRACT}
    %送审版页眉
    \ifreviewhead
    \fancyhead[C]{\wuhao\cn@thesisheader}
    \fi
    \fancyfoot[CE,CO]{\xiaowuhao \thepage}
}

\newcommand{\enkeyword}[1]{
  \par\vspace{\baselineskip}
  \noindent
  \@hangfrom{\makebox[2.3cm][l]{\bfseries Keywords:}}#1
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%生成图列表%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\figurelist}{
  \newpage
  %\pdfbookmark{\listfigurename}{\listfigurename}
  \fancyhf{}
  \fancyhead[C]{\wuhao\listfigurename}
  %\fancyhead[C]{\wuhao\cn@thesisheader}
  %送审版页眉
  \ifreviewhead
  \fancyhead[C]{\wuhao\cn@thesisheader}
  \fi
  \fancyfoot[CE,CO]{\xiaowuhao \thepage}
  \addtolength{\cftfignumwidth}{12pt}
  \renewcommand{\cftfigpresnum}{\figurename}
  \listoffigures
  \addcontentsline{toc}{chapter}{\listfigurename}
}


%%%%%%%%%%%%%%%%%%%生成表格列表%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\tablelist}{
  \newpage
  %\pdfbookmark{\listtablename}{\listtablename}
  \fancyhf{}
  \fancyhead[C]{\wuhao\listtablename}
  %\fancyhead[C]{\wuhao\cn@thesisheader}
  %送审版页眉
  \ifreviewhead
  \fancyhead[C]{\wuhao\cn@thesisheader}
  \fi
  \fancyfoot[CE,CO]{\xiaowuhao \thepage}
  \addtolength{\cfttabnumwidth}{12pt}
  \renewcommand{\cfttabpresnum}{\tablename}
  \listoftables
  \addcontentsline{toc}{chapter}{\listtablename}
}

%%%%%%%%%%%%%%%%%%%%%%缩略词表%%%%%%%%%%%%%%%%%%%%%%%%
\newacronymstyle{acronym-hdu}{
  \ifglshaslong{\glslabel}{\glsgenacfmt}{\glsgenentryfmt}
}{
  \renewcommand*{\GenericAcronymFields}{
    first={\the\glslongtok\space\protect\paren{\the\glsshorttok}},
    description={\the\glslongtok}}
  \renewcommand*{\genacrfullformat}[2]{%
    \glsentrydesc{##1}~(\glsentrylong{##1},\space%
    \glsentryshort{##1})%
  }
  \renewcommand*{\acronymentry}[1]{%
    \acronymfont{\glsentryshort{##1}}%
  }
}
\setacronymstyle{acronym-hdu}

\newglossarystyle{hdu-cn}{
  \setlength{\glsdescwidth}{.35\textwidth}
  \setlength{\glspagelistwidth}{.4\textwidth}
  \renewenvironment{theglossary}%
  {\begin{longtable}{p{2.5cm}p{\glsdescwidth}p{\glspagelistwidth}}}%
    {\end{longtable}}%
  \renewcommand*{\glossaryheader}{%
    \heiti 缩略词 &\heiti 英文全称 &
    \heiti 中文全称 \tabularnewline\endhead}%
  \renewcommand*{\glsgroupheading}[1]{}%
  \renewcommand{\glossentry}[2]{
    \glsentryitem{##1}\glstarget{##1}{\glossentryname{##1}} &
    \glsentrylong{##1} & \glsentrydesc{##1}\tabularnewline
  }
  \renewcommand*{\subglossentry}[3]{
    \glossentry{##2}{##3}}
}


\defglsentryfmt{%
  \ifglshaslong{\glslabel}{%
    \glsgenacfmt%
  }{%
    \ifglsused{\glslabel}{%
      \glsgenentryfmt%
    }{%
      \glsgenentryfmt%
    }%
  }%
}

\newcommand{\glossarylist}{
  \newpage
  \fancyhf{}
  % \fancyhead[C]{}
    \fancyhead[C]{\wuhao 缩略词表}
    %\fancyhead[C]{\wuhao\cn@thesisheader}
    %送审版页眉
    \ifreviewhead
    \fancyhead[C]{\wuhao\cn@thesisheader}
    \fi
    \fancyfoot[CE,CO]{\xiaowuhao\thepage}
   % \pdfbookmark{缩略词表}{glossary}
    \printglossary[style=hdu-cn, title={\protect\centering 缩略词表}, nonumberlist, nogroupskip]
    \addcontentsline{toc}{chapter}{缩略词表}
  \newpage
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%%%%%%%%%%%%%%%%生成目录%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\let\tableofcontents@orig=\tableofcontents
\renewcommand{\tableofcontents}{
  \newpage
  \fancyhf{}
  \fancyhead[C]{\wuhao 目\one@space 录}
  %\fancyhead[C]{\wuhao\cn@thesisheader}
  %送审版页眉
  \ifreviewhead
  \fancyhead[C]{\wuhao\cn@thesisheader}
  \fi
  \fancyfoot[CE,CO]{\xiaowuhao \thepage}
  \pdfbookmark{目录}{toc}
  \tableofcontents@orig
}

%%%%%%%%%%%%%%%%致谢设置%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\acknowledgement}{
  \addtocontents{toc}{\protect\setcounter{tocdepth}{0}}
  \setcounter{section}{0}
    \chapter*{致\one@space 谢}
  \markboth{致\one@space 谢}{致\one@space 谢}
  \addcontentsline{toc}{chapter}{致\one@space 谢}
  \thispagestyle{fancy}
}


%%%%%%%%%%%%%%%%%附录设置（只包含一章的情形）%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\singleappendix}{
  \addtocontents{toc}{\protect\setcounter{tocdepth}{2}}
  \renewcommand{\thesection}{A.\arabic{section}}
  \renewcommand{\theequation}{a-\arabic{equation}}
  \renewcommand{\thetable}{a-\arabic{table}}
  \renewcommand{\thefigure}{a-\arabic{figure}}
  \renewcommand{\thetheorem}{a.\arabic{theorem}}
  \renewcommand{\theaxiom}{a.\arabic{axiom}}
  \renewcommand{\thecorollary}{a.\arabic{corollary}}
  \renewcommand{\thelemma}{a.\arabic{lemma}}
  \renewcommand{\thedefinition}{a.\arabic{definition}}
  \renewcommand{\theexample}{a.\arabic{example}}
  \chapter*{附\hspace{12pt}录}
  \addcontentsline{toc}{chapter}{附\one@space 录}
  \markboth{附\one@space 录}{附\one@space 录}
  \thispagestyle{fancy}
}

%%%%%%%%%%%%%%%%%附录设置（包含多章的情形）%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\thesisappendix}{
  \newpage
  \appendix
  \interlinepenalty=0
  %\addtocontents{toc}{\protect\addtolength{\cftchapnumwidth}{12pt}}%控制目录中内容到A的宽度
  \addtocontents{toc}{\protect\setcounter{tocdepth}{2}}
  \renewcommand{\thechapter}{附录\Alph{chapter}}
  \renewcommand{\appendixname}{附录}
  \renewcommand{\thesection}{\Alph{chapter}.\arabic{section}}
  \renewcommand{\theequation}{\alph{chapter}-\arabic{equation}}
  \renewcommand{\thetable}{\alph{chapter}-\arabic{table}}
  \renewcommand{\thefigure}{\alph{chapter}-\arabic{figure}}
  \renewcommand{\thetheorem}{\alph{chapter}.\arabic{theorem}}
  \renewcommand{\theaxiom}{\alph{chapter}.\arabic{axiom}}
  \renewcommand{\thecorollary}{\alph{chapter}.\arabic{corollary}}
  \renewcommand{\thelemma}{\alph{chapter}.\arabic{lemma}}
  \renewcommand{\thedefinition}{\alph{chapter}.\arabic{definition}}
  \renewcommand{\theexample}{\alph{chapter}.\arabic{example}}
}


% 个人成果设置
\newcommand{\personalAchievementsTitle}{攻读\cn@degree{}学位期间取得的成果}
\newcommand{\personalAchievements}{
  \setcounter{section}{0}
    \chapter*{\personalAchievementsTitle}
    \markboth{\personalAchievementsTitle}{\personalAchievementsTitle}
    \addcontentsline{toc}{chapter}{\personalAchievementsTitle}
  \thispagestyle{fancy}
  \addtocontents{toc}{\protect\setcounter{tocdepth}{0}}
}


%%%%%%%%%%%%%%%%%%参考文献%%%%%%%%%%%%%%%%%%
\renewcommand{\citep}[1]{\textsuperscript{\cite{#1}}}
\newcommand{\hdubibliography}[1]{
  \bibliographystyle{styles/hdu-reference}
\bibliography{#1}}

\setlength{\bibsep}{0em}%%%%%%%调整间距
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%正文页眉页脚%%%%%%%%%%%%%%%%%%%%
\renewcommand{\chaptermark}[1]{\markboth{\thechapter\hspace{5.25pt}#1}{}}
\pretocmd{\@chapter}{
  \ifdefined\@BODY
  \else
  \ifnum\value{chapter}=0
      %\newpage{\thispagestyle{empty}\cleardoublepage}
      \pagenumbering{arabic}
      \fancyhf{}
      \fancyhead[CE]{\wuhao\cn@thesisheader}
      \fancyhead[CO]{\wuhao\leftmark}
      %送审版页眉
      \ifreviewhead
      \fancyhead[CO]{\wuhao\cn@thesisheader}
      \fi
      %\fancyhead[CE,CO]{\wuhao\cn@thesisheader}
      \fancyfoot[CE,CO]{\xiaowuhao\thepage}
    \fi
  \fi
}{}{}

%%%%%%%%%%%%%%%从chapter{}第一次用后，设置页码为1，以后不再重置页码，除非有其它指令%%%%%%%%%%
\apptocmd{\@chapter}{
  \ifdefined\@BODY
  \else
    \ifnum\value{chapter}=1
      %\ifchinesebook{\chaptermark{绪论}}{\chaptermark{Introduction}}
      \setcounter{page}{1}
    \fi
  \fi
  \def\@BODY{\null}
}{}{}

% 帮助文件放到草稿模式中
%% https://github.com/wennboo/HDU-latex-template-for-master
\RequirePackage{ifdraft}
\ifdraft{
  \fancyhead[l]{草稿}
  \fancyhead[r]{\today}
  \renewcommand{\headrulewidth}{1pt}
  \RequirePackage{showlabels}
}{}