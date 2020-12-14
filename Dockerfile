FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get -y install pandoc
RUN apt-get -y install texlive texlive-fonts-recommended


ADD entrypoint.sh /entrypoint.sh
ADD convert_file_to_pdf.sh /convert_file_to_pdf.sh

RUN chmod +x /entrypoint.sh
RUN chmod +x /convert_file_to_pdf.sh

ENTRYPOINT ["/entrypoint.sh"]
