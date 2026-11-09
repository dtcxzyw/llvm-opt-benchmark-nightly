Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/struct_matrix?download=true
inline.NumInlined: 4
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@hypre_StructMatrixSetValues:bb.a

.lr.ph.split.us.us:                               ; preds = %.preheader109.us
  %i.gy = add nuw nsw i32 %i.fu, 1
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !7
  %i.hb = sub nsw i32 %i.fb, %i.ha
  %i.hc = mul nsw i32 %i.hb, %i.gy
  %i.hd = add nsw i32 %i.fr, %i.hc
  %i.he = mul nsw i32 %i.fz, %i.hd
  %i.hf = select i1 %.inv.us, i32 0, i32 %i.he
  %i.hg = add nsw i32 %i.fo, %i.hf
  %i.hh = sext i32 %i.hg to i64
  %invariant.gep112.us = getelementptr [8 x i8], ptr %i.fg, i64 %i.hh ; 3 uses
  br i1 %i.er, label %.epil.preheader184, label %.lr.ph.split.us.us.new

.lr.ph.split.us.us.new:                           ; preds = %.lr.ph.split.us.us, %.lr.ph.split.us.us.new
  %indvars.iv141 = phi i64 [ %indvars.iv.next142.1, %.lr.ph.split.us.us.new ], [ 0, %.lr.ph.split.us.us ] ; 4 uses
  %niter189 = phi i64 [ %niter189.next.1, %.lr.ph.split.us.us.new ], [ 0, %.lr.ph.split.us.us ]
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv141
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !7
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.fj, i64 %i.hk
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !7
  %i.hn = sext i32 %i.hm to i64
  %gep113.us = getelementptr [8 x i8], ptr %invariant.gep112.us, i64 %i.hn ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv141
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !56
  %i.hq = load double, ptr %gep113.us, align 8, !tbaa !56
  %i.hr = fadd double %i.hp, %i.hq
  store double %i.hr, ptr %gep113.us, align 8, !tbaa !56
  %indvars.iv.next142 = or disjoint i64 %indvars.iv141, 1 ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next142
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !7
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.fj, i64 %i.hu
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !7
  %i.hx = sext i32 %i.hw to i64
  %gep113.us.1 = getelementptr [8 x i8], ptr %invariant.gep112.us, i64 %i.hx ; 2 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next142
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !56
  %i.ia = load double, ptr %gep113.us.1, align 8, !tbaa !56
  %i.ib = fadd double %i.hz, %i.ia
  store double %i.ib, ptr %gep113.us.1, align 8, !tbaa !56
  %indvars.iv.next142.1 = add nuw nsw i64 %indvars.iv141, 2 ; 2 uses
  %niter189.next.1 = add i64 %niter189, 2         ; 2 uses
  %niter189.ncmp.1 = icmp eq i64 %niter189.next.1, %unroll_iter188
  br i1 %niter189.ncmp.1, label %..loopexit110_crit_edge.us.loopexit.unr-lcssa, label %.lr.ph.split.us.us.new, !llvm.loop !90

..loopexit110_crit_edge.us.loopexit.unr-lcssa:    ; preds = %.lr.ph.split.us.us.new
  br i1 %lcmp.mod186.not, label %..loopexit110_crit_edge.us, label %.epil.preheader184

.epil.preheader184:                               ; preds = %..loopexit110_crit_edge.us.loopexit.unr-lcssa, %.lr.ph.split.us.us
  %indvars.iv141.epil.init = phi i64 [ 0, %.lr.ph.split.us.us ], [ %indvars.iv.next142.1, %..loopexit110_crit_edge.us.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod187)
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv141.epil.init
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !7
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr inbounds [4 x i8], ptr %i.fj, i64 %i.ie
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !7
  %i.ih = sext i32 %i.ig to i64
  %gep113.us.epil = getelementptr [8 x i8], ptr %invariant.gep112.us, i64 %i.ih ; 2 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv141.epil.init
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !56
  %i.ik = load double, ptr %gep113.us.epil, align 8, !tbaa !56
  %i.il = fadd double %i.ij, %i.ik
  store double %i.il, ptr %gep113.us.epil, align 8, !tbaa !56
  br label %..loopexit110_crit_edge.us

..loopexit110_crit_edge.us.loopexit181.unr-lcssa: ; preds = %.lr.ph.split.us132.new
  br i1 %lcmp.mod.not, label %..loopexit110_crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit110_crit_edge.us.loopexit181.unr-lcssa, %.lr.ph.split.us132
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.us132 ], [ %indvars.iv.next.1, %..loopexit110_crit_edge.us.loopexit181.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod183)
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.epil.init
  %i.in = load i32, ptr %i.im, align 4, !tbaa !7
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds [4 x i8], ptr %i.fj, i64 %i.io
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !7
  %i.ir = sext i32 %i.iq to i64
  %gep.us.epil = getelementptr [8 x i8], ptr %invariant.gep.us, i64 %i.ir ; 2 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.epil.init
  %i.it = load double, ptr %i.is, align 8, !tbaa !56
  %i.iu = load double, ptr %gep.us.epil, align 8, !tbaa !56
  %i.iv = fadd double %i.it, %i.iu
  store double %i.iv, ptr %gep.us.epil, align 8, !tbaa !56
  br label %..loopexit110_crit_edge.us

..loopexit110_crit_edge.us:                       ; preds = %.epil.preheader, %..loopexit110_crit_edge.us.loopexit181.unr-lcssa, %.epil.preheader184, %..loopexit110_crit_edge.us.loopexit.unr-lcssa, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %.lr.ph121.split.split.us
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %exitcond150.not = icmp eq i64 %indvars.iv.next147, %wide.trip.count149
  br i1 %exitcond150.not, label %._crit_edge, label %.lr.ph121.split.split.us, !llvm.loop !89

._crit_edge:                                      ; preds = %..loopexit110_crit_edge.us, %..loopexit_crit_edge.us.us, %.lr.ph121.split, %.lr.ph121.split.us, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_StructMatrixSetBoxValues(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) local_unnamed_addr #0 !guid !107 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64
  %i.b = alloca [3 x i32], align 4                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !42
  %i.i = tail call ptr @hypre_BoxArrayCreate(i32 noundef %i.h) #11 ; 6 uses
  %i.j = tail call ptr @hypre_BoxCreate() #11     ; 9 uses
  %i.k = load i32, ptr %i.g, align 8, !tbaa !42
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !53
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = tail call i32 @hypre_IntersectBoxes(ptr noundef %1, ptr noundef %i.s, ptr noundef %i.j) #11 ; 0 uses
  %i.u = load i32, ptr %i.j, align 4, !tbaa !7
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !53
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %indvars.iv ; 6 uses
  store i32 %i.u, ptr %i.w, align 4, !tbaa !7
  %i.x = load i32, ptr %i.m, align 4, !tbaa !7
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 %i.x, ptr %i.y, align 4, !tbaa !7
  %i.z = load i32, ptr %i.n, align 4, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !7
  %i.ab = load i32, ptr %i.o, align 4, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !7
  %i.ad = load i32, ptr %i.p, align 4, !tbaa !7
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !7
  %i.af = load i32, ptr %i.q, align 4, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = load i32, ptr %i.g, align 8, !tbaa !42
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next, %i.ai
  br i1 %i.aj, label %bb.b, label %._crit_edge.thread, !llvm.loop !92

._crit_edge.thread:                               ; preds = %bb.b
  %i.ak = tail call i32 @hypre_BoxDestroy(ptr noundef nonnull %i.j) #11 ; 0 uses
  br label %bb.c

._crit_edge:                                      ; preds = %bb.a
  %i.al = tail call i32 @hypre_BoxDestroy(ptr noundef %i.j) #11 ; 0 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.m, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !39
  %i.ao = tail call ptr @hypre_BoxDuplicate(ptr noundef %1) #11 ; 9 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !7
  %i.aq = mul nsw i32 %i.ap, %2
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 12 ; 4 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !7
  %i.at = mul nsw i32 %i.as, %2
  %i.au = add nsw i32 %2, -1
  %i.av = add nsw i32 %i.au, %i.at
  store i32 %i.av, ptr %i.ar, align 4, !tbaa !7
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !42
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph540, label %._crit_edge541

.lr.ph540:                                        ; preds = %bb.c
  %i.az = icmp sgt i32 %2, 0
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not454 = icmp eq i32 %5, 0
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.bh = load ptr, ptr %i.i, align 8, !tbaa !53  ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %._crit_edge541, label %.lr.ph540.split.preheader

.lr.ph540.split.preheader:                        ; preds = %.lr.ph540
  %i.bj = sext i32 %2 to i64                      ; 8 uses
  %wide.trip.count = zext nneg i32 %2 to i64
  %wide.trip.count586 = zext nneg i32 %2 to i64
  %ident.check627.not = icmp eq i32 %2, 1
  %ident.check.not = icmp eq i32 %2, 1
  %invariant.op677 = sub i64 -1, %i.a
  br label %.lr.ph540.split

.lr.ph540.splitthread-pre-split:                  ; preds = %.loopexit
  %.pr = load ptr, ptr %i.i, align 8, !tbaa !53
  br label %.lr.ph540.split

.lr.ph540.split:                                  ; preds = %.lr.ph540.splitthread-pre-split, %.lr.ph540.split.preheader
  %i.bk = phi ptr [ %.pr, %.lr.ph540.splitthread-pre-split ], [ %i.bh, %.lr.ph540.split.preheader ] ; 2 uses
  %indvars.iv588 = phi i64 [ %indvars.iv.next589, %.lr.ph540.splitthread-pre-split ], [ 0, %.lr.ph540.split.preheader ] ; 5 uses
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %indvars.iv588 ; 7 uses
  %i.bm = load ptr, ptr %i.an, align 8, !tbaa !53
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %indvars.iv588 ; 6 uses
  %.not453 = icmp eq ptr %i.bk, null
  br i1 %.not453, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph540.split
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 4 ; 3 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !7  ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 3 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !7  ; 2 uses
  br i1 %i.az, label %.lr.ph531, label %.loopexit

.lr.ph531:                                        ; preds = %bb.d
  %i.bs = load i32, ptr %i.bl, align 4, !tbaa !7
  %i.bt = mul nsw i32 %i.bs, %2                   ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 4 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 12 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  br i1 %.not454, label %.lr.ph531.split.us, label %.lr.ph531.split

.lr.ph531.split.us:                               ; preds = %.lr.ph531, %.critedge.us
  %indvars.iv583 = phi i64 [ %indvars.iv.next584, %.critedge.us ], [ 0, %.lr.ph531 ] ; 2 uses
  %.sroa.0212.0528.us = phi i32 [ %i.gn, %.critedge.us ], [ %i.bt, %.lr.ph531 ] ; 2 uses
  %i.by = load ptr, ptr %i.ba, align 8, !tbaa !30 ; 2 uses
  %i.bz = ptrtoaddr ptr %i.by to i64
  %i.ca = load ptr, ptr %i.bb, align 8, !tbaa !31
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv588
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !32
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv583
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !7
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !7
  %i.ci = sext i32 %i.ch to i64                   ; 2 uses
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.ci ; 6 uses
  %i.ck = call i32 @hypre_BoxGetSize(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.b) #11 ; 0 uses
  %i.cl = load i32, ptr %i.bl, align 4, !tbaa !7
  %i.cm = load i32, ptr %i.bn, align 4, !tbaa !7  ; 2 uses
  %i.cn = sub i32 %i.cl, %i.cm
  %i.co = load i32, ptr %i.bo, align 4, !tbaa !7
  %i.cp = load i32, ptr %i.bu, align 4, !tbaa !7  ; 2 uses
  %i.cq = sub i32 %i.co, %i.cp
  %i.cr = load i32, ptr %i.bw, align 4, !tbaa !7
  %i.cs = sub nsw i32 %i.cr, %i.cp                ; 3 uses
  %i.ct = icmp sgt i32 %i.cs, -1                  ; 2 uses
  br i1 %i.ct, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph531.split.us
  %i.cu = load i32, ptr %i.bq, align 4, !tbaa !7
  %i.cv = load i32, ptr %i.bx, align 4, !tbaa !7
  %i.cw = sub nsw i32 %i.cu, %i.cv
  %i.cx = add nuw nsw i32 %i.cs, 1
  %i.cy = mul nsw i32 %i.cw, %i.cx
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph531.split.us
  %i.cz = phi i32 [ %i.cy, %bb.e ], [ 0, %.lr.ph531.split.us ]
  %i.da = load i32, ptr %i.bv, align 4, !tbaa !7
  %i.db = sub i32 %i.da, %i.cm                    ; 2 uses
  %i.dc = icmp sgt i32 %i.db, -1                  ; 2 uses
  %i.dd = add nsw i32 %i.cq, %i.cz
  %i.de = add i32 %i.db, 1                        ; 2 uses
  %i.df = mul nsw i32 %i.de, %i.dd
  %i.dg = select i1 %i.dc, i32 %i.df, i32 0
  %i.dh = add nsw i32 %i.cn, %i.dg
  %i.di = load i32, ptr %i.ao, align 4, !tbaa !7  ; 2 uses
  %i.dj = sub i32 %.sroa.0212.0528.us, %i.di
  %i.dk = load i32, ptr %i.bc, align 4, !tbaa !7  ; 2 uses
  %i.dl = sub i32 %i.bp, %i.dk
  %i.dm = load i32, ptr %i.bd, align 4, !tbaa !7
  %i.dn = sub nsw i32 %i.dm, %i.dk                ; 3 uses
  %i.do = icmp sgt i32 %i.dn, -1                  ; 2 uses
  br i1 %i.do, label %bb.g, label %._crit_edge592

._crit_edge592:                                   ; preds = %bb.f
  %.pre = add nuw nsw i32 %i.dn, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dp = load i32, ptr %i.be, align 4, !tbaa !7
  %i.dq = sub nsw i32 %i.br, %i.dp
  %i.dr = add nuw nsw i32 %i.dn, 1                ; 2 uses
  %i.ds = mul nsw i32 %i.dq, %i.dr
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge592, %bb.g
  %.pre-phi = phi i32 [ %.pre, %._crit_edge592 ], [ %i.dr, %bb.g ]
  %i.dt = phi i32 [ 0, %._crit_edge592 ], [ %i.ds, %bb.g ]
  %i.du = load i32, ptr %i.b, align 4, !tbaa !7   ; 8 uses
  %i.dv = load i32, ptr %i.bf, align 4, !tbaa !7  ; 4 uses
  %i.dw = load i32, ptr %i.bg, align 4, !tbaa !7  ; 2 uses
  %i.dx = icmp sgt i32 %i.dw, 0
  br i1 %i.dx, label %.preheader473.lr.ph.us, label %.critedge.us

.preheader473.lr.ph.us:                           ; preds = %bb.h
  %i.dy = load i32, ptr %i.ar, align 4, !tbaa !7
  %i.dz = sub i32 %i.dy, %i.di                    ; 2 uses
  %i.ea = icmp sgt i32 %i.dz, -1                  ; 2 uses
  %i.eb = add i32 %i.dz, 1                        ; 2 uses
  %i.ec = select i1 %i.ea, i32 %i.eb, i32 0       ; 3 uses
  %i.ed = mul nsw i32 %i.ec, %.pre-phi
  %i.ee = select i1 %i.do, i32 %i.ed, i32 0
  %i.ef = select i1 %i.dc, i32 %i.de, i32 0       ; 3 uses
  %i.eg = add nuw nsw i32 %i.cs, 1
  %i.eh = mul nsw i32 %i.ef, %i.eg
  %i.ei = select i1 %i.ct, i32 %i.eh, i32 0
  %i.ej = mul i32 %2, %i.du
  %i.ek = icmp sgt i32 %i.dv, 0
  %i.el = sub i32 %i.ef, %i.du
  %i.em = sub i32 %i.ec, %i.ej
  %i.en = mul i32 %i.dv, %i.ef
  %i.eo = sub i32 %i.ei, %i.en
  %i.ep = mul i32 %i.ec, %i.dv
  %i.eq = sub i32 %i.ee, %i.ep
  %i.er = icmp sgt i32 %i.du, 0
  %or.cond616 = and i1 %i.ek, %i.er
  br i1 %or.cond616, label %.preheader473.us.us.preheader, label %.critedge.us

.preheader473.us.us.preheader:                    ; preds = %.preheader473.lr.ph.us
  %i.es = add nsw i32 %i.dl, %i.dt
  %i.et = mul nsw i32 %i.eb, %i.es
  %i.eu = select i1 %i.ea, i32 %i.et, i32 0
  %i.ev = add nsw i32 %i.dj, %i.eu
  %i.ew = zext nneg i32 %i.du to i64              ; 2 uses
  %min.iters.check = icmp ugt i32 %i.du, 7
  %or.cond = and i1 %min.iters.check, %ident.check.not
  %invariant.op.reass = add i64 %i.bz, %invariant.op677
  %n.vec = and i64 %i.ew, 2147483644              ; 5 uses
  %i.ex = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.ew
  br label %.preheader473.us.us

.preheader473.us.us:                              ; preds = %.preheader473.us.us.preheader, %._crit_edge511.split.us.us.us
  %.3522.us.us = phi i32 [ %i.gm, %._crit_edge511.split.us.us.us ], [ 0, %.preheader473.us.us.preheader ]
  %.3417521.us.us = phi i32 [ %i.gl, %._crit_edge511.split.us.us.us ], [ %i.ev, %.preheader473.us.us.preheader ]
  %.3421520.us.us = phi i32 [ %i.gk, %._crit_edge511.split.us.us.us ], [ %i.dh, %.preheader473.us.us.preheader ]
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge504.us.us.us, %.preheader473.us.us
  %.3406510.us.us.us = phi i32 [ 0, %.preheader473.us.us ], [ %i.gj, %._crit_edge504.us.us.us ]
  %.4509.us.us.us = phi i32 [ %.3417521.us.us, %.preheader473.us.us ], [ %i.gi, %._crit_edge504.us.us.us ]
  %.4422508.us.us.us = phi i32 [ %.3421520.us.us, %.preheader473.us.us ], [ %i.gh, %._crit_edge504.us.us.us ]
  %i.ey = sext i32 %.4509.us.us.us to i64         ; 5 uses
  %i.ez = sext i32 %.4422508.us.us.us to i64      ; 5 uses
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.preheader.us.us.us
  %6 = sub nsw i64 %i.ez, %i.ey
  %i.fa = add nsw i64 %6, %i.ci
  %i.fb = shl nsw i64 %i.fa, 3
  %i.fc = add i64 %i.fb, %invariant.op.reass
  %diff.check = icmp ult i64 %i.fc, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.fd = add nsw i64 %n.vec, %i.ez               ; 2 uses
  %i.fe = add nsw i64 %n.vec, %i.ey               ; 2 uses
  %invariant.gep675.a = getelementptr [8 x i8], ptr %4, i64 %i.ey
  %invariant.gep677 = getelementptr [8 x i8], ptr %i.cj, i64 %i.ez
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep676.a = getelementptr [8 x i8], ptr %invariant.gep675.a, i64 %index ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %gep676.a, i64 16
  %wide.load = load <2 x double>, ptr %gep676.a, align 8, !tbaa !56
  %wide.load623 = load <2 x double>, ptr %i.ff, align 8, !tbaa !56
  %gep678 = getelementptr [8 x i8], ptr %invariant.gep677, i64 %index ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %gep678, i64 16
  store <2 x double> %wide.load, ptr %gep678, align 8, !tbaa !56
  store <2 x double> %wide.load623, ptr %i.fg, align 8, !tbaa !56
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fh = icmp eq i64 %index.next, %n.vec
  br i1 %i.fh, label %middle.block, label %vector.body, !llvm.loop !93

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge504.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us.us.us, %middle.block
  %indvars.iv575.ph = phi i64 [ %i.ez, %vector.memcheck ], [ %i.ez, %.preheader.us.us.us ], [ %i.fd, %middle.block ] ; 2 uses
  %indvars.iv573.ph = phi i64 [ %i.ey, %vector.memcheck ], [ %i.ey, %.preheader.us.us.us ], [ %i.fe, %middle.block ] ; 2 uses
  %.3410502.us.us.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader.us.us.us ], [ %i.ex, %middle.block ] ; 4 uses
  %i.fi = sub i32 %i.du, %.3410502.us.us.us.ph
  %xtraiter663 = and i32 %i.fi, 3                 ; 2 uses
  %lcmp.mod664.not = icmp eq i32 %xtraiter663, 0
  br i1 %lcmp.mod664.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv575.prol = phi i64 [ %indvars.iv.next576.prol, %scalar.ph.prol ], [ %indvars.iv575.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv573.prol = phi i64 [ %indvars.iv.next574.prol, %scalar.ph.prol ], [ %indvars.iv573.ph, %scalar.ph.preheader ] ; 2 uses
  %.3410502.us.us.us.prol = phi i32 [ %i.fm, %scalar.ph.prol ], [ %.3410502.us.us.us.ph, %scalar.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fj = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv573.prol
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !56
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %indvars.iv575.prol
  store double %i.fk, ptr %i.fl, align 8, !tbaa !56
  %indvars.iv.next576.prol = add nsw i64 %indvars.iv575.prol, 1 ; 3 uses
  %indvars.iv.next574.prol = add nsw i64 %indvars.iv573.prol, %i.bj ; 3 uses
  %i.fm = add nuw nsw i32 %.3410502.us.us.us.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter663
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !94

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next576.lcssa660.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next576.prol, %scalar.ph.prol ]
  %indvars.iv.next574.lcssa659.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next574.prol, %scalar.ph.prol ]
  %indvars.iv575.unr = phi i64 [ %indvars.iv575.ph, %scalar.ph.preheader ], [ %indvars.iv.next576.prol, %scalar.ph.prol ]
  %indvars.iv573.unr = phi i64 [ %indvars.iv573.ph, %scalar.ph.preheader ], [ %indvars.iv.next574.prol, %scalar.ph.prol ]
  %.3410502.us.us.us.unr = phi i32 [ %.3410502.us.us.us.ph, %scalar.ph.preheader ], [ %i.fm, %scalar.ph.prol ]
  %i.fn = sub i32 %.3410502.us.us.us.ph, %i.du
  %i.fo = icmp ugt i32 %i.fn, -4
  br i1 %i.fo, label %._crit_edge504.us.us.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv575 = phi i64 [ %indvars.iv.next576.3, %scalar.ph ], [ %indvars.iv575.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv573 = phi i64 [ %indvars.iv.next574.3, %scalar.ph ], [ %indvars.iv573.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %.3410502.us.us.us = phi i32 [ %i.ge, %scalar.ph ], [ %.3410502.us.us.us.unr, %scalar.ph.prol.loopexit ]
  %i.fp = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv573
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !56
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %indvars.iv575
  store double %i.fq, ptr %i.fr, align 8, !tbaa !56
  %indvars.iv.next574 = add nsw i64 %indvars.iv573, %i.bj ; 2 uses
  %i.fs = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next574
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !56
  %i.fu = getelementptr [8 x i8], ptr %i.cj, i64 %indvars.iv575
  %i.fv = getelementptr i8, ptr %i.fu, i64 8
  store double %i.ft, ptr %i.fv, align 8, !tbaa !56
  %indvars.iv.next574.1 = add nsw i64 %indvars.iv.next574, %i.bj ; 2 uses
  %i.fw = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next574.1
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !56
  %i.fy = getelementptr [8 x i8], ptr %i.cj, i64 %indvars.iv575
  %i.fz = getelementptr i8, ptr %i.fy, i64 16
  store double %i.fx, ptr %i.fz, align 8, !tbaa !56
  %indvars.iv.next574.2 = add nsw i64 %indvars.iv.next574.1, %i.bj ; 2 uses
  %i.ga = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next574.2
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !56
  %i.gc = getelementptr [8 x i8], ptr %i.cj, i64 %indvars.iv575
  %i.gd = getelementptr i8, ptr %i.gc, i64 24
  store double %i.gb, ptr %i.gd, align 8, !tbaa !56
  %indvars.iv.next576.3 = add nsw i64 %indvars.iv575, 4 ; 2 uses
  %indvars.iv.next574.3 = add nsw i64 %indvars.iv.next574.2, %i.bj ; 2 uses
  %i.ge = add nuw nsw i32 %.3410502.us.us.us, 4   ; 2 uses
  %exitcond580.not.3 = icmp eq i32 %i.ge, %i.du
  br i1 %exitcond580.not.3, label %._crit_edge504.us.us.us, label %scalar.ph, !llvm.loop !95

._crit_edge504.us.us.us:                          ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next576.lcssa = phi i64 [ %i.fd, %middle.block ], [ %indvars.iv.next576.lcssa660.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next576.3, %scalar.ph ]
  %indvars.iv.next574.lcssa = phi i64 [ %i.fe, %middle.block ], [ %indvars.iv.next574.lcssa659.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next574.3, %scalar.ph ]
  %i.gf = trunc nsw i64 %indvars.iv.next576.lcssa to i32
  %i.gg = trunc nsw i64 %indvars.iv.next574.lcssa to i32
  %i.gh = add nsw i32 %i.el, %i.gf                ; 2 uses
  %i.gi = add nsw i32 %i.em, %i.gg                ; 2 uses
  %i.gj = add nuw nsw i32 %.3406510.us.us.us, 1   ; 2 uses
  %exitcond581.not = icmp eq i32 %i.gj, %i.dv
  br i1 %exitcond581.not, label %._crit_edge511.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !96

._crit_edge511.split.us.us.us:                    ; preds = %._crit_edge504.us.us.us
  %i.gk = add nsw i32 %i.eo, %i.gh
  %i.gl = add nsw i32 %i.eq, %i.gi
  %i.gm = add nuw nsw i32 %.3522.us.us, 1         ; 2 uses
  %exitcond582.not = icmp eq i32 %i.gm, %i.dw
  br i1 %exitcond582.not, label %.critedge.us, label %.preheader473.us.us, !llvm.loop !97

.critedge.us:                                     ; preds = %._crit_edge511.split.us.us.us, %.preheader473.lr.ph.us, %bb.h
  %i.gn = add nsw i32 %.sroa.0212.0528.us, 1
  %indvars.iv.next584 = add nuw nsw i64 %indvars.iv583, 1 ; 2 uses
  %exitcond587.not = icmp eq i64 %indvars.iv.next584, %wide.trip.count586
  br i1 %exitcond587.not, label %.loopexit, label %.lr.ph531.split.us, !llvm.loop !98

.lr.ph531.split:                                  ; preds = %.lr.ph531, %.critedge
  %indvars.iv568 = phi i64 [ %indvars.iv.next569, %.critedge ], [ 0, %.lr.ph531 ] ; 2 uses
  %.sroa.0212.0528 = phi i32 [ %i.lf, %.critedge ], [ %i.bt, %.lr.ph531 ] ; 2 uses
  %i.go = load ptr, ptr %i.ba, align 8, !tbaa !30 ; 3 uses
  %i.gp = load ptr, ptr %i.bb, align 8, !tbaa !31
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv588
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !32
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv568
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !7
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.gr, i64 %i.gu
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !7
  %i.gx = sext i32 %i.gw to i64                   ; 2 uses
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.go, i64 %i.gx ; 4 uses
  %i.gz = call i32 @hypre_BoxGetSize(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.b) #11 ; 0 uses
  %i.ha = load i32, ptr %i.bl, align 4, !tbaa !7
  %i.hb = load i32, ptr %i.bn, align 4, !tbaa !7  ; 2 uses
  %i.hc = sub i32 %i.ha, %i.hb
  %i.hd = load i32, ptr %i.bo, align 4, !tbaa !7
  %i.he = load i32, ptr %i.bu, align 4, !tbaa !7  ; 2 uses
  %i.hf = sub i32 %i.hd, %i.he
  %i.hg = load i32, ptr %i.bw, align 4, !tbaa !7
  %i.hh = sub nsw i32 %i.hg, %i.he                ; 3 uses
  %i.hi = icmp sgt i32 %i.hh, -1                  ; 2 uses
  br i1 %i.hi, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph531.split
  %i.hj = load i32, ptr %i.bq, align 4, !tbaa !7
  %i.hk = load i32, ptr %i.bx, align 4, !tbaa !7
  %i.hl = sub nsw i32 %i.hj, %i.hk
  %i.hm = add nuw nsw i32 %i.hh, 1
  %i.hn = mul nsw i32 %i.hl, %i.hm
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph531.split, %bb.i
  %i.ho = phi i32 [ %i.hn, %bb.i ], [ 0, %.lr.ph531.split ]
  %i.hp = load i32, ptr %i.bv, align 4, !tbaa !7
  %i.hq = sub i32 %i.hp, %i.hb                    ; 2 uses
  %i.hr = icmp sgt i32 %i.hq, -1                  ; 2 uses
  %i.hs = add nsw i32 %i.hf, %i.ho
  %i.ht = add i32 %i.hq, 1                        ; 2 uses
  %i.hu = mul nsw i32 %i.ht, %i.hs
  %i.hv = select i1 %i.hr, i32 %i.hu, i32 0
  %i.hw = add nsw i32 %i.hc, %i.hv
  %i.hx = load i32, ptr %i.ao, align 4, !tbaa !7  ; 2 uses
  %i.hy = sub i32 %.sroa.0212.0528, %i.hx
  %i.hz = load i32, ptr %i.bc, align 4, !tbaa !7  ; 2 uses
  %i.ia = sub i32 %i.bp, %i.hz
  %i.ib = load i32, ptr %i.bd, align 4, !tbaa !7
  %i.ic = sub nsw i32 %i.ib, %i.hz                ; 3 uses
  %i.id = icmp sgt i32 %i.ic, -1                  ; 2 uses
  br i1 %i.id, label %bb.k, label %._crit_edge591

._crit_edge591:                                   ; preds = %bb.j
  %.pre593 = add nuw nsw i32 %i.ic, 1
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ie = load i32, ptr %i.be, align 4, !tbaa !7
  %i.if = sub nsw i32 %i.br, %i.ie
  %i.ig = add nuw nsw i32 %i.ic, 1                ; 2 uses
  %i.ih = mul nsw i32 %i.if, %i.ig
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge591, %bb.k
  %.pre-phi594 = phi i32 [ %.pre593, %._crit_edge591 ], [ %i.ig, %bb.k ]
  %i.ii = phi i32 [ 0, %._crit_edge591 ], [ %i.ih, %bb.k ]
  %i.ij = load i32, ptr %i.b, align 4, !tbaa !7   ; 9 uses
  %i.ik = load i32, ptr %i.bf, align 4, !tbaa !7  ; 4 uses
  %i.il = load i32, ptr %i.bg, align 4, !tbaa !7  ; 2 uses
  %i.im = icmp sgt i32 %i.il, 0
  br i1 %i.im, label %.preheader474.lr.ph, label %.critedge

.preheader474.lr.ph:                              ; preds = %bb.l
  %i.in = load i32, ptr %i.ar, align 4, !tbaa !7
  %i.io = sub i32 %i.in, %i.hx                    ; 2 uses
  %i.ip = icmp sgt i32 %i.io, -1                  ; 2 uses
  %i.iq = add i32 %i.io, 1                        ; 2 uses
  %i.ir = select i1 %i.ip, i32 %i.iq, i32 0       ; 3 uses
  %i.is = mul nsw i32 %i.ir, %.pre-phi594
  %i.it = select i1 %i.id, i32 %i.is, i32 0
  %i.iu = select i1 %i.hr, i32 %i.ht, i32 0       ; 3 uses
  %i.iv = add nuw nsw i32 %i.hh, 1
  %i.iw = mul nsw i32 %i.iu, %i.iv
  %i.ix = select i1 %i.hi, i32 %i.iw, i32 0
  %i.iy = mul i32 %2, %i.ij
  %i.iz = icmp sgt i32 %i.ik, 0
  %i.ja = sub i32 %i.iu, %i.ij
  %i.jb = sub i32 %i.ir, %i.iy
  %i.jc = mul i32 %i.ik, %i.iu
  %i.jd = sub i32 %i.ix, %i.jc
  %i.je = mul i32 %i.ir, %i.ik
  %i.jf = sub i32 %i.it, %i.je
  %i.jg = icmp sgt i32 %i.ij, 0
  %or.cond618 = and i1 %i.iz, %i.jg
  br i1 %or.cond618, label %.preheader474.us.preheader, label %.critedge

.preheader474.us.preheader:                       ; preds = %.preheader474.lr.ph
  %i.jh = add nsw i32 %i.ia, %i.ii
  %i.ji = mul nsw i32 %i.iq, %i.jh
  %i.jj = select i1 %i.ip, i32 %i.ji, i32 0
  %i.jk = add nsw i32 %i.hy, %i.jj
  %i.jl = add nsw i32 %i.ij, -1
  %i.jm = zext i32 %i.jl to i64
  %7 = shl nuw nsw i64 %i.jm, 3                   ; 2 uses
  %i.jn = shl nsw i64 %i.gx, 3                    ; 2 uses
  %i.jo = zext nneg i32 %i.ij to i64              ; 2 uses
  %min.iters.check638 = icmp ugt i32 %i.ij, 3
  %or.cond654 = and i1 %min.iters.check638, %ident.check627.not
  %invariant.gep671 = getelementptr i8, ptr %i.go, i64 %i.jn
  %8 = getelementptr i8, ptr %i.go, i64 %i.jn
  %9 = getelementptr i8, ptr %8, i64 8
  %10 = getelementptr i8, ptr %9, i64 %7
  %invariant.gep671.a = getelementptr i8, ptr %4, i64 %7
  %invariant.gep673 = getelementptr i8, ptr %invariant.gep671.a, i64 8
  %n.vec641 = and i64 %i.jo, 2147483644           ; 5 uses
  %i.jp = trunc nuw nsw i64 %n.vec641 to i32
  %cmp.n650 = icmp eq i64 %n.vec641, %i.jo
  br label %.preheader474.us

.preheader474.us:                                 ; preds = %.preheader474.us.preheader, %._crit_edge488.split.us.us
  %.1402497.us = phi i32 [ %i.le, %._crit_edge488.split.us.us ], [ 0, %.preheader474.us.preheader ]
  %.0414496.us = phi i32 [ %i.ld, %._crit_edge488.split.us.us ], [ %i.jk, %.preheader474.us.preheader ]
  %.0418495.us = phi i32 [ %i.lc, %._crit_edge488.split.us.us ], [ %i.hw, %.preheader474.us.preheader ]
  br label %.preheader472.us.us

.preheader472.us.us:                              ; preds = %._crit_edge483.us.us, %.preheader474.us
  %.1404487.us.us = phi i32 [ 0, %.preheader474.us ], [ %i.lb, %._crit_edge483.us.us ]
  %.1415486.us.us = phi i32 [ %.0414496.us, %.preheader474.us ], [ %i.la, %._crit_edge483.us.us ]
  %.1419485.us.us = phi i32 [ %.0418495.us, %.preheader474.us ], [ %i.kz, %._crit_edge483.us.us ]
  %i.jq = sext i32 %.1415486.us.us to i64         ; 5 uses
  %i.jr = sext i32 %.1419485.us.us to i64         ; 5 uses
  br i1 %or.cond654, label %vector.memcheck639, label %scalar.ph637.preheader

vector.memcheck639:                               ; preds = %.preheader472.us.us
  %i.js = shl nsw i64 %i.jr, 3                    ; 2 uses
  %gep672 = getelementptr i8, ptr %invariant.gep671, i64 %i.js
  %i.jt = getelementptr i8, ptr %10, i64 %i.js
  %i.ju = shl nsw i64 %i.jq, 3                    ; 2 uses
  %gep674 = getelementptr i8, ptr %4, i64 %i.ju
  %i.jv = getelementptr i8, ptr %invariant.gep673, i64 %i.ju
  %bound0 = icmp ult ptr %gep672, %i.jv
  %bound1 = icmp ult ptr %gep674, %i.jt
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph637.preheader, label %vector.ph640

vector.ph640:                                     ; preds = %vector.memcheck639
  %i.jw = add nsw i64 %n.vec641, %i.jr            ; 2 uses
  %i.jx = add nsw i64 %n.vec641, %i.jq            ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %4, i64 %i.jq
  %invariant.gep669 = getelementptr [8 x i8], ptr %i.gy, i64 %i.jr
  br label %vector.body642

vector.body642:                                   ; preds = %vector.body642, %vector.ph640
  %index643 = phi i64 [ 0, %vector.ph640 ], [ %index.next648, %vector.body642 ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index643 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load644 = load <2 x double>, ptr %gep, align 8, !tbaa !56, !alias.scope !108
  %wide.load645 = load <2 x double>, ptr %i.jy, align 8, !tbaa !56, !alias.scope !108
  %gep670 = getelementptr [8 x i8], ptr %invariant.gep669, i64 %index643 ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %gep670, i64 16 ; 2 uses
  %wide.load646 = load <2 x double>, ptr %gep670, align 8, !tbaa !56, !alias.scope !109, !noalias !108
  %wide.load647 = load <2 x double>, ptr %i.jz, align 8, !tbaa !56, !alias.scope !109, !noalias !108
  %i.ka = fadd <2 x double> %wide.load644, %wide.load646
  %i.kb = fadd <2 x double> %wide.load645, %wide.load647
  store <2 x double> %i.ka, ptr %gep670, align 8, !tbaa !56, !alias.scope !109, !noalias !108
  store <2 x double> %i.kb, ptr %i.jz, align 8, !tbaa !56, !alias.scope !109, !noalias !108
  %index.next648 = add nuw i64 %index643, 4       ; 2 uses
  %i.kc = icmp eq i64 %index.next648, %n.vec641
  br i1 %i.kc, label %middle.block649, label %vector.body642, !llvm.loop !102

middle.block649:                                  ; preds = %vector.body642
  br i1 %cmp.n650, label %._crit_edge483.us.us, label %scalar.ph637.preheader

scalar.ph637.preheader:                           ; preds = %vector.memcheck639, %.preheader472.us.us, %middle.block649
  %indvars.iv561.ph = phi i64 [ %i.jr, %vector.memcheck639 ], [ %i.jr, %.preheader472.us.us ], [ %i.jw, %middle.block649 ] ; 3 uses
  %indvars.iv559.ph = phi i64 [ %i.jq, %vector.memcheck639 ], [ %i.jq, %.preheader472.us.us ], [ %i.jx, %middle.block649 ] ; 3 uses
  %.1408481.us.us.ph = phi i32 [ 0, %vector.memcheck639 ], [ 0, %.preheader472.us.us ], [ %i.jp, %middle.block649 ] ; 4 uses
  %i.kd = sub i32 %i.ij, %.1408481.us.us.ph
  %.neg = add i32 %.1408481.us.us.ph, 1
  %xtraiter = and i32 %i.kd, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph637.prol.loopexit, label %scalar.ph637.prol

scalar.ph637.prol:                                ; preds = %scalar.ph637.preheader
  %i.ke = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv559.ph
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !56
  %i.kg = getelementptr inbounds [8 x i8], ptr %i.gy, i64 %indvars.iv561.ph ; 2 uses
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !56
  %i.ki = fadd double %i.kf, %i.kh
  store double %i.ki, ptr %i.kg, align 8, !tbaa !56
  %indvars.iv.next562.prol = add nsw i64 %indvars.iv561.ph, 1 ; 2 uses
  %indvars.iv.next560.prol = add nsw i64 %indvars.iv559.ph, %i.bj ; 2 uses
  %i.kj = add nuw nsw i32 %.1408481.us.us.ph, 1
  br label %scalar.ph637.prol.loopexit

scalar.ph637.prol.loopexit:                       ; preds = %scalar.ph637.prol, %scalar.ph637.preheader
  %indvars.iv.next562.lcssa657.unr = phi i64 [ poison, %scalar.ph637.preheader ], [ %indvars.iv.next562.prol, %scalar.ph637.prol ]
  %indvars.iv.next560.lcssa656.unr = phi i64 [ poison, %scalar.ph637.preheader ], [ %indvars.iv.next560.prol, %scalar.ph637.prol ]
  %indvars.iv561.unr = phi i64 [ %indvars.iv561.ph, %scalar.ph637.preheader ], [ %indvars.iv.next562.prol, %scalar.ph637.prol ]
  %indvars.iv559.unr = phi i64 [ %indvars.iv559.ph, %scalar.ph637.preheader ], [ %indvars.iv.next560.prol, %scalar.ph637.prol ]
  %.1408481.us.us.unr = phi i32 [ %.1408481.us.us.ph, %scalar.ph637.preheader ], [ %i.kj, %scalar.ph637.prol ]
  %i.kk = icmp eq i32 %i.ij, %.neg
  br i1 %i.kk, label %._crit_edge483.us.us, label %scalar.ph637

scalar.ph637:                                     ; preds = %scalar.ph637.prol.loopexit, %scalar.ph637
  %indvars.iv561 = phi i64 [ %indvars.iv.next562.1, %scalar.ph637 ], [ %indvars.iv561.unr, %scalar.ph637.prol.loopexit ] ; 3 uses
  %indvars.iv559 = phi i64 [ %indvars.iv.next560.1, %scalar.ph637 ], [ %indvars.iv559.unr, %scalar.ph637.prol.loopexit ] ; 2 uses
  %.1408481.us.us = phi i32 [ %i.kw, %scalar.ph637 ], [ %.1408481.us.us.unr, %scalar.ph637.prol.loopexit ]
  %i.kl = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv559
  %i.km = load double, ptr %i.kl, align 8, !tbaa !56
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.gy, i64 %indvars.iv561 ; 2 uses
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !56
  %i.kp = fadd double %i.km, %i.ko
  store double %i.kp, ptr %i.kn, align 8, !tbaa !56
  %indvars.iv.next560 = add nsw i64 %indvars.iv559, %i.bj ; 2 uses
  %i.kq = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next560
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !56
  %i.ks = getelementptr [8 x i8], ptr %i.gy, i64 %indvars.iv561
  %i.kt = getelementptr i8, ptr %i.ks, i64 8      ; 2 uses
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !56
  %i.kv = fadd double %i.kr, %i.ku
  store double %i.kv, ptr %i.kt, align 8, !tbaa !56
  %indvars.iv.next562.1 = add nsw i64 %indvars.iv561, 2 ; 2 uses
  %indvars.iv.next560.1 = add nsw i64 %indvars.iv.next560, %i.bj ; 2 uses
  %i.kw = add nuw nsw i32 %.1408481.us.us, 2      ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.kw, %i.ij
  br i1 %exitcond.not.1, label %._crit_edge483.us.us, label %scalar.ph637, !llvm.loop !103

._crit_edge483.us.us:                             ; preds = %scalar.ph637.prol.loopexit, %scalar.ph637, %middle.block649
  %indvars.iv.next562.lcssa = phi i64 [ %i.jw, %middle.block649 ], [ %indvars.iv.next562.lcssa657.unr, %scalar.ph637.prol.loopexit ], [ %indvars.iv.next562.1, %scalar.ph637 ]
  %indvars.iv.next560.lcssa = phi i64 [ %i.jx, %middle.block649 ], [ %indvars.iv.next560.lcssa656.unr, %scalar.ph637.prol.loopexit ], [ %indvars.iv.next560.1, %scalar.ph637 ]
  %i.kx = trunc nsw i64 %indvars.iv.next562.lcssa to i32
  %i.ky = trunc nsw i64 %indvars.iv.next560.lcssa to i32
  %i.kz = add nsw i32 %i.ja, %i.kx                ; 2 uses
  %i.la = add nsw i32 %i.jb, %i.ky                ; 2 uses
  %i.lb = add nuw nsw i32 %.1404487.us.us, 1      ; 2 uses
  %exitcond566.not = icmp eq i32 %i.lb, %i.ik
  br i1 %exitcond566.not, label %._crit_edge488.split.us.us, label %.preheader472.us.us, !llvm.loop !104

._crit_edge488.split.us.us:                       ; preds = %._crit_edge483.us.us
  %i.lc = add nsw i32 %i.jd, %i.kz
  %i.ld = add nsw i32 %i.jf, %i.la
  %i.le = add nuw nsw i32 %.1402497.us, 1         ; 2 uses
  %exitcond567.not = icmp eq i32 %i.le, %i.il
  br i1 %exitcond567.not, label %.critedge, label %.preheader474.us, !llvm.loop !105

.critedge:                                        ; preds = %._crit_edge488.split.us.us, %.preheader474.lr.ph, %bb.l
  %i.lf = add nsw i32 %.sroa.0212.0528, 1
  %indvars.iv.next569 = add nuw nsw i64 %indvars.iv568, 1 ; 2 uses
  %exitcond571.not = icmp eq i64 %indvars.iv.next569, %wide.trip.count
  br i1 %exitcond571.not, label %.loopexit, label %.lr.ph531.split, !llvm.loop !98

.loopexit:                                        ; preds = %.critedge, %.critedge.us, %bb.d, %.lr.ph540.split
  %indvars.iv.next589 = add nuw nsw i64 %indvars.iv588, 1 ; 2 uses
  %i.lg = load i32, ptr %i.aw, align 8, !tbaa !42
  %i.lh = sext i32 %i.lg to i64
  %i.li = icmp slt i64 %indvars.iv.next589, %i.lh
  br i1 %i.li, label %.lr.ph540.splitthread-pre-split, label %._crit_edge541, !llvm.loop !106

._crit_edge541:                                   ; preds = %.loopexit, %.lr.ph540, %bb.c
  %i.lj = call i32 @hypre_BoxDestroy(ptr noundef nonnull %i.ao) #11 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge541, %._crit_edge
  %i.lk = call i32 @hypre_BoxArrayDestroy(ptr noundef %i.i) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  ret i32 0
}

declare ptr @hypre_BoxCreate() local_unnamed_addr #2

declare i32 @hypre_IntersectBoxes(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_BoxDestroy(ptr noundef) local_unnamed_addr #2

declare ptr @hypre_BoxDuplicate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_StructMatrixAssemble(ptr noundef %0) local_unnamed_addr #0 !guid !111 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca [3 x i32], align 4                ; 7 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !38   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 1, ptr %i.e, align 4, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 1, ptr %i.j, align 4, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 1, ptr %i.k, align 4, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.n = call i32 @hypre_CreateCommInfoFromNumGhost(ptr noundef %i.m, ptr noundef nonnull %i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #11 ; 0 uses
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !61
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !39   ; 2 uses
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !62
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !62
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load i32, ptr %i.u, align 8, !tbaa !48
  %i.w = load i32, ptr %0, align 8, !tbaa !33
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.z = call ptr @hypre_CommPkgCreate(ptr noundef %i.o, ptr noundef %i.p, ptr noundef nonnull %i.e, ptr noundef nonnull %i.e, ptr noundef %i.r, ptr noundef %i.r, ptr noundef %i.s, ptr noundef %i.t, i32 noundef %i.v, i32 noundef %i.w, ptr noundef nonnull %i.y) #11 ; 2 uses
  store ptr %i.z, ptr %i.g, align 8, !tbaa !38
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.h, %bb.a ], [ %i.z, %bb.b ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !30 ; 2 uses
  %i.ac = call i32 @hypre_InitializeCommunication(ptr noundef %.0, ptr noundef %i.ab, ptr noundef %i.ab, ptr noundef nonnull %i.f) #11 ; 0 uses
  %i.ad = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.ae = call i32 @hypre_FinalizeCommunication(ptr noundef %i.ad) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 0
}

declare i32 @hypre_CreateCommInfoFromNumGhost(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @hypre_CommPkgCreate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

end_hunk_0
