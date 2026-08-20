inline.NumInlined: 215
inline.NumDeleted: 75
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
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
  store i64 %i.b, ptr getelementptr inbounds nuw (i8, ptr @ruby_global_symbols, i64 8), align 8, !tbaa !11
  %i.c = tail call i64 @rb_ary_hidden_new(i64 noundef 0) #20
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @ruby_global_symbols, i64 16), align 8, !tbaa !14
  %i.d = tail call nonnull ptr @rb_usascii_encoding() #20 ; 22 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %indvars.iv.i = phi i64 [ 33, %bb.a ], [ %indvars.iv.next.i, %bb.d ] ; 5 uses
  %i.e = trunc nuw nsw i64 %indvars.iv.i to i32   ; 2 uses
  %i.f = and i32 %i.e, 95
  %i.g = add nsw i32 %i.f, -91
  %narrow.i.i.i = icmp ult i32 %i.g, -26
  %0 = add i32 %i.e, -58
  %i.h = icmp ult i32 %0, -10
  %narrow.i.not.i = and i1 %i.h, %narrow.i.i.i
  %1 = icmp ne i64 %indvars.iv.i, 95
  %or.cond.i = and i1 %1, %narrow.i.not.i
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.i = trunc i64 %indvars.iv.i to i8
  store i8 %i.i, ptr %i.a, align 1, !tbaa !15
  %i.j = call fastcc i64 @register_static_symid(i64 noundef %indvars.iv.i, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 127
  br i1 %exitcond.not.i, label %Init_op_tbl.exit, label %bb.b, !llvm.loop !16

Init_op_tbl.exit:                                 ; preds = %bb.d
  %i.k = call fastcc i64 @register_static_symid(i64 noundef 128, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @op_tbl, i64 2), i64 noundef 2, ptr noundef %i.d) ; 0 uses
  %i.l = call fastcc i64 @register_static_symid(i64 noundef 129, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @op_tbl, i64 8), i64 noundef 3, ptr noundef %i.d) ; 0 uses
  %i.m = call fastcc i64 @register_static_symid(i64 noundef 132, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @op_tbl, i64 14), i64 noundef 2, ptr noundef %i.d) ; 0 uses
  %i.n = call fastcc i64 @register_static_symid(i64 noundef 133, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @op_tbl, i64 20), i64 noundef 2, ptr noundef %i.d) ; 0 uses
  %i.o = call fastcc i64 @register_static_symid(i64 noundef 134, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @op_tbl, i64 26), i64 noundef 2, ptr noundef %i.d) ; 0 uses
  %i.p = call fastcc i64 @register_static_symid(i64 noundef 135, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @op_tbl, i64 32), i64 noundef 3, ptr noundef %i.d) ; 0 uses
  %i.q = call fastcc i64 @register_static_symid(i64 noundef 136, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @op_tbl, i64 38), i64 noundef 2, ptr noundef %i.d) ; 0 uses
  %i.r = call fastcc i64 @register_static_symid(i64 noundef 137, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @op_tbl, i64 44), i64 noundef 2, ptr noundef %i.d) ; 0 uses
  %i.s = call fastcc i64 @register_static_symid(i64 noundef 138, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @op_tbl, i64 50), i64 noundef 2, ptr noundef %i.d) ; 0 uses
  %i.t = call fastcc i64 @register_static_symid(i64 noundef 139, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @op_tbl, i64 56), i64 noundef 2, ptr noundef %i.d) ; 0 uses
  %i.u = call fastcc i64 @register_static_symid(i64 noundef 140, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @op_tbl, i64 62), i64 noundef 2, ptr noundef %i.d) ; 0 uses
  %i.v = call fastcc i64 @register_static_symid(i64 noundef 141, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @op_tbl, i64 68), i64 noundef 3, ptr noundef %i.d) ; 0 uses
  %i.w = call fastcc i64 @register_static_symid(i64 noundef 142, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @op_tbl, i64 74), i64 noundef 2, ptr noundef %i.d) ; 0 uses
  %i.x = call fastcc i64 @register_static_symid(i64 noundef 143, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @op_tbl, i64 80), i64 noundef 2, ptr noundef %i.d) ; 0 uses
  %i.y = call fastcc i64 @register_static_symid(i64 noundef 144, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @op_tbl, i64 86), i64 noundef 2, ptr noundef %i.d) ; 0 uses
  %i.z = call fastcc i64 @register_static_symid(i64 noundef 145, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @op_tbl, i64 92), i64 noundef 2, ptr noundef %i.d) ; 0 uses
  %i.aa = call fastcc i64 @register_static_symid(i64 noundef 146, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @op_tbl, i64 98), i64 noundef 3, ptr noundef %i.d) ; 0 uses
  %i.ab = call fastcc i64 @register_static_symid(i64 noundef 147, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @op_tbl, i64 104), i64 noundef 2, ptr noundef %i.d) ; 0 uses
  %i.ac = call fastcc i64 @register_static_symid(i64 noundef 148, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @op_tbl, i64 110), i64 noundef 2, ptr noundef %i.d) ; 0 uses
  %i.ad = call fastcc i64 @register_static_symid(i64 noundef 149, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @op_tbl, i64 116), i64 noundef 2, ptr noundef %i.d) ; 0 uses
  %i.ae = call fastcc i64 @register_static_symid(i64 noundef 150, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @op_tbl, i64 122), i64 noundef 2, ptr noundef %i.d) ; 0 uses
  %i.af = call nonnull ptr @rb_usascii_encoding() #20 ; 99 uses
  %i.ag = call fastcc i64 @register_static_symid(i64 noundef 2753, ptr noundef nonnull @.str.15, i64 noundef 3, ptr noundef %i.af) ; 0 uses
  %i.ah = call fastcc i64 @register_static_symid(i64 noundef 2769, ptr noundef nonnull @.str.16, i64 noundef 3, ptr noundef %i.af) ; 0 uses
  %i.ai = call fastcc i64 @register_static_symid(i64 noundef 2785, ptr noundef nonnull @.str.17, i64 noundef 4, ptr noundef %i.af) ; 0 uses
  %i.aj = call fastcc i64 @register_static_symid(i64 noundef 2801, ptr noundef nonnull @.str.18, i64 noundef 6, ptr noundef %i.af) ; 0 uses
  %i.ak = call fastcc i64 @register_static_symid(i64 noundef 151, ptr noundef nonnull @.str.19, i64 noundef 4, ptr noundef %i.af) ; 0 uses
  %i.al = call fastcc i64 @register_static_symid(i64 noundef 2817, ptr noundef nonnull @.str.20, i64 noundef 7, ptr noundef %i.af) ; 0 uses
  %i.am = call fastcc i64 @register_static_symid(i64 noundef 2833, ptr noundef nonnull @.str.21, i64 noundef 6, ptr noundef %i.af) ; 0 uses
  %i.an = call fastcc i64 @register_static_symid(i64 noundef 2849, ptr noundef nonnull @.str.22, i64 noundef 9, ptr noundef %i.af) ; 0 uses
  %i.ao = call fastcc i64 @register_static_symid(i64 noundef 2865, ptr noundef nonnull @.str.23, i64 noundef 6, ptr noundef %i.af) ; 0 uses
  %i.ap = call fastcc i64 @register_static_symid(i64 noundef 2881, ptr noundef nonnull @.str.24, i64 noundef 11, ptr noundef %i.af) ; 0 uses
  %i.aq = call fastcc i64 @register_static_symid(i64 noundef 2897, ptr noundef nonnull @.str.25, i64 noundef 13, ptr noundef %i.af) ; 0 uses
  %i.ar = call fastcc i64 @register_static_symid(i64 noundef 2913, ptr noundef nonnull @.str.26, i64 noundef 14, ptr noundef %i.af) ; 0 uses
  %i.as = call fastcc i64 @register_static_symid(i64 noundef 2929, ptr noundef nonnull @.str.27, i64 noundef 12, ptr noundef %i.af) ; 0 uses
  %i.at = call fastcc i64 @register_static_symid(i64 noundef 2945, ptr noundef nonnull @.str.28, i64 noundef 22, ptr noundef %i.af) ; 0 uses
  %i.au = call fastcc i64 @register_static_symid(i64 noundef 2961, ptr noundef nonnull @.str.29, i64 noundef 14, ptr noundef %i.af) ; 0 uses
  %i.av = call fastcc i64 @register_static_symid(i64 noundef 2977, ptr noundef nonnull @.str.30, i64 noundef 24, ptr noundef %i.af) ; 0 uses
  %i.aw = call fastcc i64 @register_static_symid(i64 noundef 2993, ptr noundef nonnull @.str.31, i64 noundef 16, ptr noundef %i.af) ; 0 uses
  %i.ax = call fastcc i64 @register_static_symid(i64 noundef 3009, ptr noundef nonnull @.str.32, i64 noundef 26, ptr noundef %i.af) ; 0 uses
  %i.ay = call fastcc i64 @register_static_symid(i64 noundef 3025, ptr noundef nonnull @.str.33, i64 noundef 6, ptr noundef %i.af) ; 0 uses
  %i.az = call fastcc i64 @register_static_symid(i64 noundef 3041, ptr noundef nonnull @.str.34, i64 noundef 4, ptr noundef %i.af) ; 0 uses
  %i.ba = call fastcc i64 @register_static_symid(i64 noundef 3057, ptr noundef nonnull @.str.35, i64 noundef 4, ptr noundef %i.af) ; 0 uses
  %i.bb = call fastcc i64 @register_static_symid(i64 noundef 3073, ptr noundef nonnull @.str.36, i64 noundef 4, ptr noundef %i.af) ; 0 uses
  %i.bc = call fastcc i64 @register_static_symid(i64 noundef 3089, ptr noundef nonnull @.str.37, i64 noundef 4, ptr noundef %i.af) ; 0 uses
  %i.bd = call fastcc i64 @register_static_symid(i64 noundef 3105, ptr noundef nonnull @.str.38, i64 noundef 4, ptr noundef %i.af) ; 0 uses
  %i.be = call fastcc i64 @register_static_symid(i64 noundef 3121, ptr noundef nonnull @.str.39, i64 noundef 6, ptr noundef %i.af) ; 0 uses
  %i.bf = call fastcc i64 @register_static_symid(i64 noundef 3137, ptr noundef nonnull @.str.40, i64 noundef 4, ptr noundef %i.af) ; 0 uses
  %i.bg = call fastcc i64 @register_static_symid(i64 noundef 3153, ptr noundef nonnull @.str.41, i64 noundef 8, ptr noundef %i.af) ; 0 uses
  %i.bh = call fastcc i64 @register_static_symid(i64 noundef 3169, ptr noundef nonnull @.str.42, i64 noundef 17, ptr noundef %i.af) ; 0 uses
  %i.bi = call fastcc i64 @register_static_symid(i64 noundef 3185, ptr noundef nonnull @.str.43, i64 noundef 10, ptr noundef %i.af) ; 0 uses
  %i.bj = call fastcc i64 @register_static_symid(i64 noundef 3201, ptr noundef nonnull @.str.44, i64 noundef 15, ptr noundef %i.af) ; 0 uses
  %i.bk = call fastcc i64 @register_static_symid(i64 noundef 3217, ptr noundef nonnull @.str.45, i64 noundef 16, ptr noundef %i.af) ; 0 uses
  %i.bl = call fastcc i64 @register_static_symid(i64 noundef 3233, ptr noundef nonnull @.str.46, i64 noundef 14, ptr noundef %i.af) ; 0 uses
  %i.bm = call fastcc i64 @register_static_symid(i64 noundef 3249, ptr noundef nonnull @.str.47, i64 noundef 6, ptr noundef %i.af) ; 0 uses
  %i.bn = call fastcc i64 @register_static_symid(i64 noundef 3265, ptr noundef nonnull @.str.48, i64 noundef 6, ptr noundef %i.af) ; 0 uses
  %i.bo = call fastcc i64 @register_static_symid(i64 noundef 3281, ptr noundef nonnull @.str.49, i64 noundef 6, ptr noundef %i.af) ; 0 uses
  %i.bp = call fastcc i64 @register_static_symid(i64 noundef 3297, ptr noundef nonnull @.str.50, i64 noundef 6, ptr noundef %i.af) ; 0 uses
  %i.bq = call fastcc i64 @register_static_symid(i64 noundef 3313, ptr noundef nonnull @.str.51, i64 noundef 7, ptr noundef %i.af) ; 0 uses
  %i.br = call fastcc i64 @register_static_symid(i64 noundef 3329, ptr noundef nonnull @.str.52, i64 noundef 7, ptr noundef %i.af) ; 0 uses
  %i.bs = call fastcc i64 @register_static_symid(i64 noundef 3345, ptr noundef nonnull @.str.53, i64 noundef 5, ptr noundef %i.af) ; 0 uses
  %i.bt = call fastcc i64 @register_static_symid(i64 noundef 3361, ptr noundef nonnull @.str.54, i64 noundef 4, ptr noundef %i.af) ; 0 uses
  %i.bu = call fastcc i64 @register_static_symid(i64 noundef 3377, ptr noundef nonnull @.str.55, i64 noundef 4, ptr noundef %i.af) ; 0 uses
  %i.bv = call fastcc i64 @register_static_symid(i64 noundef 3393, ptr noundef nonnull @.str.56, i64 noundef 4, ptr noundef %i.af) ; 0 uses
  %i.bw = call fastcc i64 @register_static_symid(i64 noundef 3409, ptr noundef nonnull @.str.57, i64 noundef 4, ptr noundef %i.af) ; 0 uses
  %i.bx = call fastcc i64 @register_static_symid(i64 noundef 3425, ptr noundef nonnull @.str.58, i64 noundef 4, ptr noundef %i.af) ; 0 uses
  %i.by = call fastcc i64 @register_static_symid(i64 noundef 3441, ptr noundef nonnull @.str.59, i64 noundef 2, ptr noundef %i.af) ; 0 uses
  %i.bz = call fastcc i64 @register_static_symid(i64 noundef 3457, ptr noundef nonnull @.str.60, i64 noundef 12, ptr noundef %i.af) ; 0 uses
  %i.ca = call fastcc i64 @register_static_symid(i64 noundef 3473, ptr noundef nonnull @.str.61, i64 noundef 4, ptr noundef %i.af) ; 0 uses
  %i.cb = call fastcc i64 @register_static_symid(i64 noundef 3489, ptr noundef nonnull @.str.62, i64 noundef 4, ptr noundef %i.af) ; 0 uses
  %i.cc = call fastcc i64 @register_static_symid(i64 noundef 3505, ptr noundef nonnull @.str.63, i64 noundef 9, ptr noundef %i.af) ; 0 uses
  %i.cd = call fastcc i64 @register_static_symid(i64 noundef 3521, ptr noundef nonnull @.str.64, i64 noundef 6, ptr noundef %i.af) ; 0 uses
  %i.ce = call fastcc i64 @register_static_symid(i64 noundef 3537, ptr noundef nonnull @.str.65, i64 noundef 3, ptr noundef %i.af) ; 0 uses
  %i.cf = call fastcc i64 @register_static_symid(i64 noundef 3553, ptr noundef nonnull @.str.66, i64 noundef 3, ptr noundef %i.af) ; 0 uses
  %i.cg = call fastcc i64 @register_static_symid(i64 noundef 3569, ptr noundef nonnull @.str.67, i64 noundef 2, ptr noundef %i.af) ; 0 uses
  %i.ch = call fastcc i64 @register_static_symid(i64 noundef 3585, ptr noundef nonnull @.str.68, i64 noundef 3, ptr noundef %i.af) ; 0 uses
  %i.ci = call fastcc i64 @register_static_symid(i64 noundef 3601, ptr noundef nonnull @.str.69, i64 noundef 6, ptr noundef %i.af) ; 0 uses
  %i.cj = call fastcc i64 @register_static_symid(i64 noundef 3617, ptr noundef nonnull @.str.70, i64 noundef 4, ptr noundef %i.af) ; 0 uses
  %i.ck = call fastcc i64 @register_static_symid(i64 noundef 3633, ptr noundef nonnull @.str.71, i64 noundef 3, ptr noundef %i.af) ; 0 uses
  %i.cl = call fastcc i64 @register_static_symid(i64 noundef 3649, ptr noundef nonnull @.str.72, i64 noundef 4, ptr noundef %i.af) ; 0 uses
  %i.cm = call fastcc i64 @register_static_symid(i64 noundef 3665, ptr noundef nonnull @.str.73, i64 noundef 3, ptr noundef %i.af) ; 0 uses
  %i.cn = call fastcc i64 @register_static_symid(i64 noundef 3681, ptr noundef nonnull @.str.74, i64 noundef 4, ptr noundef %i.af) ; 0 uses
  %i.co = call fastcc i64 @register_static_symid(i64 noundef 3697, ptr noundef nonnull @.str.75, i64 noundef 4, ptr noundef %i.af) ; 0 uses
  %i.cp = call fastcc i64 @register_static_symid(i64 noundef 3713, ptr noundef nonnull @.str.76, i64 noundef 6, ptr noundef %i.af) ; 0 uses
  %i.cq = call fastcc i64 @register_static_symid(i64 noundef 152, ptr noundef nonnull @.str.77, i64 noundef 8, ptr noundef %i.af) ; 0 uses
  %i.cr = call fastcc i64 @register_static_symid(i64 noundef 3729, ptr noundef nonnull @.str.78, i64 noundef 7, ptr noundef %i.af) ; 0 uses
  %i.cs = call fastcc i64 @register_static_symid(i64 noundef 3745, ptr noundef nonnull @.str.79, i64 noundef 6, ptr noundef %i.af) ; 0 uses
  %i.ct = call fastcc i64 @register_static_symid(i64 noundef 3761, ptr noundef nonnull @.str.80, i64 noundef 1, ptr noundef %i.af) ; 0 uses
  %i.cu = call fastcc i64 @register_static_symid(i64 noundef 3777, ptr noundef nonnull @.str.81, i64 noundef 2, ptr noundef %i.af) ; 0 uses
  %i.cv = call fastcc i64 @register_static_symid(i64 noundef 3793, ptr noundef nonnull @.str.82, i64 noundef 2, ptr noundef %i.af) ; 0 uses
  %i.cw = call fastcc i64 @register_static_symid(i64 noundef 3809, ptr noundef nonnull @.str.83, i64 noundef 2, ptr noundef %i.af) ; 0 uses
  %i.cx = call fastcc i64 @register_static_symid(i64 noundef 3825, ptr noundef nonnull @.str.84, i64 noundef 2, ptr noundef %i.af) ; 0 uses
  %i.cy = call fastcc i64 @register_static_symid(i64 noundef 3841, ptr noundef nonnull @.str.85, i64 noundef 2, ptr noundef %i.af) ; 0 uses
  %i.cz = call fastcc i64 @register_static_symid(i64 noundef 3857, ptr noundef nonnull @.str.86, i64 noundef 2, ptr noundef %i.af) ; 0 uses
  %i.da = call fastcc i64 @register_static_symid(i64 noundef 3873, ptr noundef nonnull @.str.87, i64 noundef 2, ptr noundef %i.af) ; 0 uses
  %i.db = call fastcc i64 @register_static_symid(i64 noundef 3889, ptr noundef nonnull @.str.88, i64 noundef 2, ptr noundef %i.af) ; 0 uses
  %i.dc = call fastcc i64 @register_static_symid(i64 noundef 3905, ptr noundef nonnull @.str.89, i64 noundef 2, ptr noundef %i.af) ; 0 uses
  %i.dd = call fastcc i64 @register_static_symid(i64 noundef 153, ptr noundef nonnull @.str.90, i64 noundef 4, ptr noundef %i.af) ; 0 uses
  %i.de = call fastcc i64 @register_static_symid(i64 noundef 3921, ptr noundef nonnull @.str.91, i64 noundef 2, ptr noundef %i.af) ; 0 uses
  %i.df = call fastcc i64 @register_static_symid(i64 noundef 154, ptr noundef nonnull @.str.92, i64 noundef 0, ptr noundef %i.af) ; 0 uses
  %i.dg = call fastcc i64 @register_static_symid(i64 noundef 155, ptr noundef nonnull @.str.93, i64 noundef 6, ptr noundef %i.af) ; 0 uses
  %i.dh = call fastcc i64 @register_static_symid(i64 noundef 156, ptr noundef nonnull @.str.94, i64 noundef 4, ptr noundef %i.af) ; 0 uses
  %i.di = call fastcc i64 @register_static_symid(i64 noundef 3937, ptr noundef nonnull @.str.95, i64 noundef 7, ptr noundef %i.af) ; 0 uses
  %i.dj = call fastcc i64 @register_static_symid(i64 noundef 157, ptr noundef nonnull @.str.96, i64 noundef 11, ptr noundef %i.af) ; 0 uses
  %i.dk = call fastcc i64 @register_static_symid(i64 noundef 158, ptr noundef nonnull @.str.97, i64 noundef 19, ptr noundef %i.af) ; 0 uses
  %i.dl = call fastcc i64 @register_static_symid(i64 noundef 159, ptr noundef nonnull @.str.98, i64 noundef 7, ptr noundef %i.af) ; 0 uses
  %i.dm = call fastcc i64 @register_static_symid(i64 noundef 160, ptr noundef nonnull @.str.99, i64 noundef 7, ptr noundef %i.af) ; 0 uses
  %i.dn = call fastcc i64 @register_static_symid(i64 noundef 161, ptr noundef nonnull @.str.100, i64 noundef 21, ptr noundef %i.af) ; 0 uses
  %i.do = call fastcc i64 @register_static_symid(i64 noundef 162, ptr noundef nonnull @.str.101, i64 noundef 23, ptr noundef %i.af) ; 0 uses
  %i.dp = call fastcc i64 @register_static_symid(i64 noundef 163, ptr noundef nonnull @.str.102, i64 noundef 17, ptr noundef %i.af) ; 0 uses
  %i.dq = call fastcc i64 @register_static_symid(i64 noundef 164, ptr noundef nonnull @.str.103, i64 noundef 18, ptr noundef %i.af) ; 0 uses
  %i.dr = call fastcc i64 @register_static_symid(i64 noundef 165, ptr noundef nonnull @.str.104, i64 noundef 28, ptr noundef %i.af) ; 0 uses
  %i.ds = call fastcc i64 @register_static_symid(i64 noundef 166, ptr noundef nonnull @.str.105, i64 noundef 16, ptr noundef %i.af) ; 0 uses
  %i.dt = call fastcc i64 @register_static_symid(i64 noundef 167, ptr noundef nonnull @.str.106, i64 noundef 19, ptr noundef %i.af) ; 0 uses
  %i.du = call fastcc i64 @register_static_symid(i64 noundef 168, ptr noundef nonnull @.str.107, i64 noundef 19, ptr noundef %i.af) ; 0 uses
  %i.dv = call fastcc i64 @register_static_symid(i64 noundef 169, ptr noundef nonnull @.str.108, i64 noundef 10, ptr noundef %i.af) ; 0 uses
  %i.dw = call fastcc i64 @register_static_symid(i64 noundef 170, ptr noundef nonnull @.str.109, i64 noundef 12, ptr noundef %i.af) ; 0 uses
  %i.dx = call fastcc i64 @register_static_symid(i64 noundef 3959, ptr noundef nonnull @.str.110, i64 noundef 2, ptr noundef %i.af) ; 0 uses
  %i.dy = call fastcc i64 @register_static_symid(i64 noundef 3975, ptr noundef nonnull @.str.111, i64 noundef 2, ptr noundef %i.af) ; 0 uses
  %i.dz = call fastcc i64 @register_static_symid(i64 noundef 3991, ptr noundef nonnull @.str.112, i64 noundef 2, ptr noundef %i.af) ; 0 uses
  %i.ea = call fastcc i64 @register_static_symid(i64 noundef 4011, ptr noundef nonnull @.str.113, i64 noundef 4, ptr noundef %i.af) ; 0 uses
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
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @ruby_global_symbols, i64 8), align 8, !tbaa !11
  tail call void @rb_concurrent_set_foreach_with_replace(i64 noundef %i.a, ptr noundef nonnull @rb_free_global_symbol_table_i, ptr noundef null) #20
  ret void
}

declare void @rb_concurrent_set_foreach_with_replace(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @rb_free_global_symbol_table_i(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !18     ; 2 uses
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

end_hunk_0
