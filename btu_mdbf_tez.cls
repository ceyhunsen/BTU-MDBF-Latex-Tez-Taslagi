% Bursa Teknik Üniversitesi, Mühendislik ve Doğa Bilimleri Fakültesi, Latex
% tez taslağı.
%
% Bu proje MIT lisansı ile lisanslanmıştır.

% Yazarlar:
% * Ceyhun Şen <19360859023@ogrenci.btu.edu.tr>

% İlk ayarlar.
\ProvidesClass{btu_thesis}
\NeedsTeXFormat{LaTeX2e}

% Yeni sınıfı `report` sınıfı üzerine inşa et.
\LoadClass[12pt,oneside]{report}

% Döküman dilini Türkçe'ye ayarla.
\RequirePackage[turkish]{babel}
\RequirePackage[utf8]{inputenc}

% Font'u ayarla. Times New Roman ve alternatifi (özgür font) olan Liberation
% Serif arasında seçim yapabilirsiniz.
\usepackage{fontspec}
\setmainfont[Language=Turkish]{Liberation Serif}
% \setmainfont[Language=Turkish]{Times New Roman}

% Kağıt ayarları.
\RequirePackage[a4paper]{geometry}
\newgeometry
{
	top=3.0cm,
	bottom=2.5cm,
	inner=2.5cm,
	outer=3.0cm
}

% Resim ayarları.
\RequirePackage{graphicx}

% Satır boşluğunu ayarla.
\linespread{1.5}

% Tez başlangıcı.
\newcommand{\startthesis}{%
 	\null
	\thispagestyle{empty}
	\addtocounter{page}{-1}
	\newpage
	\pagenumbering{roman}
}

% İç kapak sayfası.
\newcommand{\innercoverpage}[2]{%
	\begin{titlepage}
		\begin{center}
			\large{\bfseries {
				% Üniversite ve fakülte adı.
				\underline {
					BURSA TEKN\.{I}K \"{U}N\.{I}VERS\.{I}TES\.{I}
				}\\
				\underline {
					M\"{U}HEND\.{I}SL\.{I}K VE DO\u{G}A B\.{I}L\.{I}MLER\.{I} FAK\"{U}LTES\.{I}
				}\\

				% BTÜ logosu.
				\includegraphics[width=3.95cm]{resimler/btu_logo.jpg}

				% Tez başlığı.
				\@title

				L\.{I}SANS B\.{I}T\.{I}RME \c{C}ALI\c{S}MASI

				% Öğrenci adı.
				\@author\\

				% Bölüm adı.
				{#1} \\

				% Danışman adı.
				Dan{\i}\c{s}man: {#2}

				% Tarih.
				\@date
			}}
		\end{center}
	\end{titlepage}
}

% Beyan sayfaları.
\newcommand{\declaration}[8]{%
	\null
	\thispagestyle{empty}

	% Beyan metni.
	BTÜ, Mühendislik ve Doğa Bilimleri Fakültesi {#1} Bölümü’nün {#2} numaralı öğrencisi \@author, ilgili yönetmeliklerin belirlediği gerekli tüm şartları yerine getirdikten sonra hazırladığı “BİTİRME ÇALIŞMASI BAŞLIĞI” başlıklı bitirme çalışmasını aşağıda imzaları olan jüri önünde başarı ile sunmuştur.\\

	% Danışman ve jüri üyleri.
	\begin{tabbing}
		\bfseries{Danışmanı:} \hspace{20mm} \= \bfseries{#3}\\
		\> Bursa Teknik Üniversitesi\\

		\bfseries{Jüri Üyeleri:} \> \bfseries{#4}\\
		\> {#5}\\
		\> \bfseries{#6}\\
		\> {#7}\\

		% Tarih.
		\bfseries{Savunma Tarihi:} \> \@date\\

		% Bölüm başkanı.
		\bfseries{Bölüm Başkanı:} \> \bfseries{#8}\\
		\> Bursa Teknik Üniversitesi
		\begin{minipage}{0.5\textwidth}
			\begin{flushright}
			......./......./.......
			\end{flushright}
		\end{minipage}
	\end{tabbing}

	\newpage

	% İntihal beyanı.
	\begin{center}
		\large{\bfseries{İNTİHAL BEYANI}}
	\end{center}
	Bu bitirme çalışmasında görsel, işitsel ve yazılı biçimde sunulan tüm bilgi ve sonuçların akademik ve etik kurallara uyularak tarafımdan elde edildiğini, bitirme çalışması içinde yer alan ancak bu çalışmaya özgü olmayan tüm sonuç ve bilgileri bitirme çalışmasında kaynak göstererek belgelediğimi, aksinin ortaya çıkması durumunda her türlü yasal sonucu kabul ettiğimi beyan ederim.

	\begin{flushright}
		Öğrencinin Adı Soyadı: \@author\\
		İmzası:
	\end{flushright}

	\newpage
}

% İçeriğin başlangıcı.
\newcommand{\startcontent}[0]{%
	\pagenumbering{arabic}
}
