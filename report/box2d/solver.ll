Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/solver?download=true
inline.NumInlined: 126
inline.NumDeleted: 54
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@b2FinalizeBodiesTask:bb.a
  %i.cu = load <2 x float>, ptr %i.bd, align 4    ; 2 uses
  %i.cv = load <2 x float>, ptr %i.ct, align 4    ; 2 uses
  %i.cw = load <2 x float>, ptr %i.ay, align 4
  %i.cx = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cy = fmul <2 x float> %i.cu, %i.cx           ; 2 uses
  %i.cz = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.da = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.db = fmul <2 x float> %i.cz, %i.da           ; 2 uses
  %i.dc = fsub <2 x float> %i.cy, %i.db
  %i.dd = fadd <2 x float> %i.cy, %i.db
  %i.de = shufflevector <2 x float> %i.dc, <2 x float> %i.dd, <2 x i32> <i32 0, i32 3>
  %i.df = fsub <2 x float> %i.cw, %i.de
  store <2 x float> %i.df, ptr %i.ao, align 4, !tbaa !127
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ao, i64 88 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !139
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [104 x i8], ptr %i.d, i64 %i.di ; 12 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 72
  %i.dl = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  store i32 %i.dl, ptr %i.dk, align 8, !tbaa !308
  %i.dm = getelementptr inbounds [40 x i8], ptr %i.t, i64 %indvars.iv ; 6 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, ptr noundef nonnull align 4 dereferenceable(16) %i.ao, i64 16, i1 false), !tbaa.struct !154
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.dp = load i32, ptr %i.dg, align 4, !tbaa !139
  %i.dq = add nsw i32 %i.dp, 1
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dj, i64 88
  %i.ds = load i16, ptr %i.dr, align 8, !tbaa !309
  store i32 %i.dq, ptr %i.do, align 8, !tbaa !98
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 28
  store i16 %i.r, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !121
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 30
  store i16 %i.ds, ptr %.sroa.3.0..sroa_idx, align 2, !tbaa !121
  %i.dt = load ptr, ptr %i.dj, align 8, !tbaa !310
  store ptr %i.dt, ptr %i.dm, align 8, !tbaa !313
  %i.du = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  store i8 0, ptr %i.du, align 8, !tbaa !314
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  store i64 0, ptr %i.dv, align 4, !tbaa !127
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  store float 0.000000e+00, ptr %i.dw, align 4, !tbaa !155
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dj, i64 80 ; 4 uses
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !141 ; 2 uses
  %i.dz = and i32 %i.dy, -105
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ao, i64 92 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !144 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.an, i64 12 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !156 ; 2 uses
  %i.ee = or i32 %i.eb, %i.ed
  %i.ef = and i32 %i.ee, 96
  %i.eg = or disjoint i32 %i.ef, %i.dz            ; 2 uses
  store i32 %i.eg, ptr %i.dx, align 8, !tbaa !141
  %i.eh = and i32 %i.eb, -105
  store i32 %i.eh, ptr %i.ea, align 4, !tbaa !144
  %i.ei = and i32 %i.ed, -105
  store i32 %i.ei, ptr %i.ec, align 4, !tbaa !156
  %i.ej = and i32 %i.dy, 2048
  %i.ek = icmp eq i32 %i.ej, 0
  %or.cond197 = select i1 %i.ae, i1 true, i1 %i.ek
  br i1 %or.cond197, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.el = fmul float %i.af, %i.cs                 ; 2 uses
  %i.em = fcmp ogt float %i.ch, %i.el
  %i.en = select i1 %i.em, float %i.ch, float %i.el
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dj, i64 60
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !315
  %i.eq = fcmp ogt float %i.en, %i.ep
  br i1 %i.eq, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.er = getelementptr inbounds nuw i8, ptr %i.dj, i64 64
  store float 0.000000e+00, ptr %i.er, align 8, !tbaa !316
  %i.es = getelementptr inbounds nuw i8, ptr %i.dj, i64 84
  %i.et = load i32, ptr %i.es, align 4, !tbaa !135
  %i.eu = icmp eq i32 %i.et, 2
  %or.cond = and i1 %i.eu, %i.m
  br i1 %or.cond, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ev = fmul float %i.n, %i.ch                  ; 2 uses
  %i.ew = fcmp ogt float %i.cs, %i.ev
  %i.ex = select i1 %i.ew, float %i.cs, float %i.ev
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dj, i64 68
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !317
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ao, i64 68
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !157
  %i.fc = fmul float %i.ez, %i.fb
  %i.fd = fcmp ogt float %i.ex, %i.fc
  br i1 %i.fd, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.fe = or disjoint i32 %i.eg, 8
  store i32 %i.fe, ptr %i.dx, align 8, !tbaa !141
  %i.ff = and i32 %i.eb, 16
  %.not = icmp eq i32 %i.ff, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fg = atomicrmw add ptr %i.ag, i32 1 seq_cst, align 4
  %i.fh = load ptr, ptr %i.ah, align 8, !tbaa !91
  %i.fi = sext i32 %i.fg to i64
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.fi
  store i32 %i.dl, ptr %i.fj, align 4, !tbaa !98
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.fk = load float, ptr %3, align 8, !tbaa !150
  tail call fastcc void @b2SolveContinuous(ptr noundef nonnull %i.b, i32 noundef %i.dl, ptr noundef %i.x, float noundef %i.fk)
  br label %bb.n

bb.l:                                             ; preds = %bb.h, %bb.g
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.fm = load <2 x i64>, ptr %i.bd, align 4, !tbaa !127
  store <2 x i64> %i.fm, ptr %i.fl, align 4, !tbaa !127
  br label %bb.n

bb.m:                                             ; preds = %bb.f
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.fo = load <2 x i64>, ptr %i.bd, align 4, !tbaa !127
  store <2 x i64> %i.fo, ptr %i.fn, align 4, !tbaa !127
  %i.fp = getelementptr inbounds nuw i8, ptr %i.dj, i64 64 ; 2 uses
  %i.fq = load float, ptr %i.fp, align 8, !tbaa !316
  %i.fr = fadd float %i.n, %i.fq
  store float %i.fr, ptr %i.fp, align 8, !tbaa !316
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.m
  %i.fs = load ptr, ptr %i.ai, align 8, !tbaa !318
  %i.ft = getelementptr inbounds nuw i8, ptr %i.dj, i64 44
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !319 ; 3 uses
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [64 x i8], ptr %i.fs, i64 %i.fv ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.dj, i64 64
  %i.fy = load float, ptr %i.fx, align 8, !tbaa !316 ; 4 uses
  %i.fz = fcmp olt float %i.fy, 5.000000e-01
  br i1 %i.fz, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !325 ; 2 uses
  %.val170 = load ptr, ptr %i.z, align 8, !tbaa !119
  %i.gc = lshr i32 %i.gb, 6
  %i.gd = and i32 %i.gb, 63
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = shl nuw i64 1, %i.ge
  %i.gg = zext nneg i32 %i.gc to i64
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %.val170, i64 %i.gg ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !79
  %i.gj = or i64 %i.gf, %i.gi
  store i64 %i.gj, ptr %i.gh, align 8, !tbaa !79
  br label %bb.u

bb.p:                                             ; preds = %bb.n
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fw, i64 12
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !326
  %i.gm = icmp sgt i32 %i.gl, 0
  br i1 %i.gm, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.gn = load float, ptr %i.aj, align 8, !tbaa !118 ; 2 uses
  %i.go = fcmp ogt float %i.fy, %i.gn
  br i1 %i.go, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gp = fcmp oeq float %i.fy, %i.gn
  br i1 %i.gp, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.gq = load i32, ptr %i.ak, align 4, !tbaa !117
  %i.gr = icmp sgt i32 %i.fu, %i.gq
  br i1 %i.gr, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.q
  store i32 %i.fu, ptr %i.ak, align 4, !tbaa !117
  store float %i.fy, ptr %i.aj, align 8, !tbaa !118
  br label %bb.u

bb.u:                                             ; preds = %bb.p, %bb.t, %bb.s, %bb.r, %bb.o
  %.sroa.017.0.copyload = load <2 x float>, ptr %i.ao, align 4, !tbaa !127
  %.sroa.418.0.copyload = load <2 x float>, ptr %i.bd, align 4, !tbaa !127
  %i.gs = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %.0198 = load i32, ptr %i.gs, align 8, !tbaa !98 ; 2 uses
  %.not168199 = icmp eq i32 %.0198, -1
  br i1 %.not168199, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u
  %i.gt = load i32, ptr %i.dx, align 8, !tbaa !141
  %i.gu = and i32 %i.gt, 8
  %.not167 = icmp eq i32 %i.gu, 0
  %i.gv = lshr i64 %indvars.iv, 6
  %i.gw = and i64 %indvars.iv, 63
  %i.gx = shl nuw i64 1, %i.gw                    ; 2 uses
  %i.gy = and i64 %i.gv, 67108863                 ; 2 uses
  br i1 %.not167, label %.lr.ph.split.us, label %._crit_edge.loopexit212

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.w
  %.0200.us = phi i32 [ %.0.us, %bb.w ], [ %.0198, %.lr.ph ]
  %i.gz = load ptr, ptr %i.al, align 8, !tbaa !124
  %i.ha = sext i32 %.0200.us to i64
  %i.hb = getelementptr inbounds [296 x i8], ptr %i.gz, i64 %i.ha ; 8 uses
  %i.hc = tail call { <2 x float>, <2 x float> } @b2ComputeFatShapeAABB(ptr noundef %i.hb, <2 x float> %.sroa.017.0.copyload, <2 x float> %.sroa.418.0.copyload, float noundef %i.ac) #9 ; 2 uses
  %i.hd = extractvalue { <2 x float>, <2 x float> } %i.hc, 0 ; 3 uses
  %i.he = extractvalue { <2 x float>, <2 x float> } %i.hc, 1 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 64
  store <2 x float> %i.hd, ptr %i.hf, align 8, !tbaa !127
  %.sroa.7.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.hb, i64 72
  store <2 x float> %i.he, ptr %.sroa.7.0..sroa_idx.us, align 8, !tbaa !127
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hb, i64 80 ; 2 uses
  %i.hh = load <2 x float>, ptr %i.hg, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hb, i64 88
  %i.hj = load <2 x float>, ptr %i.hi, align 8
  %i.hk = shufflevector <2 x float> %i.hh, <2 x float> %i.he, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hl = shufflevector <2 x float> %i.hd, <2 x float> %i.hj, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hm = fcmp ole <4 x float> %i.hk, %i.hl
  %i.hn = freeze <4 x i1> %i.hm
  %i.ho = bitcast <4 x i1> %i.hn to i4
  %i.hp = icmp eq i4 %i.ho, -1
  br i1 %i.hp, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph.split.us
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hb, i64 60
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !158
  %i.hs = shufflevector <2 x float> %i.hd, <2 x float> %i.he, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.ht = insertelement <4 x float> poison, float %i.hr, i64 0
  %i.hu = shufflevector <4 x float> %i.ht, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.hv = fsub <4 x float> %i.hs, %i.hu
  %i.hw = fadd <4 x float> %i.hs, %i.hu
  %i.hx = shufflevector <4 x float> %i.hv, <4 x float> %i.hw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.hx, ptr %i.hg, align 8, !tbaa !127
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hb, i64 295
  store i8 1, ptr %i.hy, align 1, !tbaa !143
  %.val.us = load ptr, ptr %i.y, align 8, !tbaa !119
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %.val.us, i64 %i.gy ; 2 uses
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !79
  %i.ib = or i64 %i.ia, %i.gx
  store i64 %i.ib, ptr %i.hz, align 8, !tbaa !79
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph.split.us
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hb, i64 12
  %.0.us = load i32, ptr %i.ic, align 4, !tbaa !98 ; 2 uses
  %.not168.us = icmp eq i32 %.0.us, -1
  br i1 %.not168.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !303

._crit_edge.loopexit212:                          ; preds = %.lr.ph
  %.val169.pre = load ptr, ptr %i.y, align 8, !tbaa !119
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.val169.pre, i64 %i.gy ; 2 uses
  %.pre207 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !79
  %i.id = or i64 %.pre207, %i.gx
  store i64 %i.id, ptr %.phi.trans.insert, align 8, !tbaa !79
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.w, %._crit_edge.loopexit212, %bb.u
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge204, label %bb.b, !llvm.loop !304
}

declare void @b2StackFree(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @b2GetMilliseconds(i64 noundef) local_unnamed_addr #2

declare void @b2InPlaceUnion(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @b2GetBodySim(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @b2ValidateNoEnlarged(ptr noundef) local_unnamed_addr #2

declare void @b2BroadPhase_EnlargeProxy(ptr noundef, i32 noundef, <2 x float>, <2 x float>) local_unnamed_addr #2

declare void @b2ValidateBroadphase(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @b2BulletBodyTask(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !148
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2192
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !111
  %i.e = sext i32 %2 to i64
  %i.f = getelementptr inbounds [120 x i8], ptr %i.d, i64 %i.e
  %i.g = icmp slt i32 %0, %1
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.i = sext i32 %0 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %i.i, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !91
  %i.k = getelementptr inbounds [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !98
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !148
  %i.n = load float, ptr %3, align 8, !tbaa !150
  tail call fastcc void @b2SolveContinuous(ptr noundef %i.m, i32 noundef %i.l, ptr noundef %i.f, float noundef %i.n)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !327
}

declare void @b2DynamicTree_EnlargeProxy(ptr noundef, i32 noundef, <2 x float>, <2 x float>) local_unnamed_addr #2

declare void @b2TrySleepIsland(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @b2ValidateSolverSets(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @b2ExecuteMainStage(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !104  ; 3 uses
  switch i32 %i.b, label %bb.c [
    i32 0, label %bb.h
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !103
  %i.d = load i64, ptr %i.c, align 4
  %i.e = getelementptr i8, ptr %0, i64 8
  %.val = load i32, ptr %i.e, align 8, !tbaa !102
  tail call fastcc void @b2ExecuteBlock(i32 %.val, ptr noundef %1, i64 %i.d, i32 noundef 0)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 256
  store atomic i32 %2, ptr %i.f seq_cst, align 4
  %i.g = lshr i32 %2, 16                          ; 2 uses
  %i.h = add nsw i32 %i.g, -1
  %i.i = load ptr, ptr %0, align 8, !tbaa !103
  %i.j = load i32, ptr %i.a, align 4, !tbaa !104
  %.fr = freeze i32 %i.j                          ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.l = load i32, ptr %i.k, align 8, !tbaa !106  ; 2 uses
  %.not.i.i = icmp sgt i32 %.fr, %i.l
  br i1 %.not.i.i, label %GetWorkerStartIndex.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp sgt i32 %.fr, 0
  br i1 %i.m, label %.lr.ph.i, label %b2ExecuteStage.exit

GetWorkerStartIndex.exit.i:                       ; preds = %bb.c
  %i.n = srem i32 %.fr, %i.l                      ; 2 uses
  %i.o = icmp eq i32 %i.n, -1
  br i1 %i.o, label %b2ExecuteStage.exit, label %.preheader.i

.preheader.i:                                     ; preds = %GetWorkerStartIndex.exit.i
  %i.p = tail call noundef i32 @llvm.smin.i32(i32 %i.n, i32 0)
  %i.q = icmp sgt i32 %.fr, 0
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.d, %.preheader.i
  %.0.i.i1921 = phi i32 [ %i.p, %.preheader.i ], [ 0, %bb.d ]
  %i.r = getelementptr i8, ptr %0, i64 8
  br label %bb.e

._crit_edge.i:                                    ; preds = %bb.g, %.preheader.i
  %.025.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %.1.i, %bb.g ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.t = atomicrmw add ptr %i.s, i32 %.025.lcssa.i seq_cst, align 4 ; 0 uses
  br label %b2ExecuteStage.exit

bb.e:                                             ; preds = %bb.g, %.lr.ph.i
  %.031.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ac, %bb.g ]
  %.02430.i = phi i32 [ %.0.i.i1921, %.lr.ph.i ], [ %spec.store.select.i, %bb.g ] ; 2 uses
  %.02529.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.g ] ; 2 uses
  %i.u = sext i32 %.02430.i to i64
  %i.v = getelementptr inbounds [12 x i8], ptr %i.i, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = cmpxchg ptr %i.w, i32 %i.h, i32 %i.g seq_cst seq_cst, align 4
  %i.y = extractvalue { i32, i1 } %i.x, 1
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = load i64, ptr %i.v, align 4
  %.val.i = load i32, ptr %i.r, align 8, !tbaa !102
  tail call fastcc void @b2ExecuteBlock(i32 %.val.i, ptr noundef %1, i64 %i.z, i32 noundef 0)
  %i.aa = add nsw i32 %.02529.i, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i = phi i32 [ %i.aa, %bb.f ], [ %.02529.i, %bb.e ] ; 2 uses
  %i.ab = add nsw i32 %.02430.i, 1                ; 2 uses
  %.not.i = icmp slt i32 %i.ab, %.fr
  %spec.store.select.i = select i1 %.not.i, i32 %i.ab, i32 0
  %i.ac = add nuw nsw i32 %.031.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ac, %.fr
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !0

b2ExecuteStage.exit:                              ; preds = %bb.d, %GetWorkerStartIndex.exit.i, %._crit_edge.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.ae = load atomic i32, ptr %i.ad seq_cst, align 4
  %.not22 = icmp eq i32 %i.ae, %i.b
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %b2ExecuteStage.exit, %.lr.ph
  tail call void asm sideeffect "pause\0A", "~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !149
  %i.af = load atomic i32, ptr %i.ad seq_cst, align 4
  %.not = icmp eq i32 %i.af, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1
end_hunk_0
begin_hunk_1_@b2ExecuteBlock:bb.a
bb.c:                                             ; preds = %bb.a
  tail call void @b2PrepareContacts_Wide(i64 %1, ptr noundef %0) #9
  br label %b2IntegrateVelocitiesTask.exit

bb.d:                                             ; preds = %bb.a
  %.sroa.3.0.extract.shift.i = lshr i64 %1, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i64 %.sroa.3.0.extract.shift.i to i32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !93
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load float, ptr %i.e, align 8, !tbaa !330 ; 2 uses
  %i.g = and i32 %.sroa.3.0.extract.trunc.i, 65535 ; 2 uses
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %b2IntegrateVelocitiesTask.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %.sroa.038.0.extract.trunc.i = trunc i64 %1 to i32
  %i.h = add nsw i32 %i.g, %.sroa.038.0.extract.trunc.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !148
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 2452
  %.sroa.031.0.copyload.i = load <2 x float>, ptr %i.k, align 4, !tbaa !127
  %sext.i = shl i64 %1, 32
  %i.l = ashr exact i64 %sext.i, 32
  %i.m = sext i32 %i.h to i64
  %i.n = insertelement <2 x float> poison, float %i.f, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.l, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 3 uses
  %i.p = getelementptr inbounds [96 x i8], ptr %i.d, i64 %indvars.iv.i ; 6 uses
  %i.q = getelementptr inbounds [32 x i8], ptr %i.b, i64 %indvars.iv.i ; 3 uses
  %.sroa.09.0.copyload.i = load <2 x float>, ptr %i.q, align 4, !tbaa !127
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !153
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 76
  %i.u = load <2 x float>, ptr %i.t, align 4, !tbaa !127
  %i.v = fmul <2 x float> %i.o, %i.u
  %i.w = fadd <2 x float> %i.v, splat (float 1.000000e+00)
  %i.x = fdiv <2 x float> splat (float 1.000000e+00), %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 60
  %i.z = load float, ptr %i.y, align 4, !tbaa !331 ; 2 uses
  %i.aa = fcmp ogt float %i.z, 0.000000e+00
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 84
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !159
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ad = phi float [ %i.ac, %bb.f ], [ 0.000000e+00, %bb.e ]
  %i.ae = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %i.z, i64 1
  %i.ag = fmul <2 x float> %i.o, %i.af            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.ai = load <2 x float>, ptr %i.ah, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !332
  %i.al = fmul float %i.f, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.an = load float, ptr %i.am, align 4, !tbaa !155
  %i.ao = fmul float %i.al, %i.an
  %i.ap = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aq = fmul <2 x float> %i.ap, %i.ai
  %i.ar = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.as = fmul <2 x float> %.sroa.031.0.copyload.i, %i.ar
  %i.at = fadd <2 x float> %i.as, %i.aq
  %i.au = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = fmul <2 x float> %.sroa.09.0.copyload.i, %i.au
  %i.aw = fadd <2 x float> %i.av, %i.at
  %i.ax = extractelement <2 x float> %i.x, i64 1
  %i.ay = fmul float %i.s, %i.ax
  %i.az = fadd float %i.ay, %i.ao
  store <2 x float> %i.aw, ptr %i.q, align 4, !tbaa !127
  store float %i.az, ptr %i.r, align 4, !tbaa !153
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ba = icmp slt i64 %indvars.iv.next.i, %i.m
  br i1 %i.ba, label %bb.e, label %b2IntegrateVelocitiesTask.exit, !llvm.loop !328

bb.h:                                             ; preds = %bb.a
  %i.bb = trunc i64 %.sroa.12.0.extract.shift to i8
  switch i8 %i.bb, label %b2IntegrateVelocitiesTask.exit [
    i8 4, label %bb.i
    i8 3, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  tail call void @b2WarmStartContacts_Wide(i64 %1, ptr noundef %0) #9
  br label %b2IntegrateVelocitiesTask.exit

bb.j:                                             ; preds = %bb.h
  tail call void @b2WarmStartJointsTask(i64 %1, ptr noundef %0) #9
  br label %b2IntegrateVelocitiesTask.exit

bb.k:                                             ; preds = %bb.a
  %trunc1 = trunc i64 %.sroa.12.0.extract.shift to i8
  switch i8 %trunc1, label %b2IntegrateVelocitiesTask.exit [
    i8 4, label %bb.l
    i8 3, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  tail call void @b2PushContacts_Wide(i64 %1, ptr noundef %0) #9
  br label %b2IntegrateVelocitiesTask.exit

bb.m:                                             ; preds = %bb.k
  tail call void @b2SolveJointsTask(i64 %1, ptr noundef %0, i1 noundef zeroext true, i32 noundef %2) #9
  br label %b2IntegrateVelocitiesTask.exit

bb.n:                                             ; preds = %bb.a
  %.sroa.3.0.extract.shift.i173 = lshr i64 %1, 32
  %.sroa.3.0.extract.trunc.i174 = trunc nuw i64 %.sroa.3.0.extract.shift.i173 to i32
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !95
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load float, ptr %i.be, align 8, !tbaa !330 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !333 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !151
  %i.bk = fmul float %i.bj, f0x3F490FDB           ; 3 uses
  %i.bl = fmul float %i.bh, %i.bh
  %i.bm = fmul float %i.bk, %i.bk
  %i.bn = and i32 %.sroa.3.0.extract.trunc.i174, 65535 ; 2 uses
  %.not57.i = icmp eq i32 %i.bn, 0
  br i1 %.not57.i, label %b2IntegrateVelocitiesTask.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.n
  %.sroa.051.0.extract.trunc.i = trunc i64 %1 to i32
  %i.bo = add nsw i32 %i.bn, %.sroa.051.0.extract.trunc.i
  %sext.i175 = shl i64 %1, 32
  %i.bp = ashr exact i64 %sext.i175, 32
  %i.bq = sext i32 %i.bo to i64
  %i.br = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i176

.lr.ph.i176:                                      ; preds = %bb.r, %.lr.ph.preheader.i
  %indvars.iv.i177 = phi i64 [ %i.bp, %.lr.ph.preheader.i ], [ %indvars.iv.next.i183, %bb.r ] ; 2 uses
  %i.bt = getelementptr inbounds [32 x i8], ptr %i.bd, i64 %indvars.iv.i177 ; 6 uses
  %.sroa.010.0.copyload.i = load <2 x float>, ptr %i.bt, align 4, !tbaa !127
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !153
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 12 ; 3 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !156 ; 4 uses
  %i.by = insertelement <2 x i32> poison, i32 %i.bx, i64 0
  %i.bz = shufflevector <2 x i32> %i.by, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ca = and <2 x i32> %i.bz, <i32 1, i32 2>
  %i.cb = icmp eq <2 x i32> %i.ca, zeroinitializer
  %i.cc = select <2 x i1> %i.cb, <2 x float> %.sroa.010.0.copyload.i, <2 x float> zeroinitializer ; 4 uses
  %i.cd = and i32 %i.bx, 4
  %.not55.i = icmp eq i32 %i.cd, 0
  %i.ce = select i1 %.not55.i, float %i.bv, float 0.000000e+00 ; 7 uses
  %i.cf = fmul <2 x float> %i.cc, %i.cc
  %i.cg = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.cf) ; 2 uses
  %i.ch = fcmp ogt float %i.cg, %i.bl
  br i1 %i.ch, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph.i176
  %i.ci = tail call float @sqrtf(float noundef %i.cg) #9
  %i.cj = fdiv float %i.bh, %i.ci
  %i.ck = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cm = fmul <2 x float> %i.cc, %i.cl
  %i.cn = or i32 %i.bx, 32                        ; 2 uses
  store i32 %i.cn, ptr %i.bw, align 4, !tbaa !156
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i176
  %i.co = phi i32 [ %i.cn, %bb.o ], [ %i.bx, %.lr.ph.i176 ] ; 2 uses
  %.sroa.010.0.i = phi <2 x float> [ %i.cm, %bb.o ], [ %i.cc, %.lr.ph.i176 ] ; 2 uses
  %i.cp = fmul float %i.ce, %i.ce
  %i.cq = fcmp ogt float %i.cp, %i.bm
  %i.cr = and i32 %i.co, 128
  %i.cs = icmp eq i32 %i.cr, 0
  %or.cond.i = and i1 %i.cq, %i.cs
  br i1 %or.cond.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ct = fcmp olt float %i.ce, 0.000000e+00
  %i.cu = fneg float %i.ce
  %i.cv = select i1 %i.ct, float %i.cu, float %i.ce
  %i.cw = fdiv float %i.bk, %i.cv
  %i.cx = fmul float %i.ce, %i.cw
  %i.cy = or i32 %i.co, 32
  store i32 %i.cy, ptr %i.bw, align 4, !tbaa !156
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0.i = phi float [ %i.cx, %bb.q ], [ %i.ce, %bb.p ] ; 2 uses
  store <2 x float> %.sroa.010.0.i, ptr %i.bt, align 4, !tbaa !127
  store float %.0.i, ptr %i.bu, align 4, !tbaa !153
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %i.da = load <2 x float>, ptr %i.cz, align 4
  %i.db = fmul <2 x float> %i.bs, %.sroa.010.0.i
  %i.dc = fadd <2 x float> %i.db, %i.da
  store <2 x float> %i.dc, ptr %i.cz, align 4, !tbaa !127
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bt, i64 24 ; 2 uses
  %i.de = fmul float %i.bf, %.0.i                 ; 2 uses
  %i.df = load <2 x float>, ptr %i.dd, align 4    ; 2 uses
  %.sroa.010.0.vec.extract.i.i = extractelement <2 x float> %i.df, i64 0 ; 2 uses
  %.sroa.010.4.vec.extract.i.i = extractelement <2 x float> %i.df, i64 1 ; 2 uses
  %i.dg = fmul float %i.de, %.sroa.010.4.vec.extract.i.i
  %i.dh = fsub float %.sroa.010.0.vec.extract.i.i, %i.dg ; 3 uses
  %i.di = fmul float %i.de, %.sroa.010.0.vec.extract.i.i
  %i.dj = fadd float %.sroa.010.4.vec.extract.i.i, %i.di ; 3 uses
  %i.dk = fmul float %i.dj, %i.dj
  %i.dl = fmul float %i.dh, %i.dh
  %i.dm = fadd float %i.dk, %i.dl
  %i.dn = tail call float @sqrtf(float noundef %i.dm) #9 ; 2 uses
  %i.do = fcmp ogt float %i.dn, 0.000000e+00
  %i.dp = fdiv float 1.000000e+00, %i.dn
  %i.dq = select i1 %i.do, float %i.dp, float 0.000000e+00 ; 2 uses
  %i.dr = fmul float %i.dh, %i.dq
  %.sroa.015.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.ds = fmul float %i.dj, %i.dq
  %.sroa.015.4.vec.insert.i.i = insertelement <2 x float> %.sroa.015.0.vec.insert.i.i, float %i.ds, i64 1
  store <2 x float> %.sroa.015.4.vec.insert.i.i, ptr %i.dd, align 4, !tbaa !127
  %indvars.iv.next.i183 = add nsw i64 %indvars.iv.i177, 1 ; 2 uses
  %i.dt = icmp slt i64 %indvars.iv.next.i183, %i.bq
  br i1 %i.dt, label %.lr.ph.i176, label %b2IntegrateVelocitiesTask.exit, !llvm.loop !329

bb.s:                                             ; preds = %bb.a
  %trunc = trunc i64 %.sroa.12.0.extract.shift to i8
  switch i8 %trunc, label %b2IntegrateVelocitiesTask.exit [
    i8 4, label %bb.t
    i8 3, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  tail call void @b2SolveContacts_Wide(i64 %1, ptr noundef %0) #9
  br label %b2IntegrateVelocitiesTask.exit

bb.u:                                             ; preds = %bb.s
  tail call void @b2SolveJointsTask(i64 %1, ptr noundef %0, i1 noundef zeroext false, i32 noundef %2) #9
  br label %b2IntegrateVelocitiesTask.exit

bb.v:                                             ; preds = %bb.a
  tail call void @b2StoreImpulses_Wide(i64 %1, ptr noundef %0, i32 noundef %2) #9
  br label %b2IntegrateVelocitiesTask.exit

b2IntegrateVelocitiesTask.exit:                   ; preds = %bb.r, %bb.g, %bb.n, %bb.d, %bb.s, %bb.k, %bb.h, %bb.t, %bb.u, %bb.l, %bb.m, %bb.i, %bb.j, %bb.v, %bb.c, %bb.b, %bb.a
  ret void
}

declare void @b2PrepareJointsTask(i64, ptr noundef) local_unnamed_addr #2

declare void @b2PrepareContacts_Wide(i64, ptr noundef) local_unnamed_addr #2

declare void @b2WarmStartContacts_Wide(i64, ptr noundef) local_unnamed_addr #2

declare void @b2WarmStartJointsTask(i64, ptr noundef) local_unnamed_addr #2

declare void @b2PushContacts_Wide(i64, ptr noundef) local_unnamed_addr #2

declare void @b2SolveJointsTask(i64, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare void @b2SolveContacts_Wide(i64, ptr noundef) local_unnamed_addr #2

declare void @b2StoreImpulses_Wide(i64, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

declare float @b2GetLengthUnitsPerMeter() local_unnamed_addr #2

declare zeroext i1 @b2IsValidVec2(<2 x float>) local_unnamed_addr #2

declare zeroext i1 @b2IsValidFloat(float noundef) local_unnamed_addr #2

declare void @b2Log(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @b2SolveContinuous(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, float noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.b2ContinuousContext, align 8 ; 21 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1960
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !92
  %i.e = sext i32 %1 to i64                       ; 3 uses
  %i.f = getelementptr inbounds [96 x i8], ptr %i.d, i64 %i.e ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %.sroa.0105.0.copyload = load <2 x float>, ptr %i.g, align 4, !tbaa !127 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.i = load <2 x float>, ptr %i.h, align 4, !noalias !340
  %i.j = fsub <2 x float> %.sroa.0105.0.copyload, %.sroa.0105.0.copyload ; 3 uses
  %i.k = fsub <2 x float> %i.i, %.sroa.0105.0.copyload ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  %i.m = load <2 x float>, ptr %i.l, align 4, !tbaa !127, !noalias !340 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.o = load <2 x float>, ptr %i.n, align 4, !tbaa !127, !noalias !340 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.q = load <2 x float>, ptr %i.p, align 4, !tbaa !127, !noalias !340 ; 5 uses
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.s = fmul <2 x float> %i.m, %i.r              ; 2 uses
  %i.t = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.u = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.v = fmul <2 x float> %i.t, %i.u              ; 2 uses
  %i.w = fsub <2 x float> %i.s, %i.v
  %i.x = fadd <2 x float> %i.s, %i.v
  %i.y = shufflevector <2 x float> %i.w, <2 x float> %i.x, <2 x i32> <i32 0, i32 3>
  %i.z = fsub <2 x float> %i.j, %i.y
  %i.aa = fmul <2 x float> %i.o, %i.r             ; 2 uses
  %i.ab = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ac = fmul <2 x float> %i.ab, %i.u            ; 2 uses
  %i.ad = fsub <2 x float> %i.aa, %i.ac
  %i.ae = fadd <2 x float> %i.aa, %i.ac
  %i.af = shufflevector <2 x float> %i.ad, <2 x float> %i.ae, <2 x i32> <i32 0, i32 3>
  %i.ag = fsub <2 x float> %i.k, %i.af            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1920
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !128
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.an = load i32, ptr %i.am, align 4, !tbaa !139
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [104 x i8], ptr %i.al, i64 %i.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.aq, i8 0, i64 176, i1 false)
  store ptr %0, ptr %4, align 8, !tbaa !162
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 40
  store <2 x float> %i.q, ptr %i.ar, align 8, !tbaa !127
  %.sroa.7.0..sroa_idx251 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store <2 x float> %i.j, ptr %.sroa.7.0..sroa_idx251, align 8, !tbaa !127
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  store <2 x float> %i.k, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !127
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64
  store <2 x float> %i.m, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !127
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 72
  store <2 x float> %i.o, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !127
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 80
  store <2 x float> %.sroa.0105.0.copyload, ptr %i.as, align 8, !tbaa !127
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.f, ptr %i.at, align 8, !tbaa !163
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 3 uses
  store float 1.000000e+00, ptr %i.au, align 8, !tbaa !164
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 92 ; 5 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !144
  %i.ax = and i32 %i.aw, 16
  %.not = icmp eq i32 %i.ax, 0
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 24 ; 3 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !140 ; 2 uses
  %.not161259 = icmp eq i32 %i.az, -1
  br i1 %.not161259, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 2144
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.0158260 = phi i32 [ %i.az, %.lr.ph ], [ %i.bi, %bb.e ]
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !124
  %i.bf = sext i32 %.0158260 to i64
  %i.bg = getelementptr inbounds [296 x i8], ptr %i.be, i64 %i.bf ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !142 ; 2 uses
  store ptr %i.bg, ptr %i.bb, align 8, !tbaa !165
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 96 ; 2 uses
  %i.bk = load <2 x float>, ptr %i.bj, align 8    ; 2 uses
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = fmul <2 x float> %i.m, %i.bl            ; 2 uses
  %i.bn = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bo = fmul <2 x float> %i.t, %i.bn            ; 2 uses
  %i.bp = fsub <2 x float> %i.bm, %i.bo
  %i.bq = fadd <2 x float> %i.bm, %i.bo
  %i.br = shufflevector <2 x float> %i.bp, <2 x float> %i.bq, <2 x i32> <i32 0, i32 3>
  %i.bs = fadd <2 x float> %i.z, %i.br
  store <2 x float> %i.bs, ptr %i.bc, align 8, !tbaa !127
  %i.bt = load <2 x float>, ptr %i.bj, align 8    ; 2 uses
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = fmul <2 x float> %i.o, %i.bu            ; 2 uses
  %i.bw = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bx = fmul <2 x float> %i.ab, %i.bw           ; 2 uses
  %i.by = fsub <2 x float> %i.bv, %i.bx
  %i.bz = fadd <2 x float> %i.bv, %i.bx
  %i.ca = shufflevector <2 x float> %i.by, <2 x float> %i.bz, <2 x i32> <i32 0, i32 3>
  %i.cb = fadd <2 x float> %i.ag, %i.ca
  store <2 x float> %i.cb, ptr %i.bd, align 8, !tbaa !127
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bg, i64 64 ; 2 uses
  %.sroa.070.0.copyload = load <2 x float>, ptr %i.cc, align 8, !tbaa !127 ; 2 uses
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 72 ; 2 uses
  %.sroa.471.0.copyload = load <2 x float>, ptr %.sroa.471.0..sroa_idx, align 8, !tbaa !127 ; 2 uses
  %i.cd = call { <2 x float>, <2 x float> } @b2ComputeShapeAABB(ptr noundef %i.bg, <2 x float> %i.ag, <2 x float> %i.o) #9 ; 2 uses
  %i.ce = extractvalue { <2 x float>, <2 x float> } %i.cd, 0
  %i.cf = extractvalue { <2 x float>, <2 x float> } %i.cd, 1
  %i.cg = fadd <2 x float> %.sroa.0105.0.copyload, %i.ce ; 3 uses
  %i.ch = fadd <2 x float> %.sroa.0105.0.copyload, %i.cf ; 3 uses
  store <2 x float> %i.cg, ptr %i.cc, align 8, !tbaa !127
  store <2 x float> %i.ch, ptr %.sroa.471.0..sroa_idx, align 8, !tbaa !127
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !147
  %.not165 = icmp eq i32 %i.cj, -1
  br i1 %.not165, label %bb.c, label %bb.e, !llvm.loop !336

bb.c:                                             ; preds = %bb.b
  %i.ck = fcmp olt <2 x float> %.sroa.070.0.copyload, %i.cg
  %i.cl = select <2 x i1> %i.ck, <2 x float> %.sroa.070.0.copyload, <2 x float> %i.cg ; 3 uses
  %i.cm = fcmp ogt <2 x float> %.sroa.471.0.copyload, %i.ch
  %i.cn = select <2 x i1> %i.cm, <2 x float> %.sroa.471.0.copyload, <2 x float> %i.ch ; 3 uses
  %i.co = call i64 @b2DynamicTree_Query(ptr noundef nonnull %i.ah, <2 x float> %i.cl, <2 x float> %i.cn, i64 noundef -1, ptr noundef nonnull @b2ContinuousQueryCallback, ptr noundef nonnull %4) #9 ; 0 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cp = call i64 @b2DynamicTree_Query(ptr noundef nonnull %i.ai, <2 x float> %i.cl, <2 x float> %i.cn, i64 noundef -1, ptr noundef nonnull @b2ContinuousQueryCallback, ptr noundef nonnull %4) #9 ; 0 uses
  %i.cq = call i64 @b2DynamicTree_Query(ptr noundef nonnull %i.aj, <2 x float> %i.cl, <2 x float> %i.cn, i64 noundef -1, ptr noundef nonnull @b2ContinuousQueryCallback, ptr noundef nonnull %4) #9 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.not161 = icmp eq i32 %i.bi, -1
  br i1 %.not161, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %i.cr = call float @b2GetLengthUnitsPerMeter() #9
  %i.cs = fmul float %i.cr, 5.000000e-03
  %i.ct = fmul float %i.cs, 4.000000e+00
  %i.cu = load float, ptr %i.au, align 8, !tbaa !164 ; 3 uses
  %i.cv = fcmp olt float %i.cu, 1.000000e+00
  br i1 %i.cv, label %bb.f, label %bb.j

bb.f:                                             ; preds = %._crit_edge
  %i.cw = fsub float 1.000000e+00, %i.cu          ; 2 uses
  %i.cx = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cz = fmul <2 x float> %i.o, %i.cy
  %i.da = fmul <2 x float> %i.k, %i.cy
  %i.db = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dd = fmul <2 x float> %i.m, %i.dc
  %i.de = fadd <2 x float> %i.cz, %i.dd           ; 3 uses
  %i.df = fmul <2 x float> %i.de, %i.de
  %i.dg = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.df)
  %i.dh = call float @sqrtf(float noundef %i.dg) #9 ; 2 uses
  %i.di = fcmp ogt float %i.dh, 0.000000e+00
  %i.dj = fdiv float 1.000000e+00, %i.dh
  %i.dk = select i1 %i.di, float %i.dj, float 0.000000e+00
  %i.dl = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dn = fmul <2 x float> %i.de, %i.dm           ; 4 uses
  %i.do = fmul <2 x float> %i.j, %i.dc
  %i.dp = fadd <2 x float> %i.da, %i.do           ; 2 uses
  %i.dq = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dr = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ds = fmul <2 x float> %i.dq, %i.dr           ; 2 uses
  %i.dt = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.du = fmul <2 x float> %i.q, %i.dt            ; 2 uses
  %i.dv = fsub <2 x float> %i.du, %i.ds
  %i.dw = fadd <2 x float> %i.du, %i.ds
  %i.dx = shufflevector <2 x float> %i.dv, <2 x float> %i.dw, <2 x i32> <i32 0, i32 3>
  %i.dy = fsub <2 x float> %i.dp, %i.dx
  store <2 x float> %i.dn, ptr %i.n, align 4, !tbaa !127
  %i.dz = fadd <2 x float> %.sroa.0105.0.copyload, %i.dy
  store <2 x float> %i.dz, ptr %i.f, align 4, !tbaa !127
  %i.ea = fadd <2 x float> %.sroa.0105.0.copyload, %i.dp ; 2 uses
  store <2 x float> %i.ea, ptr %i.h, align 4, !tbaa !127
  store <2 x float> %i.dn, ptr %i.l, align 4, !tbaa !127
  store <2 x float> %i.ea, ptr %i.g, align 4, !tbaa !127
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !94
  %i.ed = getelementptr inbounds [32 x i8], ptr %i.ec, i64 %i.e ; 2 uses
  %.sroa.044.0.copyload = load <2 x float>, ptr %i.ed, align 4, !tbaa !127
  %i.ee = fmul float %3, %i.cw
  %i.ef = getelementptr inbounds nuw i8, ptr %i.f, i64 84
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !159
  %i.eh = fmul float %i.eg, %i.ee
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 2452
  %i.ej = load <2 x float>, ptr %i.ei, align 4
  %i.ek = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.el = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> zeroinitializer
  %i.em = fmul <2 x float> %i.el, %i.ej
  %i.en = fsub <2 x float> %.sroa.044.0.copyload, %i.em
  store <2 x float> %i.en, ptr %i.ed, align 4, !tbaa !127
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 2224
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !96
  %i.eq = getelementptr inbounds [40 x i8], ptr %i.ep, i64 %i.e
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.er, ptr noundef nonnull align 4 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !154
  %.1266 = load i32, ptr %i.ay, align 8, !tbaa !98 ; 2 uses
  %.not163267 = icmp eq i32 %.1266, -1
  br i1 %.not163267, label %.loopexit, label %.lr.ph270

.lr.ph270:                                        ; preds = %bb.f
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 2144
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph270, %bb.i
  %.1268 = phi i32 [ %.1266, %.lr.ph270 ], [ %.1, %bb.i ]
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !124
  %i.eu = sext i32 %.1268 to i64
  %i.ev = getelementptr inbounds [296 x i8], ptr %i.et, i64 %i.eu ; 8 uses
  %i.ew = load <2 x float>, ptr %i.f, align 4
  %i.ex = load <2 x float>, ptr %i.n, align 4
  %i.ey = call { <2 x float>, <2 x float> } @b2ComputeFatShapeAABB(ptr noundef %i.ev, <2 x float> %i.ew, <2 x float> %i.ex, float noundef %i.ct) #9 ; 2 uses
  %i.ez = extractvalue { <2 x float>, <2 x float> } %i.ey, 0 ; 3 uses
  %i.fa = extractvalue { <2 x float>, <2 x float> } %i.ey, 1 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ev, i64 64
  store <2 x float> %i.ez, ptr %i.fb, align 8, !tbaa !127
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ev, i64 72
  store <2 x float> %i.fa, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !127
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ev, i64 80 ; 2 uses
  %i.fd = load <2 x float>, ptr %i.fc, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ev, i64 88
  %i.ff = load <2 x float>, ptr %i.fe, align 8
  %i.fg = shufflevector <2 x float> %i.fd, <2 x float> %i.fa, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fh = shufflevector <2 x float> %i.ez, <2 x float> %i.ff, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fi = fcmp ole <4 x float> %i.fg, %i.fh
  %i.fj = freeze <4 x i1> %i.fi
  %i.fk = bitcast <4 x i1> %i.fj to i4
  %i.fl = icmp eq i4 %i.fk, -1
  br i1 %i.fl, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ev, i64 60
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !158
  %i.fo = shufflevector <2 x float> %i.ez, <2 x float> %i.fa, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.fp = insertelement <4 x float> poison, float %i.fn, i64 0
  %i.fq = shufflevector <4 x float> %i.fp, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fr = fsub <4 x float> %i.fo, %i.fq
  %i.fs = fadd <4 x float> %i.fo, %i.fq
  %i.ft = shufflevector <4 x float> %i.fr, <4 x float> %i.fs, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.ft, ptr %i.fc, align 8, !tbaa !127
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ev, i64 295
  store i8 1, ptr %i.fu, align 1, !tbaa !143
  %i.fv = load i32, ptr %i.av, align 4, !tbaa !144
  %i.fw = or i32 %i.fv, 256
  store i32 %i.fw, ptr %i.av, align 4, !tbaa !144
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  %.1 = load i32, ptr %i.fx, align 4, !tbaa !98   ; 2 uses
  %.not163 = icmp eq i32 %.1, -1
  br i1 %.not163, label %.loopexit, label %bb.g, !llvm.loop !337

bb.j:                                             ; preds = %._crit_edge
  %i.fy = load <2 x i64>, ptr %i.n, align 4, !tbaa !127
  store <2 x i64> %i.fy, ptr %i.l, align 4, !tbaa !127
  %.2261 = load i32, ptr %i.ay, align 8, !tbaa !98 ; 2 uses
  %.not162262 = icmp eq i32 %.2261, -1
  br i1 %.not162262, label %.loopexit, label %.lr.ph265

.lr.ph265:                                        ; preds = %bb.j
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 2144
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !124
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph265, %bb.m
  %.2263 = phi i32 [ %.2261, %.lr.ph265 ], [ %.2, %bb.m ]
  %i.gb = sext i32 %.2263 to i64
  %i.gc = getelementptr inbounds [296 x i8], ptr %i.ga, i64 %i.gb ; 7 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 80 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 64
  %i.gf = load <2 x float>, ptr %i.gd, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 88
  %i.gh = load <2 x float>, ptr %i.gg, align 8
  %i.gi = load <2 x float>, ptr %i.ge, align 8    ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gc, i64 72
  %i.gk = load <2 x float>, ptr %i.gj, align 8    ; 2 uses
  %i.gl = shufflevector <2 x float> %i.gf, <2 x float> %i.gk, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gm = shufflevector <2 x float> %i.gi, <2 x float> %i.gh, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gn = fcmp ole <4 x float> %i.gl, %i.gm
  %i.go = freeze <4 x i1> %i.gn
  %i.gp = bitcast <4 x i1> %i.go to i4
  %i.gq = icmp eq i4 %i.gp, -1
  br i1 %i.gq, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gc, i64 60
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !158
  %i.gt = shufflevector <2 x float> %i.gi, <2 x float> %i.gk, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.gu = insertelement <4 x float> poison, float %i.gs, i64 0
  %i.gv = shufflevector <4 x float> %i.gu, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gw = fsub <4 x float> %i.gt, %i.gv
  %i.gx = fadd <4 x float> %i.gt, %i.gv
  %i.gy = shufflevector <4 x float> %i.gw, <4 x float> %i.gx, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.gy, ptr %i.gd, align 8, !tbaa !127
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gc, i64 295
  store i8 1, ptr %i.gz, align 1, !tbaa !143
  %i.ha = load i32, ptr %i.av, align 4, !tbaa !144
  %i.hb = or i32 %i.ha, 256
  store i32 %i.hb, ptr %i.av, align 4, !tbaa !144
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gc, i64 12
  %.2 = load i32, ptr %i.hc, align 4, !tbaa !98   ; 2 uses
  %.not162 = icmp eq i32 %.2, -1
  br i1 %.not162, label %.loopexit, label %bb.k, !llvm.loop !338

.loopexit:                                        ; preds = %bb.m, %bb.i, %bb.j, %bb.f
  %i.hd = getelementptr inbounds nuw i8, ptr %4, i64 188 ; 2 uses
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !166 ; 2 uses
  %i.hf = icmp sgt i32 %i.he, 0
  br i1 %i.hf, label %.lr.ph273, label %._crit_edge274

.lr.ph273:                                        ; preds = %.loopexit
  %i.hg = getelementptr inbounds nuw i8, ptr %4, i64 156
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %4, i64 92
  br label %bb.n

._crit_edge274:                                   ; preds = %bb.r, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret void

bb.n:                                             ; preds = %.lr.ph273, %bb.r
  %i.hk = phi i32 [ %i.he, %.lr.ph273 ], [ %i.ig, %bb.r ]
  %indvars.iv = phi i64 [ 0, %.lr.ph273 ], [ %indvars.iv.next, %bb.r ] ; 3 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !127
  %i.hn = load float, ptr %i.au, align 8, !tbaa !164
  %i.ho = fcmp olt float %i.hm, %i.hn
  br i1 %i.ho, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.hp = load i32, ptr %i.hh, align 8, !tbaa !116 ; 2 uses
  %i.hq = load i32, ptr %i.hi, align 4, !tbaa !341 ; 4 uses
  %.not164 = icmp slt i32 %i.hp, %i.hq
  %.pre = load ptr, ptr %2, align 8, !tbaa !146   ; 2 uses
  br i1 %.not164, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.hr = shl nsw i32 %i.hq, 3
  %i.hs = icmp eq i32 %i.hq, 0
  %i.ht = shl nsw i32 %i.hq, 1
  %spec.select = select i1 %i.hs, i32 8, i32 %i.ht ; 2 uses
  %i.hu = shl nsw i32 %spec.select, 3
  %i.hv = sext i32 %i.hr to i64
  %i.hw = sext i32 %i.hu to i64
  %i.hx = call ptr @b2GrowAlloc(ptr noundef %.pre, i64 noundef %i.hv, i64 noundef %i.hw) #9 ; 2 uses
  store ptr %i.hx, ptr %2, align 8, !tbaa !146
  store i32 %spec.select, ptr %i.hi, align 4, !tbaa !341
  %.pre277 = load i32, ptr %i.hh, align 8, !tbaa !116
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.hy = phi i32 [ %.pre277, %bb.p ], [ %i.hp, %bb.o ]
  %i.hz = phi ptr [ %i.hx, %bb.p ], [ %.pre, %bb.o ]
  %i.ia = sext i32 %i.hy to i64
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.hz, i64 %i.ia
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %indvars.iv
  %i.id = load i64, ptr %i.ic, align 4, !tbaa !98
  store i64 %i.id, ptr %i.ib, align 4, !tbaa !98
  %i.ie = load i32, ptr %i.hh, align 8, !tbaa !116
  %i.if = add nsw i32 %i.ie, 1
  store i32 %i.if, ptr %i.hh, align 8, !tbaa !116
  %.pre278 = load i32, ptr %i.hd, align 4, !tbaa !166
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.q
  %i.ig = phi i32 [ %i.hk, %bb.n ], [ %.pre278, %bb.q ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ih = sext i32 %i.ig to i64
  %i.ii = icmp slt i64 %indvars.iv.next, %i.ih
  br i1 %i.ii, label %bb.n, label %._crit_edge274, !llvm.loop !339
}

declare { <2 x float>, <2 x float> } @b2ComputeFatShapeAABB(ptr noundef, <2 x float>, <2 x float>, float noundef) local_unnamed_addr #2

declare { <2 x float>, <2 x float> } @b2ComputeShapeAABB(ptr noundef, <2 x float>, <2 x float>) local_unnamed_addr #2

declare i64 @b2DynamicTree_Query(ptr noundef, <2 x float>, <2 x float>, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @b2ContinuousQueryCallback(i32 %0, i64 noundef %1, ptr nofree noundef captures(none) %2) #0 {
bb.a:
  %3 = alloca %struct.b2TOIInput, align 4         ; 13 uses
  %4 = alloca %struct.b2ShapeProxy, align 4       ; 4 uses
  %5 = alloca %struct.b2TOIOutput, align 4        ; 8 uses
  %6 = alloca %struct.b2Vec2, align 8             ; 5 uses
  %7 = alloca %struct.b2ShapeProxy, align 4       ; 4 uses
  %8 = alloca %struct.b2TOIOutput, align 4        ; 4 uses
  %i.a = trunc i64 %1 to i32
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !165  ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !163  ; 3 uses
  %i.f = load i32, ptr %i.c, align 8, !tbaa !136
  %i.g = icmp eq i32 %i.f, %i.a
  br i1 %i.g, label %.critedge153, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !162    ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2144
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !124
  %sext = shl i64 %1, 32
  %i.k = ashr exact i64 %sext, 32
  %i.l = getelementptr inbounds [296 x i8], ptr %i.j, i64 %i.k ; 17 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !133  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !133
  %i.q = icmp eq i32 %i.n, %i.p
  br i1 %i.q, label %.critedge153, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !147
  %.not = icmp eq i32 %i.s, -1                    ; 2 uses
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 290
  %i.u = load i8, ptr %i.t, align 2, !tbaa !344, !range !122, !noundef !123
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %.critedge153, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 290
  %i.x = load i8, ptr %i.w, align 2, !tbaa !344, !range !122, !noundef !123
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %.critedge153, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.sroa.5201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %.sroa.5201.0.copyload = load i32, ptr %.sroa.5201.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %.sroa.5197.0.copyload = load i32, ptr %.sroa.5197.0..sroa_idx, align 8 ; 2 uses
  %i.z = icmp eq i32 %.sroa.5197.0.copyload, %.sroa.5201.0.copyload
  %i.aa = icmp ne i32 %.sroa.5197.0.copyload, 0
  %or.cond.i = and i1 %i.aa, %i.z
  br i1 %or.cond.i, label %.split, label %b2ShouldShapesCollide.exit

.split:                                           ; preds = %bb.f
  %i.ab = icmp sgt i32 %.sroa.5201.0.copyload, 0
  br i1 %i.ab, label %bb.g, label %.critedge153

b2ShouldShapesCollide.exit:                       ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %.sroa.4196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %.sroa.4196.0.copyload = load i64, ptr %.sroa.4196.0..sroa_idx, align 8
  %.sroa.0195.0.copyload = load i64, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  %.sroa.4200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  %.sroa.4200.0.copyload = load i64, ptr %.sroa.4200.0..sroa_idx, align 8
  %.sroa.0199.0.copyload = load i64, ptr %i.ad, align 8
  %i.ae = and i64 %.sroa.0199.0.copyload, %.sroa.4196.0.copyload
  %i.af = icmp ne i64 %i.ae, 0
  %i.ag = and i64 %.sroa.4200.0.copyload, %.sroa.0195.0.copyload
  %i.ah = icmp ne i64 %i.ag, 0
  %i.ai = select i1 %i.af, i1 %i.ah, i1 false
  br i1 %i.ai, label %bb.g, label %.critedge153

bb.g:                                             ; preds = %.split, %b2ShouldShapesCollide.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 1920 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !128
  %i.al = sext i32 %i.n to i64
  %i.am = getelementptr inbounds [104 x i8], ptr %i.ak, i64 %i.al ; 2 uses
  %i.an = tail call ptr @b2GetBodySim(ptr noundef nonnull %i.h, ptr noundef %i.am) #9 ; 8 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 92
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !144
  %i.aq = and i32 %i.ap, 16
  %.not147 = icmp eq i32 %i.aq, 0
  br i1 %.not147, label %bb.h, label %.critedge153

bb.h:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr %i.aj, align 8, !tbaa !128
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.at = load i32, ptr %i.as, align 4, !tbaa !139
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [104 x i8], ptr %i.ar, i64 %i.au
  %i.aw = tail call zeroext i1 @b2ShouldBodiesCollide(ptr noundef nonnull %i.h, ptr noundef %i.av, ptr noundef %i.am) #9
  br i1 %i.aw, label %bb.i, label %.critedge153

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.l, i64 292
  %i.ay = load i8, ptr %i.ax, align 4, !tbaa !345, !range !122, !noundef !123
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 292
  %i.bb = load i8, ptr %i.ba, align 4, !tbaa !345, !range !122, !noundef !123
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 2640
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !346 ; 2 uses
  %.not148 = icmp eq ptr %i.be, null
  br i1 %.not148, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = load i32, ptr %i.l, align 8, !tbaa !136
  %i.bg = add nsw i32 %i.bf, 1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 2736
  %i.bi = load i16, ptr %i.bh, align 8, !tbaa !120
  %i.bj = getelementptr inbounds nuw i8, ptr %i.l, i64 288
  %i.bk = load i16, ptr %i.bj, align 8, !tbaa !137
  %i.bl = load i32, ptr %i.c, align 8, !tbaa !136
  %i.bm = add nsw i32 %i.bl, 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.bo = load i16, ptr %i.bn, align 8, !tbaa !137
  %i.bp = getelementptr inbounds nuw i8, ptr %i.h, i64 2648
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !347
  %.sroa.542.0.insert.ext = zext i16 %i.bk to i64
  %.sroa.542.0.insert.shift = shl nuw i64 %.sroa.542.0.insert.ext, 48
  %.sroa.441.0.insert.ext = zext i16 %i.bi to i64
  %.sroa.441.0.insert.shift = shl nuw nsw i64 %.sroa.441.0.insert.ext, 32 ; 2 uses
  %.sroa.040.0.insert.ext = zext i32 %i.bg to i64
  %i.br = or disjoint i64 %.sroa.542.0.insert.shift, %.sroa.040.0.insert.ext
  %.sroa.040.0.insert.insert = or disjoint i64 %i.br, %.sroa.441.0.insert.shift
  %.sroa.539.0.insert.ext = zext i16 %i.bo to i64
  %.sroa.539.0.insert.shift = shl nuw i64 %.sroa.539.0.insert.ext, 48
  %.sroa.037.0.insert.ext = zext i32 %i.bm to i64
  %i.bs = or disjoint i64 %.sroa.539.0.insert.shift, %.sroa.037.0.insert.ext
  %.sroa.037.0.insert.insert = or disjoint i64 %i.bs, %.sroa.441.0.insert.shift
  %i.bt = tail call zeroext i1 %i.be(i64 %.sroa.040.0.insert.insert, i64 %.sroa.037.0.insert.insert, ptr noundef %i.bq) #9
  br i1 %i.bt, label %.critedge, label %.critedge153

.critedge:                                        ; preds = %bb.k, %bb.l, %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !348
  %i.bw = icmp eq i32 %i.bv, 4
  br i1 %i.bw, label %bb.m, label %.critedge151

bb.m:                                             ; preds = %.critedge
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.by = load <2 x float>, ptr %i.an, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ca = load <2 x float>, ptr %i.bz, align 4    ; 4 uses
  %i.cb = load <2 x float>, ptr %i.bx, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.l, i64 152
  %i.cd = load <2 x float>, ptr %i.cc, align 8    ; 2 uses
  %i.ce = fsub <2 x float> %i.by, %i.cb           ; 2 uses
  %i.cf = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = fmul <2 x float> %i.ca, %i.cf           ; 2 uses
  %i.ch = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ci = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cj = fmul <2 x float> %i.ch, %i.ci           ; 2 uses
  %i.ck = fsub <2 x float> %i.cg, %i.cj
  %i.cl = fadd <2 x float> %i.cg, %i.cj
  %i.cm = shufflevector <2 x float> %i.ck, <2 x float> %i.cl, <2 x i32> <i32 0, i32 3>
  %i.cn = fadd <2 x float> %i.ce, %i.cm           ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  %i.cp = load <2 x float>, ptr %i.co, align 8    ; 2 uses
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cr = fmul <2 x float> %i.ca, %i.cq           ; 2 uses
  %i.cs = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ct = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cu = fmul <2 x float> %i.cs, %i.ct           ; 2 uses
  %i.cv = fsub <2 x float> %i.cr, %i.cu
  %i.cw = fadd <2 x float> %i.cr, %i.cu
  %i.cx = shufflevector <2 x float> %i.cv, <2 x float> %i.cw, <2 x i32> <i32 0, i32 3>
  %i.cy = fadd <2 x float> %i.ce, %i.cx
  %i.cz = fsub <2 x float> %i.cy, %i.cn           ; 3 uses
  %i.da = fmul <2 x float> %i.cz, %i.cz
  %i.db = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.da) ; 2 uses
  %i.dc = fcmp ogt float %i.db, f0x057A0000
  br i1 %i.dc, label %bb.n, label %b2GetLengthAndNormalize.exit

bb.n:                                             ; preds = %bb.m
  %i.dd = tail call float @sqrtf(float noundef %i.db) #9 ; 2 uses
  %i.de = fdiv float 1.000000e+00, %i.dd
  %i.df = insertelement <2 x float> poison, float %i.de, i64 0
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dh = fmul <2 x float> %i.cz, %i.dg
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %b2GetLengthAndNormalize.exit

b2GetLengthAndNormalize.exit:                     ; preds = %bb.m, %bb.n
  %.sink.i = phi float [ %i.dd, %bb.n ], [ 0.000000e+00, %bb.m ]
  %.sroa.015.0.i = phi <2 x float> [ %i.di, %bb.n ], [ zeroinitializer, %bb.m ] ; 2 uses
  %i.dj = tail call float @b2GetLengthUnitsPerMeter() #9
  %i.dk = fmul float %i.dj, 5.000000e-03
  %i.dl = fcmp ogt float %.sink.i, %i.dk
  br i1 %i.dl, label %bb.o, label %.critedge151

bb.o:                                             ; preds = %b2GetLengthAndNormalize.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.024.0.copyload = load <2 x float>, ptr %i.dm, align 8, !tbaa !127
  %i.dn = fsub <2 x float> %.sroa.024.0.copyload, %i.cn
  %i.do = fmul <2 x float> %.sroa.015.0.i, %i.dn  ; 2 uses
  %shift = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.do, %shift ; 2 uses
  %i.dp = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.dq = fcmp olt float %i.dp, 0.000000e+00
  br i1 %i.dq, label %.critedge153, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dr = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !157
  %i.dt = fmul float %i.ds, 2.500000e-01          ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.020.0.copyload = load <2 x float>, ptr %i.du, align 8, !tbaa !127
  %i.dv = fsub <2 x float> %.sroa.020.0.copyload, %i.cn
  %i.dw = fmul <2 x float> %.sroa.015.0.i, %i.dv  ; 2 uses
  %shift232 = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop233 = fsub <2 x float> %i.dw, %shift232 ; 2 uses
  %i.dx = extractelement <2 x float> %foldExtExtBinop233, i64 0
  %foldExtExtBinop235 = fsub <2 x float> %foldExtExtBinop, %foldExtExtBinop233
  %i.dy = extractelement <2 x float> %foldExtExtBinop235, i64 0
  %i.dz = fcmp olt float %i.dy, %i.dt
  %i.ea = fcmp ogt float %i.dx, %i.dt
  %or.cond = and i1 %i.ea, %i.dz
  br i1 %or.cond, label %.critedge153, label %.critedge151

.critedge151:                                     ; preds = %b2GetLengthAndNormalize.exit, %bb.p, %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @b2MakeShapeDistanceProxy(ptr dead_on_unwind nonnull writable sret(%struct.b2ShapeProxy) align 4 %3, ptr noundef nonnull %i.l) #9
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @b2MakeShapeDistanceProxy(ptr dead_on_unwind nonnull writable sret(%struct.b2ShapeProxy) align 4 %4, ptr noundef nonnull %i.c) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %i.eb, ptr noundef nonnull align 4 dereferenceable(72) %4, i64 72, i1 false), !tbaa.struct !349
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.ee = load <2 x float>, ptr %i.ed, align 8    ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.eg = load <2 x float>, ptr %i.ef, align 4, !noalias !350
  %9 = fsub <2 x float> %i.eg, %i.ee
  %i.eh = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ei = load <2 x float>, ptr %i.eh, align 4, !noalias !350
  %10 = fsub <2 x float> %i.ei, %i.ee
  %i.ej = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ek = load i64, ptr %i.ej, align 4, !tbaa !127, !noalias !350
  %i.el = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.em = load i64, ptr %i.el, align 4, !tbaa !127, !noalias !350
  %i.en = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.eo = load i64, ptr %i.en, align 4, !tbaa !127, !noalias !350
  store i64 %i.eo, ptr %i.ec, align 4, !tbaa !127
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 152
  store <2 x float> %9, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !127
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 160
  store <2 x float> %10, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !127
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 168
  store i64 %i.ek, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !127
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 176
  store i64 %i.em, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !127
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.ep, ptr noundef nonnull align 8 dereferenceable(40) %i.eq, i64 40, i1 false), !tbaa.struct !351
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 5 uses
  %i.es = load float, ptr %i.er, align 8, !tbaa !164
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 224
  store float %i.es, ptr %i.et, align 4, !tbaa !354
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @b2TimeOfImpact(ptr dead_on_unwind nonnull writable sret(%struct.b2TOIOutput) align 4 %5, ptr noundef nonnull %3) #9
  br i1 %.not, label %bb.t, label %bb.q

bb.q:                                             ; preds = %.critedge151
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !356 ; 2 uses
  %i.ew = load float, ptr %i.er, align 8, !tbaa !164
  %i.ex = fcmp ugt float %i.ev, %i.ew
  br i1 %i.ex, label %.thread220, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 188 ; 3 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !166 ; 2 uses
  %i.fa = icmp slt i32 %i.ez, 8
  br i1 %i.fa, label %bb.s, label %.thread220

bb.s:                                             ; preds = %bb.r
  %i.fb = load i32, ptr %i.l, align 8, !tbaa !136
  %i.fc = load i32, ptr %i.c, align 8, !tbaa !136
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.fe = sext i32 %i.ez to i64                   ; 2 uses
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %i.fe ; 2 uses
  store i32 %i.fb, ptr %i.ff, align 4, !tbaa !98
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  store i32 %i.fc, ptr %.sroa.412.0..sroa_idx, align 4, !tbaa !98
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 156
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.fg, i64 %i.fe
  store float %i.ev, ptr %i.fh, align 4, !tbaa !127
  %i.fi = load i32, ptr %i.ey, align 4, !tbaa !166
  %i.fj = add nsw i32 %i.fi, 1
  store i32 %i.fj, ptr %i.ey, align 4, !tbaa !166
  br label %.thread220

bb.t:                                             ; preds = %.critedge151
  %i.fk = load float, ptr %i.er, align 8, !tbaa !164
  %i.fl = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !356 ; 4 uses
  %i.fn = fcmp ogt float %i.fm, 0.000000e+00
  %i.fo = fcmp olt float %i.fm, %i.fk
  %or.cond154 = select i1 %i.fn, i1 %i.fo, i1 false
  br i1 %or.cond154, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fp = fcmp oeq float %i.fm, 0.000000e+00
  br i1 %i.fp, label %bb.v, label %.thread220

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.fq = call <2 x float> @b2GetShapeCentroid(ptr noundef nonnull %i.c) #9 ; 2 uses
  store <2 x float> %i.fq, ptr %6, align 8
  %i.fr = call <2 x float> @b2ComputeShapeExtent(ptr noundef nonnull %i.c, <2 x float> %i.fq) #9
  %.sroa.08.0.vec.extract = extractelement <2 x float> %i.fr, i64 0
  %i.fs = fmul float %.sroa.08.0.vec.extract, 2.500000e-01
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  call void @b2MakeProxy(ptr dead_on_unwind nonnull writable sret(%struct.b2ShapeProxy) align 4 %7, ptr noundef nonnull %6, i32 noundef 1, float noundef %i.fs) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %i.eb, ptr noundef nonnull align 4 dereferenceable(72) %7, i64 72, i1 false), !tbaa.struct !349
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  call void @b2TimeOfImpact(ptr dead_on_unwind nonnull writable sret(%struct.b2TOIOutput) align 4 %8, ptr noundef nonnull %3) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !357
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  %i.ft = load float, ptr %i.fl, align 4, !tbaa !356 ; 3 uses
  %i.fu = fcmp ogt float %i.ft, 0.000000e+00
  br i1 %i.fu, label %bb.w, label %.thread211

bb.w:                                             ; preds = %bb.v
  %i.fv = load float, ptr %i.er, align 8, !tbaa !164
  %i.fw = fcmp olt float %i.ft, %i.fv
  br i1 %i.fw, label %bb.x, label %.thread211

.thread211:                                       ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %.thread220

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %.thread

.thread:                                          ; preds = %bb.t, %bb.x
  %.1140206 = phi float [ %i.ft, %bb.x ], [ %i.fm, %bb.t ]
  %i.fx = getelementptr inbounds nuw i8, ptr %i.l, i64 294
  %i.fy = load i8, ptr %i.fx, align 2, !tbaa !358, !range !122, !noundef !123
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.thread
  %i.ga = getelementptr inbounds nuw i8, ptr %i.c, i64 294
  %i.gb = load i8, ptr %i.ga, align 2, !tbaa !358, !range !122, !noundef !123
  %i.gc = trunc nuw i8 %i.gb to i1
  br i1 %i.gc, label %bb.z, label %.thread215

bb.z:                                             ; preds = %bb.y, %.thread
  %i.gd = getelementptr inbounds nuw i8, ptr %i.h, i64 2624
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !359 ; 2 uses
  %.not149 = icmp eq ptr %i.ge, null
  br i1 %.not149, label %.thread215, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gf = load i32, ptr %i.l, align 8, !tbaa !136
  %i.gg = add nsw i32 %i.gf, 1
  %i.gh = getelementptr inbounds nuw i8, ptr %i.h, i64 2736
  %i.gi = load i16, ptr %i.gh, align 8, !tbaa !120
  %i.gj = getelementptr inbounds nuw i8, ptr %i.l, i64 288
  %i.gk = load i16, ptr %i.gj, align 8, !tbaa !137
  %i.gl = load i32, ptr %i.c, align 8, !tbaa !136
  %i.gm = add nsw i32 %i.gl, 1
  %i.gn = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.go = load i16, ptr %i.gn, align 8, !tbaa !137
  %i.gp = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.gq = load <2 x float>, ptr %i.ed, align 8
  %i.gr = load <2 x float>, ptr %i.gp, align 4
  %i.gs = fadd <2 x float> %i.gq, %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.gu = getelementptr inbounds nuw i8, ptr %i.h, i64 2632
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !360
  %.sroa.57.0.insert.ext = zext i16 %i.gk to i64
  %.sroa.57.0.insert.shift = shl nuw i64 %.sroa.57.0.insert.ext, 48
  %.sroa.46.0.insert.ext = zext i16 %i.gi to i64
  %.sroa.46.0.insert.shift = shl nuw nsw i64 %.sroa.46.0.insert.ext, 32 ; 2 uses
  %.sroa.05.0.insert.ext = zext i32 %i.gg to i64
  %i.gw = or disjoint i64 %.sroa.57.0.insert.shift, %.sroa.05.0.insert.ext
  %.sroa.05.0.insert.insert = or disjoint i64 %i.gw, %.sroa.46.0.insert.shift
  %.sroa.5.0.insert.ext = zext i16 %i.go to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 48
  %.sroa.04.0.insert.ext = zext i32 %i.gm to i64
  %i.gx = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.04.0.insert.ext
  %.sroa.04.0.insert.insert = or disjoint i64 %i.gx, %.sroa.46.0.insert.shift
  %i.gy = load <2 x float>, ptr %i.gt, align 4
  %i.gz = call zeroext i1 %i.ge(i64 %.sroa.05.0.insert.insert, i64 %.sroa.04.0.insert.insert, <2 x float> %i.gs, <2 x float> %i.gy, ptr noundef %i.gv) #9
  br i1 %i.gz, label %.thread215, label %.thread220

.thread215:                                       ; preds = %bb.y, %bb.z, %bb.aa
  %i.ha = getelementptr inbounds nuw i8, ptr %i.e, i64 92 ; 2 uses
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !144
  %i.hc = or i32 %i.hb, 64
  store i32 %i.hc, ptr %i.ha, align 4, !tbaa !144
  store float %.1140206, ptr %i.er, align 8, !tbaa !164
  br label %.thread220

.thread220:                                       ; preds = %bb.u, %.thread211, %bb.aa, %.thread215, %bb.q, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %.critedge153

.critedge153:                                     ; preds = %bb.p, %bb.o, %.split, %bb.b, %b2ShouldShapesCollide.exit, %.thread220, %bb.h, %bb.l, %bb.g, %bb.d, %bb.e, %bb.a
  ret i1 true
}

declare zeroext i1 @b2ShouldBodiesCollide(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @b2MakeShapeDistanceProxy(ptr dead_on_unwind writable sret(%struct.b2ShapeProxy) align 4, ptr noundef) local_unnamed_addr #2

declare void @b2TimeOfImpact(ptr dead_on_unwind writable sret(%struct.b2TOIOutput) align 4, ptr noundef) local_unnamed_addr #2

declare <2 x float> @b2GetShapeCentroid(ptr noundef) local_unnamed_addr #2

declare <2 x float> @b2ComputeShapeExtent(ptr noundef, <2 x float>) local_unnamed_addr #2

declare void @b2MakeProxy(ptr dead_on_unwind writable sret(%struct.b2ShapeProxy) align 4, ptr noundef, i32 noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #6

declare void @b2GrowBitSet(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}
end_hunk_1
