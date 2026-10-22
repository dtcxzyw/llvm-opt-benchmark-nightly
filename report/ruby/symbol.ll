Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/symbol?download=true
inline.NumInlined: 215
inline.NumDeleted: 75
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rb_concurrent_set_funcs = type { ptr, ptr, ptr, ptr }
%struct.rb_data_type_struct = type { ptr, %struct.anon.2, ptr, ptr, i64 }
%struct.anon.2 = type { ptr, ptr, ptr, ptr, [1 x ptr] }
%struct.rb_builtin_function = type { ptr, i32, i32, ptr }
%struct.anon.18 = type { i16, [3 x i8], i8 }
%struct.sym_set_static_sym_entry = type { i64, i64 }
%struct.RString = type { %struct.RBasic, i64, %union.anon }
%struct.RBasic = type { i64, i64 }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.global_symbol_table_foreach_weak_reference_data = type { ptr, ptr }

@ruby_global_symbols = hidden global { i32, [4 x i8], i64, i64 } { i32 251, [4 x i8] zeroinitializer, i64 0, i64 0 }, align 8
@sym_set_funcs = internal constant %struct.rb_concurrent_set_funcs { ptr @sym_set_hash, ptr @sym_set_cmp, ptr @sym_set_create, ptr @sym_set_free }, align 8
@.str = private unnamed_addr constant [38 x i8] c"cannot make operator ID :%li\0B attrset\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"cannot make unknown type ID %d:%li\0B attrset\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"cannot make unknown type anonymous ID %d:%lx attrset\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@rb_id_attrset.id_types = internal constant [8 x [8 x i8]] [[8 x i8] c"local\00\00\00", [8 x i8] c"instance", [8 x i8] c"invalid\00", [8 x i8] c"global\00\00", [8 x i8] c"attrset\00", [8 x i8] c"const\00\00\00", [8 x i8] c"class\00\00\00", [8 x i8] c"internal"], align 16
@.str.4 = private unnamed_addr constant [42 x i8] c"cannot make anonymous %.*s ID %lx attrset\00", align 1
@rb_eTypeError = external local_unnamed_addr global i64, align 8
@.str.6 = private unnamed_addr constant [41 x i8] c"wrong argument type %s (expected Symbol)\00", align 1
@rb_eRuntimeError = external local_unnamed_addr global i64, align 8
@.str.7 = private unnamed_addr constant [34 x i8] c"too big to make temporary ID: %zd\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"%+li\0B is not a symbol nor a string\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Symbol\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"VM/managed_id_table\00", align 1
@rb_managed_id_table_type = hidden constant %struct.rb_data_type_struct { ptr @.str.10, %struct.anon.2 { ptr null, ptr @managed_id_table_free, ptr @managed_id_table_memsize, ptr null, [1 x ptr] zeroinitializer }, ptr null, ptr null, i64 35 }, align 8
@Init_builtin_symbol.symbol_table = internal constant [3 x %struct.rb_builtin_function] [%struct.rb_builtin_function { ptr @builtin_inline_class_12, i32 0, i32 0, ptr @.str.11 }, %struct.rb_builtin_function { ptr @builtin_inline_class_28, i32 0, i32 1, ptr @.str.12 }, %struct.rb_builtin_function { ptr null, i32 0, i32 -1, ptr null }], align 16
@.str.11 = private unnamed_addr constant [6 x i8] c"_bi12\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"_bi28\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"symbol\00", align 1
@rb_cSymbol = external local_unnamed_addr global i64, align 8
@ruby_current_ec = external thread_local local_unnamed_addr global ptr, align 8
@op_tbl = internal constant [21 x %struct.anon.18] [%struct.anon.18 { i16 128, [3 x i8] c"..\00", i8 0 }, %struct.anon.18 { i16 129, [3 x i8] c"...", i8 0 }, %struct.anon.18 { i16 132, [3 x i8] c"+@\00", i8 0 }, %struct.anon.18 { i16 133, [3 x i8] c"-@\00", i8 0 }, %struct.anon.18 { i16 134, [3 x i8] c"**\00", i8 0 }, %struct.anon.18 { i16 135, [3 x i8] c"<=>", i8 0 }, %struct.anon.18 { i16 136, [3 x i8] c"<<\00", i8 0 }, %struct.anon.18 { i16 137, [3 x i8] c">>\00", i8 0 }, %struct.anon.18 { i16 138, [3 x i8] c"<=\00", i8 0 }, %struct.anon.18 { i16 139, [3 x i8] c">=\00", i8 0 }, %struct.anon.18 { i16 140, [3 x i8] c"==\00", i8 0 }, %struct.anon.18 { i16 141, [3 x i8] c"===", i8 0 }, %struct.anon.18 { i16 142, [3 x i8] c"!=\00", i8 0 }, %struct.anon.18 { i16 143, [3 x i8] c"=~\00", i8 0 }, %struct.anon.18 { i16 144, [3 x i8] c"!~\00", i8 0 }, %struct.anon.18 { i16 145, [3 x i8] c"[]\00", i8 0 }, %struct.anon.18 { i16 146, [3 x i8] c"[]=", i8 0 }, %struct.anon.18 { i16 147, [3 x i8] c"::\00", i8 0 }, %struct.anon.18 { i16 148, [3 x i8] c"&&\00", i8 0 }, %struct.anon.18 { i16 149, [3 x i8] c"||\00", i8 0 }, %struct.anon.18 { i16 150, [3 x i8] c"&.\00", i8 0 }], align 16
@.str.14 = private unnamed_addr constant [8 x i8] c"not sym\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"hash\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"freeze\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"nil?\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"inspect\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"intern\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"object_id\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"__id__\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"const_added\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"const_missing\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"method_missing\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"method_added\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"singleton_method_added\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"method_removed\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"singleton_method_removed\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"method_undefined\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"singleton_method_undefined\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"gets\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"succ\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"each\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"proc\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"lambda\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"send\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"__send__\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"__recursive_key__\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"initialize\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"initialize_copy\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"initialize_clone\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"initialize_dup\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"to_int\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"to_ary\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"to_str\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"to_sym\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"to_hash\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"to_proc\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"to_io\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"to_a\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"to_s\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"to_i\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"to_f\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"to_r\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"bt\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"bt_locations\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"mesg\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"exception\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"locals\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"div\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"divmod\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"fdiv\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"quo\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"pack\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"include?\00", align 1
@.str.78 = private unnamed_addr constant [8 x i8] c"aborted\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"exited\00", align 1
@.str.80 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"_1\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"_2\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"_3\00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c"_4\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"_5\00", align 1
@.str.86 = private unnamed_addr constant [3 x i8] c"_6\00", align 1
@.str.87 = private unnamed_addr constant [3 x i8] c"_7\00", align 1
@.str.88 = private unnamed_addr constant [3 x i8] c"_8\00", align 1
@.str.89 = private unnamed_addr constant [3 x i8] c"_9\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"<it>\00", align 1
@.str.91 = private unnamed_addr constant [3 x i8] c"it\00", align 1
@.str.92 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.93 = private unnamed_addr constant [7 x i8] c"empty?\00", align 1
@.str.94 = private unnamed_addr constant [5 x i8] c"eql?\00", align 1
@.str.95 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.96 = private unnamed_addr constant [12 x i8] c"respond_to?\00", align 1
@.str.97 = private unnamed_addr constant [20 x i8] c"respond_to_missing?\00", align 1
@.str.98 = private unnamed_addr constant [8 x i8] c"<IFUNC>\00", align 1
@.str.99 = private unnamed_addr constant [8 x i8] c"<CFUNC>\00", align 1
@.str.100 = private unnamed_addr constant [22 x i8] c"core#set_method_alias\00", align 1
@.str.101 = private unnamed_addr constant [24 x i8] c"core#set_variable_alias\00", align 1
@.str.102 = private unnamed_addr constant [18 x i8] c"core#undef_method\00", align 1
@.str.103 = private unnamed_addr constant [19 x i8] c"core#define_method\00", align 1
@.str.104 = private unnamed_addr constant [29 x i8] c"core#define_singleton_method\00", align 1
@.str.105 = private unnamed_addr constant [17 x i8] c"core#set_postexe\00", align 1
@.str.106 = private unnamed_addr constant [20 x i8] c"core#hash_merge_ptr\00", align 1
@.str.107 = private unnamed_addr constant [20 x i8] c"core#hash_merge_kwd\00", align 1
@.str.108 = private unnamed_addr constant [11 x i8] c"core#raise\00", align 1
@.str.109 = private unnamed_addr constant [13 x i8] c"core#sprintf\00", align 1
@.str.110 = private unnamed_addr constant [3 x i8] c"$_\00", align 1
@.str.111 = private unnamed_addr constant [3 x i8] c"$~\00", align 1
@.str.112 = private unnamed_addr constant [3 x i8] c"$!\00", align 1
@.str.113 = private unnamed_addr constant [5 x i8] c"Ruby\00", align 1
@rb_eEncodingError = external local_unnamed_addr global i64, align 8
@.str.114 = private unnamed_addr constant [37 x i8] c"invalid symbol in encoding %s :%+li\0B\00", align 1
@ruby_global_name_punct_bits = external local_unnamed_addr constant [3 x i32], align 4
@rb_sym_constant_char_p.ctype_titlecase = internal unnamed_addr global i32 0, align 4
@rb_sym_constant_char_p.cname = internal constant [16 x i8] c"titlecaseletter\00", align 16
@ruby_single_main_ractor = external local_unnamed_addr global ptr, align 8
@.str.115 = private unnamed_addr constant [50 x i8] c"non-symbol object %s:%lx for %li\0B in symbol table\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define hidden void @Init_sym() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = tail call i64 @rb_concurrent_set_new(ptr noundef nonnull @sym_set_funcs, i32 noundef 1024) #20
  store i64 %i.b, ptr getelementptr inbounds nuw (i8, ptr @ruby_global_symbols, i64 8), align 8, !tbaa !16
  %i.c = tail call i64 @rb_ary_hidden_new(i64 noundef 0) #20
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @ruby_global_symbols, i64 16), align 8, !tbaa !17
  %i.d = tail call nonnull ptr @rb_usascii_encoding() #20 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %0, %bb.a
  %indvars.iv.i = phi i64 [ 33, %bb.a ], [ %indvars.iv.next.i, %0 ] ; 5 uses
  %i.e = trunc nuw nsw i64 %indvars.iv.i to i32   ; 2 uses
  %i.f = and i32 %i.e, 95
  %i.g = add nsw i32 %i.f, -91
  %narrow.i.i.i = icmp ult i32 %i.g, -26
  %i.h = add nsw i32 %i.e, -58
  %i.i = icmp ult i32 %i.h, -10
  %narrow.i.not.i = and i1 %i.i, %narrow.i.i.i
  %i.j = icmp ne i64 %indvars.iv.i, 95
  %or.cond.i = and i1 %i.j, %narrow.i.not.i
  br i1 %or.cond.i, label %bb.c, label %0

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.k = trunc i64 %indvars.iv.i to i8
  store i8 %i.k, ptr %i.a, align 1, !tbaa !18
  %i.l = call fastcc i64 @register_static_symid(i64 noundef %indvars.iv.i, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %0

0:                                                ; preds = %bb.c, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 127
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.b, !llvm.loop !60

.preheader.i:                                     ; preds = %0, %bb.d
  %indvars.iv19.i = phi i64 [ %indvars.iv.next.i.a, %bb.d ], [ 0, %0 ] ; 2 uses
  %1 = getelementptr [6 x i8], ptr @op_tbl, i64 %indvars.iv19.i ; 4 uses
  %2 = load i16, ptr %1, align 2, !tbaa !64
  %3 = zext i16 %2 to i64
  %4 = getelementptr i8, ptr %1, i64 2
  %5 = getelementptr i8, ptr %1, i64 3
  %6 = load i8, ptr %5, align 1, !tbaa !18
  %.not.i = icmp eq i8 %6, 0
  br i1 %.not.i, label %bb.d, label %7

7:                                                ; preds = %.preheader.i
  %8 = getelementptr i8, ptr %1, i64 4
  %9 = load i8, ptr %8, align 2, !tbaa !18
  %.not14.i = icmp eq i8 %9, 0
  %10 = select i1 %.not14.i, i64 2, i64 3
  br label %bb.d

bb.d:                                             ; preds = %7, %.preheader.i
  %11 = phi i64 [ %10, %7 ], [ 1, %.preheader.i ]
  %12 = call fastcc i64 @register_static_symid(i64 noundef %3, ptr noundef %4, i64 noundef %11, ptr noundef %i.d) ; 0 uses
  %indvars.iv.next.i.a = add nuw nsw i64 %indvars.iv19.i, 1 ; 2 uses
  %exitcond.not.i.a = icmp eq i64 %indvars.iv.next.i.a, 21
  br i1 %exitcond.not.i.a, label %Init_op_tbl.exit, label %.preheader.i, !llvm.loop !61

Init_op_tbl.exit:                                 ; preds = %bb.d
  %i.m = call nonnull ptr @rb_usascii_encoding() #20 ; 99 uses
  %i.n = call fastcc i64 @register_static_symid(i64 noundef 2753, ptr noundef nonnull @.str.15, i64 noundef 3, ptr noundef %i.m) ; 0 uses
  %i.o = call fastcc i64 @register_static_symid(i64 noundef 2769, ptr noundef nonnull @.str.16, i64 noundef 3, ptr noundef %i.m) ; 0 uses
  %i.p = call fastcc i64 @register_static_symid(i64 noundef 2785, ptr noundef nonnull @.str.17, i64 noundef 4, ptr noundef %i.m) ; 0 uses
  %i.q = call fastcc i64 @register_static_symid(i64 noundef 2801, ptr noundef nonnull @.str.18, i64 noundef 6, ptr noundef %i.m) ; 0 uses
  %i.r = call fastcc i64 @register_static_symid(i64 noundef 151, ptr noundef nonnull @.str.19, i64 noundef 4, ptr noundef %i.m) ; 0 uses
  %i.s = call fastcc i64 @register_static_symid(i64 noundef 2817, ptr noundef nonnull @.str.20, i64 noundef 7, ptr noundef %i.m) ; 0 uses
  %i.t = call fastcc i64 @register_static_symid(i64 noundef 2833, ptr noundef nonnull @.str.21, i64 noundef 6, ptr noundef %i.m) ; 0 uses
  %i.u = call fastcc i64 @register_static_symid(i64 noundef 2849, ptr noundef nonnull @.str.22, i64 noundef 9, ptr noundef %i.m) ; 0 uses
  %i.v = call fastcc i64 @register_static_symid(i64 noundef 2865, ptr noundef nonnull @.str.23, i64 noundef 6, ptr noundef %i.m) ; 0 uses
  %i.w = call fastcc i64 @register_static_symid(i64 noundef 2881, ptr noundef nonnull @.str.24, i64 noundef 11, ptr noundef %i.m) ; 0 uses
  %i.x = call fastcc i64 @register_static_symid(i64 noundef 2897, ptr noundef nonnull @.str.25, i64 noundef 13, ptr noundef %i.m) ; 0 uses
  %i.y = call fastcc i64 @register_static_symid(i64 noundef 2913, ptr noundef nonnull @.str.26, i64 noundef 14, ptr noundef %i.m) ; 0 uses
  %i.z = call fastcc i64 @register_static_symid(i64 noundef 2929, ptr noundef nonnull @.str.27, i64 noundef 12, ptr noundef %i.m) ; 0 uses
  %i.aa = call fastcc i64 @register_static_symid(i64 noundef 2945, ptr noundef nonnull @.str.28, i64 noundef 22, ptr noundef %i.m) ; 0 uses
  %i.ab = call fastcc i64 @register_static_symid(i64 noundef 2961, ptr noundef nonnull @.str.29, i64 noundef 14, ptr noundef %i.m) ; 0 uses
  %i.ac = call fastcc i64 @register_static_symid(i64 noundef 2977, ptr noundef nonnull @.str.30, i64 noundef 24, ptr noundef %i.m) ; 0 uses
  %i.ad = call fastcc i64 @register_static_symid(i64 noundef 2993, ptr noundef nonnull @.str.31, i64 noundef 16, ptr noundef %i.m) ; 0 uses
  %i.ae = call fastcc i64 @register_static_symid(i64 noundef 3009, ptr noundef nonnull @.str.32, i64 noundef 26, ptr noundef %i.m) ; 0 uses
  %i.af = call fastcc i64 @register_static_symid(i64 noundef 3025, ptr noundef nonnull @.str.33, i64 noundef 6, ptr noundef %i.m) ; 0 uses
  %i.ag = call fastcc i64 @register_static_symid(i64 noundef 3041, ptr noundef nonnull @.str.34, i64 noundef 4, ptr noundef %i.m) ; 0 uses
  %i.ah = call fastcc i64 @register_static_symid(i64 noundef 3057, ptr noundef nonnull @.str.35, i64 noundef 4, ptr noundef %i.m) ; 0 uses
  %i.ai = call fastcc i64 @register_static_symid(i64 noundef 3073, ptr noundef nonnull @.str.36, i64 noundef 4, ptr noundef %i.m) ; 0 uses
  %i.aj = call fastcc i64 @register_static_symid(i64 noundef 3089, ptr noundef nonnull @.str.37, i64 noundef 4, ptr noundef %i.m) ; 0 uses
  %i.ak = call fastcc i64 @register_static_symid(i64 noundef 3105, ptr noundef nonnull @.str.38, i64 noundef 4, ptr noundef %i.m) ; 0 uses
  %i.al = call fastcc i64 @register_static_symid(i64 noundef 3121, ptr noundef nonnull @.str.39, i64 noundef 6, ptr noundef %i.m) ; 0 uses
  %i.am = call fastcc i64 @register_static_symid(i64 noundef 3137, ptr noundef nonnull @.str.40, i64 noundef 4, ptr noundef %i.m) ; 0 uses
  %i.an = call fastcc i64 @register_static_symid(i64 noundef 3153, ptr noundef nonnull @.str.41, i64 noundef 8, ptr noundef %i.m) ; 0 uses
  %i.ao = call fastcc i64 @register_static_symid(i64 noundef 3169, ptr noundef nonnull @.str.42, i64 noundef 17, ptr noundef %i.m) ; 0 uses
  %i.ap = call fastcc i64 @register_static_symid(i64 noundef 3185, ptr noundef nonnull @.str.43, i64 noundef 10, ptr noundef %i.m) ; 0 uses
  %i.aq = call fastcc i64 @register_static_symid(i64 noundef 3201, ptr noundef nonnull @.str.44, i64 noundef 15, ptr noundef %i.m) ; 0 uses
  %i.ar = call fastcc i64 @register_static_symid(i64 noundef 3217, ptr noundef nonnull @.str.45, i64 noundef 16, ptr noundef %i.m) ; 0 uses
  %i.as = call fastcc i64 @register_static_symid(i64 noundef 3233, ptr noundef nonnull @.str.46, i64 noundef 14, ptr noundef %i.m) ; 0 uses
  %i.at = call fastcc i64 @register_static_symid(i64 noundef 3249, ptr noundef nonnull @.str.47, i64 noundef 6, ptr noundef %i.m) ; 0 uses
  %i.au = call fastcc i64 @register_static_symid(i64 noundef 3265, ptr noundef nonnull @.str.48, i64 noundef 6, ptr noundef %i.m) ; 0 uses
  %i.av = call fastcc i64 @register_static_symid(i64 noundef 3281, ptr noundef nonnull @.str.49, i64 noundef 6, ptr noundef %i.m) ; 0 uses
  %i.aw = call fastcc i64 @register_static_symid(i64 noundef 3297, ptr noundef nonnull @.str.50, i64 noundef 6, ptr noundef %i.m) ; 0 uses
  %i.ax = call fastcc i64 @register_static_symid(i64 noundef 3313, ptr noundef nonnull @.str.51, i64 noundef 7, ptr noundef %i.m) ; 0 uses
  %i.ay = call fastcc i64 @register_static_symid(i64 noundef 3329, ptr noundef nonnull @.str.52, i64 noundef 7, ptr noundef %i.m) ; 0 uses
  %i.az = call fastcc i64 @register_static_symid(i64 noundef 3345, ptr noundef nonnull @.str.53, i64 noundef 5, ptr noundef %i.m) ; 0 uses
  %i.ba = call fastcc i64 @register_static_symid(i64 noundef 3361, ptr noundef nonnull @.str.54, i64 noundef 4, ptr noundef %i.m) ; 0 uses
  %i.bb = call fastcc i64 @register_static_symid(i64 noundef 3377, ptr noundef nonnull @.str.55, i64 noundef 4, ptr noundef %i.m) ; 0 uses
  %i.bc = call fastcc i64 @register_static_symid(i64 noundef 3393, ptr noundef nonnull @.str.56, i64 noundef 4, ptr noundef %i.m) ; 0 uses
  %i.bd = call fastcc i64 @register_static_symid(i64 noundef 3409, ptr noundef nonnull @.str.57, i64 noundef 4, ptr noundef %i.m) ; 0 uses
  %i.be = call fastcc i64 @register_static_symid(i64 noundef 3425, ptr noundef nonnull @.str.58, i64 noundef 4, ptr noundef %i.m) ; 0 uses
  %i.bf = call fastcc i64 @register_static_symid(i64 noundef 3441, ptr noundef nonnull @.str.59, i64 noundef 2, ptr noundef %i.m) ; 0 uses
  %i.bg = call fastcc i64 @register_static_symid(i64 noundef 3457, ptr noundef nonnull @.str.60, i64 noundef 12, ptr noundef %i.m) ; 0 uses
  %i.bh = call fastcc i64 @register_static_symid(i64 noundef 3473, ptr noundef nonnull @.str.61, i64 noundef 4, ptr noundef %i.m) ; 0 uses
  %i.bi = call fastcc i64 @register_static_symid(i64 noundef 3489, ptr noundef nonnull @.str.62, i64 noundef 4, ptr noundef %i.m) ; 0 uses
  %i.bj = call fastcc i64 @register_static_symid(i64 noundef 3505, ptr noundef nonnull @.str.63, i64 noundef 9, ptr noundef %i.m) ; 0 uses
  %i.bk = call fastcc i64 @register_static_symid(i64 noundef 3521, ptr noundef nonnull @.str.64, i64 noundef 6, ptr noundef %i.m) ; 0 uses
  %i.bl = call fastcc i64 @register_static_symid(i64 noundef 3537, ptr noundef nonnull @.str.65, i64 noundef 3, ptr noundef %i.m) ; 0 uses
  %i.bm = call fastcc i64 @register_static_symid(i64 noundef 3553, ptr noundef nonnull @.str.66, i64 noundef 3, ptr noundef %i.m) ; 0 uses
  %i.bn = call fastcc i64 @register_static_symid(i64 noundef 3569, ptr noundef nonnull @.str.67, i64 noundef 2, ptr noundef %i.m) ; 0 uses
  %i.bo = call fastcc i64 @register_static_symid(i64 noundef 3585, ptr noundef nonnull @.str.68, i64 noundef 3, ptr noundef %i.m) ; 0 uses
  %i.bp = call fastcc i64 @register_static_symid(i64 noundef 3601, ptr noundef nonnull @.str.69, i64 noundef 6, ptr noundef %i.m) ; 0 uses
  %i.bq = call fastcc i64 @register_static_symid(i64 noundef 3617, ptr noundef nonnull @.str.70, i64 noundef 4, ptr noundef %i.m) ; 0 uses
  %i.br = call fastcc i64 @register_static_symid(i64 noundef 3633, ptr noundef nonnull @.str.71, i64 noundef 3, ptr noundef %i.m) ; 0 uses
  %i.bs = call fastcc i64 @register_static_symid(i64 noundef 3649, ptr noundef nonnull @.str.72, i64 noundef 4, ptr noundef %i.m) ; 0 uses
  %i.bt = call fastcc i64 @register_static_symid(i64 noundef 3665, ptr noundef nonnull @.str.73, i64 noundef 3, ptr noundef %i.m) ; 0 uses
  %i.bu = call fastcc i64 @register_static_symid(i64 noundef 3681, ptr noundef nonnull @.str.74, i64 noundef 4, ptr noundef %i.m) ; 0 uses
  %i.bv = call fastcc i64 @register_static_symid(i64 noundef 3697, ptr noundef nonnull @.str.75, i64 noundef 4, ptr noundef %i.m) ; 0 uses
  %i.bw = call fastcc i64 @register_static_symid(i64 noundef 3713, ptr noundef nonnull @.str.76, i64 noundef 6, ptr noundef %i.m) ; 0 uses
  %i.bx = call fastcc i64 @register_static_symid(i64 noundef 152, ptr noundef nonnull @.str.77, i64 noundef 8, ptr noundef %i.m) ; 0 uses
  %i.by = call fastcc i64 @register_static_symid(i64 noundef 3729, ptr noundef nonnull @.str.78, i64 noundef 7, ptr noundef %i.m) ; 0 uses
  %i.bz = call fastcc i64 @register_static_symid(i64 noundef 3745, ptr noundef nonnull @.str.79, i64 noundef 6, ptr noundef %i.m) ; 0 uses
  %i.ca = call fastcc i64 @register_static_symid(i64 noundef 3761, ptr noundef nonnull @.str.80, i64 noundef 1, ptr noundef %i.m) ; 0 uses
  %i.cb = call fastcc i64 @register_static_symid(i64 noundef 3777, ptr noundef nonnull @.str.81, i64 noundef 2, ptr noundef %i.m) ; 0 uses
  %i.cc = call fastcc i64 @register_static_symid(i64 noundef 3793, ptr noundef nonnull @.str.82, i64 noundef 2, ptr noundef %i.m) ; 0 uses
  %i.cd = call fastcc i64 @register_static_symid(i64 noundef 3809, ptr noundef nonnull @.str.83, i64 noundef 2, ptr noundef %i.m) ; 0 uses
  %i.ce = call fastcc i64 @register_static_symid(i64 noundef 3825, ptr noundef nonnull @.str.84, i64 noundef 2, ptr noundef %i.m) ; 0 uses
  %i.cf = call fastcc i64 @register_static_symid(i64 noundef 3841, ptr noundef nonnull @.str.85, i64 noundef 2, ptr noundef %i.m) ; 0 uses
  %i.cg = call fastcc i64 @register_static_symid(i64 noundef 3857, ptr noundef nonnull @.str.86, i64 noundef 2, ptr noundef %i.m) ; 0 uses
  %i.ch = call fastcc i64 @register_static_symid(i64 noundef 3873, ptr noundef nonnull @.str.87, i64 noundef 2, ptr noundef %i.m) ; 0 uses
  %i.ci = call fastcc i64 @register_static_symid(i64 noundef 3889, ptr noundef nonnull @.str.88, i64 noundef 2, ptr noundef %i.m) ; 0 uses
  %i.cj = call fastcc i64 @register_static_symid(i64 noundef 3905, ptr noundef nonnull @.str.89, i64 noundef 2, ptr noundef %i.m) ; 0 uses
  %i.ck = call fastcc i64 @register_static_symid(i64 noundef 153, ptr noundef nonnull @.str.90, i64 noundef 4, ptr noundef %i.m) ; 0 uses
  %i.cl = call fastcc i64 @register_static_symid(i64 noundef 3921, ptr noundef nonnull @.str.91, i64 noundef 2, ptr noundef %i.m) ; 0 uses
  %i.cm = call fastcc i64 @register_static_symid(i64 noundef 154, ptr noundef nonnull @.str.92, i64 noundef 0, ptr noundef %i.m) ; 0 uses
  %i.cn = call fastcc i64 @register_static_symid(i64 noundef 155, ptr noundef nonnull @.str.93, i64 noundef 6, ptr noundef %i.m) ; 0 uses
  %i.co = call fastcc i64 @register_static_symid(i64 noundef 156, ptr noundef nonnull @.str.94, i64 noundef 4, ptr noundef %i.m) ; 0 uses
  %i.cp = call fastcc i64 @register_static_symid(i64 noundef 3937, ptr noundef nonnull @.str.95, i64 noundef 7, ptr noundef %i.m) ; 0 uses
  %i.cq = call fastcc i64 @register_static_symid(i64 noundef 157, ptr noundef nonnull @.str.96, i64 noundef 11, ptr noundef %i.m) ; 0 uses
  %i.cr = call fastcc i64 @register_static_symid(i64 noundef 158, ptr noundef nonnull @.str.97, i64 noundef 19, ptr noundef %i.m) ; 0 uses
  %i.cs = call fastcc i64 @register_static_symid(i64 noundef 159, ptr noundef nonnull @.str.98, i64 noundef 7, ptr noundef %i.m) ; 0 uses
  %i.ct = call fastcc i64 @register_static_symid(i64 noundef 160, ptr noundef nonnull @.str.99, i64 noundef 7, ptr noundef %i.m) ; 0 uses
  %i.cu = call fastcc i64 @register_static_symid(i64 noundef 161, ptr noundef nonnull @.str.100, i64 noundef 21, ptr noundef %i.m) ; 0 uses
  %i.cv = call fastcc i64 @register_static_symid(i64 noundef 162, ptr noundef nonnull @.str.101, i64 noundef 23, ptr noundef %i.m) ; 0 uses
  %i.cw = call fastcc i64 @register_static_symid(i64 noundef 163, ptr noundef nonnull @.str.102, i64 noundef 17, ptr noundef %i.m) ; 0 uses
  %i.cx = call fastcc i64 @register_static_symid(i64 noundef 164, ptr noundef nonnull @.str.103, i64 noundef 18, ptr noundef %i.m) ; 0 uses
  %i.cy = call fastcc i64 @register_static_symid(i64 noundef 165, ptr noundef nonnull @.str.104, i64 noundef 28, ptr noundef %i.m) ; 0 uses
  %i.cz = call fastcc i64 @register_static_symid(i64 noundef 166, ptr noundef nonnull @.str.105, i64 noundef 16, ptr noundef %i.m) ; 0 uses
  %i.da = call fastcc i64 @register_static_symid(i64 noundef 167, ptr noundef nonnull @.str.106, i64 noundef 19, ptr noundef %i.m) ; 0 uses
  %i.db = call fastcc i64 @register_static_symid(i64 noundef 168, ptr noundef nonnull @.str.107, i64 noundef 19, ptr noundef %i.m) ; 0 uses
  %i.dc = call fastcc i64 @register_static_symid(i64 noundef 169, ptr noundef nonnull @.str.108, i64 noundef 10, ptr noundef %i.m) ; 0 uses
  %i.dd = call fastcc i64 @register_static_symid(i64 noundef 170, ptr noundef nonnull @.str.109, i64 noundef 12, ptr noundef %i.m) ; 0 uses
  %i.de = call fastcc i64 @register_static_symid(i64 noundef 3959, ptr noundef nonnull @.str.110, i64 noundef 2, ptr noundef %i.m) ; 0 uses
  %i.df = call fastcc i64 @register_static_symid(i64 noundef 3975, ptr noundef nonnull @.str.111, i64 noundef 2, ptr noundef %i.m) ; 0 uses
  %i.dg = call fastcc i64 @register_static_symid(i64 noundef 3991, ptr noundef nonnull @.str.112, i64 noundef 2, ptr noundef %i.m) ; 0 uses
  %i.dh = call fastcc i64 @register_static_symid(i64 noundef 4011, ptr noundef nonnull @.str.113, i64 noundef 4, ptr noundef %i.m) ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i64 @rb_concurrent_set_new(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @rb_ary_hidden_new(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_sym_global_symbols_mark_and_move() local_unnamed_addr #0 {
bb.a:
  tail call void @rb_gc_mark_and_move(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ruby_global_symbols, i64 8)) #20
  tail call void @rb_gc_mark_and_move(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ruby_global_symbols, i64 16)) #20
  ret void
}

declare void @rb_gc_mark_and_move(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_free_global_symbol_table() local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @ruby_global_symbols, i64 8), align 8, !tbaa !16
  tail call void @rb_concurrent_set_foreach_with_replace(i64 noundef %i.a, ptr noundef nonnull @rb_free_global_symbol_table_i, ptr noundef null) #20
  ret void
}

declare void @rb_concurrent_set_foreach_with_replace(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @rb_free_global_symbol_table_i(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %sym_set_free.exit

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %i.a, -2
  %i.d = inttoptr i64 %i.c to ptr
  tail call void @ruby_xfree(ptr noundef %i.d) #20
  br label %sym_set_free.exit

sym_set_free.exit:                                ; preds = %bb.a, %bb.b
  ret i32 2
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_id_attrset(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.sym_set_static_sym_entry, align 8 ; 5 uses
  %i.a = icmp ugt i64 %0, 171
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %trunc = trunc nuw i64 %0 to i8
  %trunc.off = add i8 %trunc, 111
  %switch = icmp ult i8 %trunc.off, 2
  br i1 %switch, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i64 @rb_id2str(i64 noundef %0)
  tail call void (i64, ptr, ...) @rb_name_error(i64 noundef %0, ptr noundef nonnull @.str, i64 noundef %i.b) #21
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.c = trunc i64 %0 to i32
  %i.d = and i32 %i.c, 14
  switch i32 %i.d, label %.unreachabledefault [
    i32 0, label %bb.h
    i32 2, label %bb.h
    i32 6, label %bb.h
    i32 10, label %bb.h
    i32 12, label %bb.h
    i32 14, label %bb.h
    i32 8, label %bb.q
    i32 4, label %bb.e
  ]

.unreachabledefault:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.e = lshr i64 %0, 4
  %.0.i.i.i = trunc i64 %i.e to i32
  %i.f = tail call fastcc i64 @get_id_serial_entry(i32 noundef %.0.i.i.i, i32 noundef 0) ; 2 uses
  %.not34 = icmp eq i64 %i.f, 0
  br i1 %.not34, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (i64, ptr, ...) @rb_name_error(i64 noundef %0, ptr noundef nonnull @.str.1, i32 noundef 4, i64 noundef %i.f) #21
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void (i64, ptr, ...) @rb_name_error_str(i64 noundef 4, ptr noundef nonnull @.str.2, i32 noundef 4, i64 noundef %0) #21
  unreachable

end_hunk_0
begin_hunk_1_@rb_sym2id:bb.a

rb_array_len.exit.i:                              ; preds = %bb.g, %bb.f
  %.0.i.i = phi i64 [ %i.ae, %bb.f ], [ %i.ag, %bb.g ]
  %.not.i = icmp ugt i64 %.0.i.i, %i.z
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %rb_array_len.exit.i
  %i.ah = call i64 @rb_ary_entry(i64 noundef %.val, i64 noundef %i.z) #22 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 4
  br i1 %i.ai, label %bb.i, label %set_id_entry.exit

bb.i:                                             ; preds = %bb.h, %rb_array_len.exit.i
  %i.aj = call i64 @rb_ary_hidden_new(i64 noundef 1024) #20 ; 2 uses
  call void @rb_ary_store(i64 noundef %.val, i64 noundef %i.z, i64 noundef %i.aj) #20
  br label %set_id_entry.exit

set_id_entry.exit:                                ; preds = %bb.h, %bb.i
  %.0.i20 = phi i64 [ %i.aj, %bb.i ], [ %i.ah, %bb.h ] ; 2 uses
  %i.ak = shl i32 %.0.i18, 1
  %i.al = and i32 %i.ak, 1022
  %i.am = zext nneg i32 %i.al to i64              ; 2 uses
  call void @rb_ary_store(i64 noundef %.0.i20, i64 noundef %i.am, i64 noundef %i.r) #20
  %i.an = or disjoint i64 %i.am, 1
  call void @rb_ary_store(i64 noundef %.0.i20, i64 noundef %i.an, i64 noundef %0) #20
  br label %bb.j

bb.j:                                             ; preds = %rb_vm_lock_enter.exit, %set_id_entry.exit
  %.2 = phi i64 [ %i.v, %set_id_entry.exit ], [ %i.p, %rb_vm_lock_enter.exit ]
  %i.ao = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !34
  %.not.i.i21 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i21, label %bb.k, label %rb_vm_lock_leave.exit

bb.k:                                             ; preds = %bb.j
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #20
  br label %rb_vm_lock_leave.exit

rb_vm_lock_leave.exit:                            ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.l

RB_DYNAMIC_SYM_P.exit.thread:                     ; preds = %bb.c, %RB_DYNAMIC_SYM_P.exit
  %i.ap = load i64, ptr @rb_eTypeError, align 8, !tbaa !20
  %i.aq = tail call ptr @rb_builtin_class_name(i64 noundef %0) #20
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ap, ptr noundef nonnull @.str.6, ptr noundef %i.aq) #21
  unreachable

bb.l:                                             ; preds = %rb_vm_lock_leave.exit, %bb.b
  %.3 = phi i64 [ %i.d, %bb.b ], [ %.2, %rb_vm_lock_leave.exit ]
  ret i64 %.3
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @rb_symname_p(ptr noundef nonnull %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call nonnull ptr @rb_ascii8bit_encoding() #20
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #22
  %i.c = tail call i32 @rb_enc_symname_type(ptr noundef nonnull %0, i64 noundef %i.b, ptr noundef nonnull %i.a, i32 noundef 1025)
  %i.d = icmp ne i32 %i.c, -1
  %i.e = zext i1 %i.d to i32
  ret i32 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @rb_enc_symname_p(ptr noundef nonnull %0, ptr noundef nonnull %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #22
  %i.b = tail call i32 @rb_enc_symname_type(ptr noundef nonnull %0, i64 noundef %i.a, ptr noundef nonnull %1, i32 noundef 1025)
  %i.c = icmp ne i32 %i.b, -1
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

declare nonnull ptr @rb_ascii8bit_encoding() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @rb_enc_symname2_p(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @rb_enc_symname_type(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef 1025)
  %i.b = icmp ne i32 %i.a, -1
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 -1, 15) i32 @rb_enc_symname_type(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [13 x i8], align 1                ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 %1         ; 15 uses
  %i.d = getelementptr i8, ptr %2, i64 20
  %.val.i.i = load i32, ptr %i.d, align 4, !tbaa !24
  %.not.i.i = icmp eq i32 %.val.i.i, 1
  br i1 %.not.i.i, label %rb_enc_asciicompat.exit.i, label %enc_synmane_type_leading_chars.exit.thread91

rb_enc_asciicompat.exit.i:                        ; preds = %bb.a
  %i.e = tail call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %2) #22
  %.not3.i.i = icmp ne i32 %i.e, 0
  %.not.i = icmp eq ptr %0, null
  %or.cond.i = or i1 %.not.i, %.not3.i.i
  %i.f = icmp slt i64 %1, 1
  %or.cond47.i = or i1 %i.f, %or.cond.i
  br i1 %or.cond47.i, label %enc_synmane_type_leading_chars.exit.thread91, label %bb.b

bb.b:                                             ; preds = %rb_enc_asciicompat.exit.i
  %i.g = load i8, ptr %0, align 1, !tbaa !18      ; 3 uses
  switch i8 %i.g, label %bb.w [
    i8 0, label %enc_synmane_type_leading_chars.exit.thread91
    i8 36, label %bb.c
    i8 64, label %bb.j
    i8 60, label %bb.k
    i8 62, label %bb.m
    i8 61, label %bb.n
    i8 42, label %bb.q
    i8 43, label %bb.r
    i8 45, label %bb.r
    i8 124, label %enc_synmane_type_leading_chars.exit.thread
    i8 94, label %enc_synmane_type_leading_chars.exit.thread
    i8 38, label %enc_synmane_type_leading_chars.exit.thread
    i8 47, label %enc_synmane_type_leading_chars.exit.thread
    i8 37, label %enc_synmane_type_leading_chars.exit.thread
    i8 126, label %enc_synmane_type_leading_chars.exit.thread
    i8 96, label %enc_synmane_type_leading_chars.exit.thread
    i8 91, label %bb.s
    i8 33, label %bb.u
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 1          ; 2 uses
  %.not.i48.i = icmp ult ptr %i.h, %i.c
  br i1 %.not.i48.i, label %bb.d, label %enc_synmane_type_leading_chars.exit.thread78

bb.d:                                             ; preds = %bb.c
  %i.i = load i8, ptr %i.h, align 1, !tbaa !18    ; 2 uses
  %i.j = sext i8 %i.i to i32                      ; 4 uses
  %i.k = add nsw i32 %i.j, -127
  %or.cond.i.i.i = icmp ult i32 %i.k, -94
  br i1 %or.cond.i.i.i, label %is_global_name_punct.exit.thread.i.i, label %is_global_name_punct.exit.i.i

is_global_name_punct.exit.i.i:                    ; preds = %bb.d
  %i.l = add nsw i32 %i.j, -32
  %i.m = lshr i32 %i.l, 5
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr [4 x i8], ptr @ruby_global_name_punct_bits, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !13
  %i.q = and i32 %i.j, 31
  %i.r = shl nuw i32 1, %i.q
  %i.s = and i32 %i.p, %i.r
  %.not34.i.i = icmp eq i32 %i.s, 0
  br i1 %.not34.i.i, label %is_global_name_punct.exit.thread.i.i, label %bb.e

bb.e:                                             ; preds = %is_global_name_punct.exit.i.i
  %i.t = getelementptr i8, ptr %0, i64 2
  br label %is_special_global_name.exit.i

is_global_name_punct.exit.thread.i.i:             ; preds = %is_global_name_punct.exit.i.i, %bb.d
  %i.u = icmp eq i8 %i.i, 45
  br i1 %i.u, label %bb.f, label %bb.i

bb.f:                                             ; preds = %is_global_name_punct.exit.thread.i.i
  %i.v = getelementptr i8, ptr %0, i64 2          ; 5 uses
  %.not38.i.i = icmp ult ptr %i.v, %i.c
  br i1 %.not38.i.i, label %bb.g, label %enc_synmane_type_leading_chars.exit.thread78

bb.g:                                             ; preds = %bb.f
  %i.w = load i8, ptr %i.v, align 1, !tbaa !18    ; 4 uses
  %i.x = and i8 %i.w, -33
  %i.y = add i8 %i.x, -65
  %narrow.i.i.i.i = icmp ult i8 %i.y, 26
  %i.z = add i8 %i.w, -48
  %i.aa = icmp ult i8 %i.z, 10
  %narrow.i.i.i = or i1 %i.aa, %narrow.i.i.i.i
  %i.ab = icmp eq i8 %i.w, 95
  %or.cond.i.i = or i1 %i.ab, %narrow.i.i.i
  %i.ac = icmp slt i8 %i.w, 0
  %or.cond45.i.i = or i1 %i.ac, %or.cond.i.i
  br i1 %or.cond45.i.i, label %bb.h, label %is_special_global_name.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ad = tail call i32 @rb_enc_mbclen(ptr noundef nonnull %i.v, ptr noundef nonnull %i.c, ptr noundef nonnull %2) #20
  %.fr131 = freeze i32 %i.ad
  %i.ae = sext i32 %.fr131 to i64
  %i.af = getelementptr i8, ptr %i.v, i64 %i.ae
  br label %is_special_global_name.exit.i

bb.i:                                             ; preds = %is_global_name_punct.exit.thread.i.i
  %i.ag = add nsw i32 %i.j, -58
  %i.ah = icmp ult i32 %i.ag, -10
  br i1 %i.ah, label %enc_synmane_type_leading_chars.exit.thread78, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.i
  %i.ai = getelementptr i8, ptr %0, i64 2         ; 3 uses
  %i.aj = icmp ult ptr %i.ai, %i.c
  br i1 %i.aj, label %.lr.ph129, label %is_special_global_name.exit.i

.preheader.i.i:                                   ; preds = %.lr.ph129
  %i.ak = getelementptr i8, ptr %i.am, i64 1      ; 3 uses
  %i.al = icmp ult ptr %i.ak, %i.c
  br i1 %i.al, label %.lr.ph129, label %is_special_global_name.exit.i, !llvm.loop !65

.lr.ph129:                                        ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %i.am = phi ptr [ %i.ak, %.preheader.i.i ], [ %i.ai, %.preheader.i.i.preheader ] ; 3 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !18
  %i.ao = sext i8 %i.an to i32
  %i.ap = add nsw i32 %i.ao, -58
  %i.aq = icmp ult i32 %i.ap, -10
  br i1 %i.aq, label %.is_special_global_name.exit.i.loopexit_crit_edge, label %.preheader.i.i, !llvm.loop !65

.is_special_global_name.exit.i.loopexit_crit_edge: ; preds = %.lr.ph129
  br label %is_special_global_name.exit.i, !llvm.loop !65

is_special_global_name.exit.i:                    ; preds = %.preheader.i.i, %.preheader.i.i.preheader, %.is_special_global_name.exit.i.loopexit_crit_edge, %bb.h, %bb.g, %bb.e
  %.126.i.i = phi ptr [ %i.t, %bb.e ], [ %i.af, %bb.h ], [ %i.v, %bb.g ], [ %i.ai, %.preheader.i.i.preheader ], [ %i.am, %.is_special_global_name.exit.i.loopexit_crit_edge ], [ %i.ak, %.preheader.i.i ]
  %.not83.i = icmp eq ptr %.126.i.i, %i.c
  br i1 %.not83.i, label %enc_synmane_type_leading_chars.exit.thread, label %enc_synmane_type_leading_chars.exit.thread78

bb.j:                                             ; preds = %bb.b
  %i.ar = getelementptr i8, ptr %0, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !18
  %cond6.i = icmp eq i8 %i.as, 64                 ; 2 uses
  %.36.i = select i1 %cond6.i, i64 51539607554, i64 8589934594
  %.37.i = select i1 %cond6.i, i64 2, i64 1
  br label %enc_synmane_type_leading_chars.exit

bb.k:                                             ; preds = %bb.b
  %i.at = getelementptr i8, ptr %0, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !18
  switch i8 %i.au, label %enc_synmane_type_leading_chars.exit.thread [
    i8 60, label %bb.o
    i8 61, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr i8, ptr %0, i64 2
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !18
  %cond5.i = icmp eq i8 %i.aw, 62
  %.38.i = select i1 %cond5.i, i64 3, i64 2
  br label %enc_synmane_type_leading_chars.exit.thread

bb.m:                                             ; preds = %bb.b
  %i.ax = getelementptr i8, ptr %0, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !18
  %.off.i = add i8 %i.ay, -61
  %switch.i = icmp ult i8 %.off.i, 2
  %.39.i = select i1 %switch.i, i64 2, i64 1
  br label %enc_synmane_type_leading_chars.exit.thread

bb.n:                                             ; preds = %bb.b
  %i.az = getelementptr i8, ptr %0, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !18
  switch i8 %i.ba, label %enc_synmane_type_leading_chars.exit.thread91 [
    i8 126, label %bb.o
    i8 61, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n, %bb.k
  br label %enc_synmane_type_leading_chars.exit.thread

bb.p:                                             ; preds = %bb.n
  %i.bb = getelementptr i8, ptr %0, i64 2
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !18
  %cond4.i = icmp eq i8 %i.bc, 61
  %.40.i = select i1 %cond4.i, i64 3, i64 2
  br label %enc_synmane_type_leading_chars.exit.thread

bb.q:                                             ; preds = %bb.b
  %i.bd = getelementptr i8, ptr %0, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !18
  %cond3.i = icmp eq i8 %i.be, 42
  %.41.i = select i1 %cond3.i, i64 2, i64 1
  br label %enc_synmane_type_leading_chars.exit.thread

bb.r:                                             ; preds = %bb.b, %bb.b
  %i.bf = getelementptr i8, ptr %0, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !18
  %cond2.i = icmp eq i8 %i.bg, 64
  %.42.i = select i1 %cond2.i, i64 2, i64 1
  br label %enc_synmane_type_leading_chars.exit.thread

bb.s:                                             ; preds = %bb.b
  %i.bh = getelementptr i8, ptr %0, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !18
  %cond.i = icmp eq i8 %i.bi, 93
  br i1 %cond.i, label %bb.t, label %enc_synmane_type_leading_chars.exit.thread78

bb.t:                                             ; preds = %bb.s
  %i.bj = getelementptr i8, ptr %0, i64 2
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !18
  %cond1.i = icmp eq i8 %i.bk, 61
  %.43.i = select i1 %cond1.i, i64 3, i64 2
  br label %enc_synmane_type_leading_chars.exit.thread

bb.u:                                             ; preds = %bb.b
  %i.bl = getelementptr i8, ptr %0, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !18
  switch i8 %i.bm, label %bb.v [
    i8 61, label %enc_synmane_type_leading_chars.exit.thread
    i8 126, label %enc_synmane_type_leading_chars.exit.thread
  ]

bb.v:                                             ; preds = %bb.u
  %i.bn = and i32 %3, 16384
  %.not32.i = icmp eq i32 %i.bn, 0
  %.44.i = select i1 %.not32.i, i64 60129542145, i64 60129542146
  br label %enc_synmane_type_leading_chars.exit

bb.w:                                             ; preds = %bb.b
  %i.bo = icmp slt i8 %i.g, 0
  br i1 %i.bo, label %bb.x, label %rb_sym_constant_char_p.exit.i

bb.x:                                             ; preds = %bb.w
  %i.bp = tail call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %0, ptr noundef %i.c, ptr noundef nonnull %2) #20 ; 3 uses
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %bb.y, label %rb_sym_constant_char_p.exit.thread.i

bb.y:                                             ; preds = %bb.x
  %i.br = getelementptr i8, ptr %2, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !72
  %i.bt = tail call i32 %i.bs(ptr noundef nonnull %0, ptr noundef %i.c, ptr noundef nonnull %2) #20, !inline_history !66 ; 3 uses
  %i.bu = getelementptr i8, ptr %2, i64 88        ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !73
  %i.bw = tail call i32 %i.bv(i32 noundef %i.bt, i32 noundef 10, ptr noundef nonnull %2) #20, !inline_history !67
  %.not.i50.i = icmp eq i32 %i.bw, 0
  br i1 %.not.i50.i, label %bb.z, label %enc_synmane_type_leading_chars.exit.thread78

bb.z:                                             ; preds = %bb.y
  %i.bx = load ptr, ptr %i.bu, align 8, !tbaa !73
  %i.by = tail call i32 %i.bx(i32 noundef %i.bt, i32 noundef 6, ptr noundef nonnull %2) #20, !inline_history !68
  %.not39.i.i = icmp eq i32 %i.by, 0
  br i1 %.not39.i.i, label %bb.aa, label %rb_sym_constant_char_p.exit.thread.i

bb.aa:                                            ; preds = %bb.z
  %i.bz = getelementptr i8, ptr %2, i64 132
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !74
  %i.cb = and i32 %i.ca, 1
  %.not35.i.i = icmp eq i32 %i.cb, 0
  br i1 %.not35.i.i, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cc = load i32, ptr @rb_sym_constant_char_p.ctype_titlecase, align 4, !tbaa !13 ; 2 uses
  %.not38.i51.i = icmp eq i32 %i.cc, 0
  br i1 %.not38.i51.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cd = getelementptr i8, ptr %2, i64 80
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !75
  %i.cf = tail call i32 %i.ce(ptr noundef nonnull %2, ptr noundef nonnull @rb_sym_constant_char_p.cname, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @rb_sym_constant_char_p.cname, i64 15)) #20, !inline_history !69 ; 2 uses
  store i32 %i.cf, ptr @rb_sym_constant_char_p.ctype_titlecase, align 4, !tbaa !13
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.cg = phi i32 [ %i.cf, %bb.ac ], [ %i.cc, %bb.ab ]
  %i.ch = load ptr, ptr %i.bu, align 8, !tbaa !73
  %i.ci = tail call i32 %i.ch(i32 noundef %i.bt, i32 noundef %i.cg, ptr noundef nonnull %2) #20, !inline_history !70
  %.not40.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not40.i.i, label %rb_sym_constant_char_p.exit.thread.i, label %enc_synmane_type_leading_chars.exit.thread78

bb.ae:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store ptr %0, ptr %i.b, align 8, !tbaa !76
  %i.cj = getelementptr i8, ptr %2, i64 56
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !77
  %i.cl = call i32 %i.ck(i32 noundef 524288, ptr noundef nonnull %i.b, ptr noundef %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %2) #20, !inline_history !69 ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %bb.af, label %.critedge.i52.i

bb.af:                                            ; preds = %bb.ae
  %.not36.i.i = icmp eq i32 %i.cl, %i.bp
  br i1 %.not36.i.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cn = zext nneg i32 %i.bp to i64
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.a, ptr nonnull %0, i64 %i.cn)
  %.not37.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not37.i.i, label %.critedge.i52.i, label %bb.ah

.critedge.i52.i:                                  ; preds = %bb.ag, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %rb_sym_constant_char_p.exit.thread.i

bb.ah:                                            ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %enc_synmane_type_leading_chars.exit.thread78

rb_sym_constant_char_p.exit.i:                    ; preds = %bb.w
  %i.co = add nsw i8 %i.g, -91
  %i.cp = icmp ult i8 %i.co, -26
  br i1 %i.cp, label %rb_sym_constant_char_p.exit.thread.i, label %enc_synmane_type_leading_chars.exit.thread78

rb_sym_constant_char_p.exit.thread.i:             ; preds = %rb_sym_constant_char_p.exit.i, %.critedge.i52.i, %bb.ad, %bb.z, %bb.x
  br label %enc_synmane_type_leading_chars.exit.thread78

enc_synmane_type_leading_chars.exit.thread:       ; preds = %bb.r, %bb.u, %bb.u, %bb.t, %bb.k, %bb.l, %bb.m, %bb.o, %bb.p, %bb.q, %is_special_global_name.exit.i, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %.sroa.32.0.i.ph = phi i32 [ 14, %bb.r ], [ 14, %bb.q ], [ 14, %bb.p ], [ 14, %bb.o ], [ 14, %bb.u ], [ 14, %bb.m ], [ 14, %bb.l ], [ 14, %bb.k ], [ 6, %is_special_global_name.exit.i ], [ 14, %bb.t ], [ 14, %bb.u ], [ 14, %bb.b ], [ 14, %bb.b ], [ 14, %bb.b ], [ 14, %bb.b ], [ 14, %bb.b ], [ 14, %bb.b ], [ 14, %bb.b ]
  %.sroa.63.0.i.ph = phi i64 [ %.42.i, %bb.r ], [ %.41.i, %bb.q ], [ %.40.i, %bb.p ], [ 2, %bb.o ], [ 2, %bb.u ], [ %.39.i, %bb.m ], [ %.38.i, %bb.l ], [ 1, %bb.k ], [ %1, %is_special_global_name.exit.i ], [ %.43.i, %bb.t ], [ 2, %bb.u ], [ 1, %bb.b ], [ 1, %bb.b ], [ 1, %bb.b ], [ 1, %bb.b ], [ 1, %bb.b ], [ 1, %bb.b ], [ 1, %bb.b ]
  %i.cq = getelementptr i8, ptr %0, i64 %.sroa.63.0.i.ph
  br label %.critedge

enc_synmane_type_leading_chars.exit.thread78:     ; preds = %bb.f, %bb.s, %bb.y, %bb.i, %is_special_global_name.exit.i, %rb_sym_constant_char_p.exit.thread.i, %rb_sym_constant_char_p.exit.i, %bb.ah, %bb.ad, %bb.c
  %.sroa.32.0.i.ph76 = phi i64 [ 25769803778, %bb.c ], [ 42949672962, %bb.ad ], [ 42949672962, %bb.ah ], [ 42949672962, %rb_sym_constant_char_p.exit.i ], [ 2, %rb_sym_constant_char_p.exit.thread.i ], [ 25769803778, %is_special_global_name.exit.i ], [ 25769803778, %bb.i ], [ 42949672962, %bb.y ], [ 60129542146, %bb.s ], [ 25769803778, %bb.f ] ; 2 uses
  %.sroa.63.0.i.ph77 = phi i64 [ 1, %bb.c ], [ 0, %bb.ad ], [ 0, %bb.ah ], [ 0, %rb_sym_constant_char_p.exit.i ], [ 0, %rb_sym_constant_char_p.exit.thread.i ], [ 1, %is_special_global_name.exit.i ], [ 1, %bb.i ], [ 0, %bb.y ], [ 0, %bb.s ], [ 1, %bb.f ]
  %i.cr = getelementptr i8, ptr %0, i64 %.sroa.63.0.i.ph77
  %.sroa.0.4.extract.shift83 = lshr i64 %.sroa.32.0.i.ph76, 32 ; 2 uses
  %.sroa.0.4.extract.trunc84 = trunc nuw nsw i64 %.sroa.0.4.extract.shift83 to i32
  br label %bb.ai

enc_synmane_type_leading_chars.exit:              ; preds = %bb.j, %bb.v
  %.sroa.32.0.i = phi i64 [ %.44.i, %bb.v ], [ %.36.i, %bb.j ] ; 3 uses
  %.sroa.63.0.i = phi i64 [ 1, %bb.v ], [ %.37.i, %bb.j ]
  %i.cs = getelementptr i8, ptr %0, i64 %.sroa.63.0.i ; 2 uses
  %.sroa.0.4.extract.shift = lshr i64 %.sroa.32.0.i, 32 ; 2 uses
  %.sroa.0.4.extract.trunc = trunc nuw nsw i64 %.sroa.0.4.extract.shift to i32 ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.32.0.i to i32
  switch i32 %.sroa.0.0.extract.trunc, label %.critedge [
    i32 0, label %enc_synmane_type_leading_chars.exit.thread91
    i32 2, label %bb.ai
  ]

bb.ai:                                            ; preds = %enc_synmane_type_leading_chars.exit.thread78, %enc_synmane_type_leading_chars.exit
  %.sroa.0.4.extract.trunc88 = phi i32 [ %.sroa.0.4.extract.trunc84, %enc_synmane_type_leading_chars.exit.thread78 ], [ %.sroa.0.4.extract.trunc, %enc_synmane_type_leading_chars.exit ] ; 3 uses
  %.sroa.0.4.extract.shift87 = phi i64 [ %.sroa.0.4.extract.shift83, %enc_synmane_type_leading_chars.exit.thread78 ], [ %.sroa.0.4.extract.shift, %enc_synmane_type_leading_chars.exit ]
  %i.ct = phi ptr [ %i.cr, %enc_synmane_type_leading_chars.exit.thread78 ], [ %i.cs, %enc_synmane_type_leading_chars.exit ] ; 3 uses
  %.sroa.32.0.i86 = phi i64 [ %.sroa.32.0.i.ph76, %enc_synmane_type_leading_chars.exit.thread78 ], [ %.sroa.32.0.i, %enc_synmane_type_leading_chars.exit ]
  %.not = icmp ult ptr %i.ct, %i.c
  br i1 %.not, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !18  ; 3 uses
  %.not58 = icmp eq i8 %i.cu, 95
  br i1 %.not58, label %.lr.ph.preheader, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cv = and i8 %i.cu, -33
  %i.cw = sext i8 %i.cv to i32
  %i.cx = add nsw i32 %i.cw, -65
  %narrow.i = icmp ult i32 %i.cx, 26
  %i.cy = icmp slt i8 %i.cu, 0
  %or.cond99 = or i1 %i.cy, %narrow.i
  br i1 %or.cond99, label %.lr.ph.preheader, label %bb.al

.lr.ph.preheader:                                 ; preds = %bb.aj, %bb.ak
  br label %.lr.ph

bb.al:                                            ; preds = %bb.ak, %bb.ai
  %i.cz = icmp sgt i64 %1, 1
  br i1 %i.cz, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.da = getelementptr i8, ptr %i.c, i64 -1
  %i.db = load i8, ptr %i.da, align 1, !tbaa !18
  %i.dc = icmp eq i8 %i.db, 61
  br i1 %i.dc, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.dd = add nsw i64 %1, -1
  %i.de = call i32 @rb_enc_symname_type(ptr noundef nonnull %0, i64 noundef %i.dd, ptr noundef nonnull %2, i32 noundef %3)
  %i.df = shl nuw nsw i32 1, %i.de
  %i.dg = and i32 %i.df, %3
  %.not66 = icmp eq i32 %i.dg, 0
  br i1 %.not66, label %bb.ao, label %enc_synmane_type_leading_chars.exit.thread91

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  br label %enc_synmane_type_leading_chars.exit.thread91

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge2
  %.050102 = phi ptr [ %i.dq, %.critedge2 ], [ %i.ct, %.lr.ph.preheader ] ; 7 uses
  %i.dh = load i8, ptr %.050102, align 1, !tbaa !18 ; 5 uses
  %i.di = and i8 %i.dh, -33
  %i.dj = add i8 %i.di, -65
  %narrow.i.i = icmp ult i8 %i.dj, 26
  %i.dk = add i8 %i.dh, -48
  %i.dl = icmp ult i8 %i.dk, 10
  %narrow.i67 = or i1 %i.dl, %narrow.i.i
  %i.dm = icmp eq i8 %i.dh, 95
  %or.cond = or i1 %i.dm, %narrow.i67
  %i.dn = icmp slt i8 %i.dh, 0
  %or.cond100 = or i1 %i.dn, %or.cond
  br i1 %or.cond100, label %.critedge2, label %bb.ap

.critedge2:                                       ; preds = %.lr.ph
  %i.do = call i32 @rb_enc_mbclen(ptr noundef nonnull %.050102, ptr noundef nonnull %i.c, ptr noundef nonnull %2) #20
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr i8, ptr %.050102, i64 %i.dp ; 3 uses
  %i.dr = icmp ult ptr %i.dq, %i.c
  br i1 %i.dr, label %.lr.ph, label %.critedge, !llvm.loop !71

bb.ap:                                            ; preds = %.lr.ph
  switch i8 %i.dh, label %.critedge [
    i8 33, label %bb.aq
    i8 63, label %bb.aq
    i8 61, label %bb.at
  ]

bb.aq:                                            ; preds = %bb.ap, %bb.ap
  %i.ds = icmp eq i64 %.sroa.0.4.extract.shift87, 12
  %i.dt = and i64 %.sroa.32.0.i86, -21474836480
  %i.du = icmp eq i64 %i.dt, 8589934592
  %or.cond5 = or i1 %i.ds, %i.du
  br i1 %or.cond5, label %enc_synmane_type_leading_chars.exit.thread91, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dv = getelementptr i8, ptr %.050102, i64 1   ; 4 uses
  %i.dw = getelementptr i8, ptr %.050102, i64 2
  %i.dx = icmp ult ptr %i.dw, %i.c
  br i1 %i.dx, label %.critedge, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dy = load i8, ptr %i.dv, align 1, !tbaa !18
  %.not64 = icmp eq i8 %i.dy, 61
  br i1 %.not64, label %bb.at, label %.critedge

bb.at:                                            ; preds = %bb.as, %bb.ap
  %.151 = phi ptr [ %i.dv, %bb.as ], [ %.050102, %bb.ap ]
  %.0 = phi i32 [ 14, %bb.as ], [ %.sroa.0.4.extract.trunc88, %bb.ap ]
  %i.dz = shl nuw nsw i32 1, %.0
  %i.ea = and i32 %i.dz, %3
  %.not65 = icmp eq i32 %i.ea, 0
  br i1 %.not65, label %enc_synmane_type_leading_chars.exit.thread91, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eb = getelementptr i8, ptr %.151, i64 1
  br label %.critedge

.critedge:                                        ; preds = %.critedge2, %enc_synmane_type_leading_chars.exit.thread, %bb.ap, %bb.au, %bb.as, %bb.ar, %enc_synmane_type_leading_chars.exit
  %.2 = phi ptr [ %i.cs, %enc_synmane_type_leading_chars.exit ], [ %i.cq, %enc_synmane_type_leading_chars.exit.thread ], [ %.050102, %bb.ap ], [ %i.dv, %bb.ar ], [ %i.dv, %bb.as ], [ %i.eb, %bb.au ], [ %i.dq, %.critedge2 ]
  %.1 = phi i32 [ %.sroa.0.4.extract.trunc, %enc_synmane_type_leading_chars.exit ], [ %.sroa.32.0.i.ph, %enc_synmane_type_leading_chars.exit.thread ], [ %.sroa.0.4.extract.trunc88, %bb.ap ], [ 14, %bb.ar ], [ 14, %bb.as ], [ 8, %bb.au ], [ %.sroa.0.4.extract.trunc88, %.critedge2 ]
  %i.ec = icmp eq ptr %.2, %i.c
  %i.ed = select i1 %i.ec, i32 %.1, i32 -1
  br label %enc_synmane_type_leading_chars.exit.thread91

enc_synmane_type_leading_chars.exit.thread91:     ; preds = %bb.b, %rb_enc_asciicompat.exit.i, %bb.a, %bb.n, %bb.at, %bb.aq, %bb.an, %enc_synmane_type_leading_chars.exit, %.critedge, %bb.ao
  %.052 = phi i32 [ %i.ed, %.critedge ], [ -1, %bb.aq ], [ -1, %enc_synmane_type_leading_chars.exit ], [ -1, %bb.ao ], [ 8, %bb.an ], [ -1, %bb.at ], [ -1, %bb.n ], [ -1, %bb.a ], [ -1, %rb_enc_asciicompat.exit.i ], [ -1, %bb.b ]
  ret i32 %.052
}

declare i32 @rb_enc_mbclen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 0, 2) i32 @rb_static_id_valid_p(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = shl i64 %0, 8
  %i.b = or disjoint i64 %i.a, 12
  %i.c = icmp ugt i64 %0, 171
  %i.d = lshr i64 %0, 4
  %.0.in.i.i = select i1 %i.c, i64 %i.d, i64 %0
  %.0.i.i = trunc i64 %.0.in.i.i to i32
  %i.e = tail call fastcc i64 @get_id_serial_entry(i32 noundef %.0.i.i, i32 noundef 1)
  %i.f = icmp eq i64 %i.b, %i.e
  %i.g = zext i1 %i.f to i32
  ret i32 %i.g
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_intern3(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.sym_set_static_sym_entry, align 8 ; 5 uses
  %4 = alloca %struct.RString, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  %i.a = call i64 @rb_setup_fake_str(ptr noundef nonnull %4, ptr noundef %0, i64 noundef %1, ptr noundef %2) #20 ; 2 uses
  call void @rb_obj_freeze_inline(i64 noundef %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store i64 0, ptr %3, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.a, ptr %i.b, align 8, !tbaa !28
  %i.c = ptrtoint ptr %3 to i64
  %i.d = or disjoint i64 %i.c, 1
  %i.e = call i64 @rb_concurrent_set_find_or_insert(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ruby_global_symbols, i64 8), i64 noundef %i.d, ptr noundef null) #20 ; 6 uses
  %i.f = trunc i64 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = and i64 %i.e, -2
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 8, !tbaa !27   ; 2 uses
  %i.j = and i64 %i.i, 255
  %i.k = icmp eq i64 %i.j, 12
  br i1 %i.k, label %sym_find_or_insert_static_symbol.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.14) #23
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %i.e, 0
  %i.m = and i64 %i.e, 6
  %i.n = icmp ne i64 %i.m, 0
  %i.o = or i1 %i.l, %i.n
  br i1 %i.o, label %RB_DYNAMIC_SYM_P.exit.thread.i.i, label %RB_DYNAMIC_SYM_P.exit.i.i

RB_DYNAMIC_SYM_P.exit.i.i:                        ; preds = %bb.d
  %i.p = inttoptr i64 %i.e to ptr
  %i.q = load i64, ptr %i.p, align 8, !tbaa !30
  %i.r = and i64 %i.q, 31
  %i.s = icmp eq i64 %i.r, 20
  br i1 %i.s, label %sym_find_or_insert_static_symbol.exit, label %RB_DYNAMIC_SYM_P.exit.thread.i.i

RB_DYNAMIC_SYM_P.exit.thread.i.i:                 ; preds = %RB_DYNAMIC_SYM_P.exit.i.i, %bb.d
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.14) #23
  unreachable

sym_find_or_insert_static_symbol.exit:            ; preds = %bb.b, %RB_DYNAMIC_SYM_P.exit.i.i
  %.0.i.i = phi i64 [ %i.e, %RB_DYNAMIC_SYM_P.exit.i.i ], [ %i.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.t = call i64 @rb_sym2id(i64 noundef %.0.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret i64 %i.t
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare i64 @rb_setup_fake_str(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @rb_obj_freeze_inline(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_intern2(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call nonnull ptr @rb_usascii_encoding() #20
  %i.b = tail call i64 @rb_intern3(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %i.a)
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_intern(ptr noundef nonnull %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #22
  %i.b = tail call nonnull ptr @rb_usascii_encoding() #20
  %i.c = tail call i64 @rb_intern3(ptr noundef nonnull %0, i64 noundef %i.a, ptr noundef nonnull %i.b)
  ret i64 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_intern_str(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.sym_set_static_sym_entry, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store i64 0, ptr %1, align 8, !tbaa !27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %0, ptr %i.a, align 8, !tbaa !28
  %i.b = ptrtoint ptr %1 to i64
  %i.c = or disjoint i64 %i.b, 1
  %i.d = call i64 @rb_concurrent_set_find_or_insert(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ruby_global_symbols, i64 8), i64 noundef %i.c, ptr noundef null) #20 ; 6 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = and i64 %i.d, -2
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i64, ptr %i.g, align 8, !tbaa !27   ; 2 uses
  %i.i = and i64 %i.h, 255
  %i.j = icmp eq i64 %i.i, 12
  br i1 %i.j, label %sym_find_or_insert_static_symbol.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.14) #23
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.k = icmp eq i64 %i.d, 0
  %i.l = and i64 %i.d, 6
  %i.m = icmp ne i64 %i.l, 0
  %i.n = or i1 %i.k, %i.m
  br i1 %i.n, label %RB_DYNAMIC_SYM_P.exit.thread.i.i, label %RB_DYNAMIC_SYM_P.exit.i.i

RB_DYNAMIC_SYM_P.exit.i.i:                        ; preds = %bb.d
  %i.o = inttoptr i64 %i.d to ptr
  %i.p = load i64, ptr %i.o, align 8, !tbaa !30
  %i.q = and i64 %i.p, 31
  %i.r = icmp eq i64 %i.q, 20
  br i1 %i.r, label %sym_find_or_insert_static_symbol.exit, label %RB_DYNAMIC_SYM_P.exit.thread.i.i

RB_DYNAMIC_SYM_P.exit.thread.i.i:                 ; preds = %RB_DYNAMIC_SYM_P.exit.i.i, %bb.d
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.14) #23
  unreachable

sym_find_or_insert_static_symbol.exit:            ; preds = %bb.b, %RB_DYNAMIC_SYM_P.exit.i.i
  %.0.i.i = phi i64 [ %i.d, %RB_DYNAMIC_SYM_P.exit.i.i ], [ %i.h, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %i.s = call i64 @rb_sym2id(i64 noundef %.0.i.i)
  ret i64 %i.s
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
end_hunk_1
begin_hunk_2_@rb_id_table_lookup:bb.a
  %i.h = zext nneg i32 %.01418.i to i64           ; 3 uses
  %i.i = getelementptr [16 x i8], ptr %i.g, i64 %i.h
  %i.j = load i32, ptr %i.i, align 8, !tbaa !52
  %.not19.i = icmp eq i32 %i.j, %.0.i.i
  br i1 %.not19.i, label %hash_table_index.exit.thread9, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.k = phi i64 [ %i.q, %bb.c ], [ %i.h, %bb.b ]
  %.01421.i = phi i32 [ %.014.i, %bb.c ], [ %.01418.i, %bb.b ]
  %.020.i = phi i32 [ %i.p, %bb.c ], [ 1, %bb.b ] ; 2 uses
  %i.l = getelementptr [16 x i8], ptr %i.g, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !53
  %.not17.i = icmp eq i32 %i.n, 0
  br i1 %.not17.i, label %hash_table_index.exit.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.o = add i32 %.020.i, %.01421.i
  %i.p = add i32 %.020.i, 1
  %.014.i = and i32 %i.o, %i.e                    ; 2 uses
  %i.q = zext nneg i32 %.014.i to i64             ; 3 uses
  %i.r = getelementptr [16 x i8], ptr %i.g, i64 %i.q
  %i.s = load i32, ptr %i.r, align 8, !tbaa !52
  %.not.i = icmp eq i32 %i.s, %.0.i.i
  br i1 %.not.i, label %hash_table_index.exit.thread9, label %.lr.ph.i, !llvm.loop !0

hash_table_index.exit.thread9:                    ; preds = %bb.c, %bb.b
  %.pre-phi = phi i64 [ %i.h, %bb.b ], [ %i.q, %bb.c ]
  %i.t = getelementptr [16 x i8], ptr %i.g, i64 %.pre-phi
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !54
  store i64 %i.v, ptr %2, align 8, !tbaa !20
  br label %hash_table_index.exit.thread

hash_table_index.exit.thread:                     ; preds = %.lr.ph.i, %bb.a, %hash_table_index.exit.thread9
  %.0 = phi i32 [ 1, %hash_table_index.exit.thread9 ], [ 0, %bb.a ], [ 0, %.lr.ph.i ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef i32 @rb_id_table_insert(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %1, 171
  %i.b = lshr i64 %1, 4
  %.0.in.i.i = select i1 %i.a, i64 %i.b, i64 %1
  %.0.i.i = trunc i64 %.0.in.i.i to i32           ; 5 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !47     ; 5 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %hash_table_index.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i32 %i.c, -1                     ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !48   ; 4 uses
  %.01418.i.i = and i32 %i.e, %.0.i.i             ; 2 uses
  %i.h = zext nneg i32 %.01418.i.i to i64         ; 3 uses
  %i.i = getelementptr [16 x i8], ptr %i.g, i64 %i.h
  %i.j = load i32, ptr %i.i, align 8, !tbaa !52
  %.not19.i.i = icmp eq i32 %i.j, %.0.i.i
  br i1 %.not19.i.i, label %hash_table_index.exit.thread13.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %i.k = phi i64 [ %i.q, %bb.c ], [ %i.h, %bb.b ]
  %.01421.i.i = phi i32 [ %.014.i.i, %bb.c ], [ %.01418.i.i, %bb.b ]
  %.020.i.i = phi i32 [ %i.p, %bb.c ], [ 1, %bb.b ] ; 2 uses
  %i.l = getelementptr [16 x i8], ptr %i.g, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !53
  %.not17.i.i = icmp eq i32 %i.n, 0
  br i1 %.not17.i.i, label %hash_table_index.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.o = add i32 %.020.i.i, %.01421.i.i
  %i.p = add i32 %.020.i.i, 1
  %.014.i.i = and i32 %i.o, %i.e                  ; 2 uses
  %i.q = zext nneg i32 %.014.i.i to i64           ; 3 uses
  %i.r = getelementptr [16 x i8], ptr %i.g, i64 %i.q
  %i.s = load i32, ptr %i.r, align 8, !tbaa !52
  %.not.i.i = icmp eq i32 %i.s, %.0.i.i
  br i1 %.not.i.i, label %hash_table_index.exit.thread13.i, label %.lr.ph.i.i, !llvm.loop !0

hash_table_index.exit.thread13.i:                 ; preds = %bb.c, %bb.b
  %.pre-phi.i = phi i64 [ %i.h, %bb.b ], [ %i.q, %bb.c ]
  %i.t = getelementptr [16 x i8], ptr %i.g, i64 %.pre-phi.i
  br label %rb_id_table_insert_key.exit

hash_table_index.exit.thread.i:                   ; preds = %.lr.ph.i.i, %bb.a
  %i.u = getelementptr i8, ptr %0, i64 8          ; 4 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !50   ; 2 uses
  %i.w = ashr i32 %i.v, 1
  %i.x = add i32 %i.w, %i.v                       ; 3 uses
  %.not.i9.i = icmp slt i32 %i.x, %i.c
  br i1 %.not.i9.i, label %hash_table_extend.exit.i, label %bb.d

bb.d:                                             ; preds = %hash_table_index.exit.thread.i
  %i.y = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !49   ; 2 uses
  %i.aa = ashr i32 %i.z, 1
  %i.ab = add i32 %i.aa, %i.z                     ; 2 uses
  %i.ac = ashr i32 %i.ab, 2
  %i.ad = ashr i32 %i.ab, 3
  %i.ae = or i32 %i.ac, %i.ad                     ; 2 uses
  %i.af = ashr i32 %i.ae, 2
  %i.ag = or i32 %i.af, %i.ae                     ; 2 uses
  %i.ah = ashr i32 %i.ag, 4
  %i.ai = or i32 %i.ah, %i.ag                     ; 2 uses
  %i.aj = ashr i32 %i.ai, 8
  %i.ak = or i32 %i.aj, %i.ai                     ; 2 uses
  %i.al = ashr i32 %i.ak, 16
  %i.am = or i32 %i.al, %i.ak
  %i.an = shl nsw i32 %i.am, 2
  %i.ao = add i32 %i.an, 4                        ; 2 uses
  %i.ap = icmp slt i32 %i.ao, %i.c
  br i1 %i.ap, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aq = ashr i32 %i.x, 2
  %i.ar = ashr i32 %i.x, 3
  %i.as = or i32 %i.aq, %i.ar                     ; 2 uses
  %i.at = ashr i32 %i.as, 2
  %i.au = or i32 %i.at, %i.as                     ; 2 uses
  %i.av = ashr i32 %i.au, 4
  %i.aw = or i32 %i.av, %i.au                     ; 2 uses
  %i.ax = ashr i32 %i.aw, 8
  %i.ay = or i32 %i.ax, %i.aw                     ; 2 uses
  %i.az = ashr i32 %i.ay, 16
  %i.ba = or i32 %i.az, %i.ay
  %i.bb = shl nsw i32 %i.ba, 2
  %i.bc = add i32 %i.bb, 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.022.i.i = phi i32 [ %i.bc, %bb.e ], [ %i.ao, %bb.d ] ; 3 uses
  %i.bd = sext i32 %.022.i.i to i64
  %i.be = tail call noalias nonnull ptr @ruby_xcalloc(i64 noundef %i.bd, i64 noundef 16) #24 ; 5 uses
  %i.bf = load i32, ptr %0, align 8, !tbaa !47    ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  %i.bh = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !48 ; 2 uses
  br i1 %i.bg, label %.lr.ph.i10.i, label %._crit_edge.i.i

.lr.ph.i10.i:                                     ; preds = %bb.f
  %i.bj = add i32 %.022.i.i, -1                   ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %i.bf to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i10.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i10.i ], [ %indvars.iv.next.i.i, %bb.h ] ; 2 uses
  %.sroa.8.031.i.i = phi i32 [ 0, %.lr.ph.i10.i ], [ %.sroa.8.1.i.i, %bb.h ] ; 2 uses
  %.sroa.6.030.i.i = phi i32 [ 0, %.lr.ph.i10.i ], [ %.sroa.6.1.i.i, %bb.h ] ; 2 uses
  %i.bk = getelementptr [16 x i8], ptr %i.bi, i64 %indvars.iv.i.i ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !52 ; 3 uses
  %.not25.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not25.i.i, label %bb.h, label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %bb.g
  %i.bm = getelementptr i8, ptr %i.bk, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !54
  %.02125.i.i.i = and i32 %i.bl, %i.bj            ; 2 uses
  %.pre.i.i.i = sext i32 %.02125.i.i.i to i64     ; 3 uses
  %i.bo = getelementptr [16 x i8], ptr %i.be, i64 %.pre.i.i.i
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !52
  %.not2335.i.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not2335.i.i.i, label %.critedge.i.i.i, label %.lr.ph38.i.i.i

.lr.ph38.i.i.i:                                   ; preds = %.lr.ph.split.i.i.i, %.lr.ph38.i.i.i
  %i.bq = phi i64 [ %i.bv, %.lr.ph38.i.i.i ], [ %.pre.i.i.i, %.lr.ph.split.i.i.i ]
  %.02637.i.i.i = phi i32 [ %i.bu, %.lr.ph38.i.i.i ], [ 1, %.lr.ph.split.i.i.i ] ; 2 uses
  %.0212736.i.i.i = phi i32 [ %.021.i.i.i, %.lr.ph38.i.i.i ], [ %.02125.i.i.i, %.lr.ph.split.i.i.i ]
  %i.br = getelementptr [16 x i8], ptr %i.be, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 4
  store i32 1, ptr %i.bs, align 4, !tbaa !53
  %i.bt = add i32 %.0212736.i.i.i, %.02637.i.i.i
  %i.bu = add i32 %.02637.i.i.i, 1
  %.021.i.i.i = and i32 %i.bt, %i.bj              ; 2 uses
  %i.bv = sext i32 %.021.i.i.i to i64             ; 3 uses
  %i.bw = getelementptr [16 x i8], ptr %i.be, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !52
  %.not23.i.i.i = icmp eq i32 %i.bx, 0
  br i1 %.not23.i.i.i, label %.critedge.i.i.i, label %.lr.ph38.i.i.i

.critedge.i.i.i:                                  ; preds = %.lr.ph38.i.i.i, %.lr.ph.split.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i, %.lr.ph.split.i.i.i ], [ %i.bv, %.lr.ph38.i.i.i ]
  %i.by = add i32 %.sroa.6.030.i.i, 1
  %i.bz = getelementptr [16 x i8], ptr %i.be, i64 %.pre-phi.i.i.i ; 3 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !53
  %.not24.i.i.i = icmp eq i32 %i.cb, 0
  %i.cc = zext i1 %.not24.i.i.i to i32
  %spec.select.i.i = add i32 %.sroa.8.031.i.i, %i.cc
  store i32 %i.bl, ptr %i.bz, align 8, !tbaa !52
  %i.cd = getelementptr i8, ptr %i.bz, i64 8
  store i64 %i.bn, ptr %i.cd, align 8, !tbaa !54
  br label %bb.h

bb.h:                                             ; preds = %.critedge.i.i.i, %bb.g
  %.sroa.6.1.i.i = phi i32 [ %.sroa.6.030.i.i, %bb.g ], [ %i.by, %.critedge.i.i.i ] ; 2 uses
  %.sroa.8.1.i.i = phi i32 [ %.sroa.8.031.i.i, %bb.g ], [ %spec.select.i.i, %.critedge.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.g, !llvm.loop !78

._crit_edge.i.i:                                  ; preds = %bb.h, %bb.f
  %.sroa.6.0.lcssa.i.i = phi i32 [ 0, %bb.f ], [ %.sroa.6.1.i.i, %bb.h ]
  %.sroa.8.0.lcssa.i.i = phi i32 [ 0, %bb.f ], [ %.sroa.8.1.i.i, %bb.h ]
  store i32 %.022.i.i, ptr %0, align 8, !tbaa !13
  store i32 %.sroa.6.0.lcssa.i.i, ptr %i.y, align 4, !tbaa !13
  store i32 %.sroa.8.0.lcssa.i.i, ptr %i.u, align 8, !tbaa !13
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %.sroa.10.0..sroa_idx.i.i, align 4
  store ptr %i.be, ptr %i.bh, align 8, !tbaa !79
  tail call void @ruby_xfree(ptr noundef %i.bi) #20
  %.pre.i = load i32, ptr %0, align 8, !tbaa !47
  br label %hash_table_extend.exit.i

hash_table_extend.exit.i:                         ; preds = %._crit_edge.i.i, %hash_table_index.exit.thread.i
  %i.ce = phi i32 [ %i.c, %hash_table_index.exit.thread.i ], [ %.pre.i, %._crit_edge.i.i ]
  %i.cf = add i32 %i.ce, -1                       ; 2 uses
  %i.cg = getelementptr i8, ptr %0, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !48 ; 5 uses
  %.not.i11.i = icmp eq ptr %i.ch, null
  %.02125.i.i = and i32 %i.cf, %.0.i.i            ; 2 uses
  %.pre.i.i = sext i32 %.02125.i.i to i64         ; 4 uses
  br i1 %.not.i11.i, label %.critedge.i.i, label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %hash_table_extend.exit.i
  %i.ci = getelementptr [16 x i8], ptr %i.ch, i64 %.pre.i.i
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !52
  %.not2335.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not2335.i.i, label %.critedge.i.i, label %.lr.ph38.i.i

.lr.ph38.i.i:                                     ; preds = %.lr.ph.split.i.i, %.lr.ph38.i.i
  %i.ck = phi i64 [ %i.cp, %.lr.ph38.i.i ], [ %.pre.i.i, %.lr.ph.split.i.i ]
  %.02637.i.i = phi i32 [ %i.co, %.lr.ph38.i.i ], [ 1, %.lr.ph.split.i.i ] ; 2 uses
  %.0212736.i.i = phi i32 [ %.021.i.i, %.lr.ph38.i.i ], [ %.02125.i.i, %.lr.ph.split.i.i ]
  %i.cl = getelementptr [16 x i8], ptr %i.ch, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 4
  store i32 1, ptr %i.cm, align 4, !tbaa !53
  %i.cn = add i32 %.0212736.i.i, %.02637.i.i
  %i.co = add i32 %.02637.i.i, 1
  %.021.i.i = and i32 %i.cn, %i.cf                ; 2 uses
  %i.cp = sext i32 %.021.i.i to i64               ; 3 uses
  %i.cq = getelementptr [16 x i8], ptr %i.ch, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !52
  %.not23.i.i = icmp eq i32 %i.cr, 0
  br i1 %.not23.i.i, label %.critedge.i.i, label %.lr.ph38.i.i

.critedge.i.i:                                    ; preds = %.lr.ph38.i.i, %.lr.ph.split.i.i, %hash_table_extend.exit.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %hash_table_extend.exit.i ], [ %.pre.i.i, %.lr.ph.split.i.i ], [ %i.cp, %.lr.ph38.i.i ]
  %i.cs = getelementptr i8, ptr %0, i64 4         ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !49
  %i.cu = add i32 %i.ct, 1
  store i32 %i.cu, ptr %i.cs, align 4, !tbaa !49
  %i.cv = getelementptr [16 x i8], ptr %i.ch, i64 %.pre-phi.i.i ; 3 uses
  %i.cw = getelementptr i8, ptr %i.cv, i64 4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !53
  %.not24.i.i = icmp eq i32 %i.cx, 0
  br i1 %.not24.i.i, label %bb.i, label %hash_table_raw_insert.exit.i

bb.i:                                             ; preds = %.critedge.i.i
  %i.cy = load i32, ptr %i.u, align 8, !tbaa !50
  %i.cz = add i32 %i.cy, 1
  store i32 %i.cz, ptr %i.u, align 8, !tbaa !50
  br label %hash_table_raw_insert.exit.i

hash_table_raw_insert.exit.i:                     ; preds = %bb.i, %.critedge.i.i
  store i32 %.0.i.i, ptr %i.cv, align 8, !tbaa !52
  br label %rb_id_table_insert_key.exit

rb_id_table_insert_key.exit:                      ; preds = %hash_table_index.exit.thread13.i, %hash_table_raw_insert.exit.i
  %.sink26.i = phi ptr [ %i.cv, %hash_table_raw_insert.exit.i ], [ %i.t, %hash_table_index.exit.thread13.i ]
  %i.da = getelementptr i8, ptr %.sink26.i, i64 8
  store i64 %2, ptr %i.da, align 8, !tbaa !54
  ret i32 1
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @rb_id_table_delete(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #15 {
bb.a:
  %i.a = icmp ugt i64 %1, 171
  %i.b = lshr i64 %1, 4
  %.0.in.i.i = select i1 %i.a, i64 %i.b, i64 %1
  %.0.i.i = trunc i64 %.0.in.i.i to i32           ; 3 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %hash_delete_index.exit

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i32 %i.c, -1                     ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !48   ; 4 uses
  %.01418.i = and i32 %i.e, %.0.i.i               ; 2 uses
  %i.h = zext nneg i32 %.01418.i to i64           ; 3 uses
  %i.i = getelementptr [16 x i8], ptr %i.g, i64 %i.h
  %i.j = load i32, ptr %i.i, align 8, !tbaa !52
  %.not19.i = icmp eq i32 %i.j, %.0.i.i
  br i1 %.not19.i, label %hash_table_index.exit.thread6, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.k = phi i64 [ %i.q, %bb.c ], [ %i.h, %bb.b ]
  %.01421.i = phi i32 [ %.014.i, %bb.c ], [ %.01418.i, %bb.b ]
  %.020.i = phi i32 [ %i.p, %bb.c ], [ 1, %bb.b ] ; 2 uses
  %i.l = getelementptr [16 x i8], ptr %i.g, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !53
  %.not17.i = icmp eq i32 %i.n, 0
  br i1 %.not17.i, label %hash_delete_index.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.o = add i32 %.020.i, %.01421.i
  %i.p = add i32 %.020.i, 1
  %.014.i = and i32 %i.o, %i.e                    ; 2 uses
  %i.q = zext nneg i32 %.014.i to i64             ; 3 uses
  %i.r = getelementptr [16 x i8], ptr %i.g, i64 %i.q
  %i.s = load i32, ptr %i.r, align 8, !tbaa !52
  %.not.i = icmp eq i32 %i.s, %.0.i.i
  br i1 %.not.i, label %hash_table_index.exit.thread6, label %.lr.ph.i, !llvm.loop !0

hash_table_index.exit.thread6:                    ; preds = %bb.c, %bb.b
  %.pre-phi = phi i64 [ %i.h, %bb.b ], [ %i.q, %bb.c ]
  %i.t = getelementptr [16 x i8], ptr %i.g, i64 %.pre-phi ; 3 uses
  %i.u = getelementptr i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !53
  %.not.i4 = icmp eq i32 %i.v, 0
  br i1 %.not.i4, label %bb.d, label %bb.e

bb.d:                                             ; preds = %hash_table_index.exit.thread6
  %i.w = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !50
  %i.y = add i32 %i.x, -1
  store i32 %i.y, ptr %i.w, align 8, !tbaa !50
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %hash_table_index.exit.thread6
  %i.z = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !49
  %i.ab = add i32 %i.aa, -1
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !49
  store i32 0, ptr %i.t, align 8, !tbaa !52
  %i.ac = getelementptr i8, ptr %i.t, i64 8
  store i64 0, ptr %i.ac, align 8, !tbaa !54
  br label %hash_delete_index.exit

hash_delete_index.exit:                           ; preds = %.lr.ph.i, %bb.a, %bb.e
  %.0.i = phi i32 [ 1, %bb.e ], [ 0, %bb.a ], [ 0, %.lr.ph.i ]
  ret i32 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_id_table_foreach(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.d = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !48   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %._crit_edge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %.lr.ph.split

.lr.ph.splitthread-pre-split:                     ; preds = %.critedge
  %.pr = load ptr, ptr %i.c, align 8, !tbaa !48
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.splitthread-pre-split, %.lr.ph.split.preheader
  %i.h = phi ptr [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.f, %.lr.ph.split.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph.split.preheader ] ; 4 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split
  %i.i = getelementptr [16 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 8, !tbaa !52   ; 4 uses
  %.not22 = icmp eq i32 %i.j, 0
  br i1 %.not22, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = zext i32 %i.j to i64                     ; 2 uses
  %i.l = icmp ugt i32 %i.j, 171
  br i1 %i.l, label %bb.d, label %key2id.exit

bb.d:                                             ; preds = %bb.c
  %i.m = tail call fastcc i64 @get_id_serial_entry(i32 noundef range(i32 1, 0) %i.j, i32 noundef 1) ; 2 uses
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = tail call i64 @rb_sym2id(i64 noundef %i.m)
  br label %key2id.exit

bb.f:                                             ; preds = %bb.d
  %i.o = shl nuw nsw i64 %i.k, 4
  %i.p = or disjoint i64 %i.o, 15
  br label %key2id.exit

key2id.exit:                                      ; preds = %bb.c, %bb.e, %bb.f
  %.1.i.i = phi i64 [ %i.p, %bb.f ], [ %i.n, %bb.e ], [ %i.k, %bb.c ]
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.r = getelementptr [16 x i8], ptr %i.q, i64 %indvars.iv
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !54
  %i.u = tail call i32 %1(i64 noundef %.1.i.i, i64 noundef %i.t, ptr noundef %2) #20
  switch i32 %i.u, label %.critedge [
    i32 2, label %bb.g
    i32 1, label %._crit_edge
  ]

bb.g:                                             ; preds = %key2id.exit
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.w = getelementptr [16 x i8], ptr %i.v, i64 %indvars.iv ; 3 uses
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !53
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = load i32, ptr %i.d, align 8, !tbaa !50
  %i.aa = add i32 %i.z, -1
  store i32 %i.aa, ptr %i.d, align 8, !tbaa !50
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ab = load i32, ptr %i.e, align 4, !tbaa !49
  %i.ac = add i32 %i.ab, -1
  store i32 %i.ac, ptr %i.e, align 4, !tbaa !49
  store i32 0, ptr %i.w, align 8, !tbaa !52
  %i.ad = getelementptr i8, ptr %i.w, i64 8
  store i64 0, ptr %i.ad, align 8, !tbaa !54
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %key2id.exit, %.lr.ph.split, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.splitthread-pre-split, !llvm.loop !1

._crit_edge:                                      ; preds = %key2id.exit, %.critedge, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_id_table_foreach_values(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !48
  %.not = icmp ne ptr %i.c, null
  %i.d = icmp sgt i32 %i.a, 0
  %or.cond = select i1 %.not, i1 %i.d, i1 false
  br i1 %or.cond, label %.lr.ph.split.preheader, label %.loopexit

.lr.ph.split.preheader:                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !48   ; 2 uses
  %.not19 = icmp eq ptr %i.g, null
  br i1 %.not19, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split
  %i.h = getelementptr [16 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !52
  %.not20 = icmp eq i32 %i.i, 0
  br i1 %.not20, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.h, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !54
  %i.l = tail call i32 %1(i64 noundef %i.k, ptr noundef %2) #20
  switch i32 %i.l, label %.critedge [
    i32 2, label %bb.d
    i32 1, label %.loopexit
  ]

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.n = getelementptr [16 x i8], ptr %i.m, i64 %indvars.iv ; 3 uses
  %i.o = getelementptr i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !53
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = load i32, ptr %i.e, align 8, !tbaa !50
  %i.r = add i32 %i.q, -1
  store i32 %i.r, ptr %i.e, align 8, !tbaa !50
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = load i32, ptr %i.f, align 4, !tbaa !49
  %i.t = add i32 %i.s, -1
  store i32 %i.t, ptr %i.f, align 4, !tbaa !49
  store i32 0, ptr %i.n, align 8, !tbaa !52
  %i.u = getelementptr i8, ptr %i.n, i64 8
  store i64 0, ptr %i.u, align 8, !tbaa !54
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.c, %.lr.ph.split, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !2

.loopexit:                                        ; preds = %bb.c, %.critedge, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_id_table_foreach_values_with_replace(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !tbaa !47     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %._crit_edge, label %.lr.ph.split.outer

.lr.ph.split.outer:                               ; preds = %.lr.ph, %..lr.ph.split.backedge_crit_edge
  %.pre29.ph = phi ptr [ %.pre.pre, %..lr.ph.split.backedge_crit_edge ], [ %i.e, %.lr.ph ] ; 2 uses
  %.02025.ph = phi i32 [ %i.w, %..lr.ph.split.backedge_crit_edge ], [ 0, %.lr.ph ]
  %.not = icmp eq ptr %.pre29.ph, null
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.outer, %bb.f
  %.02025 = phi i32 [ %.old, %bb.f ], [ %.02025.ph, %.lr.ph.split.outer ] ; 3 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split
  %i.g = zext nneg i32 %.02025 to i64             ; 3 uses
  %i.h = getelementptr [16 x i8], ptr %.pre29.ph, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !52
  %.not23 = icmp eq i32 %i.i, 0
  br i1 %.not23, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.h, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !54
  %i.l = call i32 %1(i64 noundef %i.k, ptr noundef %3) #20 ; 2 uses
  %i.m = icmp eq i32 %i.l, 4
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !48
  %i.o = getelementptr [16 x i8], ptr %i.n, i64 %i.g
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !54
  store i64 %i.q, ptr %i.a, align 8, !tbaa !20
  %i.r = call i32 %2(ptr noundef nonnull %i.a, ptr noundef %3, i32 noundef 1) #20
  %i.s = load i64, ptr %i.a, align 8, !tbaa !20
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !48
  %i.u = getelementptr [16 x i8], ptr %i.t, i64 %i.g
  %i.v = getelementptr i8, ptr %i.u, i64 8
  store i64 %i.s, ptr %i.v, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.019 = phi i32 [ %i.r, %bb.d ], [ %i.l, %bb.c ]
  %.not24 = icmp ne i32 %.019, 1
  %i.w = add nuw nsw i32 %.02025, 1               ; 2 uses
  %i.x = icmp slt i32 %i.w, %i.b
  %or.cond = select i1 %.not24, i1 %i.x, i1 false
  br i1 %or.cond, label %..lr.ph.split.backedge_crit_edge, label %._crit_edge

..lr.ph.split.backedge_crit_edge:                 ; preds = %bb.e
  %.pre.pre = load ptr, ptr %i.d, align 8, !tbaa !48
  br label %.lr.ph.split.outer, !llvm.loop !80

bb.f:                                             ; preds = %.lr.ph.split, %bb.b
  %.old = add nuw nsw i32 %.02025, 1              ; 2 uses
  %.old27 = icmp slt i32 %.old, %i.b
  br i1 %.old27, label %.lr.ph.split, label %._crit_edge, !llvm.loop !80

._crit_edge:                                      ; preds = %bb.f, %bb.e, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @managed_id_table_free(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48
  tail call void @ruby_xfree(ptr noundef %i.b) #20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i64 -34359738368, 34359738353) i64 @managed_id_table_memsize(ptr nofree noundef readonly captures(none) %0) #13 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !47
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 4
  ret i64 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_managed_id_table_create(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_data_typed_object_zalloc(i64 noundef 0, i64 noundef 24, ptr noundef %0) #20 ; 3 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !57
  %i.e = trunc i64 %i.d to i1
  %i.f = getelementptr i8, ptr %i.b, i64 32       ; 2 uses
  br i1 %i.e, label %RTYPEDDATA_GET_DATA.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58
  br label %RTYPEDDATA_GET_DATA.exit

RTYPEDDATA_GET_DATA.exit:                         ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.f, %bb.a ] ; 3 uses
  %i.i = tail call i64 @rb_obj_set_shareable(i64 noundef %i.a) #20 ; 0 uses
  %i.j = trunc i64 %1 to i32                      ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.h, i8 noundef 0, i64 noundef range(i64 -51539607552, 51539607529) 24, i1 noundef false) #20
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %rb_id_table_init.exit

bb.c:                                             ; preds = %RTYPEDDATA_GET_DATA.exit
  %i.l = lshr i32 %i.j, 2
  %i.m = lshr i32 %i.j, 3
  %i.n = or i32 %i.l, %i.m                        ; 2 uses
  %i.o = lshr i32 %i.n, 2
  %i.p = or i32 %i.o, %i.n                        ; 2 uses
  %i.q = lshr i32 %i.p, 4
  %i.r = or i32 %i.q, %i.p                        ; 2 uses
  %i.s = lshr i32 %i.r, 8
  %i.t = or i32 %i.s, %i.r                        ; 2 uses
  %i.u = lshr i32 %i.t, 16
  %i.v = or i32 %i.u, %i.t
  %i.w = shl nuw nsw i32 %i.v, 2
  %i.x = add nuw i32 %i.w, 4                      ; 2 uses
  store i32 %i.x, ptr %i.h, align 8, !tbaa !47
  %i.y = sext i32 %i.x to i64
  %i.z = tail call noalias nonnull ptr @ruby_xcalloc(i64 noundef %i.y, i64 noundef 16) #24
  %i.aa = getelementptr i8, ptr %i.h, i64 16
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !48
  br label %rb_id_table_init.exit

rb_id_table_init.exit:                            ; preds = %RTYPEDDATA_GET_DATA.exit, %bb.c
  ret i64 %i.a
}

declare i64 @rb_data_typed_object_zalloc(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @rb_obj_set_shareable(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_managed_id_table_new(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_data_typed_object_zalloc(i64 noundef 0, i64 noundef 24, ptr noundef nonnull @rb_managed_id_table_type) #20 ; 3 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !57
  %i.e = trunc i64 %i.d to i1
  %i.f = getelementptr i8, ptr %i.b, i64 32       ; 2 uses
  br i1 %i.e, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.b, %bb.a
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.f, %bb.a ] ; 3 uses
  %i.i = tail call i64 @rb_obj_set_shareable(i64 noundef %i.a) #20 ; 0 uses
  %i.j = trunc i64 %0 to i32                      ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.h, i8 noundef 0, i64 noundef range(i64 -51539607552, 51539607529) 24, i1 noundef false) #20
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %rb_managed_id_table_create.exit

bb.c:                                             ; preds = %RTYPEDDATA_GET_DATA.exit.i
  %i.l = lshr i32 %i.j, 2
  %i.m = lshr i32 %i.j, 3
  %i.n = or i32 %i.l, %i.m                        ; 2 uses
  %i.o = lshr i32 %i.n, 2
  %i.p = or i32 %i.o, %i.n                        ; 2 uses
  %i.q = lshr i32 %i.p, 4
  %i.r = or i32 %i.q, %i.p                        ; 2 uses
  %i.s = lshr i32 %i.r, 8
  %i.t = or i32 %i.s, %i.r                        ; 2 uses
  %i.u = lshr i32 %i.t, 16
  %i.v = or i32 %i.u, %i.t
  %i.w = shl nuw nsw i32 %i.v, 2
  %i.x = add nuw i32 %i.w, 4                      ; 2 uses
  store i32 %i.x, ptr %i.h, align 8, !tbaa !47
  %i.y = sext i32 %i.x to i64
  %i.z = tail call noalias nonnull ptr @ruby_xcalloc(i64 noundef %i.y, i64 noundef 16) #24
  %i.aa = getelementptr i8, ptr %i.h, i64 16
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !48
  br label %rb_managed_id_table_create.exit

rb_managed_id_table_create.exit:                  ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.c
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_managed_id_table_dup(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 24       ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !57
  %i.d = and i64 %i.c, -2
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = tail call i64 @rb_data_typed_object_zalloc(i64 noundef 0, i64 noundef 24, ptr noundef %i.e) #20 ; 2 uses
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !57
  %i.j = trunc i64 %i.i to i1
  %i.k = getelementptr i8, ptr %i.g, i64 32       ; 2 uses
  br i1 %i.j, label %RTYPEDDATA_GET_DATA.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !58
  br label %RTYPEDDATA_GET_DATA.exit

RTYPEDDATA_GET_DATA.exit:                         ; preds = %bb.a, %bb.b
  %i.m = phi ptr [ %i.l, %bb.b ], [ %i.k, %bb.a ] ; 4 uses
  %i.n = load i64, ptr %i.b, align 8, !tbaa !57
  %i.o = trunc i64 %i.n to i1
  %i.p = getelementptr i8, ptr %i.a, i64 32       ; 2 uses
  br i1 %i.o, label %managed_id_table_ptr.exit, label %bb.c

bb.c:                                             ; preds = %RTYPEDDATA_GET_DATA.exit
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !58
  br label %managed_id_table_ptr.exit

managed_id_table_ptr.exit:                        ; preds = %RTYPEDDATA_GET_DATA.exit, %bb.c
  %i.r = phi ptr [ %i.q, %bb.c ], [ %i.p, %RTYPEDDATA_GET_DATA.exit ] ; 3 uses
  %i.s = getelementptr i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !49   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.m, i8 noundef 0, i64 noundef range(i64 -51539607552, 51539607529) 24, i1 noundef false) #20
  %i.u = icmp ult i32 %i.t, 2147483647
  br i1 %i.u, label %bb.d, label %rb_id_table_init.exit

bb.d:                                             ; preds = %managed_id_table_ptr.exit
  %i.v = add nuw nsw i32 %i.t, 1                  ; 2 uses
  %i.w = lshr i32 %i.v, 2
  %i.x = lshr i32 %i.v, 3
  %i.y = or i32 %i.w, %i.x                        ; 2 uses
  %i.z = lshr i32 %i.y, 2
  %i.aa = or i32 %i.z, %i.y                       ; 2 uses
  %i.ab = lshr i32 %i.aa, 4
  %i.ac = or i32 %i.ab, %i.aa                     ; 2 uses
  %i.ad = lshr i32 %i.ac, 8
  %i.ae = or i32 %i.ad, %i.ac                     ; 2 uses
  %i.af = lshr i32 %i.ae, 16
  %i.ag = or i32 %i.af, %i.ae
  %i.ah = shl nuw nsw i32 %i.ag, 2
  %i.ai = add nuw i32 %i.ah, 4                    ; 2 uses
  store i32 %i.ai, ptr %i.m, align 8, !tbaa !47
  %i.aj = sext i32 %i.ai to i64
  %i.ak = tail call noalias nonnull ptr @ruby_xcalloc(i64 noundef %i.aj, i64 noundef 16) #24
  %i.al = getelementptr i8, ptr %i.m, i64 16
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !48
  br label %rb_id_table_init.exit

rb_id_table_init.exit:                            ; preds = %managed_id_table_ptr.exit, %bb.d
  %i.am = load i32, ptr %i.r, align 8, !tbaa !47  ; 2 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.lr.ph.i, label %rb_id_table_foreach.exit

.lr.ph.i:                                         ; preds = %rb_id_table_init.exit
  %i.ao = getelementptr i8, ptr %i.r, i64 16      ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !48 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %rb_id_table_foreach.exit, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %i.am to i64
  br label %.lr.ph.split.i

.lr.ph.splitthread-pre-split.i:                   ; preds = %.critedge.i
end_hunk_2
begin_hunk_3_@rb_managed_id_table_dup:bb.a
  br label %key2id.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ay = shl nuw nsw i64 %i.au, 4
  %i.az = or disjoint i64 %i.ay, 15
  br label %key2id.exit.i

key2id.exit.i:                                    ; preds = %bb.i, %bb.h, %bb.f
  %.1.i.i.i = phi i64 [ %i.az, %bb.i ], [ %i.ax, %bb.h ], [ %i.au, %bb.f ]
  %i.ba = load ptr, ptr %i.ao, align 8, !tbaa !48
  %i.bb = getelementptr [16 x i8], ptr %i.ba, i64 %indvars.iv.i
  %i.bc = getelementptr i8, ptr %i.bb, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !54
  %i.be = tail call i32 @rb_id_table_insert(ptr noundef nonnull %i.m, i64 noundef %.1.i.i.i, i64 noundef %i.bd) ; 0 uses
  br label %.critedge.i

.critedge.i:                                      ; preds = %key2id.exit.i, %bb.e, %.lr.ph.split.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %rb_id_table_foreach.exit, label %.lr.ph.splitthread-pre-split.i, !llvm.loop !1

rb_id_table_foreach.exit:                         ; preds = %.critedge.i, %rb_id_table_init.exit, %.lr.ph.i
  ret i64 %i.f
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @rb_managed_id_table_lookup(i64 noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #14 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !57
  %i.d = trunc i64 %i.c to i1
  %i.e = getelementptr i8, ptr %i.a, i64 32       ; 2 uses
  br i1 %i.d, label %managed_id_table_ptr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58
  br label %managed_id_table_ptr.exit

managed_id_table_ptr.exit:                        ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %i.h = icmp ugt i64 %1, 171
  %i.i = lshr i64 %1, 4
  %.0.in.i.i.i = select i1 %i.h, i64 %i.i, i64 %1
  %.0.i.i.i = trunc i64 %.0.in.i.i.i to i32       ; 3 uses
  %i.j = load i32, ptr %i.g, align 8, !tbaa !47   ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %rb_id_table_lookup.exit

bb.c:                                             ; preds = %managed_id_table_ptr.exit
  %i.l = add nsw i32 %i.j, -1                     ; 2 uses
  %i.m = getelementptr i8, ptr %i.g, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !48   ; 4 uses
  %.01418.i.i = and i32 %i.l, %.0.i.i.i           ; 2 uses
  %i.o = zext nneg i32 %.01418.i.i to i64         ; 3 uses
  %i.p = getelementptr [16 x i8], ptr %i.n, i64 %i.o
  %i.q = load i32, ptr %i.p, align 8, !tbaa !52
  %.not19.i.i = icmp eq i32 %i.q, %.0.i.i.i
  br i1 %.not19.i.i, label %hash_table_index.exit.thread9.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %i.r = phi i64 [ %i.x, %bb.d ], [ %i.o, %bb.c ]
  %.01421.i.i = phi i32 [ %.014.i.i, %bb.d ], [ %.01418.i.i, %bb.c ]
  %.020.i.i = phi i32 [ %i.w, %bb.d ], [ 1, %bb.c ] ; 2 uses
  %i.s = getelementptr [16 x i8], ptr %i.n, i64 %i.r
  %i.t = getelementptr i8, ptr %i.s, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !53
  %.not17.i.i = icmp eq i32 %i.u, 0
  br i1 %.not17.i.i, label %rb_id_table_lookup.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.v = add i32 %.020.i.i, %.01421.i.i
  %i.w = add i32 %.020.i.i, 1
  %.014.i.i = and i32 %i.v, %i.l                  ; 2 uses
  %i.x = zext nneg i32 %.014.i.i to i64           ; 3 uses
  %i.y = getelementptr [16 x i8], ptr %i.n, i64 %i.x
  %i.z = load i32, ptr %i.y, align 8, !tbaa !52
  %.not.i.i = icmp eq i32 %i.z, %.0.i.i.i
  br i1 %.not.i.i, label %hash_table_index.exit.thread9.i, label %.lr.ph.i.i, !llvm.loop !0

hash_table_index.exit.thread9.i:                  ; preds = %bb.d, %bb.c
  %.pre-phi.i = phi i64 [ %i.o, %bb.c ], [ %i.x, %bb.d ]
  %i.aa = getelementptr [16 x i8], ptr %i.n, i64 %.pre-phi.i
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !54
  store i64 %i.ac, ptr %2, align 8, !tbaa !20
  br label %rb_id_table_lookup.exit

rb_id_table_lookup.exit:                          ; preds = %.lr.ph.i.i, %managed_id_table_ptr.exit, %hash_table_index.exit.thread9.i
  %.0.i = phi i32 [ 1, %hash_table_index.exit.thread9.i ], [ 0, %managed_id_table_ptr.exit ], [ 0, %.lr.ph.i.i ]
  ret i32 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef i32 @rb_managed_id_table_insert(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !57
  %i.d = trunc i64 %i.c to i1
  %i.e = getelementptr i8, ptr %i.a, i64 32       ; 2 uses
  br i1 %i.d, label %managed_id_table_ptr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58
  br label %managed_id_table_ptr.exit

managed_id_table_ptr.exit:                        ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %i.h = tail call i32 @rb_id_table_insert(ptr noundef %i.g, i64 noundef %1, i64 noundef %2) ; 0 uses
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i64 -2147483648, 2147483648) i64 @rb_managed_id_table_size(i64 noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !57
  %i.d = trunc i64 %i.c to i1
  %i.e = getelementptr i8, ptr %i.a, i64 32       ; 2 uses
  br i1 %i.d, label %managed_id_table_ptr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58
  br label %managed_id_table_ptr.exit

managed_id_table_ptr.exit:                        ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %i.h = getelementptr i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !49
  %i.j = sext i32 %i.i to i64
  ret i64 %i.j
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_managed_id_table_foreach(i64 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !57
  %i.d = trunc i64 %i.c to i1
  %i.e = getelementptr i8, ptr %i.a, i64 32       ; 2 uses
  br i1 %i.d, label %managed_id_table_ptr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58
  br label %managed_id_table_ptr.exit

managed_id_table_ptr.exit:                        ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  tail call void @rb_id_table_foreach(ptr noundef %i.g, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_managed_id_table_foreach_values(i64 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !57
  %i.d = trunc i64 %i.c to i1
  %i.e = getelementptr i8, ptr %i.a, i64 32       ; 2 uses
  br i1 %i.d, label %managed_id_table_ptr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58
  br label %managed_id_table_ptr.exit

managed_id_table_ptr.exit:                        ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ] ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !47   ; 2 uses
  %i.i = getelementptr i8, ptr %i.g, i64 16       ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48
  %.not.i = icmp ne ptr %i.j, null
  %i.k = icmp sgt i32 %i.h, 0
  %or.cond.i = select i1 %.not.i, i1 %i.k, i1 false
  br i1 %or.cond.i, label %.lr.ph.split.preheader.i, label %rb_id_table_foreach_values.exit

.lr.ph.split.preheader.i:                         ; preds = %managed_id_table_ptr.exit
  %i.l = getelementptr i8, ptr %i.g, i64 8        ; 2 uses
  %i.m = getelementptr i8, ptr %i.g, i64 4        ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.h to i64
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.critedge.i, %.lr.ph.split.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.split.preheader.i ], [ %indvars.iv.next.i, %.critedge.i ] ; 3 uses
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !48   ; 2 uses
  %.not19.i = icmp eq ptr %i.n, null
  br i1 %.not19.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.i
  %i.o = getelementptr [16 x i8], ptr %i.n, i64 %indvars.iv.i ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !52
  %.not20.i = icmp eq i32 %i.p, 0
  br i1 %.not20.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.o, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !54
  %i.s = tail call i32 %1(i64 noundef %i.r, ptr noundef %2) #20, !inline_history !81
  switch i32 %i.s, label %.critedge.i [
    i32 2, label %bb.e
    i32 1, label %rb_id_table_foreach_values.exit
  ]

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !48
  %i.u = getelementptr [16 x i8], ptr %i.t, i64 %indvars.iv.i ; 3 uses
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !53
  %.not.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = load i32, ptr %i.l, align 8, !tbaa !50
  %i.y = add i32 %i.x, -1
  store i32 %i.y, ptr %i.l, align 8, !tbaa !50
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.z = load i32, ptr %i.m, align 4, !tbaa !49
  %i.aa = add i32 %i.z, -1
  store i32 %i.aa, ptr %i.m, align 4, !tbaa !49
  store i32 0, ptr %i.u, align 8, !tbaa !52
  %i.ab = getelementptr i8, ptr %i.u, i64 8
  store i64 0, ptr %i.ab, align 8, !tbaa !54
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.g, %bb.d, %bb.c, %.lr.ph.split.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %rb_id_table_foreach_values.exit, label %.lr.ph.split.i, !llvm.loop !2

rb_id_table_foreach_values.exit:                  ; preds = %bb.d, %.critedge.i, %managed_id_table_ptr.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @rb_managed_id_table_delete(i64 noundef %0, i64 noundef %1) local_unnamed_addr #15 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !57
  %i.d = trunc i64 %i.c to i1
  %i.e = getelementptr i8, ptr %i.a, i64 32       ; 2 uses
  br i1 %i.d, label %managed_id_table_ptr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58
  br label %managed_id_table_ptr.exit

managed_id_table_ptr.exit:                        ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ] ; 4 uses
  %i.h = icmp ugt i64 %1, 171
  %i.i = lshr i64 %1, 4
  %.0.in.i.i.i = select i1 %i.h, i64 %i.i, i64 %1
  %.0.i.i.i = trunc i64 %.0.in.i.i.i to i32       ; 3 uses
  %i.j = load i32, ptr %i.g, align 8, !tbaa !47   ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %rb_id_table_delete.exit

bb.c:                                             ; preds = %managed_id_table_ptr.exit
  %i.l = add nsw i32 %i.j, -1                     ; 2 uses
  %i.m = getelementptr i8, ptr %i.g, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !48   ; 4 uses
  %.01418.i.i = and i32 %i.l, %.0.i.i.i           ; 2 uses
  %i.o = zext nneg i32 %.01418.i.i to i64         ; 3 uses
  %i.p = getelementptr [16 x i8], ptr %i.n, i64 %i.o
  %i.q = load i32, ptr %i.p, align 8, !tbaa !52
  %.not19.i.i = icmp eq i32 %i.q, %.0.i.i.i
  br i1 %.not19.i.i, label %hash_table_index.exit.thread6.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %i.r = phi i64 [ %i.x, %bb.d ], [ %i.o, %bb.c ]
  %.01421.i.i = phi i32 [ %.014.i.i, %bb.d ], [ %.01418.i.i, %bb.c ]
  %.020.i.i = phi i32 [ %i.w, %bb.d ], [ 1, %bb.c ] ; 2 uses
  %i.s = getelementptr [16 x i8], ptr %i.n, i64 %i.r
  %i.t = getelementptr i8, ptr %i.s, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !53
  %.not17.i.i = icmp eq i32 %i.u, 0
  br i1 %.not17.i.i, label %rb_id_table_delete.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.v = add i32 %.020.i.i, %.01421.i.i
  %i.w = add i32 %.020.i.i, 1
  %.014.i.i = and i32 %i.v, %i.l                  ; 2 uses
  %i.x = zext nneg i32 %.014.i.i to i64           ; 3 uses
  %i.y = getelementptr [16 x i8], ptr %i.n, i64 %i.x
  %i.z = load i32, ptr %i.y, align 8, !tbaa !52
  %.not.i.i = icmp eq i32 %i.z, %.0.i.i.i
  br i1 %.not.i.i, label %hash_table_index.exit.thread6.i, label %.lr.ph.i.i, !llvm.loop !0

hash_table_index.exit.thread6.i:                  ; preds = %bb.d, %bb.c
  %.pre-phi.i = phi i64 [ %i.o, %bb.c ], [ %i.x, %bb.d ]
  %i.aa = getelementptr [16 x i8], ptr %i.n, i64 %.pre-phi.i ; 3 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !53
  %.not.i4.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i4.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %hash_table_index.exit.thread6.i
  %i.ad = getelementptr i8, ptr %i.g, i64 8       ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !50
  %i.af = add i32 %i.ae, -1
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !50
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %hash_table_index.exit.thread6.i
  %i.ag = getelementptr i8, ptr %i.g, i64 4       ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !49
  %i.ai = add i32 %i.ah, -1
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !49
  store i32 0, ptr %i.aa, align 8, !tbaa !52
  %i.aj = getelementptr i8, ptr %i.aa, i64 8
  store i64 0, ptr %i.aj, align 8, !tbaa !54
  br label %rb_id_table_delete.exit

rb_id_table_delete.exit:                          ; preds = %.lr.ph.i.i, %managed_id_table_ptr.exit, %bb.f
  %.0.i.i = phi i32 [ 1, %bb.f ], [ 0, %managed_id_table_ptr.exit ], [ 0, %.lr.ph.i.i ]
  ret i32 %.0.i.i
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @Init_builtin_symbol() local_unnamed_addr #0 {
bb.a:
  tail call void @rb_load_with_builtin_functions(ptr noundef nonnull @.str.13, ptr noundef nonnull @Init_builtin_symbol.symbol_table) #20
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @builtin_inline_class_12(ptr nofree readnone captures(none) %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call i64 @rb_sym_to_s(i64 noundef %1) #20
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @builtin_inline_class_28(ptr nofree readnone captures(none) %0, i64 noundef %1) #0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = and i64 %1, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %RB_DYNAMIC_SYM_P.exit.thread.i, label %RB_DYNAMIC_SYM_P.exit.i

RB_DYNAMIC_SYM_P.exit.i:                          ; preds = %bb.a
  %i.e = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !30
  %i.g = and i64 %i.f, 31
  %i.h = icmp eq i64 %i.g, 20
  br i1 %i.h, label %bb.b, label %RB_DYNAMIC_SYM_P.exit.thread.i

bb.b:                                             ; preds = %RB_DYNAMIC_SYM_P.exit.i
  %i.i = getelementptr i8, ptr %i.e, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !38
  br label %rb_sym2str.exit

RB_DYNAMIC_SYM_P.exit.thread.i:                   ; preds = %RB_DYNAMIC_SYM_P.exit.i, %bb.a
  %i.k = icmp ugt i64 %1, 44031
  %.0.in.i.i.i.i.i.v = select i1 %i.k, i64 12, i64 8
  %.0.in.i.i.i.i.i = lshr i64 %1, %.0.in.i.i.i.i.i.v
  %.0.i.i.i.i.i = trunc i64 %.0.in.i.i.i.i.i to i32
  %i.l = tail call fastcc i64 @get_id_serial_entry(i32 noundef %.0.i.i.i.i.i, i32 noundef 0)
  br label %rb_sym2str.exit

rb_sym2str.exit:                                  ; preds = %bb.b, %RB_DYNAMIC_SYM_P.exit.thread.i
  %.0.i = phi i64 [ %i.j, %bb.b ], [ %i.l, %RB_DYNAMIC_SYM_P.exit.thread.i ]
  ret i64 %.0.i
}

declare void @rb_load_with_builtin_functions(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @sym_set_hash(i64 noundef %0) #0 {
bb.a:
  %i.a = trunc i64 %0 to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %0, -2
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !28
  %i.f = tail call i64 @rb_str_hash(i64 noundef %i.e) #20
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = inttoptr i64 %0 to ptr
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !59
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.f, %bb.b ], [ %i.i, %bb.c ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal zeroext i1 @sym_set_cmp(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = trunc i64 %0 to i1
  %i.b = and i64 %0, -2
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %i.e = inttoptr i64 %0 to ptr
  %i.f = getelementptr i8, ptr %i.e, i64 24
  %.0.in.i = select i1 %i.a, ptr %i.d, ptr %i.f
  %.0.i = load i64, ptr %.0.in.i, align 8, !tbaa !20
  %i.g = trunc i64 %1 to i1
  %i.h = and i64 %1, -2
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %i.k = inttoptr i64 %1 to ptr
  %i.l = getelementptr i8, ptr %i.k, i64 24
  %.0.in.i2 = select i1 %i.g, ptr %i.j, ptr %i.l
  %.0.i3 = load i64, ptr %.0.in.i2, align 8, !tbaa !20
  %i.m = tail call i32 @rb_str_hash_cmp(i64 noundef %.0.i, i64 noundef %.0.i3) #20
  %i.n = icmp eq i32 %i.m, 0
  ret i1 %i.n
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @sym_set_create(i64 noundef %0, ptr nofree noundef readnone captures(address_is_null) %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %.not = icmp eq ptr %1, null
  %i.g = and i64 %0, -2
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.k = tail call ptr @rb_enc_get(i64 noundef %i.j) #20 ; 2 uses
  %i.l = inttoptr i64 %i.j to ptr                 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !30
  %i.n = and i64 %i.m, 8192
  %.not.i.i = icmp eq i64 %i.n, 0
  %i.o = getelementptr i8, ptr %i.l, i64 24       ; 2 uses
  br i1 %.not.i.i, label %RSTRING_PTR.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !18
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.b, %bb.a
  %i.q = phi ptr [ %i.p, %bb.b ], [ %i.o, %bb.a ]
  %i.r = getelementptr i8, ptr %i.l, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !32
  %i.t = tail call i64 @rb_enc_str_new(ptr noundef %i.q, i64 noundef %i.s, ptr noundef %i.k) #20 ; 7 uses
  %i.u = tail call nonnull ptr @rb_usascii_encoding() #20 ; 2 uses
  %.not.i = icmp eq ptr %i.k, %i.u
  br i1 %.not.i, label %dup_string_for_create.exit, label %bb.c

bb.c:                                             ; preds = %RSTRING_PTR.exit.i
  %i.v = tail call ptr @rb_enc_get(i64 noundef %i.t) #20 ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 20
  %.val.i.i.i = load i32, ptr %i.w, align 4, !tbaa !24
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 1
  br i1 %.not.i.i.i, label %rb_enc_asciicompat.exit.i.i, label %dup_string_for_create.exit

rb_enc_asciicompat.exit.i.i:                      ; preds = %bb.c
  %i.x = tail call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %i.v) #22
  %.not3.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not3.i.i.i, label %bb.d, label %dup_string_for_create.exit

bb.d:                                             ; preds = %rb_enc_asciicompat.exit.i.i
  %i.y = tail call i32 @rb_enc_str_coderange(i64 noundef %i.t) #20
  switch i32 %i.y, label %dup_string_for_create.exit [
    i32 3145728, label %bb.e
    i32 1048576, label %sym_check_asciionly.exit.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.z = load i64, ptr @rb_eEncodingError, align 8, !tbaa !20
  %i.aa = tail call ptr @rb_enc_get(i64 noundef %i.t) #20
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %.val.i.i = load ptr, ptr %i.ab, align 8, !tbaa !25
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.z, ptr noundef nonnull @.str.114, ptr noundef %.val.i.i, i64 noundef %i.t) #21
  unreachable

sym_check_asciionly.exit.i:                       ; preds = %bb.d
  %i.ac = tail call i64 @rb_enc_associate(i64 noundef %i.t, ptr noundef nonnull %i.u) #20 ; 0 uses
  br label %dup_string_for_create.exit

dup_string_for_create.exit:                       ; preds = %RSTRING_PTR.exit.i, %bb.c, %rb_enc_asciicompat.exit.i.i, %bb.d, %sym_check_asciionly.exit.i
  tail call void @rb_obj_freeze_inline(i64 noundef %i.t) #20
  %i.ad = tail call i64 @rb_fstring(i64 noundef %i.t) #20 ; 10 uses
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %dup_string_for_create.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ae = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !83
  store volatile ptr %i.af, ptr %i.e, align 8, !tbaa !83
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.e, align 8, !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ag = load i64, ptr @rb_cSymbol, align 8, !tbaa !20
  %i.ah = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..i, i64 noundef %i.ag, i64 noundef 20, i32 noundef 0, i64 noundef 40) #20 ; 6 uses
  %i.ai = inttoptr i64 %i.ah to ptr               ; 3 uses
  %i.aj = tail call ptr @rb_enc_get(i64 noundef %i.ad) #20
  %i.ak = tail call i32 @rb_enc_to_index(ptr noundef %i.aj) #22
  tail call void @rb_enc_set_index(i64 noundef %i.ah, i32 noundef %i.ak) #20
  %i.al = getelementptr i8, ptr %i.ai, i64 24
  store i64 %i.ad, ptr %i.al, align 8, !tbaa !20
  %i.am = icmp eq i64 %i.ad, 0
  %i.an = and i64 %i.ad, 7
  %i.ao = icmp ne i64 %i.an, 0
  %i.ap = or i1 %i.am, %i.ao
  br i1 %i.ap, label %rb_obj_write.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @rb_gc_writebarrier(i64 noundef %i.ah, i64 noundef %i.ad) #20
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %bb.f, %bb.g
  tail call void @rb_obj_freeze_inline(i64 noundef %i.ah) #20
  %i.aq = tail call i64 @rb_obj_set_shareable(i64 noundef %i.ah) #20 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.ad, ptr %i.c, align 8, !tbaa !20
  %i.ar = call ptr @rb_string_value_ptr(ptr noundef nonnull %i.c) #20
  %i.as = load i64, ptr %i.c, align 8, !tbaa !20  ; 2 uses
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = getelementptr i8, ptr %i.at, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !32
  %i.aw = call ptr @rb_enc_get(i64 noundef %i.as) #20
  %i.ax = call i32 @rb_enc_symname_type(ptr noundef %i.ar, i64 noundef %i.av, ptr noundef %i.aw, i32 noundef 65279) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store ptr %i.c, ptr %i.d, align 8, !tbaa !43
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.d) #20, !srcloc !44
  %i.ay = load ptr, ptr %i.d, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  %i.az = load volatile i64, ptr %i.ay, align 8, !tbaa !20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ba = icmp slt i32 %i.ax, 0
  %spec.store.select = select i1 %i.ba, i32 14, i32 %i.ax
  %i.bb = sext i32 %spec.store.select to i64
  %i.bc = getelementptr i8, ptr %i.ai, i64 32
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !36
  %i.bd = call i64 @rb_str_hash(i64 noundef %i.ad) #20
  %i.be = getelementptr i8, ptr %i.ai, i64 16
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !59
  br label %bb.q

bb.h:                                             ; preds = %dup_string_for_create.exit
  %i.bf = tail call noalias nonnull dereferenceable(16) ptr @ruby_xmalloc(i64 noundef 16) #25 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 %i.ad, ptr %i.bg, align 8, !tbaa !28
  %i.bh = load i64, ptr %i.h, align 8, !tbaa !27  ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.ad, ptr %i.a, align 8, !tbaa !20
  %i.bj = call ptr @rb_string_value_ptr(ptr noundef nonnull %i.a) #20
  %i.bk = load i64, ptr %i.a, align 8, !tbaa !20  ; 2 uses
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = getelementptr i8, ptr %i.bl, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !32
  %i.bo = call ptr @rb_enc_get(i64 noundef %i.bk) #20
  %i.bp = call i32 @rb_enc_symname_type(ptr noundef %i.bj, i64 noundef %i.bn, ptr noundef %i.bo, i32 noundef 65279) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store ptr %i.a, ptr %i.b, align 8, !tbaa !43
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #20, !srcloc !44
  %i.bq = load ptr, ptr %i.b, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.br = load volatile i64, ptr %i.bq, align 8, !tbaa !20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bs = icmp eq i32 %i.bp, -1
  %narrow = select i1 %i.bs, i32 14, i32 %i.bp
  %spec.store.select1 = sext i32 %narrow to i64
  %i.bt = atomicrmw volatile add ptr @ruby_global_symbols, i32 1 seq_cst, align 4
  %i.bu = zext i32 %i.bt to i64
  %i.bv = shl nuw nsw i64 %i.bu, 12
  %i.bw = shl nsw i64 %spec.store.select1, 8
  %i.bx = or i64 %i.bw, %i.bv
  %i.by = or i64 %i.bx, 268
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.036 = phi i64 [ %i.by, %bb.i ], [ %i.bh, %bb.h ] ; 4 uses
  store i64 %.036, ptr %i.bf, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  %i.bz = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !34
  %.not.i.i39 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i39, label %bb.k, label %rb_vm_lock_enter.exit

bb.k:                                             ; preds = %bb.j
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.f) #20
  br label %rb_vm_lock_enter.exit

rb_vm_lock_enter.exit:                            ; preds = %bb.j, %bb.k
  %i.ca = icmp ugt i64 %.036, 44031
  %.0.in.i.v = select i1 %i.ca, i64 12, i64 8
  %.0.in.i = lshr i64 %.036, %.0.in.i.v           ; 2 uses
  %i.cb = lshr i64 %.0.in.i, 9
  %i.cc = and i64 %i.cb, 8388607                  ; 3 uses
  %i.cd = shl nuw nsw i64 %.0.in.i, 1
  %i.ce = and i64 %i.cd, 1022                     ; 2 uses
  %i.cf = or disjoint i64 %i.ce, 1
  %ruby_global_symbols.val = load i64, ptr getelementptr inbounds nuw (i8, ptr @ruby_global_symbols, i64 16), align 8, !tbaa !17 ; 3 uses
  %i.cg = inttoptr i64 %ruby_global_symbols.val to ptr ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !30 ; 2 uses
  %i.ci = and i64 %i.ch, 8192
  %.not.i.i40 = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i40, label %bb.m, label %bb.l

bb.l:                                             ; preds = %rb_vm_lock_enter.exit
  %i.cj = lshr i64 %i.ch, 15
  %i.ck = and i64 %i.cj, 127
  br label %rb_array_len.exit.i

bb.m:                                             ; preds = %rb_vm_lock_enter.exit
  %i.cl = getelementptr i8, ptr %i.cg, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !18
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.m, %bb.l
  %.0.i.i = phi i64 [ %i.ck, %bb.l ], [ %i.cm, %bb.m ]
  %.not.i41 = icmp ugt i64 %.0.i.i, %i.cc
  br i1 %.not.i41, label %bb.n, label %bb.o

bb.n:                                             ; preds = %rb_array_len.exit.i
  %i.cn = call i64 @rb_ary_entry(i64 noundef %ruby_global_symbols.val, i64 noundef %i.cc) #22 ; 2 uses
  %i.co = icmp eq i64 %i.cn, 4
  br i1 %i.co, label %bb.o, label %set_id_entry.exit

bb.o:                                             ; preds = %bb.n, %rb_array_len.exit.i
  %i.cp = call i64 @rb_ary_hidden_new(i64 noundef 1024) #20 ; 2 uses
  call void @rb_ary_store(i64 noundef %ruby_global_symbols.val, i64 noundef %i.cc, i64 noundef %i.cp) #20
  br label %set_id_entry.exit

set_id_entry.exit:                                ; preds = %bb.n, %bb.o
  %.0.i42 = phi i64 [ %i.cp, %bb.o ], [ %i.cn, %bb.n ] ; 2 uses
  call void @rb_ary_store(i64 noundef %.0.i42, i64 noundef %i.ce, i64 noundef %i.ad) #20
  call void @rb_ary_store(i64 noundef %.0.i42, i64 noundef %i.cf, i64 noundef %.036) #20
  %i.cq = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !34
  %.not.i.i43 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i43, label %bb.p, label %rb_vm_lock_leave.exit

bb.p:                                             ; preds = %set_id_entry.exit
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.f) #20
  br label %rb_vm_lock_leave.exit

rb_vm_lock_leave.exit:                            ; preds = %set_id_entry.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  %i.cr = ptrtoint ptr %i.bf to i64
  %i.cs = or i64 %i.cr, 1
  br label %bb.q

bb.q:                                             ; preds = %rb_vm_lock_leave.exit, %rb_obj_write.exit
  %.035 = phi i64 [ %i.ah, %rb_obj_write.exit ], [ %i.cs, %rb_vm_lock_leave.exit ]
  ret i64 %.035
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @sym_set_free(i64 noundef %0) #0 {
bb.a:
  %i.a = trunc i64 %0 to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %0, -2
  %i.c = inttoptr i64 %i.b to ptr
  tail call void @ruby_xfree(ptr noundef %i.c) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare i64 @rb_str_hash(i64 noundef) local_unnamed_addr #2

declare i32 @rb_str_hash_cmp(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_wb_protected_newobj_of(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @rb_enc_get(i64 noundef) local_unnamed_addr #2

declare void @rb_enc_set_index(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @rb_enc_to_index(ptr noundef) local_unnamed_addr #16

declare i64 @rb_enc_str_new(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @rb_fstring(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #17

declare void @rb_gc_writebarrier(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef i64 @register_static_symid(i64 noundef returned %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %3) unnamed_addr #0 {
end_hunk_3
begin_hunk_4_@get_id_serial_entry:bb.a
  %i.c = zext nneg i32 %i.b to i64                ; 2 uses
  %i.d = shl i32 %0, 1
  %i.e = and i32 %i.d, 1022
  %i.f = or disjoint i32 %i.e, %1
  %i.g = zext nneg i32 %i.f to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.h = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !34
  %.not.i.i.us = icmp eq ptr %i.h, null           ; 2 uses
  br i1 %.not19, label %.split25.us, label %.split25

.split25.us:                                      ; preds = %bb.a
  br i1 %.not.i.i.us, label %rb_vm_lock_enter.exit.us, label %rb_vm_lock_leave.exit

rb_vm_lock_enter.exit.us:                         ; preds = %.split25.us
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.a) #20
  %.pre = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !34
  %i.i = icmp eq ptr %.pre, null
  br i1 %i.i, label %rb_vm_lock_leave.exit.sink.split, label %rb_vm_lock_leave.exit

rb_vm_lock_leave.exit.sink.split:                 ; preds = %rb_vm_lock_enter.exit.us, %bb.h
  %.us-phi31.ph = phi i64 [ %.3, %bb.h ], [ 0, %rb_vm_lock_enter.exit.us ]
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #20
  br label %rb_vm_lock_leave.exit

rb_vm_lock_leave.exit:                            ; preds = %rb_vm_lock_leave.exit.sink.split, %rb_vm_lock_enter.exit.us, %.split25.us, %bb.h
  %.us-phi31 = phi i64 [ 0, %rb_vm_lock_enter.exit.us ], [ %.3, %bb.h ], [ 0, %.split25.us ], [ %.us-phi31.ph, %rb_vm_lock_leave.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i64 %.us-phi31

.split25:                                         ; preds = %bb.a
  br i1 %.not.i.i.us, label %bb.b, label %rb_vm_lock_enter.exit

bb.b:                                             ; preds = %.split25
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.a) #20
  br label %rb_vm_lock_enter.exit

rb_vm_lock_enter.exit:                            ; preds = %bb.b, %.split25
  %i.j = load atomic volatile i32, ptr @ruby_global_symbols seq_cst, align 8
  %i.k = icmp ult i32 %0, %i.j
  br i1 %i.k, label %bb.c, label %bb.h

bb.c:                                             ; preds = %rb_vm_lock_enter.exit
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @ruby_global_symbols, i64 16), align 8, !tbaa !17 ; 2 uses
  %i.m = inttoptr i64 %i.l to ptr                 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !30   ; 2 uses
  %i.o = and i64 %i.n, 8192
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = lshr i64 %i.n, 15
  %i.q = and i64 %i.p, 127
  br label %rb_array_len.exit

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.m, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !18
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.d, %bb.e
  %.0.i = phi i64 [ %i.q, %bb.d ], [ %i.s, %bb.e ]
  %i.t = icmp ugt i64 %.0.i, %i.c
  br i1 %i.t, label %bb.f, label %bb.h

bb.f:                                             ; preds = %rb_array_len.exit
  %i.u = call i64 @rb_ary_entry(i64 noundef %i.l, i64 noundef %i.c) #22 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4
  br i1 %i.v, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = call i64 @rb_ary_entry(i64 noundef %i.u, i64 noundef %i.g) #22 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4
  %spec.store.select = select i1 %i.x, i64 0, i64 %i.w
  br label %bb.h

bb.h:                                             ; preds = %rb_array_len.exit, %bb.f, %bb.g, %rb_vm_lock_enter.exit
  %.3 = phi i64 [ 0, %rb_array_len.exit ], [ 0, %rb_vm_lock_enter.exit ], [ 0, %bb.f ], [ %spec.store.select, %bb.g ] ; 2 uses
  %i.y = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !34
  %.not.i.i20 = icmp eq ptr %i.y, null
  br i1 %.not.i.i20, label %rb_vm_lock_leave.exit.sink.split, label %rb_vm_lock_leave.exit
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_ary_entry(i64 noundef, i64 noundef) local_unnamed_addr #16

declare void @rb_vm_lock_enter_body(ptr noundef) local_unnamed_addr #2

declare void @rb_ary_store(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @rb_vm_lock_leave_body(ptr noundef) local_unnamed_addr #2

declare i64 @rb_ary_push(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @rb_objspace_garbage_object_p(i64 noundef) local_unnamed_addr #2

declare i64 @rb_concurrent_set_find(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @rb_string_value_ptr(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @ruby_malloc_size_overflow(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_sym_to_s(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #19

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { norecurse nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #20 = { nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { nounwind willreturn memory(read) }
attributes #23 = { cold noreturn nounwind }
attributes #24 = { nounwind allocsize(0,1) }
attributes #25 = { nounwind allocsize(0) }

!llvm.module.flags = !{!3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !19}
!1 = distinct !{!1, !19, !55}
!2 = distinct !{!2, !19, !55}
!3 = !{i32 7, !"Dwarf Version", i32 5}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!9 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"long", !11, i64 0}
!15 = !{!"", !12, i64 0, !14, i64 8, !14, i64 16}
!16 = !{!15, !14, i64 8}
!17 = !{!15, !14, i64 16}
!18 = !{!11, !11, i64 0}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!14, !14, i64 0}
!21 = !{!"any pointer", !11, i64 0}
!22 = !{!"p1 omnipotent char", !21, i64 0}
!23 = !{!"OnigEncodingTypeST", !21, i64 0, !22, i64 8, !12, i64 16, !12, i64 20, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !21, i64 56, !21, i64 64, !21, i64 72, !21, i64 80, !21, i64 88, !21, i64 96, !21, i64 104, !21, i64 112, !21, i64 120, !12, i64 128, !12, i64 132}
!24 = !{!23, !12, i64 20}
!25 = !{!23, !22, i64 8}
!26 = !{!"sym_set_static_sym_entry", !14, i64 0, !14, i64 8}
!27 = !{!26, !14, i64 0}
!28 = !{!26, !14, i64 8}
!29 = !{!"RBasic", !14, i64 0, !14, i64 8}
!30 = !{!29, !14, i64 0}
!31 = !{!"RString", !29, i64 0, !14, i64 16, !11, i64 24}
!32 = !{!31, !14, i64 16}
!33 = !{!"p1 _ZTS16rb_ractor_struct", !21, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!"RSymbol", !29, i64 0, !14, i64 16, !14, i64 24, !14, i64 32}
!36 = !{!35, !14, i64 32}
!37 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!38 = !{!35, !14, i64 24}
!39 = !{!"global_symbol_table_foreach_weak_reference_data", !21, i64 0, !21, i64 8}
!40 = !{!39, !21, i64 0}
!41 = !{!39, !21, i64 8}
!42 = !{!"p1 long", !21, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{i64 2151591980}
!45 = !{!"p1 _ZTS10rb_id_item", !21, i64 0}
!46 = !{!"rb_id_table", !12, i64 0, !12, i64 4, !12, i64 8, !45, i64 16}
!47 = !{!46, !12, i64 0}
!48 = !{!46, !45, i64 16}
!49 = !{!46, !12, i64 4}
!50 = !{!46, !12, i64 8}
!51 = !{!"rb_id_item", !12, i64 0, !12, i64 4, !14, i64 8}
!52 = !{!51, !12, i64 0}
!53 = !{!51, !12, i64 4}
!54 = !{!51, !14, i64 8}
!55 = !{!"llvm.loop.unswitch.partial.disable"}
!56 = !{!"RTypedData", !29, i64 0, !14, i64 16, !14, i64 24, !21, i64 32}
!57 = !{!56, !14, i64 24}
!58 = !{!56, !21, i64 32}
!59 = !{!35, !14, i64 16}
!60 = distinct !{!60, !19}
!61 = distinct !{!61, !19}
!62 = !{!"short", !11, i64 0}
!63 = !{!"", !62, i64 0, !11, i64 2, !11, i64 5}
!64 = !{!63, !62, i64 0}
!65 = distinct !{!65, !19}
!66 = distinct !{null, null, null}
!67 = distinct !{null, null, null}
!68 = distinct !{null, null, null}
!69 = distinct !{null, null}
!70 = distinct !{null, null, null}
!71 = distinct !{!71, !19}
!72 = !{!23, !21, i64 32}
!73 = !{!23, !21, i64 88}
!74 = !{!23, !12, i64 132}
!75 = !{!23, !21, i64 80}
!76 = !{!22, !22, i64 0}
!77 = !{!23, !21, i64 56}
!78 = distinct !{!78, !19}
!79 = !{!45, !45, i64 0}
!80 = distinct !{!80, !19, !55}
!81 = !{ptr @rb_id_table_foreach_values}
!82 = !{!"p1 _ZTS27rb_execution_context_struct", !21, i64 0}
!83 = !{!82, !82, i64 0}
end_hunk_4
