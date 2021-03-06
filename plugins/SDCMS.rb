##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "SDCMS" do
author "Brendan Coles <bcoles@gmail.com>" # 2011-10-29
version "0.1"
description "SDCMS - CMS - Requires ASP and Access/MsSql - Homepage: http://www.sdcms.cn/"

# Google results as at 2011-10-29 #
# 410 for "Powered By SDCMS"

# Dorks #
dorks [
'"Powered By SDCMS"'
]

# Examples #
examples %w|
www.yuwenfang.com
www.dfguitar.net
www.ztq66.com
www.sbcsbc.cn/chs/
tv9988.com
www.kukuyy.com
|

# Matches #
matches [

# Powered by link # Version Detection
{ :version=>/<br>Powered By <a href=['"]http:\/\/www\.sdcms\.cn['"] target=['"]_blank['"]>SDCMS ([^<]+)<\/a>/ },

# dl id="con_three_1" class="index_photo"
{ :text=>'<dl id="con_three_1" class="index_photo">' },

]

end

