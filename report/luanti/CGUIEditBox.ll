Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CGUIEditBox?download=true
inline.NumInlined: 1019
inline.NumDeleted: 336
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4core5arrayINS_6stringIwEEEixEj:bb.a
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.a
  ret ptr %i.j
}

declare noundef i32 @_ZN2os5Timer7getTimeEv() local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define void @_ZN3gui11CGUIEditBox12sendGuiEventENS_15EGUI_EVENT_TYPEE(ptr noundef nonnull align 8 dereferenceable(552) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %struct.SEvent, align 8             ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.d, i8 0, i64 28, i1 false)
  store i32 1, ptr %2, align 8, !tbaa !136
  store ptr %0, ptr %i.c, align 8, !tbaa !106
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr null, ptr %i.e, align 8, !tbaa !106
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %1, ptr %i.f, align 8, !tbaa !106
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(308) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3gui11CGUIEditBox11onKeyUpDownERKN6SEvent9SKeyInputERiS5_j(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(552) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3, i32 noundef %4) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 433
  %i.b = load i8, ptr %i.a, align 1, !tbaa !120, !range !96, !noundef !97 ; 2 uses
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.e = load i8, ptr %i.d, align 8, !tbaa !110, !range !96, !noundef !97
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !112
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !111
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = and i64 %i.m, 137438953408
  %.not54 = icmp eq i64 %i.n, 0
  br i1 %.not54, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !147  ; 5 uses
  %i.q = icmp eq i32 %i.p, 40
  %i.r = icmp eq i32 %i.p, 34
  %i.s = or i1 %i.q, %i.r
  %i.t = select i1 %i.s, i32 1, i32 -1            ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 3 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !119  ; 6 uses
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %.thread51, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.x = load i8, ptr %i.w, align 8, !tbaa !110, !range !96, !noundef !97
  %i.y = or i8 %i.x, %i.b
  %or.cond.i.not = icmp eq i8 %i.y, 0
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  br i1 %or.cond.i.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ad = zext i32 %i.t to i64                    ; 4 uses
  switch i32 %i.p, label %.thread51 [
    i32 40, label %.lr.ph.split.us.split.us
    i32 34, label %.lr.ph.split.us.split.us
  ]

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %.lr.ph.split.us
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !112
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !111 ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 2 uses
  %i.aj = lshr exact i64 %i.ai, 5
  %i.ak = trunc i64 %i.aj to i32
  %.not.us.us = icmp sgt i32 %i.ak, 1
  br i1 %.not.us.us, label %.lr.ph.split.us.split.us.split.us, label %.split.us.thread

.lr.ph.split.us.split.us.split.us:                ; preds = %.lr.ph.split.us.split.us
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !114 ; 2 uses
  %i.am = load ptr, ptr %i.ab, align 8, !tbaa !89 ; 4 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 2
  %.not136 = icmp eq ptr %i.al, %i.am
  %i.ar = icmp ugt i64 %i.aq, %i.ad
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ad
  br i1 %.not136, label %.split75.us, label %.lr.ph.split.us.split.us.split.us.split

.lr.ph.split.us.split.us.split.us.split:          ; preds = %.lr.ph.split.us.split.us.split.us
  %i.at = load i32, ptr %i.am, align 4, !tbaa !72 ; 3 uses
  %i.au = ashr exact i64 %i.ai, 5
  %i.av = icmp ugt i64 %i.au, %i.ad
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %i.ad
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  br i1 %i.av, label %.lr.ph.split.us.split.us.split.us.split.split, label %.split77.us

.lr.ph.split.us.split.us.split.us.split.split:    ; preds = %.lr.ph.split.us.split.us.split.us.split
  br i1 %i.ar, label %.lr.ph.split.us.split.us.split.us.split.split.split, label %.split79.us

.lr.ph.split.us.split.us.split.us.split.split.split: ; preds = %.lr.ph.split.us.split.us.split.us.split.split
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !75
  %i.az = trunc i64 %i.ay to i32                  ; 3 uses
  %i.ba = load i32, ptr %i.as, align 4, !tbaa !72 ; 3 uses
  %xtraiter225 = and i32 %4, 1
  %i.bb = icmp eq i32 %4, 1
  br i1 %i.bb, label %_ZN3gui11CGUIEditBox14getLineFromPosEi.exit.thread.us.us.us.epil.preheader, label %.lr.ph.split.us.split.us.split.us.split.split.split.new

.lr.ph.split.us.split.us.split.us.split.split.split.new: ; preds = %.lr.ph.split.us.split.us.split.us.split.split.split
  %unroll_iter229 = and i32 %4, -2
  %invariant.op248 = sub i32 %i.ba, %i.at
  br label %_ZN3gui11CGUIEditBox14getLineFromPosEi.exit.thread.us.us.us

_ZN3gui11CGUIEditBox14getLineFromPosEi.exit.thread.us.us.us: ; preds = %_ZN3gui11CGUIEditBox14getLineFromPosEi.exit.thread.us.us.us, %.lr.ph.split.us.split.us.split.us.split.split.split.new
  %.03269.us.us.us = phi i32 [ %i.v, %.lr.ph.split.us.split.us.split.us.split.split.split.new ], [ %i.bd, %_ZN3gui11CGUIEditBox14getLineFromPosEi.exit.thread.us.us.us ]
  %niter230 = phi i32 [ 0, %.lr.ph.split.us.split.us.split.us.split.split.split.new ], [ %niter230.next.1, %_ZN3gui11CGUIEditBox14getLineFromPosEi.exit.thread.us.us.us ]
  %i.bc = sub nsw i32 %.03269.us.us.us, %i.at
  %.sroa.speculated42.us.us.us = tail call i32 @llvm.smin.i32(i32 %i.bc, i32 %i.az)
  %.sroa.speculated.us.us.us = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated42.us.us.us, i32 0)
  %.reass249 = add i32 %.sroa.speculated.us.us.us, %invariant.op248
  %.sroa.speculated42.us.us.us.1 = tail call i32 @llvm.smin.i32(i32 %.reass249, i32 %i.az)
  %.sroa.speculated.us.us.us.1 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated42.us.us.us.1, i32 0)
  %i.bd = add nsw i32 %.sroa.speculated.us.us.us.1, %i.ba ; 3 uses
  %niter230.next.1 = add i32 %niter230, 2         ; 2 uses
  %niter230.ncmp.1 = icmp eq i32 %niter230.next.1, %unroll_iter229
  br i1 %niter230.ncmp.1, label %.thread51.loopexit.unr-lcssa, label %_ZN3gui11CGUIEditBox14getLineFromPosEi.exit.thread.us.us.us, !llvm.loop !185

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.be = load ptr, ptr %i.ac, align 8, !tbaa !114
  %i.bf = load ptr, ptr %i.ab, align 8, !tbaa !89 ; 6 uses
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh                    ; 2 uses
  %i.bj = lshr exact i64 %i.bi, 2                 ; 2 uses
  %i.bk = trunc i64 %i.bj to i32                  ; 4 uses
  %i.bl = icmp sgt i32 %i.bk, 0
  %i.bm = ashr exact i64 %i.bi, 2                 ; 5 uses
  %wide.trip.count.i = and i64 %i.bj, 2147483647
  br i1 %i.bl, label %.preheader.i.us, label %.lr.ph.split.split

.preheader.i.us:                                  ; preds = %.lr.ph.split, %bb.i
  %.03170.us93 = phi i32 [ %i.cu, %bb.i ], [ 0, %.lr.ph.split ] ; 3 uses
  %.03269.us94 = phi i32 [ %i.ct, %bb.i ], [ %i.v, %.lr.ph.split ] ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.preheader.i.us
  %indvars.iv.i.us = phi i64 [ 0, %.preheader.i.us ], [ %indvars.iv.next.i.us, %bb.f ] ; 4 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.i.us, %i.bm
  br i1 %exitcond.not.i.us, label %.split101.us, label %_ZN4core5arrayIiEixEj.exit.i.us

_ZN4core5arrayIiEixEj.exit.i.us:                  ; preds = %bb.e
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i.us
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !72
  %i.bp = icmp sgt i32 %i.bo, %.03269.us94
  br i1 %i.bp, label %._crit_edge.loopexit.split.loop.exit14.i.us, label %bb.f

bb.f:                                             ; preds = %_ZN4core5arrayIiEixEj.exit.i.us
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond12.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond12.not.i.us, label %_ZN3gui11CGUIEditBox14getLineFromPosEi.exit.us, label %bb.e, !llvm.loop !3

._crit_edge.loopexit.split.loop.exit14.i.us:      ; preds = %_ZN4core5arrayIiEixEj.exit.i.us
  %i.bq = trunc nuw nsw i64 %indvars.iv.i.us to i32
  br label %_ZN3gui11CGUIEditBox14getLineFromPosEi.exit.us

_ZN3gui11CGUIEditBox14getLineFromPosEi.exit.us:   ; preds = %bb.f, %._crit_edge.loopexit.split.loop.exit14.i.us
  %.06.in.i.us = phi i32 [ %i.bq, %._crit_edge.loopexit.split.loop.exit14.i.us ], [ %i.bk, %bb.f ] ; 3 uses
  %.06.i.us = add nsw i32 %.06.in.i.us, -1        ; 2 uses
  switch i32 %i.p, label %5 [
    i32 40, label %bb.g
    i32 34, label %bb.g
  ]

bb.g:                                             ; preds = %_ZN3gui11CGUIEditBox14getLineFromPosEi.exit.us, %_ZN3gui11CGUIEditBox14getLineFromPosEi.exit.us
  %i.br = load ptr, ptr %i.aa, align 8, !tbaa !112
  %i.bs = load ptr, ptr %i.z, align 8, !tbaa !111
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = lshr exact i64 %i.bv, 5
  %i.bx = trunc i64 %i.bw to i32
  %.not.us95 = icmp slt i32 %.06.in.i.us, %i.bx
  br i1 %.not.us95, label %bb.h, label %.split.us

5:                                                ; preds = %_ZN3gui11CGUIEditBox14getLineFromPosEi.exit.us
  %6 = icmp slt i32 %.06.in.i.us, 2
  br i1 %6, label %.thread.loopexit, label %bb.h

bb.h:                                             ; preds = %5, %bb.g
  %i.by = zext i32 %.06.i.us to i64               ; 2 uses
  %i.bz = icmp ugt i64 %i.bm, %i.by
  br i1 %i.bz, label %_ZN4core5arrayIiEixEj.exit.us96, label %.split75.us

_ZN4core5arrayIiEixEj.exit.us96:                  ; preds = %bb.h
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.by
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !72
  %i.cc = sub nsw i32 %.03269.us94, %i.cb
  %i.cd = add nsw i32 %.06.i.us, %i.t
  %i.ce = zext i32 %i.cd to i64                   ; 4 uses
  %i.cf = load ptr, ptr %i.aa, align 8, !tbaa !112
  %i.cg = load ptr, ptr %i.z, align 8, !tbaa !111 ; 2 uses
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = ashr exact i64 %i.cj, 5
  %i.cl = icmp ugt i64 %i.ck, %i.ce
  br i1 %i.cl, label %_ZN4core5arrayINS_6stringIwEEEixEj.exit.us97, label %.split77.us

_ZN4core5arrayINS_6stringIwEEEixEj.exit.us97:     ; preds = %_ZN4core5arrayIiEixEj.exit.us96
  %i.cm = icmp ugt i64 %i.bm, %i.ce
  br i1 %i.cm, label %bb.i, label %.split79.us

bb.i:                                             ; preds = %_ZN4core5arrayINS_6stringIwEEEixEj.exit.us97
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.cg, i64 %i.ce
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !75
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.ce
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !72
  %.sroa.speculated42.us98 = tail call i32 @llvm.smin.i32(i32 %i.cc, i32 %i.cq)
  %.sroa.speculated.us99 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated42.us98, i32 0)
  %i.ct = add nsw i32 %.sroa.speculated.us99, %i.cs ; 2 uses
  %i.cu = add nuw i32 %.03170.us93, 1             ; 2 uses
  %exitcond156.not = icmp eq i32 %i.cu, %4
  br i1 %exitcond156.not, label %.thread51, label %.preheader.i.us, !llvm.loop !185

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %.06.i = add nsw i32 %i.bk, -1                  ; 2 uses
  %i.cv = zext i32 %.06.i to i64                  ; 2 uses
  %i.cw = add nsw i32 %.06.i, %i.t
  %i.cx = zext i32 %i.cw to i64                   ; 4 uses
  switch i32 %i.p, label %.thread51 [
    i32 40, label %.lr.ph.split.split.split.us
    i32 34, label %.lr.ph.split.split.split.us
  ]

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split, %.lr.ph.split.split
  %i.cy = load ptr, ptr %i.aa, align 8, !tbaa !112
  %i.cz = load ptr, ptr %i.z, align 8, !tbaa !111 ; 2 uses
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db                    ; 2 uses
  %i.dd = lshr exact i64 %i.dc, 5
  %i.de = trunc i64 %i.dd to i32
  %.not.us113 = icmp sgt i32 %i.de, %i.bk
  br i1 %.not.us113, label %.lr.ph.split.split.split.us.split.us, label %.split.us.thread

.lr.ph.split.split.split.us.split.us:             ; preds = %.lr.ph.split.split.split.us
  %i.df = icmp ugt i64 %i.bm, %i.cv
  %i.dg = icmp ugt i64 %i.bm, %i.cx
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.cx
  br i1 %i.df, label %.lr.ph.split.split.split.us.split.us.split, label %.split75.us

.lr.ph.split.split.split.us.split.us.split:       ; preds = %.lr.ph.split.split.split.us.split.us
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.cv
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !72 ; 3 uses
  %i.dk = ashr exact i64 %i.dc, 5
  %i.dl = icmp ugt i64 %i.dk, %i.cx
  %i.dm = getelementptr inbounds nuw [32 x i8], ptr %i.cz, i64 %i.cx
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  br i1 %i.dl, label %.lr.ph.split.split.split.us.split.us.split.split, label %.split77.us

.lr.ph.split.split.split.us.split.us.split.split: ; preds = %.lr.ph.split.split.split.us.split.us.split
  br i1 %i.dg, label %.lr.ph.split.split.split.us.split.us.split.split.split, label %.split79.us

.lr.ph.split.split.split.us.split.us.split.split.split: ; preds = %.lr.ph.split.split.split.us.split.us.split.split
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !75
  %i.dp = trunc i64 %i.do to i32                  ; 3 uses
  %i.dq = load i32, ptr %i.dh, align 4, !tbaa !72 ; 3 uses
  %xtraiter = and i32 %4, 1
  %i.dr = icmp eq i32 %4, 1
  br i1 %i.dr, label %.preheader.i.us110.us.epil.preheader, label %.lr.ph.split.split.split.us.split.us.split.split.split.new

.lr.ph.split.split.split.us.split.us.split.split.split.new: ; preds = %.lr.ph.split.split.split.us.split.us.split.split.split
  %unroll_iter = and i32 %4, -2
  %invariant.op = sub i32 %i.dq, %i.dj
  br label %.preheader.i.us110.us

.preheader.i.us110.us:                            ; preds = %.preheader.i.us110.us, %.lr.ph.split.split.split.us.split.us.split.split.split.new
  %.03269.us112.us = phi i32 [ %i.v, %.lr.ph.split.split.split.us.split.us.split.split.split.new ], [ %i.dt, %.preheader.i.us110.us ]
  %niter = phi i32 [ 0, %.lr.ph.split.split.split.us.split.us.split.split.split.new ], [ %niter.next.1, %.preheader.i.us110.us ]
  %i.ds = sub nsw i32 %.03269.us112.us, %i.dj
  %.sroa.speculated42.us116.us = tail call i32 @llvm.smin.i32(i32 %i.ds, i32 %i.dp)
  %.sroa.speculated.us117.us = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated42.us116.us, i32 0)
  %.reass = add i32 %.sroa.speculated.us117.us, %invariant.op
  %.sroa.speculated42.us116.us.1 = tail call i32 @llvm.smin.i32(i32 %.reass, i32 %i.dp)
  %.sroa.speculated.us117.us.1 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated42.us116.us.1, i32 0)
  %i.dt = add nsw i32 %.sroa.speculated.us117.us.1, %i.dq ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.thread51.loopexit221.unr-lcssa, label %.preheader.i.us110.us, !llvm.loop !185

.split101.us:                                     ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIiEixEj) #30
  unreachable

.split.us:                                        ; preds = %bb.g
  %i.du = icmp eq i32 %.03170.us93, 0
  br i1 %i.du, label %.split.us.thread, label %.thread51

.split.us.thread:                                 ; preds = %.lr.ph.split.split.split.us, %.lr.ph.split.us.split.us, %.split.us
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !75
  %i.dx = trunc i64 %i.dw to i32
  br label %.thread51

.thread.loopexit:                                 ; preds = %5
  %i.dy = icmp eq i32 %.03170.us93, 0
  %i.dz = select i1 %i.dy, i32 0, i32 %.03269.us94
  br label %.thread51

.split75.us:                                      ; preds = %bb.h, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.us.split.us.split.us
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIiEixEj) #30
  unreachable

.split77.us:                                      ; preds = %_ZN4core5arrayIiEixEj.exit.us96, %.lr.ph.split.split.split.us.split.us.split, %.lr.ph.split.us.split.us.split.us.split
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayINS_6stringIwEEEixEj) #30
  unreachable

.split79.us:                                      ; preds = %_ZN4core5arrayINS_6stringIwEEEixEj.exit.us97, %.lr.ph.split.split.split.us.split.us.split.split, %.lr.ph.split.us.split.us.split.us.split.split
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIiEixEj) #30
  unreachable

.thread51.loopexit.unr-lcssa:                     ; preds = %_ZN3gui11CGUIEditBox14getLineFromPosEi.exit.thread.us.us.us
  %lcmp.mod226.not = icmp eq i32 %xtraiter225, 0
  br i1 %lcmp.mod226.not, label %.thread51, label %_ZN3gui11CGUIEditBox14getLineFromPosEi.exit.thread.us.us.us.epil.preheader

_ZN3gui11CGUIEditBox14getLineFromPosEi.exit.thread.us.us.us.epil.preheader: ; preds = %.thread51.loopexit.unr-lcssa, %.lr.ph.split.us.split.us.split.us.split.split.split
  %.03269.us.us.us.epil.init = phi i32 [ %i.v, %.lr.ph.split.us.split.us.split.us.split.split.split ], [ %i.bd, %.thread51.loopexit.unr-lcssa ]
  %lcmp.mod228 = trunc i32 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod228)
  %i.ea = sub nsw i32 %.03269.us.us.us.epil.init, %i.at
  %.sroa.speculated42.us.us.us.epil = tail call i32 @llvm.smin.i32(i32 %i.ea, i32 %i.az)
  %.sroa.speculated.us.us.us.epil = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated42.us.us.us.epil, i32 0)
  %i.eb = add nsw i32 %.sroa.speculated.us.us.us.epil, %i.ba
  br label %.thread51

.thread51.loopexit221.unr-lcssa:                  ; preds = %.preheader.i.us110.us
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.thread51, label %.preheader.i.us110.us.epil.preheader

.preheader.i.us110.us.epil.preheader:             ; preds = %.thread51.loopexit221.unr-lcssa, %.lr.ph.split.split.split.us.split.us.split.split.split
  %.03269.us112.us.epil.init = phi i32 [ %i.v, %.lr.ph.split.split.split.us.split.us.split.split.split ], [ %i.dt, %.thread51.loopexit221.unr-lcssa ]
  %lcmp.mod224 = trunc i32 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod224)
  %i.ec = sub nsw i32 %.03269.us112.us.epil.init, %i.dj
  %.sroa.speculated42.us116.us.epil = tail call i32 @llvm.smin.i32(i32 %i.ec, i32 %i.dp)
  %.sroa.speculated.us117.us.epil = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated42.us116.us.epil, i32 0)
  %i.ed = add nsw i32 %.sroa.speculated.us117.us.epil, %i.dq
  br label %.thread51

.thread51:                                        ; preds = %.preheader.i.us110.us.epil.preheader, %.thread51.loopexit221.unr-lcssa, %bb.i, %_ZN3gui11CGUIEditBox14getLineFromPosEi.exit.thread.us.us.us.epil.preheader, %.thread51.loopexit.unr-lcssa, %.lr.ph.split.us, %.thread.loopexit, %.lr.ph.split.split, %bb.d, %.split.us, %.split.us.thread
  %.4 = phi i32 [ %i.ct, %bb.i ], [ %.03269.us94, %.split.us ], [ %i.dx, %.split.us.thread ], [ %i.v, %bb.d ], [ %i.eb, %_ZN3gui11CGUIEditBox14getLineFromPosEi.exit.thread.us.us.us.epil.preheader ], [ 0, %.lr.ph.split.split ], [ 0, %.lr.ph.split.us ], [ %i.dz, %.thread.loopexit ], [ %i.bd, %.thread51.loopexit.unr-lcssa ], [ %i.dt, %.thread51.loopexit221.unr-lcssa ], [ %i.ed, %.preheader.i.us110.us.epil.preheader ] ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 4
  %i.eg = and i8 %i.ef, 2
  %.not34 = icmp eq i8 %i.eg, 0
  br i1 %.not34, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.thread51
  store i32 0, ptr %2, align 4, !tbaa !72
  store i32 0, ptr %3, align 4, !tbaa !72
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread51
  %i.eh = icmp sgt i32 %.4, -1
  br i1 %i.eh, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !75
  %i.ek = trunc i64 %i.ej to i32
  %.not35 = icmp sgt i32 %.4, %i.ek
  br i1 %.not35, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.el = load i8, ptr %i.ee, align 4
  %i.em = and i8 %i.el, 2
  %.not36 = icmp eq i8 %i.em, 0
  br i1 %.not36, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !137
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !138
  %i.er = icmp eq i32 %i.eo, %i.eq
  br i1 %i.er, label %bb.o, label %bb.p

end_hunk_0
