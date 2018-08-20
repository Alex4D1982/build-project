-- ----------------------------
-- Table structure for IAMS_AROL_ARCH_INFO
-- ----------------------------
DROP TABLE IF EXISTS `IAMS_AROL_ARCH_INFO`;
CREATE TABLE `IAMS_AROL_ARCH_INFO` (
  `SID` int(15) NOT NULL COMMENT '唯一主键',
  `ENG_SID` int(15) DEFAULT NULL COMMENT '工程SID',
  `ARCH_NO` varchar(32) DEFAULT NULL COMMENT '案卷整编号',
  `ARCH_ID` varchar(32) DEFAULT NULL COMMENT '案卷档号',
  `BOX_SID` int(15) DEFAULT NULL COMMENT '盒流水号',
  `ENG_ARCH_NO` varchar(32) DEFAULT NULL COMMENT '案卷序号',
  `REG_NO` varchar(32) DEFAULT NULL COMMENT '总登记号',
  `ARCH_TITLE` varchar(100) DEFAULT NULL COMMENT '案卷题名',
  `MAKE_ORG_NAME` varchar(150) DEFAULT NULL COMMENT '编制单位',
  `STORAGE_TYPE_CODE` varchar(32) DEFAULT NULL COMMENT '保管期限',
  `SECURITY_LEVEL_CODE` varchar(32) DEFAULT NULL COMMENT '密级',
  `MEDIA_TYPE_CODE` varchar(32) DEFAULT NULL COMMENT '载体类型',
  `ARCH_TYPE_CODE` varchar(32) DEFAULT NULL COMMENT '案卷类型',
  `UNITS_CODE` varchar(32) DEFAULT NULL COMMENT '单位',
  `SPEC_CODE` varchar(32) DEFAULT NULL COMMENT '规格',
  `START_DATE` datetime DEFAULT NULL COMMENT '卷内文件起始时间',
  `END_DATE` datetime DEFAULT NULL COMMENT '卷内文件终止时间',
  `CHECK_TYPE_CODE` varchar(32) DEFAULT NULL COMMENT '规划审批事项',
  `OLD_ARCH_ID` varchar(32) DEFAULT NULL COMMENT '原档号',
  `ARCH_WIDTH` varchar(32) DEFAULT NULL COMMENT '案卷厚度',
  `SHELVING_TYPE_CODE` varchar(32) DEFAULT NULL COMMENT '排架类型',
  `COMPACT_DISK_NUMS` varchar(32) DEFAULT NULL COMMENT '光盘数',
  `LOCK_STATUS` varchar(32) DEFAULT NULL COMMENT '锁定状态',
  `MICRO_NO` varchar(32) DEFAULT NULL COMMENT '缩微盘号',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建者',
  `CREATED_DT` datetime DEFAULT NULL COMMENT '创建时间',
  `VERSION` int(9) DEFAULT NULL COMMENT '版本号',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新者',
  `UPDATED_DT` datetime DEFAULT NULL COMMENT '更新时间',
  `ORGAN_SID` int(15) DEFAULT NULL COMMENT '组卷单位ID',
  `STATUS` int(1) DEFAULT NULL COMMENT '审核状态',
  `CHECK_OPINION` varchar(1000) DEFAULT NULL COMMENT '审核意见',
  `CHECK_PERSON` varchar(32) DEFAULT NULL COMMENT '审核人',
  `CHECK_DATE` datetime DEFAULT NULL COMMENT '审核时间',
  PRIMARY KEY (`SID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='案卷信息表';

-- ----------------------------
-- Table structure for IAMS_AROL_EFILE_INFO
-- ----------------------------
DROP TABLE IF EXISTS `IAMS_AROL_EFILE_INFO`;
CREATE TABLE `IAMS_AROL_EFILE_INFO` (
  `SID` int(15) NOT NULL AUTO_INCREMENT COMMENT '唯一主键',
  `ENG_SID` int(15) DEFAULT NULL COMMENT '工程SID',
  `ARCH_SID` int(15) DEFAULT NULL COMMENT '案卷SID',
  `FILE_SID` int(15) DEFAULT NULL COMMENT '文件SID',
  `filename` varchar(100) DEFAULT NULL COMMENT '文件名称',
  `filepath` varchar(100) DEFAULT NULL COMMENT '文件路径',
  `order_rank` varchar(100) DEFAULT NULL COMMENT '排序号',
  `filetype` varchar(100) DEFAULT NULL COMMENT '文件类型',
  `filelen` varchar(100) DEFAULT NULL COMMENT '文件大小',
  `filedescription` varchar(100) DEFAULT NULL COMMENT '文件描述',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建者',
  `CREATED_DT` datetime DEFAULT NULL COMMENT '创建时间',
  `VERSION` int(9) DEFAULT NULL COMMENT '版本号',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新者',
  `UPDATED_DT` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`SID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='电子文件信息表';

-- ----------------------------
-- Table structure for IAMS_AROL_ENG_BASE_INFO
-- ----------------------------
DROP TABLE IF EXISTS `IAMS_AROL_ENG_BASE_INFO`;
CREATE TABLE `IAMS_AROL_ENG_BASE_INFO` (
  `SID` int(15) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ORG_NO_CODE` varchar(32) DEFAULT NULL COMMENT '机构代码',
  `REC_ORG_SID` int(15) DEFAULT NULL COMMENT '接收机构SID',
  `PROJ_SID` int(9) DEFAULT NULL COMMENT '项目ID',
  `ENG_ID` varchar(32) DEFAULT NULL COMMENT '工程档号',
  `ENG_NO` varchar(32) DEFAULT NULL COMMENT '工程整编号',
  `ENG_NAME` varchar(100) NOT NULL COMMENT '工程名称',
  `ENG_ZONE` varchar(32) NOT NULL COMMENT '工程区域',
  `ENG_LOCATION` varchar(255) DEFAULT NULL COMMENT '工程地址',
  `ARCH_CATEGORY_CODE` varchar(32) DEFAULT NULL COMMENT '档案分类',
  `ENG_CATEGORY_CODE` varchar(32) DEFAULT NULL COMMENT '建设工程分类',
  `OLD_ENG_ID` varchar(32) DEFAULT NULL COMMENT '原编档号',
  `ARCHIVING_DATE` datetime DEFAULT NULL COMMENT '进馆日期',
  `HANDOVER_ORG_NAME` varchar(100) DEFAULT NULL COMMENT '移交单位',
  `STATUS` int(1) NOT NULL COMMENT '状态',
  `SOURCE_CODE` int(1) DEFAULT NULL COMMENT '产生来源',
  `MICRO_NO` varchar(32) DEFAULT NULL COMMENT '缩微(光盘)号',
  `INDEXED_BY` varchar(32) DEFAULT NULL COMMENT '标引人',
  `INDEXED_DT` datetime DEFAULT NULL COMMENT '标引时间',
  `ARRANGED_BY` varchar(32) DEFAULT NULL COMMENT '整理人',
  `ARRANGED_DT` datetime DEFAULT NULL COMMENT '整理时间',
  `CHECKED_BY` varchar(32) DEFAULT NULL COMMENT '审核人',
  `CHECKED_DT` datetime DEFAULT NULL COMMENT ' 审核时间',
  `ENG_TYPE` int(1) DEFAULT NULL COMMENT '工程类别',
  `ENG_TYPE2` int(1) DEFAULT NULL COMMENT '二级工程类别',
  `SPEC_TYPE` int(1) DEFAULT NULL COMMENT '专业记载类',
  `ENG_FORMER_NAME` varchar(100) DEFAULT NULL COMMENT '工程曾用名',
  `ARCHIVE_YEAR` varchar(4) DEFAULT NULL COMMENT '规划档案的分配档号的年度',
  `TRANSFER_DATE` datetime DEFAULT NULL COMMENT '移交时间',
  `RECEIVE_BY` varchar(32) DEFAULT NULL COMMENT '接收人',
  `RECEIVE_DT` datetime DEFAULT NULL COMMENT '接受时间',
  `DEPOSIT` varchar(100) DEFAULT NULL COMMENT '临时存放位置',
  `SECURITY_LEVEL_CODE` varchar(32) DEFAULT NULL COMMENT '密级',
  `STORAGE_TYPE_CODE` varchar(32) DEFAULT NULL COMMENT '保管期限',
  `ENG_GUIDE_SID` int(15) DEFAULT NULL COMMENT '业务指导工程流水号',
  `ROAD_NAME` varchar(50) DEFAULT NULL COMMENT '路',
  `NOTE` varchar(255) DEFAULT NULL COMMENT '附注',
  `VERSION` int(9) DEFAULT NULL COMMENT '版本号',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新者',
  `UPDATED_DT` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`SID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工程信息表';

-- ----------------------------
-- Table structure for IAMS_AROL_ENG_FACILITY_SPEC
-- ----------------------------
DROP TABLE IF EXISTS `IAMS_AROL_ENG_FACILITY_SPEC`;
CREATE TABLE `IAMS_AROL_ENG_FACILITY_SPEC` (
  `ENG_SID` int(15) NOT NULL COMMENT '工程SID',
  `WIDTH` decimal(12,2) DEFAULT NULL COMMENT '宽度',
  `LENGTH` decimal(12,2) DEFAULT NULL COMMENT '长度',
  `HEIGHT` double DEFAULT NULL COMMENT '高度',
  `SPAN` decimal(12,2) DEFAULT NULL COMMENT '跨径',
  `HOLENUMS` int(9) DEFAULT NULL COMMENT '孔数',
  `LEVEL_CODE` varchar(32) DEFAULT NULL COMMENT '级别',
  `LOAD_CODE` varchar(32) DEFAULT NULL COMMENT '荷载',
  `HEADROOM` decimal(12,2) DEFAULT NULL COMMENT '净空',
  `START_X` varchar(32) DEFAULT NULL COMMENT '起点',
  `END_X` varchar(32) DEFAULT NULL COMMENT '止点',
  `PIPE_DIAMETER` varchar(32) DEFAULT NULL COMMENT '管径',
  `PIPE_MATERIAL` varchar(32) DEFAULT NULL COMMENT '管材',
  `APERTURE` varchar(32) DEFAULT NULL COMMENT '孔径',
  `FINISH_AREA` decimal(12,2) DEFAULT NULL COMMENT '竣工面积',
  `CONS_TYPE_CODE` varchar(32) DEFAULT NULL COMMENT '结构类型',
  `BASIS_TYPE_CODE` varchar(32) DEFAULT NULL COMMENT '基础处理',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建者',
  `CREATED_DT` datetime DEFAULT NULL COMMENT '创建时间',
  `VERSION` int(9) DEFAULT NULL COMMENT '版本号',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新者',
  `UPDATED_DT` datetime DEFAULT NULL COMMENT '更新时间',
  `LOAD_STANDARD` varchar(200) DEFAULT NULL COMMENT '荷载标准',
  `BRIDGE_LOAD` varchar(200) DEFAULT NULL COMMENT '桥梁载荷',
  `CATEGORY` varchar(200) DEFAULT NULL COMMENT '种类/类别',
  `OTHER` varchar(2000) DEFAULT NULL COMMENT '其他',
  PRIMARY KEY (`ENG_SID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='市政建筑专业记载信息表';

-- ----------------------------
-- Table structure for IAMS_AROL_ENG_HOUSE_SPEC
-- ----------------------------
DROP TABLE IF EXISTS `IAMS_AROL_ENG_HOUSE_SPEC`;
CREATE TABLE `IAMS_AROL_ENG_HOUSE_SPEC` (
  `ENG_SID` int(15) NOT NULL COMMENT '工程SID',
  `HEIGHT` decimal(12,2) DEFAULT NULL COMMENT '高度',
  `UNDER_NUMS` int(9) DEFAULT NULL COMMENT '地下层数',
  `OVER_NUMS` int(9) DEFAULT NULL COMMENT '地上层数',
  `FLOOR_AREA` decimal(12,2) DEFAULT NULL COMMENT '地上面积',
  `UNDER_AREA` decimal(12,2) DEFAULT NULL COMMENT '地下面积',
  `FINISH_AREA` decimal(12,2) DEFAULT NULL COMMENT '竣工面积',
  `CONS_TYPE_CODE` varchar(32) DEFAULT NULL COMMENT '结构类型',
  `BUIDLING_NUMS` int(9) DEFAULT NULL COMMENT '栋数',
  `BASIS_TYPE_CODE` varchar(32) DEFAULT NULL COMMENT '基础处理',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建者',
  `CREATED_DT` datetime DEFAULT NULL COMMENT '创建时间',
  `VERSION` int(9) DEFAULT NULL COMMENT '版本号',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '版本号',
  `UPDATED_DT` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ENG_SID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='房屋建筑专业记载信息表';

-- ----------------------------
-- Table structure for IAMS_AROL_ENG_ORG_AND_CODE
-- ----------------------------
DROP TABLE IF EXISTS `IAMS_AROL_ENG_ORG_AND_CODE`;
CREATE TABLE `IAMS_AROL_ENG_ORG_AND_CODE` (
  `ENG_SID` int(15) NOT NULL COMMENT '工程SID',
  `LAND_USE_ORG_SID` int(15) DEFAULT NULL COMMENT '用地单位SID',
  `LAND_USE_ORG_NAME` varchar(200) DEFAULT NULL COMMENT '用地单位名称',
  `INITIATION_APPROVAL_ORG_SID` int(15) DEFAULT NULL COMMENT '立项批准单位SID',
  `INITIATION_APPROVAL_ORG_NAME` varchar(200) DEFAULT NULL COMMENT '立项批准单位名称',
  `DESIGN_ORG_SID` int(15) DEFAULT NULL COMMENT '设计单位SID',
  `DESIGN_ORG_NAME` varchar(200) DEFAULT NULL COMMENT '设计单位名称',
  `RECONNAISSANCE_ORG_SID` int(15) DEFAULT NULL COMMENT '勘察单位SID',
  `RECONNAISSANCE_ORG_NAME` varchar(200) DEFAULT NULL COMMENT '勘察单位名称',
  `SUPERVISION_ORG_SID` int(15) DEFAULT NULL COMMENT '监理单位SID',
  `SUPERVISION_ORG_NAME` varchar(200) DEFAULT NULL COMMENT '监理单位名称',
  `CONSTRUCT_ORG_SID` int(15) DEFAULT NULL COMMENT '施工单位SID',
  `CONSTRUCT_ORG_NAME` varchar(200) DEFAULT NULL COMMENT '施工单位名称',
  `PLANNING_APPROVAL_ORG_SID` int(15) DEFAULT NULL COMMENT '规划批准单位SID',
  `PLANNING_APPROVAL_ORG_NAME` varchar(200) DEFAULT NULL COMMENT '规划批准单位名称',
  `SECURITY_ORG_SID` int(15) DEFAULT NULL COMMENT '质量安全监督单位SID',
  `SECURITY_ORG_NAME` varchar(200) DEFAULT NULL COMMENT '质量安全监督单位名称',
  `INITIATION_APPROVAL_NO` int(15) DEFAULT NULL COMMENT '立项批准号',
  `LAND_USE_PLANNING_NO` varchar(50) DEFAULT NULL COMMENT '用地规划许可证号',
  `LAND_USE_NO` varchar(50) DEFAULT NULL COMMENT '用地许可证号',
  `CONSTRUCT_NO` varchar(50) DEFAULT NULL COMMENT 'CONSTRUCT_NO',
  `DESIGN_NO` varchar(50) DEFAULT NULL COMMENT 'DESIGN_NO',
  `LAND_NO` varchar(50) DEFAULT NULL COMMENT '土地证号',
  `TERRAIN_NO` varchar(50) DEFAULT NULL COMMENT '地形图号',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建者',
  `CREATED_DT` datetime DEFAULT NULL COMMENT '创建时间',
  `VERSION` int(9) DEFAULT NULL COMMENT '版本号',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新者',
  `UPDATED_DT` datetime DEFAULT NULL COMMENT '更新时间',
  `INSTRUCTOR` varchar(50) DEFAULT NULL COMMENT '业务指导员',
  `PM_DIRECTOR` varchar(50) DEFAULT NULL COMMENT '项目总监',
  `FIELD_MANAGER` varchar(50) DEFAULT NULL COMMENT '现场监理',
  `SUB_UNIT` varchar(200) DEFAULT NULL COMMENT '分包单位',
  `PROJECT_MANAGER` varchar(50) DEFAULT NULL COMMENT '项目经理',
  `SUPERVION_CHECKER` varchar(50) DEFAULT NULL COMMENT '监理审核人',
  `CONS_UNIT_CHECKER` varchar(50) DEFAULT NULL COMMENT '建设单位审核人',
  `FINISH_BAH` varchar(50) DEFAULT NULL COMMENT '竣工验收备案号',
  `OTHER_CERT` varchar(500) DEFAULT NULL COMMENT '其他证件',
  PRIMARY KEY (`ENG_SID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工程责任者信息关联表';

-- ----------------------------
-- Table structure for IAMS_AROL_ENG_OTHER_SPEC
-- ----------------------------
DROP TABLE IF EXISTS `IAMS_AROL_ENG_OTHER_SPEC`;
CREATE TABLE `IAMS_AROL_ENG_OTHER_SPEC` (
  `ENG_SID` int(15) NOT NULL COMMENT '工程SID',
  `USE_TYPE_CODE` varchar(32) DEFAULT NULL COMMENT '用地分类',
  `REQUISITION_TYPE_CODE` varchar(32) DEFAULT NULL COMMENT '征拨分类',
  `OLD_USE_TYPE` varchar(32) DEFAULT NULL COMMENT '原土地分类',
  `APPROVAL_DATE` datetime DEFAULT NULL COMMENT '批准时间',
  `USE_AREA` decimal(12,2) DEFAULT NULL COMMENT '用地面积',
  `SCALE` varchar(32) DEFAULT NULL COMMENT '规模净空',
  `LOAD_LEVEL` varchar(32) DEFAULT NULL COMMENT '荷载级别',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建者',
  `CREATED_DT` datetime DEFAULT NULL COMMENT '创建时间',
  `VERSION` int(9) DEFAULT NULL COMMENT '版本号',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新者',
  `UPDATED_DT` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ENG_SID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for IAMS_AROL_ENG_PB_SPEC
-- ----------------------------
DROP TABLE IF EXISTS `IAMS_AROL_ENG_PB_SPEC`;
CREATE TABLE `IAMS_AROL_ENG_PB_SPEC` (
  `ENG_SID` int(15) NOT NULL COMMENT '工程SID',
  `CONS_AREA` decimal(12,2) DEFAULT NULL COMMENT '建筑面积',
  `BUIDLING_NUMS` int(9) DEFAULT NULL COMMENT '幢数',
  `LENGTH_VALUE` decimal(12,2) DEFAULT NULL COMMENT '长度',
  `HEIGHT_VALUE` decimal(12,2) DEFAULT NULL COMMENT '高度',
  `FLOORS` int(9) DEFAULT NULL COMMENT '层数',
  `WIDTH_VALUE` decimal(12,2) DEFAULT NULL COMMENT '宽度',
  `SPEC_CODE` varchar(32) DEFAULT NULL COMMENT '规格',
  `LOAD_CODE` varchar(32) DEFAULT NULL COMMENT '荷载',
  `HEADROOM` varchar(32) DEFAULT NULL COMMENT '净空',
  `HOLENUMS` varchar(32) DEFAULT NULL COMMENT '孔数',
  `MATERIAL_CODE` varchar(32) DEFAULT NULL COMMENT '材质',
  `SUB_ENG_NAME` varchar(150) DEFAULT NULL COMMENT '单体工程名称',
  `OVER_NUMS` varchar(32) DEFAULT NULL COMMENT '地上层数',
  `UNDER_NUMS` varchar(32) DEFAULT NULL COMMENT '地下层数',
  `USE_AMOUNT` decimal(12,2) DEFAULT NULL COMMENT 'USE_AMOUNT',
  `RESOURCE_NUMS` varchar(50) DEFAULT NULL COMMENT '劳动力安置数',
  `PARCEL_NO` varchar(50) DEFAULT NULL COMMENT '地形图号',
  `BASIS_TYPE_CODE` varchar(32) DEFAULT NULL COMMENT '基础处理',
  `START_X` varchar(150) DEFAULT NULL COMMENT '起点',
  `END_X` varchar(150) DEFAULT NULL COMMENT '止点',
  `APPROVAL_DATE` datetime DEFAULT NULL COMMENT '审批时间',
  `APPLAY_DATE` datetime DEFAULT NULL COMMENT '申请时间',
  `USE_AREA` decimal(12,2) DEFAULT NULL COMMENT '用地面积',
  `USE_TYPE_CODE` varchar(32) DEFAULT NULL COMMENT '用地类型',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建者',
  `CREATED_DT` datetime DEFAULT NULL COMMENT '创建时间',
  `VERSION` int(9) DEFAULT NULL COMMENT '版本号',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新者',
  `UPDATED_DT` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ENG_SID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='规划建筑专业记载信息表';

-- ----------------------------
-- Table structure for IAMS_AROL_ENG_SPEC_INFO
-- ----------------------------
DROP TABLE IF EXISTS `IAMS_AROL_ENG_SPEC_INFO`;
CREATE TABLE `IAMS_AROL_ENG_SPEC_INFO` (
  `ENG_SID` varchar(32) NOT NULL COMMENT '工程SID',
  `LAND_USE_AREA` decimal(12,2) DEFAULT NULL COMMENT '用地面积',
  `CONSTRUCTION_AREA` decimal(12,2) NULL COMMENT '建筑面积',
  `ENG_BUDGET` decimal(12,2) DEFAULT NULL COMMENT '工程预算',
  `ENG_COST` decimal(12,2) DEFAULT NULL COMMENT '工程结算',
  `START_DATE` datetime DEFAULT NULL COMMENT '开工时间',
  `END_DATE` datetime DEFAULT NULL COMMENT '竣工时间',
  `REQUEST_DATE` datetime DEFAULT NULL COMMENT '申请时间',
  `APPROVAL_DATE` datetime DEFAULT NULL COMMENT '批准时间',
  `LAND_USE_TYPE_CODE` varchar(32) DEFAULT NULL COMMENT '用地类型',
  `LAND_SUPPLY_TYPE_CODE` varchar(32) DEFAULT NULL COMMENT '供地类型',
  `LAND_PLANNING_TYPE_CODE` varchar(32) DEFAULT NULL COMMENT '规划用地性质',
  `BUILDING_NUMS` int(9) DEFAULT NULL COMMENT '幢数',
  `TOTAL_LENGTH` decimal(12,2) DEFAULT NULL COMMENT '总长度',
  `TERRAIN_NO` varchar(32) DEFAULT NULL COMMENT '地形图号/地理编码',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建者',
  `CREATED_DT` datetime DEFAULT NULL COMMENT '创建时间',
  `VERSION` int(9) DEFAULT NULL COMMENT '版本号',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新者',
  `UPDATED_DT` datetime DEFAULT NULL COMMENT '更新时间',
  `SEISMIC_GRADE` varchar(50) DEFAULT NULL COMMENT '抗震等级',
  `DEFENSE_AREA` varchar(50) DEFAULT NULL COMMENT '人防面积',
  `FIRE_GRADE` varchar(50) DEFAULT NULL COMMENT '防火等级',
  `ENG_QUALITY` varchar(500) DEFAULT NULL COMMENT '工程质量',
  `AWARDS_INFO` varchar(2000) DEFAULT NULL COMMENT '获奖信息',
  `PARKING_NUM` int(9) DEFAULT NULL COMMENT '车位数',
  PRIMARY KEY (`ENG_SID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='通用专业记载信息表';

-- ----------------------------
-- Table structure for IAMS_AROL_FILE_INFO
-- ----------------------------
DROP TABLE IF EXISTS `IAMS_AROL_FILE_INFO`;
CREATE TABLE `IAMS_AROL_FILE_INFO` (
  `SID` int(15) NOT NULL AUTO_INCREMENT COMMENT '唯一主键',
  `ENG_SID` int(15) DEFAULT NULL COMMENT '工程SID',
  `ARCH_SID` int(15) DEFAULT NULL COMMENT '案卷SID',
  `FILE_ID` varchar(32) DEFAULT NULL COMMENT '文件档号',
  `OLD_FILE_ID` varchar(32) DEFAULT NULL COMMENT '原文件档号',
  `FILE_NO` varchar(32) DEFAULT NULL COMMENT '文件整编号',
  `ARCH_FILE_NO` varchar(32) DEFAULT NULL COMMENT '文件序号',
  `REG_NO` varchar(32) DEFAULT NULL COMMENT '总登记号',
  `MICRO_NO` varchar(32) DEFAULT NULL COMMENT '缩微(光盘)号',
  `FILE_TITLE` varchar(100) DEFAULT NULL COMMENT '文件题名',
  `RESPONSIBILITY` varchar(150) DEFAULT NULL COMMENT '责任者',
  `FILE_IMAGE_NO` varchar(32) DEFAULT NULL COMMENT '文(图)号',
  `MANUSCRIPT_CODE` varchar(32) DEFAULT NULL COMMENT '稿本',
  `STORAGE_TYPE_CODE` varchar(32) DEFAULT NULL COMMENT '保管期限',
  `SECURITY_LEVEL_CODE` varchar(32) DEFAULT NULL COMMENT '密级',
  `CREATED_START` datetime DEFAULT NULL COMMENT '形成时间(起)',
  `CREATED_END` datetime DEFAULT NULL COMMENT '形成时间(止)',
  `MEDIA_TYPE_CODE` varchar(32) DEFAULT NULL COMMENT '载体类型',
  `PAGE_NO` varchar(32) DEFAULT NULL COMMENT '页次',
  `SPEC_CODE` varchar(32) DEFAULT NULL COMMENT '规格',
  `TEXT_NUMS` int(9) DEFAULT NULL COMMENT '文字页数',
  `DRAWING_NUMS` int(9) DEFAULT NULL COMMENT '图纸张数',
  `PHONE_NUMS` int(9) DEFAULT NULL COMMENT '照片张数',
  `BASE_MAP_NUMS` int(9) DEFAULT NULL COMMENT '底图张数',
  `NEGATIVE_NUMS` int(9) DEFAULT NULL COMMENT '底片张数',
  `CONS_CODE` varchar(32) DEFAULT NULL COMMENT '工程资料代码',
  `SEGMENT_CODE` varchar(32) DEFAULT NULL COMMENT '工程分部分项代码',
  `FILE_SOURCE_CODE` varchar(100) DEFAULT NULL COMMENT '规划文件来源',
  `SCAN_FLAG` int(1) DEFAULT NULL COMMENT '扫描标志',
  `LOCK_STATUS` int(1) DEFAULT NULL COMMENT '锁定状态',
  `UNITS_CODE` varchar(32) DEFAULT NULL COMMENT '单位',
  `PDF_CREATE_FLAG` int(1) DEFAULT NULL COMMENT 'PDF创建标志',
  `PDF_PATH` varchar(150) DEFAULT NULL COMMENT 'PDF文件路径',
  `PDF_FILENAME` varchar(100) DEFAULT NULL COMMENT 'PDF文件名称',
  `PDF_CREATE_DT` datetime DEFAULT NULL COMMENT 'PDF创建时间',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建者',
  `CREATED_DT` datetime DEFAULT NULL COMMENT '创建时间',
  `VERSION` int(9) DEFAULT NULL COMMENT '版本号',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新者',
  `UPDATED_DT` datetime DEFAULT NULL COMMENT '更新时间',
  'CATALOGID' int(15) NOT NULL COMMENT '文件目录ID, 目录表外键',
  'REAL_PAGE_NUMS' int(15) NOT NULL COMMENT '实际实体页数',
  'UPLOAD_PAGE_NUMS' int(15) NOT NULL COMMENT '上传页数',
  'CHECK_OPINION' varchar(1000) NOT NULL COMMENT '审核信息',
  'INSTRUCTOR_REMARK' varchar(1000) NOT NULL COMMENT '业务指导备注',
  'STATUS' int(15) NOT NULL COMMENT '目录状态（0:未登记，1:已登记，2:预验通过，3:未通过，4.再次提交）',
  'FILE_TYPE_CODE' varchar(100) NOT NULL COMMENT '文件类型代码',
  'FILE_TYPE' varchar(100) NOT NULL COMMENT '文件格式',
  'FILE_SIZE' int(15) NOT NULL COMMENT '文件大小',
  'REMARK' varchar(1000) NOT NULL COMMENT '附注',
  `CHECK_PERSON` varchar(32) DEFAULT NULL COMMENT '审核人',
  `CHECK_DATE` datetime DEFAULT NULL COMMENT '审核时间',
  PRIMARY KEY (`SID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文件信息表';

-- ----------------------------
-- Table structure for IAMS_AROL_PROJ_BASE_INFO
-- ----------------------------
DROP TABLE IF EXISTS `IAMS_AROL_PROJ_BASE_INFO`;
CREATE TABLE `IAMS_AROL_PROJ_BASE_INFO` (
  `SID` int(9) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `PROJ_ID` varchar(32) DEFAULT NULL COMMENT '项目档号',
  `ORG_NO_CODE` varchar(32) DEFAULT NULL COMMENT '机构代码',
  `CON_ORG_SID` int(15) DEFAULT NULL COMMENT '建设机构SID',
  `PROJ_NAME` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `PROJ_LOCATION` varchar(255) DEFAULT NULL COMMENT '项目地址',
  `TOTAL_LAND_AREA` decimal(12,2) DEFAULT NULL COMMENT '总用地面积',
  `TOTAL_BUILDING_AREA` decimal(12,2) DEFAULT NULL COMMENT '总建筑面积',
  `BUILDING_NUMS` int(9) DEFAULT NULL COMMENT '幢数',
  `PLOT_RATIO` decimal(12,2) DEFAULT NULL COMMENT '容积率',
  `GREEN_COVERAGE` decimal(12,2) DEFAULT NULL COMMENT '绿化率',
  `BUILDING_DENSITY` decimal(12,2) DEFAULT NULL COMMENT '建筑密度',
  `UP_PARKING_NUMS` int(9) DEFAULT NULL COMMENT '地上停车位',
  `DOWN_PARKING_NUMS` int(9) DEFAULT NULL COMMENT '地下停车位',
  `TOTAL_CONS_BUDGET` decimal(12,2) DEFAULT NULL COMMENT '总工程预算',
  `TOTAL_CONS_SETTLEMENT` decimal(12,2) DEFAULT NULL COMMENT '总工程结算',
  `TOTAL_LAND_PRICE` decimal(12,2) DEFAULT NULL,
  `VERSION` int(9) DEFAULT NULL COMMENT '版本号',
  PRIMARY KEY (`SID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='项目信息表';

-- ----------------------------
-- Table structure for IAMS_PRO_ENG_FLOW_LOG
-- ----------------------------
DROP TABLE IF EXISTS `IAMS_PRO_ENG_FLOW_LOG`;
CREATE TABLE `IAMS_PRO_ENG_FLOW_LOG` (
  `SID` int(15) NOT NULL COMMENT '唯一主键',
  `ENG_SID` int(15) DEFAULT NULL COMMENT '工程SID',
  `ORGAN_SID` INT(15) DEFAULT NULL COMMENT '当前组织ID',
  `ORGAN_NAME` varchar(100) DEFAULT NULL COMMENT '当前组织名称',
  `ORGAN_TYPE` varchar(32) DEFAULT NULL COMMENT '组织类型',
  `USER_SID` int(15) DEFAULT NULL COMMENT '处理人',
  `USER_NAME` varchar(32) DEFAULT NULL COMMENT '处理人名称',
  `OP_DATE` datetime DEFAULT NULL COMMENT '处理时间',
  `OP_STATUS` int(15) DEFAULT NULL COMMENT '处理状态',
  `OP_OPINION` varchar(2000) DEFAULT NULL COMMENT '处理意见',
  PRIMARY KEY (`SID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工程流转日志';