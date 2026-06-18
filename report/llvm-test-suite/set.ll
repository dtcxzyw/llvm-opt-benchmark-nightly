inline.NumInlined: 29
inline.NumDeleted: 1
begin_hunk_0_@sf_compress:bb.a
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !33 ; 2 uses
  %.not.i32 = icmp eq ptr %i.dj, null
  br i1 %.not.i32, label %sf_free.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.dj) #25
  store ptr null, ptr %i.di, align 8, !tbaa !33
  br label %sf_free.exit

sf_free.exit:                                     ; preds = %._crit_edge, %bb.k
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.aj, ptr %i.dk, align 8, !tbaa !48
  store ptr %0, ptr @set_family_garbage, align 8, !tbaa !47
  ret ptr %.0.i
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local noundef ptr @sf_transpose(ptr noundef %0) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !28   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !34   ; 3 uses
  %i.e = load ptr, ptr @set_family_garbage, align 8, !tbaa !47 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #24
  br label %sf_new.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48   ; 2 uses
  store ptr %i.i, ptr @set_family_garbage, align 8, !tbaa !47
  br label %sf_new.exit

sf_new.exit:                                      ; preds = %bb.b, %bb.c
  %i.j = phi ptr [ null, %bb.b ], [ %i.i, %bb.c ]
  %.0.i = phi ptr [ %i.g, %bb.b ], [ %i.e, %bb.c ] ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  store i32 %i.d, ptr %i.k, align 4, !tbaa !28
  %i.l = icmp slt i32 %i.d, 33
  %i.m = add nsw i32 %i.d, -1
  %i.n = lshr i32 %i.m, 5
  %i.o = add nuw nsw i32 %i.n, 2
  %i.p = select i1 %i.l, i32 2, i32 %i.o          ; 2 uses
  store i32 %i.p, ptr %.0.i, align 8, !tbaa !35
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i32 %i.b, ptr %i.q, align 8, !tbaa !49
  %i.r = sext i32 %i.b to i64
  %i.s = zext nneg i32 %i.p to i64
  %i.t = shl nsw i64 %i.r, 2
  %i.u = mul nsw i64 %i.t, %i.s
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.u) #24 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  store ptr %i.v, ptr %i.w, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 12
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store i32 0, ptr %i.y, align 8, !tbaa !40
  %i.z = load i32, ptr %i.a, align 4, !tbaa !28   ; 6 uses
  store i32 %i.z, ptr %i.x, align 4, !tbaa !34
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %sf_new.exit
  %.pre = load i32, ptr %i.k, align 4, !tbaa !28  ; 2 uses
  %.pre50 = load i32, ptr %.0.i, align 8, !tbaa !35
  %i.ab = icmp slt i32 %.pre, 33
  %i.ac = add nsw i32 %.pre, -1
  %i.ad = lshr i32 %i.ac, 5
  %i.ae = add nuw nsw i32 %i.ad, 1
  %i.af = select i1 %i.ab, i32 1, i32 %i.ae       ; 11 uses
  %i.ag = shl nuw nsw i32 %i.af, 2
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = add nsw i32 %i.af, -1
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 2                ; 2 uses
  %i.al = sub nsw i64 %i.ah, %i.ak                ; 9 uses
  %i.am = add nuw nsw i64 %i.ak, 4                ; 9 uses
  %i.an = sext i32 %.pre50 to i64                 ; 9 uses
  %xtraiter = and i32 %i.z, 7                     ; 3 uses
  %i.ao = icmp ult i32 %i.z, 8
  br i1 %i.ao, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.z, 2147483640
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.03740 = phi ptr [ %i.v, %.lr.ph.preheader.new ], [ %i.aw, %.lr.ph ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  store i32 %i.af, ptr %.03740, align 4, !tbaa !4
  %scevgep = getelementptr i8, ptr %.03740, i64 %i.al
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.am, i1 false), !tbaa !4
  %i.ap = getelementptr inbounds [4 x i8], ptr %.03740, i64 %i.an ; 3 uses
  store i32 %i.af, ptr %i.ap, align 4, !tbaa !4
  %scevgep.1 = getelementptr i8, ptr %i.ap, i64 %i.al
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.1, i8 0, i64 %i.am, i1 false), !tbaa !4
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.an ; 3 uses
  store i32 %i.af, ptr %i.aq, align 4, !tbaa !4
  %scevgep.2 = getelementptr i8, ptr %i.aq, i64 %i.al
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.2, i8 0, i64 %i.am, i1 false), !tbaa !4
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.an ; 3 uses
  store i32 %i.af, ptr %i.ar, align 4, !tbaa !4
  %scevgep.3 = getelementptr i8, ptr %i.ar, i64 %i.al
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.3, i8 0, i64 %i.am, i1 false), !tbaa !4
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.an ; 3 uses
  store i32 %i.af, ptr %i.as, align 4, !tbaa !4
  %scevgep.4 = getelementptr i8, ptr %i.as, i64 %i.al
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.4, i8 0, i64 %i.am, i1 false), !tbaa !4
  %i.at = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.an ; 3 uses
  store i32 %i.af, ptr %i.at, align 4, !tbaa !4
  %scevgep.5 = getelementptr i8, ptr %i.at, i64 %i.al
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.5, i8 0, i64 %i.am, i1 false), !tbaa !4
  %i.au = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.an ; 3 uses
  store i32 %i.af, ptr %i.au, align 4, !tbaa !4
  %scevgep.6 = getelementptr i8, ptr %i.au, i64 %i.al
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.6, i8 0, i64 %i.am, i1 false), !tbaa !4
  %i.av = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.an ; 3 uses
  store i32 %i.af, ptr %i.av, align 4, !tbaa !4
  %scevgep.7 = getelementptr i8, ptr %i.av, i64 %i.al
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.7, i8 0, i64 %i.am, i1 false), !tbaa !4
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.an ; 2 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7.not = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7.not, label %._crit_edge.unr-lcssa, label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.03740.epil.init = phi ptr [ %i.v, %.lr.ph.preheader ], [ %i.aw, %._crit_edge.unr-lcssa ]
  %lcmp.mod56 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod56)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.03740.epil = phi ptr [ %i.ax, %.lr.ph.epil ], [ %.03740.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  store i32 %i.af, ptr %.03740.epil, align 4, !tbaa !4
  %scevgep.epil = getelementptr i8, ptr %.03740.epil, i64 %i.al
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.epil, i8 0, i64 %i.am, i1 false), !tbaa !4
  %i.ax = getelementptr inbounds [4 x i8], ptr %.03740.epil, i64 %i.an
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !79

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !33 ; 3 uses
  %i.ba = load i32, ptr %i.c, align 4, !tbaa !34  ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.preheader.lr.ph, label %._crit_edge47.split

._crit_edge.thread:                               ; preds = %sf_new.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !33
  br label %._crit_edge47.split

.preheader.lr.ph:                                 ; preds = %._crit_edge
  %i.be = load i32, ptr %0, align 8, !tbaa !35
  %i.bf = sext i32 %i.be to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge44
  %.146 = phi i32 [ %i.ca, %._crit_edge44 ], [ 0, %.preheader.lr.ph ] ; 3 uses
  %.13845 = phi ptr [ %i.bz, %._crit_edge44 ], [ %i.az, %.preheader.lr.ph ] ; 2 uses
  %i.bg = and i32 %.146, 31
  %i.bh = shl nuw i32 1, %i.bg
  %i.bi = lshr i32 %.146, 5
  %i.bj = zext nneg i32 %i.bi to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.v, i64 %i.bj
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.f
  %.03542 = phi i32 [ 0, %.preheader ], [ %i.by, %bb.f ] ; 4 uses
  %i.bk = lshr i32 %.03542, 5
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.13845, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !4
  %i.bp = and i32 %.03542, 31
  %i.bq = shl nuw i32 1, %i.bp
  %i.br = and i32 %i.bo, %i.bq
  %.not = icmp eq i32 %i.br, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bs = load i32, ptr %.0.i, align 8, !tbaa !35
  %i.bt = mul nsw i32 %i.bs, %.03542
  %i.bu = sext i32 %i.bt to i64
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bu
  %i.bv = getelementptr inbounds nuw i8, ptr %gep, i64 4 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !4
  %i.bx = or i32 %i.bw, %i.bh
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.by = add nuw nsw i32 %.03542, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.by, %i.z
  br i1 %exitcond.not, label %._crit_edge44, label %bb.d

._crit_edge44:                                    ; preds = %bb.f
  %i.bz = getelementptr inbounds [4 x i8], ptr %.13845, i64 %i.bf
  %i.ca = add nuw nsw i32 %.146, 1                ; 2 uses
  %exitcond49.not = icmp eq i32 %i.ca, %i.ba
  br i1 %exitcond49.not, label %._crit_edge47.split, label %.preheader

._crit_edge47.split:                              ; preds = %._crit_edge44, %._crit_edge.thread, %._crit_edge
  %i.cb = phi ptr [ %i.bd, %._crit_edge.thread ], [ %i.az, %._crit_edge ], [ %i.az, %._crit_edge44 ] ; 2 uses
  %i.cc = phi ptr [ %i.bc, %._crit_edge.thread ], [ %i.ay, %._crit_edge ], [ %i.ay, %._crit_edge44 ]
  %.not.i = icmp eq ptr %i.cb, null
  br i1 %.not.i, label %sf_free.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge47.split
  tail call void @free(ptr noundef nonnull %i.cb) #25
  store ptr null, ptr %i.cc, align 8, !tbaa !33
  br label %sf_free.exit

sf_free.exit:                                     ; preds = %._crit_edge47.split, %bb.g
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.j, ptr %i.cd, align 8, !tbaa !48
  store ptr %0, ptr @set_family_garbage, align 8, !tbaa !47
  ret ptr %.0.i
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local noundef ptr @sf_permute(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !34   ; 2 uses
  %i.c = load ptr, ptr @set_family_garbage, align 8, !tbaa !47 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #24
  br label %sf_new.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !48   ; 2 uses
  store ptr %i.g, ptr @set_family_garbage, align 8, !tbaa !47
  br label %sf_new.exit

sf_new.exit:                                      ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ null, %bb.b ], [ %i.g, %bb.c ]
  %.0.i = phi ptr [ %i.e, %bb.b ], [ %i.c, %bb.c ] ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  store i32 %2, ptr %i.i, align 4, !tbaa !28
  %i.j = icmp slt i32 %2, 33                      ; 2 uses
  %i.k = add nsw i32 %2, -1
  %i.l = lshr i32 %i.k, 5                         ; 2 uses
  %i.m = add nuw nsw i32 %i.l, 2
  %i.n = select i1 %i.j, i32 2, i32 %i.m          ; 2 uses
  store i32 %i.n, ptr %.0.i, align 8, !tbaa !35
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i32 %i.b, ptr %i.o, align 8, !tbaa !49
  %i.p = sext i32 %i.b to i64
  %i.q = shl nuw nsw i32 %i.n, 2
  %i.r = zext nneg i32 %i.q to i64
  %i.s = mul nsw i64 %i.r, %i.p
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.s) #24 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  store ptr %i.t, ptr %i.u, align 8, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 12 ; 2 uses
  store i32 0, ptr %i.v, align 4, !tbaa !34
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store i32 0, ptr %i.w, align 8, !tbaa !40
  %i.x = load i32, ptr %i.a, align 4, !tbaa !34   ; 3 uses
  store i32 %i.x, ptr %i.v, align 4, !tbaa !34
  %i.y = load i32, ptr %.0.i, align 8, !tbaa !35  ; 3 uses
  %i.z = mul nsw i32 %i.y, %i.x                   ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %.idx = shl nsw i64 %i.aa, 2
  %i.ab = getelementptr inbounds i8, ptr %i.t, i64 %.idx
  %i.ac = icmp sgt i32 %i.z, 0
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %sf_new.exit
  %i.ad = add nuw nsw i32 %i.l, 1
  %i.ae = select i1 %i.j, i32 1, i32 %i.ad        ; 3 uses
  %i.af = shl nuw nsw i32 %i.ae, 2
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = add nsw i32 %i.ae, -1
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 2                ; 2 uses
  %i.ak = sub nsw i64 %i.ag, %i.aj
  %i.al = add nuw nsw i64 %i.aj, 4
  %i.am = sext i32 %i.y to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.04445 = phi ptr [ %i.t, %.lr.ph ], [ %i.an, %bb.d ] ; 3 uses
  store i32 %i.ae, ptr %.04445, align 4, !tbaa !4
  %scevgep = getelementptr i8, ptr %.04445, i64 %i.ak
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.al, i1 false), !tbaa !4
  %i.an = getelementptr inbounds [4 x i8], ptr %.04445, i64 %i.am ; 2 uses
  %i.ao = icmp ult ptr %i.an, %i.ab
  br i1 %i.ao, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %sf_new.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !33 ; 5 uses
  %i.ar = load i32, ptr %0, align 8, !tbaa !35    ; 2 uses
  %i.as = mul nsw i32 %i.ar, %i.x                 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %.idx52 = shl nsw i64 %i.at, 2
  %i.au = getelementptr inbounds i8, ptr %i.aq, i64 %.idx52 ; 2 uses
  %i.av = icmp sgt i32 %i.as, 0
  br i1 %i.av, label %.preheader.lr.ph, label %._crit_edge51

.preheader.lr.ph:                                 ; preds = %._crit_edge
  %i.aw = icmp sgt i32 %2, 0
  %i.ax = sext i32 %i.ar to i64                   ; 2 uses
  br i1 %i.aw, label %.preheader.us.preheader, label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.ay = sext i32 %i.y to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge48.us
  %.04350.us = phi ptr [ %i.bs, %._crit_edge48.us ], [ %i.t, %.preheader.us.preheader ] ; 2 uses
  %.149.us = phi ptr [ %i.bt, %._crit_edge48.us ], [ %i.aq, %.preheader.us.preheader ] ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader.us, %bb.g
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !4  ; 2 uses
  %i.bb = ashr i32 %i.ba, 5
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr [4 x i8], ptr %.149.us, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !4
  %i.bg = and i32 %i.ba, 31
  %i.bh = shl nuw i32 1, %i.bg
  %i.bi = and i32 %i.bh, %i.bf
  %.not.us = icmp eq i32 %i.bi, 0
  br i1 %.not.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bj = trunc nuw nsw i64 %indvars.iv to i32
  %i.bk = and i32 %i.bj, 31
  %i.bl = shl nuw i32 1, %i.bk
  %i.bm = lshr i64 %indvars.iv, 5
  %i.bn = and i64 %i.bm, 134217727
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.04350.us, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !4
  %i.br = or i32 %i.bq, %i.bl
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge48.us, label %bb.e

._crit_edge48.us:                                 ; preds = %bb.g
  %i.bs = getelementptr inbounds [4 x i8], ptr %.04350.us, i64 %i.ay
  %i.bt = getelementptr inbounds [4 x i8], ptr %.149.us, i64 %i.ax ; 2 uses
  %i.bu = icmp ult ptr %i.bt, %i.au
  br i1 %i.bu, label %.preheader.us, label %._crit_edge51

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.149 = phi ptr [ %i.bv, %.preheader ], [ %i.aq, %.preheader.lr.ph ]
  %i.bv = getelementptr inbounds [4 x i8], ptr %.149, i64 %i.ax ; 2 uses
  %i.bw = icmp ult ptr %i.bv, %i.au
  br i1 %i.bw, label %.preheader, label %._crit_edge51

._crit_edge51:                                    ; preds = %.preheader, %._crit_edge48.us, %._crit_edge
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %sf_free.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge51
  tail call void @free(ptr noundef nonnull %i.aq) #25
  store ptr null, ptr %i.ap, align 8, !tbaa !33
  br label %sf_free.exit

sf_free.exit:                                     ; preds = %._crit_edge51, %bb.h
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.h, ptr %i.bx, align 8, !tbaa !48
  store ptr %0, ptr @set_family_garbage, align 8, !tbaa !47
  ret ptr %.0.i
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #20

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
end_hunk_0
