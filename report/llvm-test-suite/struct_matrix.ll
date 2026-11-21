Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/struct_matrix?download=true
inline.NumInlined: 4
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@hypre_StructMatrixSetValues:bb.a
  %i.gn = fadd double %i.gl, %i.gm
  store double %i.gn, ptr %gep.us, align 8, !tbaa !56
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !7
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr inbounds [4 x i8], ptr %i.fj, i64 %i.gq
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !7
  %i.gt = sext i32 %i.gs to i64
  %gep.us.1 = getelementptr [8 x i8], ptr %invariant.gep.us, i64 %i.gt ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !56
  %i.gw = load double, ptr %gep.us.1, align 8, !tbaa !56
  %i.gx = fadd double %i.gv, %i.gw
  store double %i.gx, ptr %gep.us.1, align 8, !tbaa !56
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit110_crit_edge.us.loopexit181.unr-lcssa, label %.lr.ph.split.us132.new, !llvm.loop !90

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
  br i1 %.not, label %bb.l, label %bb.c

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
  %6 = icmp sgt i32 %2, 0
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not454 = icmp eq i32 %5, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.bg = load ptr, ptr %i.i, align 8, !tbaa !53  ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %._crit_edge541, label %.lr.ph540.split.preheader.a

.lr.ph540.split.preheader.a:                      ; preds = %.lr.ph540
  %7 = sext i32 %2 to i64                         ; 8 uses
  %wide.trip.count = zext nneg i32 %2 to i64
  %wide.trip.count586 = zext nneg i32 %2 to i64
  %scevgep = getelementptr i8, ptr %4, i64 8
  %ident.check627.not = icmp eq i32 %2, 1
  %ident.check.not = icmp eq i32 %2, 1
  %invariant.op678 = sub i64 -1, %i.a
  br label %.lr.ph540.split

.lr.ph540.splitthread-pre-split:                  ; preds = %.loopexit
  %.pr = load ptr, ptr %i.i, align 8, !tbaa !53
  br label %.lr.ph540.split

.lr.ph540.split:                                  ; preds = %.lr.ph540.splitthread-pre-split, %.lr.ph540.split.preheader.a
  %8 = phi ptr [ %.pr, %.lr.ph540.splitthread-pre-split ], [ %i.bg, %.lr.ph540.split.preheader.a ] ; 2 uses
  %indvars.iv588 = phi i64 [ %indvars.iv.next589, %.lr.ph540.splitthread-pre-split ], [ 0, %.lr.ph540.split.preheader.a ] ; 5 uses
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %8, i64 %indvars.iv588 ; 7 uses
  %i.bj = load ptr, ptr %i.an, align 8, !tbaa !53
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %indvars.iv588 ; 6 uses
  %.not453 = icmp eq ptr %8, null
  br i1 %.not453, label %.loopexit, label %9

9:                                                ; preds = %.lr.ph540.split
  %10 = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 3 uses
  %11 = load i32, ptr %10, align 4, !tbaa !7      ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 3 uses
  %13 = load i32, ptr %12, align 4, !tbaa !7      ; 2 uses
  br i1 %6, label %.lr.ph531, label %.loopexit

.lr.ph531:                                        ; preds = %9
  %i.bl = load i32, ptr %i.bi, align 4, !tbaa !7
  %i.bm = mul nsw i32 %i.bl, %2                   ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 4 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 12 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  br i1 %.not454, label %.lr.ph531.split.us, label %.lr.ph531.split

.lr.ph531.split.us:                               ; preds = %.lr.ph531, %.critedge.us
  %indvars.iv583 = phi i64 [ %indvars.iv.next584, %.critedge.us ], [ 0, %.lr.ph531 ] ; 2 uses
  %.sroa.0212.0528.us = phi i32 [ %i.ft, %.critedge.us ], [ %i.bm, %.lr.ph531 ] ; 2 uses
  %i.br = load ptr, ptr %i.az, align 8, !tbaa !30 ; 2 uses
  %14 = ptrtoaddr ptr %i.br to i64
  %i.bs = load ptr, ptr %i.ba, align 8, !tbaa !31
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv588
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !32
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv583
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !7
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !7
  %i.ca = sext i32 %i.bz to i64                   ; 2 uses
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.ca ; 6 uses
  %i.cc = call i32 @hypre_BoxGetSize(ptr noundef nonnull %i.bi, ptr noundef nonnull %i.b) #11 ; 0 uses
  %i.cd = load i32, ptr %i.bi, align 4, !tbaa !7
  %i.ce = load i32, ptr %i.bk, align 4, !tbaa !7  ; 2 uses
  %i.cf = sub i32 %i.cd, %i.ce
  %i.cg = load i32, ptr %10, align 4, !tbaa !7
  %i.ch = load i32, ptr %i.bn, align 4, !tbaa !7  ; 2 uses
  %i.ci = sub i32 %i.cg, %i.ch
  %i.cj = load i32, ptr %i.bp, align 4, !tbaa !7
  %i.ck = sub nsw i32 %i.cj, %i.ch                ; 3 uses
  %i.cl = icmp sgt i32 %i.ck, -1                  ; 2 uses
  br i1 %i.cl, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph531.split.us
  %i.cm = load i32, ptr %12, align 4, !tbaa !7
  %i.cn = load i32, ptr %i.bq, align 4, !tbaa !7
  %i.co = sub nsw i32 %i.cm, %i.cn
  %i.cp = add nuw nsw i32 %i.ck, 1
  %i.cq = mul nsw i32 %i.co, %i.cp
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph531.split.us
  %i.cr = phi i32 [ %i.cq, %bb.d ], [ 0, %.lr.ph531.split.us ]
  %i.cs = load i32, ptr %i.bo, align 4, !tbaa !7
  %i.ct = sub i32 %i.cs, %i.ce                    ; 2 uses
  %i.cu = icmp sgt i32 %i.ct, -1                  ; 2 uses
  %i.cv = add nsw i32 %i.ci, %i.cr
  %i.cw = add i32 %i.ct, 1                        ; 2 uses
  %i.cx = mul nsw i32 %i.cw, %i.cv
  %i.cy = select i1 %i.cu, i32 %i.cx, i32 0
  %i.cz = add nsw i32 %i.cf, %i.cy
  %i.da = load i32, ptr %i.ao, align 4, !tbaa !7  ; 2 uses
  %i.db = sub i32 %.sroa.0212.0528.us, %i.da
  %i.dc = load i32, ptr %i.bb, align 4, !tbaa !7  ; 2 uses
  %i.dd = sub i32 %11, %i.dc
  %i.de = load i32, ptr %i.bc, align 4, !tbaa !7
  %i.df = sub nsw i32 %i.de, %i.dc                ; 3 uses
  %i.dg = icmp sgt i32 %i.df, -1                  ; 2 uses
  br i1 %i.dg, label %bb.f, label %._crit_edge592

._crit_edge592:                                   ; preds = %bb.e
  %.pre.a = add nuw nsw i32 %i.df, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.dh = load i32, ptr %i.bd, align 4, !tbaa !7
  %i.di = sub nsw i32 %13, %i.dh
  %i.dj = add nuw nsw i32 %i.df, 1                ; 2 uses
  %i.dk = mul nsw i32 %i.di, %i.dj
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge592, %bb.f
  %.pre-phi.a = phi i32 [ %.pre.a, %._crit_edge592 ], [ %i.dj, %bb.f ]
  %i.dl = phi i32 [ 0, %._crit_edge592 ], [ %i.dk, %bb.f ]
  %i.dm = load i32, ptr %i.b, align 4, !tbaa !7   ; 8 uses
  %i.dn = load i32, ptr %i.be, align 4, !tbaa !7  ; 4 uses
  %i.do = load i32, ptr %i.bf, align 4, !tbaa !7  ; 2 uses
  %i.dp = icmp sgt i32 %i.do, 0
  br i1 %i.dp, label %.preheader473.lr.ph.us, label %.critedge.us

.preheader473.lr.ph.us:                           ; preds = %bb.g
  %i.dq = load i32, ptr %i.ar, align 4, !tbaa !7
  %i.dr = sub i32 %i.dq, %i.da                    ; 2 uses
  %i.ds = icmp sgt i32 %i.dr, -1                  ; 2 uses
  %i.dt = add i32 %i.dr, 1                        ; 2 uses
  %i.du = select i1 %i.ds, i32 %i.dt, i32 0       ; 3 uses
  %i.dv = mul nsw i32 %i.du, %.pre-phi.a
  %i.dw = select i1 %i.dg, i32 %i.dv, i32 0
  %i.dx = select i1 %i.cu, i32 %i.cw, i32 0       ; 3 uses
  %i.dy = add nuw nsw i32 %i.ck, 1
  %i.dz = mul nsw i32 %i.dx, %i.dy
  %i.ea = select i1 %i.cl, i32 %i.dz, i32 0
  %i.eb = mul i32 %2, %i.dm
  %i.ec = icmp sgt i32 %i.dn, 0
  %i.ed = sub i32 %i.dx, %i.dm
  %i.ee = sub i32 %i.du, %i.eb
  %i.ef = mul i32 %i.dn, %i.dx
  %i.eg = sub i32 %i.ea, %i.ef
  %i.eh = mul i32 %i.du, %i.dn
  %i.ei = sub i32 %i.dw, %i.eh
  %i.ej = icmp sgt i32 %i.dm, 0
  %or.cond616 = and i1 %i.ec, %i.ej
  br i1 %or.cond616, label %.preheader473.us.us.preheader, label %.critedge.us

.preheader473.us.us.preheader:                    ; preds = %.preheader473.lr.ph.us
  %i.ek = add nsw i32 %i.dd, %i.dl
  %i.el = mul nsw i32 %i.dt, %i.ek
  %i.em = select i1 %i.ds, i32 %i.el, i32 0
  %i.en = add nsw i32 %i.db, %i.em
  %i.eo = zext nneg i32 %i.dm to i64              ; 2 uses
  %min.iters.check.a = icmp ugt i32 %i.dm, 7
  %or.cond = and i1 %min.iters.check.a, %ident.check.not
  %invariant.op.reass = add i64 %14, %invariant.op678
  %n.vec.a = and i64 %i.eo, 2147483644            ; 5 uses
  %i.ep = trunc nuw nsw i64 %n.vec.a to i32
  %cmp.n.a = icmp eq i64 %n.vec.a, %i.eo
  br label %.preheader473.us.us

.preheader473.us.us:                              ; preds = %.preheader473.us.us.preheader, %._crit_edge511.split.us.us.us
  %.3522.us.us = phi i32 [ %i.fs, %._crit_edge511.split.us.us.us ], [ 0, %.preheader473.us.us.preheader ]
  %.3417521.us.us = phi i32 [ %i.fr, %._crit_edge511.split.us.us.us ], [ %i.en, %.preheader473.us.us.preheader ]
  %.3421520.us.us = phi i32 [ %i.fq, %._crit_edge511.split.us.us.us ], [ %i.cz, %.preheader473.us.us.preheader ]
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge504.us.us.us, %.preheader473.us.us
  %.3406510.us.us.us = phi i32 [ 0, %.preheader473.us.us ], [ %i.fp, %._crit_edge504.us.us.us ]
  %.4509.us.us.us = phi i32 [ %.3417521.us.us, %.preheader473.us.us ], [ %i.fo, %._crit_edge504.us.us.us ]
  %.4422508.us.us.us = phi i32 [ %.3421520.us.us, %.preheader473.us.us ], [ %i.fn, %._crit_edge504.us.us.us ]
  %i.eq = sext i32 %.4509.us.us.us to i64         ; 5 uses
  %i.er = sext i32 %.4422508.us.us.us to i64      ; 5 uses
  br i1 %or.cond, label %vector.memcheck.a, label %scalar.ph.preheader.a

vector.memcheck.a:                                ; preds = %.preheader.us.us.us
  %15 = sub nsw i64 %i.er, %i.eq
  %16 = add nsw i64 %15, %i.ca
  %i.es = shl nsw i64 %16, 3
  %.reass = add i64 %i.es, %invariant.op.reass
  %diff.check.a = icmp ult i64 %.reass, 31
  br i1 %diff.check.a, label %scalar.ph.preheader.a, label %vector.ph.a

vector.ph.a:                                      ; preds = %vector.memcheck.a
  %i.et = add nsw i64 %n.vec.a, %i.er             ; 2 uses
  %i.eu = add nsw i64 %n.vec.a, %i.eq             ; 2 uses
  %invariant.gep674 = getelementptr [8 x i8], ptr %4, i64 %i.eq
  %invariant.gep676 = getelementptr [8 x i8], ptr %i.cb, i64 %i.er
  br label %vector.body.a

vector.body.a:                                    ; preds = %vector.body.a, %vector.ph.a
  %index.a = phi i64 [ 0, %vector.ph.a ], [ %index.next.a, %vector.body.a ] ; 3 uses
  %gep675 = getelementptr [8 x i8], ptr %invariant.gep674, i64 %index.a ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %gep675, i64 16
  %wide.load.a = load <2 x double>, ptr %gep675, align 8, !tbaa !56
  %wide.load623 = load <2 x double>, ptr %i.ev, align 8, !tbaa !56
  %gep677 = getelementptr [8 x i8], ptr %invariant.gep676, i64 %index.a ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %gep677, i64 16
  store <2 x double> %wide.load.a, ptr %gep677, align 8, !tbaa !56
  store <2 x double> %wide.load623, ptr %i.ew, align 8, !tbaa !56
  %index.next.a = add nuw i64 %index.a, 4         ; 2 uses
  %i.ex = icmp eq i64 %index.next.a, %n.vec.a
  br i1 %i.ex, label %middle.block.a, label %vector.body.a, !llvm.loop !93

middle.block.a:                                   ; preds = %vector.body.a
  br i1 %cmp.n.a, label %._crit_edge504.us.us.us, label %scalar.ph.preheader.a

scalar.ph.preheader.a:                            ; preds = %vector.memcheck.a, %.preheader.us.us.us, %middle.block.a
  %indvars.iv575.ph = phi i64 [ %i.er, %vector.memcheck.a ], [ %i.er, %.preheader.us.us.us ], [ %i.et, %middle.block.a ] ; 2 uses
  %indvars.iv573.ph = phi i64 [ %i.eq, %vector.memcheck.a ], [ %i.eq, %.preheader.us.us.us ], [ %i.eu, %middle.block.a ] ; 2 uses
  %.3410502.us.us.us.ph = phi i32 [ 0, %vector.memcheck.a ], [ 0, %.preheader.us.us.us ], [ %i.ep, %middle.block.a ] ; 4 uses
  %i.ey = sub i32 %i.dm, %.3410502.us.us.us.ph
  %xtraiter666 = and i32 %i.ey, 3                 ; 2 uses
  %lcmp.mod667.not = icmp eq i32 %xtraiter666, 0
  br i1 %lcmp.mod667.not, label %scalar.ph.prol.loopexit.a, label %scalar.ph.prol.a

scalar.ph.prol.a:                                 ; preds = %scalar.ph.preheader.a, %scalar.ph.prol.a
  %indvars.iv575.prol = phi i64 [ %indvars.iv.next576.prol, %scalar.ph.prol.a ], [ %indvars.iv575.ph, %scalar.ph.preheader.a ] ; 2 uses
  %indvars.iv573.prol = phi i64 [ %indvars.iv.next574.prol, %scalar.ph.prol.a ], [ %indvars.iv573.ph, %scalar.ph.preheader.a ] ; 2 uses
  %.3410502.us.us.us.prol = phi i32 [ %18, %scalar.ph.prol.a ], [ %.3410502.us.us.us.ph, %scalar.ph.preheader.a ]
  %prol.iter = phi i32 [ %prol.iter.next.a, %scalar.ph.prol.a ], [ 0, %scalar.ph.preheader.a ]
  %i.ez = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv573.prol
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !56
  %17 = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %indvars.iv575.prol
  store double %i.fa, ptr %17, align 8, !tbaa !56
  %indvars.iv.next576.prol = add nsw i64 %indvars.iv575.prol, 1 ; 3 uses
  %indvars.iv.next574.prol = add nsw i64 %indvars.iv573.prol, %7 ; 3 uses
  %18 = add nuw nsw i32 %.3410502.us.us.us.prol, 1 ; 2 uses
  %prol.iter.next.a = add i32 %prol.iter, 1       ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next.a, %xtraiter666
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit.a, label %scalar.ph.prol.a, !llvm.loop !94

scalar.ph.prol.loopexit.a:                        ; preds = %scalar.ph.prol.a, %scalar.ph.preheader.a
  %indvars.iv.next576.lcssa663.unr = phi i64 [ poison, %scalar.ph.preheader.a ], [ %indvars.iv.next576.prol, %scalar.ph.prol.a ]
  %indvars.iv.next574.lcssa662.unr = phi i64 [ poison, %scalar.ph.preheader.a ], [ %indvars.iv.next574.prol, %scalar.ph.prol.a ]
  %indvars.iv575.unr = phi i64 [ %indvars.iv575.ph, %scalar.ph.preheader.a ], [ %indvars.iv.next576.prol, %scalar.ph.prol.a ]
  %indvars.iv573.unr = phi i64 [ %indvars.iv573.ph, %scalar.ph.preheader.a ], [ %indvars.iv.next574.prol, %scalar.ph.prol.a ]
  %.3410502.us.us.us.unr = phi i32 [ %.3410502.us.us.us.ph, %scalar.ph.preheader.a ], [ %18, %scalar.ph.prol.a ]
  %19 = sub i32 %.3410502.us.us.us.ph, %i.dm
  %20 = icmp ugt i32 %19, -4
  br i1 %20, label %._crit_edge504.us.us.us, label %scalar.ph.a

scalar.ph.a:                                      ; preds = %scalar.ph.prol.loopexit.a, %scalar.ph.a
  %indvars.iv575 = phi i64 [ %indvars.iv.next576.3, %scalar.ph.a ], [ %indvars.iv575.unr, %scalar.ph.prol.loopexit.a ] ; 5 uses
  %indvars.iv573 = phi i64 [ %indvars.iv.next574.3, %scalar.ph.a ], [ %indvars.iv573.unr, %scalar.ph.prol.loopexit.a ] ; 2 uses
  %.3410502.us.us.us = phi i32 [ %i.fk, %scalar.ph.a ], [ %.3410502.us.us.us.unr, %scalar.ph.prol.loopexit.a ]
  %i.fb = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv573
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !56
  %21 = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %indvars.iv575
  store double %i.fc, ptr %21, align 8, !tbaa !56
  %indvars.iv.next574 = add nsw i64 %indvars.iv573, %7 ; 2 uses
  %i.fd = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next574
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !56
  %22 = getelementptr [8 x i8], ptr %i.cb, i64 %indvars.iv575
  %23 = getelementptr i8, ptr %22, i64 8
  store double %i.fe, ptr %23, align 8, !tbaa !56
  %indvars.iv.next574.1 = add nsw i64 %indvars.iv.next574, %7 ; 2 uses
  %i.ff = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next574.1
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !56
  %i.fh = getelementptr [8 x i8], ptr %i.cb, i64 %indvars.iv575
  %i.fi = getelementptr i8, ptr %i.fh, i64 16
  store double %i.fg, ptr %i.fi, align 8, !tbaa !56
  %indvars.iv.next574.2 = add nsw i64 %indvars.iv.next574.1, %7 ; 2 uses
  %24 = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next574.2
  %i.fj = load double, ptr %24, align 8, !tbaa !56
  %25 = getelementptr [8 x i8], ptr %i.cb, i64 %indvars.iv575
  %26 = getelementptr i8, ptr %25, i64 24
  store double %i.fj, ptr %26, align 8, !tbaa !56
  %indvars.iv.next576.3 = add nsw i64 %indvars.iv575, 4 ; 2 uses
  %indvars.iv.next574.3 = add nsw i64 %indvars.iv.next574.2, %7 ; 2 uses
  %i.fk = add nuw nsw i32 %.3410502.us.us.us, 4   ; 2 uses
  %exitcond580.not.3 = icmp eq i32 %i.fk, %i.dm
  br i1 %exitcond580.not.3, label %._crit_edge504.us.us.us, label %scalar.ph.a, !llvm.loop !95

._crit_edge504.us.us.us:                          ; preds = %scalar.ph.prol.loopexit.a, %scalar.ph.a, %middle.block.a
  %indvars.iv.next576.lcssa = phi i64 [ %i.et, %middle.block.a ], [ %indvars.iv.next576.lcssa663.unr, %scalar.ph.prol.loopexit.a ], [ %indvars.iv.next576.3, %scalar.ph.a ]
  %indvars.iv.next574.lcssa = phi i64 [ %i.eu, %middle.block.a ], [ %indvars.iv.next574.lcssa662.unr, %scalar.ph.prol.loopexit.a ], [ %indvars.iv.next574.3, %scalar.ph.a ]
  %i.fl = trunc nsw i64 %indvars.iv.next576.lcssa to i32
  %i.fm = trunc nsw i64 %indvars.iv.next574.lcssa to i32
  %i.fn = add nsw i32 %i.ed, %i.fl                ; 2 uses
  %i.fo = add nsw i32 %i.ee, %i.fm                ; 2 uses
  %i.fp = add nuw nsw i32 %.3406510.us.us.us, 1   ; 2 uses
  %exitcond581.not = icmp eq i32 %i.fp, %i.dn
  br i1 %exitcond581.not, label %._crit_edge511.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !96

._crit_edge511.split.us.us.us:                    ; preds = %._crit_edge504.us.us.us
  %i.fq = add nsw i32 %i.eg, %i.fn
  %i.fr = add nsw i32 %i.ei, %i.fo
  %i.fs = add nuw nsw i32 %.3522.us.us, 1         ; 2 uses
  %exitcond582.not = icmp eq i32 %i.fs, %i.do
  br i1 %exitcond582.not, label %.critedge.us, label %.preheader473.us.us, !llvm.loop !97

.critedge.us:                                     ; preds = %._crit_edge511.split.us.us.us, %.preheader473.lr.ph.us, %bb.g
  %i.ft = add nsw i32 %.sroa.0212.0528.us, 1
  %indvars.iv.next584 = add nuw nsw i64 %indvars.iv583, 1 ; 2 uses
  %exitcond587.not = icmp eq i64 %indvars.iv.next584, %wide.trip.count586
  br i1 %exitcond587.not, label %.loopexit, label %.lr.ph531.split.us, !llvm.loop !98

.lr.ph531.split:                                  ; preds = %.lr.ph531, %.critedge
  %indvars.iv568 = phi i64 [ %indvars.iv.next569, %.critedge ], [ 0, %.lr.ph531 ] ; 2 uses
  %.sroa.0212.0528 = phi i32 [ %i.jy, %.critedge ], [ %i.bm, %.lr.ph531 ] ; 2 uses
  %i.fu = load ptr, ptr %i.az, align 8, !tbaa !30 ; 2 uses
  %i.fv = load ptr, ptr %i.ba, align 8, !tbaa !31
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %indvars.iv588
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !32
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv568
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !7
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !7
  %i.gd = sext i32 %i.gc to i64                   ; 2 uses
  %i.ge = getelementptr [8 x i8], ptr %i.fu, i64 %i.gd ; 5 uses
  %i.gf = call i32 @hypre_BoxGetSize(ptr noundef nonnull %i.bi, ptr noundef nonnull %i.b) #11 ; 0 uses
  %i.gg = load i32, ptr %i.bi, align 4, !tbaa !7
  %i.gh = load i32, ptr %i.bk, align 4, !tbaa !7  ; 2 uses
  %i.gi = sub i32 %i.gg, %i.gh
  %i.gj = load i32, ptr %10, align 4, !tbaa !7
  %i.gk = load i32, ptr %i.bn, align 4, !tbaa !7  ; 2 uses
  %i.gl = sub i32 %i.gj, %i.gk
  %i.gm = load i32, ptr %i.bp, align 4, !tbaa !7
  %i.gn = sub nsw i32 %i.gm, %i.gk                ; 3 uses
  %i.go = icmp sgt i32 %i.gn, -1                  ; 2 uses
  br i1 %i.go, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph531.split
  %i.gp = load i32, ptr %12, align 4, !tbaa !7
  %i.gq = load i32, ptr %i.bq, align 4, !tbaa !7
  %i.gr = sub nsw i32 %i.gp, %i.gq
  %i.gs = add nuw nsw i32 %i.gn, 1
  %i.gt = mul nsw i32 %i.gr, %i.gs
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph531.split, %bb.h
  %i.gu = phi i32 [ %i.gt, %bb.h ], [ 0, %.lr.ph531.split ]
  %i.gv = load i32, ptr %i.bo, align 4, !tbaa !7
  %i.gw = sub i32 %i.gv, %i.gh                    ; 2 uses
  %i.gx = icmp sgt i32 %i.gw, -1                  ; 2 uses
  %i.gy = add nsw i32 %i.gl, %i.gu
  %i.gz = add i32 %i.gw, 1                        ; 2 uses
  %i.ha = mul nsw i32 %i.gz, %i.gy
  %i.hb = select i1 %i.gx, i32 %i.ha, i32 0
  %i.hc = add nsw i32 %i.gi, %i.hb
  %i.hd = load i32, ptr %i.ao, align 4, !tbaa !7  ; 2 uses
  %i.he = sub i32 %.sroa.0212.0528, %i.hd
  %i.hf = load i32, ptr %i.bb, align 4, !tbaa !7  ; 2 uses
  %i.hg = sub i32 %11, %i.hf
  %i.hh = load i32, ptr %i.bc, align 4, !tbaa !7
  %i.hi = sub nsw i32 %i.hh, %i.hf                ; 3 uses
  %i.hj = icmp sgt i32 %i.hi, -1                  ; 2 uses
  br i1 %i.hj, label %bb.j, label %._crit_edge591

._crit_edge591:                                   ; preds = %bb.i
  %.pre593 = add nuw nsw i32 %i.hi, 1
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.hk = load i32, ptr %i.bd, align 4, !tbaa !7
  %i.hl = sub nsw i32 %13, %i.hk
  %i.hm = add nuw nsw i32 %i.hi, 1                ; 2 uses
  %i.hn = mul nsw i32 %i.hl, %i.hm
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge591, %bb.j
  %.pre-phi594 = phi i32 [ %.pre593, %._crit_edge591 ], [ %i.hm, %bb.j ]
  %i.ho = phi i32 [ 0, %._crit_edge591 ], [ %i.hn, %bb.j ]
  %i.hp = load i32, ptr %i.b, align 4, !tbaa !7   ; 9 uses
  %i.hq = load i32, ptr %i.be, align 4, !tbaa !7  ; 4 uses
  %i.hr = load i32, ptr %i.bf, align 4, !tbaa !7  ; 2 uses
  %i.hs = icmp sgt i32 %i.hr, 0
  br i1 %i.hs, label %.preheader474.lr.ph, label %.critedge

.preheader474.lr.ph:                              ; preds = %bb.k
  %i.ht = load i32, ptr %i.ar, align 4, !tbaa !7
  %i.hu = sub i32 %i.ht, %i.hd                    ; 2 uses
  %i.hv = icmp sgt i32 %i.hu, -1                  ; 2 uses
  %i.hw = add i32 %i.hu, 1                        ; 2 uses
  %i.hx = select i1 %i.hv, i32 %i.hw, i32 0       ; 3 uses
  %i.hy = mul nsw i32 %i.hx, %.pre-phi594
  %i.hz = select i1 %i.hj, i32 %i.hy, i32 0
  %i.ia = select i1 %i.gx, i32 %i.gz, i32 0       ; 3 uses
  %i.ib = add nuw nsw i32 %i.gn, 1
  %i.ic = mul nsw i32 %i.ia, %i.ib
  %i.id = select i1 %i.go, i32 %i.ic, i32 0
  %i.ie = mul i32 %2, %i.hp
  %i.if = icmp sgt i32 %i.hq, 0
  %i.ig = sub i32 %i.ia, %i.hp
  %i.ih = sub i32 %i.hx, %i.ie
  %i.ii = mul i32 %i.hq, %i.ia
  %i.ij = sub i32 %i.id, %i.ii
  %i.ik = mul i32 %i.hx, %i.hq
  %i.il = sub i32 %i.hz, %i.ik
  %i.im = icmp sgt i32 %i.hp, 0
  %or.cond618 = and i1 %i.if, %i.im
  br i1 %or.cond618, label %.preheader474.us.preheader, label %.critedge

.preheader474.us.preheader:                       ; preds = %.preheader474.lr.ph
  %i.in = add nsw i32 %i.hg, %i.ho
  %i.io = mul nsw i32 %i.hw, %i.in
  %i.ip = select i1 %i.hv, i32 %i.io, i32 0
  %27 = add nsw i32 %i.he, %i.ip
  %i.iq = add nsw i32 %i.hp, -1
  %i.ir = zext i32 %i.iq to i64                   ; 2 uses
  %28 = shl nuw nsw i64 %i.ir, 3
  %scevgep637 = getelementptr i8, ptr %scevgep, i64 %28
  %scevgep638 = getelementptr i8, ptr %i.fu, i64 8
  %i.is = add nsw i64 %i.gd, %i.ir
  %29 = shl nsw i64 %i.is, 3
  %scevgep639 = getelementptr i8, ptr %scevgep638, i64 %29
  %30 = zext nneg i32 %i.hp to i64                ; 2 uses
  %min.iters.check641 = icmp ugt i32 %i.hp, 3
  %or.cond657 = and i1 %min.iters.check641, %ident.check627.not
  %n.vec644 = and i64 %30, 2147483644             ; 5 uses
  %i.it = trunc nuw nsw i64 %n.vec644 to i32
  %cmp.n653 = icmp eq i64 %n.vec644, %30
  br label %.preheader474.us

.preheader474.us:                                 ; preds = %.preheader474.us.preheader, %._crit_edge488.split.us.us
  %.1402497.us = phi i32 [ %i.jx, %._crit_edge488.split.us.us ], [ 0, %.preheader474.us.preheader ]
  %.0414496.us = phi i32 [ %i.jw, %._crit_edge488.split.us.us ], [ %27, %.preheader474.us.preheader ]
  %.0418495.us = phi i32 [ %i.jv, %._crit_edge488.split.us.us ], [ %i.hc, %.preheader474.us.preheader ]
  br label %.preheader472.us.us

.preheader472.us.us:                              ; preds = %._crit_edge483.us.us, %.preheader474.us
  %.1404487.us.us = phi i32 [ 0, %.preheader474.us ], [ %i.ju, %._crit_edge483.us.us ]
  %.1415486.us.us = phi i32 [ %.0414496.us, %.preheader474.us ], [ %i.jt, %._crit_edge483.us.us ]
  %.1419485.us.us = phi i32 [ %.0418495.us, %.preheader474.us ], [ %i.js, %._crit_edge483.us.us ]
  %i.iu = sext i32 %.1415486.us.us to i64         ; 5 uses
  %i.iv = sext i32 %.1419485.us.us to i64         ; 5 uses
  br i1 %or.cond657, label %vector.memcheck642, label %scalar.ph640.preheader

vector.memcheck642:                               ; preds = %.preheader472.us.us
  %31 = shl nsw i64 %i.iv, 3                      ; 2 uses
  %32 = getelementptr i8, ptr %i.ge, i64 %31
  %33 = getelementptr i8, ptr %scevgep639, i64 %31
  %i.iw = shl nsw i64 %i.iu, 3                    ; 2 uses
  %34 = getelementptr i8, ptr %4, i64 %i.iw
  %35 = getelementptr i8, ptr %scevgep637, i64 %i.iw
  %bound0 = icmp ult ptr %32, %35
  %bound1 = icmp ult ptr %34, %33
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph640.preheader, label %vector.ph643

vector.ph643:                                     ; preds = %vector.memcheck642
  %i.ix = add nsw i64 %n.vec644, %i.iv            ; 2 uses
  %i.iy = add nsw i64 %n.vec644, %i.iu            ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %4, i64 %i.iu
  %invariant.gep672 = getelementptr [8 x i8], ptr %i.ge, i64 %i.iv
  br label %vector.body645

vector.body645:                                   ; preds = %vector.body645, %vector.ph643
  %index646 = phi i64 [ 0, %vector.ph643 ], [ %index.next651, %vector.body645 ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index646 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load647 = load <2 x double>, ptr %gep, align 8, !tbaa !56, !alias.scope !108
  %wide.load648 = load <2 x double>, ptr %i.iz, align 8, !tbaa !56, !alias.scope !108
  %gep673 = getelementptr [8 x i8], ptr %invariant.gep672, i64 %index646 ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %gep673, i64 16 ; 2 uses
  %wide.load649 = load <2 x double>, ptr %gep673, align 8, !tbaa !56, !alias.scope !109, !noalias !108
  %wide.load650 = load <2 x double>, ptr %i.ja, align 8, !tbaa !56, !alias.scope !109, !noalias !108
  %36 = fadd <2 x double> %wide.load647, %wide.load649
  %37 = fadd <2 x double> %wide.load648, %wide.load650
  store <2 x double> %36, ptr %gep673, align 8, !tbaa !56, !alias.scope !109, !noalias !108
  store <2 x double> %37, ptr %i.ja, align 8, !tbaa !56, !alias.scope !109, !noalias !108
  %index.next651 = add nuw i64 %index646, 4       ; 2 uses
  %i.jb = icmp eq i64 %index.next651, %n.vec644
  br i1 %i.jb, label %middle.block652, label %vector.body645, !llvm.loop !102

middle.block652:                                  ; preds = %vector.body645
  br i1 %cmp.n653, label %._crit_edge483.us.us, label %scalar.ph640.preheader

scalar.ph640.preheader:                           ; preds = %vector.memcheck642, %.preheader472.us.us, %middle.block652
  %indvars.iv561.ph = phi i64 [ %i.iv, %vector.memcheck642 ], [ %i.iv, %.preheader472.us.us ], [ %i.ix, %middle.block652 ] ; 3 uses
  %indvars.iv559.ph = phi i64 [ %i.iu, %vector.memcheck642 ], [ %i.iu, %.preheader472.us.us ], [ %i.iy, %middle.block652 ] ; 3 uses
  %.1408481.us.us.ph = phi i32 [ 0, %vector.memcheck642 ], [ 0, %.preheader472.us.us ], [ %i.it, %middle.block652 ] ; 4 uses
  %i.jc = sub i32 %i.hp, %.1408481.us.us.ph
  %.neg = add i32 %.1408481.us.us.ph, 1
  %xtraiter = and i32 %i.jc, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph640.prol.loopexit, label %scalar.ph640.prol

scalar.ph640.prol:                                ; preds = %scalar.ph640.preheader
  %38 = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv559.ph
  %39 = load double, ptr %38, align 8, !tbaa !56
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.ge, i64 %indvars.iv561.ph ; 2 uses
  %i.je = load double, ptr %i.jd, align 8, !tbaa !56
  %40 = fadd double %39, %i.je
  store double %40, ptr %i.jd, align 8, !tbaa !56
  %indvars.iv.next562.prol = add nsw i64 %indvars.iv561.ph, 1 ; 2 uses
  %indvars.iv.next560.prol = add nsw i64 %indvars.iv559.ph, %7 ; 2 uses
  %i.jf = add nuw nsw i32 %.1408481.us.us.ph, 1
  br label %scalar.ph640.prol.loopexit

scalar.ph640.prol.loopexit:                       ; preds = %scalar.ph640.prol, %scalar.ph640.preheader
  %indvars.iv.next562.lcssa660.unr = phi i64 [ poison, %scalar.ph640.preheader ], [ %indvars.iv.next562.prol, %scalar.ph640.prol ]
  %indvars.iv.next560.lcssa659.unr = phi i64 [ poison, %scalar.ph640.preheader ], [ %indvars.iv.next560.prol, %scalar.ph640.prol ]
  %indvars.iv561.unr = phi i64 [ %indvars.iv561.ph, %scalar.ph640.preheader ], [ %indvars.iv.next562.prol, %scalar.ph640.prol ]
  %indvars.iv559.unr = phi i64 [ %indvars.iv559.ph, %scalar.ph640.preheader ], [ %indvars.iv.next560.prol, %scalar.ph640.prol ]
  %.1408481.us.us.unr = phi i32 [ %.1408481.us.us.ph, %scalar.ph640.preheader ], [ %i.jf, %scalar.ph640.prol ]
  %41 = icmp eq i32 %i.hp, %.neg
  br i1 %41, label %._crit_edge483.us.us, label %scalar.ph640

scalar.ph640:                                     ; preds = %scalar.ph640.prol.loopexit, %scalar.ph640
  %indvars.iv561 = phi i64 [ %indvars.iv.next562.1, %scalar.ph640 ], [ %indvars.iv561.unr, %scalar.ph640.prol.loopexit ] ; 3 uses
  %indvars.iv559 = phi i64 [ %indvars.iv.next560.1, %scalar.ph640 ], [ %indvars.iv559.unr, %scalar.ph640.prol.loopexit ] ; 2 uses
  %.1408481.us.us = phi i32 [ %i.jp, %scalar.ph640 ], [ %.1408481.us.us.unr, %scalar.ph640.prol.loopexit ]
  %i.jg = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv559
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !56
  %i.ji = getelementptr inbounds [8 x i8], ptr %i.ge, i64 %indvars.iv561 ; 2 uses
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !56
  %42 = fadd double %i.jh, %i.jj
  store double %42, ptr %i.ji, align 8, !tbaa !56
  %indvars.iv.next560 = add nsw i64 %indvars.iv559, %7 ; 2 uses
  %i.jk = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next560
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !56
  %i.jm = getelementptr [8 x i8], ptr %i.ge, i64 %indvars.iv561
  %i.jn = getelementptr i8, ptr %i.jm, i64 8      ; 2 uses
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !56
  %43 = fadd double %i.jl, %i.jo
  store double %43, ptr %i.jn, align 8, !tbaa !56
  %indvars.iv.next562.1 = add nsw i64 %indvars.iv561, 2 ; 2 uses
  %indvars.iv.next560.1 = add nsw i64 %indvars.iv.next560, %7 ; 2 uses
  %i.jp = add nuw nsw i32 %.1408481.us.us, 2      ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.jp, %i.hp
  br i1 %exitcond.not.1, label %._crit_edge483.us.us, label %scalar.ph640, !llvm.loop !103

._crit_edge483.us.us:                             ; preds = %scalar.ph640.prol.loopexit, %scalar.ph640, %middle.block652
  %indvars.iv.next562.lcssa = phi i64 [ %i.ix, %middle.block652 ], [ %indvars.iv.next562.lcssa660.unr, %scalar.ph640.prol.loopexit ], [ %indvars.iv.next562.1, %scalar.ph640 ]
  %indvars.iv.next560.lcssa = phi i64 [ %i.iy, %middle.block652 ], [ %indvars.iv.next560.lcssa659.unr, %scalar.ph640.prol.loopexit ], [ %indvars.iv.next560.1, %scalar.ph640 ]
  %i.jq = trunc nsw i64 %indvars.iv.next562.lcssa to i32
  %i.jr = trunc nsw i64 %indvars.iv.next560.lcssa to i32
  %i.js = add nsw i32 %i.ig, %i.jq                ; 2 uses
  %i.jt = add nsw i32 %i.ih, %i.jr                ; 2 uses
  %i.ju = add nuw nsw i32 %.1404487.us.us, 1      ; 2 uses
  %exitcond566.not = icmp eq i32 %i.ju, %i.hq
  br i1 %exitcond566.not, label %._crit_edge488.split.us.us, label %.preheader472.us.us, !llvm.loop !104

._crit_edge488.split.us.us:                       ; preds = %._crit_edge483.us.us
  %i.jv = add nsw i32 %i.ij, %i.js
  %i.jw = add nsw i32 %i.il, %i.jt
  %i.jx = add nuw nsw i32 %.1402497.us, 1         ; 2 uses
  %exitcond567.not = icmp eq i32 %i.jx, %i.hr
  br i1 %exitcond567.not, label %.critedge, label %.preheader474.us, !llvm.loop !105

.critedge:                                        ; preds = %._crit_edge488.split.us.us, %.preheader474.lr.ph, %bb.k
  %i.jy = add nsw i32 %.sroa.0212.0528, 1
  %indvars.iv.next569 = add nuw nsw i64 %indvars.iv568, 1 ; 2 uses
  %exitcond571.not = icmp eq i64 %indvars.iv.next569, %wide.trip.count
  br i1 %exitcond571.not, label %.loopexit, label %.lr.ph531.split, !llvm.loop !98

.loopexit:                                        ; preds = %.critedge, %.critedge.us, %9, %.lr.ph540.split
  %indvars.iv.next589 = add nuw nsw i64 %indvars.iv588, 1 ; 2 uses
  %i.jz = load i32, ptr %i.aw, align 8, !tbaa !42
  %i.ka = sext i32 %i.jz to i64
  %i.kb = icmp slt i64 %indvars.iv.next589, %i.ka
  br i1 %i.kb, label %.lr.ph540.splitthread-pre-split, label %._crit_edge541, !llvm.loop !106

._crit_edge541:                                   ; preds = %.loopexit, %.lr.ph540, %bb.c
  %i.kc = call i32 @hypre_BoxDestroy(ptr noundef nonnull %i.ao) #11 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge541, %._crit_edge
  %i.kd = call i32 @hypre_BoxArrayDestroy(ptr noundef %i.i) #11 ; 0 uses
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

declare i32 @hypre_InitializeCommunication(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_FinalizeCommunication(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @hypre_StructMatrixSetNumGhost(ptr nofree noundef writeonly captures(none) initializes((88, 112)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 !guid !112 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i32, ptr %1, align 4, !tbaa !7
  store i32 %i.b, ptr %i.a, align 4, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %i.d, ptr %i.e, align 4, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %i.g, ptr %i.h, align 4, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %i.j, ptr %i.k, align 4, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i32, ptr %i.l, align 4, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.m, ptr %i.n, align 4, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %i.p, ptr %i.q, align 4, !tbaa !7
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_StructMatrixPrint(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 !guid !114 {
bb.a:
  %i.a = alloca [255 x i8], align 16              ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.c = load i32, ptr %1, align 8, !tbaa !33
  %i.d = call i32 @hypre_MPI_Comm_rank(i32 noundef %i.c, ptr noundef nonnull %i.b) #11 ; 0 uses
  %i.e = load i32, ptr %i.b, align 4, !tbaa !7
  %i.f = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %0, i32 noundef %i.e) #11 ; 0 uses
  %i.g = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.1) ; 12 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %i.a) ; 0 uses
  call void @exit(i32 noundef 1) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %fwrite = call i64 @fwrite(ptr nonnull @.str.3, i64 13, i64 1, ptr nonnull %i.g) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.k = load i32, ptr %i.j, align 8, !tbaa !37
  %i.l = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.4, i32 noundef %i.k) #11 ; 0 uses
  %fwrite44 = call i64 @fwrite(ptr nonnull @.str.5, i64 7, i64 1, ptr nonnull %i.g) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !45   ; 2 uses
  %i.o = call i32 @hypre_StructGridPrint(ptr noundef nonnull %i.g, ptr noundef %i.n) #11 ; 0 uses
  %fwrite45 = call i64 @fwrite(ptr nonnull @.str.6, i64 10, i64 1, ptr nonnull %i.g) ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !29   ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !49
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !48   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !44
  %i.w = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.7, i32 noundef %i.t) #11 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !47   ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %i.aa = phi i32 [ %i.am, %bb.e ], [ %i.y, %bb.c ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %bb.c ] ; 3 uses
  %.048 = phi i32 [ %.1, %bb.e ], [ 0, %bb.c ]    ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !7
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.ae = add nsw i32 %.048, 1
  %i.af = getelementptr inbounds nuw [12 x i8], ptr %i.r, i64 %indvars.iv ; 3 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !7
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !7
  %i.al = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.8, i32 noundef %.048, i32 noundef %i.ag, i32 noundef %i.ai, i32 noundef %i.ak) #11 ; 0 uses
  %.pre = load i32, ptr %i.x, align 8, !tbaa !47
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %i.am = phi i32 [ %.pre, %bb.d ], [ %i.aa, %.lr.ph ] ; 2 uses
  %.1 = phi i32 [ %i.ae, %bb.d ], [ %.048, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp slt i64 %indvars.iv.next, %i.an
  br i1 %i.ao, label %.lr.ph, label %._crit_edge, !llvm.loop !113

._crit_edge:                                      ; preds = %bb.e, %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !39 ; 2 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !52
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %.042 = phi ptr [ %i.as, %bb.f ], [ %i.aq, %._crit_edge ]
end_hunk_0
begin_hunk_1_@hypre_StructMatrixRead:bb.a
  br i1 %i.af, label %.lr.ph, label %._crit_edge, !llvm.loop !116

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.lcssa = phi i32 [ %i.x, %bb.c ], [ %i.ad, %.lr.ph ]
  %i.ag = call ptr @hypre_StructStencilCreate(i32 noundef %i.t, i32 noundef %.lcssa, ptr noundef %i.w) #11
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !118
  %i.ai = call ptr @hypre_CAlloc(i32 noundef 1, i32 noundef 136) #11 ; 20 uses
  store i32 %0, ptr %i.ai, align 8, !tbaa !33
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = call i32 @hypre_StructGridRef(ptr noundef %i.ah, ptr noundef nonnull %i.aj) #11 ; 0 uses
  %i.al = call ptr @hypre_StructStencilRef(ptr noundef %i.ag) #11
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.al, ptr %i.am, align 8, !tbaa !34
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 56 ; 2 uses
  store i32 1, ptr %i.an, align 8, !tbaa !35
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 128
  store i32 1, ptr %i.ao, align 8, !tbaa !36
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 88 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false), !tbaa !7
  %i.ar = load i32, ptr %i.d, align 4, !tbaa !7
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !37
  %i.as = load i32, ptr %2, align 4, !tbaa !7
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 92
  store i32 %i.au, ptr %i.av, align 4, !tbaa !7
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 96
  store i32 %i.ax, ptr %i.ay, align 8, !tbaa !7
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !7
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ai, i64 100
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %i.ai, i64 104
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !7
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !7
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ai, i64 108
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !7
  %i.bi = call i32 @hypre_StructMatrixInitializeShell(ptr noundef nonnull %i.ai) ; 0 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ai, i64 60
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !54
  %i.bl = call ptr @hypre_CAlloc(i32 noundef %i.bk, i32 noundef 8) #11
  %i.bm = call i32 @hypre_StructMatrixInitializeData(ptr noundef nonnull %i.ai, ptr noundef %i.bl) ; 0 uses
  store i32 1, ptr %i.an, align 8, !tbaa !35
  %i.bn = load ptr, ptr %i.b, align 8, !tbaa !118
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !52
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !39
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !48
  %i.bu = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.9) #11 ; 0 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !30
  %i.bx = call i32 @hypre_ReadBoxArrayData(ptr noundef nonnull %i.j, ptr noundef %i.bp, ptr noundef %i.br, i32 noundef %i.bt, ptr noundef %i.bw) #11 ; 0 uses
  %i.by = call i32 @hypre_StructMatrixAssemble(ptr noundef nonnull %i.ai) ; 0 uses
  %i.bz = call i32 @fclose(ptr noundef nonnull %i.j) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %i.ai
}

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @hypre_StructGridRead(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @hypre_StructStencilCreate(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_ReadBoxArrayData(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{i64 -1807258051287809515}
!9 = !{i64 6900653472229703835}
!10 = !{i64 3859462933737253263}
!11 = !{i64 -2363811432579392309}
!12 = !{i64 8621921324224284480}
!13 = !{i64 -8968589167871703955}
!14 = !{i64 -2226467272166894184}
!15 = !{i64 1893413167509702326}
!16 = !{i64 2754442552648482871}
!17 = !{i64 -3268179178422967994}
!18 = !{i64 -8521057247328310467}
!19 = !{!"any pointer", !5, i64 0}
!20 = !{!"p1 _ZTS23hypre_StructGrid_struct", !19, i64 0}
!21 = !{!"p1 _ZTS26hypre_StructStencil_struct", !19, i64 0}
!22 = !{!"p1 _ZTS21hypre_BoxArray_struct", !19, i64 0}
!23 = !{!"p1 double", !19, i64 0}
!24 = !{!"any p2 pointer", !19, i64 0}
!25 = !{!"p2 int", !24, i64 0}
!26 = !{!"p1 int", !19, i64 0}
!27 = !{!"p1 _ZTS20hypre_CommPkg_struct", !19, i64 0}
!28 = !{!"hypre_StructMatrix_struct", !6, i64 0, !20, i64 8, !21, i64 16, !21, i64 24, !6, i64 32, !22, i64 40, !23, i64 48, !6, i64 56, !6, i64 60, !25, i64 64, !6, i64 72, !26, i64 80, !5, i64 88, !6, i64 112, !27, i64 120, !6, i64 128}
!29 = !{!28, !21, i64 24}
!30 = !{!28, !23, i64 48}
!31 = !{!28, !25, i64 64}
!32 = !{!26, !26, i64 0}
!33 = !{!28, !6, i64 0}
!34 = !{!28, !21, i64 16}
!35 = !{!28, !6, i64 56}
!36 = !{!28, !6, i64 128}
!37 = !{!28, !6, i64 72}
!38 = !{!28, !27, i64 120}
!39 = !{!28, !22, i64 40}
!40 = !{!"p1 _ZTS16hypre_Box_struct", !19, i64 0}
!41 = !{!"hypre_BoxArray_struct", !40, i64 0, !6, i64 8, !6, i64 12}
!42 = !{!41, !6, i64 8}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!28, !26, i64 80}
!45 = !{!28, !20, i64 8}
!46 = !{!"hypre_StructStencil_struct", !26, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20}
!47 = !{!46, !6, i64 8}
!48 = !{!28, !6, i64 32}
!49 = !{!46, !26, i64 0}
!50 = !{!"p1 _ZTS25hypre_BoxNeighbors_struct", !19, i64 0}
!51 = !{!"hypre_StructGrid_struct", !6, i64 0, !6, i64 4, !22, i64 8, !26, i64 16, !50, i64 24, !6, i64 32, !40, i64 40, !6, i64 48, !6, i64 52, !5, i64 56, !6, i64 68}
!52 = !{!51, !22, i64 8}
!53 = !{!41, !40, i64 0}
!54 = !{!28, !6, i64 60}
!55 = !{!"double", !5, i64 0}
!56 = !{!55, !55, i64 0}
!57 = !{!"llvm.loop.isvectorized", i32 1}
!58 = !{!"llvm.loop.unroll.runtime.disable"}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = !{!"p1 _ZTS26hypre_BoxArrayArray_struct", !19, i64 0}
!61 = !{!60, !60, i64 0}
!62 = !{!25, !25, i64 0}
!63 = !{!"p1 _ZTS23hypre_CommHandle_struct", !19, i64 0}
!64 = !{!63, !63, i64 0}
!65 = !{i64 -7255665014961871583}
!66 = !{i64 -7607928455460269626}
!67 = !{i64 -2723520377520838713}
!68 = distinct !{!68, !43}
!69 = !{i64 1183925010715674882}
!70 = distinct !{!70, !43}
!71 = distinct !{!71, !43}
!72 = distinct !{!72, !43}
!73 = distinct !{!73, !43}
!74 = distinct !{!74, !43}
!75 = !{i64 -5323421791312297666}
!76 = !{!21, !21, i64 0}
!77 = !{!51, !6, i64 52}
!78 = !{!28, !6, i64 112}
!79 = distinct !{!79, !43, !57, !58}
!80 = distinct !{!80, !43, !58, !57}
!81 = distinct !{!81, !43}
!82 = distinct !{!82, !43}
!83 = distinct !{!83, !43}
!84 = !{i64 346895389692100539}
!85 = !{i64 -180967524173766581}
!86 = distinct !{!86, !43}
!87 = distinct !{!87, !59}
!88 = distinct !{!88, !59}
!89 = distinct !{!89, !43}
!90 = distinct !{!90, !43}
!91 = !{i64 -2202618224666252074}
!92 = distinct !{!92, !43}
!93 = distinct !{!93, !43, !57, !58}
!94 = distinct !{!94, !59}
!95 = distinct !{!95, !43, !57}
!96 = distinct !{!96, !43}
!97 = distinct !{!97, !43}
!98 = distinct !{!98, !43}
!99 = distinct !{!99, i1 false, !"LVerDomain"}
!100 = distinct !{!100, !99}
!101 = distinct !{!101, !99}
!102 = distinct !{!102, !43, !57, !58}
!103 = distinct !{!103, !43, !57}
!104 = distinct !{!104, !43}
!105 = distinct !{!105, !43}
!106 = distinct !{!106, !43, !110}
!107 = !{i64 8116972157146752456}
!108 = !{!100}
!109 = !{!101}
!110 = !{!"llvm.loop.unswitch.partial.disable"}
!111 = !{i64 -7532170370013905863}
!112 = !{i64 4094117970747531409}
!113 = distinct !{!113, !43}
!114 = !{i64 4107808070601542511}
!115 = !{i64 8145484185402433934}
!116 = distinct !{!116, !43}
!117 = !{i64 638004998240327964}
!118 = !{!20, !20, i64 0}
!119 = !{!51, !6, i64 4}
end_hunk_1
