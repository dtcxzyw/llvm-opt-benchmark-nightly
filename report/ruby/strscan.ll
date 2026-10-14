Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/strscan?download=true
inline.NumInlined: 252
inline.NumDeleted: 51
begin_hunk_0_@Init_strscan:bb.a
  tail call void @rb_deprecate_constant(i64 noundef %i.m, ptr noundef nonnull @.str) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.3, i64 noundef 5) #11 ; 2 uses
  %i.o = tail call i64 @rb_obj_freeze(i64 noundef %i.n) #11 ; 0 uses
  %i.p = load i64, ptr @StringScanner, align 8, !tbaa !11
  %i.q = tail call i64 @rb_intern(ptr noundef nonnull @.str.4) #11
  tail call void @rb_const_set(i64 noundef %i.p, i64 noundef %i.q, i64 noundef %i.n) #11
  %i.r = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.5, i64 noundef 4) #11 ; 2 uses
  %i.s = tail call i64 @rb_obj_freeze(i64 noundef %i.r) #11 ; 0 uses
  %i.t = load i64, ptr @StringScanner, align 8, !tbaa !11
  %i.u = tail call i64 @rb_intern(ptr noundef nonnull @.str.6) #11
  tail call void @rb_const_set(i64 noundef %i.t, i64 noundef %i.u, i64 noundef %i.r) #11
  %i.v = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_deprecate_constant(i64 noundef %i.v, ptr noundef nonnull @.str.6) #11
  %i.w = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_alloc_func(i64 noundef %i.w, ptr noundef nonnull @strscan_s_allocate) #11
  %i.x = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_private_method(i64 noundef %i.x, ptr noundef nonnull @.str.7, ptr noundef nonnull @strscan_initialize, i32 noundef -1) #11
  %i.y = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_private_method(i64 noundef %i.y, ptr noundef nonnull @.str.8, ptr noundef nonnull @strscan_init_copy, i32 noundef 1) #11
  %i.z = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.z, ptr noundef nonnull @.str.9, ptr noundef nonnull @strscan_s_mustc, i32 noundef 0) #11
  %i.aa = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.aa, ptr noundef nonnull @.str.10, ptr noundef nonnull @strscan_reset, i32 noundef 0) #11
  %i.ab = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.ab, ptr noundef nonnull @.str.11, ptr noundef nonnull @strscan_terminate, i32 noundef 0) #11
  %i.ac = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.ac, ptr noundef nonnull @.str.12, ptr noundef nonnull @strscan_get_string, i32 noundef 0) #11
  %i.ad = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.ad, ptr noundef nonnull @.str.13, ptr noundef nonnull @strscan_set_string, i32 noundef 1) #11
  %i.ae = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.ae, ptr noundef nonnull @.str.14, ptr noundef nonnull @strscan_concat, i32 noundef 1) #11
  %i.af = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.af, ptr noundef nonnull @.str.15, ptr noundef nonnull @strscan_concat, i32 noundef 1) #11
  %i.ag = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.ag, ptr noundef nonnull @.str.16, ptr noundef nonnull @strscan_get_pos, i32 noundef 0) #11
  %i.ah = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.ah, ptr noundef nonnull @.str.17, ptr noundef nonnull @strscan_set_pos, i32 noundef 1) #11
  %i.ai = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.ai, ptr noundef nonnull @.str.18, ptr noundef nonnull @strscan_get_charpos, i32 noundef 0) #11
  %i.aj = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.aj, ptr noundef nonnull @.str.19, ptr noundef nonnull @strscan_get_pos, i32 noundef 0) #11
  %i.ak = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.ak, ptr noundef nonnull @.str.20, ptr noundef nonnull @strscan_set_pos, i32 noundef 1) #11
  %i.al = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.al, ptr noundef nonnull @.str.21, ptr noundef nonnull @strscan_scan, i32 noundef 1) #11
  %i.am = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.am, ptr noundef nonnull @.str.22, ptr noundef nonnull @strscan_skip, i32 noundef 1) #11
  %i.an = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.an, ptr noundef nonnull @.str.23, ptr noundef nonnull @strscan_match_p, i32 noundef 1) #11
  %i.ao = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.ao, ptr noundef nonnull @.str.24, ptr noundef nonnull @strscan_check, i32 noundef 1) #11
  %i.ap = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.ap, ptr noundef nonnull @.str.25, ptr noundef nonnull @strscan_scan_full, i32 noundef 3) #11
  %i.aq = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.aq, ptr noundef nonnull @.str.26, ptr noundef nonnull @strscan_scan_until, i32 noundef 1) #11
  %i.ar = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.ar, ptr noundef nonnull @.str.27, ptr noundef nonnull @strscan_skip_until, i32 noundef 1) #11
  %i.as = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.as, ptr noundef nonnull @.str.28, ptr noundef nonnull @strscan_exist_p, i32 noundef 1) #11
  %i.at = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.at, ptr noundef nonnull @.str.29, ptr noundef nonnull @strscan_check_until, i32 noundef 1) #11
  %i.au = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.au, ptr noundef nonnull @.str.30, ptr noundef nonnull @strscan_search_full, i32 noundef 3) #11
  %i.av = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.av, ptr noundef nonnull @.str.31, ptr noundef nonnull @strscan_getch, i32 noundef 0) #11
  %i.aw = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.aw, ptr noundef nonnull @.str.32, ptr noundef nonnull @strscan_get_byte, i32 noundef 0) #11
  %i.ax = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.ax, ptr noundef nonnull @.str.33, ptr noundef nonnull @strscan_scan_byte, i32 noundef 0) #11
  %i.ay = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.ay, ptr noundef nonnull @.str.34, ptr noundef nonnull @strscan_peek, i32 noundef 1) #11
  %i.az = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.az, ptr noundef nonnull @.str.35, ptr noundef nonnull @strscan_peek_byte, i32 noundef 0) #11
  %i.ba = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_private_method(i64 noundef %i.ba, ptr noundef nonnull @.str.36, ptr noundef nonnull @strscan_scan_base10_integer, i32 noundef 0) #11
  %i.bb = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_private_method(i64 noundef %i.bb, ptr noundef nonnull @.str.37, ptr noundef nonnull @strscan_scan_base16_integer, i32 noundef 0) #11
  %i.bc = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.bc, ptr noundef nonnull @.str.38, ptr noundef nonnull @strscan_unscan, i32 noundef 0) #11
  %i.bd = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.bd, ptr noundef nonnull @.str.39, ptr noundef nonnull @strscan_bol_p, i32 noundef 0) #11
  %i.be = load i64, ptr @StringScanner, align 8, !tbaa !11
  %i.bf = tail call i64 @rb_intern(ptr noundef nonnull @.str.40) #11
  %i.bg = tail call i64 @rb_intern(ptr noundef nonnull @.str.39) #11
  tail call void @rb_alias(i64 noundef %i.be, i64 noundef %i.bf, i64 noundef %i.bg) #11
  %i.bh = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.bh, ptr noundef nonnull @.str.41, ptr noundef nonnull @strscan_eos_p, i32 noundef 0) #11
  %i.bi = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.bi, ptr noundef nonnull @.str.42, ptr noundef nonnull @strscan_rest_p, i32 noundef 0) #11
  %i.bj = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.bj, ptr noundef nonnull @.str.43, ptr noundef nonnull @strscan_matched_p, i32 noundef 0) #11
  %i.bk = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.bk, ptr noundef nonnull @.str.44, ptr noundef nonnull @strscan_matched, i32 noundef 0) #11
  %i.bl = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.bl, ptr noundef nonnull @.str.45, ptr noundef nonnull @strscan_matched_size, i32 noundef 0) #11
  %i.bm = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.bm, ptr noundef nonnull @.str.46, ptr noundef nonnull @strscan_aref, i32 noundef 1) #11
  %i.bn = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.bn, ptr noundef nonnull @.str.47, ptr noundef nonnull @strscan_pre_match, i32 noundef 0) #11
  %i.bo = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.bo, ptr noundef nonnull @.str.48, ptr noundef nonnull @strscan_post_match, i32 noundef 0) #11
  %i.bp = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.bp, ptr noundef nonnull @.str.49, ptr noundef nonnull @strscan_size, i32 noundef 0) #11
  %i.bq = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.bq, ptr noundef nonnull @.str.50, ptr noundef nonnull @strscan_captures, i32 noundef 0) #11
  %i.br = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.br, ptr noundef nonnull @.str.51, ptr noundef nonnull @strscan_values_at, i32 noundef -1) #11
  %i.bs = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.bs, ptr noundef nonnull @.str.52, ptr noundef nonnull @strscan_rest, i32 noundef 0) #11
  %i.bt = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.bt, ptr noundef nonnull @.str.53, ptr noundef nonnull @strscan_rest_size, i32 noundef 0) #11
  %i.bu = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.bu, ptr noundef nonnull @.str.54, ptr noundef nonnull @strscan_inspect, i32 noundef 0) #11
  %i.bv = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.bv, ptr noundef nonnull @.str.55, ptr noundef nonnull @strscan_fixed_anchor_p, i32 noundef 0) #11
  %i.bw = load i64, ptr @StringScanner, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.bw, ptr noundef nonnull @.str.56, ptr noundef nonnull @strscan_named_captures, i32 noundef 0) #11
  %i.bx = tail call i64 @rb_require(ptr noundef nonnull @.str.57) #11 ; 0 uses
  ret void
}

declare void @rb_ext_ractor_safe(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i64 @rb_intern(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @rb_usascii_encindex() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @rb_utf8_encindex() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @rb_ascii8bit_encindex() local_unnamed_addr #3

declare i64 @rb_define_class(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_define_class_under(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @rb_const_defined(i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @rb_const_set(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @rb_deprecate_constant(i64 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_obj_freeze(i64 noundef) local_unnamed_addr #1

declare void @rb_define_alloc_func(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i64 @strscan_s_allocate(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_data_typed_object_zalloc(i64 noundef %0, i64 noundef 72, ptr noundef nonnull @strscanner_type) #11 ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !42
  %i.e = trunc i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  br i1 %i.e, label %RTYPEDDATA_GET_DATA.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !43
  br label %RTYPEDDATA_GET_DATA.exit

RTYPEDDATA_GET_DATA.exit:                         ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.f, %bb.a ] ; 5 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !18
  %i.j = and i64 %i.i, -2
  store i64 %i.j, ptr %i.h, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store i64 4, ptr %i.k, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  tail call void @onig_region_init(ptr noundef nonnull %i.l) #11
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 4, ptr %i.m, align 8, !tbaa !20
  ret i64 %i.a
}

declare extern_weak void @rb_define_private_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i64 @strscan_initialize(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef returned %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca [1 x i64], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.d = tail call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @strscanner_type) #11 ; 3 uses
  %i.e = icmp slt i32 %0, 1
  br i1 %i.e, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = load i64, ptr %1, align 8, !tbaa !11
  store i64 %i.f, ptr %i.a, align 8, !tbaa !11
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %rb_scan_args_set.exit, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !11
  %i.i = icmp eq i32 %0, 2
  br i1 %i.i, label %rb_scan_args_set.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 2) #13
  unreachable

rb_scan_args_set.exit:                            ; preds = %.preheader, %bb.b
  %storemerge27 = phi i64 [ %i.h, %bb.b ], [ 4, %.preheader ]
  %i.j = tail call i64 @rb_check_hash_type(i64 noundef %storemerge27) #11 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %rb_scan_args_set.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %.pr.i = load i64, ptr @strscan_initialize.rbimpl_id, align 8, !tbaa !11 ; 2 uses
  %.not1.i = icmp eq i64 %.pr.i, 0
  br i1 %.not1.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %i.l = tail call i64 @rb_intern2(ptr noundef nonnull @.str.59, i64 noundef 12) #11 ; 3 uses
  store i64 %i.l, ptr @strscan_initialize.rbimpl_id, align 8, !tbaa !11
  %.not.i9 = icmp eq i64 %i.l, 0
  br i1 %.not.i9, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !44

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.d
  %.lcssa.i = phi i64 [ %.pr.i, %bb.d ], [ %i.l, %.lr.ph.i ]
  store i64 %.lcssa.i, ptr %i.c, align 8, !tbaa !11
  %i.m = call i32 @rb_get_kwargs(i64 noundef %i.j, ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %i.b) #11 ; 0 uses
  %i.n = load i64, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %i.o = icmp ne i64 %i.n, 36
  %i.p = and i64 %i.n, -5
  %i.q = icmp ne i64 %i.p, 0
  %narrow = and i1 %i.o, %i.q
  %.sink = zext i1 %narrow to i8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i8 %.sink, ptr %i.r, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.f

bb.e:                                             ; preds = %rb_scan_args_set.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i8 0, ptr %i.s, align 8, !tbaa !22
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %rbimpl_intern_const.exit
  %i.t = call i64 @rb_string_value(ptr noundef nonnull %i.a) #11 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.v = load i64, ptr %i.a, align 8, !tbaa !11   ; 4 uses
  store i64 %i.v, ptr %i.u, align 8, !tbaa !11
  %i.w = icmp eq i64 %i.v, 0
  %i.x = and i64 %i.v, 7
  %i.y = icmp ne i64 %i.x, 0
  %i.z = or i1 %i.w, %i.y
  br i1 %i.z, label %rb_obj_write.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @rb_gc_writebarrier(i64 noundef %2, i64 noundef %i.v) #11
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @strscan_init_copy(i64 noundef returned %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !11
  %i.c = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @strscanner_type) #11 ; 4 uses
  %i.d = tail call ptr @rb_check_typeddata(i64 noundef %1, ptr noundef nonnull @strscanner_type) #11 ; 5 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20   ; 3 uses
  %i.g = load <2 x i64>, ptr %i.d, align 8, !tbaa !11
  store <2 x i64> %i.g, ptr %i.c, align 8, !tbaa !11
  %i.h = icmp eq i64 %i.f, 0
  %i.i = and i64 %i.f, 7
  %i.j = icmp ne i64 %i.i, 0
  %i.k = or i1 %i.h, %i.j
  br i1 %i.k, label %rb_obj_write.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %i.f) #11
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %bb.b, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.n = load <2 x i64>, ptr %i.l, align 8, !tbaa !11
  store <2 x i64> %i.n, ptr %i.m, align 8, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.q = tail call i32 @rb_reg_region_copy(ptr noundef nonnull %i.o, ptr noundef nonnull %i.p) #11
  %.not16 = icmp eq i32 %i.q, 0
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %rb_obj_write.exit
  tail call void @rb_memerror() #14
  unreachable

bb.e:                                             ; preds = %rb_obj_write.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store ptr %i.a, ptr %i.b, align 8, !tbaa !45
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #11, !srcloc !46
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %i.s = load volatile i64, ptr %i.r, align 8, !tbaa !11 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  ret i64 %0
}

declare extern_weak void @rb_define_singleton_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @strscan_s_mustc(i64 noundef returned %0) #4 {
bb.a:
  ret i64 %0
}

declare extern_weak void @rb_define_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i64 @strscan_reset(i64 noundef returned %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @strscanner_type) #11 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !20
  %i.d = icmp eq i64 %i.c, 4
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.e, ptr noundef nonnull @.str.61) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.f, align 8, !tbaa !23
  %i.g = load i64, ptr %i.a, align 8, !tbaa !18
  %i.h = and i64 %i.g, -2
  store i64 %i.h, ptr %i.a, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 4, ptr %i.i, align 8, !tbaa !19
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @strscan_terminate(i64 noundef returned %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @strscanner_type) #11 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %i.d = icmp eq i64 %i.c, 4
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.e, ptr noundef nonnull @.str.61) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = inttoptr i64 %i.c to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.h, ptr %i.i, align 8, !tbaa !23
  %i.j = load i64, ptr %i.a, align 8, !tbaa !18
  %i.k = and i64 %i.j, -2
  store i64 %i.k, ptr %i.a, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 4, ptr %i.l, align 8, !tbaa !19
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define internal range(i64 5, 4) i64 @strscan_get_string(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @strscanner_type) #11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %i.d = icmp eq i64 %i.c, 4
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.e, ptr noundef nonnull @.str.61) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  ret i64 %i.c
}

; Function Attrs: nounwind uwtable
define internal i64 @strscan_set_string(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !11
  %i.b = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @strscanner_type) #11 ; 5 uses
  %i.c = call i64 @rb_string_value(ptr noundef nonnull %i.a) #11 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
end_hunk_0
