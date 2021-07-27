#! /bin/bash
npm -v && node -v \
	&& rm -rf /app \
	&& npm config set user 0 && npm config set unsafe-perm true && npm config set unsafe-perm \
	&& mkdir /app && cd /app \
	&& npm install -g @angular/cli \
	&& npm install -g @ionic/cli \
	&& ng --version && ionic --version
