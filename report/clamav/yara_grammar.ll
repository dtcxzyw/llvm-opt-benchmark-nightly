Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/yara_grammar?download=true
inline.NumInlined: 7
inline.NumDeleted: 2
begin_hunk_0
@.str.1 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"wrong type \22integer\22 for matches operator\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"wrong type \22string\22 for \22matches\22 operator\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"wrong type \22integer\22 for contains operator\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"wrong type \22string\22 for \22at\22 operator\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"wrong type \22integer\22 for or operator\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"wrong type \22string\22 for \22or\22 operator\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"wrong type \22string\22 for \22<\22 operator\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"wrong type \22string\22 for \22>\22 operator\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"wrong type \22string\22 for \22<=\22 operator\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"wrong type \22string\22 for \22>=\22 operator\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"mismatching types for == operator\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"mismatching types for != operator\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"wrong type for range's lower bound\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"wrong type for range's upper bound\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"wrong type for enumeration item\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"$*\00", align 1
@.str.28 = private unnamed_addr constant [40 x i8] c"wrong type \22string\22 for \22int8\22 operator\00", align 1
@.str.30 = private unnamed_addr constant [41 x i8] c"wrong type \22string\22 for \22int16\22 operator\00", align 1
@.str.32 = private unnamed_addr constant [41 x i8] c"wrong type \22string\22 for \22int32\22 operator\00", align 1
@.str.34 = private unnamed_addr constant [41 x i8] c"wrong type \22string\22 for \22uint8\22 operator\00", align 1
@.str.36 = private unnamed_addr constant [42 x i8] c"wrong type \22string\22 for \22uint16\22 operator\00", align 1
@.str.38 = private unnamed_addr constant [42 x i8] c"wrong type \22string\22 for \22uint32\22 operator\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"yara_grammar.y\00", align 1
@__PRETTY_FUNCTION__.yara_yyparse = private unnamed_addr constant [40 x i8] c"int yara_yyparse(void *, YR_COMPILER *)\00", align 1
@.str.42 = private unnamed_addr constant [37 x i8] c"wrong type \22string\22 for \22+\22 operator\00", align 1
@.str.44 = private unnamed_addr constant [37 x i8] c"wrong type \22string\22 for \22-\22 operator\00", align 1
@.str.46 = private unnamed_addr constant [37 x i8] c"wrong type \22string\22 for \22*\22 operator\00", align 1
@.str.48 = private unnamed_addr constant [37 x i8] c"wrong type \22string\22 for \22\\\22 operator\00", align 1
@.str.50 = private unnamed_addr constant [37 x i8] c"wrong type \22string\22 for \22%\22 operator\00", align 1
@.str.52 = private unnamed_addr constant [37 x i8] c"wrong type \22string\22 for \22^\22 operator\00", align 1
@.str.54 = private unnamed_addr constant [37 x i8] c"wrong type \22string\22 for \22|\22 operator\00", align 1
@.str.56 = private unnamed_addr constant [37 x i8] c"wrong type \22string\22 for \22~\22 operator\00", align 1
@.str.58 = private unnamed_addr constant [38 x i8] c"wrong type \22string\22 for \22<<\22 operator\00", align 1
@.str.60 = private unnamed_addr constant [38 x i8] c"wrong type \22string\22 for \22>>\22 operator\00", align 1
@yyr1 = internal unnamed_addr constant [116 x i8] c"\00JKKKKKLMNNOOPQQRRSSTTUUVVVVWWXYXXZZ[[[[\\\\\\\\]]]^_```````ab`c``````````````ddeffhggiijjkkklllllllllllllllllllllllllll", align 16
@yypgoto = internal unnamed_addr constant [35 x i16] [i16 -66, i16 -66, i16 -66, i16 187, i16 -66, i16 -66, i16 -66, i16 -66, i16 -66, i16 -66, i16 -66, i16 -66, i16 165, i16 -66, i16 159, i16 -66, i16 77, i16 -66, i16 -66, i16 -66, i16 95, i16 -38, i16 -65, i16 -66, i16 -66, i16 -66, i16 -66, i16 19, i16 -66, i16 103, i16 -66, i16 -66, i16 10, i16 151, i16 -37], align 16
@yydefgoto = internal unnamed_addr constant [35 x i16] [i16 -1, i16 1, i16 5, i16 6, i16 23, i16 26, i16 32, i16 7, i16 14, i16 17, i16 19, i16 28, i16 29, i16 36, i16 37, i16 77, i16 120, i16 169, i16 69, i16 139, i16 70, i16 92, i16 72, i16 186, i16 209, i16 197, i16 195, i16 124, i16 201, i16 145, i16 184, i16 191, i16 192, i16 73, i16 74], align 16
@.str.61 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@yystos = internal unnamed_addr constant [216 x i8] c"\00K\00\01'LMQ?M\0F\03\04\05R\09BS\09T@\09\06NB\07O\09UVB\08PCV\0AWXBA\0E\0F()CX\09\0A\0B\0C\0E\0F\11\17\18\19\1A\1D\1F !\22#$()=>G\\^_`kl\0F\10Y\16\1BEGklGGGGGG_l_`lDEG*+\1C%&,-./0123456789:;<Z\11lGell\09\1CllllllHH\09l]`__\1EGg^llllllllllllllllll\12\13\14\15[ZlF\1BgHHHHHHFHIhDaB`\0A\0DijDGdecHIlflBGjHHIb_lGH_H", align 16
@.str.64 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@yytname = internal unnamed_addr constant [110 x ptr] [ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr null], align 16
@.str.67 = private unnamed_addr constant [28 x i8] c"syntax error, unexpected %s\00", align 1
@.str.68 = private unnamed_addr constant [42 x i8] c"syntax error, unexpected %s, expecting %s\00", align 1
@.str.69 = private unnamed_addr constant [48 x i8] c"syntax error, unexpected %s, expecting %s or %s\00", align 1
@.str.70 = private unnamed_addr constant [54 x i8] c"syntax error, unexpected %s, expecting %s or %s or %s\00", align 1
@.str.71 = private unnamed_addr constant [60 x i8] c"syntax error, unexpected %s, expecting %s or %s or %s or %s\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"$end\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"$undefined\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"_RULE_\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"_PRIVATE_\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"_GLOBAL_\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"_META_\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"_STRINGS_\00", align 1
@.str.80 = private unnamed_addr constant [12 x i8] c"_CONDITION_\00", align 1
@.str.81 = private unnamed_addr constant [13 x i8] c"_IDENTIFIER_\00", align 1
@.str.82 = private unnamed_addr constant [20 x i8] c"_STRING_IDENTIFIER_\00", align 1
@.str.83 = private unnamed_addr constant [15 x i8] c"_STRING_COUNT_\00", align 1
@.str.84 = private unnamed_addr constant [16 x i8] c"_STRING_OFFSET_\00", align 1
@.str.85 = private unnamed_addr constant [34 x i8] c"_STRING_IDENTIFIER_WITH_WILDCARD_\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"_NUMBER_\00", align 1
@.str.87 = private unnamed_addr constant [14 x i8] c"_TEXT_STRING_\00", align 1
@.str.88 = private unnamed_addr constant [13 x i8] c"_HEX_STRING_\00", align 1
@.str.89 = private unnamed_addr constant [9 x i8] c"_REGEXP_\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c"_ASCII_\00", align 1
@.str.91 = private unnamed_addr constant [7 x i8] c"_WIDE_\00", align 1
@.str.92 = private unnamed_addr constant [9 x i8] c"_NOCASE_\00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"_FULLWORD_\00", align 1
@.str.94 = private unnamed_addr constant [5 x i8] c"_AT_\00", align 1
@.str.95 = private unnamed_addr constant [11 x i8] c"_FILESIZE_\00", align 1
@.str.96 = private unnamed_addr constant [13 x i8] c"_ENTRYPOINT_\00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c"_ALL_\00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c"_ANY_\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"_IN_\00", align 1
@.str.100 = private unnamed_addr constant [5 x i8] c"_OF_\00", align 1
@.str.101 = private unnamed_addr constant [6 x i8] c"_FOR_\00", align 1
@.str.102 = private unnamed_addr constant [7 x i8] c"_THEM_\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c"_INT8_\00", align 1
@.str.104 = private unnamed_addr constant [8 x i8] c"_INT16_\00", align 1
@.str.105 = private unnamed_addr constant [8 x i8] c"_INT32_\00", align 1
@.str.106 = private unnamed_addr constant [8 x i8] c"_UINT8_\00", align 1
@.str.107 = private unnamed_addr constant [9 x i8] c"_UINT16_\00", align 1
@.str.108 = private unnamed_addr constant [9 x i8] c"_UINT32_\00", align 1
@.str.109 = private unnamed_addr constant [10 x i8] c"_MATCHES_\00", align 1
@.str.110 = private unnamed_addr constant [11 x i8] c"_CONTAINS_\00", align 1
@.str.111 = private unnamed_addr constant [9 x i8] c"_IMPORT_\00", align 1
@.str.112 = private unnamed_addr constant [7 x i8] c"_TRUE_\00", align 1
@.str.113 = private unnamed_addr constant [8 x i8] c"_FALSE_\00", align 1
@.str.114 = private unnamed_addr constant [5 x i8] c"_OR_\00", align 1
@.str.115 = private unnamed_addr constant [6 x i8] c"_AND_\00", align 1
@.str.116 = private unnamed_addr constant [4 x i8] c"'&'\00", align 1
@.str.117 = private unnamed_addr constant [4 x i8] c"'|'\00", align 1
@.str.118 = private unnamed_addr constant [4 x i8] c"'^'\00", align 1
@.str.119 = private unnamed_addr constant [5 x i8] c"_LT_\00", align 1
@.str.120 = private unnamed_addr constant [5 x i8] c"_LE_\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c"_GT_\00", align 1
@.str.122 = private unnamed_addr constant [5 x i8] c"_GE_\00", align 1
@.str.123 = private unnamed_addr constant [5 x i8] c"_EQ_\00", align 1
@.str.124 = private unnamed_addr constant [6 x i8] c"_NEQ_\00", align 1
@.str.125 = private unnamed_addr constant [5 x i8] c"_IS_\00", align 1
@.str.126 = private unnamed_addr constant [13 x i8] c"_SHIFT_LEFT_\00", align 1
@.str.127 = private unnamed_addr constant [14 x i8] c"_SHIFT_RIGHT_\00", align 1
@.str.128 = private unnamed_addr constant [4 x i8] c"'+'\00", align 1
@.str.129 = private unnamed_addr constant [4 x i8] c"'-'\00", align 1
@.str.130 = private unnamed_addr constant [4 x i8] c"'*'\00", align 1
@.str.131 = private unnamed_addr constant [5 x i8] c"'\\\\'\00", align 1
@.str.132 = private unnamed_addr constant [4 x i8] c"'%'\00", align 1
@.str.133 = private unnamed_addr constant [6 x i8] c"_NOT_\00", align 1
@.str.134 = private unnamed_addr constant [4 x i8] c"'~'\00", align 1
@.str.135 = private unnamed_addr constant [10 x i8] c"\22include\22\00", align 1
@.str.136 = private unnamed_addr constant [4 x i8] c"'{'\00", align 1
@.str.137 = private unnamed_addr constant [4 x i8] c"'}'\00", align 1
@.str.138 = private unnamed_addr constant [4 x i8] c"':'\00", align 1
@.str.139 = private unnamed_addr constant [4 x i8] c"'='\00", align 1
@.str.140 = private unnamed_addr constant [4 x i8] c"'.'\00", align 1
@.str.141 = private unnamed_addr constant [4 x i8] c"'['\00", align 1
@.str.142 = private unnamed_addr constant [4 x i8] c"']'\00", align 1
@.str.143 = private unnamed_addr constant [4 x i8] c"'('\00", align 1
@.str.144 = private unnamed_addr constant [4 x i8] c"')'\00", align 1
@.str.145 = private unnamed_addr constant [4 x i8] c"','\00", align 1
@.str.146 = private unnamed_addr constant [8 x i8] c"$accept\00", align 1
@.str.147 = private unnamed_addr constant [6 x i8] c"rules\00", align 1
@.str.148 = private unnamed_addr constant [7 x i8] c"import\00", align 1
@.str.149 = private unnamed_addr constant [5 x i8] c"rule\00", align 1
@.str.150 = private unnamed_addr constant [5 x i8] c"meta\00", align 1
@.str.151 = private unnamed_addr constant [8 x i8] c"strings\00", align 1
@.str.152 = private unnamed_addr constant [10 x i8] c"condition\00", align 1
@.str.153 = private unnamed_addr constant [15 x i8] c"rule_modifiers\00", align 1
@.str.154 = private unnamed_addr constant [14 x i8] c"rule_modifier\00", align 1
@.str.155 = private unnamed_addr constant [5 x i8] c"tags\00", align 1
@.str.156 = private unnamed_addr constant [9 x i8] c"tag_list\00", align 1
@.str.157 = private unnamed_addr constant [18 x i8] c"meta_declarations\00", align 1
@.str.158 = private unnamed_addr constant [17 x i8] c"meta_declaration\00", align 1
@.str.159 = private unnamed_addr constant [20 x i8] c"string_declarations\00", align 1
@.str.160 = private unnamed_addr constant [19 x i8] c"string_declaration\00", align 1
@.str.161 = private unnamed_addr constant [4 x i8] c"$@1\00", align 1
@.str.162 = private unnamed_addr constant [17 x i8] c"string_modifiers\00", align 1
@.str.163 = private unnamed_addr constant [16 x i8] c"string_modifier\00", align 1
@.str.164 = private unnamed_addr constant [11 x i8] c"identifier\00", align 1
@.str.165 = private unnamed_addr constant [15 x i8] c"arguments_list\00", align 1
@.str.166 = private unnamed_addr constant [7 x i8] c"regexp\00", align 1
@.str.167 = private unnamed_addr constant [19 x i8] c"boolean_expression\00", align 1
@.str.168 = private unnamed_addr constant [11 x i8] c"expression\00", align 1
@.str.169 = private unnamed_addr constant [4 x i8] c"$@2\00", align 1
@.str.170 = private unnamed_addr constant [4 x i8] c"$@3\00", align 1
@.str.171 = private unnamed_addr constant [4 x i8] c"$@4\00", align 1
@.str.172 = private unnamed_addr constant [12 x i8] c"integer_set\00", align 1
@.str.173 = private unnamed_addr constant [6 x i8] c"range\00", align 1
@.str.174 = private unnamed_addr constant [20 x i8] c"integer_enumeration\00", align 1
@.str.175 = private unnamed_addr constant [11 x i8] c"string_set\00", align 1
@.str.176 = private unnamed_addr constant [4 x i8] c"$@5\00", align 1
@.str.177 = private unnamed_addr constant [19 x i8] c"string_enumeration\00", align 1
@.str.178 = private unnamed_addr constant [24 x i8] c"string_enumeration_item\00", align 1
@.str.179 = private unnamed_addr constant [15 x i8] c"for_expression\00", align 1
@.str.180 = private unnamed_addr constant [19 x i8] c"primary_expression\00", align 1
@switch.table.yara_yyparse.3 = private unnamed_addr constant [4 x ptr] [ptr @.str.2, ptr @.str.1, ptr @.str.3, ptr @.str.4], align 8

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @yara_yyparse(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %union.YYSTYPE, align 8             ; 8 uses
  %i.a = alloca [200 x i8], align 16              ; 6 uses
  %3 = alloca [200 x %union.YYSTYPE], align 16    ; 4 uses
  %i.b = alloca [128 x i8], align 16              ; 6 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %4 = alloca %struct._yc_string, align 8         ; 6 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store i64 0, ptr %2, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i64 128, ptr %i.c, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 692 ; 54 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 109 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 3064 ; 16 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 408 ; 15 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 412 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.nw, %bb.nf, %bb.s
  %.01449 = phi ptr [ %.41453, %bb.nw ], [ %.11450, %bb.nf ], [ %.11450, %bb.s ]
  %.01239 = phi i32 [ %16, %bb.nw ], [ %i.abv, %bb.nf ], [ %i.bl, %bb.s ]
  %.01236 = phi i32 [ 3, %bb.nw ], [ %.11237, %bb.nf ], [ %spec.select, %bb.s ]
  %.01219 = phi ptr [ %.51224, %bb.nw ], [ %i.abc, %bb.nf ], [ %.31222, %bb.s ]
  %.01205 = phi ptr [ %i.ada, %bb.nw ], [ %i.abd, %bb.nf ], [ %i.bo, %bb.s ]
  %.01180 = phi i32 [ %.61186, %bb.nw ], [ %.51185, %bb.nf ], [ -2, %bb.s ]
  %i.v = getelementptr inbounds nuw i8, ptr %.01219, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.11450 = phi ptr [ %i.b, %bb.a ], [ %.01449, %bb.b ] ; 18 uses
  %.11240 = phi i32 [ 0, %bb.a ], [ %.01239, %bb.b ] ; 9 uses
  %.11237 = phi i32 [ 0, %bb.a ], [ %.01236, %bb.b ] ; 3 uses
  %.01229 = phi ptr [ %i.a, %bb.a ], [ %.31232, %bb.b ] ; 8 uses
  %.11220 = phi ptr [ %i.a, %bb.a ], [ %i.v, %bb.b ] ; 6 uses
  %.01215 = phi ptr [ %3, %bb.a ], [ %.31218, %bb.b ] ; 2 uses
  %.11206 = phi ptr [ %3, %bb.a ], [ %.01205, %bb.b ] ; 3 uses
  %.01202 = phi i64 [ 200, %bb.a ], [ %.21204, %bb.b ] ; 4 uses
  %.11181 = phi i32 [ -2, %bb.a ], [ %.01180, %bb.b ] ; 7 uses
  %i.w = trunc i32 %.11240 to i8
  store i8 %i.w, ptr %.11220, align 1, !tbaa !8
  %i.x = getelementptr inbounds i8, ptr %.01229, i64 %.01202
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -1
  %.not = icmp ugt ptr %i.y, %.11220
  br i1 %.not, label %.thread1469, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = ptrtoint ptr %.11220 to i64
  %i.aa = ptrtoint ptr %.01229 to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = add nsw i64 %i.ab, 1                    ; 3 uses
  %i.ad = icmp sgt i64 %.01202, 9999
  br i1 %i.ad, label %.thread1462, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = shl nsw i64 %.01202, 1
  %spec.store.select = call i64 @llvm.smin.i64(i64 %i.ae, i64 10000) ; 4 uses
  %i.af = mul nsw i64 %spec.store.select, 9
  %i.ag = add nsw i64 %i.af, 7
  %i.ah = call noalias ptr @malloc(i64 noundef %i.ag) #12 ; 6 uses
  %.not1317.not = icmp eq ptr %i.ah, null
  br i1 %.not1317.not, label %.thread1462, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 1 %.01229, i64 %i.ac, i1 false)
  %i.ai = add nsw i64 %spec.store.select, 7
  %i.aj = sdiv i64 %i.ai, 8
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.aj ; 3 uses
  %i.al = shl i64 %i.ac, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr align 8 %.01215, i64 %i.al, i1 false)
  %.not1318 = icmp eq ptr %.01229, %i.a
  br i1 %.not1318, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef %.01229) #11
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.am = getelementptr inbounds i8, ptr %i.ah, i64 %i.ab ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.ac
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -8 ; 2 uses
  %i.ap = add nsw i64 %spec.store.select, -1
  %.not1319 = icmp sgt i64 %i.ap, %i.ab
  br i1 %.not1319, label %.thread1469, label %.loopexit

.thread1469:                                      ; preds = %bb.h, %bb.c
  %.31232 = phi ptr [ %.01229, %bb.c ], [ %i.ah, %bb.h ] ; 8 uses
  %.31222 = phi ptr [ %.11220, %bb.c ], [ %i.am, %bb.h ] ; 15 uses
  %.31218 = phi ptr [ %.01215, %bb.c ], [ %i.ak, %bb.h ]
  %.31208 = phi ptr [ %.11206, %bb.c ], [ %i.ao, %bb.h ] ; 146 uses
  %.21204 = phi i64 [ %.01202, %bb.c ], [ %spec.store.select, %bb.h ]
  %i.aq = icmp eq i32 %.11240, 2
  br i1 %i.aq, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %.thread1469
  %i.ar = sext i32 %.11240 to i64                 ; 2 uses
  %i.as = getelementptr inbounds [2 x i8], ptr @yypact, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2, !tbaa !12 ; 2 uses
  %i.au = sext i16 %i.at to i32
  %i.av = icmp eq i16 %i.at, -66
  br i1 %i.av, label %bb.t, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = icmp eq i32 %.11181, -2
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ax = call i32 @yara_yylex(ptr noundef nonnull %2, ptr noundef %0, ptr noundef %1) #11
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.21182 = phi i32 [ %i.ax, %bb.k ], [ %.11181, %bb.j ] ; 5 uses
  %i.ay = icmp slt i32 %.21182, 1
  br i1 %i.ay, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = icmp samesign ult i32 %.21182, 310
  br i1 %i.az, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ba = zext nneg i32 %.21182 to i64
  %i.bb = getelementptr inbounds nuw i8, ptr @yytranslate, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !8
  %i.bd = sext i8 %i.bc to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.01199 = phi i32 [ 0, %bb.l ], [ %i.bd, %bb.n ], [ 2, %bb.m ] ; 2 uses
  %.31183 = phi i32 [ 0, %bb.l ], [ %.21182, %bb.n ], [ %.21182, %bb.m ] ; 3 uses
  %i.be = add nsw i32 %.01199, %i.au              ; 2 uses
  %or.cond3 = icmp ugt i32 %i.be, 433
  br i1 %or.cond3, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = zext nneg i32 %i.be to i64              ; 2 uses
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr @yycheck, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !12
  %i.bi = sext i16 %i.bh to i32
  %.not1320 = icmp eq i32 %.01199, %i.bi
  br i1 %.not1320, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr @yytable, i64 %i.bf
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !12 ; 2 uses
  %i.bl = sext i16 %i.bk to i32                   ; 2 uses
  %i.bm = icmp slt i16 %i.bk, 1
  br i1 %i.bm, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bn = sub nsw i32 0, %i.bl
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %spec.select = call i32 @llvm.usub.sat.i32(i32 %.11237, i32 1)
  %i.bo = getelementptr inbounds nuw i8, ptr %.31208, i64 8 ; 2 uses
  %i.bp = load i64, ptr %2, align 8, !tbaa !8
  store i64 %i.bp, ptr %i.bo, align 8, !tbaa !8
  br label %bb.b

bb.t:                                             ; preds = %bb.o, %bb.p, %bb.i
  %.41184 = phi i32 [ %.11181, %bb.i ], [ %.31183, %bb.o ], [ %.31183, %bb.p ] ; 12 uses
  %i.bq = getelementptr inbounds i8, ptr @yydefact, i64 %i.ar
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !8   ; 2 uses
  %i.bs = sext i8 %i.br to i32
  %i.bt = icmp eq i8 %i.br, 0
  br i1 %i.bt, label %bb.ng, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %.01201 = phi i32 [ %i.bs, %bb.t ], [ %i.bn, %bb.r ] ; 2 uses
  %.51185 = phi i32 [ %.41184, %bb.t ], [ %.31183, %bb.r ] ; 2 uses
  %i.bu = sext i32 %.01201 to i64                 ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr @yyr2, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !8
  %i.bx = sext i8 %i.bw to i64                    ; 3 uses
  %i.by = sub nsw i64 1, %i.bx
  %i.bz = getelementptr inbounds [8 x i8], ptr %.31208, i64 %i.by
  %.sroa.0.0.copyload = load ptr, ptr %i.bz, align 8, !tbaa !8 ; 69 uses
  switch i32 %.01201, label %.thread1476 [
    i32 7, label %bb.v
    i32 8, label %bb.x
    i32 9, label %bb.z
    i32 10, label %bb.aa
    i32 11, label %bb.ac
    i32 12, label %bb.ad
    i32 14, label %bb.z
    i32 15, label %bb.af
    i32 16, label %bb.ag
    i32 17, label %bb.ah
    i32 18, label %bb.z
    i32 19, label %bb.ai
    i32 20, label %bb.aj
    i32 21, label %bb.ak
    i32 22, label %bb.an
    i32 23, label %bb.ao
    i32 24, label %bb.ap
    i32 25, label %bb.ar
    i32 26, label %bb.at
    i32 27, label %bb.av
    i32 28, label %bb.ax
    i32 29, label %bb.ay
    i32 30, label %bb.az
    i32 31, label %bb.bb
    i32 32, label %bb.bc
    i32 33, label %bb.be
    i32 34, label %bb.z
    i32 35, label %bb.bg
    i32 36, label %bb.bh
    i32 37, label %bb.bi
    i32 38, label %bb.bj
    i32 39, label %bb.bk
    i32 40, label %bb.bl
    i32 41, label %bb.bv
    i32 42, label %bb.ca
    i32 43, label %bb.ce
    i32 44, label %bb.cm
    i32 45, label %bb.cn
    i32 46, label %bb.cq
    i32 47, label %bb.cv
    i32 48, label %bb.cw
    i32 49, label %bb.da
    i32 50, label %bb.dd
    i32 51, label %bb.dg
    i32 52, label %bb.dp
    i32 53, label %bb.dy
end_hunk_0
begin_hunk_1_@yara_yyparse:bb.a
  br label %.thread1503

bb.mf:                                            ; preds = %bb.mc
  %i.zx = load i8, ptr %.31208, align 8, !tbaa !8
  switch i8 %i.zx, label %bb.mh [
    i8 2, label %bb.mi
    i8 3, label %bb.mg
  ]

bb.mg:                                            ; preds = %bb.mf
  %i.zy = call i64 @cli_strlcpy(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.54, i64 noundef 256) #11 ; 0 uses
  br label %bb.mh

bb.mh:                                            ; preds = %bb.mf, %bb.mg
  store i32 24, ptr %i.h, align 8, !tbaa !27
  call void @yara_yyerror(ptr noundef %0, ptr noundef %1, ptr noundef null) #11
  br label %.thread1503

bb.mi:                                            ; preds = %bb.mf
  %i.zz = call i32 @yr_parser_emit(ptr noundef %0, i8 noundef signext 2, ptr noundef null) #11 ; 0 uses
  %i.aaa = ptrtoint ptr %.sroa.0.0.copyload to i64
  %.sroa.0.0.insert.mask261 = and i64 %i.aaa, -256
  %.sroa.0.0.insert.insert262 = or disjoint i64 %.sroa.0.0.insert.mask261, 2
  %i.aab = inttoptr i64 %.sroa.0.0.insert.insert262 to ptr
  br label %.thread1476

bb.mj:                                            ; preds = %bb.u
  %i.aac = load i8, ptr %.31208, align 8, !tbaa !8
  switch i8 %i.aac, label %bb.ml [
    i8 2, label %bb.mm
    i8 3, label %bb.mk
  ]

bb.mk:                                            ; preds = %bb.mj
  %i.aad = call i64 @cli_strlcpy(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.56, i64 noundef 256) #11 ; 0 uses
  br label %bb.ml

bb.ml:                                            ; preds = %bb.mj, %bb.mk
  store i32 24, ptr %i.h, align 8, !tbaa !27
  call void @yara_yyerror(ptr noundef %0, ptr noundef %1, ptr noundef null) #11
  br label %.thread1503

bb.mm:                                            ; preds = %bb.mj
  %i.aae = call i32 @yr_parser_emit(ptr noundef %0, i8 noundef signext 19, ptr noundef null) #11 ; 0 uses
  %i.aaf = ptrtoint ptr %.sroa.0.0.copyload to i64
  %.sroa.0.0.insert.mask264 = and i64 %i.aaf, -256
  %.sroa.0.0.insert.insert265 = or disjoint i64 %.sroa.0.0.insert.mask264, 2
  %i.aag = inttoptr i64 %.sroa.0.0.insert.insert265 to ptr
  br label %.thread1476

bb.mn:                                            ; preds = %bb.u
  %i.aah = getelementptr inbounds i8, ptr %.31208, i64 -16
  %i.aai = load i8, ptr %i.aah, align 8, !tbaa !8
  switch i8 %i.aai, label %bb.mp [
    i8 2, label %bb.mq
    i8 3, label %bb.mo
  ]

bb.mo:                                            ; preds = %bb.mn
  %i.aaj = call i64 @cli_strlcpy(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.58, i64 noundef 256) #11 ; 0 uses
  br label %bb.mp

bb.mp:                                            ; preds = %bb.mn, %bb.mo
  store i32 24, ptr %i.h, align 8, !tbaa !27
  call void @yara_yyerror(ptr noundef %0, ptr noundef %1, ptr noundef null) #11
  br label %.thread1503

bb.mq:                                            ; preds = %bb.mn
  %i.aak = load i8, ptr %.31208, align 8, !tbaa !8
  switch i8 %i.aak, label %bb.ms [
    i8 2, label %bb.mt
    i8 3, label %bb.mr
  ]

bb.mr:                                            ; preds = %bb.mq
  %i.aal = call i64 @cli_strlcpy(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.58, i64 noundef 256) #11 ; 0 uses
  br label %bb.ms

bb.ms:                                            ; preds = %bb.mq, %bb.mr
  store i32 24, ptr %i.h, align 8, !tbaa !27
  call void @yara_yyerror(ptr noundef %0, ptr noundef %1, ptr noundef null) #11
  br label %.thread1503

bb.mt:                                            ; preds = %bb.mq
  %i.aam = call i32 @yr_parser_emit(ptr noundef %0, i8 noundef signext 20, ptr noundef null) #11 ; 0 uses
  %i.aan = ptrtoint ptr %.sroa.0.0.copyload to i64
  %.sroa.0.0.insert.mask267 = and i64 %i.aan, -256
  %.sroa.0.0.insert.insert268 = or disjoint i64 %.sroa.0.0.insert.mask267, 2
  %i.aao = inttoptr i64 %.sroa.0.0.insert.insert268 to ptr
  br label %.thread1476

bb.mu:                                            ; preds = %bb.u
  %i.aap = getelementptr inbounds i8, ptr %.31208, i64 -16
  %i.aaq = load i8, ptr %i.aap, align 8, !tbaa !8
  switch i8 %i.aaq, label %bb.mw [
    i8 2, label %bb.mx
    i8 3, label %bb.mv
  ]

bb.mv:                                            ; preds = %bb.mu
  %i.aar = call i64 @cli_strlcpy(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.60, i64 noundef 256) #11 ; 0 uses
  br label %bb.mw

bb.mw:                                            ; preds = %bb.mu, %bb.mv
  store i32 24, ptr %i.h, align 8, !tbaa !27
  call void @yara_yyerror(ptr noundef %0, ptr noundef %1, ptr noundef null) #11
  br label %.thread1503

bb.mx:                                            ; preds = %bb.mu
  %i.aas = load i8, ptr %.31208, align 8, !tbaa !8
  switch i8 %i.aas, label %bb.mz [
    i8 2, label %bb.na
    i8 3, label %bb.my
  ]

bb.my:                                            ; preds = %bb.mx
  %i.aat = call i64 @cli_strlcpy(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.60, i64 noundef 256) #11 ; 0 uses
  br label %bb.mz

bb.mz:                                            ; preds = %bb.mx, %bb.my
  store i32 24, ptr %i.h, align 8, !tbaa !27
  call void @yara_yyerror(ptr noundef %0, ptr noundef %1, ptr noundef null) #11
  br label %.thread1503

bb.na:                                            ; preds = %bb.mx
  %i.aau = call i32 @yr_parser_emit(ptr noundef %0, i8 noundef signext 21, ptr noundef null) #11 ; 0 uses
  %i.aav = ptrtoint ptr %.sroa.0.0.copyload to i64
  %.sroa.0.0.insert.mask270 = and i64 %i.aav, -256
  %.sroa.0.0.insert.insert271 = or disjoint i64 %.sroa.0.0.insert.mask270, 2
  %i.aaw = inttoptr i64 %.sroa.0.0.insert.insert271 to ptr
  br label %.thread1476

bb.nb:                                            ; preds = %bb.u
  %i.aax = load i8, ptr %.31208, align 8, !tbaa !8
  %i.aay = ptrtoint ptr %.sroa.0.0.copyload to i64
  %.sroa.0.0.insert.ext273 = zext i8 %i.aax to i64
  %.sroa.0.0.insert.mask274 = and i64 %i.aay, -256
  %.sroa.0.0.insert.insert275 = or disjoint i64 %.sroa.0.0.insert.mask274, %.sroa.0.0.insert.ext273
  %i.aaz = inttoptr i64 %.sroa.0.0.insert.insert275 to ptr
  br label %.thread1476

.thread1476:                                      ; preds = %bb.ck, %bb.by, %bb.ap, %bb.x, %bb.v, %.thread1509, %.thread1505, %bb.ep, %.thread1497, %.thread1489, %.thread1480, %bb.u, %bb.kd, %bb.ht, %bb.hk, %bb.hh, %bb.he, %bb.co, %bb.cc, %bb.be, %bb.bc, %bb.az, %bb.av, %bb.at, %bb.ar, %bb.aa, %bb.nb, %bb.na, %bb.mt, %bb.mm, %bb.mi, %bb.mb, %bb.lu, %bb.ln, %bb.lg, %bb.kz, %bb.ks, %bb.kl, %bb.jx, %bb.js, %bb.jp, %bb.jk, %bb.jh, %bb.jb, %bb.iv, %bb.ip, %bb.ij, %bb.id, %bb.hx, %bb.hs, %bb.hr, %bb.hq, %bb.hp, %bb.ho, %bb.hn, %bb.hm, %bb.ha, %bb.gz, %bb.gy, %bb.gu, %bb.gq, %bb.gm, %bb.gf, %bb.fy, %bb.fr, %bb.fk, %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.ex, %bb.et, %bb.ei, %bb.ef, %bb.dx, %bb.do, %bb.df, %bb.dc, %bb.cz, %bb.cv, %bb.cu, %bb.cm, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bb, %bb.ay, %bb.ax, %bb.ao, %bb.an, %bb.am, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ac, %bb.z
  %.sroa.0.7 = phi ptr [ %.sroa.0.0.copyload, %bb.u ], [ %.sroa.0.0.copyload, %bb.ep ], [ %.sroa.0.0.copyload, %bb.v ], [ null, %bb.z ], [ %i.cq, %bb.aa ], [ null, %bb.ac ], [ %i.cu, %.thread1480 ], [ %i.aaz, %bb.nb ], [ %i.cz, %bb.af ], [ inttoptr (i64 1 to ptr), %bb.ag ], [ inttoptr (i64 2 to ptr), %bb.ah ], [ %i.aaw, %bb.na ], [ %i.da, %bb.ai ], [ %.sroa.0.0.copyload, %bb.aj ], [ %i.df, %bb.am ], [ %i.dg, %bb.an ], [ %i.di, %bb.ao ], [ %.sroa.0.0.copyload, %bb.x ], [ %i.dv, %bb.ar ], [ %i.ea, %bb.at ], [ %i.ef, %bb.av ], [ %i.ei, %bb.ax ], [ %i.ek, %bb.ay ], [ %i.er, %bb.az ], [ %.sroa.0.0.copyload, %bb.bb ], [ %i.fd, %bb.bc ], [ %i.fk, %bb.be ], [ %i.aao, %bb.mt ], [ %i.fs, %bb.bg ], [ inttoptr (i64 16 to ptr), %bb.bh ], [ inttoptr (i64 8 to ptr), %bb.bi ], [ inttoptr (i64 4 to ptr), %bb.bj ], [ inttoptr (i64 128 to ptr), %bb.bk ], [ %.sroa.0.1, %.thread1489 ], [ %i.dn, %bb.ap ], [ %i.hu, %bb.cc ], [ null, %bb.by ], [ %i.is, %bb.cm ], [ %i.it, %bb.co ], [ %i.jh, %bb.cu ], [ %i.jj, %bb.cv ], [ %i.jo, %bb.cz ], [ %i.jr, %bb.dc ], [ %i.ju, %bb.df ], [ %i.ke, %bb.do ], [ %i.km, %bb.dx ], [ %i.kr, %.thread1497 ], [ %i.lc, %bb.ef ], [ %i.ll, %bb.ei ], [ %i.zt, %bb.mb ], [ %.sroa.0.0.copyload, %bb.et ], [ %i.ok, %bb.ex ], [ %.sroa.0.0.copyload, %.thread1505 ], [ %i.py, %bb.fd ], [ %i.qb, %bb.fe ], [ %i.qe, %bb.ff ], [ %i.qh, %bb.fg ], [ %i.qn, %bb.fk ], [ %i.qv, %bb.fr ], [ %i.rd, %bb.fy ], [ %i.rl, %bb.gf ], [ %i.rt, %bb.gm ], [ %i.sb, %bb.gq ], [ %i.sj, %bb.gu ], [ %i.sr, %bb.gy ], [ %i.su, %bb.gz ], [ %i.sy, %bb.ha ], [ %i.aag, %bb.mm ], [ %i.aab, %bb.mi ], [ %.sroa.0.0.copyload, %bb.he ], [ %.sroa.0.0.copyload, %bb.hh ], [ %.sroa.0.0.copyload, %bb.hk ], [ %.sroa.0.0.copyload, %bb.hm ], [ %.sroa.0.0.copyload, %bb.hn ], [ %.sroa.0.0.copyload, %bb.ho ], [ %.sroa.0.0.copyload, %bb.hp ], [ %.sroa.0.0.copyload, %bb.hq ], [ %.sroa.0.0.copyload, %bb.hr ], [ %i.ug, %bb.hs ], [ %i.uj, %bb.ht ], [ %i.uo, %bb.hx ], [ %i.uu, %bb.id ], [ %i.va, %bb.ij ], [ %i.vg, %bb.ip ], [ %i.vm, %bb.iv ], [ %i.vs, %bb.jb ], [ %i.vy, %bb.jh ], [ %i.wc, %bb.jk ], [ %i.wi, %.thread1509 ], [ %i.wo, %bb.jp ], [ %i.wx, %bb.js ], [ %i.xh, %bb.jx ], [ %i.xp, %bb.kd ], [ %i.xx, %bb.kl ], [ %i.yf, %bb.ks ], [ %i.yn, %bb.kz ], [ %i.yv, %bb.lg ], [ %i.zd, %bb.ln ], [ %i.zl, %bb.lu ], [ %.sroa.0.3, %bb.ck ]
  %i.aba = sub nsw i64 0, %i.bx                   ; 2 uses
  %i.abb = getelementptr inbounds [8 x i8], ptr %.31208, i64 %i.aba
  %i.abc = getelementptr inbounds i8, ptr %.31222, i64 %i.aba ; 2 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abb, i64 8 ; 2 uses
  store ptr %.sroa.0.7, ptr %i.abd, align 8, !tbaa !8
  %i.abe = getelementptr inbounds i8, ptr @yyr1, i64 %i.bu
  %i.abf = load i8, ptr %i.abe, align 1, !tbaa !8
  %i.abg = sext i8 %i.abf to i64
  %i.abh = add nsw i64 %i.abg, -74                ; 2 uses
  %i.abi = getelementptr inbounds [2 x i8], ptr @yypgoto, i64 %i.abh
  %i.abj = load i16, ptr %i.abi, align 2, !tbaa !12
  %i.abk = sext i16 %i.abj to i32
  %i.abl = load i8, ptr %i.abc, align 1, !tbaa !8
  %i.abm = zext i8 %i.abl to i32                  ; 2 uses
  %i.abn = add nsw i32 %i.abm, %i.abk             ; 2 uses
  %or.cond9 = icmp ult i32 %i.abn, 434
  br i1 %or.cond9, label %bb.nc, label %bb.ne

bb.nc:                                            ; preds = %.thread1476
  %i.abo = zext nneg i32 %i.abn to i64            ; 2 uses
  %i.abp = getelementptr inbounds nuw [2 x i8], ptr @yycheck, i64 %i.abo
  %i.abq = load i16, ptr %i.abp, align 2, !tbaa !12
  %i.abr = sext i16 %i.abq to i32
  %i.abs = icmp eq i32 %i.abr, %i.abm
  br i1 %i.abs, label %bb.nd, label %bb.ne

bb.nd:                                            ; preds = %bb.nc
  %i.abt = getelementptr inbounds nuw [2 x i8], ptr @yytable, i64 %i.abo
  br label %bb.nf

bb.ne:                                            ; preds = %bb.nc, %.thread1476
  %i.abu = getelementptr inbounds [2 x i8], ptr @yydefgoto, i64 %i.abh
  br label %bb.nf

bb.nf:                                            ; preds = %bb.ne, %bb.nd
  %.in.in = phi ptr [ %i.abt, %bb.nd ], [ %i.abu, %bb.ne ]
  %.in = load i16, ptr %.in.in, align 2, !tbaa !12
  %i.abv = sext i16 %.in to i32
  br label %bb.b

bb.ng:                                            ; preds = %bb.t
  %i.abw = icmp eq i32 %.41184, -2
  br i1 %i.abw, label %bb.nj, label %bb.nh

bb.nh:                                            ; preds = %bb.ng
  %or.cond11 = icmp ult i32 %.41184, 310
  br i1 %or.cond11, label %bb.ni, label %bb.nj

bb.ni:                                            ; preds = %bb.nh
  %i.abx = zext nneg i32 %.41184 to i64
  %i.aby = getelementptr inbounds nuw i8, ptr @yytranslate, i64 %i.abx
  %i.abz = load i8, ptr %i.aby, align 1, !tbaa !8
  %i.aca = sext i8 %i.abz to i32
  br label %bb.nj

bb.nj:                                            ; preds = %bb.ni, %bb.nh, %bb.ng
  %i.acb = phi i32 [ -2, %bb.ng ], [ %i.aca, %bb.ni ], [ 2, %bb.nh ] ; 3 uses
  switch i32 %.11237, label %yydestruct.exit [
    i32 0, label %bb.nk
    i32 3, label %bb.nq
  ]

bb.nk:                                            ; preds = %bb.nj
  %i.acc = call fastcc i32 @yysyntax_error(ptr noundef %i.c, ptr %.11450, ptr noundef %.31222, i32 noundef %i.acb)
  switch i32 %i.acc, label %.thread1513 [
    i32 0, label %.thread1517
    i32 1, label %bb.nl
  ]

.thread1517:                                      ; preds = %bb.nk
  call void @yara_yyerror(ptr noundef %0, ptr noundef %1, ptr noundef %.11450) #11
  br label %yydestruct.exit

bb.nl:                                            ; preds = %bb.nk
  %.not1419 = icmp eq ptr %.11450, %i.b
  br i1 %.not1419, label %bb.nn, label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  call void @free(ptr noundef %.11450) #11
  br label %bb.nn

bb.nn:                                            ; preds = %bb.nm, %bb.nl
  %i.acd = load i64, ptr %i.c, align 8, !tbaa !10
  %i.ace = call noalias ptr @malloc(i64 noundef %i.acd) #12 ; 5 uses
  %.not1420 = icmp eq ptr %i.ace, null
  br i1 %.not1420, label %bb.no, label %bb.np

bb.no:                                            ; preds = %bb.nn
  store i64 128, ptr %i.c, align 8, !tbaa !10
  br label %.thread1513

.thread1513:                                      ; preds = %bb.nk, %bb.no
  %.21451.ph = phi ptr [ %i.b, %bb.no ], [ %.11450, %bb.nk ]
  call void @yara_yyerror(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.61) #11
  br label %.thread1462

bb.np:                                            ; preds = %bb.nn
  %i.acf = call fastcc i32 @yysyntax_error(ptr noundef %i.c, ptr nonnull %i.ace, ptr noundef %.31222, i32 noundef %i.acb)
  call void @yara_yyerror(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.ace) #11
  %i.acg = icmp eq i32 %i.acf, 2
  br i1 %i.acg, label %.thread1462, label %yydestruct.exit

bb.nq:                                            ; preds = %bb.nj
  %i.ach = icmp slt i32 %.41184, 1
  br i1 %i.ach, label %bb.nr, label %bb.ns

bb.nr:                                            ; preds = %bb.nq
  %i.aci = icmp eq i32 %.41184, 0
  br i1 %i.aci, label %.thread1544, label %yydestruct.exit

bb.ns:                                            ; preds = %bb.nq
  switch i32 %i.acb, label %yydestruct.exit [
    i32 9, label %.sink.split.i
    i32 10, label %.sink.split.i
    i32 11, label %.sink.split.i
    i32 12, label %.sink.split.i
    i32 13, label %.sink.split.i
    i32 15, label %.sink.split.i
    i32 16, label %.sink.split.i
    i32 17, label %.sink.split.i
  ]

.sink.split.i:                                    ; preds = %bb.ns, %bb.ns, %bb.ns, %bb.ns, %bb.ns, %bb.ns, %bb.ns, %bb.ns
  %i.acj = load ptr, ptr %2, align 8, !tbaa !8
  call void @free(ptr noundef %i.acj) #11
  br label %yydestruct.exit

.thread1503:                                      ; preds = %bb.eq, %bb.eo, %bb.el, %.thread1507, %bb.fc, %bb.dz, %bb.cl, %bb.bz, %bb.bu, %bb.aq, %bb.ae, %bb.y, %bb.w, %bb.mz, %bb.mw, %bb.ms, %bb.mp, %bb.ml, %bb.mh, %bb.me, %bb.ma, %bb.lx, %bb.lt, %bb.lq, %bb.lm, %bb.lj, %bb.lf, %bb.lc, %bb.ky, %bb.kv, %bb.kr, %bb.ko, %bb.kk, %bb.kh, %bb.ke, %bb.jw, %bb.jr, %bb.jo, %bb.jj, %bb.jg, %bb.je, %bb.ja, %bb.iy, %bb.iu, %bb.is, %bb.io, %bb.im, %bb.ii, %bb.ig, %bb.ic, %bb.ia, %bb.hw, %bb.hu, %bb.hl, %bb.hi, %bb.hf, %bb.gx, %bb.gt, %bb.gp, %bb.gl, %bb.gi, %bb.ge, %bb.gb, %bb.fx, %bb.fu, %bb.fq, %bb.fn, %bb.fj, %bb.eh, %bb.ee, %bb.ec, %bb.dw, %bb.du, %bb.dr, %.thread1495, %bb.dl, %bb.di, %bb.de, %bb.db, %bb.cy, %bb.ct, %bb.cp, %bb.cd, %bb.bf, %bb.bd, %bb.ba, %bb.aw, %bb.au, %bb.as, %bb.al, %bb.ab
  %i.ack = sub nsw i64 0, %i.bx                   ; 2 uses
  %i.acl = getelementptr inbounds [8 x i8], ptr %.31208, i64 %i.ack
  %i.acm = getelementptr inbounds i8, ptr %.31222, i64 %i.ack ; 2 uses
  %i.acn = load i8, ptr %i.acm, align 1, !tbaa !8
  %i.aco = zext i8 %i.acn to i32
  br label %yydestruct.exit

yydestruct.exit:                                  ; preds = %bb.nj, %bb.np, %.thread1517, %.sink.split.i, %bb.ns, %bb.nr, %.thread1503
  %.41453 = phi ptr [ %.11450, %bb.nr ], [ %.11450, %.sink.split.i ], [ %.11450, %bb.nj ], [ %.11450, %.thread1503 ], [ %.11450, %bb.ns ], [ %.11450, %.thread1517 ], [ %i.ace, %bb.np ] ; 2 uses
  %.21241 = phi i32 [ %.11240, %bb.nr ], [ %.11240, %.sink.split.i ], [ %.11240, %bb.nj ], [ %i.aco, %.thread1503 ], [ %.11240, %bb.ns ], [ %.11240, %.thread1517 ], [ %.11240, %bb.np ]
  %.41223 = phi ptr [ %.31222, %bb.nr ], [ %.31222, %.sink.split.i ], [ %.31222, %bb.nj ], [ %i.acm, %.thread1503 ], [ %.31222, %bb.ns ], [ %.31222, %.thread1517 ], [ %.31222, %bb.np ] ; 3 uses
  %.41209 = phi ptr [ %.31208, %bb.nr ], [ %.31208, %.sink.split.i ], [ %.31208, %bb.nj ], [ %i.acl, %.thread1503 ], [ %.31208, %bb.ns ], [ %.31208, %.thread1517 ], [ %.31208, %bb.np ]
  %.61186 = phi i32 [ %.41184, %bb.nr ], [ -2, %.sink.split.i ], [ %.41184, %bb.nj ], [ %.51185, %.thread1503 ], [ -2, %bb.ns ], [ %.41184, %.thread1517 ], [ %.41184, %bb.np ] ; 2 uses
  br label %bb.nt

bb.nt:                                            ; preds = %yydestruct.exit1441, %yydestruct.exit
  %.31242 = phi i32 [ %.21241, %yydestruct.exit ], [ %15, %yydestruct.exit1441 ]
  %.51224 = phi ptr [ %.41223, %yydestruct.exit ], [ %i.acy, %yydestruct.exit1441 ] ; 3 uses
  %.51210 = phi ptr [ %.41209, %yydestruct.exit ], [ %i.acx, %yydestruct.exit1441 ] ; 4 uses
  %i.acp = sext i32 %.31242 to i64                ; 2 uses
  %i.acq = getelementptr inbounds [2 x i8], ptr @yypact, i64 %i.acp
  %i.acr = load i16, ptr %i.acq, align 2, !tbaa !12 ; 2 uses
  %i.acs = icmp sgt i16 %i.acr, -2
  br i1 %i.acs, label %bb.nu, label %13

bb.nu:                                            ; preds = %bb.nt
  %5 = sext i16 %i.acr to i64
  %6 = add nsw i64 %5, 1                          ; 2 uses
  %7 = getelementptr inbounds nuw [2 x i8], ptr @yycheck, i64 %6
  %8 = load i16, ptr %7, align 2, !tbaa !12
  %i.act = icmp eq i16 %8, 1
  br i1 %i.act, label %9, label %13

9:                                                ; preds = %bb.nu
  %10 = getelementptr inbounds nuw [2 x i8], ptr @yytable, i64 %6
  %11 = load i16, ptr %10, align 2, !tbaa !12     ; 2 uses
  %12 = icmp sgt i16 %11, 0
  br i1 %12, label %bb.nw, label %13

13:                                               ; preds = %bb.nu, %9, %bb.nt
  %14 = icmp eq ptr %.51224, %.31232
  br i1 %14, label %.loopexit.loopexit, label %bb.nv

bb.nv:                                            ; preds = %13
  %i.acu = getelementptr inbounds i8, ptr @yystos, i64 %i.acp
  %i.acv = load i8, ptr %i.acu, align 1, !tbaa !8
  switch i8 %i.acv, label %yydestruct.exit1441 [
    i8 9, label %.sink.split.i1440
    i8 10, label %.sink.split.i1440
    i8 11, label %.sink.split.i1440
    i8 12, label %.sink.split.i1440
    i8 13, label %.sink.split.i1440
    i8 15, label %.sink.split.i1440
    i8 16, label %.sink.split.i1440
    i8 17, label %.sink.split.i1440
  ]

.sink.split.i1440:                                ; preds = %bb.nv, %bb.nv, %bb.nv, %bb.nv, %bb.nv, %bb.nv, %bb.nv, %bb.nv
  %i.acw = load ptr, ptr %.51210, align 8, !tbaa !8
  call void @free(ptr noundef %i.acw) #11
  br label %yydestruct.exit1441

yydestruct.exit1441:                              ; preds = %bb.nv, %.sink.split.i1440
  %i.acx = getelementptr inbounds i8, ptr %.51210, i64 -8
  %i.acy = getelementptr inbounds i8, ptr %.51224, i64 -1 ; 2 uses
  %i.acz = load i8, ptr %i.acy, align 1, !tbaa !8
  %15 = zext i8 %i.acz to i32
  br label %bb.nt

bb.nw:                                            ; preds = %9
  %16 = zext nneg i16 %11 to i32
  %i.ada = getelementptr inbounds nuw i8, ptr %.51210, i64 8 ; 2 uses
  %i.adb = load i64, ptr %2, align 8, !tbaa !8
  store i64 %i.adb, ptr %i.ada, align 8, !tbaa !8
  br label %bb.b

.thread1462:                                      ; preds = %bb.e, %bb.d, %bb.np, %.thread1513
  %.51454 = phi ptr [ %.21451.ph, %.thread1513 ], [ %.11450, %bb.e ], [ %.11450, %bb.d ], [ %i.ace, %bb.np ]
  %.51234 = phi ptr [ %.31232, %.thread1513 ], [ %.01229, %bb.e ], [ %.01229, %bb.d ], [ %.31232, %bb.np ]
  %.71226 = phi ptr [ %.31222, %.thread1513 ], [ %.11220, %bb.e ], [ %.11220, %bb.d ], [ %.31222, %bb.np ]
  %.71212 = phi ptr [ %.31208, %.thread1513 ], [ %.11206, %bb.e ], [ %.11206, %bb.d ], [ %.31208, %bb.np ]
  %.81188 = phi i32 [ %.41184, %.thread1513 ], [ %.11181, %bb.e ], [ %.11181, %bb.d ], [ %.41184, %bb.np ]
  call void @yara_yyerror(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.64) #11
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %13
  %.312321643.le = ptrtoaddr ptr %.31232 to i64
  %.412231644.le = ptrtoaddr ptr %.41223 to i64
  %i.adc = sub i64 %.312321643.le, %.412231644.le
  %scevgep.le = getelementptr i8, ptr %.41223, i64 %i.adc
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %.thread1469, %.loopexit.loopexit, %.thread1462
  %.61455 = phi ptr [ %.41453, %.loopexit.loopexit ], [ %.51454, %.thread1462 ], [ %.11450, %.thread1469 ], [ %.11450, %bb.h ] ; 2 uses
  %.61235 = phi ptr [ %.31232, %.loopexit.loopexit ], [ %.51234, %.thread1462 ], [ %i.ah, %bb.h ], [ %.31232, %.thread1469 ] ; 2 uses
  %.81227 = phi ptr [ %scevgep.le, %.loopexit.loopexit ], [ %.71226, %.thread1462 ], [ %i.am, %bb.h ], [ %.31222, %.thread1469 ] ; 2 uses
  %.81213 = phi ptr [ %.51210, %.loopexit.loopexit ], [ %.71212, %.thread1462 ], [ %i.ao, %bb.h ], [ %.31208, %.thread1469 ] ; 2 uses
  %.01200 = phi i32 [ 1, %.loopexit.loopexit ], [ 2, %.thread1462 ], [ 1, %bb.h ], [ 0, %.thread1469 ] ; 2 uses
  %.91189 = phi i32 [ %.61186, %.loopexit.loopexit ], [ %.81188, %.thread1462 ], [ %.11181, %.thread1469 ], [ %.11181, %bb.h ] ; 2 uses
  %or.cond15 = icmp ult i32 %.91189, 310
  br i1 %or.cond15, label %.thread1544, label %yydestruct.exit1443

.thread1544:                                      ; preds = %bb.nr, %.loopexit
  %.6145515331562 = phi ptr [ %.61455, %.loopexit ], [ %.11450, %bb.nr ] ; 2 uses
  %.6123515351560 = phi ptr [ %.61235, %.loopexit ], [ %.31232, %bb.nr ] ; 2 uses
  %.8122715371558 = phi ptr [ %.81227, %.loopexit ], [ %.31222, %bb.nr ] ; 2 uses
  %.8121315391556 = phi ptr [ %.81213, %.loopexit ], [ %.31208, %bb.nr ] ; 2 uses
  %.0120015411554 = phi i32 [ %.01200, %.loopexit ], [ 1, %bb.nr ] ; 2 uses
  %.9118915431552 = phi i32 [ %.91189, %.loopexit ], [ 0, %bb.nr ]
  %i.add = zext nneg i32 %.9118915431552 to i64
  %i.ade = getelementptr inbounds nuw i8, ptr @yytranslate, i64 %i.add
  %i.adf = load i8, ptr %i.ade, align 1, !tbaa !8
  switch i8 %i.adf, label %yydestruct.exit1443 [
    i8 9, label %.sink.split.i1442
    i8 10, label %.sink.split.i1442
    i8 11, label %.sink.split.i1442
    i8 12, label %.sink.split.i1442
    i8 13, label %.sink.split.i1442
    i8 15, label %.sink.split.i1442
    i8 16, label %.sink.split.i1442
    i8 17, label %.sink.split.i1442
  ]

.sink.split.i1442:                                ; preds = %.thread1544, %.thread1544, %.thread1544, %.thread1544, %.thread1544, %.thread1544, %.thread1544, %.thread1544
  %i.adg = load ptr, ptr %2, align 8, !tbaa !8
  call void @free(ptr noundef %i.adg) #11
  br label %yydestruct.exit1443

yydestruct.exit1443:                              ; preds = %.sink.split.i1442, %.thread1544, %.loopexit
  %.012001542 = phi i32 [ %.01200, %.loopexit ], [ %.0120015411554, %.sink.split.i1442 ], [ %.0120015411554, %.thread1544 ]
  %.812131540 = phi ptr [ %.81213, %.loopexit ], [ %.8121315391556, %.sink.split.i1442 ], [ %.8121315391556, %.thread1544 ]
  %.812271538 = phi ptr [ %.81227, %.loopexit ], [ %.8122715371558, %.sink.split.i1442 ], [ %.8122715371558, %.thread1544 ] ; 2 uses
  %.612351536 = phi ptr [ %.61235, %.loopexit ], [ %.6123515351560, %.sink.split.i1442 ], [ %.6123515351560, %.thread1544 ] ; 4 uses
  %.614551534 = phi ptr [ %.61455, %.loopexit ], [ %.6145515331562, %.sink.split.i1442 ], [ %.6145515331562, %.thread1544 ] ; 2 uses
  %.not14221607 = icmp eq ptr %.812271538, %.612351536
  br i1 %.not14221607, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %yydestruct.exit1443, %yydestruct.exit1445
  %.912141609 = phi ptr [ %i.adm, %yydestruct.exit1445 ], [ %.812131540, %yydestruct.exit1443 ] ; 2 uses
  %.912281608 = phi ptr [ %i.adn, %yydestruct.exit1445 ], [ %.812271538, %yydestruct.exit1443 ] ; 2 uses
  %i.adh = load i8, ptr %.912281608, align 1, !tbaa !8
  %i.adi = zext i8 %i.adh to i64
  %i.adj = getelementptr inbounds nuw i8, ptr @yystos, i64 %i.adi
  %i.adk = load i8, ptr %i.adj, align 1, !tbaa !8
  switch i8 %i.adk, label %yydestruct.exit1445 [
    i8 9, label %.sink.split.i1444
    i8 10, label %.sink.split.i1444
    i8 11, label %.sink.split.i1444
    i8 12, label %.sink.split.i1444
    i8 13, label %.sink.split.i1444
    i8 15, label %.sink.split.i1444
    i8 16, label %.sink.split.i1444
    i8 17, label %.sink.split.i1444
  ]

.sink.split.i1444:                                ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.adl = load ptr, ptr %.912141609, align 8, !tbaa !8
  call void @free(ptr noundef %i.adl) #11
  br label %yydestruct.exit1445

yydestruct.exit1445:                              ; preds = %.lr.ph, %.sink.split.i1444
  %i.adm = getelementptr inbounds i8, ptr %.912141609, i64 -8
  %i.adn = getelementptr inbounds i8, ptr %.912281608, i64 -1 ; 2 uses
  %.not1422 = icmp eq ptr %i.adn, %.612351536
  br i1 %.not1422, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %yydestruct.exit1445, %yydestruct.exit1443
  %.not1423 = icmp eq ptr %.612351536, %i.a
  br i1 %.not1423, label %bb.ny, label %bb.nx

bb.nx:                                            ; preds = %._crit_edge
  call void @free(ptr noundef %.612351536) #11
  br label %bb.ny

bb.ny:                                            ; preds = %bb.nx, %._crit_edge
  %.not1424 = icmp eq ptr %.614551534, %i.b
  br i1 %.not1424, label %bb.oa, label %bb.nz

bb.nz:                                            ; preds = %bb.ny
  call void @free(ptr noundef %.614551534) #11
  br label %bb.oa

bb.oa:                                            ; preds = %bb.ny, %bb.nz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret i32 %.012001542
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

declare i32 @yara_yylex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @yr_parser_reduce_import(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @yara_yyerror(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @yr_parser_reduce_rule_declaration(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare i32 @yr_arena_write_data(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare ptr @yr_parser_reduce_meta_declaration(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @yr_parser_reduce_string_declaration(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @yara_yyget_lineno(ptr noundef) local_unnamed_addr #4

declare i32 @yr_parser_lookup_loop_variable(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @yr_parser_emit_with_arg(ptr noundef, i8 noundef signext, i64 noundef, ptr noundef) local_unnamed_addr #4

declare ptr @yr_hash_table_lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @yr_arena_write_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @yr_parser_emit_with_arg_reloc(ptr noundef, i8 noundef signext, i64 noundef, ptr noundef) local_unnamed_addr #4

declare i64 @cli_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @yr_parser_emit(ptr noundef, i8 noundef signext, ptr noundef) local_unnamed_addr #4

declare i32 @yr_parser_check_types(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

declare ptr @cli_safer_strdup(ptr noundef) local_unnamed_addr #4

declare ptr @cli_max_malloc(i64 noundef) local_unnamed_addr #4

declare i64 @cli_strlcat(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @yr_parser_reduce_string_identifier(ptr noundef, ptr noundef, i8 noundef signext) local_unnamed_addr #4

declare i32 @yr_parser_emit_pushes_for_strings(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 3) i32 @yysyntax_error(ptr nofree noundef nonnull captures(none) %0, ptr %.0.val, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef range(i32 -128, 128) %2) unnamed_addr #8 {
bb.a:
  %i.a = alloca [5 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %.not = icmp eq i32 %2, -2
  br i1 %.not, label %.thread10, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !8
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw [2 x i8], ptr @yypact, i64 %i.c
  %i.e = load i16, ptr %i.d, align 2, !tbaa !12   ; 4 uses
  %i.f = sext i16 %i.e to i32                     ; 2 uses
  %i.g = sext i32 %2 to i64
  %i.h = getelementptr inbounds [8 x i8], ptr @yytname, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15   ; 4 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !8
  %i.k = icmp eq i8 %i.j, 34
  br i1 %i.k, label %.preheader.split.us.i, label %.thread.i

.preheader.split.us.i:                            ; preds = %bb.b, %bb.d
  %.020.us.i = phi i64 [ %i.p, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %.019.us.i = phi ptr [ %.1.us.i, %bb.d ], [ %i.i, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.019.us.i, i64 1 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !8
  switch i8 %i.m, label %bb.d [
    i8 39, label %.thread.i
    i8 44, label %.thread.i
    i8 92, label %bb.c
    i8 34, label %yytnamerr.exit
  ]

bb.c:                                             ; preds = %.preheader.split.us.i
  %i.n = getelementptr inbounds nuw i8, ptr %.019.us.i, i64 2 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !8
  %.not25.us.i = icmp eq i8 %i.o, 92
  br i1 %.not25.us.i, label %bb.d, label %.thread.i

bb.d:                                             ; preds = %bb.c, %.preheader.split.us.i
end_hunk_1
