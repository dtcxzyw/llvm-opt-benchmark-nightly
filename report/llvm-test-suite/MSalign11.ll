inline.NumInlined: 8
inline.NumDeleted: 2
begin_hunk_0_@extendmseq:bb.a
  %i.f = add i32 %6, %i.e                         ; 4 uses
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str.15, i32 noundef %i.f) #11 ; 0 uses
  %i.i = icmp sgt i32 %i.f, 0
  br i1 %i.i, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.j = zext nneg i32 %i.f to i64                ; 4 uses
  %i.k = sext i32 %4 to i64                       ; 3 uses
  %xtraiter = and i64 %i.j, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.l = load ptr, ptr %2, align 8, !tbaa !8
  %indvars.iv.next.prol = add nsw i64 %i.j, -1
  %i.m = getelementptr i8, ptr %i.l, i64 %i.j
  %i.n = getelementptr i8, ptr %i.m, i64 %i.k
  %i.o = load i8, ptr %i.n, align 1, !tbaa !11
  %i.p = load ptr, ptr %0, align 8, !tbaa !8
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -1 ; 2 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !8
  store i8 %i.o, ptr %i.q, align 1, !tbaa !11
  %i.r = load ptr, ptr %1, align 8, !tbaa !8
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -1 ; 2 uses
  store ptr %i.s, ptr %1, align 8, !tbaa !8
  store i8 45, ptr %i.s, align 1, !tbaa !11
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.j, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.t = icmp eq i32 %i.f, 1
  br i1 %i.t, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.u = load ptr, ptr %2, align 8, !tbaa !8
  %i.v = getelementptr i8, ptr %i.u, i64 %indvars.iv
  %i.w = getelementptr i8, ptr %i.v, i64 %i.k
  %i.x = load i8, ptr %i.w, align 1, !tbaa !11
  %i.y = load ptr, ptr %0, align 8, !tbaa !8
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -1 ; 2 uses
  store ptr %i.z, ptr %0, align 8, !tbaa !8
  store i8 %i.x, ptr %i.z, align 1, !tbaa !11
  %i.aa = load ptr, ptr %1, align 8, !tbaa !8
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -1 ; 2 uses
  store ptr %i.ab, ptr %1, align 8, !tbaa !8
  store i8 45, ptr %i.ab, align 1, !tbaa !11
  %i.ac = load ptr, ptr %2, align 8, !tbaa !8
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2
  %i.ad = getelementptr i8, ptr %i.ac, i64 %indvars.iv
  %i.ae = getelementptr i8, ptr %i.ad, i64 -1
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.k
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !11
  %i.ah = load ptr, ptr %0, align 8, !tbaa !8
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -1 ; 2 uses
  store ptr %i.ai, ptr %0, align 8, !tbaa !8
  store i8 %i.ag, ptr %i.ai, align 1, !tbaa !11
  %i.aj = load ptr, ptr %1, align 8, !tbaa !8
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -1 ; 2 uses
  store ptr %i.ak, ptr %1, align 8, !tbaa !8
  store i8 45, ptr %i.ak, align 1, !tbaa !11
  %i.al = icmp sgt i64 %indvars.iv, 2
  br i1 %i.al, label %.lr.ph, label %._crit_edge, !llvm.loop !36

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  %i.am = xor i32 %5, -1
  %i.an = add i32 %7, %i.am                       ; 4 uses
  %i.ao = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.ap = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ao, ptr noundef nonnull @.str.15, i32 noundef %i.an) #11 ; 0 uses
  %i.aq = icmp sgt i32 %i.an, 0
  br i1 %i.aq, label %.lr.ph42.preheader, label %._crit_edge43

.lr.ph42.preheader:                               ; preds = %._crit_edge
  %i.ar = zext nneg i32 %i.an to i64              ; 4 uses
  %i.as = sext i32 %5 to i64                      ; 3 uses
  %xtraiter49 = and i64 %i.ar, 1
  %lcmp.mod50.not = icmp eq i64 %xtraiter49, 0
  br i1 %lcmp.mod50.not, label %.lr.ph42.prol.loopexit, label %.lr.ph42.prol

.lr.ph42.prol:                                    ; preds = %.lr.ph42.preheader
  %i.at = load ptr, ptr %0, align 8, !tbaa !8
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -1 ; 2 uses
  store ptr %i.au, ptr %0, align 8, !tbaa !8
  store i8 45, ptr %i.au, align 1, !tbaa !11
  %i.av = load ptr, ptr %3, align 8, !tbaa !8
  %indvars.iv.next46.prol = add nsw i64 %i.ar, -1
  %i.aw = getelementptr i8, ptr %i.av, i64 %i.ar
  %i.ax = getelementptr i8, ptr %i.aw, i64 %i.as
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !11
  %i.az = load ptr, ptr %1, align 8, !tbaa !8
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -1 ; 2 uses
  store ptr %i.ba, ptr %1, align 8, !tbaa !8
  store i8 %i.ay, ptr %i.ba, align 1, !tbaa !11
  br label %.lr.ph42.prol.loopexit

.lr.ph42.prol.loopexit:                           ; preds = %.lr.ph42.prol, %.lr.ph42.preheader
  %indvars.iv45.unr = phi i64 [ %i.ar, %.lr.ph42.preheader ], [ %indvars.iv.next46.prol, %.lr.ph42.prol ]
  %i.bb = icmp eq i32 %i.an, 1
  br i1 %i.bb, label %._crit_edge43, label %.lr.ph42

.lr.ph42:                                         ; preds = %.lr.ph42.prol.loopexit, %.lr.ph42
  %indvars.iv45 = phi i64 [ %indvars.iv.next46.1, %.lr.ph42 ], [ %indvars.iv45.unr, %.lr.ph42.prol.loopexit ] ; 4 uses
  %i.bc = load ptr, ptr %0, align 8, !tbaa !8
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -1 ; 2 uses
  store ptr %i.bd, ptr %0, align 8, !tbaa !8
  store i8 45, ptr %i.bd, align 1, !tbaa !11
  %i.be = load ptr, ptr %3, align 8, !tbaa !8
  %i.bf = getelementptr i8, ptr %i.be, i64 %indvars.iv45
  %i.bg = getelementptr i8, ptr %i.bf, i64 %i.as
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !11
  %i.bi = load ptr, ptr %1, align 8, !tbaa !8
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -1 ; 2 uses
  store ptr %i.bj, ptr %1, align 8, !tbaa !8
  store i8 %i.bh, ptr %i.bj, align 1, !tbaa !11
  %i.bk = load ptr, ptr %0, align 8, !tbaa !8
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -1 ; 2 uses
  store ptr %i.bl, ptr %0, align 8, !tbaa !8
  store i8 45, ptr %i.bl, align 1, !tbaa !11
  %i.bm = load ptr, ptr %3, align 8, !tbaa !8
  %indvars.iv.next46.1 = add nsw i64 %indvars.iv45, -2
  %i.bn = getelementptr i8, ptr %i.bm, i64 %indvars.iv45
  %i.bo = getelementptr i8, ptr %i.bn, i64 -1
  %i.bp = getelementptr i8, ptr %i.bo, i64 %i.as
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !11
  %i.br = load ptr, ptr %1, align 8, !tbaa !8
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -1 ; 2 uses
  store ptr %i.bs, ptr %1, align 8, !tbaa !8
  store i8 %i.bq, ptr %i.bs, align 1, !tbaa !11
  %i.bt = icmp sgt i64 %indvars.iv45, 2
  br i1 %i.bt, label %.lr.ph42, label %._crit_edge43, !llvm.loop !37

._crit_edge43:                                    ; preds = %.lr.ph42.prol.loopexit, %.lr.ph42, %._crit_edge
  %i.bu = or i32 %5, %4
  %or.cond.not = icmp sgt i32 %i.bu, -1
  br i1 %or.cond.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge43
  %i.bv = load ptr, ptr %2, align 8, !tbaa !8
  %i.bw = zext nneg i32 %4 to i64                 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !11
  %i.bz = load ptr, ptr %0, align 8, !tbaa !8
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -1 ; 2 uses
  store ptr %i.ca, ptr %0, align 8, !tbaa !8
  store i8 %i.by, ptr %i.ca, align 1, !tbaa !11
  %i.cb = load ptr, ptr %3, align 8, !tbaa !8
  %i.cc = zext nneg i32 %5 to i64                 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !11
  %i.cf = load ptr, ptr %1, align 8, !tbaa !8
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -1 ; 2 uses
  store ptr %i.cg, ptr %1, align 8, !tbaa !8
  store i8 %i.ce, ptr %i.cg, align 1, !tbaa !11
  %i.ch = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.ci = load ptr, ptr %2, align 8, !tbaa !8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.bw
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !11
  %i.cl = sext i8 %i.ck to i32
  %i.cm = load ptr, ptr %0, align 8, !tbaa !8
  %i.cn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ch, ptr noundef nonnull @.str.16, i32 noundef %i.cl, ptr noundef %i.cm) #11 ; 0 uses
  %i.co = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.cp = load ptr, ptr %3, align 8, !tbaa !8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cc
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !11
  %i.cs = sext i8 %i.cr to i32
  %i.ct = load ptr, ptr %1, align 8, !tbaa !8
  %i.cu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.co, ptr noundef nonnull @.str.17, i32 noundef %i.cs, ptr noundef %i.ct) #11 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge43, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local float @MSalign11(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr @penalty, align 4, !tbaa !4
  %i.b = sitofp i32 %i.a to float                 ; 9 uses
  %i.c = load i32, ptr @MSalign11.orlgth1, align 4, !tbaa !4 ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr @njob, align 4, !tbaa !4
  %i.f = tail call ptr @AllocateCharMtx(i32 noundef %i.e, i32 noundef 0) #13
  store ptr %i.f, ptr @MSalign11.mseq1, align 8, !tbaa !40
  %i.g = load i32, ptr @njob, align 4, !tbaa !4
  %i.h = tail call ptr @AllocateCharMtx(i32 noundef %i.g, i32 noundef 0) #13
  store ptr %i.h, ptr @MSalign11.mseq2, align 8, !tbaa !40
  %.pre = load i32, ptr @MSalign11.orlgth1, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi i32 [ %.pre, %bb.b ], [ %i.c, %bb.a ] ; 4 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !8
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #14 ; 9 uses
  %i.l = trunc i64 %i.k to i32                    ; 11 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !8
  %i.n = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #14 ; 11 uses
  %i.o = trunc i64 %i.n to i32                    ; 15 uses
  %i.p = icmp slt i32 %i.i, %i.l
  %i.q = load i32, ptr @MSalign11.orlgth2, align 4 ; 4 uses
  %i.r = icmp slt i32 %i.q, %i.o
  %or.cond301 = select i1 %i.p, i1 true, i1 %i.r
  br i1 %or.cond301, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.s = icmp sgt i32 %i.i, 0
  %i.t = icmp sgt i32 %i.q, 0
  %or.cond = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr @MSalign11.w1, align 8, !tbaa !21
  tail call void @FreeFloatVec(ptr noundef %i.u) #13
  %i.v = load ptr, ptr @MSalign11.w2, align 8, !tbaa !21
  tail call void @FreeFloatVec(ptr noundef %i.v) #13
  %i.w = load ptr, ptr @MSalign11.match, align 8, !tbaa !21
  tail call void @FreeFloatVec(ptr noundef %i.w) #13
  %i.x = load ptr, ptr @MSalign11.initverticalw, align 8, !tbaa !21
  tail call void @FreeFloatVec(ptr noundef %i.x) #13
  %i.y = load ptr, ptr @MSalign11.lastverticalw, align 8, !tbaa !21
  tail call void @FreeFloatVec(ptr noundef %i.y) #13
  tail call void @FreeFloatVec(ptr noundef null) #13
  tail call void @FreeFloatVec(ptr noundef null) #13
  %i.z = load ptr, ptr @MSalign11.m, align 8, !tbaa !21
  tail call void @FreeFloatVec(ptr noundef %i.z) #13
  %i.aa = load ptr, ptr @MSalign11.mp, align 8, !tbaa !43
  tail call void @FreeIntVec(ptr noundef %i.aa) #13
  %i.ab = load ptr, ptr @MSalign11.mseq, align 8, !tbaa !40
  tail call void @FreeCharMtx(ptr noundef %i.ab) #13
  %i.ac = load ptr, ptr @MSalign11.cpmx1, align 8, !tbaa !45
  tail call void @FreeFloatMtx(ptr noundef %i.ac) #13
  %i.ad = load ptr, ptr @MSalign11.cpmx2, align 8, !tbaa !45
  tail call void @FreeFloatMtx(ptr noundef %i.ad) #13
  %i.ae = load ptr, ptr @MSalign11.floatwork, align 8, !tbaa !45
  tail call void @FreeFloatMtx(ptr noundef %i.ae) #13
  %i.af = load ptr, ptr @MSalign11.intwork, align 8, !tbaa !47
  tail call void @FreeIntMtx(ptr noundef %i.af) #13
  %.pre423.a = load i32, ptr @MSalign11.orlgth1, align 4, !tbaa !4
  %.pre424.a = load i32, ptr @MSalign11.orlgth2, align 4, !tbaa !4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ag = phi i32 [ %.pre424.a, %bb.e ], [ %i.q, %bb.d ]
  %i.ah = phi i32 [ %.pre423.a, %bb.e ], [ %i.i, %bb.d ]
  %i.ai = sitofp i32 %i.l to double
  %i.aj = fmul nnan double %i.ai, 1.300000e+00
  %i.ak = fptosi double %i.aj to i32
  %. = tail call i32 @llvm.smax.i32(i32 %i.ah, i32 %i.ak) ; 4 uses
  %i.al = add nuw nsw i32 %., 100                 ; 2 uses
  %i.am = sitofp i32 %i.o to double
  %i.an = fmul nnan double %i.am, 1.300000e+00
  %i.ao = fptosi double %i.an to i32
  %i.ap = tail call i32 @llvm.smax.i32(i32 %i.ag, i32 %i.ao) ; 4 uses
  %i.aq = add nuw nsw i32 %i.ap, 100              ; 2 uses
  %i.ar = add nuw nsw i32 %i.ap, 102              ; 7 uses
  %i.as = tail call ptr @AllocateFloatVec(i32 noundef %i.ar) #13
  store ptr %i.as, ptr @MSalign11.w1, align 8, !tbaa !21
  %i.at = tail call ptr @AllocateFloatVec(i32 noundef %i.ar) #13
  store ptr %i.at, ptr @MSalign11.w2, align 8, !tbaa !21
  %i.au = tail call ptr @AllocateFloatVec(i32 noundef %i.ar) #13
  store ptr %i.au, ptr @MSalign11.match, align 8, !tbaa !21
  %i.av = add nuw nsw i32 %., 102                 ; 4 uses
  %i.aw = tail call ptr @AllocateFloatVec(i32 noundef %i.av) #13
  store ptr %i.aw, ptr @MSalign11.initverticalw, align 8, !tbaa !21
  %i.ax = tail call ptr @AllocateFloatVec(i32 noundef %i.av) #13
  store ptr %i.ax, ptr @MSalign11.lastverticalw, align 8, !tbaa !21
  %i.ay = tail call ptr @AllocateFloatVec(i32 noundef %i.av) #13
  %i.az = tail call ptr @AllocateFloatVec(i32 noundef %i.ar) #13
  store ptr %i.az, ptr @MSalign11.m, align 8, !tbaa !21
  %i.ba = tail call ptr @AllocateIntVec(i32 noundef %i.ar) #13
  store ptr %i.ba, ptr @MSalign11.mp, align 8, !tbaa !43
  %i.bb = tail call ptr @AllocateFloatVec(i32 noundef %i.ar) #13
  %i.bc = load i32, ptr @njob, align 4, !tbaa !4
  %i.bd = add nuw nsw i32 %i.aq, %i.al
  %i.be = tail call ptr @AllocateCharMtx(i32 noundef %i.bc, i32 noundef %i.bd) #13
  store ptr %i.be, ptr @MSalign11.mseq, align 8, !tbaa !40
  %i.bf = tail call ptr @AllocateFloatMtx(i32 noundef 26, i32 noundef %i.av) #13
  store ptr %i.bf, ptr @MSalign11.cpmx1, align 8, !tbaa !45
  %i.bg = tail call ptr @AllocateFloatMtx(i32 noundef 26, i32 noundef %i.ar) #13
  store ptr %i.bg, ptr @MSalign11.cpmx2, align 8, !tbaa !45
  %i.bh = tail call i32 @llvm.smax.i32(i32 %i.al, i32 %i.aq)
  %i.bi = add nuw nsw i32 %i.bh, 2                ; 2 uses
  %i.bj = tail call ptr @AllocateFloatMtx(i32 noundef 26, i32 noundef %i.bi) #13
  store ptr %i.bj, ptr @MSalign11.floatwork, align 8, !tbaa !45
  %i.bk = tail call ptr @AllocateIntMtx(i32 noundef 26, i32 noundef %i.bi) #13
  store ptr %i.bk, ptr @MSalign11.intwork, align 8, !tbaa !47
  store i32 %., ptr @MSalign11.orlgth1, align 4, !tbaa !4
  store i32 %i.ap, ptr @MSalign11.orlgth2, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f
  %i.bl = phi i32 [ %i.ap, %bb.f ], [ %i.q, %bb.c ] ; 2 uses
  %i.bm = phi i32 [ %., %bb.f ], [ %i.i, %bb.c ]  ; 2 uses
  %.0270 = phi ptr [ %i.ay, %bb.f ], [ null, %bb.c ] ; 10 uses
  %.0269 = phi ptr [ %i.bb, %bb.f ], [ null, %bb.c ] ; 10 uses
  %i.bn = load ptr, ptr @MSalign11.mseq, align 8, !tbaa !40 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !8
  %i.bp = load ptr, ptr @MSalign11.mseq1, align 8, !tbaa !40
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !8
  %i.bs = load ptr, ptr @MSalign11.mseq2, align 8, !tbaa !40
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !8
  %i.bt = load i32, ptr @commonAlloc1, align 4, !tbaa !4 ; 3 uses
  %i.bu = icmp sgt i32 %i.bm, %i.bt
  %.pre425.a = load i32, ptr @commonAlloc2, align 4 ; 3 uses
  %i.bv = icmp sgt i32 %i.bl, %.pre425.a
  %or.cond464 = select i1 %i.bu, i1 true, i1 %i.bv
  br i1 %or.cond464, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.bw = icmp ne i32 %i.bt, 0
  %i.bx = icmp ne i32 %.pre425.a, 0
  %or.cond3 = select i1 %i.bw, i1 %i.bx, i1 false
  br i1 %or.cond3, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.by = load ptr, ptr @commonIP, align 8, !tbaa !47
  tail call void @FreeIntMtx(ptr noundef %i.by) #13
  %i.bz = load ptr, ptr @MSalign11.WMMTX, align 8, !tbaa !45
  tail call void @FreeFloatMtx(ptr noundef %i.bz) #13
  %.pre426.a = load i32, ptr @MSalign11.orlgth1, align 4, !tbaa !4
  %.pre427.a = load i32, ptr @commonAlloc1, align 4, !tbaa !4
  %.pre428.a = load i32, ptr @MSalign11.orlgth2, align 4, !tbaa !4
  %.pre429 = load i32, ptr @commonAlloc2, align 4, !tbaa !4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ca = phi i32 [ %.pre429, %bb.i ], [ %.pre425.a, %bb.h ]
  %i.cb = phi i32 [ %.pre428.a, %bb.i ], [ %i.bl, %bb.h ]
  %i.cc = phi i32 [ %.pre427.a, %bb.i ], [ %i.bt, %bb.h ]
  %i.cd = phi i32 [ %.pre426.a, %bb.i ], [ %i.bm, %bb.h ]
  %i.ce = tail call i32 @llvm.smax.i32(i32 %i.cd, i32 %i.cc) ; 2 uses
  %i.cf = tail call i32 @llvm.smax.i32(i32 %i.cb, i32 %i.ca) ; 2 uses
  %i.cg = add nsw i32 %i.ce, 10                   ; 2 uses
  %i.ch = add nsw i32 %i.cf, 10                   ; 2 uses
  %i.ci = tail call ptr @AllocateIntMtx(i32 noundef %i.cg, i32 noundef %i.ch) #13
  store ptr %i.ci, ptr @commonIP, align 8, !tbaa !47
  %i.cj = tail call ptr @AllocateFloatMtx(i32 noundef %i.cg, i32 noundef %i.ch) #13
  store ptr %i.cj, ptr @MSalign11.WMMTX, align 8, !tbaa !45
  store i32 %i.ce, ptr @commonAlloc1, align 4, !tbaa !4
  store i32 %i.cf, ptr @commonAlloc2, align 4, !tbaa !4
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.j
  %i.ck = load ptr, ptr @commonIP, align 8, !tbaa !47
  store ptr %i.ck, ptr @MSalign11.ijp, align 8, !tbaa !47
  %i.cl = load ptr, ptr @MSalign11.w1, align 8, !tbaa !21 ; 16 uses
  %i.cm = ptrtoaddr ptr %i.cl to i64
  %i.cn = load ptr, ptr @MSalign11.w2, align 8, !tbaa !21
  %i.co = load ptr, ptr @MSalign11.initverticalw, align 8, !tbaa !21 ; 6 uses
  %.val306 = load ptr, ptr %1, align 8, !tbaa !8  ; 3 uses
  %.val307 = load ptr, ptr %0, align 8, !tbaa !8  ; 3 uses
  %.not3.i = icmp eq i32 %i.l, 0
  br i1 %.not3.i, label %match_calc.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.cp = load i8, ptr %.val306, align 1, !tbaa !11
  %i.cq = sext i8 %i.cp to i64
  %i.cr = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.cq ; 5 uses
  %xtraiter = and i32 %i.l, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %.08.i.prol = phi ptr [ %i.ct, %.prol.preheader ], [ %.val307, %.lr.ph.i ] ; 2 uses
  %.065.i.prol = phi ptr [ %i.cz, %.prol.preheader ], [ %i.co, %.lr.ph.i ] ; 2 uses
  %.074.i.prol = phi i32 [ %i.cs, %.prol.preheader ], [ %i.l, %.lr.ph.i ]
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.cs = add nsw i32 %.074.i.prol, -1            ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.08.i.prol, i64 1 ; 2 uses
  %i.cu = load i8, ptr %.08.i.prol, align 1, !tbaa !11
  %i.cv = sext i8 %i.cu to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !4
  %i.cy = sitofp i32 %i.cx to float
  %i.cz = getelementptr inbounds nuw i8, ptr %.065.i.prol, i64 4 ; 2 uses
  store float %i.cy, ptr %.065.i.prol, align 4, !tbaa !12
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !49

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %.08.i.unr = phi ptr [ %.val307, %.lr.ph.i ], [ %i.ct, %.prol.preheader ]
  %.065.i.unr = phi ptr [ %i.co, %.lr.ph.i ], [ %i.cz, %.prol.preheader ]
  %.074.i.unr = phi i32 [ %i.l, %.lr.ph.i ], [ %i.cs, %.prol.preheader ]
  %i.da = icmp ult i32 %i.l, 4
  br i1 %i.da, label %match_calc.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %.08.i = phi ptr [ %i.dx, %.lr.ph.i.new ], [ %.08.i.unr, %.prol.loopexit ] ; 5 uses
  %.065.i = phi ptr [ %i.ed, %.lr.ph.i.new ], [ %.065.i.unr, %.prol.loopexit ] ; 5 uses
  %.074.i = phi i32 [ %i.dw, %.lr.ph.i.new ], [ %.074.i.unr, %.prol.loopexit ]
  %i.db = getelementptr inbounds nuw i8, ptr %.08.i, i64 1
  %i.dc = load i8, ptr %.08.i, align 1, !tbaa !11
  %i.dd = sext i8 %i.dc to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !4
  %i.dg = sitofp i32 %i.df to float
  %i.dh = getelementptr inbounds nuw i8, ptr %.065.i, i64 4
  store float %i.dg, ptr %.065.i, align 4, !tbaa !12
  %i.di = getelementptr inbounds nuw i8, ptr %.08.i, i64 2
  %i.dj = load i8, ptr %i.db, align 1, !tbaa !11
  %i.dk = sext i8 %i.dj to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !4
  %i.dn = sitofp i32 %i.dm to float
  %i.do = getelementptr inbounds nuw i8, ptr %.065.i, i64 8
  store float %i.dn, ptr %i.dh, align 4, !tbaa !12
  %i.dp = getelementptr inbounds nuw i8, ptr %.08.i, i64 3
  %i.dq = load i8, ptr %i.di, align 1, !tbaa !11
  %i.dr = sext i8 %i.dq to i64
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !4
  %i.du = sitofp i32 %i.dt to float
  %i.dv = getelementptr inbounds nuw i8, ptr %.065.i, i64 12
  store float %i.du, ptr %i.do, align 4, !tbaa !12
  %i.dw = add nsw i32 %.074.i, -4                 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.08.i, i64 4
  %i.dy = load i8, ptr %i.dp, align 1, !tbaa !11
  %i.dz = sext i8 %i.dy to i64
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !4
  %i.ec = sitofp i32 %i.eb to float
  %i.ed = getelementptr inbounds nuw i8, ptr %.065.i, i64 16
  store float %i.ec, ptr %i.dv, align 4, !tbaa !12
  %.not.i.3 = icmp eq i32 %i.dw, 0
  br i1 %.not.i.3, label %match_calc.exit, label %.lr.ph.i.new, !llvm.loop !16

match_calc.exit:                                  ; preds = %.prol.loopexit, %.lr.ph.i.new, %bb.k
  %.not3.i308 = icmp eq i32 %i.o, 0               ; 2 uses
  br i1 %.not3.i308, label %match_calc.exit314, label %.lr.ph.i309

.lr.ph.i309:                                      ; preds = %match_calc.exit
  %i.ee = load i8, ptr %.val307, align 1, !tbaa !11
  %i.ef = sext i8 %i.ee to i64
  %i.eg = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.ef ; 5 uses
  %xtraiter481 = and i32 %i.o, 3                  ; 2 uses
  %lcmp.mod482.not = icmp eq i32 %xtraiter481, 0
  br i1 %lcmp.mod482.not, label %.prol.loopexit480, label %.prol.preheader479

.prol.preheader479:                               ; preds = %.lr.ph.i309, %.prol.preheader479
  %.08.i310.prol = phi ptr [ %i.ei, %.prol.preheader479 ], [ %.val306, %.lr.ph.i309 ] ; 2 uses
  %.065.i311.prol = phi ptr [ %i.eo, %.prol.preheader479 ], [ %i.cl, %.lr.ph.i309 ] ; 2 uses
  %.074.i312.prol = phi i32 [ %i.eh, %.prol.preheader479 ], [ %i.o, %.lr.ph.i309 ]
  %prol.iter483 = phi i32 [ %prol.iter483.next, %.prol.preheader479 ], [ 0, %.lr.ph.i309 ]
  %i.eh = add nsw i32 %.074.i312.prol, -1         ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.08.i310.prol, i64 1 ; 2 uses
  %i.ej = load i8, ptr %.08.i310.prol, align 1, !tbaa !11
  %i.ek = sext i8 %i.ej to i64
  %i.el = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !4
  %i.en = sitofp i32 %i.em to float
  %i.eo = getelementptr inbounds nuw i8, ptr %.065.i311.prol, i64 4 ; 2 uses
  store float %i.en, ptr %.065.i311.prol, align 4, !tbaa !12
  %prol.iter483.next = add i32 %prol.iter483, 1   ; 2 uses
  %prol.iter483.cmp.not = icmp eq i32 %prol.iter483.next, %xtraiter481
  br i1 %prol.iter483.cmp.not, label %.prol.loopexit480, label %.prol.preheader479, !llvm.loop !50

.prol.loopexit480:                                ; preds = %.prol.preheader479, %.lr.ph.i309
  %.08.i310.unr = phi ptr [ %.val306, %.lr.ph.i309 ], [ %i.ei, %.prol.preheader479 ]
  %.065.i311.unr = phi ptr [ %i.cl, %.lr.ph.i309 ], [ %i.eo, %.prol.preheader479 ]
  %.074.i312.unr = phi i32 [ %i.o, %.lr.ph.i309 ], [ %i.eh, %.prol.preheader479 ]
  %i.ep = icmp ult i32 %i.o, 4
  br i1 %i.ep, label %match_calc.exit314, label %.lr.ph.i309.new

.lr.ph.i309.new:                                  ; preds = %.prol.loopexit480, %.lr.ph.i309.new
  %.08.i310 = phi ptr [ %i.fm, %.lr.ph.i309.new ], [ %.08.i310.unr, %.prol.loopexit480 ] ; 5 uses
  %.065.i311 = phi ptr [ %i.fs, %.lr.ph.i309.new ], [ %.065.i311.unr, %.prol.loopexit480 ] ; 5 uses
  %.074.i312 = phi i32 [ %i.fl, %.lr.ph.i309.new ], [ %.074.i312.unr, %.prol.loopexit480 ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.08.i310, i64 1
  %i.er = load i8, ptr %.08.i310, align 1, !tbaa !11
  %i.es = sext i8 %i.er to i64
  %i.et = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !4
  %i.ev = sitofp i32 %i.eu to float
  %i.ew = getelementptr inbounds nuw i8, ptr %.065.i311, i64 4
  store float %i.ev, ptr %.065.i311, align 4, !tbaa !12
  %i.ex = getelementptr inbounds nuw i8, ptr %.08.i310, i64 2
  %i.ey = load i8, ptr %i.eq, align 1, !tbaa !11
  %i.ez = sext i8 %i.ey to i64
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !4
  %i.fc = sitofp i32 %i.fb to float
  %i.fd = getelementptr inbounds nuw i8, ptr %.065.i311, i64 8
  store float %i.fc, ptr %i.ew, align 4, !tbaa !12
  %i.fe = getelementptr inbounds nuw i8, ptr %.08.i310, i64 3
  %i.ff = load i8, ptr %i.ex, align 1, !tbaa !11
  %i.fg = sext i8 %i.ff to i64
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !4
  %i.fj = sitofp i32 %i.fi to float
  %i.fk = getelementptr inbounds nuw i8, ptr %.065.i311, i64 12
  store float %i.fj, ptr %i.fd, align 4, !tbaa !12
  %i.fl = add nsw i32 %.074.i312, -4              ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.08.i310, i64 4
  %i.fn = load i8, ptr %i.fe, align 1, !tbaa !11
  %i.fo = sext i8 %i.fn to i64
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !4
  %i.fr = sitofp i32 %i.fq to float
  %i.fs = getelementptr inbounds nuw i8, ptr %.065.i311, i64 16
  store float %i.fr, ptr %i.fk, align 4, !tbaa !12
  %.not.i313.3 = icmp eq i32 %i.fl, 0
  br i1 %.not.i313.3, label %match_calc.exit314, label %.lr.ph.i309.new, !llvm.loop !16

match_calc.exit314:                               ; preds = %.prol.loopexit480, %.lr.ph.i309.new, %match_calc.exit
  %i.ft = load float, ptr %i.co, align 4, !tbaa !12 ; 2 uses
  %i.fu = load ptr, ptr @MSalign11.WMMTX, align 8, !tbaa !45 ; 4 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !21 ; 4 uses
  store float %i.ft, ptr %i.fv, align 4, !tbaa !12
  store float %i.ft, ptr %.0269, align 4, !tbaa !12
  %.not327 = icmp sgt i32 %i.l, 0                 ; 3 uses
  br i1 %.not327, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %match_calc.exit314
  %i.fw = add nuw nsw i64 %i.k, 1
  %wide.trip.count = and i64 %i.fw, 4294967295    ; 2 uses
  %i.fx = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter484 = and i64 %i.fx, 1
  %i.fy = icmp eq i64 %wide.trip.count, 2
  br i1 %i.fy, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.fx, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.n, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %bb.n ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.n ]
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv ; 3 uses
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !12
  %i.gb = fadd float %i.ga, %i.b                  ; 2 uses
  store float %i.gb, ptr %i.fz, align 4, !tbaa !12
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %indvars.iv
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !21
  store float %i.gb, ptr %i.gd, align 4, !tbaa !12
  %i.ge = load float, ptr %.0269, align 4, !tbaa !12
  %i.gf = load float, ptr %i.fz, align 4, !tbaa !12 ; 2 uses
  %i.gg = fcmp olt float %i.ge, %i.gf
  br i1 %i.gg, label %bb.l, label %.lr.ph.1

bb.l:                                             ; preds = %.lr.ph
  store float %i.gf, ptr %.0269, align 4, !tbaa !12
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.l
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.next ; 3 uses
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !12
  %i.gj = fadd float %i.gi, %i.b                  ; 2 uses
  store float %i.gj, ptr %i.gh, align 4, !tbaa !12
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %indvars.iv.next
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !21
  store float %i.gj, ptr %i.gl, align 4, !tbaa !12
  %i.gm = load float, ptr %.0269, align 4, !tbaa !12
  %i.gn = load float, ptr %i.gh, align 4, !tbaa !12 ; 2 uses
  %i.go = fcmp olt float %i.gm, %i.gn
  br i1 %i.go, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.1
  store float %i.gn, ptr %.0269, align 4, !tbaa !12
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !51

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.n
  %lcmp.mod485.not = icmp eq i64 %xtraiter484, 0
  br i1 %lcmp.mod485.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod486 = trunc i64 %i.fx to i1
  tail call void @llvm.assume(i1 %lcmp.mod486)
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.epil.init ; 3 uses
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !12
  %i.gr = fadd float %i.gq, %i.b                  ; 2 uses
  store float %i.gr, ptr %i.gp, align 4, !tbaa !12
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %indvars.iv.epil.init
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !21
  store float %i.gr, ptr %i.gt, align 4, !tbaa !12
  %i.gu = load float, ptr %.0269, align 4, !tbaa !12
  %i.gv = load float, ptr %i.gp, align 4, !tbaa !12 ; 2 uses
  %i.gw = fcmp olt float %i.gu, %i.gv
  br i1 %i.gw, label %bb.o, label %._crit_edge

bb.o:                                             ; preds = %.lr.ph.epil.preheader
  store float %i.gv, ptr %.0269, align 4, !tbaa !12
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.o, %.lr.ph.epil.preheader, %match_calc.exit314
  %i.gx = load float, ptr %i.cl, align 4, !tbaa !12
  store float %i.gx, ptr %.0270, align 4, !tbaa !12
  %.not292329 = icmp slt i32 %i.o, 1              ; 2 uses
  br i1 %.not292329, label %._crit_edge336, label %.lr.ph332.preheader

.lr.ph332.preheader:                              ; preds = %._crit_edge
  %i.gy = add nuw nsw i64 %i.n, 1                 ; 2 uses
  %wide.trip.count386.a = and i64 %i.gy, 4294967295 ; 4 uses
  %i.gz = add nsw i64 %wide.trip.count386.a, -1   ; 3 uses
  %xtraiter487.a = and i64 %i.gz, 1
  %i.ha = icmp eq i64 %wide.trip.count386.a, 2
  br i1 %i.ha, label %.lr.ph332.epil.preheader, label %.lr.ph332.preheader.new

.lr.ph332.preheader.new:                          ; preds = %.lr.ph332.preheader
  %unroll_iter490 = and i64 %i.gz, -2
  br label %.lr.ph332

.lr.ph335.unr-lcssa:                              ; preds = %bb.s
  %lcmp.mod488.not.a = icmp eq i64 %xtraiter487.a, 0
  br i1 %lcmp.mod488.not.a, label %.lr.ph335, label %.lr.ph332.epil.preheader

.lr.ph332.epil.preheader:                         ; preds = %.lr.ph335.unr-lcssa, %.lr.ph332.preheader
  %indvars.iv383.epil.init = phi i64 [ 1, %.lr.ph332.preheader ], [ %indvars.iv.next384.1.a, %.lr.ph335.unr-lcssa ] ; 2 uses
  %lcmp.mod489 = trunc i64 %i.gz to i1
  tail call void @llvm.assume(i1 %lcmp.mod489)
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv383.epil.init ; 3 uses
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !12
  %i.hd = fadd float %i.hc, %i.b                  ; 2 uses
  store float %i.hd, ptr %i.hb, align 4, !tbaa !12
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv383.epil.init
  store float %i.hd, ptr %i.he, align 4, !tbaa !12
  %i.hf = load float, ptr %.0270, align 4, !tbaa !12
  %i.hg = load float, ptr %i.hb, align 4, !tbaa !12 ; 2 uses
  %i.hh = fcmp olt float %i.hf, %i.hg
  br i1 %i.hh, label %bb.p, label %.lr.ph335

bb.p:                                             ; preds = %.lr.ph332.epil.preheader
  store float %i.hg, ptr %.0270, align 4, !tbaa !12
  br label %.lr.ph335

.lr.ph335:                                        ; preds = %.lr.ph332.epil.preheader, %bb.p, %.lr.ph335.unr-lcssa
  %i.hi = load ptr, ptr @MSalign11.m, align 8, !tbaa !21 ; 7 uses
  %i.hj = load ptr, ptr @MSalign11.mp, align 8, !tbaa !43 ; 6 uses
  %i.hk = add nuw nsw i64 %i.n, 1
  %wide.trip.count391.a = and i64 %i.hk, 4294967295
  %i.hl = add nsw i64 %wide.trip.count386.a, -1   ; 3 uses
  %min.iters.check = icmp ult i64 %i.hl, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph335
  %i.hm = ptrtoaddr ptr %i.hi to i64
  %i.hn = add i64 %i.hm, 4
  %i.ho = sub i64 %i.hn, %i.cm
  %diff.check = icmp ult i64 %i.ho, 32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.hl, -8                      ; 3 uses
  %i.hp = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hq = or disjoint i64 %index, 1               ; 3 uses
  %i.hr = getelementptr [4 x i8], ptr %i.cl, i64 %i.hq ; 2 uses
  %i.hs = getelementptr i8, ptr %i.hr, i64 -4
  %i.ht = getelementptr i8, ptr %i.hr, i64 12
  %wide.load = load <4 x float>, ptr %i.hs, align 4, !tbaa !12
  %wide.load466 = load <4 x float>, ptr %i.ht, align 4, !tbaa !12
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %i.hq ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  store <4 x float> %wide.load, ptr %i.hu, align 4, !tbaa !12
  store <4 x float> %wide.load466, ptr %i.hv, align 4, !tbaa !12
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.hq ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  store <4 x i32> zeroinitializer, ptr %i.hw, align 4, !tbaa !4
  store <4 x i32> zeroinitializer, ptr %i.hx, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hy = icmp eq i64 %index.next, %n.vec
  br i1 %i.hy, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hl, %n.vec
  br i1 %cmp.n, label %._crit_edge336, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph335, %middle.block
  %indvars.iv388.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph335 ], [ %i.hp, %middle.block ] ; 4 uses
  %i.hz = sub i64 %i.gy, %indvars.iv388.ph
  %xtraiter492.a = and i64 %i.hz, 3               ; 2 uses
  %lcmp.mod493.not.a = icmp eq i64 %xtraiter492.a, 0
  br i1 %lcmp.mod493.not.a, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv388.prol = phi i64 [ %indvars.iv.next389.prol, %scalar.ph.prol ], [ %indvars.iv388.ph, %scalar.ph.preheader ] ; 4 uses
  %prol.iter494.a = phi i64 [ %prol.iter494.next.a, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ia = getelementptr [4 x i8], ptr %i.cl, i64 %indvars.iv388.prol
  %i.ib = getelementptr i8, ptr %i.ia, i64 -4
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !12
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv388.prol
  store float %i.ic, ptr %i.id, align 4, !tbaa !12
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv388.prol
  store i32 0, ptr %i.ie, align 4, !tbaa !4
  %indvars.iv.next389.prol = add nuw nsw i64 %indvars.iv388.prol, 1 ; 2 uses
  %prol.iter494.next.a = add i64 %prol.iter494.a, 1 ; 2 uses
  %prol.iter494.cmp.not.a = icmp eq i64 %prol.iter494.next.a, %xtraiter492.a
  br i1 %prol.iter494.cmp.not.a, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !53

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv388.unr = phi i64 [ %indvars.iv388.ph, %scalar.ph.preheader ], [ %indvars.iv.next389.prol, %scalar.ph.prol ]
  %i.if = sub nsw i64 %indvars.iv388.ph, %wide.trip.count386.a
  %i.ig = icmp ugt i64 %i.if, -4
  br i1 %i.ig, label %._crit_edge336, label %scalar.ph

.lr.ph332:                                        ; preds = %bb.s, %.lr.ph332.preheader.new
  %indvars.iv383.a = phi i64 [ 1, %.lr.ph332.preheader.new ], [ %indvars.iv.next384.1.a, %bb.s ] ; 4 uses
  %niter491 = phi i64 [ 0, %.lr.ph332.preheader.new ], [ %niter491.next.1, %bb.s ]
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv383.a ; 3 uses
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !12
  %i.ij = fadd float %i.ii, %i.b                  ; 2 uses
  store float %i.ij, ptr %i.ih, align 4, !tbaa !12
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv383.a
  store float %i.ij, ptr %i.ik, align 4, !tbaa !12
  %i.il = load float, ptr %.0270, align 4, !tbaa !12
  %i.im = load float, ptr %i.ih, align 4, !tbaa !12 ; 2 uses
  %i.in = fcmp olt float %i.il, %i.im
  br i1 %i.in, label %bb.q, label %.lr.ph332.1

bb.q:                                             ; preds = %.lr.ph332
  store float %i.im, ptr %.0270, align 4, !tbaa !12
  br label %.lr.ph332.1

.lr.ph332.1:                                      ; preds = %.lr.ph332, %bb.q
  %indvars.iv.next384.a = add nuw nsw i64 %indvars.iv383.a, 1 ; 2 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv.next384.a ; 3 uses
  %i.ip = load float, ptr %i.io, align 4, !tbaa !12
  %i.iq = fadd float %i.ip, %i.b                  ; 2 uses
  store float %i.iq, ptr %i.io, align 4, !tbaa !12
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv.next384.a
  store float %i.iq, ptr %i.ir, align 4, !tbaa !12
  %i.is = load float, ptr %.0270, align 4, !tbaa !12
  %i.it = load float, ptr %i.io, align 4, !tbaa !12 ; 2 uses
  %i.iu = fcmp olt float %i.is, %i.it
  br i1 %i.iu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph332.1
  store float %i.it, ptr %.0270, align 4, !tbaa !12
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph332.1
  %indvars.iv.next384.1.a = add nuw nsw i64 %indvars.iv383.a, 2 ; 2 uses
  %niter491.next.1 = add i64 %niter491, 2         ; 2 uses
  %niter491.ncmp.1 = icmp eq i64 %niter491.next.1, %unroll_iter490
  br i1 %niter491.ncmp.1, label %.lr.ph335.unr-lcssa, label %.lr.ph332, !llvm.loop !54

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv388.a = phi i64 [ %indvars.iv.next389.3, %scalar.ph ], [ %indvars.iv388.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.iv = getelementptr [4 x i8], ptr %i.cl, i64 %indvars.iv388.a
  %i.iw = getelementptr i8, ptr %i.iv, i64 -4
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !12
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv388.a
  store float %i.ix, ptr %i.iy, align 4, !tbaa !12
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv388.a
  store i32 0, ptr %i.iz, align 4, !tbaa !4
  %indvars.iv.next389.a = add nuw nsw i64 %indvars.iv388.a, 1 ; 3 uses
  %i.ja = getelementptr [4 x i8], ptr %i.cl, i64 %indvars.iv.next389.a
  %i.jb = getelementptr i8, ptr %i.ja, i64 -4
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !12
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv.next389.a
  store float %i.jc, ptr %i.jd, align 4, !tbaa !12
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv.next389.a
  store i32 0, ptr %i.je, align 4, !tbaa !4
  %indvars.iv.next389.1 = add nuw nsw i64 %indvars.iv388.a, 2 ; 3 uses
  %i.jf = getelementptr [4 x i8], ptr %i.cl, i64 %indvars.iv.next389.1
  %i.jg = getelementptr i8, ptr %i.jf, i64 -4
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !12
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv.next389.1
  store float %i.jh, ptr %i.ji, align 4, !tbaa !12
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv.next389.1
  store i32 0, ptr %i.jj, align 4, !tbaa !4
  %indvars.iv.next389.2 = add nuw nsw i64 %indvars.iv388.a, 3 ; 3 uses
  %i.jk = getelementptr [4 x i8], ptr %i.cl, i64 %indvars.iv.next389.2
  %i.jl = getelementptr i8, ptr %i.jk, i64 -4
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !12
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv.next389.2
  store float %i.jm, ptr %i.jn, align 4, !tbaa !12
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv.next389.2
  store i32 0, ptr %i.jo, align 4, !tbaa !4
  %indvars.iv.next389.3 = add nuw nsw i64 %indvars.iv388.a, 4 ; 2 uses
  %exitcond392.not.3 = icmp eq i64 %indvars.iv.next389.3, %wide.trip.count391.a
  br i1 %exitcond392.not.3, label %._crit_edge336, label %scalar.ph, !llvm.loop !55

._crit_edge336:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge
  %i.jp = add nsw i32 %i.o, -1                    ; 4 uses
  %i.jq = sext i32 %i.jp to i64                   ; 2 uses
  %i.jr = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.jq
  %i.js = load float, ptr %i.jr, align 4, !tbaa !12
  %i.jt = load ptr, ptr @MSalign11.lastverticalw, align 8, !tbaa !21
  store float %i.js, ptr %i.jt, align 4, !tbaa !12
  br i1 %.not327, label %.lr.ph356, label %.preheader324

.lr.ph356:                                        ; preds = %._crit_edge336
  %sext458 = shl i64 %i.n, 32
  %i.ju = ashr exact i64 %sext458, 32
  %i.jv = add i64 %i.n, 1
  %i.jw = add nuw nsw i64 %i.k, 1
  %wide.trip.count401.a = and i64 %i.jw, 4294967295
  %wide.trip.count396 = and i64 %i.jv, 4294967295
  %xtraiter497 = and i32 %i.o, 3                  ; 2 uses
  %lcmp.mod498.not = icmp eq i32 %xtraiter497, 0
  %i.jx = icmp ult i32 %i.o, 4
  br label %bb.t

.lr.ph363:                                        ; preds = %._crit_edge349
  %wide.trip.count406.a = and i64 %i.k, 2147483647
  %xtraiter500 = and i64 %i.k, 1
  %i.jy = icmp eq i64 %wide.trip.count406.a, 1
  br i1 %i.jy, label %.epil.preheader, label %.lr.ph363.new

.lr.ph363.new:                                    ; preds = %.lr.ph363
  %unroll_iter506 = and i64 %i.k, 2147483646
  br label %bb.af

bb.t:                                             ; preds = %.lr.ph356, %._crit_edge349
  %indvars.iv398.a = phi i64 [ 1, %.lr.ph356 ], [ %indvars.iv.next399.a, %._crit_edge349 ] ; 9 uses
  %.0260353 = phi float [ 0.000000e+00, %.lr.ph356 ], [ %.1261.lcssa, %._crit_edge349 ]
  %.0271352 = phi ptr [ %i.cn, %.lr.ph356 ], [ %.0272351, %._crit_edge349 ] ; 9 uses
  %.0272351 = phi ptr [ %i.cl, %.lr.ph356 ], [ %.0271352, %._crit_edge349 ] ; 4 uses
  %i.jz = load ptr, ptr @MSalign11.initverticalw, align 8, !tbaa !21 ; 2 uses
  %i.ka = add nsw i64 %indvars.iv398.a, -1        ; 2 uses
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.jz, i64 %i.ka
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !12
  store float %i.kc, ptr %.0272351, align 4, !tbaa !12
  br i1 %.not3.i308, label %match_calc.exit321, label %.lr.ph.i316

.lr.ph.i316:                                      ; preds = %bb.t
  %.val303 = load ptr, ptr %1, align 8, !tbaa !8  ; 2 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !8
  %i.kd = getelementptr inbounds nuw i8, ptr %.val, i64 %indvars.iv398.a
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !11
  %i.kf = sext i8 %i.ke to i64
  %i.kg = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.kf ; 5 uses
  br i1 %lcmp.mod498.not, label %.prol.loopexit496, label %.prol.preheader495

.prol.preheader495:                               ; preds = %.lr.ph.i316, %.prol.preheader495
  %.08.i317.prol = phi ptr [ %i.ki, %.prol.preheader495 ], [ %.val303, %.lr.ph.i316 ] ; 2 uses
  %.065.i318.prol = phi ptr [ %i.ko, %.prol.preheader495 ], [ %.0271352, %.lr.ph.i316 ] ; 2 uses
  %.074.i319.prol = phi i32 [ %i.kh, %.prol.preheader495 ], [ %i.o, %.lr.ph.i316 ]
  %prol.iter499 = phi i32 [ %prol.iter499.next, %.prol.preheader495 ], [ 0, %.lr.ph.i316 ]
  %i.kh = add nsw i32 %.074.i319.prol, -1         ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.08.i317.prol, i64 1 ; 2 uses
  %i.kj = load i8, ptr %.08.i317.prol, align 1, !tbaa !11
  %i.kk = sext i8 %i.kj to i64
  %i.kl = getelementptr inbounds [4 x i8], ptr %i.kg, i64 %i.kk
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !4
  %i.kn = sitofp i32 %i.km to float
  %i.ko = getelementptr inbounds nuw i8, ptr %.065.i318.prol, i64 4 ; 2 uses
  store float %i.kn, ptr %.065.i318.prol, align 4, !tbaa !12
  %prol.iter499.next = add i32 %prol.iter499, 1   ; 2 uses
  %prol.iter499.cmp.not = icmp eq i32 %prol.iter499.next, %xtraiter497
  br i1 %prol.iter499.cmp.not, label %.prol.loopexit496, label %.prol.preheader495, !llvm.loop !56

.prol.loopexit496:                                ; preds = %.prol.preheader495, %.lr.ph.i316
  %.08.i317.unr = phi ptr [ %.val303, %.lr.ph.i316 ], [ %i.ki, %.prol.preheader495 ]
  %.065.i318.unr = phi ptr [ %.0271352, %.lr.ph.i316 ], [ %i.ko, %.prol.preheader495 ]
  %.074.i319.unr = phi i32 [ %i.o, %.lr.ph.i316 ], [ %i.kh, %.prol.preheader495 ]
  br i1 %i.jx, label %match_calc.exit321, label %.lr.ph.i316.new

.lr.ph.i316.new:                                  ; preds = %.prol.loopexit496, %.lr.ph.i316.new
  %.08.i317 = phi ptr [ %i.ll, %.lr.ph.i316.new ], [ %.08.i317.unr, %.prol.loopexit496 ] ; 5 uses
  %.065.i318 = phi ptr [ %i.lr, %.lr.ph.i316.new ], [ %.065.i318.unr, %.prol.loopexit496 ] ; 5 uses
  %.074.i319 = phi i32 [ %i.lk, %.lr.ph.i316.new ], [ %.074.i319.unr, %.prol.loopexit496 ]
  %i.kp = getelementptr inbounds nuw i8, ptr %.08.i317, i64 1
  %i.kq = load i8, ptr %.08.i317, align 1, !tbaa !11
  %i.kr = sext i8 %i.kq to i64
  %i.ks = getelementptr inbounds [4 x i8], ptr %i.kg, i64 %i.kr
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !4
  %i.ku = sitofp i32 %i.kt to float
  %i.kv = getelementptr inbounds nuw i8, ptr %.065.i318, i64 4
  store float %i.ku, ptr %.065.i318, align 4, !tbaa !12
  %i.kw = getelementptr inbounds nuw i8, ptr %.08.i317, i64 2
  %i.kx = load i8, ptr %i.kp, align 1, !tbaa !11
  %i.ky = sext i8 %i.kx to i64
  %i.kz = getelementptr inbounds [4 x i8], ptr %i.kg, i64 %i.ky
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !4
  %i.lb = sitofp i32 %i.la to float
  %i.lc = getelementptr inbounds nuw i8, ptr %.065.i318, i64 8
  store float %i.lb, ptr %i.kv, align 4, !tbaa !12
  %i.ld = getelementptr inbounds nuw i8, ptr %.08.i317, i64 3
  %i.le = load i8, ptr %i.kw, align 1, !tbaa !11
  %i.lf = sext i8 %i.le to i64
  %i.lg = getelementptr inbounds [4 x i8], ptr %i.kg, i64 %i.lf
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !4
  %i.li = sitofp i32 %i.lh to float
  %i.lj = getelementptr inbounds nuw i8, ptr %.065.i318, i64 12
  store float %i.li, ptr %i.lc, align 4, !tbaa !12
  %i.lk = add nsw i32 %.074.i319, -4              ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.08.i317, i64 4
  %i.lm = load i8, ptr %i.ld, align 1, !tbaa !11
  %i.ln = sext i8 %i.lm to i64
  %i.lo = getelementptr inbounds [4 x i8], ptr %i.kg, i64 %i.ln
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !4
  %i.lq = sitofp i32 %i.lp to float
  %i.lr = getelementptr inbounds nuw i8, ptr %.065.i318, i64 16
  store float %i.lq, ptr %i.lj, align 4, !tbaa !12
  %.not.i320.3 = icmp eq i32 %i.lk, 0
  br i1 %.not.i320.3, label %match_calc.exit321, label %.lr.ph.i316.new, !llvm.loop !16

match_calc.exit321:                               ; preds = %.prol.loopexit496, %.lr.ph.i316.new, %bb.t
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %indvars.iv398.a
  %i.lt = load float, ptr %i.ls, align 4, !tbaa !12 ; 3 uses
  store float %i.lt, ptr %.0271352, align 4, !tbaa !12
  %i.lu = load float, ptr %.0272351, align 4, !tbaa !12
  store float %i.lu, ptr @MSalign11.mi, align 4, !tbaa !12
  store i32 0, ptr @MSalign11.mpi, align 4, !tbaa !4
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %.0270, i64 %indvars.iv398.a ; 3 uses
  store float %i.lt, ptr %i.lv, align 4, !tbaa !12
  %i.lw = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.lx = load float, ptr %.0271352, align 4, !tbaa !12
  %i.ly = fpext float %i.lx to double
  %i.lz = fpext float %i.lt to double
  %i.ma = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lw, ptr noundef nonnull @.str.3, double noundef %i.ly, double noundef %i.lz) #11 ; 0 uses
  br i1 %.not292329, label %._crit_edge349, label %.lr.ph348

.lr.ph348:                                        ; preds = %match_calc.exit321
  %i.mb = load ptr, ptr @MSalign11.ijp, align 8, !tbaa !47
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %indvars.iv398.a
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !43
  %i.me = load ptr, ptr @MSalign11.m, align 8, !tbaa !21
  %i.mf = load ptr, ptr @MSalign11.mp, align 8, !tbaa !43
  %MSalign11.mpi.promoted = load i32, ptr @MSalign11.mpi, align 4
  %MSalign11.mi.promoted = load float, ptr @MSalign11.mi, align 4
  %i.mg = load ptr, ptr @MSalign11.WMMTX, align 8, !tbaa !45
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.mg, i64 %indvars.iv398.a
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !21
  %i.mj = trunc nuw nsw i64 %indvars.iv398.a to i32
  %i.mk = trunc nuw nsw i64 %i.ka to i32
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph348, %.critedge
  %indvars.iv393 = phi i64 [ 1, %.lr.ph348 ], [ %indvars.iv.next394.a, %.critedge ] ; 6 uses
  %.pn = phi ptr [ %i.md, %.lr.ph348 ], [ %.0259347, %.critedge ]
  %.pn380 = phi ptr [ %i.me, %.lr.ph348 ], [ %.0258346, %.critedge ]
  %.pn381 = phi ptr [ %i.mf, %.lr.ph348 ], [ %.0255345, %.critedge ]
  %.0271352.pn = phi ptr [ %.0271352, %.lr.ph348 ], [ %.0256344, %.critedge ]
  %.0257342 = phi ptr [ %.0272351, %.lr.ph348 ], [ %i.nn, %.critedge ] ; 2 uses
  %i.ml = phi float [ %MSalign11.mi.promoted, %.lr.ph348 ], [ %i.mv, %.critedge ] ; 3 uses
  %i.mm = phi i32 [ %MSalign11.mpi.promoted, %.lr.ph348 ], [ %i.mu, %.critedge ] ; 2 uses
  %.0256344 = getelementptr inbounds nuw i8, ptr %.0271352.pn, i64 4 ; 5 uses
  %.0255345 = getelementptr inbounds nuw i8, ptr %.pn381, i64 4 ; 3 uses
  %.0258346 = getelementptr inbounds nuw i8, ptr %.pn380, i64 4 ; 3 uses
  %.0259347 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 3 uses
  %i.mn = load float, ptr %.0257342, align 4, !tbaa !12 ; 7 uses
  %i.mo = fadd float %i.ml, %i.b                  ; 2 uses
  %i.mp = fcmp ogt float %i.mo, %i.mn             ; 2 uses
  %i.mq = trunc nuw nsw i64 %indvars.iv393 to i32
  %.neg = sub nsw i32 %i.mm, %i.mq
  %storemerge = select i1 %i.mp, i32 %.neg, i32 0
  %.2262 = select i1 %i.mp, float %i.mo, float %i.mn ; 2 uses
  store i32 %storemerge, ptr %.0259347, align 4, !tbaa !4
  %i.mr = fcmp ult float %i.mn, %i.ml
  br i1 %i.mr, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store float %i.mn, ptr @MSalign11.mi, align 4, !tbaa !12
  %i.ms = trunc i64 %indvars.iv393 to i32
  %i.mt = add i32 %i.ms, -1                       ; 2 uses
  store i32 %i.mt, ptr @MSalign11.mpi, align 4, !tbaa !4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.mu = phi i32 [ %i.mt, %bb.v ], [ %i.mm, %bb.u ]
  %i.mv = phi float [ %i.mn, %bb.v ], [ %i.ml, %bb.u ]
  %i.mw = load float, ptr %.0258346, align 4, !tbaa !12 ; 2 uses
  %i.mx = fadd float %i.mw, %i.b                  ; 2 uses
  %i.my = fcmp ogt float %i.mx, %.2262
  br i1 %i.my, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.mz = load i32, ptr %.0255345, align 4, !tbaa !4
  %i.na = sub nsw i32 %i.mj, %i.mz
  store i32 %i.na, ptr %.0259347, align 4, !tbaa !4
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.3263 = phi float [ %i.mx, %bb.x ], [ %.2262, %bb.w ] ; 2 uses
  %i.nb = fcmp ult float %i.mn, %i.mw
  br i1 %i.nb, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store float %i.mn, ptr %.0258346, align 4, !tbaa !12
  store i32 %i.mk, ptr %.0255345, align 4, !tbaa !4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.nc = load float, ptr %.0256344, align 4, !tbaa !12
  %i.nd = fadd float %.3263, %i.nc                ; 2 uses
  store float %i.nd, ptr %.0256344, align 4, !tbaa !12
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %indvars.iv393
  store float %i.nd, ptr %i.ne, align 4, !tbaa !12
  %i.nf = icmp slt i64 %indvars.iv393, %i.ju
  br i1 %i.nf, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %bb.aa
  %i.ng = load float, ptr %i.lv, align 4, !tbaa !12
  %i.nh = load float, ptr %.0256344, align 4, !tbaa !12 ; 3 uses
  %i.ni = fcmp olt float %i.ng, %i.nh
  br i1 %i.ni, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store float %i.nh, ptr %i.lv, align 4, !tbaa !12
  %.pre430 = load float, ptr %.0256344, align 4, !tbaa !12
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.nj = phi float [ %i.nh, %bb.ab ], [ %.pre430, %bb.ac ] ; 2 uses
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %.0269, i64 %indvars.iv393 ; 2 uses
  %i.nl = load float, ptr %i.nk, align 4, !tbaa !12
  %i.nm = fcmp olt float %i.nl, %i.nj
  br i1 %i.nm, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %bb.ad
  store float %i.nj, ptr %i.nk, align 4, !tbaa !12
  br label %.critedge

.critedge:                                        ; preds = %bb.aa, %bb.ae, %bb.ad
  %i.nn = getelementptr inbounds nuw i8, ptr %.0257342, i64 4
  %indvars.iv.next394.a = add nuw nsw i64 %indvars.iv393, 1 ; 2 uses
  %exitcond397.not.a = icmp eq i64 %indvars.iv.next394.a, %wide.trip.count396
  br i1 %exitcond397.not.a, label %._crit_edge349, label %bb.u, !llvm.loop !57

._crit_edge349:                                   ; preds = %.critedge, %match_calc.exit321
  %.1261.lcssa = phi float [ %.0260353, %match_calc.exit321 ], [ %.3263, %.critedge ] ; 3 uses
  %i.no = getelementptr inbounds [4 x i8], ptr %.0271352, i64 %i.jq
  %i.np = load float, ptr %i.no, align 4, !tbaa !12
  %i.nq = load ptr, ptr @MSalign11.lastverticalw, align 8, !tbaa !21 ; 4 uses
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %indvars.iv398.a
  store float %i.np, ptr %i.nr, align 4, !tbaa !12
  %indvars.iv.next399.a = add nuw nsw i64 %indvars.iv398.a, 1 ; 2 uses
  %exitcond402.not = icmp eq i64 %indvars.iv.next399.a, %wide.trip.count401.a
  br i1 %exitcond402.not, label %.lr.ph363, label %bb.t, !llvm.loop !58

.preheader324.loopexit.unr-lcssa:                 ; preds = %bb.af
  %lcmp.mod501.not = icmp eq i64 %xtraiter500, 0
  br i1 %lcmp.mod501.not, label %.preheader324, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader324.loopexit.unr-lcssa, %.lr.ph363
  %indvars.iv403.epil.init.a = phi i64 [ 0, %.lr.ph363 ], [ %indvars.iv.next404.1.a, %.preheader324.loopexit.unr-lcssa ] ; 2 uses
  %.0247361.epil.init = phi i32 [ 0, %.lr.ph363 ], [ %.1248.1, %.preheader324.loopexit.unr-lcssa ]
  %.0251360.epil.init = phi i32 [ 0, %.lr.ph363 ], [ %.1252.1, %.preheader324.loopexit.unr-lcssa ]
  %.0264359.epil.init = phi float [ -9.999000e+02, %.lr.ph363 ], [ %.1265.1, %.preheader324.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod505 = trunc i64 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod505)
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %indvars.iv403.epil.init.a
  %i.nt = load float, ptr %i.ns, align 4, !tbaa !12 ; 2 uses
  %i.nu = fcmp ogt float %i.nt, %.0264359.epil.init ; 3 uses
  %.1265.epil = select i1 %i.nu, float %i.nt, float %.0264359.epil.init
  %.1252.epil = select i1 %i.nu, i32 %i.jp, i32 %.0251360.epil.init
  %i.nv = trunc nuw nsw i64 %indvars.iv403.epil.init.a to i32
  %.1248.epil = select i1 %i.nu, i32 %i.nv, i32 %.0247361.epil.init
  br label %.preheader324

.preheader324:                                    ; preds = %.epil.preheader, %.preheader324.loopexit.unr-lcssa, %._crit_edge336
  %.0260.lcssa462 = phi float [ 0.000000e+00, %._crit_edge336 ], [ %.1261.lcssa, %.preheader324.loopexit.unr-lcssa ], [ %.1261.lcssa, %.epil.preheader ]
  %.0272.lcssa461 = phi ptr [ %i.cl, %._crit_edge336 ], [ %.0271352, %.preheader324.loopexit.unr-lcssa ], [ %.0271352, %.epil.preheader ] ; 3 uses
  %.0264.lcssa = phi float [ -9.999000e+02, %._crit_edge336 ], [ %.1265.1, %.preheader324.loopexit.unr-lcssa ], [ %.1265.epil, %.epil.preheader ] ; 3 uses
  %.0251.lcssa = phi i32 [ 0, %._crit_edge336 ], [ %.1252.1, %.preheader324.loopexit.unr-lcssa ], [ %.1252.epil, %.epil.preheader ] ; 3 uses
  %.0247.lcssa = phi i32 [ 0, %._crit_edge336 ], [ %.1248.1, %.preheader324.loopexit.unr-lcssa ], [ %.1248.epil, %.epil.preheader ] ; 3 uses
  %3 = icmp sgt i32 %i.o, 0                       ; 2 uses
  br i1 %3, label %.lr.ph371.a, label %.preheader323

.lr.ph371.a:                                      ; preds = %.preheader324
  %i.nw = add nsw i32 %i.l, -1                    ; 2 uses
  %wide.trip.count411.a = and i64 %i.n, 2147483647
  %xtraiter509 = and i64 %i.n, 1
  %i.nx = icmp eq i64 %wide.trip.count411.a, 1
  br i1 %i.nx, label %.epil.preheader508, label %.lr.ph371.new

.lr.ph371.new:                                    ; preds = %.lr.ph371.a
  %unroll_iter515.a = and i64 %i.n, 2147483646
  br label %bb.ag

bb.af:                                            ; preds = %bb.af, %.lr.ph363.new
  %indvars.iv403.a = phi i64 [ 0, %.lr.ph363.new ], [ %indvars.iv.next404.1.a, %bb.af ] ; 4 uses
  %.0247361 = phi i32 [ 0, %.lr.ph363.new ], [ %.1248.1, %bb.af ]
  %.0251360 = phi i32 [ 0, %.lr.ph363.new ], [ %.1252.1, %bb.af ]
  %.0264359 = phi float [ -9.999000e+02, %.lr.ph363.new ], [ %.1265.1, %bb.af ] ; 2 uses
  %niter507 = phi i64 [ 0, %.lr.ph363.new ], [ %niter507.next.1, %bb.af ]
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %indvars.iv403.a
  %i.nz = load float, ptr %i.ny, align 4, !tbaa !12 ; 2 uses
  %i.oa = fcmp ogt float %i.nz, %.0264359         ; 3 uses
  %.1265 = select i1 %i.oa, float %i.nz, float %.0264359 ; 2 uses
  %i.ob = trunc nuw nsw i64 %indvars.iv403.a to i32
  %.1248 = select i1 %i.oa, i32 %i.ob, i32 %.0247361
  %indvars.iv.next404.a = or disjoint i64 %indvars.iv403.a, 1 ; 2 uses
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %indvars.iv.next404.a
  %i.od = load float, ptr %i.oc, align 4, !tbaa !12 ; 2 uses
  %i.oe = fcmp ogt float %i.od, %.1265            ; 3 uses
  %.1265.1 = select i1 %i.oe, float %i.od, float %.1265 ; 3 uses
  %i.of = or i1 %i.oe, %i.oa
  %.1252.1 = select i1 %i.of, i32 %i.jp, i32 %.0251360 ; 3 uses
  %i.og = trunc nuw nsw i64 %indvars.iv.next404.a to i32
  %.1248.1 = select i1 %i.oe, i32 %i.og, i32 %.1248 ; 3 uses
  %indvars.iv.next404.1.a = add nuw nsw i64 %indvars.iv403.a, 2 ; 2 uses
  %niter507.next.1 = add i64 %niter507, 2         ; 2 uses
  %niter507.ncmp.1 = icmp eq i64 %niter507.next.1, %unroll_iter506
  br i1 %niter507.ncmp.1, label %.preheader324.loopexit.unr-lcssa, label %bb.af, !llvm.loop !59

.preheader323.loopexit.unr-lcssa:                 ; preds = %bb.ag
  %lcmp.mod510.not = icmp eq i64 %xtraiter509, 0
  br i1 %lcmp.mod510.not, label %.preheader323, label %.epil.preheader508

.epil.preheader508:                               ; preds = %.preheader323.loopexit.unr-lcssa, %.lr.ph371.a
  %indvars.iv408.epil.init = phi i64 [ 0, %.lr.ph371.a ], [ %indvars.iv.next409.1, %.preheader323.loopexit.unr-lcssa ] ; 2 uses
  %.2249369.epil.init = phi i32 [ %.0247.lcssa, %.lr.ph371.a ], [ %.3250.1, %.preheader323.loopexit.unr-lcssa ]
  %.2253368.epil.init = phi i32 [ %.0251.lcssa, %.lr.ph371.a ], [ %.3254.1, %.preheader323.loopexit.unr-lcssa ]
  %.2266367.epil.init = phi float [ %.0264.lcssa, %.lr.ph371.a ], [ %.3267.1, %.preheader323.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod514.a = trunc i64 %i.n to i1
  tail call void @llvm.assume(i1 %lcmp.mod514.a)
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %.0272.lcssa461, i64 %indvars.iv408.epil.init
  %i.oi = load float, ptr %i.oh, align 4, !tbaa !12 ; 2 uses
  %i.oj = fcmp ogt float %i.oi, %.2266367.epil.init ; 3 uses
  %.3267.epil = select i1 %i.oj, float %i.oi, float %.2266367.epil.init
  %i.ok = trunc nuw nsw i64 %indvars.iv408.epil.init to i32
  %.3254.epil = select i1 %i.oj, i32 %i.ok, i32 %.2253368.epil.init
  %.3250.epil = select i1 %i.oj, i32 %i.nw, i32 %.2249369.epil.init
  br label %.preheader323

.preheader323:                                    ; preds = %.epil.preheader508, %.preheader323.loopexit.unr-lcssa, %.preheader324
  %.2266.lcssa = phi float [ %.0264.lcssa, %.preheader324 ], [ %.3267.1, %.preheader323.loopexit.unr-lcssa ], [ %.3267.epil, %.epil.preheader508 ] ; 3 uses
  %.2253.lcssa = phi i32 [ %.0251.lcssa, %.preheader324 ], [ %.3254.1, %.preheader323.loopexit.unr-lcssa ], [ %.3254.epil, %.epil.preheader508 ] ; 3 uses
  %.2249.lcssa = phi i32 [ %.0247.lcssa, %.preheader324 ], [ %.3250.1, %.preheader323.loopexit.unr-lcssa ], [ %.3250.epil, %.epil.preheader508 ] ; 3 uses
  br i1 %.not327, label %.lr.ph376.preheader, label %.preheader

.lr.ph376.preheader:                              ; preds = %.preheader323
  %wide.trip.count416.a = and i64 %i.k, 2147483647
  br label %.lr.ph376

bb.ag:                                            ; preds = %bb.ag, %.lr.ph371.new
  %indvars.iv408.a = phi i64 [ 0, %.lr.ph371.new ], [ %indvars.iv.next409.1, %bb.ag ] ; 4 uses
  %.2249369 = phi i32 [ %.0247.lcssa, %.lr.ph371.new ], [ %.3250.1, %bb.ag ]
  %.2253368 = phi i32 [ %.0251.lcssa, %.lr.ph371.new ], [ %.3254.1, %bb.ag ]
  %.2266367 = phi float [ %.0264.lcssa, %.lr.ph371.new ], [ %.3267.1, %bb.ag ] ; 2 uses
  %niter516.a = phi i64 [ 0, %.lr.ph371.new ], [ %niter516.next.1, %bb.ag ]
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %.0272.lcssa461, i64 %indvars.iv408.a
  %i.om = load float, ptr %i.ol, align 4, !tbaa !12 ; 2 uses
  %i.on = fcmp ogt float %i.om, %.2266367         ; 3 uses
  %.3267 = select i1 %i.on, float %i.om, float %.2266367 ; 2 uses
  %i.oo = trunc nuw nsw i64 %indvars.iv408.a to i32
  %.3254 = select i1 %i.on, i32 %i.oo, i32 %.2253368
  %indvars.iv.next409.a = or disjoint i64 %indvars.iv408.a, 1 ; 2 uses
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %.0272.lcssa461, i64 %indvars.iv.next409.a
  %i.oq = load float, ptr %i.op, align 4, !tbaa !12 ; 2 uses
  %i.or = fcmp ogt float %i.oq, %.3267            ; 3 uses
  %.3267.1 = select i1 %i.or, float %i.oq, float %.3267 ; 3 uses
  %i.os = trunc nuw nsw i64 %indvars.iv.next409.a to i32
  %.3254.1 = select i1 %i.or, i32 %i.os, i32 %.3254 ; 3 uses
  %i.ot = or i1 %i.or, %i.on
  %.3250.1 = select i1 %i.ot, i32 %i.nw, i32 %.2249369 ; 3 uses
  %indvars.iv.next409.1 = add nuw nsw i64 %indvars.iv408.a, 2 ; 2 uses
  %niter516.next.1 = add i64 %niter516.a, 2       ; 2 uses
  %niter516.ncmp.1 = icmp eq i64 %niter516.next.1, %unroll_iter515.a
  br i1 %niter516.ncmp.1, label %.preheader323.loopexit.unr-lcssa, label %bb.ag, !llvm.loop !60

.preheader:                                       ; preds = %.lr.ph376, %.preheader323
  br i1 %3, label %.lr.ph378.preheader, label %._crit_edge379

.lr.ph378.preheader:                              ; preds = %.preheader
  %wide.trip.count421 = and i64 %i.n, 2147483647
  br label %.lr.ph378

.lr.ph376:                                        ; preds = %.lr.ph376.preheader, %.lr.ph376
  %indvars.iv413.a = phi i64 [ 0, %.lr.ph376.preheader ], [ %indvars.iv.next414.a, %.lr.ph376 ] ; 3 uses
  %i.ou = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %.0270, i64 %indvars.iv413.a
  %i.ow = load float, ptr %i.ov, align 4, !tbaa !12
  %i.ox = fpext float %i.ow to double
  %i.oy = trunc nuw nsw i64 %indvars.iv413.a to i32
  %i.oz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ou, ptr noundef nonnull @.str.4, i32 noundef %i.oy, double noundef %i.ox) #11 ; 0 uses
  %indvars.iv.next414.a = add nuw nsw i64 %indvars.iv413.a, 1 ; 2 uses
  %exitcond417.not.a = icmp eq i64 %indvars.iv.next414.a, %wide.trip.count416.a
  br i1 %exitcond417.not.a, label %.preheader, label %.lr.ph376, !llvm.loop !61

.lr.ph378:                                        ; preds = %.lr.ph378.preheader, %.lr.ph378
  %indvars.iv418 = phi i64 [ 0, %.lr.ph378.preheader ], [ %indvars.iv.next419, %.lr.ph378 ] ; 3 uses
  %i.pa = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %.0269, i64 %indvars.iv418
  %i.pc = load float, ptr %i.pb, align 4, !tbaa !12
  %i.pd = fpext float %i.pc to double
  %i.pe = trunc nuw nsw i64 %indvars.iv418 to i32
  %i.pf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.pa, ptr noundef nonnull @.str.5, i32 noundef %i.pe, double noundef %i.pd) #11 ; 0 uses
  %indvars.iv.next419 = add nuw nsw i64 %indvars.iv418, 1 ; 2 uses
  %exitcond422.not = icmp eq i64 %indvars.iv.next419, %wide.trip.count421
  br i1 %exitcond422.not, label %._crit_edge379, label %.lr.ph378, !llvm.loop !62

._crit_edge379:                                   ; preds = %.lr.ph378, %.preheader
  %i.pg = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.ph = fpext float %.2266.lcssa to double
  %i.pi = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.pg, ptr noundef nonnull @.str.6, double noundef %i.ph, i32 noundef %.2249.lcssa, i32 noundef %.2253.lcssa) #11 ; 0 uses
  %i.pj = add nsw i32 %i.l, -1
  %i.pk = icmp eq i32 %.2249.lcssa, %i.pj
  %i.pl = icmp eq i32 %.2253.lcssa, %i.jp
  %or.cond302 = select i1 %i.pk, i1 %i.pl, i1 false
  %i.pm = fadd float %.2266.lcssa, %i.b
  %.4268 = select i1 %or.cond302, float %.2266.lcssa, float %i.pm ; 2 uses
  %i.pn = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.po = fpext float %.4268 to double
  %i.pp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.pn, ptr noundef nonnull @.str.7, double noundef %i.po) #11 ; 0 uses
  %i.pq = add i64 %i.n, %i.k
  %i.pr = load ptr, ptr @MSalign11.mseq1, align 8, !tbaa !40 ; 3 uses
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !8
  %sext = shl i64 %i.pq, 32
  %i.pt = ashr exact i64 %sext, 32                ; 4 uses
  %i.pu = getelementptr inbounds i8, ptr %i.ps, i64 %i.pt ; 2 uses
  store ptr %i.pu, ptr %i.pr, align 8, !tbaa !8
  store i8 0, ptr %i.pu, align 1, !tbaa !11
  %i.pv = load ptr, ptr @MSalign11.mseq2, align 8, !tbaa !40 ; 3 uses
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !8
  %i.px = getelementptr inbounds i8, ptr %i.pw, i64 %i.pt ; 2 uses
  store ptr %i.px, ptr %i.pv, align 8, !tbaa !8
  store i8 0, ptr %i.px, align 1, !tbaa !11
  %i.py = load ptr, ptr @MSalign11.WMMTX, align 8, !tbaa !45
  %i.pz = load ptr, ptr @MSalign11.w1, align 8, !tbaa !21
  %i.qa = load ptr, ptr @MSalign11.w2, align 8, !tbaa !21
  %i.qb = load ptr, ptr @MSalign11.initverticalw, align 8, !tbaa !21
  %i.qc = load ptr, ptr @MSalign11.m, align 8, !tbaa !21
  %i.qd = load ptr, ptr @MSalign11.mp, align 8, !tbaa !43
  tail call void @backdp(ptr noundef %i.py, float noundef %.4268, ptr noundef nonnull %.0270, ptr noundef nonnull %.0269, i32 noundef %i.l, i32 noundef %i.o, i32 poison, ptr noundef %i.pz, ptr noundef %i.qa, ptr noundef %i.qb, ptr noundef %i.qc, ptr noundef %i.qd, i32 noundef %.2249.lcssa, i32 noundef %.2253.lcssa, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.pr, ptr noundef nonnull %i.pv)
  %i.qe = load ptr, ptr @stderr, align 8, !tbaa !19
  %fputc = tail call i32 @fputc(i32 10, ptr %i.qe) ; 0 uses
  %i.qf = load ptr, ptr @stderr, align 8, !tbaa !19
  %fputc295 = tail call i32 @fputc(i32 10, ptr %i.qf) ; 0 uses
  %i.qg = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.qh = load ptr, ptr @MSalign11.mseq1, align 8, !tbaa !40
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !8
  %i.qj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qg, ptr noundef nonnull @.str.9, ptr noundef %i.qi) #11 ; 0 uses
  %i.qk = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.ql = load ptr, ptr @MSalign11.mseq2, align 8, !tbaa !40
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !8
  %i.qn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qk, ptr noundef nonnull @.str.9, ptr noundef %i.qm) #11 ; 0 uses
  %i.qo = load ptr, ptr @MSalign11.mseq, align 8, !tbaa !40 ; 2 uses
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !8
  %i.qq = load ptr, ptr @MSalign11.mseq1, align 8, !tbaa !40 ; 20 uses
  store ptr %i.qp, ptr %i.qq, align 8, !tbaa !8
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !8
  %i.qt = load ptr, ptr @MSalign11.mseq2, align 8, !tbaa !40 ; 20 uses
  store ptr %i.qs, ptr %i.qt, align 8, !tbaa !8
  %i.qu = load ptr, ptr %i.qq, align 8, !tbaa !8
  %i.qv = getelementptr inbounds i8, ptr %i.qu, i64 %i.pt ; 2 uses
  store ptr %i.qv, ptr %i.qq, align 8, !tbaa !8
  store i8 0, ptr %i.qv, align 1, !tbaa !11
  %i.qw = load ptr, ptr %i.qt, align 8, !tbaa !8
  %i.qx = getelementptr inbounds i8, ptr %i.qw, i64 %i.pt ; 2 uses
  store ptr %i.qx, ptr %i.qt, align 8, !tbaa !8
  store i8 0, ptr %i.qx, align 1, !tbaa !11
  %i.qy = load ptr, ptr @MSalign11.ijp, align 8, !tbaa !47 ; 11 uses
  %i.qz = load ptr, ptr %0, align 8, !tbaa !8
  %i.ra = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.qz) #14 ; 2 uses
  %i.rb = trunc i64 %i.ra to i32                  ; 3 uses
  %i.rc = load ptr, ptr %1, align 8, !tbaa !8
  %i.rd = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.rc) #14 ; 2 uses
  %i.re = trunc i64 %i.rd to i32                  ; 3 uses
  %.not1.i = icmp slt i32 %i.rb, 0
  br i1 %.not1.i, label %.preheader.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge379
  %i.rf = add nuw nsw i64 %i.ra, 1                ; 3 uses
  %wide.trip.count.i = and i64 %i.rf, 4294967295
  %i.rg = add nsw i64 %wide.trip.count.i, -1
  %xtraiter517 = and i64 %i.rf, 7                 ; 3 uses
  %i.rh = icmp ult i64 %i.rg, 7
  br i1 %i.rh, label %.lr.ph.i322.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter520 = and i64 %i.rf, 4294967288
  br label %.lr.ph.i322

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i322
  %lcmp.mod518.not.a = icmp eq i64 %xtraiter517, 0
  br i1 %lcmp.mod518.not.a, label %.preheader.i, label %.lr.ph.i322.epil.preheader

.lr.ph.i322.epil.preheader:                       ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.7, %.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod519 = icmp ne i64 %xtraiter517, 0
  tail call void @llvm.assume(i1 %lcmp.mod519)
  br label %.lr.ph.i322.epil

.lr.ph.i322.epil:                                 ; preds = %.lr.ph.i322.epil, %.lr.ph.i322.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i322.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i322.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i322.epil.preheader ], [ %epil.iter.next, %.lr.ph.i322.epil ]
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1 ; 2 uses
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %i.qy, i64 %indvars.iv.i.epil
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !43
  %i.rk = trunc nuw i64 %indvars.iv.next.i.epil to i32
  store i32 %i.rk, ptr %i.rj, align 4, !tbaa !4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter517
  br i1 %epil.iter.cmp.not, label %.preheader.i, label %.lr.ph.i322.epil, !llvm.loop !63

.preheader.i:                                     ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.i322.epil, %._crit_edge379
  %.not893.i = icmp slt i32 %i.re, 0
  br i1 %.not893.i, label %._crit_edge.i, label %.lr.ph5.i

.lr.ph5.i:                                        ; preds = %.preheader.i
  %i.rl = load ptr, ptr %i.qy, align 8, !tbaa !43 ; 2 uses
  %i.rm = add nuw nsw i64 %i.rd, 1                ; 2 uses
  %wide.trip.count30.i = and i64 %i.rm, 4294967295 ; 3 uses
  %min.iters.check468 = icmp samesign ult i64 %wide.trip.count30.i, 8
  br i1 %min.iters.check468, label %scalar.ph467.preheader, label %vector.ph469

vector.ph469:                                     ; preds = %.lr.ph5.i
  %n.vec471 = and i64 %i.rm, 4294967288           ; 3 uses
  br label %vector.body472

vector.body472:                                   ; preds = %vector.body472, %vector.ph469
  %index473 = phi i64 [ 0, %vector.ph469 ], [ %index.next474, %vector.body472 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph469 ], [ %vec.ind.next, %vector.body472 ] ; 3 uses
  %i.rn = xor <4 x i32> %vec.ind, splat (i32 -1)
  %i.ro = sub <4 x i32> splat (i32 -5), %vec.ind
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.rl, i64 %index473 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 16
  store <4 x i32> %i.rn, ptr %i.rp, align 4, !tbaa !4
  store <4 x i32> %i.ro, ptr %i.rq, align 4, !tbaa !4
  %index.next474 = add nuw i64 %index473, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.rr = icmp eq i64 %index.next474, %n.vec471
  br i1 %i.rr, label %middle.block475, label %vector.body472, !llvm.loop !64

middle.block475:                                  ; preds = %vector.body472
  %cmp.n476 = icmp eq i64 %wide.trip.count30.i, %n.vec471
  br i1 %cmp.n476, label %._crit_edge.i, label %scalar.ph467.preheader

scalar.ph467.preheader:                           ; preds = %.lr.ph5.i, %middle.block475
  %indvars.iv27.i.ph = phi i64 [ 0, %.lr.ph5.i ], [ %n.vec471, %middle.block475 ]
  br label %scalar.ph467

.lr.ph.i322:                                      ; preds = %.lr.ph.i322, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.7, %.lr.ph.i322 ] ; 9 uses
  %niter521 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter521.next.7, %.lr.ph.i322 ]
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.rs = getelementptr inbounds nuw [8 x i8], ptr %i.qy, i64 %indvars.iv.i
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !43
  %i.ru = trunc nuw i64 %indvars.iv.next.i to i32
  store i32 %i.ru, ptr %i.rt, align 4, !tbaa !4
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %i.qy, i64 %indvars.iv.next.i
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !43
  %i.rx = trunc nuw i64 %indvars.iv.next.i.1 to i32
  store i32 %i.rx, ptr %i.rw, align 4, !tbaa !4
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr %i.qy, i64 %indvars.iv.next.i.1
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !43
  %i.sa = trunc nuw i64 %indvars.iv.next.i.2 to i32
  store i32 %i.sa, ptr %i.rz, align 4, !tbaa !4
  %indvars.iv.next.i.3 = or disjoint i64 %indvars.iv.i, 4 ; 2 uses
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %i.qy, i64 %indvars.iv.next.i.2
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !43
  %i.sd = trunc nuw i64 %indvars.iv.next.i.3 to i32
  store i32 %i.sd, ptr %i.sc, align 4, !tbaa !4
  %indvars.iv.next.i.4 = or disjoint i64 %indvars.iv.i, 5 ; 2 uses
  %i.se = getelementptr inbounds nuw [8 x i8], ptr %i.qy, i64 %indvars.iv.next.i.3
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !43
  %i.sg = trunc nuw i64 %indvars.iv.next.i.4 to i32
  store i32 %i.sg, ptr %i.sf, align 4, !tbaa !4
  %indvars.iv.next.i.5 = or disjoint i64 %indvars.iv.i, 6 ; 2 uses
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %i.qy, i64 %indvars.iv.next.i.4
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !43
  %i.sj = trunc nuw i64 %indvars.iv.next.i.5 to i32
  store i32 %i.sj, ptr %i.si, align 4, !tbaa !4
  %indvars.iv.next.i.6 = or disjoint i64 %indvars.iv.i, 7 ; 2 uses
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.qy, i64 %indvars.iv.next.i.5
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !43
  %i.sm = trunc nuw i64 %indvars.iv.next.i.6 to i32
  store i32 %i.sm, ptr %i.sl, align 4, !tbaa !4
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %i.sn = getelementptr inbounds nuw [8 x i8], ptr %i.qy, i64 %indvars.iv.next.i.6
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !43
  %i.sp = trunc nuw i64 %indvars.iv.next.i.7 to i32
  store i32 %i.sp, ptr %i.so, align 4, !tbaa !4
  %niter521.next.7 = add i64 %niter521, 8         ; 2 uses
  %niter521.ncmp.7 = icmp eq i64 %niter521.next.7, %unroll_iter520
  br i1 %niter521.ncmp.7, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph.i322, !llvm.loop !65

scalar.ph467:                                     ; preds = %scalar.ph467.preheader, %scalar.ph467
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %scalar.ph467 ], [ %indvars.iv27.i.ph, %scalar.ph467.preheader ] ; 3 uses
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1 ; 2 uses
  %i.sq = trunc nuw nsw i64 %indvars.iv27.i to i32
  %i.sr = xor i32 %i.sq, -1
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.rl, i64 %indvars.iv27.i
  store i32 %i.sr, ptr %i.ss, align 4, !tbaa !4
  %exitcond31.not.i = icmp eq i64 %indvars.iv.next28.i, %wide.trip.count30.i
  br i1 %exitcond31.not.i, label %._crit_edge.i, label %scalar.ph467, !llvm.loop !66

._crit_edge.i:                                    ; preds = %scalar.ph467, %middle.block475, %.preheader.i
  %i.st = add nsw i32 %i.re, %i.rb                ; 3 uses
  %i.su = load ptr, ptr %i.qq, align 8, !tbaa !8
  %i.sv = sext i32 %i.st to i64                   ; 2 uses
  %i.sw = getelementptr inbounds i8, ptr %i.su, i64 %i.sv ; 2 uses
  store ptr %i.sw, ptr %i.qq, align 8, !tbaa !8
  store i8 0, ptr %i.sw, align 1, !tbaa !11
  %i.sx = load ptr, ptr %i.qt, align 8, !tbaa !8
  %i.sy = getelementptr inbounds i8, ptr %i.sx, i64 %i.sv ; 2 uses
  store ptr %i.sy, ptr %i.qt, align 8, !tbaa !8
  store i8 0, ptr %i.sy, align 1, !tbaa !11
  %.not9017.i = icmp slt i32 %i.st, 0
  br i1 %.not9017.i, label %Atracking.exit, label %.lr.ph22.i

.lr.ph22.i:                                       ; preds = %._crit_edge.i, %bb.am
  %.07920.i = phi i32 [ %i.wk, %bb.am ], [ 0, %._crit_edge.i ] ; 2 uses
  %.08119.i = phi i32 [ %.084.i, %bb.am ], [ %i.rb, %._crit_edge.i ] ; 7 uses
  %.08218.i = phi i32 [ %.083.i, %bb.am ], [ %i.re, %._crit_edge.i ] ; 3 uses
  %i.sz = sext i32 %.08119.i to i64
  %i.ta = getelementptr inbounds [8 x i8], ptr %i.qy, i64 %i.sz
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !43
  %i.tc = sext i32 %.08218.i to i64
  %i.td = getelementptr inbounds [4 x i8], ptr %i.tb, i64 %i.tc
  %i.te = load i32, ptr %i.td, align 4, !tbaa !4  ; 4 uses
  %i.tf = icmp slt i32 %i.te, 0
  br i1 %i.tf, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph22.i
  %i.tg = add nsw i32 %.08119.i, -1
  br label %bb.al

bb.ai:                                            ; preds = %.lr.ph22.i
  %.not91.i = icmp eq i32 %i.te, 0
  br i1 %.not91.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.th = sub nsw i32 %.08119.i, %i.te
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.ti = add nsw i32 %.08119.i, -1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ah
  %.084.i = phi i32 [ %i.tg, %bb.ah ], [ %i.th, %bb.aj ], [ %i.ti, %bb.ak ] ; 5 uses
  %.pn.i = phi i32 [ %i.te, %bb.ah ], [ -1, %bb.aj ], [ -1, %bb.ak ] ; 4 uses
  %.083.i = add nsw i32 %.pn.i, %.08218.i         ; 3 uses
  %i.tj = xor i32 %.084.i, -1
  %i.tk = add i32 %.08119.i, %i.tj                ; 4 uses
  %.not926.i = icmp eq i32 %i.tk, 0
  br i1 %.not926.i, label %._crit_edge10.i, label %.lr.ph9.preheader.i

.lr.ph9.preheader.i:                              ; preds = %bb.al
  %i.tl = sext i32 %i.tk to i64                   ; 3 uses
  %i.tm = sext i32 %.084.i to i64                 ; 3 uses
  %i.tn = and i32 %i.tk, 1
  %lcmp.mod523.not = icmp eq i32 %i.tn, 0
  br i1 %lcmp.mod523.not, label %.lr.ph9.i.prol.loopexit, label %.lr.ph9.i.prol

.lr.ph9.i.prol:                                   ; preds = %.lr.ph9.preheader.i
  %i.to = load ptr, ptr %0, align 8, !tbaa !8
  %i.tp = getelementptr i8, ptr %i.to, i64 %i.tl
  %i.tq = getelementptr i8, ptr %i.tp, i64 %i.tm
  %i.tr = load i8, ptr %i.tq, align 1, !tbaa !11
  %i.ts = load ptr, ptr %i.qq, align 8, !tbaa !8
  %i.tt = getelementptr inbounds i8, ptr %i.ts, i64 -1 ; 2 uses
  store ptr %i.tt, ptr %i.qq, align 8, !tbaa !8
  store i8 %i.tr, ptr %i.tt, align 1, !tbaa !11
  %i.tu = load ptr, ptr %i.qt, align 8, !tbaa !8
  %i.tv = getelementptr inbounds i8, ptr %i.tu, i64 -1 ; 2 uses
  store ptr %i.tv, ptr %i.qt, align 8, !tbaa !8
  store i8 45, ptr %i.tv, align 1, !tbaa !11
  %indvars.iv.next33.i.prol = add nsw i64 %i.tl, -1
  br label %.lr.ph9.i.prol.loopexit

.lr.ph9.i.prol.loopexit:                          ; preds = %.lr.ph9.i.prol, %.lr.ph9.preheader.i
  %indvars.iv32.i.unr = phi i64 [ %i.tl, %.lr.ph9.preheader.i ], [ %indvars.iv.next33.i.prol, %.lr.ph9.i.prol ]
  %i.tw = icmp eq i32 %i.tk, 1
  br i1 %i.tw, label %._crit_edge10.loopexit.i, label %.lr.ph9.i

.lr.ph9.i:                                        ; preds = %.lr.ph9.i.prol.loopexit, %.lr.ph9.i
  %indvars.iv32.i = phi i64 [ %indvars.iv.next33.i.1, %.lr.ph9.i ], [ %indvars.iv32.i.unr, %.lr.ph9.i.prol.loopexit ] ; 3 uses
  %i.tx = load ptr, ptr %0, align 8, !tbaa !8
  %i.ty = getelementptr i8, ptr %i.tx, i64 %indvars.iv32.i
  %i.tz = getelementptr i8, ptr %i.ty, i64 %i.tm
  %i.ua = load i8, ptr %i.tz, align 1, !tbaa !11
  %i.ub = load ptr, ptr %i.qq, align 8, !tbaa !8
  %i.uc = getelementptr inbounds i8, ptr %i.ub, i64 -1 ; 2 uses
  store ptr %i.uc, ptr %i.qq, align 8, !tbaa !8
  store i8 %i.ua, ptr %i.uc, align 1, !tbaa !11
  %i.ud = load ptr, ptr %i.qt, align 8, !tbaa !8
  %i.ue = getelementptr inbounds i8, ptr %i.ud, i64 -1 ; 2 uses
  store ptr %i.ue, ptr %i.qt, align 8, !tbaa !8
  store i8 45, ptr %i.ue, align 1, !tbaa !11
  %i.uf = load ptr, ptr %0, align 8, !tbaa !8
  %i.ug = getelementptr i8, ptr %i.uf, i64 %indvars.iv32.i
  %i.uh = getelementptr i8, ptr %i.ug, i64 -1
  %i.ui = getelementptr i8, ptr %i.uh, i64 %i.tm
  %i.uj = load i8, ptr %i.ui, align 1, !tbaa !11
  %i.uk = load ptr, ptr %i.qq, align 8, !tbaa !8
  %i.ul = getelementptr inbounds i8, ptr %i.uk, i64 -1 ; 2 uses
  store ptr %i.ul, ptr %i.qq, align 8, !tbaa !8
  store i8 %i.uj, ptr %i.ul, align 1, !tbaa !11
  %i.um = load ptr, ptr %i.qt, align 8, !tbaa !8
  %i.un = getelementptr inbounds i8, ptr %i.um, i64 -1 ; 2 uses
  store ptr %i.un, ptr %i.qt, align 8, !tbaa !8
  store i8 45, ptr %i.un, align 1, !tbaa !11
  %indvars.iv.next33.i.1 = add nsw i64 %indvars.iv32.i, -2 ; 2 uses
  %.not92.i.1 = icmp eq i64 %indvars.iv.next33.i.1, 0
  br i1 %.not92.i.1, label %._crit_edge10.loopexit.i, label %.lr.ph9.i, !llvm.loop !67

._crit_edge10.loopexit.i:                         ; preds = %.lr.ph9.i, %.lr.ph9.i.prol.loopexit
  %i.uo = add i32 %.08119.i, -1
  %i.up = add i32 %i.uo, %.07920.i
  %i.uq = sub i32 %i.up, %.084.i
  br label %._crit_edge10.i

._crit_edge10.i:                                  ; preds = %._crit_edge10.loopexit.i, %bb.al
  %.180.lcssa.i = phi i32 [ %.07920.i, %bb.al ], [ %i.uq, %._crit_edge10.loopexit.i ] ; 3 uses
  %.not9311.i = icmp eq i32 %.pn.i, -1
  br i1 %.not9311.i, label %._crit_edge15.i, label %.lr.ph14.preheader.i

.lr.ph14.preheader.i:                             ; preds = %._crit_edge10.i
  %i.ur = xor i32 %.pn.i, -1
  %i.us = zext nneg i32 %i.ur to i64              ; 4 uses
  %i.ut = sext i32 %.083.i to i64                 ; 3 uses
  %xtraiter525 = and i64 %i.us, 1
  %lcmp.mod526.not = icmp eq i64 %xtraiter525, 0
  br i1 %lcmp.mod526.not, label %.lr.ph14.i.prol.loopexit, label %.lr.ph14.i.prol

.lr.ph14.i.prol:                                  ; preds = %.lr.ph14.preheader.i
  %i.uu = load ptr, ptr %i.qq, align 8, !tbaa !8
  %i.uv = getelementptr inbounds i8, ptr %i.uu, i64 -1 ; 2 uses
  store ptr %i.uv, ptr %i.qq, align 8, !tbaa !8
  store i8 45, ptr %i.uv, align 1, !tbaa !11
  %i.uw = load ptr, ptr %1, align 8, !tbaa !8
  %i.ux = getelementptr i8, ptr %i.uw, i64 %i.us
  %i.uy = getelementptr i8, ptr %i.ux, i64 %i.ut
  %i.uz = load i8, ptr %i.uy, align 1, !tbaa !11
  %i.va = load ptr, ptr %i.qt, align 8, !tbaa !8
  %i.vb = getelementptr inbounds i8, ptr %i.va, i64 -1 ; 2 uses
  store ptr %i.vb, ptr %i.qt, align 8, !tbaa !8
  store i8 %i.uz, ptr %i.vb, align 1, !tbaa !11
  %i.vc = add nsw i32 %.180.lcssa.i, 1            ; 2 uses
  %indvars.iv.next36.i.prol = add nsw i64 %i.us, -1
  br label %.lr.ph14.i.prol.loopexit

.lr.ph14.i.prol.loopexit:                         ; preds = %.lr.ph14.i.prol, %.lr.ph14.preheader.i
  %.lcssa.unr = phi i32 [ poison, %.lr.ph14.preheader.i ], [ %i.vc, %.lr.ph14.i.prol ]
  %indvars.iv35.i.unr = phi i64 [ %i.us, %.lr.ph14.preheader.i ], [ %indvars.iv.next36.i.prol, %.lr.ph14.i.prol ]
  %.212.i.unr = phi i32 [ %.180.lcssa.i, %.lr.ph14.preheader.i ], [ %i.vc, %.lr.ph14.i.prol ]
  %i.vd = icmp eq i32 %.pn.i, -2
  br i1 %i.vd, label %._crit_edge15.i, label %.lr.ph14.i

.lr.ph14.i:                                       ; preds = %.lr.ph14.i.prol.loopexit, %.lr.ph14.i
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i.1, %.lr.ph14.i ], [ %indvars.iv35.i.unr, %.lr.ph14.i.prol.loopexit ] ; 3 uses
  %.212.i = phi i32 [ %i.vv, %.lr.ph14.i ], [ %.212.i.unr, %.lr.ph14.i.prol.loopexit ]
  %i.ve = load ptr, ptr %i.qq, align 8, !tbaa !8
  %i.vf = getelementptr inbounds i8, ptr %i.ve, i64 -1 ; 2 uses
  store ptr %i.vf, ptr %i.qq, align 8, !tbaa !8
  store i8 45, ptr %i.vf, align 1, !tbaa !11
  %i.vg = load ptr, ptr %1, align 8, !tbaa !8
  %i.vh = getelementptr i8, ptr %i.vg, i64 %indvars.iv35.i
  %i.vi = getelementptr i8, ptr %i.vh, i64 %i.ut
  %i.vj = load i8, ptr %i.vi, align 1, !tbaa !11
  %i.vk = load ptr, ptr %i.qt, align 8, !tbaa !8
  %i.vl = getelementptr inbounds i8, ptr %i.vk, i64 -1 ; 2 uses
  store ptr %i.vl, ptr %i.qt, align 8, !tbaa !8
  store i8 %i.vj, ptr %i.vl, align 1, !tbaa !11
  %i.vm = load ptr, ptr %i.qq, align 8, !tbaa !8
  %i.vn = getelementptr inbounds i8, ptr %i.vm, i64 -1 ; 2 uses
  store ptr %i.vn, ptr %i.qq, align 8, !tbaa !8
  store i8 45, ptr %i.vn, align 1, !tbaa !11
  %i.vo = load ptr, ptr %1, align 8, !tbaa !8
  %i.vp = getelementptr i8, ptr %i.vo, i64 %indvars.iv35.i
  %i.vq = getelementptr i8, ptr %i.vp, i64 -1
  %i.vr = getelementptr i8, ptr %i.vq, i64 %i.ut
  %i.vs = load i8, ptr %i.vr, align 1, !tbaa !11
  %i.vt = load ptr, ptr %i.qt, align 8, !tbaa !8
  %i.vu = getelementptr inbounds i8, ptr %i.vt, i64 -1 ; 2 uses
  store ptr %i.vu, ptr %i.qt, align 8, !tbaa !8
  store i8 %i.vs, ptr %i.vu, align 1, !tbaa !11
  %i.vv = add nsw i32 %.212.i, 2                  ; 2 uses
  %indvars.iv.next36.i.1 = add nsw i64 %indvars.iv35.i, -2 ; 2 uses
  %.not93.i.1 = icmp eq i64 %indvars.iv.next36.i.1, 0
end_hunk_0
