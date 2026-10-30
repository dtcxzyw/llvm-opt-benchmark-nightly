Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/meshletutils?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN7meshoptL21computeBoundingSphereEPfPKfmmS2_mmPKj:.preheader207
  %i.nq = zext i32 %i.np to i64                   ; 2 uses
  %i.nr = mul i64 %i.d, %i.nq
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.nr ; 3 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.nu = load i32, ptr %i.nt, align 8, !tbaa !9
  %i.nv = zext i32 %i.nu to i64                   ; 2 uses
  %i.nw = mul i64 %i.d, %i.nv
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.nw ; 3 uses
  %i.ny = mul i64 %i.e, %i.nq
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ny
  %i.oa = load float, ptr %i.nz, align 4, !tbaa !12
  %i.ob = mul i64 %i.e, %i.nv
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ob
  %i.od = load float, ptr %i.oc, align 4, !tbaa !12
  %i.oe = load float, ptr %i.nx, align 4, !tbaa !12
  %i.of = load float, ptr %i.ns, align 4, !tbaa !12
  %i.og = fsub float %i.oe, %i.of                 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nx, i64 4
  %i.oi = load float, ptr %i.oh, align 4, !tbaa !12
  %i.oj = getelementptr inbounds nuw i8, ptr %i.ns, i64 4
  %i.ok = load float, ptr %i.oj, align 4, !tbaa !12
  %i.ol = fsub float %i.oi, %i.ok                 ; 2 uses
  %i.om = fmul float %i.ol, %i.ol
  %i.on = tail call float @llvm.fmuladd.f32(float %i.og, float %i.og, float %i.om)
  %i.oo = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  %i.op = load float, ptr %i.oo, align 4, !tbaa !12
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  %i.or = load float, ptr %i.oq, align 4, !tbaa !12
  %i.os = fsub float %i.op, %i.or                 ; 2 uses
  %i.ot = tail call float @llvm.fmuladd.f32(float %i.os, float %i.os, float %i.on)
  %i.ou = tail call float @sqrtf(float noundef %i.ot) #8
  %i.ov = fadd float %i.oa, %i.ou
  %i.ow = fadd float %i.od, %i.ov                 ; 2 uses
  %i.ox = fcmp ogt float %i.ow, %.1188.5          ; 2 uses
  %.1190.6 = select i1 %i.ox, i64 6, i64 %.1190.5
  %.1188.6 = select i1 %i.ox, float %i.ow, float %.1188.5
  br label %bb.j

._crit_edge:                                      ; preds = %bb.p, %bb.j
  %i.oy = phi <4 x float> [ %i.fh, %bb.j ], [ %i.qp, %bb.p ]
  store <4 x float> %i.oy, ptr %0, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void

bb.k:                                             ; preds = %.lr.ph219, %bb.p
  %.0218 = phi i64 [ 0, %.lr.ph219 ], [ %i.qq, %bb.p ] ; 3 uses
  %i.oz = phi <4 x float> [ %i.fh, %.lr.ph219 ], [ %i.qp, %bb.p ] ; 4 uses
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %.0218
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !9
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.pc = trunc i64 %.0218 to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.pd = phi i32 [ %i.pb, %bb.l ], [ %i.pc, %bb.m ]
  %i.pe = zext i32 %i.pd to i64                   ; 2 uses
  %i.pf = mul i64 %i.d, %i.pe
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.pf ; 2 uses
  %i.ph = mul i64 %i.e, %i.pe
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ph
  %i.pj = load float, ptr %i.pi, align 4, !tbaa !12 ; 2 uses
  %i.pk = load <2 x float>, ptr %i.pg, align 4, !tbaa !12
  %i.pl = shufflevector <4 x float> %i.oz, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.pm = fsub <2 x float> %i.pk, %i.pl           ; 4 uses
  %foldExtExtBinop240 = fmul <2 x float> %i.pm, %i.pm
  %i.pn = extractelement <2 x float> %foldExtExtBinop240, i64 1
  %i.po = extractelement <2 x float> %i.pm, i64 0 ; 2 uses
  %i.pp = tail call float @llvm.fmuladd.f32(float %i.po, float %i.po, float %i.pn)
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pg, i64 8
  %i.pr = load float, ptr %i.pq, align 4, !tbaa !12
  %i.ps = extractelement <4 x float> %i.oz, i64 2 ; 2 uses
  %i.pt = fsub float %i.pr, %i.ps                 ; 3 uses
  %i.pu = tail call float @llvm.fmuladd.f32(float %i.pt, float %i.pt, float %i.pp)
  %i.pv = tail call float @sqrtf(float noundef %i.pu) #8 ; 4 uses
  %i.pw = fadd float %i.pj, %i.pv                 ; 2 uses
  %i.px = extractelement <4 x float> %i.oz, i64 3 ; 3 uses
  %i.py = fcmp ogt float %i.pw, %i.px
  br i1 %i.py, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.pz = fcmp ogt float %i.pv, 0.000000e+00
  %i.qa = fsub float %i.pw, %i.px
  %i.qb = fmul nnan float %i.pv, 2.000000e+00
  %i.qc = fdiv float %i.qa, %i.qb
  %i.qd = select i1 %i.pz, float %i.qc, float 0.000000e+00 ; 2 uses
  %i.qe = fadd float %i.px, %i.pv
  %i.qf = fadd float %i.pj, %i.qe
  %i.qg = insertelement <2 x float> poison, float %i.qd, i64 0
  %i.qh = shufflevector <2 x float> %i.qg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qh, <2 x float> %i.pm, <2 x float> %i.pl)
  %i.qj = tail call float @llvm.fmuladd.f32(float %i.qd, float %i.pt, float %i.ps)
  %i.qk = fmul float %i.qf, 5.000000e-01
  %i.ql = insertelement <4 x float> poison, float %i.qj, i64 2
  %i.qm = insertelement <4 x float> %i.ql, float %i.qk, i64 3
  %i.qn = shufflevector <2 x float> %i.qi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qo = shufflevector <4 x float> %i.qn, <4 x float> %i.qm, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.qp = phi <4 x float> [ %i.qo, %bb.o ], [ %i.oz, %bb.n ] ; 2 uses
  %i.qq = add nuw i64 %.0218, 1                   ; 2 uses
  %exitcond228.not = icmp eq i64 %i.qq, %2
  br i1 %exitcond228.not, label %._crit_edge, label %bb.k, !llvm.loop !26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @meshopt_optimizeMeshletLevel(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef captures(none) %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 19 uses
  %i.b = alloca [256 x i8], align 16              ; 12 uses
  %i.c = alloca [256 x i32], align 16             ; 5 uses
  %i.d = alloca [256 x i16], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %1, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 0, i64 %1, i1 false)
  %.not334 = icmp eq i64 %3, 0
  br i1 %.not334, label %._crit_edge.thread, label %.lr.ph

.preheader302.lr.ph:                              ; preds = %.lr.ph
  %.not280 = icmp eq i32 %4, 0
  br label %.preheader302

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0253304 = phi i64 [ %i.x, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.e = mul i64 %.0253304, 3
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 %i.e ; 3 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !13
  %i.h = getelementptr i8, ptr %i.f, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !13
  %i.j = getelementptr i8, ptr %i.f, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !13
  %i.l = zext i8 %i.g to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.l ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !13
  %i.o = add i8 %i.n, 1
  store i8 %i.o, ptr %i.m, align 1, !tbaa !13
  %i.p = zext i8 %i.i to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.p ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !13
  %i.s = add i8 %i.r, 1
  store i8 %i.s, ptr %i.q, align 1, !tbaa !13
  %i.t = zext i8 %i.k to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.t ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !13
  %i.w = add i8 %i.v, 1
  store i8 %i.w, ptr %i.u, align 1, !tbaa !13
  %i.x = add nuw i64 %.0253304, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %3
  br i1 %exitcond.not, label %.preheader302.lr.ph, label %.lr.ph, !llvm.loop !27

.preheader302:                                    ; preds = %.preheader302.lr.ph, %.split.us
  %.0241310 = phi i8 [ -128, %.preheader302.lr.ph ], [ %i.ea, %.split.us ] ; 7 uses
  %.0254309 = phi i64 [ 0, %.preheader302.lr.ph ], [ %i.dq, %.split.us ] ; 5 uses
  br i1 %.not280, label %.preheader302.split.us, label %.preheader302.split

.preheader302.split.us:                           ; preds = %.preheader302, %.preheader302.split.us
  %.0257308.us = phi i64 [ %i.be, %.preheader302.split.us ], [ %.0254309, %.preheader302 ] ; 3 uses
  %.0261306.us = phi i32 [ %i.bc, %.preheader302.split.us ], [ -1, %.preheader302 ] ; 2 uses
  %.0264305.us = phi i32 [ %i.bb, %.preheader302.split.us ], [ -1, %.preheader302 ]
  %i.y = mul i64 %.0257308.us, 3
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 %i.y ; 3 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !13
  %i.ab = getelementptr i8, ptr %i.z, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !13
  %i.ad = getelementptr i8, ptr %i.z, i64 2
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !13
  %i.af = zext i8 %i.aa to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !13
  %i.ai = sub i8 %.0241310, %i.ah
  %i.aj = zext i8 %i.ac to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !13
  %i.am = sub i8 %.0241310, %i.al
  %i.an = zext i8 %i.ae to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !13
  %i.aq = sub i8 %.0241310, %i.ap
  %i.ar = icmp ult i8 %i.ai, 3
  %i.as = zext i1 %i.ar to i32
  %i.at = icmp ult i8 %i.am, 3
  %i.au = zext i1 %i.at to i32
  %i.av = add nuw nsw i32 %i.au, %i.as
  %i.aw = icmp ult i8 %i.aq, 3
  %i.ax = zext i1 %i.aw to i32
  %i.ay = add nuw nsw i32 %i.av, %i.ax            ; 3 uses
  %i.az = icmp sgt i32 %i.ay, %.0261306.us
  %i.ba = trunc i64 %.0257308.us to i32
  %i.bb = select i1 %i.az, i32 %i.ba, i32 %.0264305.us ; 2 uses
  %i.bc = tail call i32 @llvm.smax.i32(i32 %i.ay, i32 %.0261306.us)
  %i.bd = icmp samesign ult i32 %i.ay, 2
  %i.be = add nuw i64 %.0257308.us, 1             ; 2 uses
  %i.bf = icmp ult i64 %i.be, %3
  %or.cond331 = select i1 %i.bd, i1 %i.bf, i1 false
  br i1 %or.cond331, label %.preheader302.split.us, label %.split.us, !llvm.loop !28

._crit_edge:                                      ; preds = %.split.us
  %i.bg = icmp sgt i32 %4, 0
  br i1 %i.bg, label %.lr.ph323.preheader, label %.lr.ph327.preheader

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  br label %._crit_edge328

.preheader302.split:                              ; preds = %.preheader302, %.preheader302.split
  %.0257308 = phi i64 [ %i.dg, %.preheader302.split ], [ %.0254309, %.preheader302 ] ; 3 uses
  %.0258307 = phi i32 [ %.2260, %.preheader302.split ], [ 0, %.preheader302 ] ; 2 uses
  %.0261306 = phi i32 [ %i.dd, %.preheader302.split ], [ -1, %.preheader302 ] ; 2 uses
  %.0264305 = phi i32 [ %i.dc, %.preheader302.split ], [ -1, %.preheader302 ]
  %i.bh = mul i64 %.0257308, 3
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 %i.bh ; 3 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !13
  %i.bk = getelementptr i8, ptr %i.bi, i64 1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !13
  %i.bm = getelementptr i8, ptr %i.bi, i64 2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !13
  %i.bo = zext i8 %i.bj to i64                    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !13
  %i.br = sub i8 %.0241310, %i.bq                 ; 2 uses
  %i.bs = zext i8 %i.bl to i64                    ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !13
  %i.bv = sub i8 %.0241310, %i.bu                 ; 2 uses
  %i.bw = zext i8 %i.bn to i64                    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !13
  %i.bz = sub i8 %.0241310, %i.by                 ; 2 uses
  %i.ca = icmp ult i8 %i.br, 3
  %i.cb = zext i1 %i.ca to i32
  %i.cc = icmp ult i8 %i.bv, 3
  %i.cd = zext i1 %i.cc to i32
  %i.ce = add nuw nsw i32 %i.cd, %i.cb
  %i.cf = icmp ult i8 %i.bz, 3
  %i.cg = zext i1 %i.cf to i32
  %i.ch = add nuw nsw i32 %i.ce, %i.cg            ; 2 uses
  %i.ci = zext i8 %i.bz to i32
  %i.cj = zext i8 %i.bv to i32
  %i.ck = zext i8 %i.br to i32
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bo
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !13
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bs
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !13
  %. = tail call i8 @llvm.umin.i8(i8 %i.cm, i8 %i.co)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bw
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !13
  %.in = tail call i8 @llvm.umin.i8(i8 %i.cq, i8 %.)
  %i.cr = xor i32 %i.ck, 1023
  %i.cs = add nuw nsw i32 %i.cj, %i.ci
  %i.ct = sub nuw nsw i32 %i.cr, %i.cs
  %i.cu = shl nuw nsw i32 %i.ch, 18
  %i.cv = shl nuw nsw i32 %i.ct, 8
  %i.cw = or disjoint i32 %i.cu, %i.cv
  %i.cx = xor i8 %.in, -1
  %i.cy = zext i8 %i.cx to i32
  %i.cz = or disjoint i32 %i.cw, %i.cy            ; 2 uses
  %i.da = icmp sgt i32 %i.cz, %.0261306
  %i.db = trunc i64 %.0257308 to i32
  %i.dc = select i1 %i.da, i32 %i.db, i32 %.0264305 ; 2 uses
  %i.dd = tail call i32 @llvm.smax.i32(i32 %i.cz, i32 %.0261306)
  %i.de = icmp samesign ult i32 %i.ch, 2          ; 2 uses
  %i.df = add nsw i32 %.0258307, 1                ; 2 uses
  %.not281 = icmp slt i32 %i.df, %4
  %.2260 = select i1 %i.de, i32 %.0258307, i32 %i.df
  %brmerge = select i1 %i.de, i1 true, i1 %.not281
  %i.dg = add nuw i64 %.0257308, 1                ; 2 uses
  %i.dh = icmp ult i64 %i.dg, %3
  %or.cond333 = select i1 %brmerge, i1 %i.dh, i1 false
  br i1 %or.cond333, label %.preheader302.split, label %.split.us, !llvm.loop !28

.split.us:                                        ; preds = %.preheader302.split, %.preheader302.split.us
  %.us-phi = phi i32 [ %i.bb, %.preheader302.split.us ], [ %i.dc, %.preheader302.split ] ; 2 uses
  %i.di = mul nsw i32 %.us-phi, 3
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds i8, ptr %2, i64 %i.dj ; 3 uses
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !13  ; 2 uses
  %i.dm = getelementptr i8, ptr %i.dk, i64 1
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !13  ; 2 uses
  %i.do = getelementptr i8, ptr %i.dk, i64 2
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !13  ; 2 uses
  %i.dq = add nuw i64 %.0254309, 1                ; 3 uses
  %i.dr = mul i64 %i.dq, 3
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 %i.dr
  %i.dt = mul i64 %.0254309, 3
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 %i.dt ; 4 uses
  %i.dv = sext i32 %.us-phi to i64
  %i.dw = sub i64 %i.dv, %.0254309
  %i.dx = mul i64 %i.dw, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ds, ptr align 1 %i.du, i64 %i.dx, i1 false)
  store i8 %i.dl, ptr %i.du, align 1, !tbaa !13
  %i.dy = getelementptr i8, ptr %i.du, i64 1
  store i8 %i.dn, ptr %i.dy, align 1, !tbaa !13
  %i.dz = getelementptr i8, ptr %i.du, i64 2
  store i8 %i.dp, ptr %i.dz, align 1, !tbaa !13
  %i.ea = add i8 %.0241310, 1                     ; 4 uses
  %i.eb = zext i8 %i.dl to i64                    ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.eb
  store i8 %i.ea, ptr %i.ec, align 1, !tbaa !13
  %i.ed = zext i8 %i.dn to i64                    ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ed
  store i8 %i.ea, ptr %i.ee, align 1, !tbaa !13
  %i.ef = zext i8 %i.dp to i64                    ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ef
  store i8 %i.ea, ptr %i.eg, align 1, !tbaa !13
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.eb ; 2 uses
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !13
  %i.ej = add i8 %i.ei, -1
  store i8 %i.ej, ptr %i.eh, align 1, !tbaa !13
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ed ; 2 uses
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !13
  %i.em = add i8 %i.el, -1
  store i8 %i.em, ptr %i.ek, align 1, !tbaa !13
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ef ; 2 uses
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !13
  %i.ep = add i8 %i.eo, -1
  store i8 %i.ep, ptr %i.en, align 1, !tbaa !13
  %exitcond343.not = icmp eq i64 %i.dq, %3
  br i1 %exitcond343.not, label %._crit_edge, label %.preheader302, !llvm.loop !29

.lr.ph323.preheader:                              ; preds = %._crit_edge
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %1, i1 false)
  br label %.lr.ph323

.lr.ph323:                                        ; preds = %.lr.ph323.preheader, %.thread373
  %.0252321 = phi i64 [ %i.jn, %.thread373 ], [ 0, %.lr.ph323.preheader ] ; 7 uses
  %i.eq = mul i64 %.0252321, 3
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 %i.eq ; 4 uses
  %i.es = load i8, ptr %i.er, align 1, !tbaa !13  ; 25 uses
  %i.et = getelementptr i8, ptr %i.er, i64 1      ; 2 uses
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !13  ; 25 uses
  %i.ev = getelementptr i8, ptr %i.er, i64 2      ; 2 uses
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !13  ; 25 uses
  %i.ex = zext i8 %i.es to i64                    ; 8 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !13
  %.not274 = icmp eq i8 %i.ez, 0
  %i.fa = zext i8 %i.eu to i64                    ; 8 uses
  br i1 %.not274, label %bb.b, label %.thread373

bb.b:                                             ; preds = %.lr.ph323
  %i.fb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !13
  %.not275 = icmp eq i8 %i.fc, 0
  %i.fd = zext i8 %i.ew to i64                    ; 5 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !13
  %.not279 = icmp eq i8 %i.ff, 0                  ; 2 uses
  br i1 %.not275, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not279, label %.thread373, label %bb.d

bb.d:                                             ; preds = %bb.c
  br label %.thread373

bb.e:                                             ; preds = %bb.b
  br i1 %.not279, label %.preheader, label %.thread373

.preheader:                                       ; preds = %bb.e
  %i.fg = add i64 %.0252321, 3                    ; 2 uses
  %.0242312 = add nuw i64 %.0252321, 1            ; 3 uses
  %i.fh = icmp ult i64 %.0242312, %3
  %i.fi = icmp ult i64 %.0252321, -3
  %i.fj = and i1 %i.fh, %i.fi
  br i1 %i.fj, label %.lr.ph317, label %.thread373

._crit_edge318:                                   ; preds = %bb.w, %bb.q, %bb.k
  %.lcssa392 = phi i1 [ %i.gf, %bb.k ], [ %i.hr, %bb.q ], [ %i.jc, %bb.w ] ; 2 uses
  %.lcssa391 = phi i1 [ %narrow, %bb.k ], [ %i.hx, %bb.q ], [ %i.ji, %bb.w ] ; 2 uses
  %.lcssa = phi i1 [ %i.fy, %bb.k ], [ %i.hg, %bb.q ], [ %i.is, %bb.w ] ; 2 uses
  %.not = xor i1 %.lcssa, true                    ; 2 uses
  %or.cond = select i1 %.not, i1 true, i1 %.lcssa392
  br i1 %or.cond, label %bb.x, label %.thread373

.lr.ph317:                                        ; preds = %.preheader
  %i.fk = mul i64 %.0242312, 3
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 %i.fk ; 3 uses
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !13  ; 4 uses
  %i.fn = getelementptr i8, ptr %i.fl, i64 1
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !13  ; 5 uses
  %i.fp = getelementptr i8, ptr %i.fl, i64 2
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !13  ; 6 uses
  %i.fr = icmp eq i8 %i.fm, %i.eu                 ; 2 uses
  %i.fs = icmp eq i8 %i.fo, %i.es                 ; 2 uses
  %or.cond283 = select i1 %i.fr, i1 %i.fs, i1 false
  br i1 %or.cond283, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.lr.ph317
  %i.ft = icmp eq i8 %i.fo, %i.eu
  %i.fu = icmp eq i8 %i.fq, %i.es
  %or.cond284 = select i1 %i.ft, i1 %i.fu, i1 false
  br i1 %or.cond284, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fv = icmp eq i8 %i.fq, %i.eu
  %i.fw = icmp eq i8 %i.fm, %i.es
  %i.fx = and i1 %i.fw, %i.fv
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %.lr.ph317, %bb.g
  %i.fy = phi i1 [ true, %bb.f ], [ true, %.lr.ph317 ], [ %i.fx, %bb.g ] ; 2 uses
  %i.fz = icmp eq i8 %i.fm, %i.ew                 ; 2 uses
  %i.ga = icmp eq i8 %i.fo, %i.eu
  %or.cond285 = select i1 %i.fz, i1 %i.ga, i1 false
  br i1 %or.cond285, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.gb = icmp eq i8 %i.fo, %i.ew
  %i.gc = icmp eq i8 %i.fq, %i.eu
  %or.cond286 = select i1 %i.gb, i1 %i.gc, i1 false
  br i1 %or.cond286, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.gd = icmp eq i8 %i.fq, %i.ew
  %i.ge = and i1 %i.fr, %i.gd
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.j
  %i.gf = phi i1 [ true, %bb.i ], [ true, %bb.h ], [ %i.ge, %bb.j ] ; 2 uses
  %i.gg = icmp eq i8 %i.fm, %i.es
  %i.gh = icmp eq i8 %i.fo, %i.ew
  %or.cond287 = select i1 %i.gg, i1 %i.gh, i1 false
  %i.gi = icmp eq i8 %i.fq, %i.ew
  %or.cond288 = select i1 %i.fs, i1 %i.gi, i1 false
  %or.cond299 = select i1 %or.cond287, i1 true, i1 %or.cond288
  %i.gj = icmp eq i8 %i.fq, %i.es
  %i.gk = and i1 %i.fz, %i.gj
  %narrow = select i1 %or.cond299, i1 true, i1 %i.gk ; 2 uses
  %.0242 = add nuw i64 %.0252321, 2               ; 3 uses
  %i.gl = icmp ult i64 %.0242, %3
  %i.gm = icmp ult i64 %.0242312, %i.fg
  %i.gn = and i1 %i.gl, %i.gm
  br i1 %i.gn, label %.lr.ph317.1, label %._crit_edge318

.lr.ph317.1:                                      ; preds = %bb.k
  %i.go = mul i64 %.0242, 3
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 %i.go ; 3 uses
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !13  ; 4 uses
  %i.gr = getelementptr i8, ptr %i.gp, i64 1
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !13  ; 5 uses
  %i.gt = getelementptr i8, ptr %i.gp, i64 2
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !13  ; 6 uses
  %i.gv = icmp eq i8 %i.gq, %i.eu                 ; 2 uses
  %i.gw = icmp eq i8 %i.gs, %i.es                 ; 2 uses
  %or.cond283.1 = select i1 %i.gv, i1 %i.gw, i1 false
  br i1 %or.cond283.1, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.lr.ph317.1
  %i.gx = icmp eq i8 %i.gs, %i.eu
  %i.gy = icmp eq i8 %i.gu, %i.es
  %or.cond284.1 = select i1 %i.gx, i1 %i.gy, i1 false
  br i1 %or.cond284.1, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gz = icmp eq i8 %i.gu, %i.eu
  %i.ha = icmp eq i8 %i.gq, %i.es
  %i.hb = and i1 %i.ha, %i.gz
  %i.hc = zext i1 %i.hb to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %.lr.ph317.1
  %i.hd = phi i32 [ 1, %bb.l ], [ 1, %.lr.ph317.1 ], [ %i.hc, %bb.m ]
  %i.he = zext i1 %i.fy to i32
  %i.hf = or i32 %i.hd, %i.he                     ; 2 uses
  %i.hg = icmp ne i32 %i.hf, 0
  %i.hh = icmp eq i8 %i.gq, %i.ew                 ; 2 uses
  %i.hi = icmp eq i8 %i.gs, %i.eu
  %or.cond285.1 = select i1 %i.hh, i1 %i.hi, i1 false
end_hunk_0
