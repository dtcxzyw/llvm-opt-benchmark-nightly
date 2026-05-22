inline.NumInlined: 124
inline.NumDeleted: 36
begin_hunk_0
@sym_repeat = internal unnamed_addr global i64 0, align 8
@.str.19 = private unnamed_addr constant [4 x i8] c"obj\00", align 1
@sym_obj = internal unnamed_addr global i64 0, align 8
@.str.20 = private unnamed_addr constant [10 x i8] c"byte_size\00", align 1
@sym_byte_size = internal unnamed_addr global i64 0, align 8
@.str.21 = private unnamed_addr constant [9 x i8] c"readonly\00", align 1
@sym_readonly = internal unnamed_addr global i64 0, align 8
@.str.22 = private unnamed_addr constant [10 x i8] c"item_size\00", align 1
@sym_item_size = internal unnamed_addr global i64 0, align 8
@.str.23 = private unnamed_addr constant [5 x i8] c"ndim\00", align 1
@sym_ndim = internal unnamed_addr global i64 0, align 8
@.str.24 = private unnamed_addr constant [6 x i8] c"shape\00", align 1
@sym_shape = internal unnamed_addr global i64 0, align 8
@.str.25 = private unnamed_addr constant [8 x i8] c"strides\00", align 1
@sym_strides = internal unnamed_addr global i64 0, align 8
@.str.26 = private unnamed_addr constant [12 x i8] c"sub_offsets\00", align 1
@sym_sub_offsets = internal unnamed_addr global i64 0, align 8
@.str.27 = private unnamed_addr constant [11 x i8] c"endianness\00", align 1
@sym_endianness = internal unnamed_addr global i64 0, align 8
@.str.28 = private unnamed_addr constant [14 x i8] c"little_endian\00", align 1
@sym_little_endian = internal unnamed_addr global i64 0, align 8
@.str.29 = private unnamed_addr constant [11 x i8] c"big_endian\00", align 1
@sym_big_endian = internal unnamed_addr global i64 0, align 8
@.str.30 = private unnamed_addr constant [14 x i8] c"NATIVE_ENDIAN\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"SHORT_ALIGNMENT\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"INT_ALIGNMENT\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"LONG_ALIGNMENT\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"LONG_LONG_ALIGNMENT\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"INT16_ALIGNMENT\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"INT32_ALIGNMENT\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"INT64_ALIGNMENT\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"INTPTR_ALIGNMENT\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"FLOAT_ALIGNMENT\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"DOUBLE_ALIGNMENT\00", align 1
@rb_memory_view_exported_object_registry = external local_unnamed_addr global i64, align 8
@rb_memory_view_exported_object_registry_data_type = external constant %struct.rb_data_type_struct, align 8
@rb_eArgError = external local_unnamed_addr global i64, align 8
@.str.41 = private unnamed_addr constant [28 x i8] c"Unable to parse item format\00", align 1
@rb_eRuntimeError = external local_unnamed_addr global i64, align 8
@.str.42 = private unnamed_addr constant [27 x i8] c"rb_memory_view_get: failed\00", align 1
@rb_eKeyError = external local_unnamed_addr global i64, align 8
@.str.43 = private unnamed_addr constant [33 x i8] c"Indices has an invalid dimension\00", align 1
@.str.44 = private unnamed_addr constant [33 x i8] c"strides has an invalid dimension\00", align 1

; Function Attrs: nounwind uwtable
define void @Init_memory_view() local_unnamed_addr #0 {
bb.a:
  tail call void @rb_ext_ractor_safe(i1 noundef zeroext true) #9
  %i.a = tail call i64 @rb_define_module(ptr noundef nonnull @.str) #9 ; 21 uses
  tail call void @rb_define_module_function(i64 noundef %i.a, ptr noundef nonnull @.str.1, ptr noundef nonnull @memory_view_available_p, i32 noundef 1) #9
  tail call void @rb_define_module_function(i64 noundef %i.a, ptr noundef nonnull @.str.2, ptr noundef nonnull @memory_view_register, i32 noundef 1) #9
  tail call void @rb_define_module_function(i64 noundef %i.a, ptr noundef nonnull @.str.3, ptr noundef nonnull @memory_view_item_size_from_format, i32 noundef 1) #9
  tail call void @rb_define_module_function(i64 noundef %i.a, ptr noundef nonnull @.str.4, ptr noundef nonnull @memory_view_parse_item_format, i32 noundef 1) #9
  tail call void @rb_define_module_function(i64 noundef %i.a, ptr noundef nonnull @.str.5, ptr noundef nonnull @memory_view_get_memory_view_info, i32 noundef 1) #9
  tail call void @rb_define_module_function(i64 noundef %i.a, ptr noundef nonnull @.str.6, ptr noundef nonnull @memory_view_fill_contiguous_strides, i32 noundef 4) #9
  tail call void @rb_define_module_function(i64 noundef %i.a, ptr noundef nonnull @.str.7, ptr noundef nonnull @memory_view_ref_count_while_exporting, i32 noundef 2) #9
  tail call void @rb_define_module_function(i64 noundef %i.a, ptr noundef nonnull @.str.8, ptr noundef nonnull @memory_view_extract_item_members, i32 noundef 2) #9
  %i.b = load i64, ptr @rb_cObject, align 8, !tbaa !10
  %i.c = tail call i64 @rb_define_class_under(i64 noundef %i.a, ptr noundef nonnull @.str.9, i64 noundef %i.b) #9 ; 2 uses
  tail call void @rb_define_method(i64 noundef %i.c, ptr noundef nonnull @.str.10, ptr noundef nonnull @expstr_initialize, i32 noundef 1) #9
  %i.d = tail call zeroext i1 @rb_memory_view_register(i64 noundef %i.c, ptr noundef nonnull @exportable_string_memory_view_entry) #9 ; 0 uses
  %i.e = load i64, ptr @rb_cObject, align 8, !tbaa !10
  %i.f = tail call i64 @rb_define_class_under(i64 noundef %i.a, ptr noundef nonnull @.str.11, i64 noundef %i.e) #9 ; 3 uses
  tail call void @rb_define_method(i64 noundef %i.f, ptr noundef nonnull @.str.10, ptr noundef nonnull @mdview_initialize, i32 noundef 4) #9
  tail call void @rb_define_method(i64 noundef %i.f, ptr noundef nonnull @.str.12, ptr noundef nonnull @mdview_aref, i32 noundef 1) #9
  %i.g = tail call zeroext i1 @rb_memory_view_register(i64 noundef %i.f, ptr noundef nonnull @mdview_memory_view_entry) #9 ; 0 uses
  %i.h = tail call i64 @rb_intern2(ptr noundef nonnull @.str.13, i64 noundef 7) #9
  store i64 %i.h, ptr @id_str, align 8, !tbaa !10
  %i.i = tail call i64 @rb_intern2(ptr noundef nonnull @.str.14, i64 noundef 6) #9
  %i.j = tail call i64 @rb_id2sym(i64 noundef %i.i) #9
  store i64 %i.j, ptr @sym_format, align 8, !tbaa !10
  %i.k = tail call i64 @rb_intern2(ptr noundef nonnull @.str.15, i64 noundef 13) #9
  %i.l = tail call i64 @rb_id2sym(i64 noundef %i.k) #9
  store i64 %i.l, ptr @sym_native_size_p, align 8, !tbaa !10
  %i.m = tail call i64 @rb_intern2(ptr noundef nonnull @.str.16, i64 noundef 6) #9
  %i.n = tail call i64 @rb_id2sym(i64 noundef %i.m) #9
  store i64 %i.n, ptr @sym_offset, align 8, !tbaa !10
  %i.o = tail call i64 @rb_intern2(ptr noundef nonnull @.str.17, i64 noundef 4) #9
  %i.p = tail call i64 @rb_id2sym(i64 noundef %i.o) #9
  store i64 %i.p, ptr @sym_size, align 8, !tbaa !10
  %i.q = tail call i64 @rb_intern2(ptr noundef nonnull @.str.18, i64 noundef 6) #9
  %i.r = tail call i64 @rb_id2sym(i64 noundef %i.q) #9
  store i64 %i.r, ptr @sym_repeat, align 8, !tbaa !10
  %i.s = tail call i64 @rb_intern2(ptr noundef nonnull @.str.19, i64 noundef 3) #9
  %i.t = tail call i64 @rb_id2sym(i64 noundef %i.s) #9
  store i64 %i.t, ptr @sym_obj, align 8, !tbaa !10
  %i.u = tail call i64 @rb_intern2(ptr noundef nonnull @.str.20, i64 noundef 9) #9
  %i.v = tail call i64 @rb_id2sym(i64 noundef %i.u) #9
  store i64 %i.v, ptr @sym_byte_size, align 8, !tbaa !10
  %i.w = tail call i64 @rb_intern2(ptr noundef nonnull @.str.21, i64 noundef 8) #9
  %i.x = tail call i64 @rb_id2sym(i64 noundef %i.w) #9
  store i64 %i.x, ptr @sym_readonly, align 8, !tbaa !10
  %i.y = tail call i64 @rb_intern2(ptr noundef nonnull @.str.14, i64 noundef 6) #9
  %i.z = tail call i64 @rb_id2sym(i64 noundef %i.y) #9
  store i64 %i.z, ptr @sym_format, align 8, !tbaa !10
  %i.aa = tail call i64 @rb_intern2(ptr noundef nonnull @.str.22, i64 noundef 9) #9
  %i.ab = tail call i64 @rb_id2sym(i64 noundef %i.aa) #9
  store i64 %i.ab, ptr @sym_item_size, align 8, !tbaa !10
  %i.ac = tail call i64 @rb_intern2(ptr noundef nonnull @.str.23, i64 noundef 4) #9
  %i.ad = tail call i64 @rb_id2sym(i64 noundef %i.ac) #9
  store i64 %i.ad, ptr @sym_ndim, align 8, !tbaa !10
  %i.ae = tail call i64 @rb_intern2(ptr noundef nonnull @.str.24, i64 noundef 5) #9
  %i.af = tail call i64 @rb_id2sym(i64 noundef %i.ae) #9
  store i64 %i.af, ptr @sym_shape, align 8, !tbaa !10
  %i.ag = tail call i64 @rb_intern2(ptr noundef nonnull @.str.25, i64 noundef 7) #9
  %i.ah = tail call i64 @rb_id2sym(i64 noundef %i.ag) #9
  store i64 %i.ah, ptr @sym_strides, align 8, !tbaa !10
  %i.ai = tail call i64 @rb_intern2(ptr noundef nonnull @.str.26, i64 noundef 11) #9
  %i.aj = tail call i64 @rb_id2sym(i64 noundef %i.ai) #9
  store i64 %i.aj, ptr @sym_sub_offsets, align 8, !tbaa !10
  %i.ak = tail call i64 @rb_intern2(ptr noundef nonnull @.str.27, i64 noundef 10) #9
  %i.al = tail call i64 @rb_id2sym(i64 noundef %i.ak) #9
  store i64 %i.al, ptr @sym_endianness, align 8, !tbaa !10
  %i.am = tail call i64 @rb_intern2(ptr noundef nonnull @.str.28, i64 noundef 13) #9
  %i.an = tail call i64 @rb_id2sym(i64 noundef %i.am) #9
  store i64 %i.an, ptr @sym_little_endian, align 8, !tbaa !10
  %i.ao = tail call i64 @rb_intern2(ptr noundef nonnull @.str.29, i64 noundef 10) #9
  %i.ap = tail call i64 @rb_id2sym(i64 noundef %i.ao) #9
  store i64 %i.ap, ptr @sym_big_endian, align 8, !tbaa !10
  %i.aq = tail call i64 @rb_intern2(ptr noundef nonnull @.str.30, i64 noundef 13) #9
  %i.ar = load i64, ptr @sym_little_endian, align 8, !tbaa !10
  tail call void @rb_const_set(i64 noundef %i.a, i64 noundef %i.aq, i64 noundef %i.ar) #9
  %i.as = tail call i64 @rb_intern2(ptr noundef nonnull @.str.31, i64 noundef 15) #9
  tail call void @rb_const_set(i64 noundef %i.a, i64 noundef %i.as, i64 noundef 5) #9
  %i.at = tail call i64 @rb_intern2(ptr noundef nonnull @.str.32, i64 noundef 13) #9
  tail call void @rb_const_set(i64 noundef %i.a, i64 noundef %i.at, i64 noundef 9) #9
  %i.au = tail call i64 @rb_intern2(ptr noundef nonnull @.str.33, i64 noundef 14) #9
  tail call void @rb_const_set(i64 noundef %i.a, i64 noundef %i.au, i64 noundef 17) #9
  %i.av = tail call i64 @rb_intern2(ptr noundef nonnull @.str.34, i64 noundef 19) #9
  tail call void @rb_const_set(i64 noundef %i.a, i64 noundef %i.av, i64 noundef 17) #9
  %i.aw = tail call i64 @rb_intern2(ptr noundef nonnull @.str.35, i64 noundef 15) #9
  tail call void @rb_const_set(i64 noundef %i.a, i64 noundef %i.aw, i64 noundef 5) #9
  %i.ax = tail call i64 @rb_intern2(ptr noundef nonnull @.str.36, i64 noundef 15) #9
  tail call void @rb_const_set(i64 noundef %i.a, i64 noundef %i.ax, i64 noundef 9) #9
  %i.ay = tail call i64 @rb_intern2(ptr noundef nonnull @.str.37, i64 noundef 15) #9
  tail call void @rb_const_set(i64 noundef %i.a, i64 noundef %i.ay, i64 noundef 17) #9
  %i.az = tail call i64 @rb_intern2(ptr noundef nonnull @.str.38, i64 noundef 16) #9
  tail call void @rb_const_set(i64 noundef %i.a, i64 noundef %i.az, i64 noundef 17) #9
  %i.ba = tail call i64 @rb_intern2(ptr noundef nonnull @.str.39, i64 noundef 15) #9
  tail call void @rb_const_set(i64 noundef %i.a, i64 noundef %i.ba, i64 noundef 9) #9
  %i.bb = tail call i64 @rb_intern2(ptr noundef nonnull @.str.40, i64 noundef 16) #9
  tail call void @rb_const_set(i64 noundef %i.a, i64 noundef %i.bb, i64 noundef 17) #9
  ret void
}

declare void @rb_ext_ractor_safe(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i64 @rb_define_module(ptr noundef) local_unnamed_addr #1

declare extern_weak void @rb_define_module_function(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i64 0, 21) i64 @memory_view_available_p(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call zeroext i1 @rb_memory_view_available_p(i64 noundef %1) #9
  %i.b = select i1 %i.a, i64 20, i64 0
  ret i64 %i.b
}

; Function Attrs: nounwind uwtable
define internal range(i64 0, 21) i64 @memory_view_register(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call zeroext i1 @rb_memory_view_register(i64 noundef %1, ptr noundef nonnull @exportable_string_memory_view_entry) #9
  %i.b = select i1 %i.a, i64 20, i64 0
  ret i64 %i.b
}

; Function Attrs: nounwind uwtable
define internal i64 @memory_view_item_size_from_format(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !10
  %i.c = icmp eq i64 %1, 4
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.a) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.03 = phi ptr [ null, %bb.a ], [ %i.d, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store ptr null, ptr %i.b, align 8, !tbaa !12
  %i.e = call i64 @rb_memory_view_item_size_from_format(ptr noundef %.03, ptr noundef nonnull %i.b) #9 ; 5 uses
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  %i.g = add i64 %i.e, 4611686018427387904
  %or.cond.i = icmp sgt i64 %i.g, -1              ; 2 uses
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = shl nsw i64 %i.e, 1
  %i.i = or disjoint i64 %i.h, 1
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.j = call i64 @rb_ll2inum(i64 noundef %i.e) #9
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  br i1 %or.cond.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.k = shl nsw i64 %i.e, 1
  %i.l = or disjoint i64 %i.k, 1
  br label %rb_ll2num_inline.exit6

bb.i:                                             ; preds = %bb.g
  %i.m = call i64 @rb_ll2inum(i64 noundef %i.e) #9
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !12
  br label %rb_ll2num_inline.exit6

rb_ll2num_inline.exit6:                           ; preds = %bb.h, %bb.i
  %i.n = phi ptr [ %i.f, %bb.h ], [ %.pre, %bb.i ]
  %.0.i5 = phi i64 [ %i.l, %bb.h ], [ %i.m, %bb.i ]
  %i.o = call i64 @rb_str_new_cstr(ptr noundef %i.n) #9
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.e, %rb_ll2num_inline.exit6
  %.sink = phi i64 [ %i.o, %rb_ll2num_inline.exit6 ], [ 4, %bb.e ], [ 4, %bb.f ]
  %.0.i5.sink = phi i64 [ %.0.i5, %rb_ll2num_inline.exit6 ], [ %i.i, %bb.e ], [ %i.j, %bb.f ]
  %2 = call i64 @rb_assoc_new(i64 noundef %.0.i5.sink, i64 noundef %.sink) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal i64 @memory_view_parse_item_format(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 10 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !10
  %i.e = icmp eq i64 %1, 4
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.a) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.f, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store ptr null, ptr %i.b, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %i.g = call i64 @rb_memory_view_parse_item_format(ptr noundef %.0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #9 ; 3 uses
  %i.h = call i64 @rb_ary_new_capa(i64 noundef 3) #9 ; 5 uses
  %i.i = add i64 %i.g, 4611686018427387904
  %or.cond.i = icmp sgt i64 %i.i, -1
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = shl nsw i64 %i.g, 1
  %i.k = or disjoint i64 %i.j, 1
  br label %rb_ll2num_inline.exit

bb.e:                                             ; preds = %bb.c
  %i.l = call i64 @rb_ll2inum(i64 noundef %i.g) #9
  br label %rb_ll2num_inline.exit

rb_ll2num_inline.exit:                            ; preds = %bb.d, %bb.e
  %.0.i = phi i64 [ %i.k, %bb.d ], [ %i.l, %bb.e ]
  %i.m = call i64 @rb_ary_push(i64 noundef %i.h, i64 noundef %.0.i) #9 ; 0 uses
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !12
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.f, label %bb.m

bb.f:                                             ; preds = %rb_ll2num_inline.exit
  %i.o = load i64, ptr %i.d, align 8, !tbaa !10
  %i.p = call i64 @rb_ary_new_capa(i64 noundef %i.o) #9 ; 2 uses
  %i.q = load i64, ptr %i.d, align 8, !tbaa !10
  %.not35 = icmp eq i64 %i.q, 0
  br i1 %.not35, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %rb_ll2num_inline.exit33
  %.02434 = phi i64 [ %i.bu, %rb_ll2num_inline.exit33 ], [ 0, %bb.f ] ; 7 uses
  %i.r = call i64 @rb_hash_new() #9               ; 7 uses
  %i.s = load i64, ptr @sym_format, align 8, !tbaa !10
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %.02434
  %i.v = call i64 @rb_str_new(ptr noundef %i.u, i64 noundef 1) #9
  %i.w = call i64 @rb_hash_aset(i64 noundef %i.r, i64 noundef %i.s, i64 noundef %i.v) #9 ; 0 uses
  %i.x = load i64, ptr @sym_native_size_p, align 8, !tbaa !10
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %.02434
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !16, !range !19, !noundef !20
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = select i1 %i.ac, i64 20, i64 0
  %i.ae = call i64 @rb_hash_aset(i64 noundef %i.r, i64 noundef %i.x, i64 noundef %i.ad) #9 ; 0 uses
  %i.af = load i64, ptr @sym_endianness, align 8, !tbaa !10
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %.02434
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !21, !range !19, !noundef !20
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = load i64, ptr @sym_little_endian, align 8
  %i.am = load i64, ptr @sym_big_endian, align 8
  %i.an = select i1 %i.ak, i64 %i.al, i64 %i.am
  %i.ao = call i64 @rb_hash_aset(i64 noundef %i.r, i64 noundef %i.af, i64 noundef %i.an) #9 ; 0 uses
  %i.ap = load i64, ptr @sym_offset, align 8, !tbaa !10
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.aq, i64 %.02434
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !22 ; 3 uses
  %i.au = add i64 %i.at, 4611686018427387904
  %or.cond.i25 = icmp sgt i64 %i.au, -1
  br i1 %or.cond.i25, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.av = shl nsw i64 %i.at, 1
  %i.aw = or disjoint i64 %i.av, 1
  br label %rb_ll2num_inline.exit27

bb.h:                                             ; preds = %.lr.ph
  %i.ax = call i64 @rb_ll2inum(i64 noundef %i.at) #9
  br label %rb_ll2num_inline.exit27

rb_ll2num_inline.exit27:                          ; preds = %bb.g, %bb.h
  %.0.i26 = phi i64 [ %i.aw, %bb.g ], [ %i.ax, %bb.h ]
  %i.ay = call i64 @rb_hash_aset(i64 noundef %i.r, i64 noundef %i.ap, i64 noundef %.0.i26) #9 ; 0 uses
  %i.az = load i64, ptr @sym_size, align 8, !tbaa !10
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %i.ba, i64 %.02434
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !23 ; 3 uses
  %i.be = add i64 %i.bd, 4611686018427387904
  %or.cond.i28 = icmp sgt i64 %i.be, -1
  br i1 %or.cond.i28, label %bb.i, label %bb.j

bb.i:                                             ; preds = %rb_ll2num_inline.exit27
  %i.bf = shl nsw i64 %i.bd, 1
  %i.bg = or disjoint i64 %i.bf, 1
  br label %rb_ll2num_inline.exit30

bb.j:                                             ; preds = %rb_ll2num_inline.exit27
  %i.bh = call i64 @rb_ll2inum(i64 noundef %i.bd) #9
  br label %rb_ll2num_inline.exit30

rb_ll2num_inline.exit30:                          ; preds = %bb.i, %bb.j
  %.0.i29 = phi i64 [ %i.bg, %bb.i ], [ %i.bh, %bb.j ]
  %i.bi = call i64 @rb_hash_aset(i64 noundef %i.r, i64 noundef %i.az, i64 noundef %.0.i29) #9 ; 0 uses
  %i.bj = load i64, ptr @sym_repeat, align 8, !tbaa !10
  %i.bk = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.bk, i64 %.02434
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !24 ; 3 uses
  %i.bo = add i64 %i.bn, 4611686018427387904
  %or.cond.i31 = icmp sgt i64 %i.bo, -1
  br i1 %or.cond.i31, label %bb.k, label %bb.l

bb.k:                                             ; preds = %rb_ll2num_inline.exit30
  %i.bp = shl nsw i64 %i.bn, 1
  %i.bq = or disjoint i64 %i.bp, 1
  br label %rb_ll2num_inline.exit33

bb.l:                                             ; preds = %rb_ll2num_inline.exit30
  %i.br = call i64 @rb_ll2inum(i64 noundef %i.bn) #9
  br label %rb_ll2num_inline.exit33

rb_ll2num_inline.exit33:                          ; preds = %bb.k, %bb.l
  %.0.i32 = phi i64 [ %i.bq, %bb.k ], [ %i.br, %bb.l ]
  %i.bs = call i64 @rb_hash_aset(i64 noundef %i.r, i64 noundef %i.bj, i64 noundef %.0.i32) #9 ; 0 uses
  %i.bt = call i64 @rb_ary_push(i64 noundef %i.p, i64 noundef %i.r) #9 ; 0 uses
  %i.bu = add nuw i64 %.02434, 1                  ; 2 uses
  %i.bv = load i64, ptr %i.d, align 8, !tbaa !10
  %i.bw = icmp ult i64 %i.bu, %i.bv
  br i1 %i.bw, label %.lr.ph, label %._crit_edge, !llvm.loop !25

._crit_edge:                                      ; preds = %rb_ll2num_inline.exit33, %bb.f
  %i.bx = load ptr, ptr %i.c, align 8, !tbaa !15
  call void @ruby_xfree(ptr noundef %i.bx) #9
  %i.by = call i64 @rb_ary_push(i64 noundef %i.h, i64 noundef %i.p) #9 ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %rb_ll2num_inline.exit
  %i.bz = call i64 @rb_ary_push(i64 noundef %i.h, i64 noundef 4) #9 ; 0 uses
  %i.ca = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.cb = call i64 @rb_str_new_cstr(ptr noundef %i.ca) #9
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge
  %.sink = phi i64 [ %i.cb, %bb.m ], [ 4, %._crit_edge ]
  %i.cc = call i64 @rb_ary_push(i64 noundef %i.h, i64 noundef %.sink) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret i64 %i.h
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @memory_view_get_memory_view_info(i64 %0, i64 noundef %1) #0 {
bb.a:
  %2 = alloca %struct.rb_memory_view_t, align 8   ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.a = call zeroext i1 @rb_memory_view_get(i64 noundef %1, ptr noundef nonnull %2, i32 noundef 0) #9
  br i1 %i.a, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.b = call i64 @rb_hash_new() #9               ; 10 uses
  %i.c = load i64, ptr @sym_obj, align 8, !tbaa !10
  %i.d = load i64, ptr %2, align 8, !tbaa !27
  %i.e = call i64 @rb_hash_aset(i64 noundef %i.b, i64 noundef %i.c, i64 noundef %i.d) #9 ; 0 uses
  %i.f = load i64, ptr @sym_byte_size, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !32   ; 3 uses
  %i.i = add i64 %i.h, 4611686018427387904
  %or.cond.i = icmp sgt i64 %i.i, -1
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = shl nsw i64 %i.h, 1
  %i.k = or disjoint i64 %i.j, 1
  br label %rb_ll2num_inline.exit

bb.d:                                             ; preds = %bb.b
  %i.l = call i64 @rb_ll2inum(i64 noundef %i.h) #9
  br label %rb_ll2num_inline.exit

rb_ll2num_inline.exit:                            ; preds = %bb.c, %bb.d
  %.0.i = phi i64 [ %i.k, %bb.c ], [ %i.l, %bb.d ]
  %i.m = call i64 @rb_hash_aset(i64 noundef %i.b, i64 noundef %i.f, i64 noundef %.0.i) #9 ; 0 uses
end_hunk_0
