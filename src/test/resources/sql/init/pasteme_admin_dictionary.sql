CREATE TABLE IF NOT EXISTS `pasteme_admin_dictionary`
(
    `id`         BIGINT UNSIGNED NOT NULL COMMENT '主键' PRIMARY KEY AUTO_INCREMENT,
    `type`       INT             NOT NULL COMMENT '词典类型',
    `dictionary` JSON            NOT NULL COMMENT '词典，不兼容 5.7 以前的 MySQL Server',
    KEY `idx_type` (`type`)
)
    COMMENT '存储不同类型的词典'
    COLLATE = utf8mb4_general_ci
    ENGINE = Innodb
    DEFAULT CHARSET = utf8mb4;