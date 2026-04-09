inline.NumInlined: 520
inline.NumDeleted: 102
begin_hunk_0_@rb_hash_new
; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @realpath_rec(ptr noundef nonnull captures(none) %0, ptr noundef nonnull captures(none) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef range(i32 0, 3) %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #0 {
bb.a:
  %7 = ptrtoint ptr %2 to i64
  %8 = alloca %struct.no_gvl_stat_data, align 8   ; 5 uses
  %9 = alloca %struct.no_gvl_stat_data, align 8   ; 5 uses
  %10 = alloca %struct.stat, align 8              ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #24 ; 2 uses
  %i.d = getelementptr i8, ptr %2, i64 %i.c       ; 4 uses
  %i.e = load i64, ptr %1, align 8, !tbaa !14
  %i.f = tail call ptr @rb_enc_get(i64 noundef %i.e) #23 ; 3 uses
  %.pr.i = load i64, ptr @realpath_rec.rbimpl_id, align 8, !tbaa !14 ; 2 uses
end_hunk_0
begin_hunk_1_@realpath_rec:bb.a
rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.a
  %.lcssa.i = phi i64 [ %.pr.i, %bb.a ], [ %i.g, %.lr.ph.i ] ; 2 uses
  %i.h = icmp eq i32 %5, 0                        ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.k = icmp eq i64 %3, 4
  %i.l = inttoptr i64 %3 to ptr                   ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 24       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.o = icmp ne i32 %5, 2
  %i.p = icmp ne i32 %6, 0
  %or.cond = and i1 %i.o, %i.p
end_hunk_1
begin_hunk_2_@realpath_rec:bb.a
  br i1 %i.v, label %.lr.ph.i145, label %rb_enc_path_next.exit, !llvm.loop !85

rb_enc_path_next.exit:                            ; preds = %.lr.ph.i145, %bb.c
  %.0.lcssa.i = phi ptr [ %.09.i, %.lr.ph.i145 ], [ %i.u, %bb.c ] ; 7 uses
  %i.w = ptrtoint ptr %.0.lcssa.i to i64          ; 2 uses
  %i.x = ptrtoint ptr %.0123 to i64
  %i.y = sub i64 %i.w, %i.x                       ; 2 uses
  %i.z = icmp ult ptr %.0.lcssa.i, %i.d
  br i1 %i.z, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %rb_enc_path_next.exit
  %11 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.c
  %scevgep = getelementptr i8, ptr %11, i64 %7
  %12 = sub i64 0, %i.w
  %scevgep176 = getelementptr i8, ptr %scevgep, i64 %12 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.0124164 = phi ptr [ %i.ac, %bb.d ], [ %.0.lcssa.i, %.lr.ph.preheader ] ; 3 uses
  %i.aa = load i8, ptr %.0124164, align 1, !tbaa !36
  %i.ab = icmp eq i8 %i.aa, 47
  br i1 %i.ab, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph
  %i.ac = getelementptr i8, ptr %.0124164, i64 1  ; 2 uses
  %exitcond.not = icmp eq ptr %i.ac, %scevgep176
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !218

.critedge:                                        ; preds = %.lr.ph, %bb.d, %rb_enc_path_next.exit
  %.0124.lcssa = phi ptr [ %.0.lcssa.i, %rb_enc_path_next.exit ], [ %scevgep176, %bb.d ], [ %.0124164, %.lr.ph ]
  switch i64 %i.y, label %bb.l [
    i64 1, label %bb.e
    i64 2, label %bb.f
end_hunk_2
begin_hunk_3_@realpath_rec:bb.a
  br label %bb.at

bb.s:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.cf = load i64, ptr %i.bt, align 8, !tbaa !11
  %i.cg = and i64 %i.cf, 8192
  %.not.i149 = icmp eq i64 %i.cg, 0
end_hunk_3
begin_hunk_4_@realpath_rec:bb.a

RSTRING_PTR.exit150:                              ; preds = %bb.s, %bb.t
  %i.cj = phi ptr [ %i.ci, %bb.t ], [ %i.ch, %bb.s ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store ptr %i.cj, ptr %i.i, align 8, !tbaa !36
  store ptr %10, ptr %9, align 8, !tbaa !57
  %i.ck = call ptr @rb_nogvl(ptr noundef nonnull @no_gvl_lstat, ptr noundef nonnull %9, ptr noundef nonnull inttoptr (i64 -1 to ptr), ptr noundef null, i32 noundef 4) #23
  %i.cl = ptrtoint ptr %i.ck to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.cm = and i64 %i.cl, 4294967295
  %i.cn = icmp eq i64 %i.cm, 4294967295
  br i1 %i.cn, label %bb.u, label %bb.ae
end_hunk_4
begin_hunk_5_@realpath_rec:bb.a

RSTRING_PTR.exit152:                              ; preds = %bb.w, %bb.x
  %i.cu = phi ptr [ %i.ct, %bb.x ], [ %i.m, %bb.w ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store ptr %i.cu, ptr %i.n, align 8, !tbaa !36
  store ptr %10, ptr %8, align 8, !tbaa !57
  %i.cv = call ptr @rb_nogvl(ptr noundef nonnull @no_gvl_stat, ptr noundef nonnull %8, ptr noundef nonnull inttoptr (i64 -1 to ptr), ptr noundef null, i32 noundef 4) #23
  %i.cw = ptrtoint ptr %i.cv to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.cx = and i64 %i.cw, 4294967295
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %bb.y, label %bb.z
end_hunk_5
begin_hunk_6_@realpath_rec:bb.a
bb.as:                                            ; preds = %.thread, %bb.aq, %bb.ar, %bb.y, %bb.ad, %bb.z
  %.2127 = phi i32 [ %spec.select, %bb.aq ], [ 1, %bb.z ], [ 1, %bb.y ], [ 5, %bb.ad ], [ 0, %bb.ar ], [ 1, %.thread ]
  %.4 = phi i32 [ %.2, %bb.aq ], [ -1, %bb.z ], [ 0, %bb.y ], [ %.0, %bb.ad ], [ %.0, %bb.ar ], [ -1, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.at

bb.at:                                            ; preds = %bb.r, %bb.as, %bb.e, %bb.h, %rb_enc_path_last_separator.exit
end_hunk_6
