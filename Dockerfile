FROM drupal:latest

# Drushインストール
RUN composer global require drush/drush:^11.6  \
  && ln -s /root/.composer/vendor/bin/drush /usr/local/bin/drush \
  && drush --version

# compose updateなどパッケージのアップグレードで必要になるためgitを入れる
RUN apt-get update && apt-get install -y git

CMD ["apache2-foreground"]

