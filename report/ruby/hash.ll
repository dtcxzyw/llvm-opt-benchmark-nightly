inline.NumInlined: 822
inline.NumDeleted: 151
begin_hunk_0_@ar_force_convert_table:bb.a
  %unroll_iter = and i64 %wide.trip.count49.i, 12
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i, %.lr.ph.i.new
  %indvars.iv46.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next47.i.3, %.lr.ph.split.us.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %.lr.ph.split.us.i ]
  %i.o = getelementptr [16 x i8], ptr %i.m, i64 %indvars.iv46.i
  %i.p = load i64, ptr %i.o, align 8, !tbaa !45
  %i.q = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv46.i
  store i64 %i.p, ptr %i.q, align 16, !tbaa !11
  %indvars.iv.next47.i = or disjoint i64 %indvars.iv46.i, 1 ; 2 uses
  %i.r = getelementptr [16 x i8], ptr %i.m, i64 %indvars.iv.next47.i
  %i.s = load i64, ptr %i.r, align 8, !tbaa !45
  %i.t = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv.next47.i
  store i64 %i.s, ptr %i.t, align 8, !tbaa !11
  %indvars.iv.next47.i.1 = or disjoint i64 %indvars.iv46.i, 2 ; 2 uses
  %i.u = getelementptr [16 x i8], ptr %i.m, i64 %indvars.iv.next47.i.1
  %i.v = load i64, ptr %i.u, align 8, !tbaa !45
  %i.w = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv.next47.i.1
  store i64 %i.v, ptr %i.w, align 16, !tbaa !11
  %indvars.iv.next47.i.2 = or disjoint i64 %indvars.iv46.i, 3 ; 2 uses
  %i.x = getelementptr [16 x i8], ptr %i.m, i64 %indvars.iv.next47.i.2
  %i.y = load i64, ptr %i.x, align 8, !tbaa !45
  %i.z = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv.next47.i.2
  store i64 %i.y, ptr %i.z, align 8, !tbaa !11
  %indvars.iv.next47.i.3 = add nuw nsw i64 %indvars.iv46.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.preheader.unr-lcssa, label %.lr.ph.split.us.i, !llvm.loop !61

.lr.ph.preheader.unr-lcssa:                       ; preds = %.lr.ph.split.us.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader, label %.lr.ph.split.us.i.epil.preheader

.lr.ph.split.us.i.epil.preheader:                 ; preds = %.lr.ph.preheader.unr-lcssa, %.lr.ph.i
  %indvars.iv46.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next47.i.3, %.lr.ph.preheader.unr-lcssa ]
  %lcmp.mod1 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1)
  br label %.lr.ph.split.us.i.epil

.lr.ph.split.us.i.epil:                           ; preds = %.lr.ph.split.us.i.epil, %.lr.ph.split.us.i.epil.preheader
  %indvars.iv46.i.epil = phi i64 [ %indvars.iv.next47.i.epil, %.lr.ph.split.us.i.epil ], [ %indvars.iv46.i.epil.init, %.lr.ph.split.us.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.us.i.epil ], [ 0, %.lr.ph.split.us.i.epil.preheader ]
  %i.aa = getelementptr [16 x i8], ptr %i.m, i64 %indvars.iv46.i.epil
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !45
  %i.ac = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv46.i.epil
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !11
  %indvars.iv.next47.i.epil = add nuw nsw i64 %indvars.iv46.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.preheader, label %.lr.ph.split.us.i.epil, !llvm.loop !62

.lr.ph.preheader:                                 ; preds = %.lr.ph.split.us.i.epil, %.lr.ph.preheader.unr-lcssa
  %wide.trip.count = zext nneg i32 %i.j to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.d
  %.pre = load i64, ptr %i.c, align 8, !tbaa !13
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.loopexit
  %i.ad = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.d, %bb.b ]
  %i.ae = and i64 %i.ad, 32768
  %.not.i33 = icmp eq i64 %i.ae, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  br i1 %.not.i33, label %bb.e, label %ar_each_key.exit37, !prof !64

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.af = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !11 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 36
  br i1 %i.ah, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.ai = tail call fastcc range(i64 -4611686018427387904, 4611686018427387904) i64 @any_hash(i64 noundef %i.ag, ptr noundef nonnull @obj_any_hash)
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.aj = phi i64 [ %i.ai, %bb.c ], [ 0, %.lr.ph ]
  %i.ak = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !65

bb.e:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.al = call ptr @rb_st_init_existing_table_with_size(ptr noundef nonnull %1, ptr noundef nonnull @objhash, i64 noundef %i.l) #29 ; 0 uses
  br i1 %.not.i, label %ar_each_key.exit41, label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %bb.e
  %i.am = getelementptr i8, ptr %i.g, i64 8
  %wide.trip.count49.i40 = zext nneg i32 %i.j to i64
  br label %.lr.ph.split.us34.i

.lr.ph.split.us34.i:                              ; preds = %bb.g, %.lr.ph.i39
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ 0, %.lr.ph.i39 ] ; 3 uses
  %i.an = getelementptr [16 x i8], ptr %i.am, i64 %indvars.iv.i ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !45 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 36
  br i1 %i.ap, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us34.i
  %i.aq = getelementptr i8, ptr %i.an, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !47
  %i.as = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.at = load i64, ptr %i.as, align 8, !tbaa !11
  call void @rb_st_add_direct_with_hash(ptr noundef nonnull %1, i64 noundef %i.ao, i64 noundef %i.ar, i64 noundef %i.at) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split.us34.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count49.i40
  br i1 %exitcond.not.i, label %ar_each_key.exit41, label %.lr.ph.split.us34.i, !llvm.loop !61

ar_each_key.exit41:                               ; preds = %bb.g, %bb.e
  %i.au = load i64, ptr %i.c, align 8, !tbaa !13
  %i.av = and i64 %i.au, -16711681
  store i64 %i.av, ptr %i.c, align 8, !tbaa !13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(136) %i.g, i8 noundef 0, i64 noundef 136, i1 noundef false) #29
  %i.aw = load i64, ptr %i.c, align 8, !tbaa !13
  %i.ax = or i64 %i.aw, 32768
  store i64 %i.ax, ptr %i.c, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(56) %1, i64 56, i1 false), !tbaa.struct !30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %ar_each_key.exit37

ar_each_key.exit37:                               ; preds = %._crit_edge, %ar_each_key.exit41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %ar_each_key.exit37
  ret ptr %i.g
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef ptr @rb_hash_tbl(i64 noundef %0, ptr nofree noundef readnone captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call void @rb_gc_writebarrier_unprotect(i64 noundef %0) #29
  %i.a = tail call fastcc noundef ptr @ar_force_convert_table(i64 noundef %0)
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i32 @rb_hash_stlike_update(i64 noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13
  %i.c = and i64 %i.b, 32768
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc i32 @ar_update(i64 noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) ; 2 uses
  %.not = icmp eq i32 %i.d, -1
  br i1 %.not, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.b
  %i.e = tail call fastcc ptr @ar_force_convert_table(i64 noundef %0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %.thread, %bb.a
  %i.f = add i64 %0, 24
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call i32 @rb_st_update(ptr noundef nonnull %i.g, i64 noundef %1, ptr noundef %2, i64 noundef %3) #29
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ %i.h, %bb.c ], [ %i.d, %bb.b ]
  ret i32 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -1, 2) i32 @ar_update(i64 noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 0, ptr %i.b, align 8, !tbaa !11
  %i.c = tail call fastcc range(i64 -4611686018427387904, 4611686018427387904) i64 @any_hash(i64 noundef %1, ptr noundef nonnull @obj_any_hash) ; 2 uses
  %i.d = inttoptr i64 %0 to ptr                   ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %i.f = and i64 %i.e, 32768
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.b, label %ar_add_direct_with_hash.exit, !prof !64

bb.b:                                             ; preds = %bb.a
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  %i.h = and i32 %i.g, 983040
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = trunc i64 %i.c to i8
  %i.j = lshr i32 %i.g, 20
  %i.k = and i32 %i.j, 15                         ; 2 uses
  %i.l = add i64 %0, 24
  %i.m = inttoptr i64 %i.l to ptr                 ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %.not19.i.i = icmp eq i32 %i.k, 0
  br i1 %.not19.i.i, label %.thread, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %wide.trip.count.i.i = zext nneg i32 %i.k to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.e ] ; 5 uses
  %i.o = getelementptr i8, ptr %i.m, i64 %indvars.iv.i.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !24
  %i.q = icmp eq i8 %i.p, %i.i
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.r = getelementptr [16 x i8], ptr %i.n, i64 %indvars.iv.i.i ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !45
  %i.t = tail call fastcc i32 @ar_equal(i64 noundef %1, i64 noundef %i.s)
  %.not.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.thread, label %.lr.ph.i.i, !llvm.loop !57

bb.f:                                             ; preds = %bb.d
  %.not31.not = icmp eq i64 %indvars.iv.i.i, 8
  br i1 %.not31.not, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load i64, ptr %i.r, align 8, !tbaa !45   ; 2 uses
  store i64 %i.u, ptr %i.a, align 8, !tbaa !11
  %i.v = getelementptr i8, ptr %i.r, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !47
  store i64 %i.w, ptr %i.b, align 8, !tbaa !11
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.c, %bb.b, %bb.g, %bb.f
  %i.x = phi i64 [ %1, %bb.b ], [ %i.u, %bb.g ], [ %1, %bb.f ], [ %1, %bb.c ], [ %1, %bb.e ]
  %.not3243 = phi i1 [ true, %bb.b ], [ false, %bb.g ], [ true, %bb.f ], [ true, %bb.c ], [ true, %bb.e ] ; 2 uses
  %.02842 = phi i32 [ 0, %bb.b ], [ 1, %bb.g ], [ 0, %bb.f ], [ 0, %bb.c ], [ 0, %bb.e ] ; 6 uses
  %.02941 = phi i64 [ 8, %bb.b ], [ %indvars.iv.i.i, %bb.g ], [ 8, %bb.f ], [ 8, %bb.c ], [ 8, %bb.e ] ; 3 uses
  %i.y = call i32 %2(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %3, i32 noundef %.02842) #29
  %i.z = load i64, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %i.aa = and i64 %i.z, 32768
  %.not.i.i35 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i35, label %ensure_ar_table.exit, label %bb.h

bb.h:                                             ; preds = %.thread
  %i.ab = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ab, ptr noundef nonnull @.str.96) #31
  unreachable

ensure_ar_table.exit:                             ; preds = %.thread
  switch i32 %i.y, label %ar_add_direct_with_hash.exit [
    i32 0, label %bb.i
    i32 2, label %bb.p
  ]

bb.i:                                             ; preds = %ensure_ar_table.exit
  br i1 %.not3243, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !11
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !11
  %i.ae = trunc i64 %i.z to i32                   ; 2 uses
  %i.af = and i32 %i.ae, 524288
  %.not.i36 = icmp eq i32 %i.af, 0
  br i1 %.not.i36, label %bb.k, label %ar_add_direct_with_hash.exit

bb.k:                                             ; preds = %bb.j
  %i.ag = lshr i32 %i.ae, 20
  %i.ah = and i32 %i.ag, 15                       ; 2 uses
  %i.ai = icmp samesign ugt i32 %i.ah, 7
  br i1 %i.ai, label %bb.l, label %ar_add_direct_with_hash.exit.thread, !prof !66

bb.l:                                             ; preds = %bb.k
  %i.aj = call fastcc i32 @ar_compact_table(i64 noundef %0)
  br label %ar_add_direct_with_hash.exit.thread

ar_add_direct_with_hash.exit.thread:              ; preds = %bb.k, %bb.l
  %.0.i = phi i32 [ %i.aj, %bb.l ], [ %i.ah, %bb.k ] ; 2 uses
  %i.ak = add i64 %0, 24
  %i.al = inttoptr i64 %i.ak to ptr               ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %i.an = zext nneg i32 %.0.i to i64              ; 2 uses
  %i.ao = getelementptr [16 x i8], ptr %i.am, i64 %i.an ; 2 uses
  store i64 %i.ac, ptr %i.ao, align 8, !tbaa !45
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  store i64 %i.ad, ptr %i.ap, align 8, !tbaa !47
  %i.aq = trunc i64 %i.c to i8
  %i.ar = getelementptr i8, ptr %i.al, i64 %i.an
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !24
  %i.as = load i64, ptr %i.d, align 8, !tbaa !13  ; 2 uses
  %i.at = and i64 %i.as, -16711681
  %i.au = shl nuw nsw i32 %.0.i, 20
  %i.av = add nuw nsw i32 %i.au, 1048576
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = or i64 %i.at, %i.aw
  %i.ay = and i64 %i.as, 983040
  %narrow.i.i = add nuw nsw i64 %i.ay, 65536
  %i.az = or i64 %i.ax, %narrow.i.i
  store i64 %i.az, ptr %i.d, align 8, !tbaa !13
  br label %ar_add_direct_with_hash.exit

bb.m:                                             ; preds = %bb.i
  %i.ba = add i64 %0, 24
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = getelementptr i8, ptr %i.bb, i64 8
  %i.bd = getelementptr [16 x i8], ptr %i.bc, i64 %.02941 ; 2 uses
  %i.be = load i64, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %.not34 = icmp eq i64 %i.x, %i.be
  br i1 %.not34, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 %i.be, ptr %i.bd, align 8, !tbaa !45
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bf = load i64, ptr %i.b, align 8, !tbaa !11
  %i.bg = getelementptr i8, ptr %i.bd, i64 8
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !47
  br label %ar_add_direct_with_hash.exit

bb.p:                                             ; preds = %ensure_ar_table.exit
  br i1 %.not3243, label %ar_add_direct_with_hash.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = add i64 %0, 24
  %i.bi = inttoptr i64 %i.bh to ptr               ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 8
  %i.bk = getelementptr [16 x i8], ptr %i.bj, i64 %.02941
  store i64 36, ptr %i.bk, align 8, !tbaa !45
  %i.bl = getelementptr i8, ptr %i.bi, i64 %.02941
  store i8 -1, ptr %i.bl, align 1, !tbaa !24
  %i.bm = load i64, ptr %i.d, align 8, !tbaa !13  ; 3 uses
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = lshr i32 %i.bn, 16
  %i.bp = and i32 %i.bo, 15
  %i.bq = add nsw i32 %i.bp, -1                   ; 2 uses
  %.not.i37 = icmp eq i32 %i.bq, 0
  br i1 %.not.i37, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = sext i32 %i.bq to i64
  %i.bs = and i64 %i.bm, -983041
  %i.bt = shl nsw i64 %i.br, 16
  %i.bu = or i64 %i.bt, %i.bs
  br label %RHASH_AR_TABLE_SIZE_DEC.exit

bb.s:                                             ; preds = %bb.q
  %i.bv = and i64 %i.bm, -16711681
  br label %RHASH_AR_TABLE_SIZE_DEC.exit

RHASH_AR_TABLE_SIZE_DEC.exit:                     ; preds = %bb.r, %bb.s
  %storemerge.i = phi i64 [ %i.bu, %bb.r ], [ %i.bv, %bb.s ]
  store i64 %storemerge.i, ptr %i.d, align 8, !tbaa !13
  br label %ar_add_direct_with_hash.exit

ar_add_direct_with_hash.exit:                     ; preds = %ensure_ar_table.exit, %bb.o, %RHASH_AR_TABLE_SIZE_DEC.exit, %bb.p, %ar_add_direct_with_hash.exit.thread, %bb.j, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ -1, %bb.j ], [ %.02842, %ar_add_direct_with_hash.exit.thread ], [ %.02842, %bb.p ], [ %.02842, %RHASH_AR_TABLE_SIZE_DEC.exit ], [ %.02842, %bb.o ], [ %.02842, %ensure_ar_table.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  ret i32 %.0
}

declare i32 @rb_st_update(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_to_hash_type(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_convert_type_with_id(i64 noundef %0, i32 noundef 8, ptr noundef nonnull @.str.2, i64 noundef 3313) #29
  ret i64 %i.a
}

declare i64 @rb_convert_type_with_id(i64 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_check_hash_type(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_check_convert_type_with_id(i64 noundef %0, i32 noundef 8, ptr noundef nonnull @.str.2, i64 noundef 3313) #29
  ret i64 %i.a
}

declare i64 @rb_check_convert_type_with_id(i64 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i64 1, -7) i64 @rb_hash_rehash(i64 noundef returned %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = inttoptr i64 %0 to ptr                   ; 9 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13   ; 5 uses
  %i.e = and i64 %i.d, 4261412864
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.f, ptr noundef nonnull @.str.3) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = icmp ne i64 %0, 0
  %i.h = and i64 %0, 7
  %i.i = and i64 %i.d, 2048
  %i.j = or disjoint i64 %i.i, %i.h
  %i.k = icmp eq i64 %i.j, 0
  %or.cond = and i1 %i.g, %i.k
  br i1 %or.cond, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !67

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %bb.c
  tail call void @rb_error_frozen_object(i64 noundef %0) #31
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.c
  %i.l = and i64 %i.d, 31
  %i.m = icmp ne i64 %i.l, 5
  %i.n = and i64 %i.d, 49152
  %.not8.i.i = icmp eq i64 %i.n, 0
  %or.cond.i.i = or i1 %i.m, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_hash_modify_check.exit, label %bb.d, !prof !68

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %0) #29
  %.pre = load i64, ptr %i.c, align 8, !tbaa !13
  br label %rb_hash_modify_check.exit

rb_hash_modify_check.exit:                        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.d
  %i.o = phi i64 [ %i.d, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ], [ %.pre, %bb.d ]
  %i.p = and i64 %i.o, 32768
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rb_hash_modify_check.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.q = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !26
  store volatile ptr %i.r, ptr %i.b, align 8, !tbaa !26
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.b, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.s = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 noundef 0, i64 noundef 8, i32 noundef 0, i64 noundef 160) #29 ; 3 uses
  %i.t = inttoptr i64 %i.s to ptr                 ; 3 uses
end_hunk_0
begin_hunk_1_@rb_hash_rehash:bb.a
  %i.av = load i64, ptr %i.au, align 8, !tbaa !51
  %i.aw = add i64 %i.ap, 24
  %i.ax = inttoptr i64 %i.aw to ptr               ; 3 uses
  %i.ay = tail call ptr @rb_st_init_existing_table_with_size(ptr noundef nonnull %i.ax, ptr noundef %i.at, i64 noundef %i.av) #29 ; 0 uses
  %i.az = load i64, ptr %i.aq, align 8, !tbaa !13
  %i.ba = or i64 %i.az, 32768
  store i64 %i.ba, ptr %i.aq, align 8, !tbaa !13
  tail call void @rb_hash_foreach(i64 noundef %0, ptr noundef @rb_hash_rehash_i, i64 noundef %i.ap)
  %i.bb = getelementptr i8, ptr %i.am, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !37
  tail call void @ruby_xfree(ptr noundef %i.bc) #29
  %i.bd = getelementptr i8, ptr %i.am, i64 48
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !39
  tail call void @ruby_xfree(ptr noundef %i.be) #29
  %i.bf = load i64, ptr %i.c, align 8, !tbaa !13
  %i.bg = or i64 %i.bf, 32768
  store i64 %i.bg, ptr %i.c, align 8, !tbaa !13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.am, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.ax, i64 56, i1 false), !tbaa.struct !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.ax, i8 noundef 0, i64 noundef 56, i1 noundef false) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret i64 %0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @rb_hash_rehash_i(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13
  %i.c = and i64 %i.b, 32768
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @ar_insert(i64 noundef %2, i64 noundef %0, i64 noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = add i64 %2, 24
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = tail call i32 @rb_st_insert(ptr noundef nonnull %i.e, i64 noundef %0, i64 noundef %1) #29 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden zeroext i1 @rb_hash_default_unredefined(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  %i.d = load i64, ptr @rb_cHash, align 8, !tbaa !11
  %i.e = icmp eq i64 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %bb.c, !prof !64

bb.b:                                             ; preds = %bb.a
  %i.f = load i16, ptr getelementptr inbounds nuw (i8, ptr @ruby_vm_redefined_flag, i64 64), align 16, !tbaa !71
  %i.g = and i16 %i.f, 16
  %i.h = icmp eq i16 %i.g, 0
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = tail call i32 @rb_method_basic_definition_p(i64 noundef %i.c, i64 noundef 3937) #29
  %i.j = icmp ne i32 %i.i, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.h, %bb.b ], [ %i.j, %bb.c ]
  ret i1 %.0
}

declare i32 @rb_method_basic_definition_p(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_hash_default_value(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 5 uses
  %i.b = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %i.e = load i64, ptr @rb_cHash, align 8, !tbaa !11
  %i.f = icmp eq i64 %i.d, %i.e
  br i1 %i.f, label %bb.b, label %rb_hash_default_unredefined.exit, !prof !64

bb.b:                                             ; preds = %bb.a
  %i.g = load i16, ptr getelementptr inbounds nuw (i8, ptr @ruby_vm_redefined_flag, i64 64), align 16, !tbaa !71
  %i.h = and i16 %i.g, 16
  %i.i = icmp eq i16 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.f, !prof !64

rb_hash_default_unredefined.exit:                 ; preds = %bb.a
  %i.j = tail call i32 @rb_method_basic_definition_p(i64 noundef %i.d, i64 noundef 3937) #29
  %.not11 = icmp eq i32 %i.j, 0
  br i1 %.not11, label %bb.f, label %bb.c, !prof !66

bb.c:                                             ; preds = %bb.b, %rb_hash_default_unredefined.exit
  %i.k = getelementptr i8, ptr %i.b, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !59   ; 2 uses
  %i.m = load i64, ptr %i.b, align 8, !tbaa !13
  %i.n = and i64 %i.m, 16384
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.g, label %bb.d, !prof !64

bb.d:                                             ; preds = %bb.c
  %i.o = icmp eq i64 %1, 36
  br i1 %i.o, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %0, ptr %i.a, align 16, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.p, align 8, !tbaa !11
  %i.q = call i64 @rb_proc_call_with_block(i64 noundef %i.l, i32 noundef 2, ptr noundef nonnull %i.a, i64 noundef 4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.g

bb.f:                                             ; preds = %bb.b, %rb_hash_default_unredefined.exit
  %i.r = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %0, i64 noundef 3937, i32 noundef 1, i64 noundef %1) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.c, %bb.d, %bb.f
  %.1 = phi i64 [ %i.r, %bb.f ], [ %i.q, %bb.e ], [ %i.l, %bb.c ], [ 4, %bb.d ]
  ret i64 %.1
}

declare i64 @rb_funcall(i64 noundef, i64 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define hidden i32 @rb_hash_stlike_lookup(i64 noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = and i64 %i.b, 32768
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, 983040
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %hash_stlike_lookup.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call fastcc range(i64 -4611686018427387904, 4611686018427387904) i64 @any_hash(i64 noundef %1, ptr noundef nonnull @obj_any_hash)
  %i.g = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.h = and i64 %i.g, 32768
  %.not.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.d, !prof !64

bb.d:                                             ; preds = %bb.c
  %i.i = add i64 %0, 24
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = tail call i32 @rb_st_lookup(ptr noundef nonnull %i.j, i64 noundef %1, ptr noundef %2) #29
  br label %hash_stlike_lookup.exit

bb.e:                                             ; preds = %bb.c
  %i.l = trunc i64 %i.f to i8
  %i.m = trunc i64 %i.g to i32
  %i.n = lshr i32 %i.m, 20
  %i.o = and i32 %i.n, 15                         ; 2 uses
  %i.p = add i64 %0, 24
  %i.q = inttoptr i64 %i.p to ptr                 ; 3 uses
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %.not19.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not19.i.i.i.i, label %hash_stlike_lookup.exit, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.e
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.o to i64
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.lr.ph.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.g ] ; 5 uses
  %i.s = getelementptr i8, ptr %i.q, i64 %indvars.iv.i.i.i.i
  %i.t = load i8, ptr %i.s, align 1, !tbaa !24
  %i.u = icmp eq i8 %i.t, %i.l
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.v = getelementptr [16 x i8], ptr %i.r, i64 %indvars.iv.i.i.i.i
  %i.w = load i64, ptr %i.v, align 8, !tbaa !45
  %i.x = tail call fastcc i32 @ar_equal(i64 noundef %1, i64 noundef %i.w)
  %.not.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %ar_find_entry.exit.i.i

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %hash_stlike_lookup.exit, label %.lr.ph.i.i.i.i, !llvm.loop !57

ar_find_entry.exit.i.i:                           ; preds = %bb.f
  %i.y = icmp eq i64 %indvars.iv.i.i.i.i, 8
  br i1 %i.y, label %hash_stlike_lookup.exit, label %bb.h

bb.h:                                             ; preds = %ar_find_entry.exit.i.i
  %.not.i7.i = icmp eq ptr %2, null
  br i1 %.not.i7.i, label %hash_stlike_lookup.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr [16 x i8], ptr %i.q, i64 %indvars.iv.i.i.i.i
  %i.aa = getelementptr i8, ptr %i.z, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !47
  store i64 %i.ab, ptr %2, align 8, !tbaa !11
  br label %hash_stlike_lookup.exit

bb.j:                                             ; preds = %bb.a
  %i.ac = add i64 %0, 24
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = tail call i32 @rb_st_lookup(ptr noundef nonnull %i.ad, i64 noundef %1, ptr noundef %2) #29
  br label %hash_stlike_lookup.exit

hash_stlike_lookup.exit:                          ; preds = %bb.g, %bb.b, %bb.d, %bb.e, %ar_find_entry.exit.i.i, %bb.h, %bb.i, %bb.j
  %.0.i = phi i32 [ %i.ae, %bb.j ], [ 0, %bb.b ], [ %i.k, %bb.d ], [ 0, %ar_find_entry.exit.i.i ], [ 1, %bb.i ], [ 1, %bb.h ], [ 0, %bb.e ], [ 0, %bb.g ]
  ret i32 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_hash_aref(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.c = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.e = and i64 %i.d, 32768
  %.not.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i, label %bb.b, label %hash_stlike_lookup.exit

bb.b:                                             ; preds = %bb.a
  %i.f = and i64 %i.d, 983040
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %hash_stlike_lookup.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call fastcc range(i64 -4611686018427387904, 4611686018427387904) i64 @any_hash(i64 noundef %1, ptr noundef nonnull @obj_any_hash)
  %i.i = load i64, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.j = and i64 %i.i, 32768
  %.not.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i, label %bb.d, label %hash_stlike_lookup.exit, !prof !64

bb.d:                                             ; preds = %bb.c
  %i.k = trunc i64 %i.h to i8
  %i.l = trunc i64 %i.i to i32
  %i.m = lshr i32 %i.l, 20
  %i.n = and i32 %i.m, 15                         ; 2 uses
  %i.o = add i64 %0, 24
  %i.p = inttoptr i64 %i.o to ptr                 ; 3 uses
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %.not19.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not19.i.i.i.i, label %hash_stlike_lookup.exit.thread, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.d
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.n to i64
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %.lr.ph.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.f ] ; 5 uses
  %i.r = getelementptr i8, ptr %i.p, i64 %indvars.iv.i.i.i.i
  %i.s = load i8, ptr %i.r, align 1, !tbaa !24
  %i.t = icmp eq i8 %i.s, %i.k
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.u = getelementptr [16 x i8], ptr %i.q, i64 %indvars.iv.i.i.i.i
  %i.v = load i64, ptr %i.u, align 8, !tbaa !45
  %i.w = tail call fastcc i32 @ar_equal(i64 noundef %1, i64 noundef %i.v)
  %.not.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %ar_find_entry.exit.i.i

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %hash_stlike_lookup.exit.thread, label %.lr.ph.i.i.i.i, !llvm.loop !57

ar_find_entry.exit.i.i:                           ; preds = %bb.e
  %i.x = icmp eq i64 %indvars.iv.i.i.i.i, 8
  br i1 %i.x, label %hash_stlike_lookup.exit.thread, label %hash_stlike_lookup.exit.thread7

hash_stlike_lookup.exit.thread7:                  ; preds = %ar_find_entry.exit.i.i
  %i.y = getelementptr [16 x i8], ptr %i.p, i64 %indvars.iv.i.i.i.i
  %i.z = getelementptr i8, ptr %i.y, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !47
  br label %rb_hash_default_value.exit

hash_stlike_lookup.exit:                          ; preds = %bb.a, %bb.c
  %i.ab = add i64 %0, 24
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = call i32 @rb_st_lookup(ptr noundef nonnull %i.ac, i64 noundef %1, ptr noundef nonnull %i.b) #29
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %hash_stlike_lookup.exit.thread, label %hash_stlike_lookup.exit._crit_edge

hash_stlike_lookup.exit._crit_edge:               ; preds = %hash_stlike_lookup.exit
  %.pre = load i64, ptr %i.b, align 8, !tbaa !11
  br label %rb_hash_default_value.exit

hash_stlike_lookup.exit.thread:                   ; preds = %bb.f, %bb.d, %ar_find_entry.exit.i.i, %bb.b, %hash_stlike_lookup.exit
  %i.ae = getelementptr i8, ptr %i.c, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !15 ; 2 uses
  %i.ag = load i64, ptr @rb_cHash, align 8, !tbaa !11
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.g, label %rb_hash_default_unredefined.exit.i, !prof !64

bb.g:                                             ; preds = %hash_stlike_lookup.exit.thread
  %i.ai = load i16, ptr getelementptr inbounds nuw (i8, ptr @ruby_vm_redefined_flag, i64 64), align 16, !tbaa !71
  %i.aj = and i16 %i.ai, 16
  %i.ak = icmp eq i16 %i.aj, 0
  br i1 %i.ak, label %bb.h, label %bb.k, !prof !64

rb_hash_default_unredefined.exit.i:               ; preds = %hash_stlike_lookup.exit.thread
  %i.al = call i32 @rb_method_basic_definition_p(i64 noundef %i.af, i64 noundef 3937) #29
  %.not11.i = icmp eq i32 %i.al, 0
  br i1 %.not11.i, label %bb.k, label %bb.h, !prof !66

bb.h:                                             ; preds = %rb_hash_default_unredefined.exit.i, %bb.g
  %i.am = getelementptr i8, ptr %i.c, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !59 ; 2 uses
  %i.ao = load i64, ptr %i.c, align 8, !tbaa !13
  %i.ap = and i64 %i.ao, 16384
  %.not.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i, label %rb_hash_default_value.exit, label %bb.i, !prof !64

bb.i:                                             ; preds = %bb.h
  %i.aq = icmp eq i64 %1, 36
  br i1 %i.aq, label %rb_hash_default_value.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %0, ptr %i.a, align 16, !tbaa !11
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.ar, align 8, !tbaa !11
  %i.as = call i64 @rb_proc_call_with_block(i64 noundef %i.an, i32 noundef 2, ptr noundef nonnull %i.a, i64 noundef 4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %rb_hash_default_value.exit

bb.k:                                             ; preds = %rb_hash_default_unredefined.exit.i, %bb.g
  %i.at = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %0, i64 noundef 3937, i32 noundef 1, i64 noundef %1) #29
  br label %rb_hash_default_value.exit

rb_hash_default_value.exit:                       ; preds = %hash_stlike_lookup.exit.thread7, %hash_stlike_lookup.exit._crit_edge, %bb.k, %bb.j, %bb.i, %bb.h
  %.0 = phi i64 [ 4, %bb.i ], [ %i.at, %bb.k ], [ %i.as, %bb.j ], [ %i.an, %bb.h ], [ %.pre, %hash_stlike_lookup.exit._crit_edge ], [ %i.aa, %hash_stlike_lookup.exit.thread7 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_hash_lookup2(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.b = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %i.d = and i64 %i.c, 32768
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %bb.b, label %hash_stlike_lookup.exit

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, 983040
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %hash_stlike_lookup.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call fastcc range(i64 -4611686018427387904, 4611686018427387904) i64 @any_hash(i64 noundef %1, ptr noundef nonnull @obj_any_hash)
  %i.h = load i64, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %i.i = and i64 %i.h, 32768
  %.not.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i, label %bb.d, label %hash_stlike_lookup.exit, !prof !64

bb.d:                                             ; preds = %bb.c
  %i.j = trunc i64 %i.g to i8
  %i.k = trunc i64 %i.h to i32
  %i.l = lshr i32 %i.k, 20
  %i.m = and i32 %i.l, 15                         ; 2 uses
  %i.n = add i64 %0, 24
  %i.o = inttoptr i64 %i.n to ptr                 ; 3 uses
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %.not19.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not19.i.i.i.i, label %hash_stlike_lookup.exit.thread, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.d
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.m to i64
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %.lr.ph.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.f ] ; 5 uses
  %i.q = getelementptr i8, ptr %i.o, i64 %indvars.iv.i.i.i.i
  %i.r = load i8, ptr %i.q, align 1, !tbaa !24
  %i.s = icmp eq i8 %i.r, %i.j
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.t = getelementptr [16 x i8], ptr %i.p, i64 %indvars.iv.i.i.i.i
  %i.u = load i64, ptr %i.t, align 8, !tbaa !45
  %i.v = tail call fastcc i32 @ar_equal(i64 noundef %1, i64 noundef %i.u)
  %.not.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %ar_find_entry.exit.i.i

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %hash_stlike_lookup.exit.thread, label %.lr.ph.i.i.i.i, !llvm.loop !57

ar_find_entry.exit.i.i:                           ; preds = %bb.e
  %i.w = icmp eq i64 %indvars.iv.i.i.i.i, 8
  br i1 %i.w, label %hash_stlike_lookup.exit.thread, label %hash_stlike_lookup.exit.thread7

hash_stlike_lookup.exit.thread7:                  ; preds = %ar_find_entry.exit.i.i
  %i.x = getelementptr [16 x i8], ptr %i.o, i64 %indvars.iv.i.i.i.i
  %i.y = getelementptr i8, ptr %i.x, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !47
  br label %bb.g

hash_stlike_lookup.exit:                          ; preds = %bb.a, %bb.c
  %i.aa = add i64 %0, 24
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = call i32 @rb_st_lookup(ptr noundef nonnull %i.ab, i64 noundef %1, ptr noundef nonnull %i.a) #29
  %.0.i.fr = freeze i32 %i.ac
  %.not = icmp eq i32 %.0.i.fr, 0
  %i.ad = load i64, ptr %i.a, align 8
  br i1 %.not, label %hash_stlike_lookup.exit.thread, label %bb.g

hash_stlike_lookup.exit.thread:                   ; preds = %bb.f, %bb.d, %ar_find_entry.exit.i.i, %bb.b, %hash_stlike_lookup.exit
  br label %bb.g

bb.g:                                             ; preds = %hash_stlike_lookup.exit.thread7, %hash_stlike_lookup.exit, %hash_stlike_lookup.exit.thread
  %i.ae = phi i64 [ %2, %hash_stlike_lookup.exit.thread ], [ %i.ad, %hash_stlike_lookup.exit ], [ %i.z, %hash_stlike_lookup.exit.thread7 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i64 %i.ae
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_hash_lookup(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_hash_lookup2(i64 noundef %0, i64 noundef %1, i64 noundef 4)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_hash_fetch(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !11
  %i.b = call i64 @rb_hash_fetch_m(i32 noundef 1, ptr noundef nonnull %i.a, i64 noundef %0)
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_hash_fetch_m(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.b = add i32 %0, -3
  %or.cond24 = icmp ult i32 %i.b, -2
  br i1 %or.cond24, label %bb.b, label %rb_check_arity.exit

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 2) #31
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !11     ; 7 uses
  %i.d = tail call i32 @rb_block_given_p() #29
  %i.e = icmp ne i32 %i.d, 0                      ; 2 uses
  %i.f = icmp eq i32 %0, 2
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %rb_check_arity.exit
  tail call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.100) #32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %rb_check_arity.exit
  %i.g = inttoptr i64 %2 to ptr                   ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13   ; 2 uses
  %i.i = and i64 %i.h, 32768
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %bb.e, label %hash_stlike_lookup.exit

bb.e:                                             ; preds = %bb.d
  %i.j = and i64 %i.h, 983040
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %hash_stlike_lookup.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call fastcc range(i64 -4611686018427387904, 4611686018427387904) i64 @any_hash(i64 noundef %i.c, ptr noundef nonnull @obj_any_hash)
  %i.m = load i64, ptr %i.g, align 8, !tbaa !13   ; 2 uses
  %i.n = and i64 %i.m, 32768
  %.not.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i, label %bb.g, label %hash_stlike_lookup.exit, !prof !64

bb.g:                                             ; preds = %bb.f
  %i.o = trunc i64 %i.l to i8
  %i.p = trunc i64 %i.m to i32
  %i.q = lshr i32 %i.p, 20
  %i.r = and i32 %i.q, 15                         ; 2 uses
  %i.s = add i64 %2, 24
  %i.t = inttoptr i64 %i.s to ptr                 ; 3 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %.not19.i.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not19.i.i.i.i, label %hash_stlike_lookup.exit.thread, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.g
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.r to i64
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %.lr.ph.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.i ] ; 5 uses
  %i.v = getelementptr i8, ptr %i.t, i64 %indvars.iv.i.i.i.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !24
  %i.x = icmp eq i8 %i.w, %i.o
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.y = getelementptr [16 x i8], ptr %i.u, i64 %indvars.iv.i.i.i.i
  %i.z = load i64, ptr %i.y, align 8, !tbaa !45
  %i.aa = tail call fastcc i32 @ar_equal(i64 noundef %i.c, i64 noundef %i.z)
  %.not.i.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %ar_find_entry.exit.i.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %hash_stlike_lookup.exit.thread, label %.lr.ph.i.i.i.i, !llvm.loop !57

ar_find_entry.exit.i.i:                           ; preds = %bb.h
  %i.ab = icmp eq i64 %indvars.iv.i.i.i.i, 8
  br i1 %i.ab, label %hash_stlike_lookup.exit.thread, label %hash_stlike_lookup.exit.thread21

hash_stlike_lookup.exit.thread21:                 ; preds = %ar_find_entry.exit.i.i
  %i.ac = getelementptr [16 x i8], ptr %i.t, i64 %indvars.iv.i.i.i.i
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !47
  br label %bb.p

hash_stlike_lookup.exit:                          ; preds = %bb.d, %bb.f
  %i.af = add i64 %2, 24
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = call i32 @rb_st_lookup(ptr noundef nonnull %i.ag, i64 noundef %i.c, ptr noundef nonnull %i.a) #29
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %hash_stlike_lookup.exit.thread, label %hash_stlike_lookup.exit._crit_edge

hash_stlike_lookup.exit._crit_edge:               ; preds = %hash_stlike_lookup.exit
  %.pre = load i64, ptr %i.a, align 8, !tbaa !11
  br label %bb.p

hash_stlike_lookup.exit.thread:                   ; preds = %bb.i, %bb.g, %ar_find_entry.exit.i.i, %bb.e, %hash_stlike_lookup.exit
  br i1 %i.e, label %bb.j, label %bb.k

bb.j:                                             ; preds = %hash_stlike_lookup.exit.thread
  %i.ai = call i64 @rb_yield(i64 noundef %i.c) #29
  br label %bb.p

bb.k:                                             ; preds = %hash_stlike_lookup.exit.thread
  %i.aj = icmp eq i32 %0, 1
  br i1 %i.aj, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ak = call i64 @rb_protect(ptr noundef nonnull @rb_inspect, i64 noundef %i.c, ptr noundef null) #29 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 4
  br i1 %i.al, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.am = call i64 @rb_any_to_s(i64 noundef %i.c) #29
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0 = phi i64 [ %i.am, %bb.m ], [ %i.ak, %bb.l ]
  %i.an = call i64 @rb_str_ellipsize(i64 noundef %.0, i64 noundef 65) #29
  %i.ao = call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.101, i64 noundef %i.an) #29
  call fastcc void @rb_key_err_raise(i64 noundef %i.ao, i64 noundef %2, i64 noundef %i.c) #33
  unreachable

bb.o:                                             ; preds = %bb.k
  %i.ap = getelementptr i8, ptr %1, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !11
  br label %bb.p

bb.p:                                             ; preds = %hash_stlike_lookup.exit.thread21, %hash_stlike_lookup.exit._crit_edge, %bb.o, %bb.j
  %.018 = phi i64 [ %i.aq, %bb.o ], [ %i.ai, %bb.j ], [ %.pre, %hash_stlike_lookup.exit._crit_edge ], [ %i.ae, %hash_stlike_lookup.exit.thread21 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i64 %.018
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef i64 @rb_hash_set_default(i64 noundef %0, i64 noundef returned %1) #0 {
bb.a:
  %i.a = icmp ne i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not3.i.i.i = and i1 %i.a, %i.c
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !73

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13   ; 4 uses
  %i.f = and i64 %i.e, 2048
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !74

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #31
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.g = and i64 %i.e, 31
  %i.h = icmp ne i64 %i.g, 5
  %i.i = and i64 %i.e, 49152
  %.not8.i.i = icmp eq i64 %i.i, 0
  %or.cond.i.i = or i1 %i.h, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_hash_modify_check.exit, label %bb.b, !prof !68

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %0) #29
  %.pre = load i64, ptr %i.d, align 8, !tbaa !13
  br label %rb_hash_modify_check.exit

rb_hash_modify_check.exit:                        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.b
  %i.j = phi i64 [ %i.e, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ], [ %.pre, %bb.b ]
  %i.k = and i64 %i.j, -16385
  store i64 %i.k, ptr %i.d, align 8, !tbaa !13
  %i.l = getelementptr i8, ptr %i.d, i64 16
  store i64 %1, ptr %i.l, align 8, !tbaa !11
  %i.m = icmp eq i64 %1, 0
  %i.n = and i64 %1, 7
  %i.o = icmp ne i64 %i.n, 0
  %i.p = or i1 %i.m, %i.o
  br i1 %i.p, label %rb_hash_set_ifnone.exit, label %bb.c

bb.c:                                             ; preds = %rb_hash_modify_check.exit
  tail call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %1) #29
  br label %rb_hash_set_ifnone.exit

rb_hash_set_ifnone.exit:                          ; preds = %rb_hash_modify_check.exit, %bb.c
  ret i64 %1
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_hash_set_default_proc(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = icmp ne i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not3.i.i.i = and i1 %i.a, %i.c
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !73

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr                   ; 7 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13   ; 3 uses
  %i.f = and i64 %i.e, 2048
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !74

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #31
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.g = and i64 %i.e, 31
  %i.h = icmp ne i64 %i.g, 5
  %i.i = and i64 %i.e, 49152
  %.not8.i.i = icmp eq i64 %i.i, 0
  %or.cond.i.i = or i1 %i.h, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_hash_modify_check.exit, label %bb.b, !prof !68

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %0) #29
  br label %rb_hash_modify_check.exit

rb_hash_modify_check.exit:                        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.b
  %i.j = icmp eq i64 %1, 4
  br i1 %i.j, label %rb_hash_set_ifnone.exit, label %bb.c

rb_hash_set_ifnone.exit:                          ; preds = %rb_hash_modify_check.exit
  %i.k = load i64, ptr %i.d, align 8, !tbaa !13
  %i.l = and i64 %i.k, -16385
  store i64 %i.l, ptr %i.d, align 8, !tbaa !13
  %i.m = getelementptr i8, ptr %i.d, i64 16
  store i64 4, ptr %i.m, align 8, !tbaa !11
  br label %set_proc_default.exit

bb.c:                                             ; preds = %rb_hash_modify_check.exit
  %i.n = tail call i64 @rb_check_convert_type_with_id(i64 noundef %1, i32 noundef 12, ptr noundef nonnull @.str.4, i64 noundef 3329) #29 ; 10 uses
  %i.o = icmp eq i64 %i.n, 4
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = tail call i64 @rb_obj_is_proc(i64 noundef %i.n) #29
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  %i.r = tail call ptr @rb_obj_classname(i64 noundef %1) #29
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.q, ptr noundef nonnull @.str.5, ptr noundef %i.r) #31
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.s = tail call i64 @rb_proc_lambda_p(i64 noundef %i.n) #29
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = tail call i32 @rb_proc_arity(i64 noundef %i.n) #29 ; 3 uses
  switch i32 %i.t, label %bb.h [
    i32 -1, label %bb.i
    i32 -2, label %bb.i
    i32 -3, label %bb.i
    i32 2, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %.lobit.i = ashr i32 %i.t, 31
  %spec.select.i = xor i32 %.lobit.i, %i.t
  %i.u = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.u, ptr noundef nonnull @.str.102, i32 noundef %spec.select.i) #31
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.f
  %i.v = load i64, ptr %i.d, align 8, !tbaa !13
  %i.w = or i64 %i.v, 16384
  store i64 %i.w, ptr %i.d, align 8, !tbaa !13
  %i.x = getelementptr i8, ptr %i.d, i64 16
  store i64 %i.n, ptr %i.x, align 8, !tbaa !11
  %i.y = icmp eq i64 %i.n, 0
  %i.z = and i64 %i.n, 7
  %i.aa = icmp ne i64 %i.z, 0
  %i.ab = or i1 %i.y, %i.aa
  br i1 %i.ab, label %set_proc_default.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %i.n) #29
  br label %set_proc_default.exit

set_proc_default.exit:                            ; preds = %bb.j, %bb.i, %rb_hash_set_ifnone.exit
  %.0 = phi i64 [ 4, %rb_hash_set_ifnone.exit ], [ %i.n, %bb.i ], [ %i.n, %bb.j ]
  ret i64 %.0
}

declare i64 @rb_obj_is_proc(i64 noundef) local_unnamed_addr #1

declare ptr @rb_obj_classname(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define hidden i32 @rb_hash_stlike_delete(i64 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13
  %i.c = and i64 %i.b, 32768
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !11
  %i.e = tail call fastcc range(i64 -4611686018427387904, 4611686018427387904) i64 @any_hash(i64 noundef %i.d, ptr noundef nonnull @obj_any_hash)
  %i.f = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.g = and i64 %i.f, 32768
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c, !prof !64

bb.c:                                             ; preds = %bb.b
  %i.h = add i64 %0, 24
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = tail call i32 @rb_st_delete(ptr noundef nonnull %i.i, ptr noundef nonnull %1, ptr noundef %2) #29
  br label %ar_delete.exit

bb.d:                                             ; preds = %bb.b
  %i.k = load i64, ptr %1, align 8, !tbaa !11
  %i.l = trunc i64 %i.e to i8
  %i.m = trunc i64 %i.f to i32
  %i.n = lshr i32 %i.m, 20
  %i.o = and i32 %i.n, 15                         ; 2 uses
  %i.p = add i64 %0, 24
  %i.q = inttoptr i64 %i.p to ptr                 ; 4 uses
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %.not19.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not19.i.i.i, label %ar_find_entry.exit.thread.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d
  %wide.trip.count.i.i.i = zext nneg i32 %i.o to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.f ] ; 6 uses
  %i.s = getelementptr i8, ptr %i.q, i64 %indvars.iv.i.i.i
  %i.t = load i8, ptr %i.s, align 1, !tbaa !24
  %i.u = icmp eq i8 %i.t, %i.l
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.v = getelementptr [16 x i8], ptr %i.r, i64 %indvars.iv.i.i.i ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !45
  %i.x = tail call fastcc i32 @ar_equal(i64 noundef %i.k, i64 noundef %i.w)
  %.not.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i, label %bb.f, label %ar_find_entry.exit.i

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %ar_find_entry.exit.thread.i, label %.lr.ph.i.i.i, !llvm.loop !57

ar_find_entry.exit.i:                             ; preds = %bb.e
  %3 = getelementptr i8, ptr %i.q, i64 %indvars.iv.i.i.i
  %i.y = icmp eq i64 %indvars.iv.i.i.i, 8
  br i1 %i.y, label %ar_find_entry.exit.thread.i, label %bb.h

ar_find_entry.exit.thread.i:                      ; preds = %bb.f, %ar_find_entry.exit.i, %bb.d
  %.not21.i = icmp eq ptr %2, null
  br i1 %.not21.i, label %ar_delete.exit, label %bb.g

bb.g:                                             ; preds = %ar_find_entry.exit.thread.i
  store i64 0, ptr %2, align 8, !tbaa !11
  br label %ar_delete.exit

bb.h:                                             ; preds = %ar_find_entry.exit.i
  %.not.i7 = icmp eq ptr %2, null
  br i1 %.not.i7, label %._crit_edge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr [16 x i8], ptr %i.q, i64 %indvars.iv.i.i.i
  %i.aa = getelementptr i8, ptr %i.z, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !47
  store i64 %i.ab, ptr %2, align 8, !tbaa !11
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.i, %bb.h
  store i64 36, ptr %i.v, align 8, !tbaa !45
  store i8 -1, ptr %3, align 1, !tbaa !24
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !13  ; 3 uses
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = lshr i32 %i.ad, 16
  %i.af = and i32 %i.ae, 15
  %i.ag = add nsw i32 %i.af, -1                   ; 2 uses
  %.not.i22.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i22.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i
  %i.ah = sext i32 %i.ag to i64
  %i.ai = and i64 %i.ac, -983041
  %i.aj = shl nsw i64 %i.ah, 16
  %i.ak = or i64 %i.aj, %i.ai
  br label %RHASH_AR_TABLE_SIZE_DEC.exit.i

bb.k:                                             ; preds = %._crit_edge.i
  %i.al = and i64 %i.ac, -16711681
  br label %RHASH_AR_TABLE_SIZE_DEC.exit.i

RHASH_AR_TABLE_SIZE_DEC.exit.i:                   ; preds = %bb.k, %bb.j
  %storemerge.i.i = phi i64 [ %i.ak, %bb.j ], [ %i.al, %bb.k ]
  store i64 %storemerge.i.i, ptr %i.a, align 8, !tbaa !13
  br label %ar_delete.exit

bb.l:                                             ; preds = %bb.a
  %i.am = add i64 %0, 24
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = tail call i32 @rb_st_delete(ptr noundef nonnull %i.an, ptr noundef %1, ptr noundef %2) #29
  br label %ar_delete.exit

ar_delete.exit:                                   ; preds = %RHASH_AR_TABLE_SIZE_DEC.exit.i, %bb.g, %ar_find_entry.exit.thread.i, %bb.c, %bb.l
  %.0 = phi i32 [ %i.ao, %bb.l ], [ %i.j, %bb.c ], [ 1, %RHASH_AR_TABLE_SIZE_DEC.exit.i ], [ 0, %bb.g ], [ 0, %ar_find_entry.exit.thread.i ]
  ret i32 %.0
}

declare i32 @rb_st_delete(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_hash_delete_entry(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %1, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.c = call i32 @rb_hash_stlike_delete(i64 noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %.not = icmp eq i32 %i.c, 0
  %i.d = load i64, ptr %i.b, align 8
  %.0 = select i1 %.not, i64 36, i64 %i.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_hash_delete(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %1, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.c = call i32 @rb_hash_stlike_delete(i64 noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %.not.i = icmp eq i32 %i.c, 0
  %i.d = load i64, ptr %i.b, align 8
  %.0.i = select i1 %.not.i, i64 36, i64 %i.d     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.e = icmp eq i64 %.0.i, 36
  %. = select i1 %i.e, i64 4, i64 %.0.i
  ret i64 %.
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_hash_delete_if(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @rb_block_given_p() #29
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @rb_frame_this_func() #29
  %i.c = tail call i64 @rb_id2sym(i64 noundef %i.b) #29
  %i.d = tail call i64 @rb_enumeratorize_with_size(i64 noundef %0, i64 noundef %i.c, i32 noundef 0, ptr noundef null, ptr noundef nonnull @hash_enum_size) #29
  br label %compact_after_delete.exit

bb.c:                                             ; preds = %bb.a
  %i.e = icmp ne i64 %0, 0
  %i.f = and i64 %0, 7
  %i.g = icmp eq i64 %i.f, 0
  %.not3.i.i.i = and i1 %i.e, %i.g
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !73

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.c
  %i.h = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !13   ; 4 uses
  %i.j = and i64 %i.i, 2048
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !74

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %bb.c
  tail call void @rb_error_frozen_object(i64 noundef %0) #31
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.k = and i64 %i.i, 31
  %i.l = icmp ne i64 %i.k, 5
  %i.m = and i64 %i.i, 49152
  %.not8.i.i = icmp eq i64 %i.m, 0
  %or.cond.i.i = or i1 %i.l, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_hash_modify_check.exit, label %bb.d, !prof !68

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %0) #29
  %.pre = load i64, ptr %i.h, align 8, !tbaa !13
  br label %rb_hash_modify_check.exit

rb_hash_modify_check.exit:                        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.d
  %i.n = phi i64 [ %i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ], [ %.pre, %bb.d ] ; 2 uses
  %i.o = and i64 %i.n, 32768
  %.not.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rb_hash_modify_check.exit
  %i.p = lshr i64 %i.n, 16
  %i.q = and i64 %i.p, 15
  br label %RHASH_TABLE_EMPTY_P.exit

bb.f:                                             ; preds = %rb_hash_modify_check.exit
  %i.r = add i64 %0, 24
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !51
  br label %RHASH_TABLE_EMPTY_P.exit

RHASH_TABLE_EMPTY_P.exit:                         ; preds = %bb.e, %bb.f
  %.0.i.i = phi i64 [ %i.q, %bb.e ], [ %i.u, %bb.f ]
  %.not10 = icmp eq i64 %.0.i.i, 0
  br i1 %.not10, label %compact_after_delete.exit, label %bb.g

bb.g:                                             ; preds = %RHASH_TABLE_EMPTY_P.exit
  tail call void @rb_hash_foreach(i64 noundef %0, ptr noundef @delete_if_i, i64 noundef %0)
  %i.v = load i64, ptr %i.h, align 8, !tbaa !13
  %i.w = and i64 %i.v, 4261445632
  %or.cond.i = icmp eq i64 %i.w, 32768
  br i1 %or.cond.i, label %bb.h, label %compact_after_delete.exit

bb.h:                                             ; preds = %bb.g
  %i.x = add i64 %0, 24
  %i.y = inttoptr i64 %i.x to ptr
  tail call void @rb_st_compact_table(ptr noundef nonnull %i.y) #29
  br label %compact_after_delete.exit

compact_after_delete.exit:                        ; preds = %bb.h, %bb.g, %RHASH_TABLE_EMPTY_P.exit, %bb.b
  %.0 = phi i64 [ %i.d, %bb.b ], [ %0, %RHASH_TABLE_EMPTY_P.exit ], [ %0, %bb.g ], [ %0, %bb.h ]
  ret i64 %.0
}

declare i32 @rb_block_given_p() local_unnamed_addr #1

declare i64 @rb_enumeratorize_with_size(i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_id2sym(i64 noundef) local_unnamed_addr #1

declare i64 @rb_frame_this_func() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i64 1, 0) i64 @hash_enum_size(i64 noundef %0, i64 %1, i64 %2) #7 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = and i64 %i.b, 32768
  %.not.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 16
  %i.e = and i64 %i.d, 15
  br label %rb_hash_size.exit

bb.c:                                             ; preds = %bb.a
  %i.f = add i64 %0, 24
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !51
  br label %rb_hash_size.exit

rb_hash_size.exit:                                ; preds = %bb.b, %bb.c
  %.0.i.i = phi i64 [ %i.e, %bb.b ], [ %i.i, %bb.c ]
  %i.j = shl i64 %.0.i.i, 1
  %i.k = or disjoint i64 %i.j, 1
  ret i64 %i.k
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 3) i32 @delete_if_i(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call i64 (i32, ...) @rb_yield_values(i32 noundef 2, i64 noundef %0, i64 noundef %1) #29
  %i.b = and i64 %i.a, -5
  %.not = icmp eq i64 %i.b, 0
end_hunk_1
begin_hunk_2_@ar_compact_table:bb.a
  br label %ar_cleared_entry.exit.thread

bb.d:                                             ; preds = %ar_cleared_entry.exit39
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %i.af = icmp samesign ult i64 %indvars.iv.next59, %i.l
  br i1 %i.af, label %.lr.ph, label %.loopexit, !llvm.loop !154

ar_cleared_entry.exit.thread:                     ; preds = %.lr.ph53, %ar_cleared_entry.exit, %ar_cleared_entry.exit39.thread
  %.3 = phi i32 [ %i.ae, %ar_cleared_entry.exit39.thread ], [ %.03352, %ar_cleared_entry.exit ], [ %.03352, %.lr.ph53 ]
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next61, %i.l
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph53, !llvm.loop !155

.loopexit:                                        ; preds = %ar_cleared_entry.exit.thread, %bb.c, %bb.d, %bb.b
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !13
  %i.ah = and i64 %i.ag, -15728641
  %i.ai = shl nuw nsw i32 %i.g, 20
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = or disjoint i64 %i.ah, %i.aj
  store i64 %i.ak, ptr %i.a, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %.loopexit
  ret i32 %i.g
}

; Function Attrs: noreturn
declare void @rb_error_frozen_object(i64 noundef) local_unnamed_addr #6

declare void @rb_str_modify(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @ar_insert(i64 noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 6 uses
  %i.b = tail call fastcc range(i64 -4611686018427387904, 4611686018427387904) i64 @any_hash(i64 noundef %1, ptr noundef nonnull @obj_any_hash)
  %i.c = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.d = and i64 %i.c, 32768
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.j, !prof !64

bb.b:                                             ; preds = %bb.a
  %i.e = trunc i64 %i.b to i8                     ; 2 uses
  %i.f = trunc i64 %i.c to i32
  %i.g = lshr i32 %i.f, 20
  %i.h = and i32 %i.g, 15                         ; 2 uses
  %i.i = add i64 %0, 24
  %i.j = inttoptr i64 %i.i to ptr                 ; 7 uses
  %i.k = getelementptr i8, ptr %i.j, i64 8        ; 5 uses
  %.not19.i.i = icmp eq i32 %i.h, 0
  br i1 %.not19.i.i, label %ar_find_entry.exit.thread, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %wide.trip.count.i.i = zext nneg i32 %i.h to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.d ] ; 5 uses
  %i.l = getelementptr i8, ptr %i.j, i64 %indvars.iv.i.i
  %i.m = load i8, ptr %i.l, align 1, !tbaa !24
  %i.n = icmp eq i8 %i.m, %i.e
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.o = getelementptr [16 x i8], ptr %i.k, i64 %indvars.iv.i.i
  %i.p = load i64, ptr %i.o, align 8, !tbaa !45
  %i.q = tail call fastcc i32 @ar_equal(i64 noundef %1, i64 noundef %i.p)
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %bb.d, label %ar_find_entry.exit

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %ar_find_entry.exit.thread, label %.lr.ph.i.i, !llvm.loop !57

ar_find_entry.exit:                               ; preds = %bb.c
  %i.r = icmp eq i64 %indvars.iv.i.i, 8
  br i1 %i.r, label %ar_find_entry.exit.thread, label %bb.i

ar_find_entry.exit.thread:                        ; preds = %bb.d, %bb.b, %ar_find_entry.exit
  %i.s = load i64, ptr %i.a, align 8, !tbaa !13
  %i.t = trunc i64 %i.s to i32                    ; 2 uses
  %i.u = lshr i32 %i.t, 16
  %i.v = and i32 %i.u, 15                         ; 5 uses
  %i.w = icmp samesign ugt i32 %i.v, 7
  br i1 %i.w, label %bb.j, label %bb.e

bb.e:                                             ; preds = %ar_find_entry.exit.thread
  %i.x = lshr i32 %i.t, 20
  %i.y = and i32 %i.x, 15                         ; 4 uses
  %i.z = icmp eq i32 %i.v, %i.y
  br i1 %i.z, label %.ar_compact_table.exit_crit_edge, label %bb.f

.ar_compact_table.exit_crit_edge:                 ; preds = %bb.e
  %.pre = shl nuw nsw i32 %i.v, 20
  br label %ar_compact_table.exit

bb.f:                                             ; preds = %bb.e
  %.not54.i = icmp eq i32 %i.y, 0
  br i1 %.not54.i, label %.loopexit.i, label %.lr.ph53.preheader.i

.lr.ph53.preheader.i:                             ; preds = %bb.f
  %i.aa = zext nneg i32 %i.y to i64               ; 2 uses
  br label %.lr.ph53.i

.lr.ph53.i:                                       ; preds = %ar_cleared_entry.exit.thread.i, %.lr.ph53.preheader.i
  %indvars.iv60.i = phi i64 [ 0, %.lr.ph53.preheader.i ], [ %indvars.iv.next61.i, %ar_cleared_entry.exit.thread.i ] ; 4 uses
  %indvars.iv.i = phi i64 [ 1, %.lr.ph53.preheader.i ], [ %indvars.iv.next.i, %ar_cleared_entry.exit.thread.i ] ; 2 uses
  %.03352.i = phi i32 [ 0, %.lr.ph53.preheader.i ], [ %.3.i, %ar_cleared_entry.exit.thread.i ] ; 4 uses
  %i.ab = getelementptr i8, ptr %i.j, i64 %indvars.iv60.i ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !24
  %i.ad = icmp eq i8 %i.ac, -1
  br i1 %i.ad, label %ar_cleared_entry.exit.i, label %ar_cleared_entry.exit.thread.i

ar_cleared_entry.exit.i:                          ; preds = %.lr.ph53.i
  %i.ae = getelementptr [16 x i8], ptr %i.k, i64 %indvars.iv60.i ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !45
  %.not.i24 = icmp eq i64 %i.af, 36
  br i1 %.not.i24, label %bb.g, label %ar_cleared_entry.exit.thread.i

bb.g:                                             ; preds = %ar_cleared_entry.exit.i
  %i.ag = trunc i64 %indvars.iv60.i to i32
  %i.ah = add i32 %i.ag, 1
  %spec.select.i = tail call i32 @llvm.umax.i32(i32 %.03352.i, i32 %i.ah)
  %i.ai = icmp ult i32 %spec.select.i, %i.y
  br i1 %i.ai, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %bb.g
  %i.aj = zext i32 %.03352.i to i64
  %umax.i = tail call i64 @llvm.umax.i64(i64 %indvars.iv.i, i64 %i.aj)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.preheader.i
  %indvars.iv58.i = phi i64 [ %umax.i, %.lr.ph.preheader.i ], [ %indvars.iv.next59.i, %bb.h ] ; 6 uses
  %i.ak = getelementptr i8, ptr %i.j, i64 %indvars.iv58.i
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !24
  %i.am = icmp eq i8 %i.al, -1
  br i1 %i.am, label %ar_cleared_entry.exit39.i, label %ar_cleared_entry.exit39.thread.i

ar_cleared_entry.exit39.i:                        ; preds = %.lr.ph.i
  %i.an = getelementptr [16 x i8], ptr %i.k, i64 %indvars.iv58.i
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !45
  %.not44.i = icmp eq i64 %i.ao, 36
  br i1 %.not44.i, label %bb.h, label %ar_cleared_entry.exit39.thread.i

ar_cleared_entry.exit39.thread.i:                 ; preds = %ar_cleared_entry.exit39.i, %.lr.ph.i
  %i.ap = getelementptr i8, ptr %i.j, i64 %indvars.iv58.i ; 2 uses
  %i.aq = trunc nuw i64 %indvars.iv58.i to i32
  %i.ar = getelementptr [16 x i8], ptr %i.k, i64 %indvars.iv58.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false), !tbaa.struct !153
  %i.as = load i8, ptr %i.ap, align 1, !tbaa !24
  store i8 %i.as, ptr %i.ab, align 1, !tbaa !24
  store i64 36, ptr %i.ar, align 8, !tbaa !45
  store i8 -1, ptr %i.ap, align 1, !tbaa !24
  %i.at = add nuw nsw i32 %i.aq, 1
  br label %ar_cleared_entry.exit.thread.i

bb.h:                                             ; preds = %ar_cleared_entry.exit39.i
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 1 ; 2 uses
  %i.au = icmp samesign ult i64 %indvars.iv.next59.i, %i.aa
  br i1 %i.au, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !154

ar_cleared_entry.exit.thread.i:                   ; preds = %ar_cleared_entry.exit39.thread.i, %ar_cleared_entry.exit.i, %.lr.ph53.i
  %.3.i = phi i32 [ %i.at, %ar_cleared_entry.exit39.thread.i ], [ %.03352.i, %ar_cleared_entry.exit.i ], [ %.03352.i, %.lr.ph53.i ]
  %indvars.iv.next61.i = add nuw nsw i64 %indvars.iv60.i, 1 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next61.i, %i.aa
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph53.i, !llvm.loop !155

.loopexit.i:                                      ; preds = %ar_cleared_entry.exit.thread.i, %bb.g, %bb.h, %bb.f
  %i.av = load i64, ptr %i.a, align 8, !tbaa !13
  %i.aw = and i64 %i.av, -15728641
  %i.ax = shl nuw nsw i32 %i.v, 20                ; 2 uses
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = or disjoint i64 %i.aw, %i.ay
  store i64 %i.az, ptr %i.a, align 8, !tbaa !13
  br label %ar_compact_table.exit

ar_compact_table.exit:                            ; preds = %.ar_compact_table.exit_crit_edge, %.loopexit.i
  %.pre-phi = phi i32 [ %.pre, %.ar_compact_table.exit_crit_edge ], [ %i.ax, %.loopexit.i ]
  %i.ba = zext nneg i32 %i.v to i64               ; 2 uses
  %i.bb = getelementptr [16 x i8], ptr %i.k, i64 %i.ba ; 2 uses
  store i64 %1, ptr %i.bb, align 8, !tbaa !45
  %i.bc = getelementptr i8, ptr %i.bb, i64 8
  store i64 %2, ptr %i.bc, align 8, !tbaa !47
  %i.bd = getelementptr i8, ptr %i.j, i64 %i.ba
  store i8 %i.e, ptr %i.bd, align 1, !tbaa !24
  %i.be = load i64, ptr %i.a, align 8, !tbaa !13  ; 2 uses
  %i.bf = and i64 %i.be, -16711681
  %i.bg = add nuw nsw i32 %.pre-phi, 1048576
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = or disjoint i64 %i.bf, %i.bh
  %i.bj = and i64 %i.be, 983040
  %narrow.i = add nuw nsw i64 %i.bj, 65536
  %i.bk = or i64 %i.bi, %narrow.i
  store i64 %i.bk, ptr %i.a, align 8, !tbaa !13
  br label %bb.j

bb.i:                                             ; preds = %ar_find_entry.exit
  %i.bl = getelementptr [16 x i8], ptr %i.j, i64 %indvars.iv.i.i
  %i.bm = getelementptr i8, ptr %i.bl, i64 16
  store i64 %2, ptr %i.bm, align 8, !tbaa !47
  br label %bb.j

bb.j:                                             ; preds = %ar_find_entry.exit.thread, %bb.a, %bb.i, %ar_compact_table.exit
  ret void
}

declare i32 @rb_st_insert(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_proc_call_with_block(i64 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @rb_st_lookup(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold
declare void @rb_warn(ptr noundef, ...) local_unnamed_addr #19

declare i64 @rb_yield(i64 noundef) local_unnamed_addr #1

declare i64 @rb_protect(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_inspect(i64 noundef) #1

declare i64 @rb_any_to_s(i64 noundef) local_unnamed_addr #1

declare i64 @rb_str_ellipsize(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint noreturn nounwind sspstrong uwtable
define internal fastcc void @rb_key_err_raise(i64 noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #20 {
bb.a:
  %i.a = tail call i64 @rb_key_err_new(i64 noundef %0, i64 noundef %1, i64 noundef %2) #29
  tail call void @rb_exc_raise(i64 noundef %i.a) #31
  unreachable
}

; Function Attrs: noreturn
declare void @rb_error_arity(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare i64 @rb_key_err_new(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @rb_exc_raise(i64 noundef) local_unnamed_addr #6

declare i64 @rb_proc_lambda_p(i64 noundef) local_unnamed_addr #1

declare i32 @rb_proc_arity(i64 noundef) local_unnamed_addr #1

declare i64 @rb_yield_values(i32 noundef, ...) local_unnamed_addr #1

declare void @rb_st_compact_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @tbl_update_modify(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr                   ; 4 uses
  %i.b = load i64, ptr %0, align 8, !tbaa !11
  %i.c = load i64, ptr %1, align 8, !tbaa !11
  %i.d = getelementptr i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !78   ; 10 uses
  %i.f = getelementptr i8, ptr %i.a, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !77
  %i.h = tail call i32 %i.g(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2, i32 noundef %3) #29 ; 2 uses
  switch i32 %i.h, label %rb_hash_modify.exit32 [
    i32 0, label %bb.b
    i32 2, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %.not22 = icmp eq i32 %3, 0
  br i1 %.not22, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %0, align 8, !tbaa !11
  %.not23 = icmp eq i64 %i.i, %i.b
  br i1 %.not23, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr %1, align 8, !tbaa !11
  %.not24 = icmp eq i64 %i.j, %i.c
  br i1 %.not24, label %rb_hash_modify.exit32, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.k = icmp ne i64 %i.e, 0
  %i.l = and i64 %i.e, 7
  %i.m = icmp eq i64 %i.l, 0
  %.not3.i.i.i.i = and i1 %i.k, %i.m
  br i1 %.not3.i.i.i.i, label %RB_OBJ_FROZEN.exit.i.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i.i, !prof !73

RB_OBJ_FROZEN.exit.i.i.i:                         ; preds = %bb.e
  %i.n = inttoptr i64 %i.e to ptr
  %i.o = load i64, ptr %i.n, align 8, !tbaa !13   ; 3 uses
  %i.p = and i64 %i.o, 2048
  %.not.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i.i, !prof !74

RB_OBJ_FROZEN.exit.thread.i.i.i:                  ; preds = %RB_OBJ_FROZEN.exit.i.i.i, %bb.e
  tail call void @rb_error_frozen_object(i64 noundef %i.e) #31
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %RB_OBJ_FROZEN.exit.i.i.i
  %i.q = and i64 %i.o, 31
  %i.r = icmp ne i64 %i.q, 5
  %i.s = and i64 %i.o, 49152
  %.not8.i.i.i = icmp eq i64 %i.s, 0
  %or.cond.i.i.i = or i1 %i.r, %.not8.i.i.i
  br i1 %or.cond.i.i.i, label %rb_hash_modify.exit, label %bb.f, !prof !68

bb.f:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  tail call void @rb_str_modify(i64 noundef %i.e) #29
  br label %rb_hash_modify.exit

rb_hash_modify.exit:                              ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %bb.f
  %i.t = load i64, ptr %0, align 8, !tbaa !11
  %i.u = getelementptr i8, ptr %i.a, i64 24
  store i64 %i.t, ptr %i.u, align 8, !tbaa !79
  %i.v = load i64, ptr %1, align 8, !tbaa !11
  %i.w = getelementptr i8, ptr %i.a, i64 32
  store i64 %i.v, ptr %i.w, align 8, !tbaa !80
  br label %rb_hash_modify.exit32

bb.g:                                             ; preds = %bb.a
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %rb_hash_modify.exit32, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = icmp ne i64 %i.e, 0
  %i.y = and i64 %i.e, 7
  %i.z = icmp eq i64 %i.y, 0
  %.not3.i.i.i.i25 = and i1 %i.x, %i.z
  br i1 %.not3.i.i.i.i25, label %RB_OBJ_FROZEN.exit.i.i.i27, label %RB_OBJ_FROZEN.exit.thread.i.i.i26, !prof !73

RB_OBJ_FROZEN.exit.i.i.i27:                       ; preds = %bb.h
  %i.aa = inttoptr i64 %i.e to ptr
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !13 ; 3 uses
  %i.ac = and i64 %i.ab, 2048
  %.not.i.i.i28 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i28, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i29, label %RB_OBJ_FROZEN.exit.thread.i.i.i26, !prof !74

RB_OBJ_FROZEN.exit.thread.i.i.i26:                ; preds = %RB_OBJ_FROZEN.exit.i.i.i27, %bb.h
  tail call void @rb_error_frozen_object(i64 noundef %i.e) #31
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i29:           ; preds = %RB_OBJ_FROZEN.exit.i.i.i27
  %i.ad = and i64 %i.ab, 31
  %i.ae = icmp ne i64 %i.ad, 5
  %i.af = and i64 %i.ab, 49152
  %.not8.i.i.i30 = icmp eq i64 %i.af, 0
  %or.cond.i.i.i31 = or i1 %i.ae, %.not8.i.i.i30
  br i1 %or.cond.i.i.i31, label %rb_hash_modify.exit32, label %bb.i, !prof !68

bb.i:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i29
  tail call void @rb_str_modify(i64 noundef %i.e) #29
  br label %rb_hash_modify.exit32

rb_hash_modify.exit32:                            ; preds = %bb.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i29, %bb.g, %bb.d, %rb_hash_modify.exit, %bb.a
  ret i32 %i.h
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @no_new_key() unnamed_addr #14 {
bb.a:
  %i.a = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.a, ptr noundef nonnull @.str.103) #31
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @rb_hash_update_func_callback_noinsert(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.b, label %rb_hash_update_func_callback.exit

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @no_new_key() #33
  unreachable

rb_hash_update_func_callback.exit:                ; preds = %bb.a
  %i.a = inttoptr i64 %2 to ptr
  %.val = load i64, ptr %i.a, align 8, !tbaa !75
  %i.b = inttoptr i64 %.val to ptr                ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !86
  %i.e = getelementptr i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !85
  %i.g = load i64, ptr %0, align 8, !tbaa !11
  %i.h = load i64, ptr %1, align 8, !tbaa !11
  %i.i = tail call i64 %i.f(i64 noundef %i.g, i64 noundef %i.h, i64 noundef %i.d) #29, !inline_history !156
  store i64 %i.i, ptr %1, align 8, !tbaa !11
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @rb_hash_update_func_callback_insert(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr
  %.val = load i64, ptr %i.a, align 8, !tbaa !75
  %i.b = inttoptr i64 %.val to ptr                ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !86   ; 2 uses
  %.not.i = icmp eq i32 %3, 0
end_hunk_2
begin_hunk_3_@hash_equal:bb.a
bb.h:                                             ; preds = %bb.f
  %i.r = add i64 %0, 24
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !51
  br label %RHASH_SIZE.exit

RHASH_SIZE.exit:                                  ; preds = %bb.g, %bb.h
  %.0.i30 = phi i64 [ %i.q, %bb.g ], [ %i.u, %bb.h ]
  %i.v = and i64 %i.g, 32768
  %.not.i.i31 = icmp eq i64 %i.v, 0               ; 3 uses
  br i1 %.not.i.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %RHASH_SIZE.exit
  %i.w = lshr i64 %i.g, 16
  %i.x = and i64 %i.w, 15
  br label %RHASH_SIZE.exit33

bb.j:                                             ; preds = %RHASH_SIZE.exit
  %i.y = add i64 %1, 24
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr i8, ptr %i.z, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !51
  br label %RHASH_SIZE.exit33

RHASH_SIZE.exit33:                                ; preds = %bb.i, %bb.j
  %.0.i32 = phi i64 [ %i.x, %bb.i ], [ %i.ab, %bb.j ]
  %.not26 = icmp eq i64 %.0.i30, %.0.i32
  br i1 %.not26, label %bb.k, label %bb.w

bb.k:                                             ; preds = %RHASH_SIZE.exit33
  br i1 %.not.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ac = lshr i64 %i.n, 16
  %i.ad = and i64 %i.ac, 15
  br label %RHASH_TABLE_EMPTY_P.exit

bb.m:                                             ; preds = %bb.k
  %i.ae = add i64 %0, 24
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = getelementptr i8, ptr %i.af, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !51
  br label %RHASH_TABLE_EMPTY_P.exit

RHASH_TABLE_EMPTY_P.exit:                         ; preds = %bb.l, %bb.m
  %.0.i.i = phi i64 [ %i.ad, %bb.l ], [ %i.ah, %bb.m ]
  %.not39 = icmp eq i64 %.0.i.i, 0
  br i1 %.not39, label %bb.w, label %bb.n

bb.n:                                             ; preds = %RHASH_TABLE_EMPTY_P.exit
  br i1 %.not.i.i31, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ai = lshr i64 %i.g, 16
  %i.aj = and i64 %i.ai, 15
  br label %RHASH_TABLE_EMPTY_P.exit36

bb.p:                                             ; preds = %bb.n
  %i.ak = add i64 %1, 24
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = getelementptr i8, ptr %i.al, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !51
  br label %RHASH_TABLE_EMPTY_P.exit36

RHASH_TABLE_EMPTY_P.exit36:                       ; preds = %bb.o, %bb.p
  %.0.i.i35 = phi i64 [ %i.aj, %bb.o ], [ %i.an, %bb.p ]
  %.not40 = icmp eq i64 %.0.i.i35, 0
  br i1 %.not40, label %bb.w, label %bb.q

bb.q:                                             ; preds = %RHASH_TABLE_EMPTY_P.exit36
  br i1 %.not.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = add i64 %0, 24
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !70
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.as = phi ptr [ %i.ar, %bb.r ], [ @objhash, %bb.q ]
  br i1 %.not.i.i31, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = add i64 %1, 24
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !70
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.ax = phi ptr [ %i.aw, %bb.t ], [ @objhash, %bb.s ]
  %.not29 = icmp eq ptr %i.as, %i.ax
  br i1 %.not29, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %1, ptr %i.ay, align 8, !tbaa !157
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %2, ptr %i.az, align 8, !tbaa !159
  %i.ba = ptrtoint ptr %3 to i64
  %i.bb = call i64 @rb_exec_recursive_paired(ptr noundef nonnull @recursive_eql, i64 noundef %0, i64 noundef %1, i64 noundef %i.ba) #29
  br label %bb.w

bb.w:                                             ; preds = %RHASH_TABLE_EMPTY_P.exit, %RHASH_TABLE_EMPTY_P.exit36, %bb.u, %RHASH_SIZE.exit33, %bb.d, %rbimpl_RB_TYPE_P_fastpath.exit.thread, %bb.a, %bb.v, %bb.e
  %.0 = phi i64 [ 20, %bb.a ], [ %i.l, %bb.e ], [ 0, %bb.u ], [ 0, %RHASH_SIZE.exit33 ], [ %i.bb, %bb.v ], [ %., %bb.d ], [ 0, %rbimpl_RB_TYPE_P_fastpath.exit.thread ], [ 20, %RHASH_TABLE_EMPTY_P.exit36 ], [ 20, %RHASH_TABLE_EMPTY_P.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret i64 %.0
}

declare i32 @rb_respond_to(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_equal(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_exec_recursive_paired(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @recursive_eql(i64 noundef %0, i64 noundef %1, i32 noundef %2) #0 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = inttoptr i64 %1 to ptr                   ; 2 uses
  store i64 20, ptr %i.a, align 8, !tbaa !160
  tail call void @rb_hash_foreach(i64 noundef %0, ptr noundef @eql_i, i64 noundef %1)
  %i.b = load i64, ptr %i.a, align 8, !tbaa !160
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ 20, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 2) i32 @eql_i(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = inttoptr i64 %2 to ptr                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !157  ; 3 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13   ; 2 uses
  %i.g = and i64 %i.f, 32768
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %bb.b, label %hash_stlike_lookup.exit

bb.b:                                             ; preds = %bb.a
  %i.h = and i64 %i.f, 983040
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call fastcc range(i64 -4611686018427387904, 4611686018427387904) i64 @any_hash(i64 noundef %0, ptr noundef nonnull @obj_any_hash)
  %i.k = load i64, ptr %i.e, align 8, !tbaa !13   ; 2 uses
  %i.l = and i64 %i.k, 32768
  %.not.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i, label %bb.d, label %hash_stlike_lookup.exit, !prof !64

bb.d:                                             ; preds = %bb.c
  %i.m = trunc i64 %i.j to i8
  %i.n = trunc i64 %i.k to i32
  %i.o = lshr i32 %i.n, 20
  %i.p = and i32 %i.o, 15                         ; 2 uses
  %i.q = add i64 %i.d, 24
  %i.r = inttoptr i64 %i.q to ptr                 ; 3 uses
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %.not19.i.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not19.i.i.i.i, label %.sink.split, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.d
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.p to i64
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %.lr.ph.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.f ] ; 5 uses
  %i.t = getelementptr i8, ptr %i.r, i64 %indvars.iv.i.i.i.i
  %i.u = load i8, ptr %i.t, align 1, !tbaa !24
  %i.v = icmp eq i8 %i.u, %i.m
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.w = getelementptr [16 x i8], ptr %i.s, i64 %indvars.iv.i.i.i.i
  %i.x = load i64, ptr %i.w, align 8, !tbaa !45
  %i.y = tail call fastcc i32 @ar_equal(i64 noundef %0, i64 noundef %i.x)
  %.not.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %ar_find_entry.exit.i.i

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.sink.split, label %.lr.ph.i.i.i.i, !llvm.loop !57

ar_find_entry.exit.i.i:                           ; preds = %bb.e
  %i.z = icmp eq i64 %indvars.iv.i.i.i.i, 8
  br i1 %i.z, label %.sink.split, label %hash_stlike_lookup.exit.thread13

hash_stlike_lookup.exit.thread13:                 ; preds = %ar_find_entry.exit.i.i
  %i.aa = getelementptr [16 x i8], ptr %i.r, i64 %indvars.iv.i.i.i.i
  %i.ab = getelementptr i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !47
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !11
  br label %bb.g

hash_stlike_lookup.exit:                          ; preds = %bb.a, %bb.c
  %i.ad = add i64 %i.d, 24
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = call i32 @rb_st_lookup(ptr noundef nonnull %i.ae, i64 noundef %0, ptr noundef nonnull %i.a) #29
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %hash_stlike_lookup.exit.thread13, %hash_stlike_lookup.exit
  %i.ag = getelementptr i8, ptr %i.b, i64 16
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !159
  %.not8 = icmp eq i32 %i.ah, 0
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  br i1 %.not8, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = call i32 @rb_eql(i64 noundef %1, i64 noundef %i.ai) #29
  %.not10 = icmp eq i32 %i.aj, 0
  br i1 %.not10, label %.sink.split, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ak = call i64 @rb_equal(i64 noundef %1, i64 noundef %i.ai) #29
  %i.al = and i64 %i.ak, 4294967295
  %.not9 = icmp eq i64 %i.al, 0
  br i1 %.not9, label %.sink.split, label %bb.j

.sink.split:                                      ; preds = %bb.f, %bb.h, %bb.i, %hash_stlike_lookup.exit, %bb.b, %ar_find_entry.exit.i.i, %bb.d
  store i64 0, ptr %i.b, align 8, !tbaa !160
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.h, %bb.i
  %.0 = phi i32 [ 0, %bb.i ], [ 0, %bb.h ], [ 1, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @rb_st_hash_uint(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @hash_i(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 5 uses
  %i.b = inttoptr i64 %2 to ptr                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.c = tail call fastcc i64 @any_hash(i64 noundef %0, ptr noundef nonnull @obj_any_hash)
  %i.d = shl nsw i64 %i.c, 1
  %i.e = or disjoint i64 %i.d, 1
  store i64 %i.e, ptr %i.a, align 16, !tbaa !11
  %i.f = tail call fastcc i64 @any_hash(i64 noundef %1, ptr noundef nonnull @obj_any_hash)
  %i.g = shl nsw i64 %i.f, 1
  %i.h = or disjoint i64 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.h, ptr %i.i, align 8, !tbaa !11
  %i.j = call i64 @rb_st_hash(ptr noundef nonnull %i.a, i64 noundef 16, i64 noundef 0) #30
  %i.k = load i64, ptr %i.b, align 8, !tbaa !11
  %i.l = xor i64 %i.k, %i.j
  store i64 %i.l, ptr %i.b, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @rb_st_hash_end(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_st_hash(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 2) i32 @key_i(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr                   ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11
  %i.c = tail call i64 @rb_equal(i64 noundef %1, i64 noundef %i.b) #29
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 8
  store i64 %0, ptr %i.d, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @each_value_i(i64 %0, i64 noundef %1, i64 %2) #0 {
bb.a:
  %i.a = tail call i64 @rb_yield(i64 noundef %1) #29 ; 0 uses
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @each_key_i(i64 noundef %0, i64 %1, i64 %2) #0 {
bb.a:
  %i.a = tail call i64 @rb_yield(i64 noundef %0) #29 ; 0 uses
  ret i32 0
}

declare i32 @rb_block_pair_yield_optimizable() local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @each_pair_i_fast(i64 noundef %0, i64 noundef %1, i64 %2) #0 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %0, ptr %i.a, align 16, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.b, align 8, !tbaa !11
  %i.c = call i64 @rb_yield_values2(i32 noundef 2, ptr noundef nonnull %i.a) #29 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @each_pair_i(i64 noundef %0, i64 noundef %1, i64 %2) #0 {
bb.a:
  %i.a = tail call i64 @rb_assoc_new(i64 noundef %0, i64 noundef %1) #29
  %i.b = tail call i64 @rb_yield(i64 noundef %i.a) #29 ; 0 uses
  ret i32 0
}

declare i64 @rb_yield_values2(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #22

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @transform_keys_hash_i(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr                   ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !102
  %i.c = getelementptr i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !105
  %i.e = tail call i64 @rb_hash_lookup2(i64 noundef %i.b, i64 noundef %0, i64 noundef 36) ; 2 uses
  %i.f = icmp eq i64 %i.e, 36
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.a, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !104
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i64 @rb_yield(i64 noundef %0) #29
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i64 [ %i.i, %bb.c ], [ %i.e, %bb.a ], [ %0, %bb.b ]
  %i.j = tail call i64 @rb_hash_aset(i64 noundef %i.d, i64 noundef %.0, i64 noundef %1) ; 0 uses
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @transform_keys_i(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call i64 @rb_yield(i64 noundef %0) #29
  %i.b = tail call i64 @rb_hash_aset(i64 noundef %2, i64 noundef %i.a, i64 noundef %1) ; 0 uses
  ret i32 0
}

declare i64 @rb_ary_hidden_new(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @flatten_i(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %0, ptr %i.a, align 16, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.b, align 8, !tbaa !11
  %i.c = call i64 @rb_ary_cat(i64 noundef %2, ptr noundef nonnull %i.a, i64 noundef 2) #29 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i32 0
}

declare i64 @rb_ary_clear(i64 noundef) local_unnamed_addr #1

declare i64 @rb_ary_cat(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @transform_values_call(i64 noundef returned %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = and i64 %i.b, 32768
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = trunc i64 %i.b to i32                    ; 2 uses
  %i.e = and i32 %i.d, 983040
  %.not.i.i.i = icmp eq i32 %i.e, 0
end_hunk_3
