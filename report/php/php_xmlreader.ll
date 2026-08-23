Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/php_xmlreader?download=true
inline.NumInlined: 64
inline.NumDeleted: 11
begin_hunk_0
@.str.57 = private unnamed_addr constant [4 x i8] c"dom\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"libxml\00", align 1
@xmlreader_deps = internal constant [3 x { ptr, ptr, ptr, i8, [7 x i8] }] [{ ptr, ptr, ptr, i8, [7 x i8] } { ptr @.str.57, ptr null, ptr null, i8 1, [7 x i8] zeroinitializer }, { ptr, ptr, ptr, i8, [7 x i8] } { ptr @.str.58, ptr null, ptr null, i8 1, [7 x i8] zeroinitializer }, { ptr, ptr, ptr, i8, [7 x i8] } zeroinitializer], align 16
@.str.60 = private unnamed_addr constant [6 x i8] c"p|p!l\00", align 1
@.str.61 = private unnamed_addr constant [27 x i8] c"Unable to open source data\00", align 1
@zend_empty_string = external local_unnamed_addr global ptr, align 8
@.str.62 = private unnamed_addr constant [6 x i8] c"s|p!l\00", align 1
@.str.63 = private unnamed_addr constant [27 x i8] c"Unable to load source data\00", align 1
@.str.64 = private unnamed_addr constant [62 x i8] c"Failed to read property because no XML data has been read yet\00", align 1
@zend_string_init_interned = external local_unnamed_addr global ptr, align 8
@class_XMLReader_methods = internal constant [29 x %struct._zend_function_entry] [%struct._zend_function_entry { ptr @.str.87, ptr @zim_XMLReader_close, ptr @arginfo_class_XMLReader_close, i32 0, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.88, ptr @zim_XMLReader_getAttribute, ptr @arginfo_class_XMLReader_getAttribute, i32 1, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.89, ptr @zim_XMLReader_getAttributeNo, ptr @arginfo_class_XMLReader_getAttributeNo, i32 1, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.90, ptr @zim_XMLReader_getAttributeNs, ptr @arginfo_class_XMLReader_getAttributeNs, i32 2, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.91, ptr @zim_XMLReader_getParserProperty, ptr @arginfo_class_XMLReader_getParserProperty, i32 1, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.92, ptr @zim_XMLReader_isValid, ptr @arginfo_class_XMLReader_isValid, i32 0, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.93, ptr @zim_XMLReader_lookupNamespace, ptr @arginfo_class_XMLReader_lookupNamespace, i32 1, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.94, ptr @zim_XMLReader_moveToAttribute, ptr @arginfo_class_XMLReader_moveToAttribute, i32 1, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.95, ptr @zim_XMLReader_moveToAttributeNo, ptr @arginfo_class_XMLReader_moveToAttributeNo, i32 1, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.96, ptr @zim_XMLReader_moveToAttributeNs, ptr @arginfo_class_XMLReader_moveToAttributeNs, i32 2, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.97, ptr @zim_XMLReader_moveToElement, ptr @arginfo_class_XMLReader_isValid, i32 0, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.98, ptr @zim_XMLReader_moveToFirstAttribute, ptr @arginfo_class_XMLReader_isValid, i32 0, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.99, ptr @zim_XMLReader_moveToNextAttribute, ptr @arginfo_class_XMLReader_isValid, i32 0, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.100, ptr @zim_XMLReader_read, ptr @arginfo_class_XMLReader_isValid, i32 0, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.101, ptr @zim_XMLReader_next, ptr @arginfo_class_XMLReader_next, i32 1, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.26, ptr @zim_XMLReader_open, ptr @arginfo_class_XMLReader_open, i32 3, i32 17, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.102, ptr @zim_XMLReader_fromUri, ptr @arginfo_class_XMLReader_fromUri, i32 3, i32 17, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.103, ptr @zim_XMLReader_fromStream, ptr @arginfo_class_XMLReader_fromStream, i32 4, i32 17, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.104, ptr @zim_XMLReader_readInnerXml, ptr @arginfo_class_XMLReader_readInnerXml, i32 0, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.105, ptr @zim_XMLReader_readOuterXml, ptr @arginfo_class_XMLReader_readInnerXml, i32 0, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.106, ptr @zim_XMLReader_readString, ptr @arginfo_class_XMLReader_readInnerXml, i32 0, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.107, ptr @zim_XMLReader_setSchema, ptr @arginfo_class_XMLReader_setSchema, i32 1, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.108, ptr @zim_XMLReader_setParserProperty, ptr @arginfo_class_XMLReader_setParserProperty, i32 2, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.109, ptr @zim_XMLReader_setRelaxNGSchema, ptr @arginfo_class_XMLReader_setSchema, i32 1, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.110, ptr @zim_XMLReader_setRelaxNGSchemaSource, ptr @arginfo_class_XMLReader_setRelaxNGSchemaSource, i32 1, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.111, ptr @zim_XMLReader_XML, ptr @arginfo_class_XMLReader_XML, i32 3, i32 17, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.112, ptr @zim_XMLReader_fromString, ptr @arginfo_class_XMLReader_fromString, i32 3, i32 17, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.113, ptr @zim_XMLReader_expand, ptr @arginfo_class_XMLReader_expand, i32 1, i32 1, ptr null, ptr null }, %struct._zend_function_entry zeroinitializer], align 16
@.str.65 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"ELEMENT\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"ATTRIBUTE\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"TEXT\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"CDATA\00", align 1
@.str.70 = private unnamed_addr constant [11 x i8] c"ENTITY_REF\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"ENTITY\00", align 1
@.str.72 = private unnamed_addr constant [3 x i8] c"PI\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"COMMENT\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"DOC\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"DOC_TYPE\00", align 1
@.str.76 = private unnamed_addr constant [13 x i8] c"DOC_FRAGMENT\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"NOTATION\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"WHITESPACE\00", align 1
@.str.79 = private unnamed_addr constant [23 x i8] c"SIGNIFICANT_WHITESPACE\00", align 1
@.str.80 = private unnamed_addr constant [12 x i8] c"END_ELEMENT\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"END_ENTITY\00", align 1
@.str.82 = private unnamed_addr constant [16 x i8] c"XML_DECLARATION\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"LOADDTD\00", align 1
@.str.84 = private unnamed_addr constant [13 x i8] c"DEFAULTATTRS\00", align 1
@.str.85 = private unnamed_addr constant [9 x i8] c"VALIDATE\00", align 1
@.str.86 = private unnamed_addr constant [15 x i8] c"SUBST_ENTITIES\00", align 1
@zend_known_strings = external local_unnamed_addr global ptr, align 8
@.str.87 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.88 = private unnamed_addr constant [13 x i8] c"getAttribute\00", align 1
@.str.89 = private unnamed_addr constant [15 x i8] c"getAttributeNo\00", align 1
@.str.90 = private unnamed_addr constant [15 x i8] c"getAttributeNs\00", align 1
@.str.91 = private unnamed_addr constant [18 x i8] c"getParserProperty\00", align 1
@.str.92 = private unnamed_addr constant [8 x i8] c"isValid\00", align 1
@.str.93 = private unnamed_addr constant [16 x i8] c"lookupNamespace\00", align 1
@.str.94 = private unnamed_addr constant [16 x i8] c"moveToAttribute\00", align 1
@.str.95 = private unnamed_addr constant [18 x i8] c"moveToAttributeNo\00", align 1
@.str.96 = private unnamed_addr constant [18 x i8] c"moveToAttributeNs\00", align 1
@.str.97 = private unnamed_addr constant [14 x i8] c"moveToElement\00", align 1
@.str.98 = private unnamed_addr constant [21 x i8] c"moveToFirstAttribute\00", align 1
@.str.99 = private unnamed_addr constant [20 x i8] c"moveToNextAttribute\00", align 1
@.str.100 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@.str.102 = private unnamed_addr constant [8 x i8] c"fromUri\00", align 1
@.str.103 = private unnamed_addr constant [11 x i8] c"fromStream\00", align 1
@.str.104 = private unnamed_addr constant [13 x i8] c"readInnerXml\00", align 1
@.str.105 = private unnamed_addr constant [13 x i8] c"readOuterXml\00", align 1
@.str.106 = private unnamed_addr constant [11 x i8] c"readString\00", align 1
@.str.107 = private unnamed_addr constant [10 x i8] c"setSchema\00", align 1
@.str.108 = private unnamed_addr constant [18 x i8] c"setParserProperty\00", align 1
@.str.109 = private unnamed_addr constant [17 x i8] c"setRelaxNGSchema\00", align 1
@.str.110 = private unnamed_addr constant [23 x i8] c"setRelaxNGSchemaSource\00", align 1
@.str.111 = private unnamed_addr constant [4 x i8] c"XML\00", align 1
@.str.112 = private unnamed_addr constant [11 x i8] c"fromString\00", align 1
@.str.113 = private unnamed_addr constant [7 x i8] c"expand\00", align 1
@arginfo_class_XMLReader_close = internal constant [1 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr null, { ptr, i32, [4 x i8] } { ptr null, i32 536870920, [4 x i8] zeroinitializer }, ptr null }], align 16
@arginfo_class_XMLReader_getAttribute = internal constant [2 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr inttoptr (i64 1 to ptr), { ptr, i32, [4 x i8] } { ptr null, i32 536870978, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.44, { ptr, i32, [4 x i8] } { ptr null, i32 64, [4 x i8] zeroinitializer }, ptr null }], align 16
@.str.116 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@arginfo_class_XMLReader_getAttributeNo = internal constant [2 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr inttoptr (i64 1 to ptr), { ptr, i32, [4 x i8] } { ptr null, i32 536870978, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.116, { ptr, i32, [4 x i8] } { ptr null, i32 16, [4 x i8] zeroinitializer }, ptr null }], align 16
@.str.118 = private unnamed_addr constant [10 x i8] c"namespace\00", align 1
@arginfo_class_XMLReader_getAttributeNs = internal constant [3 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr inttoptr (i64 2 to ptr), { ptr, i32, [4 x i8] } { ptr null, i32 536870978, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.44, { ptr, i32, [4 x i8] } { ptr null, i32 64, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.118, { ptr, i32, [4 x i8] } { ptr null, i32 64, [4 x i8] zeroinitializer }, ptr null }], align 16
@.str.120 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@arginfo_class_XMLReader_getParserProperty = internal constant [2 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr inttoptr (i64 1 to ptr), { ptr, i32, [4 x i8] } { ptr null, i32 536870924, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.120, { ptr, i32, [4 x i8] } { ptr null, i32 16, [4 x i8] zeroinitializer }, ptr null }], align 16
@arginfo_class_XMLReader_isValid = internal constant [1 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr null, { ptr, i32, [4 x i8] } { ptr null, i32 536870924, [4 x i8] zeroinitializer }, ptr null }], align 16
@arginfo_class_XMLReader_lookupNamespace = internal constant [2 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr inttoptr (i64 1 to ptr), { ptr, i32, [4 x i8] } { ptr null, i32 536870978, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.50, { ptr, i32, [4 x i8] } { ptr null, i32 64, [4 x i8] zeroinitializer }, ptr null }], align 16
@arginfo_class_XMLReader_moveToAttribute = internal constant [2 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr inttoptr (i64 1 to ptr), { ptr, i32, [4 x i8] } { ptr null, i32 536870924, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.44, { ptr, i32, [4 x i8] } { ptr null, i32 64, [4 x i8] zeroinitializer }, ptr null }], align 16
@arginfo_class_XMLReader_moveToAttributeNo = internal constant [2 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr inttoptr (i64 1 to ptr), { ptr, i32, [4 x i8] } { ptr null, i32 536870924, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.116, { ptr, i32, [4 x i8] } { ptr null, i32 16, [4 x i8] zeroinitializer }, ptr null }], align 16
@arginfo_class_XMLReader_moveToAttributeNs = internal constant [3 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr inttoptr (i64 2 to ptr), { ptr, i32, [4 x i8] } { ptr null, i32 536870924, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.44, { ptr, i32, [4 x i8] } { ptr null, i32 64, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.118, { ptr, i32, [4 x i8] } { ptr null, i32 64, [4 x i8] zeroinitializer }, ptr null }], align 16
@.str.127 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@arginfo_class_XMLReader_next = internal constant [2 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr null, { ptr, i32, [4 x i8] } { ptr null, i32 536870924, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.44, { ptr, i32, [4 x i8] } { ptr null, i32 66, [4 x i8] zeroinitializer }, ptr @.str.127 }], align 16
@.str.129 = private unnamed_addr constant [4 x i8] c"uri\00", align 1
@.str.130 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.131 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.132 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@arginfo_class_XMLReader_open = internal constant [4 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr inttoptr (i64 1 to ptr), { ptr, i32, [4 x i8] } zeroinitializer, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.129, { ptr, i32, [4 x i8] } { ptr null, i32 64, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.130, { ptr, i32, [4 x i8] } { ptr null, i32 66, [4 x i8] zeroinitializer }, ptr @.str.127 }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.131, { ptr, i32, [4 x i8] } { ptr null, i32 16, [4 x i8] zeroinitializer }, ptr @.str.132 }], align 16
@arginfo_class_XMLReader_fromUri = internal constant [4 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr inttoptr (i64 1 to ptr), { ptr, i32, [4 x i8] } { ptr null, i32 32768, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.129, { ptr, i32, [4 x i8] } { ptr null, i32 64, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.130, { ptr, i32, [4 x i8] } { ptr null, i32 66, [4 x i8] zeroinitializer }, ptr @.str.127 }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.131, { ptr, i32, [4 x i8] } { ptr null, i32 16, [4 x i8] zeroinitializer }, ptr @.str.132 }], align 16
@.str.135 = private unnamed_addr constant [12 x i8] c"documentUri\00", align 1
@arginfo_class_XMLReader_fromStream = internal constant [5 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr inttoptr (i64 1 to ptr), { ptr, i32, [4 x i8] } { ptr null, i32 32768, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.14, { ptr, i32, [4 x i8] } zeroinitializer, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.130, { ptr, i32, [4 x i8] } { ptr null, i32 66, [4 x i8] zeroinitializer }, ptr @.str.127 }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.131, { ptr, i32, [4 x i8] } { ptr null, i32 16, [4 x i8] zeroinitializer }, ptr @.str.132 }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.135, { ptr, i32, [4 x i8] } { ptr null, i32 66, [4 x i8] zeroinitializer }, ptr @.str.127 }], align 16
@arginfo_class_XMLReader_readInnerXml = internal constant [1 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr null, { ptr, i32, [4 x i8] } { ptr null, i32 536870976, [4 x i8] zeroinitializer }, ptr null }], align 16
@.str.138 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@arginfo_class_XMLReader_setSchema = internal constant [2 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr inttoptr (i64 1 to ptr), { ptr, i32, [4 x i8] } { ptr null, i32 536870924, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.138, { ptr, i32, [4 x i8] } { ptr null, i32 66, [4 x i8] zeroinitializer }, ptr null }], align 16
@arginfo_class_XMLReader_setParserProperty = internal constant [3 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr inttoptr (i64 2 to ptr), { ptr, i32, [4 x i8] } { ptr null, i32 536870924, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.120, { ptr, i32, [4 x i8] } { ptr null, i32 16, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.52, { ptr, i32, [4 x i8] } { ptr null, i32 12, [4 x i8] zeroinitializer }, ptr null }], align 16
@.str.141 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@arginfo_class_XMLReader_setRelaxNGSchemaSource = internal constant [2 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr inttoptr (i64 1 to ptr), { ptr, i32, [4 x i8] } { ptr null, i32 536870924, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.141, { ptr, i32, [4 x i8] } { ptr null, i32 66, [4 x i8] zeroinitializer }, ptr null }], align 16
@arginfo_class_XMLReader_XML = internal constant [4 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr inttoptr (i64 1 to ptr), { ptr, i32, [4 x i8] } zeroinitializer, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.141, { ptr, i32, [4 x i8] } { ptr null, i32 64, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.130, { ptr, i32, [4 x i8] } { ptr null, i32 66, [4 x i8] zeroinitializer }, ptr @.str.127 }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.131, { ptr, i32, [4 x i8] } { ptr null, i32 16, [4 x i8] zeroinitializer }, ptr @.str.132 }], align 16
@arginfo_class_XMLReader_fromString = internal constant [4 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr inttoptr (i64 1 to ptr), { ptr, i32, [4 x i8] } { ptr null, i32 32768, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.141, { ptr, i32, [4 x i8] } { ptr null, i32 64, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.130, { ptr, i32, [4 x i8] } { ptr null, i32 66, [4 x i8] zeroinitializer }, ptr @.str.127 }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.131, { ptr, i32, [4 x i8] } { ptr null, i32 16, [4 x i8] zeroinitializer }, ptr @.str.132 }], align 16
@.str.145 = private unnamed_addr constant [8 x i8] c"DOMNode\00", align 1
@.str.146 = private unnamed_addr constant [9 x i8] c"baseNode\00", align 1
@arginfo_class_XMLReader_expand = internal constant [2 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr null, { ptr, i32, [4 x i8] } { ptr @.str.145, i32 545259524, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.146, { ptr, i32, [4 x i8] } { ptr @.str.145, i32 8388610, [4 x i8] zeroinitializer }, ptr @.str.127 }], align 16
@zend_observer_fcall_op_array_extension = external local_unnamed_addr global i32, align 4

; Function Attrs: nounwind uwtable
define hidden void @xmlreader_unset_property(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %2, align 8, !tbaa !12
  %i.b = icmp eq ptr %i.a, @xmlreader_prop_handlers
  br i1 %i.b, label %xmlreader_get_prop_handler.exit, label %.thread.i

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @zend_hash_find(ptr noundef nonnull @xmlreader_prop_handlers, ptr noundef %1) #10
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %xmlreader_get_prop_handler.exit.thread, label %xmlreader_get_prop_handler.exit.thread11

.thread.i:                                        ; preds = %bb.b
  %i.d = tail call ptr @zend_hash_find(ptr noundef nonnull @xmlreader_prop_handlers, ptr noundef %1) #10 ; 2 uses
  %.not.i18.i = icmp eq ptr %i.d, null
  br i1 %.not.i18.i, label %xmlreader_get_prop_handler.exit.thread, label %bb.d

bb.d:                                             ; preds = %.thread.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14, !nonnull !15, !noundef !15
  store ptr @xmlreader_prop_handlers, ptr %2, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !12
  br label %xmlreader_get_prop_handler.exit.thread11

xmlreader_get_prop_handler.exit:                  ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !12
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %xmlreader_get_prop_handler.exit.thread, label %xmlreader_get_prop_handler.exit.thread11

xmlreader_get_prop_handler.exit.thread11:         ; preds = %bb.c, %bb.d, %xmlreader_get_prop_handler.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void (ptr, ptr, ...) @zend_throw_error(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n) #10
  br label %bb.e

xmlreader_get_prop_handler.exit.thread:           ; preds = %.thread.i, %bb.c, %xmlreader_get_prop_handler.exit
  tail call void @zend_std_unset_property(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %bb.e

bb.e:                                             ; preds = %xmlreader_get_prop_handler.exit.thread, %xmlreader_get_prop_handler.exit.thread11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @zend_throw_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @zend_std_unset_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden ptr @_xmlreader_get_valid_file_path(ptr noundef %0, ptr noundef %1, i32 %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @xmlCreateURI() #10        ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @xmlURIEscapeStr(ptr noundef %0, ptr noundef nonnull @.str.1) #10 ; 2 uses
  %i.d = tail call i32 @xmlParseURIReference(ptr noundef nonnull %i.a, ptr noundef %i.c) #10 ; 0 uses
  %i.e = load ptr, ptr @xmlFree, align 8, !tbaa !12
  tail call void %i.e(ptr noundef %i.c) #10
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !38
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @strncasecmp(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef 8) #11
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 7
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.j = tail call i32 @strncasecmp(ptr noundef %0, ptr noundef nonnull @.str.3, i64 noundef 17) #11
  %i.k = icmp eq i32 %i.j, 0                      ; 2 uses
  %spec.select.idx = select i1 %i.k, i64 16, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.idx ; 2 uses
  br i1 %i.k, label %.thread, label %.sink.split

.thread:                                          ; preds = %bb.d, %bb.b, %bb.e
  %.02431 = phi ptr [ %spec.select, %bb.e ], [ %0, %bb.b ], [ %i.i, %bb.d ] ; 2 uses
  %i.l = tail call ptr @tsrm_realpath(ptr noundef %.02431, ptr noundef %1) #10
  %.not26 = icmp eq ptr %i.l, null
  br i1 %.not26, label %bb.f, label %.sink.split

bb.f:                                             ; preds = %.thread
  %i.m = tail call ptr @expand_filepath(ptr noundef %.02431, ptr noundef %1) #10
  %.not27 = icmp eq ptr %i.m, null
  %spec.select32 = select i1 %.not27, ptr null, ptr %1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.e, %.thread
  %.023.ph = phi ptr [ %spec.select32, %bb.f ], [ %spec.select, %bb.e ], [ %1, %.thread ]
  tail call void @xmlFreeURI(ptr noundef nonnull %i.a) #10
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.a
  %.023 = phi ptr [ null, %bb.a ], [ %.023.ph, %.sink.split ]
  ret ptr %.023
}

declare ptr @xmlCreateURI() local_unnamed_addr #2

declare ptr @xmlURIEscapeStr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @xmlParseURIReference(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strncasecmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #3

declare ptr @tsrm_realpath(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @expand_filepath(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @xmlFreeURI(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden noundef i32 @zm_startup_xmlreader(i32 %0, i32 %1) #0 {
bb.a:
  %2 = alloca %struct._zval_struct, align 8       ; 5 uses
  %3 = alloca %struct._zval_struct, align 8       ; 5 uses
  %4 = alloca %struct._zval_struct, align 8       ; 5 uses
  %5 = alloca %struct._zval_struct, align 8       ; 5 uses
  %6 = alloca %struct._zval_struct, align 8       ; 5 uses
  %7 = alloca %struct._zval_struct, align 8       ; 5 uses
  %8 = alloca %struct._zval_struct, align 8       ; 5 uses
  %9 = alloca %struct._zval_struct, align 8       ; 5 uses
  %10 = alloca %struct._zval_struct, align 8      ; 5 uses
  %11 = alloca %struct._zval_struct, align 8      ; 5 uses
  %12 = alloca %struct._zval_struct, align 8      ; 5 uses
  %13 = alloca %struct._zval_struct, align 8      ; 5 uses
  %14 = alloca %struct._zval_struct, align 8      ; 5 uses
  %15 = alloca %struct._zval_struct, align 8      ; 5 uses
  %16 = alloca %struct._zend_class_entry, align 8 ; 7 uses
  %17 = alloca %struct._zval_struct, align 8      ; 5 uses
  %18 = alloca %struct.zend_type, align 8         ; 6 uses
  %19 = alloca %struct._zval_struct, align 8      ; 5 uses
  %20 = alloca %struct.zend_type, align 8         ; 6 uses
  %21 = alloca %struct._zval_struct, align 8      ; 5 uses
  %22 = alloca %struct.zend_type, align 8         ; 6 uses
  %23 = alloca %struct._zval_struct, align 8      ; 5 uses
  %24 = alloca %struct.zend_type, align 8         ; 6 uses
  %25 = alloca %struct._zval_struct, align 8      ; 5 uses
  %26 = alloca %struct.zend_type, align 8         ; 6 uses
  %27 = alloca %struct._zval_struct, align 8      ; 5 uses
  %28 = alloca %struct.zend_type, align 8         ; 6 uses
  %29 = alloca %struct._zval_struct, align 8      ; 5 uses
  %30 = alloca %struct.zend_type, align 8         ; 6 uses
  %31 = alloca %struct._zval_struct, align 8      ; 5 uses
  %32 = alloca %struct.zend_type, align 8         ; 6 uses
  %33 = alloca %struct._zval_struct, align 8      ; 5 uses
  %34 = alloca %struct.zend_type, align 8         ; 6 uses
  %35 = alloca %struct._zval_struct, align 8      ; 5 uses
  %36 = alloca %struct.zend_type, align 8         ; 6 uses
  %37 = alloca %struct._zval_struct, align 8      ; 5 uses
  %38 = alloca %struct.zend_type, align 8         ; 6 uses
  %39 = alloca %struct._zval_struct, align 8      ; 5 uses
  %40 = alloca %struct.zend_type, align 8         ; 6 uses
  %41 = alloca %struct._zval_struct, align 8      ; 5 uses
  %42 = alloca %struct.zend_type, align 8         ; 6 uses
  %43 = alloca %struct._zval_struct, align 8      ; 5 uses
  %44 = alloca %struct.zend_type, align 8         ; 6 uses
  %45 = alloca %struct._zval_struct, align 8      ; 5 uses
  %46 = alloca %struct.zend_type, align 8         ; 6 uses
  %47 = alloca %struct._zval_struct, align 8      ; 5 uses
  %48 = alloca %struct.zend_type, align 8         ; 6 uses
  %49 = alloca %struct._zval_struct, align 8      ; 5 uses
  %50 = alloca %struct.zend_type, align 8         ; 6 uses
  %51 = alloca %struct._zval_struct, align 8      ; 5 uses
  %52 = alloca %struct.zend_type, align 8         ; 6 uses
  %53 = alloca %struct._zval_struct, align 8      ; 5 uses
  %54 = alloca %struct.zend_type, align 8         ; 6 uses
  %55 = alloca %struct._zval_struct, align 8      ; 5 uses
  %56 = alloca %struct.zend_type, align 8         ; 6 uses
  %57 = alloca %struct._zval_struct, align 8      ; 5 uses
  %58 = alloca %struct.zend_type, align 8         ; 6 uses
  %59 = alloca %struct._zval_struct, align 8      ; 5 uses
  %60 = alloca %struct.zend_type, align 8         ; 6 uses
  %61 = alloca %struct._zval_struct, align 8      ; 4 uses
  %62 = alloca %struct.zend_type, align 8         ; 6 uses
  %63 = alloca %struct._zval_struct, align 8      ; 4 uses
  %64 = alloca %struct.zend_type, align 8         ; 6 uses
  %65 = alloca %struct._zval_struct, align 8      ; 4 uses
  %66 = alloca %struct.zend_type, align 8         ; 6 uses
  %67 = alloca %struct._zval_struct, align 8      ; 4 uses
  %68 = alloca %struct.zend_type, align 8         ; 6 uses
  %69 = alloca %struct._zval_struct, align 8      ; 4 uses
  %70 = alloca %struct.zend_type, align 8         ; 6 uses
  %71 = alloca %struct._zval_struct, align 8      ; 4 uses
  %72 = alloca %struct.zend_type, align 8         ; 6 uses
  %73 = alloca %struct._zval_struct, align 8      ; 4 uses
  %74 = alloca %struct.zend_type, align 8         ; 6 uses
  %75 = alloca %struct._zval_struct, align 8      ; 4 uses
  %76 = alloca %struct.zend_type, align 8         ; 6 uses
  %77 = alloca %struct._zval_struct, align 8      ; 4 uses
  %78 = alloca %struct.zend_type, align 8         ; 6 uses
  %79 = alloca %struct._zval_struct, align 8      ; 4 uses
  %80 = alloca %struct.zend_type, align 8         ; 6 uses
  %81 = alloca %struct._zval_struct, align 8      ; 4 uses
  %82 = alloca %struct.zend_type, align 8         ; 6 uses
  %83 = alloca %struct._zval_struct, align 8      ; 4 uses
  %84 = alloca %struct.zend_type, align 8         ; 6 uses
  %85 = alloca %struct._zval_struct, align 8      ; 4 uses
  %86 = alloca %struct.zend_type, align 8         ; 6 uses
  %87 = alloca %struct._zval_struct, align 8      ; 4 uses
  %88 = alloca %struct.zend_type, align 8         ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) @xmlreader_object_handlers, ptr noundef nonnull align 8 dereferenceable(208) @std_object_handlers, i64 208, i1 false)
  store i32 24, ptr @xmlreader_object_handlers, align 8, !tbaa !41
  store ptr @xmlreader_objects_free_storage, ptr getelementptr inbounds nuw (i8, ptr @xmlreader_object_handlers, i64 8), align 8, !tbaa !43
  store ptr @xmlreader_has_property, ptr getelementptr inbounds nuw (i8, ptr @xmlreader_object_handlers, i64 80), align 8, !tbaa !44
  store ptr @xmlreader_read_property, ptr getelementptr inbounds nuw (i8, ptr @xmlreader_object_handlers, i64 40), align 8, !tbaa !45
  store ptr @xmlreader_write_property, ptr getelementptr inbounds nuw (i8, ptr @xmlreader_object_handlers, i64 48), align 8, !tbaa !46
  store ptr @xmlreader_unset_property, ptr getelementptr inbounds nuw (i8, ptr @xmlreader_object_handlers, i64 88), align 8, !tbaa !47
  store ptr @xmlreader_get_property_ptr_ptr, ptr getelementptr inbounds nuw (i8, ptr @xmlreader_object_handlers, i64 72), align 8, !tbaa !48
  store ptr @xmlreader_get_method, ptr getelementptr inbounds nuw (i8, ptr @xmlreader_object_handlers, i64 120), align 8, !tbaa !49
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @xmlreader_object_handlers, i64 24), align 8, !tbaa !50
  store ptr @xmlreader_get_debug_info, ptr getelementptr inbounds nuw (i8, ptr @xmlreader_object_handlers, i64 160), align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  call void @llvm.lifetime.start.p0(ptr nonnull %30)
  call void @llvm.lifetime.start.p0(ptr nonnull %32)
  call void @llvm.lifetime.start.p0(ptr nonnull %34)
  call void @llvm.lifetime.start.p0(ptr nonnull %36)
  call void @llvm.lifetime.start.p0(ptr nonnull %38)
  call void @llvm.lifetime.start.p0(ptr nonnull %40)
  call void @llvm.lifetime.start.p0(ptr nonnull %42)
  call void @llvm.lifetime.start.p0(ptr nonnull %44)
  call void @llvm.lifetime.start.p0(ptr nonnull %46)
  call void @llvm.lifetime.start.p0(ptr nonnull %48)
  call void @llvm.lifetime.start.p0(ptr nonnull %50)
  call void @llvm.lifetime.start.p0(ptr nonnull %52)
  call void @llvm.lifetime.start.p0(ptr nonnull %54)
  call void @llvm.lifetime.start.p0(ptr nonnull %56)
  call void @llvm.lifetime.start.p0(ptr nonnull %58)
  call void @llvm.lifetime.start.p0(ptr nonnull %60)
  call void @llvm.lifetime.start.p0(ptr nonnull %62)
  call void @llvm.lifetime.start.p0(ptr nonnull %64)
  call void @llvm.lifetime.start.p0(ptr nonnull %66)
  call void @llvm.lifetime.start.p0(ptr nonnull %68)
  call void @llvm.lifetime.start.p0(ptr nonnull %70)
  call void @llvm.lifetime.start.p0(ptr nonnull %72)
  call void @llvm.lifetime.start.p0(ptr nonnull %74)
  call void @llvm.lifetime.start.p0(ptr nonnull %76)
  call void @llvm.lifetime.start.p0(ptr nonnull %78)
  call void @llvm.lifetime.start.p0(ptr nonnull %80)
  call void @llvm.lifetime.start.p0(ptr nonnull %82)
  call void @llvm.lifetime.start.p0(ptr nonnull %84)
  call void @llvm.lifetime.start.p0(ptr nonnull %86)
  call void @llvm.lifetime.start.p0(ptr nonnull %88)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(520) %16, i8 0, i64 520, i1 false)
  %i.a = load ptr, ptr @zend_string_init_interned, align 8, !tbaa !12
  %i.b = tail call ptr %i.a(ptr noundef nonnull @.str.55, i64 noundef 9, i1 noundef zeroext true) #10, !inline_history !52
  %i.c = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %16, i64 360
  store ptr @std_object_handlers, ptr %i.d, align 8, !tbaa !53
  %i.e = getelementptr inbounds nuw i8, ptr %16, i64 504
  store ptr @class_XMLReader_methods, ptr %i.e, align 8, !tbaa !14
  %i.f = call ptr @zend_register_internal_class_with_flags(ptr noundef nonnull %16, ptr noundef null, i32 noundef 0) #10 ; 40 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #10
  store i64 0, ptr %17, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 4, ptr %i.g, align 8, !tbaa !14
  %i.h = load ptr, ptr @zend_string_init_interned, align 8, !tbaa !12
  %i.i = call ptr %i.h(ptr noundef nonnull @.str.65, i64 noundef 4, i1 noundef zeroext true) #10, !inline_history !52 ; 6 uses
  store ptr null, ptr %18, align 8, !tbaa !54
  %i.j = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 16, ptr %i.j, align 8, !tbaa !56
  %i.k = getelementptr inbounds nuw i8, ptr %18, i64 12
  store i32 0, ptr %i.k, align 4
  %i.l = call ptr @zend_declare_typed_class_constant(ptr noundef %i.f, ptr noundef %i.i, ptr noundef nonnull %17, i32 noundef 1, ptr noundef null, ptr noundef nonnull byval(%struct.zend_type) align 8 %18) #10 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !14   ; 2 uses
  %i.o = and i32 %i.n, 64
  %.not.i245.i = icmp eq i32 %i.o, 0
  br i1 %.not.i245.i, label %bb.b, label %zend_string_release.exit247.i

bb.b:                                             ; preds = %bb.a
  %i.p = load i32, ptr %i.i, align 4, !tbaa !57   ; 2 uses
  %i.q = icmp ne i32 %i.p, 0
  call void @llvm.assume(i1 %i.q)
  %i.r = add i32 %i.p, -1                         ; 2 uses
  store i32 %i.r, ptr %i.i, align 4, !tbaa !57
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.c, label %zend_string_release.exit247.i

bb.c:                                             ; preds = %bb.b
  %i.t = and i32 %i.n, 128
end_hunk_0
