Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/odb?download=true
inline.NumInlined: 89
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@odb_read_object_info_extended:bb.a
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.dz, i64 %.013.i.i
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) @__const.odb_add_alternate_recursively.sources, i64 24, i1 false)
  %i.ec = load i32, ptr %i.cr, align 8, !tbaa !47
  %.not.i.i.i67.i = icmp eq i32 %i.ec, 0
  br i1 %.not.i.i.i67.i, label %bb.aw, label %odb_add_to_alternates_memory.exit.i.i

bb.aw:                                            ; preds = %.lr.ph.i66.i
  %i.ed = load ptr, ptr %i.do, align 8, !tbaa !64
  call void @parse_alternates(ptr noundef %i.ed, i32 noundef 58, ptr noundef null, ptr noundef nonnull %4)
  %i.ee = load ptr, ptr %i.dj, align 8, !tbaa !43 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 136
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !60
  %i.eh = call i32 %i.eg(ptr noundef %i.ee, ptr noundef nonnull %4) #15, !inline_history !124 ; 0 uses
  %i.ei = load i64, ptr %i.dp, align 8, !tbaa !62
  %.not8.i.i.i.i = icmp eq i64 %i.ei, 0
  br i1 %.not8.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.aw
  store i32 1, ptr %i.cr, align 8, !tbaa !47
  call void @strvec_clear(ptr noundef nonnull %4) #15
  br label %odb_add_to_alternates_memory.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.aw, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi i64 [ %i.en, %.lr.ph.i.i.i.i ], [ 0, %bb.aw ] ; 2 uses
  %i.ej = load ptr, ptr %4, align 8, !tbaa !63
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %.07.i.i.i.i
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !39
  %i.em = call fastcc ptr @odb_add_alternate_recursively(ptr noundef nonnull %0, ptr noundef %i.el, i32 noundef 0) ; 0 uses
  %i.en = add nuw i64 %.07.i.i.i.i, 1             ; 2 uses
  %i.eo = load i64, ptr %i.dp, align 8, !tbaa !62
  %i.ep = icmp ult i64 %i.en, %i.eo
  br i1 %i.ep, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !2

odb_add_to_alternates_memory.exit.i.i:            ; preds = %._crit_edge.i.i.i.i, %.lr.ph.i66.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %i.eq = call fastcc ptr @odb_add_alternate_recursively(ptr noundef nonnull %0, ptr noundef %i.eb, i32 noundef 0) ; 0 uses
  %i.er = add nuw i64 %.013.i.i, 1                ; 2 uses
  %i.es = load i64, ptr %i.dn, align 8, !tbaa !138
  %i.et = icmp ult i64 %i.er, %i.es
  br i1 %i.et, label %.lr.ph.i66.i, label %._crit_edge.i68.i, !llvm.loop !125

bb.ax:                                            ; preds = %._crit_edge.i68.i
  call void @string_list_clear(ptr noundef nonnull %i.dm, i32 noundef 0) #15
  %i.eu = load ptr, ptr %0, align 8, !tbaa !34
  %sext.i.i = shl i64 %i.dx, 32
  %i.ev = ashr exact i64 %sext.i.i, 32
  call void @trace2_data_intmax_fl(ptr noundef nonnull @.str.2, i32 noundef 543, ptr noundef nonnull @.str.45, ptr noundef %i.eu, ptr noundef nonnull @.str.46, i64 noundef %i.ev) #15
  %i.ew = call i32 @git_env_bool(ptr noundef nonnull @.str.47, i32 noundef 0) #15
  %.not12.i.i = icmp eq i32 %i.ew, 0
  br i1 %.not12.i.i, label %register_all_submodule_sources.exit.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.2, i32 noundef 545, ptr noundef nonnull @.str.48) #16
  unreachable

bb.az:                                            ; preds = %._crit_edge.i68.i, %.loopexit.i
  %i.ex = load i32, ptr @fetch_if_missing, align 4, !tbaa !42
  %.not57.i = icmp eq i32 %i.ex, 0
  br i1 %.not57.i, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ey = load ptr, ptr %0, align 8, !tbaa !34
  %i.ez = call i32 @repo_has_promisor_remote(ptr noundef %i.ey) #15
  %i.fa = icmp ne i32 %i.ez, 0
  %i.fb = or disjoint i32 %.044.i17.ph, %i.dq
  %i.fc = icmp eq i32 %i.fb, 0
  %or.cond63.i = select i1 %i.fa, i1 %i.fc, i1 false
  br i1 %or.cond63.i, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.fd = load ptr, ptr %0, align 8, !tbaa !34
  call void @promisor_remote_get_direct(ptr noundef %i.fd, ptr noundef nonnull %.046.i, i32 noundef 1) #15
  br label %register_all_submodule_sources.exit.i.outer

bb.bc:                                            ; preds = %bb.ba, %bb.az
  %i.fe = and i32 %3, 8
  %.not59.i20 = icmp eq i32 %i.fe, 0
  br i1 %.not59.i20, label %do_oid_object_info_extended.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  br i1 %.not.i16, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ff = load i128, ptr %.046.i, align 1
  %i.fg = load i128, ptr %1, align 1
  %i.fh = xor i128 %i.ff, %i.fg
  %i.fi = getelementptr i8, ptr %.046.i, i64 16
  %i.fj = getelementptr i8, ptr %1, i64 16
  %i.fk = load i128, ptr %i.fi, align 1
  %i.fl = load i128, ptr %i.fj, align 1
  %i.fm = xor i128 %i.fk, %i.fl
  %i.fn = or i128 %i.fh, %i.fm
  %i.fo = icmp ne i128 %i.fn, 0
  %i.fp = zext i1 %i.fo to i32
  %.not.i71.not.i = icmp eq i32 %i.fp, 0
  br i1 %.not.i71.not.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fq = call fastcc ptr @_(ptr noundef nonnull @.str.41)
  %i.fr = call ptr @oid_to_hex(ptr noundef nonnull %.046.i) #15
  %i.fs = call ptr @oid_to_hex(ptr noundef nonnull %1) #15
  call void (ptr, ...) @die(ptr noundef %i.fq, ptr noundef %i.fr, ptr noundef %i.fs) #16
  unreachable

bb.bg:                                            ; preds = %bb.be, %bb.bd
  %i.ft = load ptr, ptr %0, align 8, !tbaa !34
  %i.fu = call ptr @has_packed_and_bad(ptr noundef %i.ft, ptr noundef nonnull %.046.i) #15 ; 2 uses
  %.not61.i21 = icmp eq ptr %i.fu, null
  br i1 %.not61.i21, label %do_oid_object_info_extended.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fv = call fastcc ptr @_(ptr noundef nonnull @.str.42)
  %i.fw = call ptr @oid_to_hex(ptr noundef nonnull %.046.i) #15
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 208
  call void (ptr, ...) @die(ptr noundef %i.fv, ptr noundef %i.fw, ptr noundef nonnull %i.fx) #16
  unreachable

do_oid_object_info_extended.exit:                 ; preds = %bb.at, %bb.av, %lookup_replace_object.exit.i, %bb.ap, %bb.bc, %bb.bg
  %.2.i19 = phi i32 [ -1, %lookup_replace_object.exit.i ], [ 0, %bb.ap ], [ -1, %bb.bg ], [ -1, %bb.bc ], [ 0, %bb.av ], [ 0, %bb.at ] ; 2 uses
  %i.fy = load i32, ptr @obj_read_use_lock, align 4, !tbaa !42
  %.not.i22 = icmp eq i32 %i.fy, 0
  br i1 %.not.i22, label %obj_read_unlock.exit, label %bb.bi

bb.bi:                                            ; preds = %do_oid_object_info_extended.exit
  %i.fz = call i32 @pthread_mutex_unlock(ptr noundef nonnull @obj_read_mutex) #15 ; 0 uses
  br label %obj_read_unlock.exit

obj_read_unlock.exit:                             ; preds = %bb.bi, %do_oid_object_info_extended.exit, %oid_object_info_convert.exit
  %.0 = phi i32 [ %.147.i, %oid_object_info_convert.exit ], [ %.2.i19, %do_oid_object_info_extended.exit ], [ %.2.i19, %bb.bi ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @odb_read_object_info(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %3 = alloca %struct.object_info, align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  store ptr %i.a, ptr %3, align 8, !tbaa !92
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.c, align 8, !tbaa !90
  %i.d = call i32 @odb_read_object_info_extended(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 1)
  %i.e = load i32, ptr %i.a, align 4
  %.inv = icmp sgt i32 %i.d, -1
  %.0 = select i1 %.inv, i32 %i.e, i32 -1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nounwind uwtable
define dso_local i32 @odb_pretend_object(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !83
  tail call void @hash_object_file(ptr noundef %i.c, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4) #15
  %i.d = load ptr, ptr @startup_info, align 8, !tbaa !95
  %i.e = load i32, ptr %i.d, align 8, !tbaa !97
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %odb_has_object.exit.thread, label %odb_has_object.exit

odb_has_object.exit:                              ; preds = %bb.a
  %i.f = tail call i32 @odb_read_object_info_extended(ptr noundef nonnull %0, ptr noundef %4, ptr noundef null, i32 noundef 6)
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %odb_has_object.exit.thread, label %bb.b

odb_has_object.exit.thread:                       ; preds = %bb.a, %odb_has_object.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !93   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !98
  %i.l = tail call i32 %i.k(ptr noundef %i.i, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef null, i32 noundef 0) #15, !inline_history !4
  br label %bb.b

bb.b:                                             ; preds = %odb_has_object.exit, %odb_has_object.exit.thread
  %.0 = phi i32 [ %i.l, %odb_has_object.exit.thread ], [ 0, %odb_has_object.exit ]
  ret i32 %.0
}

declare void @hash_object_file(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @odb_has_object(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @startup_info, align 8, !tbaa !95
  %i.b = load i32, ptr %i.a, align 8, !tbaa !97
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl i32 %2, 1
  %3 = and i32 %i.c, 2
  %i.d = and i32 %2, 2
  %.not9 = icmp eq i32 %i.d, 0
  %.1.v = select i1 %.not9, i32 6, i32 2
  %.1 = xor i32 %.1.v, %3
  %i.e = tail call i32 @odb_read_object_info_extended(ptr noundef %0, ptr noundef %1, ptr noundef null, i32 noundef %.1)
  %i.f = icmp sgt i32 %i.e, -1
  %i.g = zext i1 %i.f to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.07 = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  ret i32 %.07
}

; Function Attrs: nounwind uwtable
define dso_local ptr @odb_read_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.object_info, align 8        ; 7 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr %2, ptr %4, align 8, !tbaa !92
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.c, align 8, !tbaa !90
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.a, ptr %i.d, align 8, !tbaa !91
  %i.e = call i32 @odb_read_object_info_extended(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, i32 noundef 9)
  %.not = icmp eq i32 %i.e, 0
  %i.f = load ptr, ptr %i.a, align 8
  %.0 = select i1 %.not, ptr %i.f, ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @odb_read_object_peeled(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.object_info, align 8        ; 11 uses
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %6 = alloca %struct.object_id, align 4          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %6, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i32, ptr %i.d, align 4, !tbaa !85
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store i32 %i.e, ptr %i.f, align 4, !tbaa !85
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.g, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr %i.b, ptr %5, align 8, !tbaa !92
  store ptr %i.c, ptr %i.h, align 8, !tbaa !90
  store ptr %i.a, ptr %i.i, align 8, !tbaa !91
  %i.j = call i32 @odb_read_object_info_extended(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %5, i32 noundef 9)
  %.not.i36 = icmp ne i32 %i.j, 0
  %i.k = load ptr, ptr %i.a, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %.not3237 = icmp eq ptr %i.k, null
  %.not38 = select i1 %.not.i36, i1 true, i1 %.not3237
  br i1 %.not38, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.k
  %i.l = phi ptr [ %i.ae, %bb.k ], [ %i.k, %bb.a ] ; 7 uses
  %i.m = load i32, ptr %i.b, align 4, !tbaa !42   ; 2 uses
  %i.n = icmp eq i32 %i.m, %2
  br i1 %i.n, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.o = load i64, ptr %i.c, align 8, !tbaa !82
  store i64 %i.o, ptr %3, align 8, !tbaa !82
  %.not28 = icmp eq ptr %4, null
  br i1 %.not28, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %4, ptr noundef nonnull readonly align 4 dereferenceable(32) %6, i64 32, i1 false)
  %i.p = load i32, ptr %i.f, align 4, !tbaa !85
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 %i.p, ptr %i.q, align 4, !tbaa !85
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  switch i32 %i.m, label %bb.f [
    i32 1, label %bb.g
    i32 4, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @free(ptr noundef nonnull %i.l) #15
  br label %.loopexit

bb.g:                                             ; preds = %bb.d, %bb.e
  %.021 = phi ptr [ @.str.17, %bb.e ], [ @.str.16, %bb.d ] ; 2 uses
  %i.r = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.021) #17
  %sext = shl i64 %i.r, 32
  %i.s = ashr exact i64 %sext, 32                 ; 3 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !34
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 448
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !83   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !99
  %i.y = add i64 %i.x, %i.s
  %i.z = load i64, ptr %i.c, align 8, !tbaa !82
  %i.aa = icmp ugt i64 %i.y, %i.z
  br i1 %i.aa, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %bcmp = call i32 @bcmp(ptr nonnull %i.l, ptr nonnull %.021, i64 %i.s)
  %.not26 = icmp eq i32 %bcmp, 0
  br i1 %.not26, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds i8, ptr %i.l, i64 %i.s
  %i.ac = call i32 @get_oid_hex_algop(ptr noundef nonnull %i.ab, ptr noundef nonnull %6, ptr noundef nonnull %i.v) #15
  %.not27 = icmp eq i32 %i.ac, 0
  br i1 %.not27, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  call void @free(ptr noundef nonnull %i.l) #15
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  call void @free(ptr noundef nonnull %i.l) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.g, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr %i.b, ptr %5, align 8, !tbaa !92
  store ptr %i.c, ptr %i.h, align 8, !tbaa !90
  store ptr %i.a, ptr %i.i, align 8, !tbaa !91
  %i.ad = call i32 @odb_read_object_info_extended(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %5, i32 noundef 9)
  %.not.i = icmp ne i32 %i.ad, 0
  %i.ae = load ptr, ptr %i.a, align 8             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %.not32 = icmp eq ptr %i.ae, null
  %.not = select i1 %.not.i, i1 true, i1 %.not32
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.k, %bb.a, %bb.j, %bb.f, %bb.c, %bb.b
  %.1.ph = phi ptr [ %i.l, %bb.b ], [ %i.l, %bb.c ], [ null, %bb.f ], [ null, %bb.j ], [ null, %bb.a ], [ null, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  ret ptr %.1.ph
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

declare i32 @get_oid_hex_algop(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @odb_freshen_object(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.strvec, align 8             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) @__const.odb_add_alternate_recursively.sources, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !47
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %odb_prepare_alternates.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64
  call void @parse_alternates(ptr noundef %i.d, i32 noundef 58, ptr noundef null, ptr noundef nonnull %2)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !60
  %i.i = call i32 %i.h(ptr noundef %i.f, ptr noundef nonnull %2) #15, !inline_history !1 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !62
  %.not8.i = icmp eq i64 %i.k, 0
  br i1 %.not8.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  store i32 1, ptr %i.a, align 8, !tbaa !47
  call void @strvec_clear(ptr noundef nonnull %2) #15
  br label %odb_prepare_alternates.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.07.i = phi i64 [ %i.p, %.lr.ph.i ], [ 0, %bb.b ] ; 2 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !63
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.07.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !39
  %i.o = call fastcc ptr @odb_add_alternate_recursively(ptr noundef nonnull %0, ptr noundef %i.n, i32 noundef 0) ; 0 uses
  %i.p = add nuw i64 %.07.i, 1                    ; 2 uses
  %i.q = load i64, ptr %i.j, align 8, !tbaa !62
  %i.r = icmp ult i64 %i.p, %i.q
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !2

end_hunk_0
