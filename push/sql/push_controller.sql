CREATE TABLE `user_order_info` (
  `id` varchar(200) NOT NULL DEFAULT '' COMMENT '�������',
  `user_id` varchar(200) NOT NULL DEFAULT '' COMMENT '�û�ID',
  `business_type` smallint(6) DEFAULT '0' COMMENT 'ҵ������',
  `business_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'ҵ������ʱ��',
  `order_detail` text COMMENT '��������',
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��',
  `order_status` smallint(6) DEFAULT '0' COMMENT '����״̬',
  `finished_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '�������ʱ��',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `business_time` (`business_time`),
  KEY `updated` (`updated`),
  KEY `finished_time` (`finished_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `push_event_info` (
  `id` varchar(200) NOT NULL DEFAULT '' COMMENT '�¼����',
  `order_id` varchar(200) NOT NULL DEFAULT '' COMMENT '�������',
  `user_id` varchar(200) NOT NULL DEFAULT '' COMMENT '�û�ID',
  `business_type` smallint(6) DEFAULT '0' COMMENT 'ҵ������',
  `event_type` smallint(6) DEFAULT '0' COMMENT '�¼�����',
  `push_detail` text COMMENT '��������',
  `push_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '����ʱ��',
  `business_key` varchar(200) NOT NULL DEFAULT '' COMMENT 'ҵ��ؼ���',
  `is_realtime` tinyint(1) DEFAULT '0' COMMENT '�Ƿ�ʵʱ����',
  `push_status` smallint(6) DEFAULT '0' COMMENT '����״̬',
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��',
  `finished_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '�¼����ʱ��',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `user_id` (`user_id`),
  KEY `push_time` (`push_time`),
  KEY `business_key` (`business_key`),
  KEY `updated` (`updated`),
  KEY `finished_time` (`finished_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `push_controller_backup` (
  `id` varchar(200) NOT NULL DEFAULT '' COMMENT 'Ψһkey',
  `time_backup` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'ʱ��ֵ����',
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `user_order_info`
    ADD COLUMN `fingerprint_id` bigint(20) unsigned NOT NULL DEFAULT 0;

ALTER TABLE `push_event_info`
    ADD COLUMN `fingerprint_id` bigint(20) unsigned NOT NULL DEFAULT 0;
