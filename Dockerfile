# Copyright (c) 2015, Dalenys
#
# Permission  to use,  copy, modify,  and/or  distribute this  software for  any
# purpose  with  or without  fee  is hereby  granted,  provided  that the  above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS"  AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH
# REGARD TO  THIS SOFTWARE INCLUDING  ALL IMPLIED WARRANTIES  OF MERCHANTABILITY
# AND FITNESS.  IN NO EVENT SHALL  THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT,
# INDIRECT, OR  CONSEQUENTIAL DAMAGES OR  ANY DAMAGES WHATSOEVER  RESULTING FROM
# LOSS OF USE, DATA OR PROFITS,  WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR
# OTHER  TORTIOUS ACTION,  ARISING  OUT OF  OR  IN CONNECTION  WITH  THE USE  OR
# PERFORMANCE OF THIS SOFTWARE.

# http://jekyllrb.com/

FROM dalenys/nodejs
MAINTAINER Dalenys

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
      ruby1.9.1 \
      ruby1.9.1-dev

# get jekyll (http://jekyllrb.com/)
RUN gem install jekyll -v 2.5.3

# clean
RUN find /usr/share/doc     -type f ! -name copyright -delete && \
    find /usr/share/i18n    -type f -delete && \
    find /usr/share/locale  -type f -delete && \
    find /usr/share/man     -type f -delete && \
    find /var/cache/apt     -type f -delete && \
    find /var/lib/apt/lists -type f -delete

EXPOSE 4000
# EOF
