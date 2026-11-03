Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_time-20ff54dc47e9578d.polars_time.1e16ca0b22b7c575-cgu.15?download=true
inline.NumInlined: 3216
inline.NumDeleted: 1711
begin_hunk_0
@_RNvNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string5infer15DATETIME_YMD_RE = external hidden global { { { [4 x i64] } }, { { { { { i32 } } } } }, [1 x i32] }
@40 = private unnamed_addr constant [5 x i8] c"month", align 1
@41 = private unnamed_addr constant [52 x i8] c"crates/polars-time/src/chunkedarray/string/infer.rs\00", align 1
@42 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @41, [16 x i8] c"3\00\00\00\00\00\00\00r\00\00\00\1A\00\00\00" }>, align 8
@43 = private unnamed_addr constant [102 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/regex-1.12.3/src/regex/string.rs\00", align 1
@44 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @43, [16 x i8] c"e\00\00\00\00\00\00\00\17\06\00\00\17\00\00\00" }>, align 8
@45 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @41, [16 x i8] c"3\00\00\00\00\00\00\00u\00\00\00\1A\00\00\00" }>, align 8
@_RNvNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string5infer15DATETIME_DMY_RE = external hidden global { { { [4 x i64] } }, { { { { { i32 } } } } }, [1 x i32] }
@46 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @41, [16 x i8] c"3\00\00\00\00\00\00\00g\00\00\00\1A\00\00\00" }>, align 8
@47 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @41, [16 x i8] c"3\00\00\00\00\00\00\00j\00\00\00\1A\00\00\00" }>, align 8
@_RNvNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string5infer16DATETIME_YMDZ_RE = external hidden global { { { [4 x i64] } }, { { { { { i32 } } } } }, [1 x i32] }
@48 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @41, [16 x i8] c"3\00\00\00\00\00\00\00}\00\00\00\1A\00\00\00" }>, align 8
@49 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @41, [16 x i8] c"3\00\00\00\00\00\00\00\80\00\00\00\1A\00\00\00" }>, align 8
@50 = private unnamed_addr constant [47 x i8] c"assertion failed: vec.capacity() - start >= len", align 1
@51 = private unnamed_addr constant [111 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rayon-1.12.0/src/iter/collect/consumer.rs\00", align 1
@52 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @51, [16 x i8] c"n\00\00\00\00\00\00\00\11\00\00\00\09\00\00\00" }>, align 8
@53 = private unnamed_addr constant ptr @_RNvYNCNKNvNtNtNtCsfHnWouPsIOz_14regex_automata4util4pool5inner9THREAD_ID0s_0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1j_6option6OptionQIB1Y_jEEEE9call_onceCs2Aa799EbAFJ_11polars_time, align 8
@54 = private unnamed_addr constant [108 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/regex-automata-0.4.14/src/util/pool.rs\00", align 1
@55 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @54, [16 x i8] c"k\00\00\00\00\00\00\00=\02\00\00\1C\00\00\00" }>, align 8
@56 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @54, [16 x i8] c"k\00\00\00\00\00\00\00^\02\00\00\1C\00\00\00" }>, align 8
@57 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @54, [16 x i8] c"k\00\00\00\00\00\00\00k\02\00\002\00\00\00" }>, align 8
@_RNvNtNtNtCsfHnWouPsIOz_14regex_automata4util4pool5inner17THREAD_ID_DROPPED = external global i64
@58 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @54, [16 x i8] c"k\00\00\00\00\00\00\00\01\03\00\00\15\00\00\00" }>, align 8
@59 = private unnamed_addr constant [8 x i8] c"%d-%m-%Y", align 1
@60 = private unnamed_addr constant [8 x i8] c"%d/%m/%Y", align 1
@61 = private unnamed_addr constant [8 x i8] c"%d.%m.%Y", align 1
@62 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @59, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @60, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @61, [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
@_RNvNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string8patterns10DATE_D_M_Y = local_unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @62, [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@63 = private unnamed_addr constant [8 x i8] c"%Y-%m-%d", align 1
@64 = private unnamed_addr constant [8 x i8] c"%Y/%m/%d", align 1
@65 = private unnamed_addr constant [8 x i8] c"%Y.%m.%d", align 1
@66 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @63, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @64, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @65, [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
@_RNvNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string8patterns10DATE_Y_M_D = local_unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @66, [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@67 = private unnamed_addr constant [5 x i8] c"%T%.f", align 1
@68 = private unnamed_addr constant [2 x i8] c"%R", align 1
@69 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @67, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @68, [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@_RNvNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string8patterns10TIME_H_M_S = hidden local_unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @69, [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@70 = private unnamed_addr constant [20 x i8] c"%d-%m-%YT%H:%M:%S%.f", align 1
@71 = private unnamed_addr constant [18 x i8] c"%d-%m-%YT%H%M%S%.f", align 1
@72 = private unnamed_addr constant [14 x i8] c"%d-%m-%YT%H:%M", align 1
@73 = private unnamed_addr constant [13 x i8] c"%d-%m-%YT%H%M", align 1
@74 = private unnamed_addr constant [20 x i8] c"%d-%m-%Y %H:%M:%S%.f", align 1
@75 = private unnamed_addr constant [18 x i8] c"%d-%m-%Y %H%M%S%.f", align 1
@76 = private unnamed_addr constant [14 x i8] c"%d-%m-%Y %H:%M", align 1
@77 = private unnamed_addr constant [13 x i8] c"%d-%m-%Y %H%M", align 1
@78 = private unnamed_addr constant [20 x i8] c"%d/%m/%YT%H:%M:%S%.f", align 1
@79 = private unnamed_addr constant [18 x i8] c"%d/%m/%YT%H%M%S%.f", align 1
@80 = private unnamed_addr constant [14 x i8] c"%d/%m/%YT%H:%M", align 1
@81 = private unnamed_addr constant [13 x i8] c"%d/%m/%YT%H%M", align 1
@82 = private unnamed_addr constant [20 x i8] c"%d/%m/%Y %H:%M:%S%.f", align 1
@83 = private unnamed_addr constant [18 x i8] c"%d/%m/%Y %H%M%S%.f", align 1
@84 = private unnamed_addr constant [14 x i8] c"%d/%m/%Y %H:%M", align 1
@85 = private unnamed_addr constant [13 x i8] c"%d/%m/%Y %H%M", align 1
@86 = private unnamed_addr constant [20 x i8] c"%d.%m.%YT%H:%M:%S%.f", align 1
@87 = private unnamed_addr constant [18 x i8] c"%d.%m.%YT%H%M%S%.f", align 1
@88 = private unnamed_addr constant [14 x i8] c"%d.%m.%YT%H:%M", align 1
@89 = private unnamed_addr constant [13 x i8] c"%d.%m.%YT%H%M", align 1
@90 = private unnamed_addr constant [20 x i8] c"%d.%m.%Y %H:%M:%S%.f", align 1
@91 = private unnamed_addr constant [18 x i8] c"%d.%m.%Y %H%M%S%.f", align 1
@92 = private unnamed_addr constant [14 x i8] c"%d.%m.%Y %H:%M", align 1
@93 = private unnamed_addr constant [13 x i8] c"%d.%m.%Y %H%M", align 1
@94 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @70, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @71, [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @72, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @73, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @74, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @75, [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @76, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @77, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @59, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @78, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @79, [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @80, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @81, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @82, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @83, [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @84, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @85, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @60, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @86, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @87, [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @88, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @89, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @90, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @91, [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @92, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @93, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @61, [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
@_RNvNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string8patterns14DATETIME_D_M_Y = hidden local_unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @94, [8 x i8] c"\1B\00\00\00\00\00\00\00" }>, align 8
@95 = private unnamed_addr constant [20 x i8] c"%Y-%m-%dT%H:%M:%S%.f", align 1
@96 = private unnamed_addr constant [18 x i8] c"%Y-%m-%dT%H%M%S%.f", align 1
@97 = private unnamed_addr constant [14 x i8] c"%Y-%m-%dT%H:%M", align 1
@98 = private unnamed_addr constant [13 x i8] c"%Y-%m-%dT%H%M", align 1
@99 = private unnamed_addr constant [20 x i8] c"%Y-%m-%d %H:%M:%S%.f", align 1
@100 = private unnamed_addr constant [18 x i8] c"%Y-%m-%d %H%M%S%.f", align 1
@101 = private unnamed_addr constant [14 x i8] c"%Y-%m-%d %H:%M", align 1
@102 = private unnamed_addr constant [13 x i8] c"%Y-%m-%d %H%M", align 1
@103 = private unnamed_addr constant [20 x i8] c"%Y/%m/%dT%H:%M:%S%.f", align 1
@104 = private unnamed_addr constant [18 x i8] c"%Y/%m/%dT%H%M%S%.f", align 1
@105 = private unnamed_addr constant [14 x i8] c"%Y/%m/%dT%H:%M", align 1
@106 = private unnamed_addr constant [13 x i8] c"%Y/%m/%dT%H%M", align 1
@107 = private unnamed_addr constant [20 x i8] c"%Y/%m/%d %H:%M:%S%.f", align 1
@108 = private unnamed_addr constant [18 x i8] c"%Y/%m/%d %H%M%S%.f", align 1
@109 = private unnamed_addr constant [14 x i8] c"%Y/%m/%d %H:%M", align 1
@110 = private unnamed_addr constant [13 x i8] c"%Y/%m/%d %H%M", align 1
@111 = private unnamed_addr constant [20 x i8] c"%Y.%m.%dT%H:%M:%S%.f", align 1
@112 = private unnamed_addr constant [18 x i8] c"%Y.%m.%dT%H%M%S%.f", align 1
@113 = private unnamed_addr constant [14 x i8] c"%Y.%m.%dT%H:%M", align 1
@114 = private unnamed_addr constant [13 x i8] c"%Y.%m.%dT%H%M", align 1
@115 = private unnamed_addr constant [20 x i8] c"%Y.%m.%d %H:%M:%S%.f", align 1
@116 = private unnamed_addr constant [18 x i8] c"%Y.%m.%d %H%M%S%.f", align 1
@117 = private unnamed_addr constant [14 x i8] c"%Y.%m.%d %H:%M", align 1
@118 = private unnamed_addr constant [13 x i8] c"%Y.%m.%d %H%M", align 1
@119 = private unnamed_addr constant [16 x i8] c"%Y%m%dT%H%M%S%.f", align 1
@120 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @95, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @96, [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @97, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @98, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @99, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @100, [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @101, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @102, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @63, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @103, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @104, [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @105, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @106, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @107, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @108, [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @109, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @110, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @64, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @111, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @112, [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @113, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @114, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @115, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @116, [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @117, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @118, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @65, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @119, [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @95, [8 x i8] c"\14\00\00\00\00\00\00\00" }>, align 8
@_RNvNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string8patterns14DATETIME_Y_M_D = hidden local_unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @120, [8 x i8] c"\1D\00\00\00\00\00\00\00" }>, align 8
@121 = private unnamed_addr constant [23 x i8] c"%Y-%m-%dT%H:%M:%S%.f%#z", align 1
@122 = private unnamed_addr constant [21 x i8] c"%Y-%m-%dT%H%M%S%.f%#z", align 1
@123 = private unnamed_addr constant [17 x i8] c"%Y-%m-%dT%H:%M%#z", align 1
@124 = private unnamed_addr constant [16 x i8] c"%Y-%m-%dT%H%M%#z", align 1
@125 = private unnamed_addr constant [23 x i8] c"%Y-%m-%d %H:%M:%S%.f%#z", align 1
@126 = private unnamed_addr constant [21 x i8] c"%Y-%m-%d %H%M%S%.f%#z", align 1
@127 = private unnamed_addr constant [17 x i8] c"%Y-%m-%d %H:%M%#z", align 1
@128 = private unnamed_addr constant [16 x i8] c"%Y-%m-%d %H%M%#z", align 1
@129 = private unnamed_addr constant [23 x i8] c"%Y/%m/%dT%H:%M:%S%.f%#z", align 1
@130 = private unnamed_addr constant [21 x i8] c"%Y/%m/%dT%H%M%S%.f%#z", align 1
@131 = private unnamed_addr constant [17 x i8] c"%Y/%m/%dT%H:%M%#z", align 1
@132 = private unnamed_addr constant [16 x i8] c"%Y/%m/%dT%H%M%#z", align 1
@133 = private unnamed_addr constant [23 x i8] c"%Y/%m/%d %H:%M:%S%.f%#z", align 1
@134 = private unnamed_addr constant [21 x i8] c"%Y/%m/%d %H%M%S%.f%#z", align 1
@135 = private unnamed_addr constant [17 x i8] c"%Y/%m/%d %H:%M%#z", align 1
@136 = private unnamed_addr constant [16 x i8] c"%Y/%m/%d %H%M%#z", align 1
@137 = private unnamed_addr constant [23 x i8] c"%Y.%m.%dT%H:%M:%S%.f%#z", align 1
@138 = private unnamed_addr constant [21 x i8] c"%Y.%m.%dT%H%M%S%.f%#z", align 1
@139 = private unnamed_addr constant [17 x i8] c"%Y.%m.%dT%H:%M%#z", align 1
@140 = private unnamed_addr constant [16 x i8] c"%Y.%m.%dT%H%M%#z", align 1
@141 = private unnamed_addr constant [23 x i8] c"%Y.%m.%d %H:%M:%S%.f%#z", align 1
@142 = private unnamed_addr constant [21 x i8] c"%Y.%m.%d %H%M%S%.f%#z", align 1
@143 = private unnamed_addr constant [17 x i8] c"%Y.%m.%d %H:%M%#z", align 1
@144 = private unnamed_addr constant [16 x i8] c"%Y.%m.%d %H%M%#z", align 1
@145 = private unnamed_addr constant [19 x i8] c"%Y%m%dT%H%M%S%.f%#z", align 1
@146 = private unnamed_addr constant [17 x i8] c"%Y%m%dT%H%M%S%.fZ", align 1
@147 = private unnamed_addr constant [2 x i8] c"%+", align 1
@148 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @121, [8 x i8] c"\17\00\00\00\00\00\00\00", ptr @122, [8 x i8] c"\15\00\00\00\00\00\00\00", ptr @123, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @124, [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @125, [8 x i8] c"\17\00\00\00\00\00\00\00", ptr @126, [8 x i8] c"\15\00\00\00\00\00\00\00", ptr @127, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @128, [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @129, [8 x i8] c"\17\00\00\00\00\00\00\00", ptr @130, [8 x i8] c"\15\00\00\00\00\00\00\00", ptr @131, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @132, [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @133, [8 x i8] c"\17\00\00\00\00\00\00\00", ptr @134, [8 x i8] c"\15\00\00\00\00\00\00\00", ptr @135, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @136, [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @137, [8 x i8] c"\17\00\00\00\00\00\00\00", ptr @138, [8 x i8] c"\15\00\00\00\00\00\00\00", ptr @139, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @140, [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @141, [8 x i8] c"\17\00\00\00\00\00\00\00", ptr @142, [8 x i8] c"\15\00\00\00\00\00\00\00", ptr @143, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @144, [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @145, [8 x i8] c"\13\00\00\00\00\00\00\00", ptr @146, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @147, [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@_RNvNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string8patterns16DATETIME_Y_M_D_Z = hidden local_unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @148, [8 x i8] c"\1B\00\00\00\00\00\00\00" }>, align 8
@149 = private unnamed_addr constant [7 x i8] c"January", align 1
@150 = private unnamed_addr constant [8 x i8] c"February", align 1
@151 = private unnamed_addr constant [5 x i8] c"March", align 1
@152 = private unnamed_addr constant [5 x i8] c"April", align 1
@153 = private unnamed_addr constant [3 x i8] c"May", align 1
@154 = private unnamed_addr constant [4 x i8] c"June", align 1
@155 = private unnamed_addr constant [4 x i8] c"July", align 1
@156 = private unnamed_addr constant [6 x i8] c"August", align 1
@157 = private unnamed_addr constant [9 x i8] c"September", align 1
@158 = private unnamed_addr constant [7 x i8] c"October", align 1
@159 = private unnamed_addr constant [8 x i8] c"November", align 1
@160 = private unnamed_addr constant [8 x i8] c"December", align 1
@161 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @149, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @150, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @151, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @152, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @153, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @154, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @155, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @156, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @157, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @158, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @159, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @160, [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
@162 = private unnamed_addr constant [71 x i8] c"Invalid format string: Found seconds directive, but no hours directive.", align 1
@163 = private unnamed_addr constant <{ [16 x i8], ptr, [8 x i8], [40 x i8] }> <{ [16 x i8] c"\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80", ptr @162, [8 x i8] c"G\00\00\00\00\00\00\00", [40 x i8] undef }>, align 8
@164 = private unnamed_addr constant [2 x i8] c"%D", align 1
@165 = private unnamed_addr constant [8 x i8] c"%m/%d/%y", align 1
@166 = private unnamed_addr constant [5 x i8] c"%H:%M", align 1
@167 = private unnamed_addr constant [2 x i8] c"%T", align 1
@168 = private unnamed_addr constant [8 x i8] c"%H:%M:%S", align 1
@169 = private unnamed_addr constant [2 x i8] c"%X", align 1
@170 = private unnamed_addr constant [2 x i8] c"%F", align 1
@171 = private unnamed_addr constant [103 x i8] c"Invalid format string: Please either specify both 12-hour directive and meridiem directive, or neither.", align 1
@172 = private unnamed_addr constant <{ [16 x i8], ptr, [8 x i8], [40 x i8] }> <{ [16 x i8] c"\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80", ptr @171, [8 x i8] c"g\00\00\00\00\00\00\00", [40 x i8] undef }>, align 8
@173 = private unnamed_addr constant [78 x i8] c"Invalid format string: Please either specify both hour and minute, or neither.", align 1
@174 = private unnamed_addr constant <{ [16 x i8], ptr, [8 x i8], [40 x i8] }> <{ [16 x i8] c"\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80", ptr @173, [8 x i8] c"N\00\00\00\00\00\00\00", [40 x i8] undef }>, align 8
@_RNvNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string8strptime12HOUR_PATTERN = internal global <{ ptr, [24 x i8], [4 x i8], [4 x i8] }> <{ ptr @_RNvYNCNvNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string8strptime12HOUR_PATTERN0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_onceBc_, [24 x i8] undef, [4 x i8] c"\03\00\00\00", [4 x i8] undef }>, align 8
@_RNvNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string8strptime14MINUTE_PATTERN = internal global <{ ptr, [24 x i8], [4 x i8], [4 x i8] }> <{ ptr @_RNvYNCNvNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string8strptime14MINUTE_PATTERN0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_onceBc_, [24 x i8] undef, [4 x i8] c"\03\00\00\00", [4 x i8] undef }>, align 8
@_RNvNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string8strptime14SECOND_PATTERN = internal global <{ ptr, [24 x i8], [4 x i8], [4 x i8] }> <{ ptr @_RNvYNCNvNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string8strptime14SECOND_PATTERN0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_onceBc_, [24 x i8] undef, [4 x i8] c"\03\00\00\00", [4 x i8] undef }>, align 8
@_RNvNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string8strptime16MERIDIEM_PATTERN = internal global <{ ptr, [24 x i8], [4 x i8], [4 x i8] }> <{ ptr @_RNvYNCNvNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string8strptime16MERIDIEM_PATTERN0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_onceBc_, [24 x i8] undef, [4 x i8] c"\03\00\00\00", [4 x i8] undef }>, align 8
@_RNvNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string8strptime19TWELVE_HOUR_PATTERN = internal global <{ ptr, [24 x i8], [4 x i8], [4 x i8] }> <{ ptr @_RNvYNCNvNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string8strptime19TWELVE_HOUR_PATTERN0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_onceBc_, [24 x i8] undef, [4 x i8] c"\03\00\00\00", [4 x i8] undef }>, align 8
@175 = private unnamed_addr constant [30 x i8] c"assertion failed: index <= len", align 1
@176 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @51, [16 x i8] c"n\00\00\00\00\00\00\00`\00\00\00\0D\00\00\00" }>, align 8
@177 = private unnamed_addr constant [34 x i8] c"too many values pushed to consumer", align 1
@178 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @51, [16 x i8] c"n\00\00\00\00\00\00\00}\00\00\00\09\00\00\00" }>, align 8
@179 = private unnamed_addr constant [74 x i8] c"internal error: entered unreachable code: CollectConsumer must be indexed!", align 1
@180 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @51, [16 x i8] c"n\00\00\00\00\00\00\00\9C\00\00\00\09\00\00\00" }>, align 8
@181 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs2Aa799EbAFJ_11polars_time }>, align 8
@182 = private unnamed_addr constant [13 x i8] c"ParseIntError", align 1
@183 = private unnamed_addr constant [4 x i8] c"kind", align 1
@184 = private unnamed_addr constant [11 x i8] c"AbsentEntry", align 1
@185 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"O\00\00\00\00\00\00\00i\04\00\00$\00\00\00" }>, align 8

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMs3_NtCsgZ49sUHp3tW_5alloc3stre7replaceReECs2Aa799EbAFJ_11polars_time(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, ptr noalias noundef nonnull readonly captures(none) %4, i64 noundef range(i64 5, 9) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1367 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [104 x i8], align 8               ; 13 uses
  %i.c = alloca [24 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !1680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1681
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2Aa799EbAFJ_11polars_time(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !1681
  %i.d = load i64, ptr %i.a, align 8, !dbg !1681, !range !921, !noundef !908
  %i.e = trunc nuw i64 %i.d to i1, !dbg !1682
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !1683
  %i.g = load i64, ptr %i.f, align 8, !dbg !1683, !range !922, !noundef !908 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !1683 ; 2 uses
  br i1 %i.e, label %bb.b, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Aa799EbAFJ_11polars_time.exit, !dbg !1682, !prof !923

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !dbg !1684
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #24, !dbg !1685
  unreachable, !dbg !1685

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Aa799EbAFJ_11polars_time.exit: ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !dbg !1686, !nonnull !908, !noundef !908
  %i.k = icmp ule i64 %2, %i.g, !dbg !1687
  tail call void @llvm.assume(i1 %i.k), !dbg !1688
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1689
  store i64 %i.g, ptr %i.c, align 8, !dbg !1690
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !1690 ; 8 uses
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !1690
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !1690 ; 22 uses
  store i64 0, ptr %.sroa.512.0..sroa_idx, align 8, !dbg !1690
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1691
  invoke void @_RNvMsu_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef 2)
          to label %_RNvXst_NtNtCscgRAwXFJnXP_4core3str7patternReNtB5_7Pattern13into_searcher.exit unwind label %.loopexit134.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !dbg !1692

_RNvXst_NtNtCscgRAwXFJnXP_4core3str7patternReNtB5_7Pattern13into_searcher.exit: ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Aa799EbAFJ_11polars_time.exit
  %.sroa.098.0.copyload = load i64, ptr %i.b, align 8, !dbg !1693
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !1693
  %.sroa.499.0.copyload = load i64, ptr %.sroa.499.0..sroa_idx, align 8, !dbg !1693 ; 25 uses
  %.sroa.6101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !1693
  %.sroa.6101.0.copyload = load i64, ptr %.sroa.6101.0..sroa_idx, align 8, !dbg !1693 ; 5 uses
  %.sroa.7102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !1693
  %.sroa.7102.0.copyload = load i64, ptr %.sroa.7102.0..sroa_idx, align 8, !dbg !1693 ; 2 uses
  %.sroa.8103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !1693
  %.sroa.8103.0.copyload = load i64, ptr %.sroa.8103.0..sroa_idx, align 8, !dbg !1693
  %.sroa.10105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !1693
  %.sroa.10105.0.copyload = load i64, ptr %.sroa.10105.0..sroa_idx, align 8, !dbg !1693
  %.sroa.12107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !1693
  %.sroa.12107.0.copyload = load ptr, ptr %.sroa.12107.0..sroa_idx, align 8, !dbg !1693 ; 17 uses
  %.sroa.13108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !1693
  %.sroa.13108.0.copyload = load i64, ptr %.sroa.13108.0..sroa_idx, align 8, !dbg !1693 ; 42 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !1693
  %.sroa.14.0.copyload = load ptr, ptr %.sroa.14.0..sroa_idx, align 8, !dbg !1693 ; 5 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 96, !dbg !1693
  %.sroa.15.0.copyload = load i64, ptr %.sroa.15.0..sroa_idx, align 8, !dbg !1693 ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1694
  %i.l = trunc nuw i64 %.sroa.098.0.copyload to i1
  %i.m = add nsw i64 %.sroa.15.0.copyload, -1     ; 3 uses
  br i1 %i.l, label %_RNvXst_NtNtCscgRAwXFJnXP_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.us, label %_RNvXst_NtNtCscgRAwXFJnXP_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split

_RNvXst_NtNtCscgRAwXFJnXP_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.us: ; preds = %_RNvXst_NtNtCscgRAwXFJnXP_4core3str7patternReNtB5_7Pattern13into_searcher.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12107.0.copyload), "nonnull"(ptr %.sroa.14.0.copyload) ]
  %i.n = sub i64 %.sroa.15.0.copyload, %.sroa.6101.0.copyload
  %umax49.i48.us = tail call i64 @llvm.umax.i64(i64 %.sroa.499.0.copyload, i64 range(i64 0, -9223372036854775808) %.sroa.15.0.copyload)
  %i.o = add i64 %.sroa.499.0.copyload, -1, !dbg !1695
  %.first_iter = icmp ult i64 %i.o, %.sroa.15.0.copyload
  %invariant.op = sub i64 1, %.sroa.499.0.copyload
  %exitcond.not.i50.us41.not = icmp ult i64 %.sroa.499.0.copyload, %.sroa.15.0.copyload
  %invariant.op122 = sub i64 1, %.sroa.499.0.copyload
  %.not129.us44 = icmp eq i64 %.sroa.499.0.copyload, 0
  br label %bb.c, !dbg !1695

bb.c:                                             ; preds = %.noexc33.us, %_RNvXst_NtNtCscgRAwXFJnXP_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.us
  %.sroa.3070.0.us = phi i64 [ %.sroa.10105.0.copyload, %_RNvXst_NtNtCscgRAwXFJnXP_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.us ], [ %.sroa.3070.1.us, %.noexc33.us ], !dbg !1696 ; 2 uses
  %.sroa.18.0.us = phi i64 [ %.sroa.8103.0.copyload, %_RNvXst_NtNtCscgRAwXFJnXP_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.us ], [ %.sroa.11111.1.us, %.noexc33.us ], !dbg !1696 ; 3 uses
  %.sroa.04.0.us = phi i64 [ 0, %_RNvXst_NtNtCscgRAwXFJnXP_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.us ], [ %.sroa.11111.1.us, %.noexc33.us ], !dbg !1697 ; 7 uses
  %i.p = icmp eq i64 %.sroa.3070.0.us, -1, !dbg !1698
  %i.q = add i64 %.sroa.18.0.us, %i.m, !dbg !1699 ; 3 uses
  %i.r = icmp ult i64 %i.q, %.sroa.13108.0.copyload, !dbg !1700 ; 2 uses
  br i1 %i.p, label %bb.m, label %bb.d, !dbg !1698

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1631), !dbg !1701
  call void @llvm.experimental.noalias.scope.decl(metadata !1632), !dbg !1701
  br i1 %i.r, label %.lr.ph.i37.us, label %.loopexit, !dbg !1702

.lr.ph.i37.us:                                    ; preds = %bb.d, %.sink.split.i.us
  %i.s = phi i64 [ %.sink.i.us, %.sink.split.i.us ], [ %.sroa.3070.0.us, %bb.d ] ; 3 uses
  %i.t = phi i64 [ %i.aw, %.sink.split.i.us ], [ %i.q, %bb.d ]
  %i.u = phi i64 [ %.ph71.i.us, %.sink.split.i.us ], [ %.sroa.18.0.us, %bb.d ] ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.12107.0.copyload, i64 %i.t, !dbg !1703
  %i.w = load i8, ptr %i.v, align 1, !dbg !1704, !alias.scope !1631, !noundef !908
  %i.x = and i8 %i.w, 63, !dbg !1705
  %i.y = zext nneg i8 %i.x to i64, !dbg !1706
  %i.z = shl nuw i64 1, %i.y, !dbg !1707
  %i.aa = and i64 %i.z, %.sroa.7102.0.copyload, !dbg !1707
  %i.ab = icmp eq i64 %i.aa, 0, !dbg !1707
  br i1 %i.ab, label %bb.l, label %bb.e, !dbg !1707

bb.e:                                             ; preds = %.lr.ph.i37.us
  %.sroa.0.0.i.i.us = call i64 @llvm.umax.i64(i64 %i.s, i64 %.sroa.499.0.copyload), !dbg !1708 ; 4 uses
  %umax49.i.us = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.us, i64 range(i64 0, -9223372036854775808) %.sroa.15.0.copyload), !dbg !1709
  %exitcond.not.i.us36.not = icmp ult i64 %.sroa.0.0.i.i.us, %.sroa.15.0.copyload, !dbg !1710
  br i1 %exitcond.not.i.us36.not, label %.lr.ph, label %.preheader131.us.preheader, !dbg !1711

bb.f:                                             ; preds = %bb.g
  %i.ac = add nuw i64 %.sroa.02.0.i.us37, 1, !dbg !1712 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.ac, %umax49.i.us, !dbg !1710
  br i1 %exitcond.not.i.us, label %.preheader131.us.preheader, label %.lr.ph, !dbg !1711

.preheader131.us.preheader:                       ; preds = %bb.f, %bb.e
  %i.ad = icmp ult i64 %i.s, %.sroa.499.0.copyload, !dbg !1713
  br i1 %i.ad, label %.lr.ph39, label %.loopexit.i.us, !dbg !1714

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.sroa.02.0.i.us37 = phi i64 [ %i.ac, %bb.f ], [ %.sroa.0.0.i.i.us, %bb.e ] ; 4 uses
  %i.ae = add i64 %.sroa.02.0.i.us37, %i.u, !dbg !1715 ; 2 uses
  %i.af = icmp ult i64 %i.ae, %.sroa.13108.0.copyload, !dbg !1716
  br i1 %i.af, label %bb.g, label %.split.us, !dbg !1716

bb.g:                                             ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %.sroa.02.0.i.us37, !dbg !1717
  %i.ah = load i8, ptr %i.ag, align 1, !dbg !1717, !alias.scope !1632, !noundef !908
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.12107.0.copyload, i64 %i.ae, !dbg !1716
  %i.aj = load i8, ptr %i.ai, align 1, !dbg !1716, !alias.scope !1631, !noundef !908
  %.not21.i.us = icmp eq i8 %i.ah, %i.aj, !dbg !1717
  br i1 %.not21.i.us, label %bb.f, label %bb.h, !dbg !1717

bb.h:                                             ; preds = %bb.g
  %.reass.reass = add i64 %i.u, %invariant.op
  %i.ak = add i64 %.reass.reass, %.sroa.02.0.i.us37, !dbg !1718
  br label %.sink.split.i.us, !dbg !1719

.preheader131.us:                                 ; preds = %bb.j
  %i.al = icmp ult i64 %i.s, %i.am, !dbg !1713
  br i1 %i.al, label %.lr.ph39, label %.loopexit.i.us, !dbg !1714

.lr.ph39:                                         ; preds = %.preheader131.us.preheader, %.preheader131.us
  %.sroa.2.0.i.us38 = phi i64 [ %i.am, %.preheader131.us ], [ %.sroa.499.0.copyload, %.preheader131.us.preheader ]
  %i.am = add i64 %.sroa.2.0.i.us38, -1, !dbg !1720 ; 6 uses
  %i.an = icmp ult i64 %i.am, %.sroa.15.0.copyload, !dbg !1721
  br i1 %i.an, label %bb.i, label %.split196.us.invoke, !dbg !1721

bb.i:                                             ; preds = %.lr.ph39
  %i.ao = add i64 %i.am, %i.u, !dbg !1722         ; 3 uses
  %i.ap = icmp ult i64 %i.ao, %.sroa.13108.0.copyload, !dbg !1723
  br i1 %i.ap, label %bb.j, label %.split196.us.invoke, !dbg !1723

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %i.am, !dbg !1721
  %i.ar = load i8, ptr %i.aq, align 1, !dbg !1721, !alias.scope !1632, !noundef !908
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.12107.0.copyload, i64 %i.ao, !dbg !1723
  %i.at = load i8, ptr %i.as, align 1, !dbg !1723, !alias.scope !1631, !noundef !908
  %.not.i38.us = icmp eq i8 %i.ar, %i.at, !dbg !1721
  br i1 %.not.i38.us, label %.preheader131.us, label %bb.k, !dbg !1721

bb.k:                                             ; preds = %bb.j
  %i.au = add i64 %i.u, %.sroa.6101.0.copyload, !dbg !1724
  br label %.sink.split.i.us, !dbg !1725

bb.l:                                             ; preds = %.lr.ph.i37.us
  %i.av = add i64 %i.u, %.sroa.15.0.copyload, !dbg !1726
  br label %.sink.split.i.us, !dbg !1727

.sink.split.i.us:                                 ; preds = %bb.l, %bb.k, %bb.h
  %.sink.i.us = phi i64 [ %i.n, %bb.k ], [ 0, %bb.h ], [ 0, %bb.l ]
  %.ph71.i.us = phi i64 [ %i.au, %bb.k ], [ %i.ak, %bb.h ], [ %i.av, %bb.l ] ; 2 uses
  %i.aw = add i64 %.ph71.i.us, %i.m, !dbg !1728   ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %.sroa.13108.0.copyload, !dbg !1702
  br i1 %i.ax, label %.lr.ph.i37.us, label %.loopexit, !dbg !1702

bb.m:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1636), !dbg !1729
  call void @llvm.experimental.noalias.scope.decl(metadata !1637), !dbg !1729
  br i1 %i.r, label %.lr.ph.i45.us, label %.loopexit, !dbg !1730

.lr.ph.i45.us:                                    ; preds = %bb.m, %bb.t
  %i.ay = phi i64 [ %i.by, %bb.t ], [ %i.q, %bb.m ]
  %i.az = phi i64 [ %i.bx, %bb.t ], [ %.sroa.18.0.us, %bb.m ] ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.12107.0.copyload, i64 %i.ay, !dbg !1731
  %i.bb = load i8, ptr %i.ba, align 1, !dbg !1732, !alias.scope !1636, !noundef !908
  %i.bc = and i8 %i.bb, 63, !dbg !1733
  %i.bd = zext nneg i8 %i.bc to i64, !dbg !1734
  %i.be = shl nuw i64 1, %i.bd, !dbg !1735
  %i.bf = and i64 %i.be, %.sroa.7102.0.copyload, !dbg !1735
  %i.bg = icmp eq i64 %i.bf, 0, !dbg !1735
  br i1 %i.bg, label %bb.s, label %.preheader.preheader, !dbg !1735

.preheader.preheader:                             ; preds = %.lr.ph.i45.us
  br i1 %exitcond.not.i50.us41.not, label %.lr.ph43, label %.preheader.us.preheader.a, !dbg !1736

.preheader:                                       ; preds = %bb.n
  %i.bh = add nuw i64 %.sroa.02.0.i49.us42, 1, !dbg !1737 ; 2 uses
  %exitcond.not.i50.us = icmp eq i64 %i.bh, %umax49.i48.us, !dbg !1738
  br i1 %exitcond.not.i50.us, label %.preheader.us.preheader.a, label %.lr.ph43, !dbg !1736

.preheader.us.preheader.a:                        ; preds = %.preheader, %.preheader.preheader
  br i1 %.not129.us44, label %.loopexit.i.us, label %.lr.ph46, !dbg !1739

.lr.ph43:                                         ; preds = %.preheader.preheader, %.preheader
  %.sroa.02.0.i49.us42 = phi i64 [ %i.bh, %.preheader ], [ %.sroa.499.0.copyload, %.preheader.preheader ] ; 4 uses
  %i.bi = add i64 %.sroa.02.0.i49.us42, %i.az, !dbg !1740 ; 2 uses
  %i.bj = icmp ult i64 %i.bi, %.sroa.13108.0.copyload, !dbg !1741
  br i1 %i.bj, label %bb.n, label %.split196.us, !dbg !1741

bb.n:                                             ; preds = %.lr.ph43
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %.sroa.02.0.i49.us42, !dbg !1742
  %i.bl = load i8, ptr %i.bk, align 1, !dbg !1742, !alias.scope !1637, !noundef !908
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.12107.0.copyload, i64 %i.bi, !dbg !1741
  %i.bn = load i8, ptr %i.bm, align 1, !dbg !1741, !alias.scope !1636, !noundef !908
  %.not21.i52.us.a = icmp eq i8 %i.bl, %i.bn, !dbg !1742
  br i1 %.not21.i52.us.a, label %.preheader, label %bb.o, !dbg !1742

bb.o:                                             ; preds = %bb.n
  %.reass326.reass = add i64 %i.az, %invariant.op122
  %i.bo = add i64 %.reass326.reass, %.sroa.02.0.i49.us42, !dbg !1743
  br label %bb.t, !dbg !1744

.preheader.us:                                    ; preds = %bb.q
  %.not129.us = icmp eq i64 %6, 0, !dbg !1745
  br i1 %.not129.us, label %.loopexit.i.us, label %.lr.ph46, !dbg !1739

.lr.ph46:                                         ; preds = %.preheader.us.preheader.a, %.preheader.us
  %.sroa.2.0.i53.us45 = phi i64 [ %6, %.preheader.us ], [ %.sroa.499.0.copyload, %.preheader.us.preheader.a ]
  %6 = add i64 %.sroa.2.0.i53.us45, -1, !dbg !1746 ; 5 uses
  br i1 %.first_iter, label %bb.p, label %.split196.us.invoke, !dbg !1747

bb.p:                                             ; preds = %.lr.ph46
  %i.bp = add i64 %6, %i.az, !dbg !1748           ; 3 uses
  %i.bq = icmp ult i64 %i.bp, %.sroa.13108.0.copyload, !dbg !1749
  br i1 %i.bq, label %bb.q, label %.split196.us.invoke, !dbg !1749

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %6, !dbg !1747
  %i.bs = load i8, ptr %i.br, align 1, !dbg !1747, !alias.scope !1637, !noundef !908
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.12107.0.copyload, i64 %i.bp, !dbg !1749
  %i.bu = load i8, ptr %i.bt, align 1, !dbg !1749, !alias.scope !1636, !noundef !908
  %.not.i54.us = icmp eq i8 %i.bs, %i.bu, !dbg !1747
  br i1 %.not.i54.us, label %.preheader.us, label %bb.r, !dbg !1747

bb.r:                                             ; preds = %bb.q
  %i.bv = add i64 %.sroa.6101.0.copyload, %i.az, !dbg !1750
  br label %bb.t, !dbg !1751

bb.s:                                             ; preds = %.lr.ph.i45.us
  %i.bw = add i64 %i.az, %.sroa.15.0.copyload, !dbg !1752
  br label %bb.t, !dbg !1753

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.o
  %i.bx = phi i64 [ %i.bo, %bb.o ], [ %i.bw, %bb.s ], [ %i.bv, %bb.r ] ; 2 uses
  %i.by = add i64 %i.bx, %i.m, !dbg !1754         ; 2 uses
  %i.bz = icmp ult i64 %i.by, %.sroa.13108.0.copyload, !dbg !1730
  br i1 %i.bz, label %.lr.ph.i45.us, label %.loopexit, !dbg !1730

.loopexit.i.us:                                   ; preds = %.preheader131.us.preheader, %.preheader.us.preheader.a, %.preheader131.us, %.preheader.us
  %.sroa.7110.1.us = phi i64 [ %i.az, %.preheader.us ], [ %i.u, %.preheader131.us ], [ %i.az, %.preheader.us.preheader.a ], [ %i.u, %.preheader131.us.preheader ], !dbg !1755 ; 3 uses
  %.sroa.3070.1.us = phi i64 [ -1, %.preheader.us ], [ 0, %.preheader131.us ], [ -1, %.preheader.us.preheader.a ], [ 0, %.preheader131.us.preheader ], !dbg !1696
  %.sroa.11111.1.us = add i64 %.sroa.7110.1.us, %.sroa.15.0.copyload, !dbg !1756 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.0.us, !dbg !1757
  %gepdiff.us = sub nuw nsw i64 %.sroa.7110.1.us, %.sroa.04.0.us, !dbg !1758 ; 3 uses
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs2Aa799EbAFJ_11polars_time(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %gepdiff.us)
          to label %.noexc29.us unwind label %.loopexit134.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !dbg !1759

.noexc29.us:                                      ; preds = %.loopexit.i.us
  %i.cb = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !dbg !1760, !alias.scope !1648, !noundef !908 ; 3 uses
  %i.cc = icmp sgt i64 %i.cb, -1, !dbg !1761
  call void @llvm.assume(i1 %i.cc), !dbg !1762
  %.not.i27.us = icmp eq i64 %.sroa.7110.1.us, %.sroa.04.0.us, !dbg !1763
  br i1 %.not.i27.us, label %bb.v, label %bb.u, !dbg !1763

bb.u:                                             ; preds = %.noexc29.us
  %i.cd = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !1764, !alias.scope !1648, !nonnull !908, !noundef !908
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cb, !dbg !1765
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ce, ptr nonnull readonly align 1 %i.ca, i64 %gepdiff.us, i1 false), !dbg !1766
  %.pre.i28.us = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !dbg !1767, !alias.scope !1648
  br label %bb.v, !dbg !1768

bb.v:                                             ; preds = %bb.u, %.noexc29.us
  %i.cf = phi i64 [ %.pre.i28.us, %bb.u ], [ %i.cb, %.noexc29.us ], !dbg !1767
  %i.cg = add i64 %i.cf, %gepdiff.us, !dbg !1767
  store i64 %i.cg, ptr %.sroa.512.0..sroa_idx, align 8, !dbg !1767, !alias.scope !1648
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs2Aa799EbAFJ_11polars_time(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %5)
          to label %.noexc33.us unwind label %.loopexit134.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !dbg !1769

.noexc33.us:                                      ; preds = %bb.v
  %i.ch = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !dbg !1770, !alias.scope !1654, !noundef !908 ; 2 uses
  %i.ci = icmp sgt i64 %i.ch, -1, !dbg !1771
  call void @llvm.assume(i1 %i.ci), !dbg !1772
  %i.cj = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !1773, !alias.scope !1654, !nonnull !908, !noundef !908
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ch, !dbg !1774
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ck, ptr noundef nonnull readonly align 1 dereferenceable(1) %4, i64 %5, i1 false), !dbg !1775
  %.pre.i32.us = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !dbg !1776, !alias.scope !1654
  %i.cl = add i64 %.pre.i32.us, %5, !dbg !1776
  store i64 %i.cl, ptr %.sroa.512.0..sroa_idx, align 8, !dbg !1776, !alias.scope !1654
  br label %bb.c, !dbg !1695

_RNvXst_NtNtCscgRAwXFJnXP_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split: ; preds = %_RNvXst_NtNtCscgRAwXFJnXP_4core3str7patternReNtB5_7Pattern13into_searcher.exit
  %i.cm = and i64 %.sroa.6101.0.copyload, 65536
  %.not = icmp eq i64 %i.cm, 0
  br i1 %.not, label %.lr.ph.i.lr.ph, label %.loopexit, !dbg !1777

.lr.ph.i.lr.ph:                                   ; preds = %_RNvXst_NtNtCscgRAwXFJnXP_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12107.0.copyload) ]
  %i.cn = trunc i64 %.sroa.6101.0.copyload to i1, !dbg !1778 ; 2 uses
  %i.co = icmp eq i64 %.sroa.499.0.copyload, 0, !dbg !1779
  br i1 %i.co, label %bb.y, label %bb.w, !dbg !1779

bb.w:                                             ; preds = %.lr.ph.i.lr.ph
  %.not.i.i.i.peel.peel = icmp ult i64 %.sroa.499.0.copyload, %.sroa.13108.0.copyload, !dbg !1780
  br i1 %.not.i.i.i.peel.peel, label %bb.x, label %.split.i.i.i.peel.peel, !dbg !1780

.split.i.i.i.peel.peel:                           ; preds = %bb.w
  %i.cp = icmp eq i64 %.sroa.499.0.copyload, %.sroa.13108.0.copyload, !dbg !1781
  br i1 %i.cp, label %bb.y, label %.loopexit262, !dbg !1782

bb.x:                                             ; preds = %bb.w
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.12107.0.copyload, i64 %.sroa.499.0.copyload, !dbg !1783
  %i.cr = load i8, ptr %i.cq, align 1, !dbg !1783, !alias.scope !1656, !noalias !1657, !noundef !908
  %i.cs = icmp sgt i8 %i.cr, -65, !dbg !1784
  br i1 %i.cs, label %bb.y, label %.loopexit262, !dbg !1782

bb.y:                                             ; preds = %bb.x, %.split.i.i.i.peel.peel, %.lr.ph.i.lr.ph
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.12107.0.copyload, i64 %.sroa.499.0.copyload, !dbg !1785 ; 4 uses
  %i.cu = icmp samesign eq i64 %.sroa.499.0.copyload, %.sroa.13108.0.copyload, !dbg !1786
  br i1 %i.cu, label %.loopexit263.peel, label %bb.z, !dbg !1787

bb.z:                                             ; preds = %bb.y
  %i.cv = load i8, ptr %i.ct, align 1, !dbg !1788, !noalias !1661, !noundef !908 ; 5 uses
  %i.cw = icmp sgt i8 %i.cv, -1, !dbg !1789
  br i1 %i.cw, label %bb.aa, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit12.i.i.i.peel.peel, !dbg !1789

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit12.i.i.i.peel.peel: ; preds = %bb.z
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 1, !dbg !1790
  %i.cy = and i8 %i.cv, 31, !dbg !1791
  %i.cz = zext nneg i8 %i.cy to i32, !dbg !1791   ; 3 uses
  %i.da = add nuw nsw i64 %.sroa.499.0.copyload, 1, !dbg !1792
  %i.db = icmp samesign ne i64 %i.da, %.sroa.13108.0.copyload, !dbg !1792
  tail call void @llvm.assume(i1 %i.db), !dbg !1793
  %i.dc = load i8, ptr %i.cx, align 1, !dbg !1794, !noalias !1661, !noundef !908
  %i.dd = shl nuw nsw i32 %i.cz, 6, !dbg !1795
  %i.de = and i8 %i.dc, 63, !dbg !1796
  %i.df = zext nneg i8 %i.de to i32, !dbg !1796   ; 2 uses
  %i.dg = or disjoint i32 %i.dd, %i.df, !dbg !1795
  %i.dh = icmp samesign ugt i8 %i.cv, -33, !dbg !1797
  br i1 %i.dh, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit14.i.i.i.peel.peel, label %bb.ab, !dbg !1797

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit14.i.i.i.peel.peel: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit12.i.i.i.peel.peel
  %i.di = getelementptr inbounds nuw i8, ptr %i.ct, i64 2, !dbg !1798
  %i.dj = add nuw nsw i64 %.sroa.499.0.copyload, 2, !dbg !1799
  %i.dk = icmp samesign ne i64 %i.dj, %.sroa.13108.0.copyload, !dbg !1799
  tail call void @llvm.assume(i1 %i.dk), !dbg !1800
  %i.dl = load i8, ptr %i.di, align 1, !dbg !1801, !noalias !1661, !noundef !908
  %i.dm = shl nuw nsw i32 %i.df, 6, !dbg !1802
  %i.dn = and i8 %i.dl, 63, !dbg !1803
  %i.do = zext nneg i8 %i.dn to i32, !dbg !1803
  %i.dp = or disjoint i32 %i.dm, %i.do, !dbg !1802 ; 2 uses
  %i.dq = shl nuw nsw i32 %i.cz, 12, !dbg !1804
  %i.dr = or disjoint i32 %i.dp, %i.dq, !dbg !1805
  %i.ds = icmp samesign ugt i8 %i.cv, -17, !dbg !1806
  br i1 %i.ds, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit16.i.i.i.peel.peel, label %bb.ab, !dbg !1806

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit16.i.i.i.peel.peel: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit14.i.i.i.peel.peel
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ct, i64 3, !dbg !1807
  %i.du = add nuw nsw i64 %.sroa.499.0.copyload, 3, !dbg !1808
  %i.dv = icmp samesign ne i64 %i.du, %.sroa.13108.0.copyload, !dbg !1808
  tail call void @llvm.assume(i1 %i.dv), !dbg !1809
  %i.dw = load i8, ptr %i.dt, align 1, !dbg !1810, !noalias !1661, !noundef !908
  %i.dx = shl nuw nsw i32 %i.cz, 18, !dbg !1811
  %i.dy = and i32 %i.dx, 1835008, !dbg !1811
  %i.dz = shl nuw nsw i32 %i.dp, 6, !dbg !1812
  %i.ea = and i8 %i.dw, 63, !dbg !1813
  %i.eb = zext nneg i8 %i.ea to i32, !dbg !1813
  %i.ec = or disjoint i32 %i.dz, %i.eb, !dbg !1812
  %i.ed = or disjoint i32 %i.ec, %i.dy, !dbg !1814
  br label %bb.ab, !dbg !1815

bb.aa:                                            ; preds = %bb.z
  %i.ee = zext nneg i8 %i.cv to i32, !dbg !1816
  br label %bb.ab, !dbg !1817

bb.ab:                                            ; preds = %bb.aa, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit16.i.i.i.peel.peel, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit14.i.i.i.peel.peel, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit12.i.i.i.peel.peel
  %.sroa.4.0.i.ph.i.i.peel.peel = phi i32 [ %i.dr, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit14.i.i.i.peel.peel ], [ %i.ed, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit16.i.i.i.peel.peel ], [ %i.dg, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit12.i.i.i.peel.peel ], [ %i.ee, %bb.aa ] ; 4 uses
  %i.ef = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.peel, 1114112, !dbg !1818
  tail call void @llvm.assume(i1 %i.ef), !dbg !1818
  br i1 %i.cn, label %.loopexit.i.peel, label %bb.ac, !dbg !1819

bb.ac:                                            ; preds = %bb.ab
  %i.eg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.peel, 128, !dbg !1820
  br i1 %i.eg, label %bb.af, label %bb.ad, !dbg !1820

bb.ad:                                            ; preds = %bb.ac
  %i.eh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.peel, 2048, !dbg !1821
  br i1 %i.eh, label %bb.af, label %bb.ae, !dbg !1821

bb.ae:                                            ; preds = %bb.ad
  %i.ei = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.peel, 65536, !dbg !1822
  %..i.i.peel.peel = select i1 %i.ei, i64 3, i64 4, !dbg !1823
  br label %bb.af, !dbg !1823

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %.sroa.01.0.i.i.peel.peel = phi i64 [ 2, %bb.ad ], [ %..i.i.peel.peel, %bb.ae ], [ 1, %bb.ac ], !dbg !1823
  %i.ej = add i64 %.sroa.01.0.i.i.peel.peel, %.sroa.499.0.copyload, !dbg !1824 ; 15 uses
  %i.ek = icmp eq i64 %i.ej, 0, !dbg !1779
  br i1 %i.ek, label %bb.ai, label %bb.ag, !dbg !1779

bb.ag:                                            ; preds = %bb.af
  %.not.i.i.i.peel89 = icmp ult i64 %i.ej, %.sroa.13108.0.copyload, !dbg !1780
  br i1 %.not.i.i.i.peel89, label %bb.ah, label %.split.i.i.i.peel90, !dbg !1780

.split.i.i.i.peel90:                              ; preds = %bb.ag
  %i.el = icmp eq i64 %i.ej, %.sroa.13108.0.copyload, !dbg !1781
  br i1 %i.el, label %bb.ai, label %.loopexit262, !dbg !1782

bb.ah:                                            ; preds = %bb.ag
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.12107.0.copyload, i64 %i.ej, !dbg !1783
  %i.en = load i8, ptr %i.em, align 1, !dbg !1783, !alias.scope !1656, !noalias !1657, !noundef !908
  %i.eo = icmp sgt i8 %i.en, -65, !dbg !1784
  br i1 %i.eo, label %bb.ai, label %.loopexit262, !dbg !1782

bb.ai:                                            ; preds = %bb.ah, %.split.i.i.i.peel90, %bb.af
  %i.ep = icmp samesign eq i64 %i.ej, %.sroa.13108.0.copyload, !dbg !1786
  br i1 %i.ep, label %.loopexit.i.peel, label %bb.aj, !dbg !1787

bb.aj:                                            ; preds = %bb.ai
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.12107.0.copyload, i64 %i.ej, !dbg !1785
  %i.er = load i8, ptr %i.eq, align 1, !dbg !1788, !noalias !1661, !noundef !908 ; 3 uses
  %i.es = icmp sgt i8 %i.er, -1, !dbg !1789
  br i1 %i.es, label %.loopexit.i.peel, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit12.i.i.i.peel91, !dbg !1789

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit12.i.i.i.peel91: ; preds = %bb.aj
  %i.et = add nuw nsw i64 %i.ej, 1, !dbg !1792
  %i.eu = icmp samesign ne i64 %i.et, %.sroa.13108.0.copyload, !dbg !1792
  tail call void @llvm.assume(i1 %i.eu), !dbg !1793
  %i.ev = icmp samesign ugt i8 %i.er, -33, !dbg !1797
  br i1 %i.ev, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit14.i.i.i.peel92, label %.loopexit.i.peel, !dbg !1797

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit14.i.i.i.peel92: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit12.i.i.i.peel91
  %i.ew = add nuw nsw i64 %i.ej, 2, !dbg !1799
  %i.ex = icmp samesign ne i64 %i.ew, %.sroa.13108.0.copyload, !dbg !1799
  tail call void @llvm.assume(i1 %i.ex), !dbg !1800
  %i.ey = icmp samesign ugt i8 %i.er, -17, !dbg !1806
  br i1 %i.ey, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit16.i.i.i.peel93, label %.loopexit.i.peel, !dbg !1806

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit16.i.i.i.peel93: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit14.i.i.i.peel92
  %i.ez = add nuw nsw i64 %i.ej, 3, !dbg !1808
  %i.fa = icmp samesign ne i64 %i.ez, %.sroa.13108.0.copyload, !dbg !1808
  tail call void @llvm.assume(i1 %i.fa), !dbg !1809
  br label %.loopexit.i.peel, !dbg !1815

.loopexit263.peel:                                ; preds = %bb.y
  br i1 %i.cn, label %.loopexit.i.peel, label %.loopexit, !dbg !1819

.loopexit.i.peel:                                 ; preds = %.loopexit263.peel, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit16.i.i.i.peel93, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit14.i.i.i.peel92, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit12.i.i.i.peel91, %bb.aj, %bb.ai, %bb.ab
  %.sroa.464.1260.peel = phi i64 [ %.sroa.13108.0.copyload, %.loopexit263.peel ], [ %.sroa.13108.0.copyload, %bb.ai ], [ %.sroa.499.0.copyload, %bb.ab ], [ %i.ej, %bb.aj ], [ %i.ej, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit12.i.i.i.peel91 ], [ %i.ej, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit14.i.i.i.peel92 ], [ %i.ej, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit16.i.i.i.peel93 ] ; 5 uses
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs2Aa799EbAFJ_11polars_time(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %.sroa.464.1260.peel)
          to label %.noexc29.peel unwind label %.loopexit134.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !dbg !1759

.noexc29.peel:                                    ; preds = %.loopexit.i.peel
  %i.fb = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !dbg !1760, !alias.scope !1648, !noundef !908 ; 3 uses
  %i.fc = icmp sgt i64 %i.fb, -1, !dbg !1761
  call void @llvm.assume(i1 %i.fc), !dbg !1762
  %.not.i27.peel = icmp eq i64 %.sroa.464.1260.peel, 0, !dbg !1763
  br i1 %.not.i27.peel, label %bb.al, label %bb.ak, !dbg !1763

bb.ak:                                            ; preds = %.noexc29.peel
  %i.fd = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !1764, !alias.scope !1648, !nonnull !908, !noundef !908
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fb, !dbg !1765
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fe, ptr nonnull readonly align 1 %1, i64 %.sroa.464.1260.peel, i1 false), !dbg !1766
  %.pre.i28.peel = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !dbg !1767, !alias.scope !1648
  br label %bb.al, !dbg !1768

bb.al:                                            ; preds = %bb.ak, %.noexc29.peel
  %i.ff = phi i64 [ %.pre.i28.peel, %bb.ak ], [ %i.fb, %.noexc29.peel ], !dbg !1767
  %i.fg = add i64 %i.ff, %.sroa.464.1260.peel, !dbg !1767
  store i64 %i.fg, ptr %.sroa.512.0..sroa_idx, align 8, !dbg !1767, !alias.scope !1648
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs2Aa799EbAFJ_11polars_time(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %5)
          to label %.noexc33.peel unwind label %.loopexit134.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !dbg !1769

.noexc33.peel:                                    ; preds = %bb.al
  %i.fh = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !dbg !1770, !alias.scope !1654, !noundef !908 ; 2 uses
  %i.fi = icmp sgt i64 %i.fh, -1, !dbg !1771
  call void @llvm.assume(i1 %i.fi), !dbg !1772
  %i.fj = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !1773, !alias.scope !1654, !nonnull !908, !noundef !908
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fh, !dbg !1774
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fk, ptr noundef nonnull readonly align 1 dereferenceable(1) %4, i64 %5, i1 false), !dbg !1775
  %.pre.i32.peel = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !dbg !1776, !alias.scope !1654
  %i.fl = add i64 %.pre.i32.peel, %5, !dbg !1776
  store i64 %i.fl, ptr %.sroa.512.0..sroa_idx, align 8, !dbg !1776, !alias.scope !1654
  br label %.lr.ph.i, !dbg !1777

.lr.ph.i:                                         ; preds = %.noexc33, %.noexc33.peel
  %.sroa.464.0210 = phi i64 [ %.sroa.464.1260.peel, %.noexc33.peel ], [ %.sroa.464.1260, %.noexc33 ] ; 16 uses
  %i.fm = icmp eq i64 %.sroa.464.0210, 0, !dbg !1779
  br i1 %i.fm, label %bb.ao, label %bb.am, !dbg !1779

bb.am:                                            ; preds = %.lr.ph.i
  %.not.i.i.i.peel = icmp ult i64 %.sroa.464.0210, %.sroa.13108.0.copyload, !dbg !1780
  br i1 %.not.i.i.i.peel, label %bb.an, label %.split.i.i.i.peel, !dbg !1780

.split.i.i.i.peel:                                ; preds = %bb.am
  %i.fn = icmp eq i64 %.sroa.464.0210, %.sroa.13108.0.copyload, !dbg !1781
  br i1 %i.fn, label %bb.ao, label %.loopexit262, !dbg !1782

bb.an:                                            ; preds = %bb.am
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.12107.0.copyload, i64 %.sroa.464.0210, !dbg !1783
  %i.fp = load i8, ptr %i.fo, align 1, !dbg !1783, !alias.scope !1656, !noalias !1657, !noundef !908
  %i.fq = icmp sgt i8 %i.fp, -65, !dbg !1784
  br i1 %i.fq, label %bb.ao, label %.loopexit262, !dbg !1782

bb.ao:                                            ; preds = %bb.an, %.split.i.i.i.peel, %.lr.ph.i
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.12107.0.copyload, i64 %.sroa.464.0210, !dbg !1785 ; 4 uses
  %i.fs = icmp samesign eq i64 %.sroa.464.0210, %.sroa.13108.0.copyload, !dbg !1786
  br i1 %i.fs, label %.loopexit, label %bb.ap, !dbg !1787

bb.ap:                                            ; preds = %bb.ao
  %i.ft = load i8, ptr %i.fr, align 1, !dbg !1788, !noalias !1661, !noundef !908 ; 5 uses
  %i.fu = icmp sgt i8 %i.ft, -1, !dbg !1789
  br i1 %i.fu, label %bb.aq, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit12.i.i.i.peel, !dbg !1789

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit12.i.i.i.peel: ; preds = %bb.ap
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 1, !dbg !1790
  %i.fw = and i8 %i.ft, 31, !dbg !1791
  %i.fx = zext nneg i8 %i.fw to i32, !dbg !1791   ; 3 uses
  %i.fy = add nuw nsw i64 %.sroa.464.0210, 1, !dbg !1792
  %i.fz = icmp samesign ne i64 %i.fy, %.sroa.13108.0.copyload, !dbg !1792
  call void @llvm.assume(i1 %i.fz), !dbg !1793
  %i.ga = load i8, ptr %i.fv, align 1, !dbg !1794, !noalias !1661, !noundef !908
  %i.gb = shl nuw nsw i32 %i.fx, 6, !dbg !1795
  %i.gc = and i8 %i.ga, 63, !dbg !1796
  %i.gd = zext nneg i8 %i.gc to i32, !dbg !1796   ; 2 uses
  %i.ge = or disjoint i32 %i.gb, %i.gd, !dbg !1795
  %i.gf = icmp samesign ugt i8 %i.ft, -33, !dbg !1797
  br i1 %i.gf, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit14.i.i.i.peel, label %bb.ar, !dbg !1797

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit14.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit12.i.i.i.peel
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fr, i64 2, !dbg !1798
  %i.gh = add nuw nsw i64 %.sroa.464.0210, 2, !dbg !1799
  %i.gi = icmp samesign ne i64 %i.gh, %.sroa.13108.0.copyload, !dbg !1799
  call void @llvm.assume(i1 %i.gi), !dbg !1800
  %i.gj = load i8, ptr %i.gg, align 1, !dbg !1801, !noalias !1661, !noundef !908
  %i.gk = shl nuw nsw i32 %i.gd, 6, !dbg !1802
  %i.gl = and i8 %i.gj, 63, !dbg !1803
  %i.gm = zext nneg i8 %i.gl to i32, !dbg !1803
  %i.gn = or disjoint i32 %i.gk, %i.gm, !dbg !1802 ; 2 uses
  %i.go = shl nuw nsw i32 %i.fx, 12, !dbg !1804
  %i.gp = or disjoint i32 %i.gn, %i.go, !dbg !1805
  %i.gq = icmp samesign ugt i8 %i.ft, -17, !dbg !1806
  br i1 %i.gq, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit16.i.i.i.peel, label %bb.ar, !dbg !1806

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit16.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit14.i.i.i.peel
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fr, i64 3, !dbg !1807
  %i.gs = add nuw nsw i64 %.sroa.464.0210, 3, !dbg !1808
  %i.gt = icmp samesign ne i64 %i.gs, %.sroa.13108.0.copyload, !dbg !1808
  call void @llvm.assume(i1 %i.gt), !dbg !1809
  %i.gu = load i8, ptr %i.gr, align 1, !dbg !1810, !noalias !1661, !noundef !908
  %i.gv = shl nuw nsw i32 %i.fx, 18, !dbg !1811
  %i.gw = and i32 %i.gv, 1835008, !dbg !1811
  %i.gx = shl nuw nsw i32 %i.gn, 6, !dbg !1812
  %i.gy = and i8 %i.gu, 63, !dbg !1813
  %i.gz = zext nneg i8 %i.gy to i32, !dbg !1813
  %i.ha = or disjoint i32 %i.gx, %i.gz, !dbg !1812
  %i.hb = or disjoint i32 %i.ha, %i.gw, !dbg !1814
  br label %bb.ar, !dbg !1815

bb.aq:                                            ; preds = %bb.ap
  %i.hc = zext nneg i8 %i.ft to i32, !dbg !1816
  br label %bb.ar, !dbg !1817

bb.ar:                                            ; preds = %bb.aq, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit16.i.i.i.peel, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit14.i.i.i.peel, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit12.i.i.i.peel
  %.sroa.4.0.i.ph.i.i.peel = phi i32 [ %i.gp, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit14.i.i.i.peel ], [ %i.hb, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit16.i.i.i.peel ], [ %i.ge, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit12.i.i.i.peel ], [ %i.hc, %bb.aq ] ; 4 uses
  %i.hd = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 1114112, !dbg !1818
  call void @llvm.assume(i1 %i.hd), !dbg !1818
  %i.he = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 128, !dbg !1820
  br i1 %i.he, label %bb.au, label %bb.as, !dbg !1820

bb.as:                                            ; preds = %bb.ar
  %i.hf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 2048, !dbg !1821
  br i1 %i.hf, label %bb.au, label %bb.at, !dbg !1821

bb.at:                                            ; preds = %bb.as
  %i.hg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 65536, !dbg !1822
  %..i.i.peel = select i1 %i.hg, i64 3, i64 4, !dbg !1823
  br label %bb.au, !dbg !1823

bb.au:                                            ; preds = %bb.ar, %bb.as, %bb.at
  %.sroa.01.0.i.i.peel = phi i64 [ 2, %bb.as ], [ %..i.i.peel, %bb.at ], [ 1, %bb.ar ], !dbg !1823
  %i.hh = add i64 %.sroa.01.0.i.i.peel, %.sroa.464.0210, !dbg !1824 ; 15 uses
  %i.hi = icmp eq i64 %i.hh, 0, !dbg !1779
  br i1 %i.hi, label %bb.ax, label %bb.av, !dbg !1779

bb.av:                                            ; preds = %bb.au
  %.not.i.i.i = icmp ult i64 %i.hh, %.sroa.13108.0.copyload, !dbg !1780
  br i1 %.not.i.i.i, label %bb.aw, label %.split.i.i.i, !dbg !1780

.split.i.i.i:                                     ; preds = %bb.av
  %i.hj = icmp eq i64 %i.hh, %.sroa.13108.0.copyload, !dbg !1781
  br i1 %i.hj, label %bb.ax, label %.loopexit262, !dbg !1782

bb.aw:                                            ; preds = %bb.av
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.12107.0.copyload, i64 %i.hh, !dbg !1783
  %i.hl = load i8, ptr %i.hk, align 1, !dbg !1783, !alias.scope !1656, !noalias !1657, !noundef !908
  %i.hm = icmp sgt i8 %i.hl, -65, !dbg !1784
  br i1 %i.hm, label %bb.ax, label %.loopexit262, !dbg !1782

bb.ax:                                            ; preds = %bb.aw, %.split.i.i.i, %bb.au
  %i.hn = icmp samesign eq i64 %i.hh, %.sroa.13108.0.copyload, !dbg !1786
  br i1 %i.hn, label %.loopexit.i, label %bb.ay, !dbg !1787

bb.ay:                                            ; preds = %bb.ax
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.12107.0.copyload, i64 %i.hh, !dbg !1785
  %i.hp = load i8, ptr %i.ho, align 1, !dbg !1788, !noalias !1661, !noundef !908 ; 3 uses
  %i.hq = icmp sgt i8 %i.hp, -1, !dbg !1789
  br i1 %i.hq, label %.loopexit.i, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit12.i.i.i, !dbg !1789

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit12.i.i.i: ; preds = %bb.ay
  %i.hr = add nuw nsw i64 %i.hh, 1, !dbg !1792
  %i.hs = icmp samesign ne i64 %i.hr, %.sroa.13108.0.copyload, !dbg !1792
  call void @llvm.assume(i1 %i.hs), !dbg !1793
  %i.ht = icmp samesign ugt i8 %i.hp, -33, !dbg !1797
  br i1 %i.ht, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit14.i.i.i, label %.loopexit.i, !dbg !1797

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit12.i.i.i
  %i.hu = add nuw nsw i64 %i.hh, 2, !dbg !1799
  %i.hv = icmp samesign ne i64 %i.hu, %.sroa.13108.0.copyload, !dbg !1799
  call void @llvm.assume(i1 %i.hv), !dbg !1800
  %i.hw = icmp samesign ugt i8 %i.hp, -17, !dbg !1806
  br i1 %i.hw, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit16.i.i.i, label %.loopexit.i, !dbg !1806

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit14.i.i.i
  %i.hx = add nuw nsw i64 %i.hh, 3, !dbg !1808
  %i.hy = icmp samesign ne i64 %i.hx, %.sroa.13108.0.copyload, !dbg !1808
  call void @llvm.assume(i1 %i.hy), !dbg !1809
  br label %.loopexit.i, !dbg !1815

.loopexit262:                                     ; preds = %bb.an, %.split.i.i.i.peel, %bb.aw, %.split.i.i.i, %bb.ah, %.split.i.i.i.peel90, %bb.x, %.split.i.i.i.peel.peel
  %.sroa.464.1.lcssa = phi i64 [ %.sroa.499.0.copyload, %.split.i.i.i.peel.peel ], [ %.sroa.499.0.copyload, %bb.x ], [ %i.ej, %.split.i.i.i.peel90 ], [ %i.ej, %bb.ah ], [ %.sroa.464.0210, %bb.an ], [ %.sroa.464.0210, %.split.i.i.i.peel ], [ %i.hh, %.split.i.i.i ], [ %i.hh, %bb.aw ], !dbg !1696
  invoke void @_RNvNtCscgRAwXFJnXP_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.12107.0.copyload, i64 noundef %.sroa.13108.0.copyload, i64 noundef %.sroa.464.1.lcssa, i64 noundef %.sroa.13108.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @185) #25
          to label %.noexc unwind label %.loopexit134.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !dbg !1825

.noexc:                                           ; preds = %.loopexit262
  unreachable, !dbg !1825

.split196.us:                                     ; preds = %.lr.ph43
  %i.hz = add i64 %i.az, %.sroa.499.0.copyload, !dbg !1826
  %umax.i51 = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.13108.0.copyload, i64 %i.hz), !dbg !1826
  br label %.split196.us.invoke, !dbg !1741

.split196.us.invoke:                              ; preds = %bb.i, %.lr.ph39, %bb.p, %.lr.ph46, %.split.us, %.split196.us
  %i.ia = phi i64 [ %umax.i51, %.split196.us ], [ %umax.i, %.split.us ], [ %6, %.lr.ph46 ], [ %i.bp, %bb.p ], [ %i.am, %.lr.ph39 ], [ %i.ao, %bb.i ]
  %i.ib = phi i64 [ %.sroa.13108.0.copyload, %.split196.us ], [ %.sroa.13108.0.copyload, %.split.us ], [ %.sroa.15.0.copyload, %.lr.ph46 ], [ %.sroa.13108.0.copyload, %bb.p ], [ %.sroa.15.0.copyload, %.lr.ph39 ], [ %.sroa.13108.0.copyload, %bb.i ]
  %i.ic = phi ptr [ @6, %.split196.us ], [ @6, %.split.us ], [ @4, %.lr.ph46 ], [ @5, %bb.p ], [ @4, %.lr.ph39 ], [ @5, %bb.i ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ia, i64 noundef range(i64 0, -9223372036854775808) %i.ib, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ic) #25
          to label %.split196.us.cont unwind label %.loopexit134.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !dbg !1827

.split196.us.cont:                                ; preds = %.split196.us.invoke
  unreachable

.split.us:                                        ; preds = %.lr.ph
  %i.id = add i64 %i.u, %.sroa.0.0.i.i.us, !dbg !1709
  %umax.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.13108.0.copyload, i64 %i.id), !dbg !1709
  br label %.split196.us.invoke, !dbg !1716

.loopexit134.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp: ; preds = %bb.v, %.loopexit.i.us, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Aa799EbAFJ_11polars_time.exit, %.loopexit262, %.loopexit, %.split196.us.invoke, %.loopexit.i, %bb.bc, %.loopexit.i.peel, %bb.al
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs2Aa799EbAFJ_11polars_time(ptr noalias noundef align 8 dereferenceable(24) %i.c) #26
          to label %bb.be unwind label %bb.bd, !dbg !1828

.loopexit:                                        ; preds = %.loopexit263.peel, %bb.ao, %bb.m, %bb.d, %.sink.split.i.us, %bb.t, %_RNvXst_NtNtCscgRAwXFJnXP_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split
  %.sroa.04.0175 = phi i64 [ %.sroa.04.0.us, %bb.m ], [ 0, %_RNvXst_NtNtCscgRAwXFJnXP_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split ], [ %.sroa.04.0.us, %.sink.split.i.us ], [ %.sroa.04.0.us, %bb.t ], [ %.sroa.04.0.us, %bb.d ], [ 0, %.loopexit263.peel ], [ %.sroa.464.0210, %bb.ao ] ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.0175, !dbg !1829
  %gepdiff130 = sub nuw nsw i64 %2, %.sroa.04.0175, !dbg !1830 ; 3 uses
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs2Aa799EbAFJ_11polars_time(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %gepdiff130)
          to label %.noexc26 unwind label %.loopexit134.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !dbg !1831

.noexc26:                                         ; preds = %.loopexit
  %i.if = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !dbg !1832, !alias.scope !1678, !noundef !908 ; 3 uses
  %i.ig = icmp sgt i64 %i.if, -1, !dbg !1833
  call void @llvm.assume(i1 %i.ig), !dbg !1834
  %.not.i = icmp eq i64 %2, %.sroa.04.0175, !dbg !1835
  br i1 %.not.i, label %bb.ba, label %bb.az, !dbg !1835

bb.az:                                            ; preds = %.noexc26
  %i.ih = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !1836, !alias.scope !1678, !nonnull !908, !noundef !908
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.if, !dbg !1837
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ii, ptr nonnull readonly align 1 %i.ie, i64 %gepdiff130, i1 false), !dbg !1838
  %.pre.i = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !dbg !1839, !alias.scope !1678
  br label %bb.ba, !dbg !1840

bb.ba:                                            ; preds = %bb.az, %.noexc26
  %i.ij = phi i64 [ %.pre.i, %bb.az ], [ %i.if, %.noexc26 ], !dbg !1839
  %i.ik = add i64 %i.ij, %gepdiff130, !dbg !1839
  store i64 %i.ik, ptr %.sroa.512.0..sroa_idx, align 8, !dbg !1839, !alias.scope !1678
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !1841
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1828
  ret void, !dbg !1842

.loopexit.i:                                      ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit16.i.i.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit14.i.i.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit12.i.i.i, %bb.ay, %bb.ax
  %.sroa.464.1260 = phi i64 [ %i.hh, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit14.i.i.i ], [ %.sroa.13108.0.copyload, %bb.ax ], [ %i.hh, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit16.i.i.i ], [ %i.hh, %bb.ay ], [ %i.hh, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit12.i.i.i ] ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.464.0210, !dbg !1757
  %gepdiff = sub nuw nsw i64 %.sroa.464.1260, %.sroa.464.0210, !dbg !1758 ; 3 uses
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs2Aa799EbAFJ_11polars_time(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %gepdiff)
          to label %.noexc29 unwind label %.loopexit134.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !dbg !1759

.noexc29:                                         ; preds = %.loopexit.i
  %i.im = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !dbg !1760, !alias.scope !1648, !noundef !908 ; 3 uses
  %i.in = icmp sgt i64 %i.im, -1, !dbg !1761
  call void @llvm.assume(i1 %i.in), !dbg !1762
  %.not.i27 = icmp eq i64 %.sroa.464.1260, %.sroa.464.0210, !dbg !1763
  br i1 %.not.i27, label %bb.bc, label %bb.bb, !dbg !1763

bb.bb:                                            ; preds = %.noexc29
  %i.io = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !1764, !alias.scope !1648, !nonnull !908, !noundef !908
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.im, !dbg !1765
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ip, ptr nonnull readonly align 1 %i.il, i64 %gepdiff, i1 false), !dbg !1766
  %.pre.i28 = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !dbg !1767, !alias.scope !1648
  br label %bb.bc, !dbg !1768

bb.bc:                                            ; preds = %.noexc29, %bb.bb
  %i.iq = phi i64 [ %.pre.i28, %bb.bb ], [ %i.im, %.noexc29 ], !dbg !1767
  %i.ir = add i64 %i.iq, %gepdiff, !dbg !1767
  store i64 %i.ir, ptr %.sroa.512.0..sroa_idx, align 8, !dbg !1767, !alias.scope !1648
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs2Aa799EbAFJ_11polars_time(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %5)
          to label %.noexc33 unwind label %.loopexit134.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !dbg !1769

.noexc33:                                         ; preds = %bb.bc
  %i.is = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !dbg !1770, !alias.scope !1654, !noundef !908 ; 2 uses
  %i.it = icmp sgt i64 %i.is, -1, !dbg !1771
  call void @llvm.assume(i1 %i.it), !dbg !1772
  %i.iu = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !1773, !alias.scope !1654, !nonnull !908, !noundef !908
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.is, !dbg !1774
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.iv, ptr noundef nonnull readonly align 1 dereferenceable(1) %4, i64 %5, i1 false), !dbg !1775
  %.pre.i32 = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !dbg !1776, !alias.scope !1654
  %i.iw = add i64 %.pre.i32, %5, !dbg !1776
  store i64 %i.iw, ptr %.sroa.512.0..sroa_idx, align 8, !dbg !1776, !alias.scope !1654
  br label %.lr.ph.i, !dbg !1777, !llvm.loop !1607

bb.bd:                                            ; preds = %.loopexit134.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp
  %i.ix = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #27, !dbg !1843
  unreachable, !dbg !1843

bb.be:                                            ; preds = %.loopexit134.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp, !dbg !1843
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden noundef i64 @_RINvMs7_NtCs7mBf7xsg8h_15crossbeam_epoch6atomicINtB6_6AtomicINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6BufferNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEE4swapINtB6_6SharedBW_EECs2Aa799EbAFJ_11polars_time(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef %1, i8 noundef range(i8 0, 5) %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #1 !dbg !1844 {
bb.a:
  switch i8 %2, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ], !dbg !1850

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.a = atomicrmw xchg ptr %0, i64 %1 monotonic, align 8, !dbg !1851
  br label %bb.g, !dbg !1851

bb.c:                                             ; preds = %bb.a
  %i.b = atomicrmw xchg ptr %0, i64 %1 release, align 8, !dbg !1852
  br label %bb.g, !dbg !1852

bb.d:                                             ; preds = %bb.a
  %i.c = atomicrmw xchg ptr %0, i64 %1 acquire, align 8, !dbg !1853
  br label %bb.g, !dbg !1853

bb.e:                                             ; preds = %bb.a
  %i.d = atomicrmw xchg ptr %0, i64 %1 acq_rel, align 8, !dbg !1854
  br label %bb.g, !dbg !1854

bb.f:                                             ; preds = %bb.a
  %i.e = atomicrmw xchg ptr %0, i64 %1 seq_cst, align 8, !dbg !1855
  br label %bb.g, !dbg !1855

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi i64 [ %i.a, %bb.b ], [ %i.b, %bb.c ], [ %i.c, %bb.d ], [ %i.d, %bb.e ], [ %i.e, %bb.f ], !dbg !1856
  ret i64 %.sroa.0.0, !dbg !1857
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils11slice_slicemECs2Aa799EbAFJ_11polars_time(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef range(i64 0, 2305843009213693952) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !1858 {
bb.a:
  %i.a = icmp slt i64 %2, 0, !dbg !1901
  %i.b = select i1 %i.a, i64 %1, i64 0, !dbg !1901
  %spec.select.i = add nsw i64 %i.b, %2, !dbg !1901 ; 3 uses
  %i.c = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %spec.select.i, i64 %3), !dbg !1902 ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 0, !dbg !1902
  %i.e = extractvalue { i64, i1 } %i.c, 1, !dbg !1902
  %i.f = icmp slt i64 %3, 0, !dbg !1903
  %i.g = xor i1 %i.f, %i.e, !dbg !1904
  br i1 %i.g, label %bb.b, label %_RNvNtCs1LHh8CLbVkQ_11polars_core5utils13slice_offsets.exit, !dbg !1905, !prof !923

bb.b:                                             ; preds = %bb.a
  br label %_RNvNtCs1LHh8CLbVkQ_11polars_core5utils13slice_offsets.exit, !dbg !1906

_RNvNtCs1LHh8CLbVkQ_11polars_core5utils13slice_offsets.exit: ; preds = %bb.a, %bb.b
  %.sroa.05.0.i = phi i64 [ 9223372036854775807, %bb.b ], [ %i.d, %bb.a ], !dbg !1907
  %.sroa.05.0.fr.i = freeze i64 %.sroa.05.0.i, !dbg !1908 ; 2 uses
  %i.h = icmp slt i64 %spec.select.i, 0, !dbg !1909
  %..i.i = tail call i64 @llvm.umin.i64(i64 %spec.select.i, i64 range(i64 0, 2305843009213693952) %1), !dbg !1909
  %.sroa.0.0.i.i = select i1 %i.h, i64 0, i64 %..i.i, !dbg !1909 ; 4 uses
  %i.i = icmp slt i64 %.sroa.05.0.fr.i, 0, !dbg !1908
  %..i10.i = tail call i64 @llvm.umin.i64(i64 %.sroa.05.0.fr.i, i64 range(i64 0, 2305843009213693952) %1), !dbg !1908
  %spec.select12.i = select i1 %i.i, i64 0, i64 %..i10.i, !dbg !1908 ; 3 uses
  %i.j = icmp samesign ult i64 %spec.select12.i, %.sroa.0.0.i.i, !dbg !1910
  br i1 %i.j, label %bb.c, label %bb.d, !dbg !1910, !prof !1899

bb.c:                                             ; preds = %_RNvNtCs1LHh8CLbVkQ_11polars_core5utils13slice_offsets.exit
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.0.i.i, i64 noundef %spec.select12.i, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #25, !dbg !1911
  unreachable, !dbg !1911

bb.d:                                             ; preds = %_RNvNtCs1LHh8CLbVkQ_11polars_core5utils13slice_offsets.exit
  %i.k = sub nuw nsw i64 %spec.select12.i, %.sroa.0.0.i.i, !dbg !1912
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.0.0.i.i, !dbg !1913
  %i.m = insertvalue { ptr, i64 } poison, ptr %i.l, 0, !dbg !1914
  %i.n = insertvalue { ptr, i64 } %i.m, i64 %i.k, 1, !dbg !1914
  ret { ptr, i64 } %i.n, !dbg !1914
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils13last_non_nullINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBZ_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvYINtNtNtB4_6series15implementations10SeriesWrapINtNtNtB4_13chunked_array7logical7LogicalNtNtB4_9datatypes16Categorical8TypeNtB4X_9UInt8TypeEENtNtB3B_12series_trait11SeriesTrait13last_non_null0EECs2Aa799EbAFJ_11polars_time(ptr nofree noundef nonnull readnone captures(address) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !1915 {
bb.a:
  %i.a = icmp eq i64 %2, 0, !dbg !1944
  br i1 %i.a, label %.loopexit, label %.preheader, !dbg !1944

.preheader:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1, !dbg !1945
  br i1 %i.b, label %.loopexit, label %.lr.ph, !dbg !1946

.lr.ph:                                           ; preds = %.preheader, %bb.f
  %.sroa.01.023 = phi i64 [ %.sroa.01.1, %bb.f ], [ 0, %.preheader ] ; 4 uses
  %.sroa.5.01322 = phi ptr [ %i.c, %bb.f ], [ %1, %.preheader ] ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %.sroa.5.01322, i64 -16, !dbg !1947 ; 3 uses
  %.val.i = load ptr, ptr %i.c, align 8, !dbg !1948, !noalias !1941, !nonnull !908, !noundef !908 ; 2 uses
  %i.d = getelementptr i8, ptr %.sroa.5.01322, i64 -8, !dbg !1948
  %.val3.i = load ptr, ptr %i.d, align 8, !dbg !1948, !noalias !1941, !nonnull !908, !align !1007, !noundef !908 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val3.i, i64 80, !dbg !1949
  %i.f = load ptr, ptr %i.e, align 8, !dbg !1949, !invariant.load !908, !nonnull !908
  %i.g = tail call noundef align 8 ptr %i.f(ptr noundef nonnull %.val.i), !dbg !1950 ; 3 uses
  %.not12 = icmp eq ptr %i.g, null, !dbg !1949
  br i1 %.not12, label %bb.c, label %bb.b, !dbg !1951

.loopexit:                                        ; preds = %bb.f, %.preheader, %bb.a, %.loopexit19
end_hunk_0
begin_hunk_1_@llvm.memmove.p0.p0.i64
!1540 = distinct !DILocation(line: 212, column: 54, scope: !1535, inlinedAt: !1539)
!1541 = distinct !DISubprogram(name: "eq<u8>", linkageName: "_RNvXsd_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullhENtNtB9_3cmp9PartialEq2eqCs2Aa799EbAFJ_11polars_time", scope: !974, file: !963, line: 1716, type: !913, scopeLine: 1716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !908)
!1542 = distinct !DISubprogram(name: "next<u8>", linkageName: "_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time", scope: !975, file: !966, line: 157, type: !913, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !908)
!1543 = distinct !DILexicalBlock(scope: !1542, file: !966, line: 161, column: 17)
!1544 = distinct !DILexicalBlock(scope: !1543, file: !966, line: 162, column: 17)
!1545 = distinct !DISubprogram(name: "next_code_point<core::slice::iter::Iter<u8>>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs2Aa799EbAFJ_11polars_time", scope: !1659, file: !1658, line: 35, type: !913, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !908)
!1546 = distinct !DISubprogram(name: "next", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next", scope: !1660, file: !1620, line: 39, type: !913, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !908)
!1547 = distinct !DILocation(line: 1129, column: 52, scope: !1517, inlinedAt: !1510)
!1548 = distinct !DILocation(line: 42, column: 18, scope: !1546, inlinedAt: !1547)
!1549 = distinct !DILocation(line: 37, column: 20, scope: !1545, inlinedAt: !1548)
!1550 = distinct !DILocation(line: 180, column: 28, scope: !1544, inlinedAt: !1549)
!1551 = distinct !{!1551, i1 true, !"_RINvNtNtCscgRAwXFJnXP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs2Aa799EbAFJ_11polars_time"}
!1552 = distinct !{!1552, !1551, !"_RINvNtNtCscgRAwXFJnXP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs2Aa799EbAFJ_11polars_time: argument 0"}
!1553 = distinct !DILexicalBlock(scope: !1545, file: !1658, line: 37, column: 5)
!1554 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullhE3addCs2Aa799EbAFJ_11polars_time", scope: !965, file: !963, line: 651, type: !913, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !908)
!1555 = distinct !DILocation(line: 185, column: 40, scope: !1544, inlinedAt: !1549)
!1556 = distinct !DISubprogram(name: "utf8_first_byte", linkageName: "_RNvNtNtCscgRAwXFJnXP_4core3str11validations15utf8_first_byte", scope: !1659, file: !1658, line: 10, type: !913, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !908)
!1557 = distinct !DILocation(line: 45, column: 16, scope: !1553, inlinedAt: !1548)
!1558 = distinct !DILexicalBlock(scope: !1553, file: !1658, line: 45, column: 5)
!1559 = distinct !DILocation(line: 48, column: 29, scope: !1558, inlinedAt: !1548)
!1560 = distinct !DILocation(line: 180, column: 28, scope: !1544, inlinedAt: !1559)
!1561 = distinct !DISubprogram(name: "utf8_acc_cont_byte", linkageName: "_RNvNtNtCscgRAwXFJnXP_4core3str11validations18utf8_acc_cont_byte", scope: !1659, file: !1658, line: 16, type: !913, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !908)
!1562 = distinct !DILexicalBlock(scope: !1558, file: !1658, line: 48, column: 5)
!1563 = distinct !DILocation(line: 49, column: 18, scope: !1562, inlinedAt: !1548)
!1564 = distinct !DILexicalBlock(scope: !1562, file: !1658, line: 49, column: 5)
!1565 = distinct !DILocation(line: 185, column: 40, scope: !1544, inlinedAt: !1559)
!1566 = distinct !DILocation(line: 55, column: 33, scope: !1564, inlinedAt: !1548)
!1567 = distinct !DILocation(line: 180, column: 28, scope: !1544, inlinedAt: !1566)
!1568 = distinct !DILexicalBlock(scope: !1564, file: !1658, line: 55, column: 9)
!1569 = distinct !DILocation(line: 56, column: 19, scope: !1568, inlinedAt: !1548)
!1570 = distinct !DILexicalBlock(scope: !1568, file: !1658, line: 56, column: 9)
!1571 = distinct !DILocation(line: 185, column: 40, scope: !1544, inlinedAt: !1566)
!1572 = distinct !DILocation(line: 63, column: 37, scope: !1570, inlinedAt: !1548)
!1573 = distinct !DILocation(line: 180, column: 28, scope: !1544, inlinedAt: !1572)
!1574 = distinct !DILexicalBlock(scope: !1570, file: !1658, line: 63, column: 13)
!1575 = distinct !DILocation(line: 64, column: 37, scope: !1574, inlinedAt: !1548)
!1576 = distinct !DISubprogram(name: "from_u32_unchecked", linkageName: "_RNvNtNtCscgRAwXFJnXP_4core4char7convert18from_u32_unchecked", scope: !1664, file: !1663, line: 26, type: !913, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !908)
!1577 = distinct !DISubprogram(name: "from_u32_unchecked", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core4char7methodsc18from_u32_unchecked", scope: !980, file: !978, line: 237, type: !913, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !908)
!1578 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvXNtNtCscgRAwXFJnXP_4core3str4iterNtB4_5CharsNtNtNtNtB8_4iter6traits8iterator8Iterator4next0Cs2Aa799EbAFJ_11polars_time", scope: !1665, file: !1620, line: 42, type: !913, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !908)
!1579 = distinct !DISubprogram(name: "map<u32, char, core::str::iter::{impl#0}::next::{closure_env#0}>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionmE3mapcNCNvXNtNtB5_3str4iterNtBU_5CharsNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECs2Aa799EbAFJ_11polars_time", scope: !983, file: !981, line: 1160, type: !913, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !908)
!1580 = distinct !DILexicalBlock(scope: !1579, file: !981, line: 1165, column: 13)
!1581 = distinct !DILocation(line: 42, column: 50, scope: !1546, inlinedAt: !1547)
!1582 = distinct !DILocation(line: 1165, column: 29, scope: !1580, inlinedAt: !1581)
!1583 = distinct !DILocation(line: 42, column: 59, scope: !1578, inlinedAt: !1582)
!1584 = distinct !DILocation(line: 239, column: 18, scope: !1577, inlinedAt: !1583)
!1585 = distinct !DISubprogram(name: "len_utf8", linkageName: "_RNvNtNtCscgRAwXFJnXP_4core4char7methods8len_utf8", scope: !979, file: !978, line: 2038, type: !913, scopeLine: 2038, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !908)
!1586 = distinct !DISubprogram(name: "len_utf8", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core4char7methodsc8len_utf8", scope: !980, file: !978, line: 645, type: !913, scopeLine: 645, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !908)
!1587 = distinct !DILexicalBlock(scope: !1517, file: !1616, line: 1135, column: 21)
!1588 = distinct !DILocation(line: 1136, column: 49, scope: !1587, inlinedAt: !1510)
!1589 = distinct !DILocation(line: 646, column: 9, scope: !1586, inlinedAt: !1588)
!1590 = distinct !DILexicalBlock(scope: !1457, file: !957, line: 190, column: 9)
!1591 = distinct !DILexicalBlock(scope: !1590, file: !957, line: 211, column: 13)
!1592 = distinct !DILocation(line: 138, column: 14, scope: !1467, inlinedAt: !1677)
!1593 = distinct !DILocation(line: 57, column: 30, scope: !1466, inlinedAt: !1592)
!1594 = distinct !DILocation(line: 953, column: 32, scope: !1463, inlinedAt: !1593)
!1595 = distinct !DILocation(line: 887, column: 37, scope: !1462, inlinedAt: !1594)
!1596 = distinct !DILexicalBlock(scope: !1470, file: !1645, line: 55, column: 9)
!1597 = distinct !DILocation(line: 56, column: 23, scope: !1596, inlinedAt: !1676)
!1598 = distinct !{!1598, i1 true, !"_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCs2Aa799EbAFJ_11polars_time"}
!1599 = distinct !{!1599, !1598, !"_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCs2Aa799EbAFJ_11polars_time: argument 0"}
!1600 = distinct !DILocation(line: 2907, column: 24, scope: !1476, inlinedAt: !1597)
!1601 = distinct !DILocation(line: 2910, column: 66, scope: !1484, inlinedAt: !1597)
!1602 = distinct !DILocation(line: 2026, column: 18, scope: !1488, inlinedAt: !1601)
!1603 = distinct !DILocation(line: 296, column: 20, scope: !1487, inlinedAt: !1602)
!1604 = distinct !DILocation(line: 609, column: 14, scope: !1486, inlinedAt: !1603)
!1605 = distinct !DILocation(line: 2910, column: 79, scope: !1484, inlinedAt: !1597)
!1606 = distinct !DILocation(line: 2910, column: 17, scope: !1484, inlinedAt: !1597)
!1607 = distinct !{!1607, !1679}
!1608 = !DIFile(filename: "library/alloc/src/str.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "df2687b23b15ff9362a5ffa3e0f54f56")
!1609 = !DINamespace(name: "str", scope: !907)
!1610 = !DINamespace(name: "{impl#5}", scope: !1609)
!1611 = !DILocation(line: 285, column: 26, scope: !1368)
!1612 = !DILocation(line: 485, column: 23, scope: !1371, inlinedAt: !1611)
!1613 = !DILocation(line: 524, column: 9, scope: !1372, inlinedAt: !1612)
!1614 = !DILocation(line: 977, column: 20, scope: !1373, inlinedAt: !1613)
!1615 = !DILocation(line: 287, column: 35, scope: !1383)
!1616 = !DIFile(filename: "library/core/src/str/pattern.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "2bb9f5bea796d79d9362cc14be34ca2d")
!1617 = !DINamespace(name: "pattern", scope: !928)
!1618 = !DINamespace(name: "{impl#31}", scope: !1617)
!1619 = !DINamespace(name: "{impl#33}", scope: !1617)
!1620 = !DIFile(filename: "library/core/src/str/iter.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "930179fefecf60d8f78cba5290f596b2")
!1621 = !DINamespace(name: "iter", scope: !928)
!1622 = !DINamespace(name: "MatchIndicesInternal", scope: !1621)
!1623 = !DILexicalBlockFile(scope: !1386, file: !1608, discriminator: 2)
!1624 = !DILocation(line: 287, column: 30, scope: !1623)
!1625 = !DILocation(line: 512, column: 24, scope: !1391, inlinedAt: !1624)
!1626 = !DINamespace(name: "{impl#91}", scope: !1621)
!1627 = !DINamespace(name: "TwoWaySearcher", scope: !1617)
!1628 = !DILocation(line: 0, scope: !1389, inlinedAt: !1392)
!1629 = !DILocation(line: 1472, column: 44, scope: !1395, inlinedAt: !1628)
!1630 = !DILocation(line: 576, column: 15, scope: !1397, inlinedAt: !1629)
!1631 = !{!1399}
!1632 = !{!1400}
!1633 = !DILexicalBlockFile(scope: !1408, file: !1616, discriminator: 2)
!1634 = !DINamespace(name: "{impl#7}", scope: !942)
!1635 = !DILexicalBlockFile(scope: !1424, file: !1616, discriminator: 2)
!1636 = !{!1436}
!1637 = !{!1437}
!1638 = !DILocation(line: 288, column: 43, scope: !1455)
!1639 = !DILocation(line: 687, column: 22, scope: !1456, inlinedAt: !1638)
!1640 = !DILocation(line: 212, column: 54, scope: !1459, inlinedAt: !1639)
!1641 = !DILocation(line: 288, column: 20, scope: !1455)
!1642 = !DILocation(line: 1102, column: 18, scope: !1468, inlinedAt: !1641)
!1643 = !DILocation(line: 3527, column: 14, scope: !1469, inlinedAt: !1642)
!1644 = !DILocation(line: 55, column: 30, scope: !1470, inlinedAt: !1643)
!1645 = !DIFile(filename: "library/alloc/src/vec/spec_extend.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "64fc232c5e502e0225698dc98d50caf8")
!1646 = !DINamespace(name: "spec_extend", scope: !919)
!1647 = !DINamespace(name: "{impl#4}", scope: !1646)
!1648 = !{!1480}
!1649 = !DILexicalBlockFile(scope: !1469, file: !918, discriminator: 2)
!1650 = !DILexicalBlockFile(scope: !1468, file: !915, discriminator: 2)
!1651 = !DILocation(line: 289, column: 20, scope: !1455)
!1652 = !DILocation(line: 1102, column: 18, scope: !1650, inlinedAt: !1651)
!1653 = !DILocation(line: 3527, column: 14, scope: !1649, inlinedAt: !1652)
!1654 = !{!1500}
!1655 = !DINamespace(name: "{impl#11}", scope: !958)
!1656 = !{!1523}
!1657 = !{!1529, !1528, !1526, !1525}
!1658 = !DIFile(filename: "library/core/src/str/validations.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "3ff4baf6e4458f1a7f4e35f76384ccd7")
!1659 = !DINamespace(name: "validations", scope: !928)
!1660 = !DINamespace(name: "{impl#0}", scope: !1621)
!1661 = !{!1552, !1529, !1528, !1526, !1525}
!1662 = !DILexicalBlockFile(scope: !1553, file: !976, discriminator: 0)
!1663 = !DIFile(filename: "library/core/src/char/convert.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "fdce958fc348cd3d447b8c64a2fb30f1")
!1664 = !DINamespace(name: "convert", scope: !977)
!1665 = !DINamespace(name: "next", scope: !1660)
!1666 = !DILexicalBlockFile(scope: !1591, file: !957, discriminator: 2)
!1667 = !DILexicalBlockFile(scope: !1456, file: !927, discriminator: 2)
!1668 = !DILocation(line: 292, column: 39, scope: !1383)
!1669 = !DILocation(line: 687, column: 22, scope: !1667, inlinedAt: !1668)
!1670 = !DILocation(line: 212, column: 54, scope: !1666, inlinedAt: !1669)
!1671 = !DILexicalBlockFile(scope: !1470, file: !1645, discriminator: 4)
!1672 = !DILexicalBlockFile(scope: !1469, file: !918, discriminator: 4)
!1673 = !DILexicalBlockFile(scope: !1468, file: !915, discriminator: 4)
!1674 = !DILocation(line: 292, column: 16, scope: !1383)
!1675 = !DILocation(line: 1102, column: 18, scope: !1673, inlinedAt: !1674)
!1676 = !DILocation(line: 3527, column: 14, scope: !1672, inlinedAt: !1675)
!1677 = !DILocation(line: 55, column: 30, scope: !1671, inlinedAt: !1676)
!1678 = !{!1599}
!1679 = !{!"llvm.loop.peeled.count", i32 1}
!1680 = !DILocation(line: 285, column: 13, scope: !1368)
!1681 = !DILocation(line: 434, column: 15, scope: !1369, inlinedAt: !1374)
!1682 = !DILocation(line: 434, column: 9, scope: !1369, inlinedAt: !1374)
!1683 = !DILocation(line: 0, scope: !1369, inlinedAt: !1374)
!1684 = !DILocation(line: 442, column: 17, scope: !1369, inlinedAt: !1374)
!1685 = !DILocation(line: 442, column: 25, scope: !1375, inlinedAt: !1374)
!1686 = !DILocation(line: 435, column: 16, scope: !1369, inlinedAt: !1374)
!1687 = !DILocation(line: 767, column: 9, scope: !1376, inlinedAt: !1378)
!1688 = !DILocation(line: 210, column: 9, scope: !1379, inlinedAt: !1380)
!1689 = !DILocation(line: 443, column: 9, scope: !1369, inlinedAt: !1374)
!1690 = !DILocation(line: 485, column: 9, scope: !1371, inlinedAt: !1611)
!1691 = !DILocation(line: 2104, column: 43, scope: !1381, inlinedAt: !1615)
!1692 = !DILocation(line: 976, column: 9, scope: !1384, inlinedAt: !1385)
!1693 = !DILocation(line: 2104, column: 22, scope: !1381, inlinedAt: !1615)
!1694 = !DILocation(line: 2104, column: 66, scope: !1381, inlinedAt: !1615)
!1695 = !DILocation(line: 287, column: 9, scope: !1386)
!1696 = !DILocation(line: 287, column: 30, scope: !1383)
!1697 = !DILocation(line: 0, scope: !1382)
!1698 = !DILocation(line: 1184, column: 20, scope: !1389, inlinedAt: !1392)
!1699 = !DILocation(line: 1472, column: 48, scope: !1395, inlinedAt: !1628)
!1700 = !DILocation(line: 219, column: 12, scope: !1396, inlinedAt: !1630)
!1701 = !DILocation(line: 1191, column: 30, scope: !1389, inlinedAt: !1392)
!1702 = !DILocation(line: 219, column: 12, scope: !1396, inlinedAt: !1403)
!1703 = !DILocation(line: 221, column: 27, scope: !1396, inlinedAt: !1403)
!1704 = !DILocation(line: 1473, column: 23, scope: !1395, inlinedAt: !1401)
!1705 = !DILocation(line: 1452, column: 27, scope: !1404, inlinedAt: !1406)
!1706 = !DILocation(line: 1452, column: 26, scope: !1404, inlinedAt: !1406)
!1707 = !DILocation(line: 1485, column: 17, scope: !1405, inlinedAt: !1401)
!1708 = !DILocation(line: 1495, column: 20, scope: !1405, inlinedAt: !1401)
!1709 = !DILocation(line: 1496, column: 13, scope: !1408, inlinedAt: !1401)
!1710 = !DILocation(line: 1917, column: 50, scope: !1409, inlinedAt: !1414)
!1711 = !DILocation(line: 781, column: 12, scope: !1410, inlinedAt: !1413)
!1712 = !DILocation(line: 898, column: 17, scope: !1415, inlinedAt: !1419)
!1713 = !DILocation(line: 1917, column: 50, scope: !1409, inlinedAt: !1428)
!1714 = !DILocation(line: 823, column: 12, scope: !1420, inlinedAt: !1427)
!1715 = !DILocation(line: 1497, column: 42, scope: !1429, inlinedAt: !1401)
!1716 = !DILocation(line: 1497, column: 33, scope: !1429, inlinedAt: !1401)
!1717 = !DILocation(line: 1497, column: 20, scope: !1429, inlinedAt: !1401)
!1718 = !DILocation(line: 1498, column: 21, scope: !1429, inlinedAt: !1401)
!1719 = !DILocation(line: 1499, column: 25, scope: !1429, inlinedAt: !1401)
!1720 = !DILocation(line: 1077, column: 17, scope: !1430, inlinedAt: !1433)
!1721 = !DILocation(line: 1509, column: 20, scope: !1434, inlinedAt: !1401)
!1722 = !DILocation(line: 1509, column: 42, scope: !1434, inlinedAt: !1401)
!1723 = !DILocation(line: 1509, column: 33, scope: !1434, inlinedAt: !1401)
!1724 = !DILocation(line: 1510, column: 21, scope: !1434, inlinedAt: !1401)
!1725 = !DILocation(line: 1511, column: 25, scope: !1434, inlinedAt: !1401)
!1726 = !DILocation(line: 1486, column: 17, scope: !1405, inlinedAt: !1401)
!1727 = !DILocation(line: 1487, column: 21, scope: !1405, inlinedAt: !1401)
!1728 = !DILocation(line: 1472, column: 48, scope: !1395, inlinedAt: !1401)
!1729 = !DILocation(line: 1185, column: 30, scope: !1389, inlinedAt: !1392)
!1730 = !DILocation(line: 219, column: 12, scope: !1396, inlinedAt: !1440)
!1731 = !DILocation(line: 221, column: 27, scope: !1396, inlinedAt: !1440)
!1732 = !DILocation(line: 1473, column: 23, scope: !1395, inlinedAt: !1438)
!1733 = !DILocation(line: 1452, column: 27, scope: !1404, inlinedAt: !1441)
!1734 = !DILocation(line: 1452, column: 26, scope: !1404, inlinedAt: !1441)
!1735 = !DILocation(line: 1485, column: 17, scope: !1405, inlinedAt: !1438)
!1736 = !DILocation(line: 781, column: 12, scope: !1410, inlinedAt: !1443)
!1737 = !DILocation(line: 898, column: 17, scope: !1415, inlinedAt: !1445)
!1738 = !DILocation(line: 1917, column: 50, scope: !1409, inlinedAt: !1446)
!1739 = !DILocation(line: 823, column: 12, scope: !1420, inlinedAt: !1449)
!1740 = !DILocation(line: 1497, column: 42, scope: !1429, inlinedAt: !1438)
!1741 = !DILocation(line: 1497, column: 33, scope: !1429, inlinedAt: !1438)
!1742 = !DILocation(line: 1497, column: 20, scope: !1429, inlinedAt: !1438)
!1743 = !DILocation(line: 1498, column: 21, scope: !1429, inlinedAt: !1438)
!1744 = !DILocation(line: 1499, column: 25, scope: !1429, inlinedAt: !1438)
!1745 = !DILocation(line: 1917, column: 50, scope: !1409, inlinedAt: !1450)
!1746 = !DILocation(line: 1077, column: 17, scope: !1430, inlinedAt: !1452)
!1747 = !DILocation(line: 1509, column: 20, scope: !1434, inlinedAt: !1438)
!1748 = !DILocation(line: 1509, column: 42, scope: !1434, inlinedAt: !1438)
!1749 = !DILocation(line: 1509, column: 33, scope: !1434, inlinedAt: !1438)
!1750 = !DILocation(line: 1510, column: 21, scope: !1434, inlinedAt: !1438)
!1751 = !DILocation(line: 1511, column: 25, scope: !1434, inlinedAt: !1438)
!1752 = !DILocation(line: 1486, column: 17, scope: !1405, inlinedAt: !1438)
!1753 = !DILocation(line: 1487, column: 21, scope: !1405, inlinedAt: !1438)
!1754 = !DILocation(line: 1472, column: 48, scope: !1395, inlinedAt: !1438)
!1755 = !DILocation(line: 1060, column: 9, scope: !1390, inlinedAt: !1625)
!1756 = !DILocation(line: 1522, column: 13, scope: !1453, inlinedAt: !1628)
!1757 = !DILocation(line: 863, column: 18, scope: !1454, inlinedAt: !1640)
!1758 = !DILocation(line: 729, column: 18, scope: !1461, inlinedAt: !1474)
!1759 = !DILocation(line: 2906, column: 14, scope: !1476, inlinedAt: !1478)
!1760 = !DILocation(line: 3024, column: 19, scope: !1481, inlinedAt: !1482)
!1761 = !DILocation(line: 3029, column: 37, scope: !1483, inlinedAt: !1482)
!1762 = !DILocation(line: 3029, column: 18, scope: !1483, inlinedAt: !1482)
!1763 = !DILocation(line: 2908, column: 12, scope: !1484, inlinedAt: !1478)
!1764 = !DILocation(line: 614, column: 9, scope: !1485, inlinedAt: !1492)
!1765 = !DILocation(line: 961, column: 18, scope: !1493, inlinedAt: !1494)
!1766 = !DILocation(line: 552, column: 14, scope: !1495, inlinedAt: !1496)
!1767 = !DILocation(line: 2913, column: 9, scope: !1484, inlinedAt: !1478)
!1768 = !DILocation(line: 2908, column: 9, scope: !1484, inlinedAt: !1478)
!1769 = !DILocation(line: 2906, column: 14, scope: !1476, inlinedAt: !1498)
!1770 = !DILocation(line: 3024, column: 19, scope: !1481, inlinedAt: !1501)
!1771 = !DILocation(line: 3029, column: 37, scope: !1483, inlinedAt: !1501)
!1772 = !DILocation(line: 3029, column: 18, scope: !1483, inlinedAt: !1501)
!1773 = !DILocation(line: 614, column: 9, scope: !1485, inlinedAt: !1505)
!1774 = !DILocation(line: 961, column: 18, scope: !1493, inlinedAt: !1506)
!1775 = !DILocation(line: 552, column: 14, scope: !1495, inlinedAt: !1507)
!1776 = !DILocation(line: 2913, column: 9, scope: !1484, inlinedAt: !1498)
!1777 = !DILocation(line: 1122, column: 20, scope: !1509, inlinedAt: !1510)
!1778 = !DILocation(line: 1126, column: 32, scope: !1509, inlinedAt: !1510)
!1779 = !DILocation(line: 378, column: 12, scope: !1511, inlinedAt: !1521)
!1780 = !DILocation(line: 382, column: 12, scope: !1511, inlinedAt: !1521)
!1781 = !DILocation(line: 392, column: 13, scope: !1511, inlinedAt: !1521)
!1782 = !DILocation(line: 508, column: 12, scope: !1512, inlinedAt: !1520)
!1783 = !DILocation(line: 394, column: 13, scope: !1511, inlinedAt: !1521)
!1784 = !DILocation(line: 1178, column: 9, scope: !1530, inlinedAt: !1531)
!1785 = !DILocation(line: 863, column: 18, scope: !1532, inlinedAt: !1540)
!1786 = !DILocation(line: 1717, column: 9, scope: !1541, inlinedAt: !1550)
!1787 = !DILocation(line: 180, column: 28, scope: !1544, inlinedAt: !1549)
!1788 = !DILocation(line: 37, column: 13, scope: !1545, inlinedAt: !1548)
!1789 = !DILocation(line: 38, column: 8, scope: !1553, inlinedAt: !1548)
!1790 = !DILocation(line: 659, column: 28, scope: !1554, inlinedAt: !1555)
!1791 = !DILocation(line: 11, column: 5, scope: !1556, inlinedAt: !1557)
!1792 = !DILocation(line: 1717, column: 9, scope: !1541, inlinedAt: !1560)
!1793 = !DILocation(line: 180, column: 28, scope: !1544, inlinedAt: !1559)
!1794 = !DILocation(line: 48, column: 22, scope: !1558, inlinedAt: !1548)
!1795 = !DILocation(line: 17, column: 5, scope: !1561, inlinedAt: !1563)
!1796 = !DILocation(line: 17, column: 17, scope: !1561, inlinedAt: !1563)
!1797 = !DILocation(line: 50, column: 8, scope: !1564, inlinedAt: !1548)
!1798 = !DILocation(line: 659, column: 28, scope: !1554, inlinedAt: !1565)
!1799 = !DILocation(line: 1717, column: 9, scope: !1541, inlinedAt: !1567)
!1800 = !DILocation(line: 180, column: 28, scope: !1544, inlinedAt: !1566)
!1801 = !DILocation(line: 55, column: 26, scope: !1564, inlinedAt: !1548)
!1802 = !DILocation(line: 17, column: 5, scope: !1561, inlinedAt: !1569)
!1803 = !DILocation(line: 17, column: 17, scope: !1561, inlinedAt: !1569)
!1804 = !DILocation(line: 57, column: 14, scope: !1570, inlinedAt: !1548)
!1805 = !DILocation(line: 57, column: 9, scope: !1570, inlinedAt: !1548)
!1806 = !DILocation(line: 58, column: 12, scope: !1570, inlinedAt: !1548)
!1807 = !DILocation(line: 659, column: 28, scope: !1554, inlinedAt: !1571)
!1808 = !DILocation(line: 1717, column: 9, scope: !1541, inlinedAt: !1573)
!1809 = !DILocation(line: 180, column: 28, scope: !1544, inlinedAt: !1572)
!1810 = !DILocation(line: 63, column: 30, scope: !1570, inlinedAt: !1548)
!1811 = !DILocation(line: 64, column: 18, scope: !1574, inlinedAt: !1548)
!1812 = !DILocation(line: 17, column: 5, scope: !1561, inlinedAt: !1575)
!1813 = !DILocation(line: 17, column: 17, scope: !1561, inlinedAt: !1575)
!1814 = !DILocation(line: 64, column: 13, scope: !1574, inlinedAt: !1548)
!1815 = !DILocation(line: 58, column: 9, scope: !1570, inlinedAt: !1548)
!1816 = !DILocation(line: 39, column: 21, scope: !1553, inlinedAt: !1548)
!1817 = !DILocation(line: 0, scope: !1662, inlinedAt: !1548)
!1818 = !DILocation(line: 34, column: 9, scope: !1576, inlinedAt: !1584)
!1819 = !DILocation(line: 1130, column: 26, scope: !1517, inlinedAt: !1510)
!1820 = !DILocation(line: 2040, column: 9, scope: !1585, inlinedAt: !1589)
!1821 = !DILocation(line: 2041, column: 9, scope: !1585, inlinedAt: !1589)
!1822 = !DILocation(line: 2042, column: 9, scope: !1585, inlinedAt: !1589)
!1823 = !DILocation(line: 0, scope: !1585, inlinedAt: !1589)
!1824 = !DILocation(line: 1136, column: 25, scope: !1587, inlinedAt: !1510)
!1825 = !DILocation(line: 543, column: 21, scope: !1514, inlinedAt: !1519)
!1826 = !DILocation(line: 1496, column: 13, scope: !1408, inlinedAt: !1438)
!1827 = !DILocation(line: 0, scope: !1407, inlinedAt: !1628)
!1828 = !DILocation(line: 294, column: 5, scope: !1368)
!1829 = !DILocation(line: 863, column: 18, scope: !1454, inlinedAt: !1670)
!1830 = !DILocation(line: 729, column: 18, scope: !1461, inlinedAt: !1595)
!1831 = !DILocation(line: 2906, column: 14, scope: !1476, inlinedAt: !1597)
!1832 = !DILocation(line: 3024, column: 19, scope: !1481, inlinedAt: !1600)
!1833 = !DILocation(line: 3029, column: 37, scope: !1483, inlinedAt: !1600)
!1834 = !DILocation(line: 3029, column: 18, scope: !1483, inlinedAt: !1600)
!1835 = !DILocation(line: 2908, column: 12, scope: !1484, inlinedAt: !1597)
!1836 = !DILocation(line: 614, column: 9, scope: !1485, inlinedAt: !1604)
!1837 = !DILocation(line: 961, column: 18, scope: !1493, inlinedAt: !1605)
!1838 = !DILocation(line: 552, column: 14, scope: !1495, inlinedAt: !1606)
!1839 = !DILocation(line: 2913, column: 9, scope: !1484, inlinedAt: !1597)
!1840 = !DILocation(line: 2908, column: 9, scope: !1484, inlinedAt: !1597)
!1841 = !DILocation(line: 293, column: 9, scope: !1383)
!1842 = !DILocation(line: 294, column: 6, scope: !1367)
!1843 = !DILocation(line: 268, column: 5, scope: !1367)
!1844 = distinct !DISubprogram(name: "swap<crossbeam_deque::deque::Buffer<rayon_core::job::JobRef>, crossbeam_epoch::atomic::Shared<crossbeam_deque::deque::Buffer<rayon_core::job::JobRef>>>", linkageName: "_RINvMs7_NtCs7mBf7xsg8h_15crossbeam_epoch6atomicINtB6_6AtomicINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6BufferNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEE4swapINtB6_6SharedBW_EECs2Aa799EbAFJ_11polars_time", scope: !1847, file: !984, line: 449, type: !913, scopeLine: 449, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !908)
!1845 = distinct !DISubprogram(name: "atomic_swap<usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic11atomic_swapjECs2Aa799EbAFJ_11polars_time", scope: !989, file: !987, line: 3916, type: !913, scopeLine: 3916, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !908)
!1846 = distinct !DISubprogram(name: "swap", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE4swap", scope: !990, file: !987, line: 2925, type: !913, scopeLine: 2925, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !908)
!1847 = !DINamespace(name: "Atomic", scope: !986)
!1848 = !DILocation(line: 450, column: 47, scope: !1844)
!1849 = !DILocation(line: 2927, column: 26, scope: !1846, inlinedAt: !1848)
!1850 = !DILocation(line: 3919, column: 9, scope: !1845, inlinedAt: !1849)
!1851 = !DILocation(line: 3920, column: 24, scope: !1845, inlinedAt: !1849)
!1852 = !DILocation(line: 3922, column: 24, scope: !1845, inlinedAt: !1849)
!1853 = !DILocation(line: 3921, column: 24, scope: !1845, inlinedAt: !1849)
!1854 = !DILocation(line: 3923, column: 23, scope: !1845, inlinedAt: !1849)
!1855 = !DILocation(line: 3924, column: 23, scope: !1845, inlinedAt: !1849)
!1856 = !DILocation(line: 0, scope: !1845, inlinedAt: !1849)
!1857 = !DILocation(line: 451, column: 6, scope: !1844)
!1858 = distinct !DISubprogram(name: "slice_slice<u32>", linkageName: "_RINvNtCs1LHh8CLbVkQ_11polars_core5utils11slice_slicemECs2Aa799EbAFJ_11polars_time", scope: !993, file: !991, line: 334, type: !913, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !908)
!1859 = distinct !DISubprogram(name: "slice_offsets", linkageName: "_RNvNtCs1LHh8CLbVkQ_11polars_core5utils13slice_offsets", scope: !993, file: !991, line: 340, type: !913, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !908)
!1860 = distinct !DILocation(line: 335, column: 35, scope: !1858)
!1861 = distinct !DISubprogram(name: "overflowing_add", linkageName: "_RNvMs1_NtCscgRAwXFJnXP_4core3numx15overflowing_add", scope: !1889, file: !994, line: 2498, type: !913, scopeLine: 2498, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !908)
!1862 = distinct !DISubprogram(name: "overflowing_add_unsigned", linkageName: "_RNvMs1_NtCscgRAwXFJnXP_4core3numx24overflowing_add_unsigned", scope: !1889, file: !994, line: 2581, type: !913, scopeLine: 2581, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !908)
!1863 = distinct !DILexicalBlock(scope: !1862, file: !994, line: 2582, column: 13)
!1864 = distinct !DISubprogram(name: "checked_add_unsigned", linkageName: "_RNvMs1_NtCscgRAwXFJnXP_4core3numx20checked_add_unsigned", scope: !1889, file: !994, line: 613, type: !913, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !908)
!1865 = distinct !DISubprogram(name: "saturating_add_unsigned", linkageName: "_RNvMs1_NtCscgRAwXFJnXP_4core3numx23saturating_add_unsigned", scope: !1889, file: !994, line: 1912, type: !913, scopeLine: 1912, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !908)
!1866 = distinct !DILexicalBlock(scope: !1859, file: !991, line: 341, column: 5)
!1867 = distinct !DILocation(line: 346, column: 50, scope: !1866, inlinedAt: !1860)
!1868 = distinct !DILocation(line: 1915, column: 24, scope: !1892, inlinedAt: !1867)
!1869 = distinct !DILocation(line: 614, column: 31, scope: !1891, inlinedAt: !1868)
!1870 = distinct !DILocation(line: 2583, column: 42, scope: !1890, inlinedAt: !1869)
!1871 = distinct !DILexicalBlock(scope: !1863, file: !994, line: 2583, column: 13)
!1872 = distinct !DISubprogram(name: "unlikely", linkageName: "_RNvNtCscgRAwXFJnXP_4core10intrinsics8unlikely", scope: !996, file: !995, line: 456, type: !913, scopeLine: 456, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !908)
!1873 = distinct !DILexicalBlock(scope: !1864, file: !994, line: 614, column: 13)
!1874 = distinct !DILocation(line: 615, column: 16, scope: !1893, inlinedAt: !1868)
!1875 = distinct !DISubprogram(name: "clamp", linkageName: "_RNvXs1f_NtNtCscgRAwXFJnXP_4core3cmp5implsxNtB8_3Ord5clamp", scope: !1894, file: !936, line: 2017, type: !909, scopeLine: 2017, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !908)
!1876 = distinct !DILexicalBlock(scope: !1866, file: !991, line: 346, column: 5)
!1877 = distinct !DILexicalBlock(scope: !1876, file: !991, line: 348, column: 5)
!1878 = distinct !DILexicalBlock(scope: !1877, file: !991, line: 351, column: 5)
!1879 = distinct !DILocation(line: 352, column: 50, scope: !1878, inlinedAt: !1860)
!1880 = distinct !DILocation(line: 351, column: 52, scope: !1877, inlinedAt: !1860)
!1881 = distinct !DISubprogram(name: "checked_sub", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj11checked_sub", scope: !947, file: !945, line: 971, type: !913, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !908)
!1882 = distinct !DILexicalBlock(scope: !1858, file: !991, line: 335, column: 5)
!1883 = distinct !DISubprogram(name: "index<u32, core::ops::range::Range<usize>>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexSmINtNtNtB6_3ops5index5IndexINtNtBI_5range5RangejEE5indexCs2Aa799EbAFJ_11polars_time", scope: !997, file: !930, line: 18, type: !913, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !908)
!1884 = distinct !DISubprogram(name: "index<u32>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexSmE5indexCs2Aa799EbAFJ_11polars_time", scope: !1898, file: !930, line: 435, type: !913, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !908)
!1885 = distinct !DILexicalBlock(scope: !1878, file: !991, line: 352, column: 5)
!1886 = distinct !DILexicalBlock(scope: !1885, file: !991, line: 354, column: 5)
!1887 = distinct !DISubprogram(name: "get_offset_len_noubcheck<u32>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubcheckmECs2Aa799EbAFJ_11polars_time", scope: !932, file: !930, line: 82, type: !913, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !908)
!1888 = distinct !DILexicalBlock(scope: !1887, file: !930, line: 87, column: 5)
!1889 = !DINamespace(name: "{impl#3}", scope: !946)
!1890 = !DILexicalBlockFile(scope: !1863, file: !994, discriminator: 2)
!1891 = !DILexicalBlockFile(scope: !1864, file: !994, discriminator: 2)
!1892 = !DILexicalBlockFile(scope: !1865, file: !994, discriminator: 2)
!1893 = !DILexicalBlockFile(scope: !1873, file: !994, discriminator: 2)
!1894 = !DINamespace(name: "{impl#79}", scope: !938)
!1895 = !DILocation(line: 336, column: 10, scope: !1882)
!1896 = !DILocation(line: 19, column: 15, scope: !1883, inlinedAt: !1895)
!1897 = !DILocation(line: 437, column: 32, scope: !1884, inlinedAt: !1896)
!1898 = !DINamespace(name: "{impl#4}", scope: !932)
!1899 = !{!"branch_weights", i32 4001, i32 4000000}
!1900 = !DILocation(line: 441, column: 24, scope: !1884, inlinedAt: !1896)
!1901 = !DILocation(line: 341, column: 34, scope: !1859, inlinedAt: !1860)
!1902 = !DILocation(line: 2499, column: 26, scope: !1861, inlinedAt: !1870)
!1903 = !DILocation(line: 2584, column: 32, scope: !1871, inlinedAt: !1869)
!1904 = !DILocation(line: 2584, column: 19, scope: !1871, inlinedAt: !1869)
!1905 = !DILocation(line: 457, column: 8, scope: !1872, inlinedAt: !1874)
!1906 = !DILocation(line: 1917, column: 25, scope: !1865, inlinedAt: !1867)
!1907 = !DILocation(line: 0, scope: !1865, inlinedAt: !1867)
!1908 = !DILocation(line: 2026, column: 24, scope: !1875, inlinedAt: !1879)
!1909 = !DILocation(line: 2026, column: 24, scope: !1875, inlinedAt: !1880)
!1910 = !DILocation(line: 977, column: 16, scope: !1881, inlinedAt: !1897)
!1911 = !DILocation(line: 443, column: 13, scope: !1884, inlinedAt: !1896)
!1912 = !DILocation(line: 355, column: 21, scope: !1886, inlinedAt: !1860)
!1913 = !DILocation(line: 89, column: 24, scope: !1888, inlinedAt: !1900)
!1914 = !DILocation(line: 337, column: 2, scope: !1858)
!1915 = distinct !DISubprogram(name: "last_non_null<core::iter::adapters::map::Map<core::slice::iter::Iter<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>>, polars_core::series::series_trait::SeriesTrait::last_non_null::{closure_env#0}<polars_core::series::implementations::SeriesWrap<polars_core::chunked_array::logical::Logical<polars_core::datatypes::Categorical8Type, polars_core::datatypes::UInt8Type>>>>>", linkageName: "_RINvNtCs1LHh8CLbVkQ_11polars_core5utils13last_non_nullINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBZ_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvYINtNtNtB4_6series15implementations10SeriesWrapINtNtNtB4_13chunked_array7logical7LogicalNtNtB4_9datatypes16Categorical8TypeNtB4X_9UInt8TypeEENtNtB3B_12series_trait11SeriesTrait13last_non_null0EECs2Aa799EbAFJ_11polars_time", scope: !993, file: !991, line: 1307, type: !913, scopeLine: 1307, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !908)
!1916 = distinct !DISubprogram(name: "next_back<&dyn polars_arrow::array::Array, core::slice::iter::Iter<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>>, polars_core::series::series_trait::SeriesTrait::last_non_null::{closure_env#0}<polars_core::series::implementations::SeriesWrap<polars_core::chunked_array::logical::Logical<polars_core::datatypes::Categorical8Type, polars_core::datatypes::UInt8Type>>>>", linkageName: "_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvYINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtNtB2V_13chunked_array7logical7LogicalNtNtB2V_9datatypes16Categorical8TypeNtB4E_9UInt8TypeEENtNtB2T_12series_trait11SeriesTrait13last_non_null0ENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs2Aa799EbAFJ_11polars_time", scope: !1001, file: !999, line: 148, type: !913, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !908)
!1917 = distinct !DISubprogram(name: "next<core::iter::adapters::map::Map<core::slice::iter::Iter<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>>, polars_core::series::series_trait::SeriesTrait::last_non_null::{closure_env#0}<polars_core::series::implementations::SeriesWrap<polars_core::chunked_array::logical::Logical<polars_core::datatypes::Categorical8Type, polars_core::datatypes::UInt8Type>>>>>", linkageName: "_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3revINtB4_3RevINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvYINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtNtB3a_13chunked_array7logical7LogicalNtNtB3a_9datatypes16Categorical8TypeNtB4T_9UInt8TypeEENtNtB38_12series_trait11SeriesTrait13last_non_null0EENtNtNtB8_6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time", scope: !952, file: !949, line: 52, type: !913, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !908)
!1918 = distinct !DILexicalBlock(scope: !1915, file: !991, line: 1314, column: 5)
!1919 = distinct !DILexicalBlock(scope: !1918, file: !991, line: 1315, column: 5)
!1920 = distinct !DILocation(line: 53, column: 19, scope: !1917, inlinedAt: !1940)
!1921 = distinct !DILocation(line: 149, column: 19, scope: !1916, inlinedAt: !1920)
!1922 = distinct !DILocation(line: 44, column: 20, scope: !4, inlinedAt: !1921)
!1923 = distinct !DILocation(line: 447, column: 35, scope: !2, inlinedAt: !1921)
!1924 = distinct !DILocation(line: 84, column: 31, scope: !10, inlinedAt: !1923)
!1925 = distinct !DILocation(line: 132, column: 36, scope: !9, inlinedAt: !1924)
!1926 = distinct !DILocation(line: 739, column: 27, scope: !6, inlinedAt: !1925)
!1927 = distinct !{!1927, i1 true, !"_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvYINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtNtB2V_13chunked_array7logical7LogicalNtNtB2V_9datatypes16Categorical8TypeNtB4E_9UInt8TypeEENtNtB2T_12series_trait11SeriesTrait13last_non_null0ENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs2Aa799EbAFJ_11polars_time"}
!1928 = distinct !{!1928, !1927, !"_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvYINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtNtB2V_13chunked_array7logical7LogicalNtNtB2V_9datatypes16Categorical8TypeNtB4E_9UInt8TypeEENtNtB2T_12series_trait11SeriesTrait13last_non_null0ENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs2Aa799EbAFJ_11polars_time: argument 0"}
!1929 = distinct !DISubprogram(name: "call_once<(&alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>), polars_core::series::series_trait::SeriesTrait::last_non_null::{closure_env#0}<polars_core::series::implementations::SeriesWrap<polars_core::chunked_array::logical::Logical<polars_core::datatypes::Categorical8Type, polars_core::datatypes::UInt8Type>>>>", linkageName: "_RNvXs2_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvYINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtNtB10_13chunked_array7logical7LogicalNtNtB10_9datatypes16Categorical8TypeNtB2J_9UInt8TypeEENtNtBY_12series_trait11SeriesTrait13last_non_null0INtB7_6FnOnceTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEE9call_onceCs2Aa799EbAFJ_11polars_time", scope: !1006, file: !1002, line: 309, type: !913, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !908)
!1930 = distinct !DISubprogram(name: "map<&alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>, &dyn polars_arrow::array::Array, &mut polars_core::series::series_trait::SeriesTrait::last_non_null::{closure_env#0}<polars_core::series::implementations::SeriesWrap<polars_core::chunked_array::logical::Logical<polars_core::datatypes::Categorical8Type, polars_core::datatypes::UInt8Type>>>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE3mapRB1i_QNCNvYINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtNtB2s_13chunked_array7logical7LogicalNtNtB2s_9datatypes16Categorical8TypeNtB4b_9UInt8TypeEENtNtB2q_12series_trait11SeriesTrait13last_non_null0ECs2Aa799EbAFJ_11polars_time", scope: !983, file: !981, line: 1160, type: !913, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !908)
!1931 = distinct !DILexicalBlock(scope: !1930, file: !981, line: 1165, column: 13)
!1932 = distinct !DILocation(line: 149, column: 31, scope: !1916, inlinedAt: !1920)
!1933 = distinct !DILocation(line: 1165, column: 29, scope: !1931, inlinedAt: !1932)
!1934 = distinct !DILexicalBlock(scope: !1919, file: !991, line: 1315, column: 5)
!1935 = distinct !DILexicalBlock(scope: !1934, file: !991, line: 1316, column: 44)
!1936 = distinct !DISubprogram(name: "len", linkageName: "_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap3len", scope: !1012, file: !1008, line: 120, type: !913, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !908)
!1937 = distinct !DILexicalBlock(scope: !1935, file: !991, line: 1317, column: 13)
!1938 = distinct !DILexicalBlock(scope: !1937, file: !991, line: 1318, column: 13)
!1939 = !DILexicalBlockFile(scope: !1919, file: !991, discriminator: 2)
!1940 = !DILocation(line: 1315, column: 16, scope: !1939)
!1941 = !{!1928}
!1942 = !DILocation(line: 1317, column: 33, scope: !1935)
!1943 = !DILexicalBlockFile(scope: !1934, file: !976, discriminator: 0)
!1944 = !DILocation(line: 1311, column: 8, scope: !1915)
!1945 = !DILocation(line: 1717, column: 9, scope: !1, inlinedAt: !1922)
!1946 = !DILocation(line: 25, column: 86, scope: !3, inlinedAt: !1921)
!1947 = !DILocation(line: 583, column: 28, scope: !5, inlinedAt: !1926)
!1948 = !DILocation(line: 310, column: 21, scope: !1929, inlinedAt: !1933)
!1949 = !DILocation(line: 1316, column: 29, scope: !1935)
!1950 = !DILocation(line: 1316, column: 33, scope: !1935)
!1951 = !DILocation(line: 1316, column: 16, scope: !1935)
end_hunk_1
