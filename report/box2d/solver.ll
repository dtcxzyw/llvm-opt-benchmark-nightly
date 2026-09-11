Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/solver?download=true
inline.NumInlined: 126
inline.NumDeleted: 54
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@b2SolverTask:bb.a

.lr.ph:                                           ; preds = %b2ExecuteStage.exit, %bb.ab
  %.0200 = phi i32 [ %.1, %bb.ab ], [ 0, %b2ExecuteStage.exit ] ; 2 uses
  %i.fu = icmp sgt i32 %.0200, 5
  br i1 %i.fu, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph
  tail call void @b2Yield() #8
  br label %bb.ab

bb.aa:                                            ; preds = %.lr.ph
  tail call void asm sideeffect "pause\0A", "~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !149
  tail call void asm sideeffect "pause\0A", "~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !149
  %i.fv = add nsw i32 %.0200, 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.1 = phi i32 [ 0, %bb.z ], [ %i.fv, %bb.aa ]
  %i.fw = load atomic i32, ptr %i.l seq_cst, align 8 ; 2 uses
  %i.fx = icmp eq i32 %i.fw, %.0129
  br i1 %i.fx, label %.lr.ph, label %._crit_edge, !llvm.loop !294

._crit_edge:                                      ; preds = %bb.ab, %b2ExecuteStage.exit
  %.lcssa = phi i32 [ %i.fs, %b2ExecuteStage.exit ], [ %i.fw, %bb.ab ] ; 4 uses
  %i.fy = icmp eq i32 %.lcssa, -1
  br i1 %i.fy, label %b2ExecuteStage.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge
  %i.fz = and i32 %.lcssa, 65535
  %i.ga = lshr i32 %.lcssa, 16                    ; 2 uses
  %i.gb = add nsw i32 %i.ga, -1
  %i.gc = zext nneg i32 %i.fz to i64
  %i.gd = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.gc ; 4 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !103
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 12
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !104 ; 7 uses
  %i.gh = load i32, ptr %i.m, align 8, !tbaa !106 ; 4 uses
  %.not.i.i193 = icmp sgt i32 %i.gg, %i.gh
  br i1 %.not.i.i193, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gi = icmp slt i32 %i.c, %i.gg
  br i1 %i.gi, label %GetWorkerStartIndex.exit.i, label %b2ExecuteStage.exit.backedge

bb.ae:                                            ; preds = %bb.ac
  %i.gj = sdiv i32 %i.gg, %i.gh                   ; 2 uses
  %i.gk = mul nsw i32 %i.gj, %i.gh                ; 0 uses
  %.recomposed = srem i32 %i.gg, %i.gh
  %i.gl = mul nsw i32 %i.gj, %i.c
  %i.gm = tail call noundef i32 @llvm.smin.i32(i32 %.recomposed, i32 %i.c)
  %i.gn = add nsw i32 %i.gm, %i.gl
  br label %GetWorkerStartIndex.exit.i

GetWorkerStartIndex.exit.i:                       ; preds = %bb.ae, %bb.ad
  %.0.i.i = phi i32 [ %i.gn, %bb.ae ], [ %i.c, %bb.ad ] ; 2 uses
  %i.go = icmp eq i32 %.0.i.i, -1
  br i1 %i.go, label %b2ExecuteStage.exit.backedge, label %.preheader.i

.preheader.i:                                     ; preds = %GetWorkerStartIndex.exit.i
  %i.gp = icmp sgt i32 %i.gg, 0
  br i1 %i.gp, label %.lr.ph.i195, label %._crit_edge.i194

.lr.ph.i195:                                      ; preds = %.preheader.i
  %i.gq = getelementptr i8, ptr %i.gd, i64 8
  br label %bb.af

._crit_edge.i194:                                 ; preds = %bb.ah, %.preheader.i
  %.025.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %.1.i, %bb.ah ]
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gd, i64 20
  %i.gs = atomicrmw add ptr %i.gr, i32 %.025.lcssa.i seq_cst, align 4 ; 0 uses
  br label %b2ExecuteStage.exit.backedge

b2ExecuteStage.exit.backedge:                     ; preds = %._crit_edge.i194, %GetWorkerStartIndex.exit.i, %bb.ad
  br label %b2ExecuteStage.exit

bb.af:                                            ; preds = %bb.ah, %.lr.ph.i195
  %.031.i = phi i32 [ 0, %.lr.ph.i195 ], [ %i.hb, %bb.ah ]
  %.02430.i = phi i32 [ %.0.i.i, %.lr.ph.i195 ], [ %spec.store.select.i, %bb.ah ] ; 2 uses
  %.02529.i = phi i32 [ 0, %.lr.ph.i195 ], [ %.1.i, %bb.ah ] ; 2 uses
  %i.gt = sext i32 %.02430.i to i64
  %i.gu = getelementptr inbounds [12 x i8], ptr %i.ge, i64 %i.gt ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = cmpxchg ptr %i.gv, i32 %i.gb, i32 %i.ga seq_cst seq_cst, align 4
  %i.gx = extractvalue { i32, i1 } %i.gw, 1
  br i1 %i.gx, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.gy = load i64, ptr %i.gu, align 4
  %.val.i197 = load i32, ptr %i.gq, align 8, !tbaa !102
  tail call fastcc void @b2ExecuteBlock(i32 %.val.i197, ptr noundef %i.d, i64 %i.gy, i32 noundef %i.c)
  %i.gz = add nsw i32 %.02529.i, 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.1.i = phi i32 [ %i.gz, %bb.ag ], [ %.02529.i, %bb.af ] ; 2 uses
  %i.ha = add nsw i32 %.02430.i, 1                ; 2 uses
  %.not.i196 = icmp slt i32 %i.ha, %i.gg
  %spec.store.select.i = select i1 %.not.i196, i32 %i.ha, i32 0
  %i.hb = add nuw nsw i32 %.031.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.hb, %i.gg
  br i1 %exitcond.not.i, label %._crit_edge.i194, label %bb.af, !llvm.loop !0

b2ExecuteStage.exit.thread:                       ; preds = %._crit_edge, %bb.b, %._crit_edge236
  ret void
}

declare void @b2ParallelFor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @b2FinalizeBodiesTask(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !148  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1920
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !127  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !95
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !93
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2738
  %i.j = load i8, ptr %i.i, align 2, !tbaa !145, !range !122, !noundef !123
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 2741
  %i.l = load i8, ptr %i.k, align 1, !tbaa !305, !range !122, !noundef !123
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = load float, ptr %3, align 8, !tbaa !150  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.p = load float, ptr %i.o, align 4, !tbaa !151
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 2736
  %i.r = load i16, ptr %i.q, align 8, !tbaa !120
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 2224
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !96
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 2192
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !111
  %i.w = sext i32 %2 to i64
  %i.x = getelementptr inbounds [120 x i8], ptr %i.v, i64 %i.w ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  %i.aa = tail call float @b2GetLengthUnitsPerMeter() #8
  %i.ab = fmul float %i.aa, 5.000000e-03
  %i.ac = fmul float %i.ab, 4.000000e+00
  %i.ad = icmp slt i32 %0, %1
  br i1 %i.ad, label %.lr.ph205, label %._crit_edge206

.lr.ph205:                                        ; preds = %bb.a
  %i.ae = icmp eq i8 %i.j, 0
  %i.af = fmul float %i.p, 5.000000e-01
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 2080
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 104 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 108 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 2144
  %i.am = sext i32 %0 to i64
  br label %bb.b

._crit_edge206:                                   ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph205, %._crit_edge
  %indvars.iv = phi i64 [ %i.am, %.lr.ph205 ], [ %indvars.iv.next, %._crit_edge ] ; 7 uses
  %i.an = getelementptr inbounds [32 x i8], ptr %i.f, i64 %indvars.iv ; 6 uses
  %i.ao = getelementptr inbounds [96 x i8], ptr %i.h, i64 %indvars.iv ; 15 uses
  %.sroa.063.0.copyload = load <2 x float>, ptr %i.an, align 4 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !153 ; 4 uses
  %i.ar = tail call zeroext i1 @b2IsValidVec2(<2 x float> %.sroa.063.0.copyload) #8
  br i1 %i.ar, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.as = tail call zeroext i1 @b2IsValidFloat(float noundef %i.aq) #8
  br i1 %i.as, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 88
  %i.au = load i32, ptr %i.at, align 4, !tbaa !139
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [104 x i8], ptr %i.d, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 90
  tail call void (ptr, ...) @b2Log(ptr noundef nonnull @.str.8, ptr noundef nonnull %i.ax) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 3 uses
  %i.ba = load <2 x float>, ptr %i.ay, align 4
  %i.bb = load <2 x float>, ptr %i.az, align 4
  %i.bc = fadd <2 x float> %i.ba, %i.bb
  store <2 x float> %i.bc, ptr %i.ay, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 2 uses
  %i.bf = load <2 x float>, ptr %i.be, align 4    ; 2 uses
  %i.bg = load <2 x float>, ptr %i.bd, align 4    ; 2 uses
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = fmul <2 x float> %i.bf, %i.bh           ; 2 uses
  %i.bj = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bk = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bl = fmul <2 x float> %i.bj, %i.bk           ; 2 uses
  %i.bm = fsub <2 x float> %i.bi, %i.bl
  %i.bn = fadd <2 x float> %i.bi, %i.bl
  %i.bo = shufflevector <2 x float> %i.bm, <2 x float> %i.bn, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.bp = fmul <2 x float> %i.bo, %i.bo
  %4 = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bp) ; 2 uses
  %sqrt.i = tail call float @llvm.sqrt.f32(float %4)
  %i.bq = fcmp ogt float %4, 0.000000e+00
  %i.br = fdiv float 1.000000e+00, %sqrt.i
  %i.bs = select i1 %i.bq, float %i.br, float 0.000000e+00
  %i.bt = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = fmul <2 x float> %i.bo, %i.bu
  store <2 x float> %i.bv, ptr %i.bd, align 4
  %i.bw = fcmp olt float %i.aq, 0.000000e+00
  %i.bx = fneg float %i.aq
  %i.by = select i1 %i.bw, float %i.bx, float %i.aq
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !306 ; 2 uses
  %i.cb = fmul float %i.by, %i.ca
  %i.cc = load <2 x float>, ptr %i.az, align 4    ; 2 uses
  %i.cd = shufflevector <2 x float> %.sroa.063.0.copyload, <2 x float> %i.cc, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ce = fmul <2 x float> %i.cd, %i.cd
  %i.cf = shufflevector <2 x float> %.sroa.063.0.copyload, <2 x float> %i.cc, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.cg = fmul <2 x float> %i.cf, %i.cf
  %i.ch = fadd <2 x float> %i.ce, %i.cg
  %i.ci = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ch) ; 2 uses
  %i.cj = extractelement <2 x float> %i.ci, i64 0
  %i.ck = fadd float %i.cj, %i.cb                 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.an, i64 28
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !307 ; 3 uses
  %i.cn = fcmp olt float %i.cm, 0.000000e+00
  %i.co = fneg float %i.cm
  %i.cp = select i1 %i.cn, float %i.co, float %i.cm
  %i.cq = fmul float %i.ca, %i.cp
  %i.cr = extractelement <2 x float> %i.ci, i64 1
  %i.cs = fadd float %i.cr, %i.cq                 ; 3 uses
  store i64 0, ptr %i.az, align 4
  store i64 1065353216, ptr %i.be, align 4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
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
  store <2 x float> %i.df, ptr %i.ao, align 4
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
  store i64 0, ptr %i.dv, align 4
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
  %or.cond199 = select i1 %i.ae, i1 true, i1 %i.ek
  br i1 %or.cond199, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.el = fmul float %i.af, %i.cs                 ; 2 uses
  %i.em = fcmp ogt float %i.ck, %i.el
  %i.en = select i1 %i.em, float %i.ck, float %i.el
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dj, i64 60
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !315
  %i.eq = fcmp ogt float %i.en, %i.ep
  br i1 %i.eq, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.er = getelementptr inbounds nuw i8, ptr %i.dj, i64 64
  store float 0.000000e+00, ptr %i.er, align 8, !tbaa !316
  %i.es = getelementptr inbounds nuw i8, ptr %i.dj, i64 84
  %i.et = load i32, ptr %i.es, align 4, !tbaa !134
  %i.eu = icmp eq i32 %i.et, 2
  %or.cond = and i1 %i.eu, %i.m
  br i1 %or.cond, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ev = fmul float %i.n, %i.ck                  ; 2 uses
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
  %i.fm = load <2 x i64>, ptr %i.bd, align 4
  store <2 x i64> %i.fm, ptr %i.fl, align 4
  br label %bb.n

bb.m:                                             ; preds = %bb.f
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.fo = load <2 x i64>, ptr %i.bd, align 4
  store <2 x i64> %i.fo, ptr %i.fn, align 4
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
end_hunk_0
begin_hunk_1_@b2ExecuteMainStage:bb.a
._crit_edge:                                      ; preds = %.lr.ph, %b2ExecuteStage.exit
  store atomic i32 0, ptr %i.ad seq_cst, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %._crit_edge, %bb.a
  ret void
}

declare void @b2PrepareJoints_Overflow(ptr noundef) local_unnamed_addr #2

declare void @b2PrepareContacts_Overflow(ptr noundef) local_unnamed_addr #2

declare void @b2WarmStartJoints_Overflow(ptr noundef) local_unnamed_addr #2

declare void @b2WarmStartContacts_Overflow(ptr noundef) local_unnamed_addr #2

declare void @b2SolveJoints_Overflow(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @b2SolveContacts_Overflow(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @b2StoreImpulses_Overflow(ptr noundef) local_unnamed_addr #2

declare void @b2Yield() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @b2ExecuteBlock(i32 %.8.val, ptr noundef %0, i64 %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %.sroa.12.0.extract.shift = lshr i64 %1, 48     ; 3 uses
  switch i32 %.8.val, label %b2IntegrateVelocitiesTask.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.h
    i32 4, label %bb.k
    i32 5, label %bb.n
    i32 6, label %bb.s
    i32 7, label %bb.v
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @b2PrepareJointsTask(i64 %1, ptr noundef %0) #8
  br label %b2IntegrateVelocitiesTask.exit

bb.c:                                             ; preds = %bb.a
  tail call void @b2PrepareContacts_Wide(i64 %1, ptr noundef %0) #8
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
  %.sroa.031.0.copyload.i = load <2 x float>, ptr %i.k, align 4
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
  %.sroa.09.0.copyload.i = load <2 x float>, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !153
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 76
  %i.u = load <2 x float>, ptr %i.t, align 4, !tbaa !137
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
  store <2 x float> %i.aw, ptr %i.q, align 4
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
  tail call void @b2WarmStartContacts_Wide(i64 %1, ptr noundef %0) #8
  br label %b2IntegrateVelocitiesTask.exit

bb.j:                                             ; preds = %bb.h
  tail call void @b2WarmStartJointsTask(i64 %1, ptr noundef %0) #8
  br label %b2IntegrateVelocitiesTask.exit

bb.k:                                             ; preds = %bb.a
  %trunc1 = trunc i64 %.sroa.12.0.extract.shift to i8
  switch i8 %trunc1, label %b2IntegrateVelocitiesTask.exit [
    i8 4, label %bb.l
    i8 3, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  tail call void @b2PushContacts_Wide(i64 %1, ptr noundef %0) #8
  br label %b2IntegrateVelocitiesTask.exit

bb.m:                                             ; preds = %bb.k
  tail call void @b2SolveJointsTask(i64 %1, ptr noundef %0, i1 noundef zeroext true, i32 noundef %2) #8
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
  %.not58.i = icmp eq i32 %i.bn, 0
  br i1 %.not58.i, label %b2IntegrateVelocitiesTask.exit, label %.lr.ph.preheader.i

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
  %.sroa.010.0.copyload.i = load <2 x float>, ptr %i.bt, align 4
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
  %3 = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.cf) ; 2 uses
  %i.cg = fcmp ogt float %3, %i.bl
  br i1 %i.cg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph.i176
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %3)
  %i.ch = fdiv float %i.bh, %sqrt.i.i
  %i.ci = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = fmul <2 x float> %i.cc, %i.cj
  %i.cl = or i32 %i.bx, 32                        ; 2 uses
  store i32 %i.cl, ptr %i.bw, align 4, !tbaa !156
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i176
  %i.cm = phi i32 [ %i.cl, %bb.o ], [ %i.bx, %.lr.ph.i176 ] ; 2 uses
  %.sroa.010.0.i = phi <2 x float> [ %i.ck, %bb.o ], [ %i.cc, %.lr.ph.i176 ] ; 2 uses
  %i.cn = fmul float %i.ce, %i.ce
  %i.co = fcmp ogt float %i.cn, %i.bm
  %i.cp = and i32 %i.cm, 128
  %i.cq = icmp eq i32 %i.cp, 0
  %or.cond.i = and i1 %i.co, %i.cq
  br i1 %or.cond.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cr = fcmp olt float %i.ce, 0.000000e+00
  %i.cs = fneg float %i.ce
  %i.ct = select i1 %i.cr, float %i.cs, float %i.ce
  %i.cu = fdiv float %i.bk, %i.ct
  %i.cv = fmul float %i.ce, %i.cu
  %i.cw = or i32 %i.cm, 32
  store i32 %i.cw, ptr %i.bw, align 4, !tbaa !156
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0.i = phi float [ %i.cv, %bb.q ], [ %i.ce, %bb.p ] ; 2 uses
  store <2 x float> %.sroa.010.0.i, ptr %i.bt, align 4
  store float %.0.i, ptr %i.bu, align 4, !tbaa !153
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %i.cy = load <2 x float>, ptr %i.cx, align 4
  %i.cz = fmul <2 x float> %i.bs, %.sroa.010.0.i
  %i.da = fadd <2 x float> %i.cz, %i.cy
  store <2 x float> %i.da, ptr %i.cx, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.bt, i64 24 ; 2 uses
  %i.dc = fmul float %i.bf, %.0.i                 ; 2 uses
  %i.dd = load <2 x float>, ptr %i.db, align 4    ; 2 uses
  %.sroa.010.0.vec.extract.i.i = extractelement <2 x float> %i.dd, i64 0 ; 2 uses
  %.sroa.010.4.vec.extract.i.i = extractelement <2 x float> %i.dd, i64 1 ; 2 uses
  %i.de = fmul float %i.dc, %.sroa.010.4.vec.extract.i.i
  %i.df = fsub float %.sroa.010.0.vec.extract.i.i, %i.de ; 3 uses
  %i.dg = fmul float %i.dc, %.sroa.010.0.vec.extract.i.i
  %i.dh = fadd float %.sroa.010.4.vec.extract.i.i, %i.dg ; 3 uses
  %i.di = fmul float %i.dh, %i.dh
  %i.dj = fmul float %i.df, %i.df
  %i.dk = fadd float %i.di, %i.dj                 ; 2 uses
  %sqrt.i56.i = tail call float @llvm.sqrt.f32(float %i.dk)
  %i.dl = fcmp ogt float %i.dk, 0.000000e+00
  %i.dm = fdiv float 1.000000e+00, %sqrt.i56.i
  %i.dn = select i1 %i.dl, float %i.dm, float 0.000000e+00 ; 2 uses
  %i.do = fmul float %i.df, %i.dn
  %.sroa.015.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.do, i64 0
  %i.dp = fmul float %i.dh, %i.dn
  %.sroa.015.4.vec.insert.i.i = insertelement <2 x float> %.sroa.015.0.vec.insert.i.i, float %i.dp, i64 1
  store <2 x float> %.sroa.015.4.vec.insert.i.i, ptr %i.db, align 4
  %indvars.iv.next.i183 = add nsw i64 %indvars.iv.i177, 1 ; 2 uses
  %i.dq = icmp slt i64 %indvars.iv.next.i183, %i.bq
  br i1 %i.dq, label %.lr.ph.i176, label %b2IntegrateVelocitiesTask.exit, !llvm.loop !329

bb.s:                                             ; preds = %bb.a
  %trunc = trunc i64 %.sroa.12.0.extract.shift to i8
  switch i8 %trunc, label %b2IntegrateVelocitiesTask.exit [
    i8 4, label %bb.t
    i8 3, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  tail call void @b2SolveContacts_Wide(i64 %1, ptr noundef %0) #8
  br label %b2IntegrateVelocitiesTask.exit

bb.u:                                             ; preds = %bb.s
  tail call void @b2SolveJointsTask(i64 %1, ptr noundef %0, i1 noundef zeroext false, i32 noundef %2) #8
  br label %b2IntegrateVelocitiesTask.exit

bb.v:                                             ; preds = %bb.a
  tail call void @b2StoreImpulses_Wide(i64 %1, ptr noundef %0, i32 noundef %2) #8
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
  %.sroa.0105.0.copyload = load <2 x float>, ptr %i.g, align 4 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.i = load <2 x float>, ptr %i.h, align 4, !noalias !340
  %i.j = fsub <2 x float> %.sroa.0105.0.copyload, %.sroa.0105.0.copyload ; 3 uses
  %i.k = fsub <2 x float> %i.i, %.sroa.0105.0.copyload ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  %i.m = load <2 x float>, ptr %i.l, align 4, !noalias !340 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.o = load <2 x float>, ptr %i.n, align 4, !noalias !340 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.q = load <2 x float>, ptr %i.p, align 4, !noalias !340 ; 5 uses
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
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !127
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.an = load i32, ptr %i.am, align 4, !tbaa !139
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [104 x i8], ptr %i.al, i64 %i.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.aq, i8 0, i64 176, i1 false)
  store ptr %0, ptr %4, align 8, !tbaa !162
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 40
  store <2 x float> %i.q, ptr %i.ar, align 8
  %.sroa.7.0..sroa_idx251 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store <2 x float> %i.j, ptr %.sroa.7.0..sroa_idx251, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  store <2 x float> %i.k, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64
  store <2 x float> %i.m, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 72
  store <2 x float> %i.o, ptr %.sroa.16.0..sroa_idx, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 80
  store <2 x float> %.sroa.0105.0.copyload, ptr %i.as, align 8
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
  store <2 x float> %i.bs, ptr %i.bc, align 8
  %i.bt = load <2 x float>, ptr %i.bj, align 8    ; 2 uses
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = fmul <2 x float> %i.o, %i.bu            ; 2 uses
  %i.bw = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bx = fmul <2 x float> %i.ab, %i.bw           ; 2 uses
  %i.by = fsub <2 x float> %i.bv, %i.bx
  %i.bz = fadd <2 x float> %i.bv, %i.bx
  %i.ca = shufflevector <2 x float> %i.by, <2 x float> %i.bz, <2 x i32> <i32 0, i32 3>
  %i.cb = fadd <2 x float> %i.ag, %i.ca
  store <2 x float> %i.cb, ptr %i.bd, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bg, i64 64 ; 2 uses
  %.sroa.070.0.copyload = load <2 x float>, ptr %i.cc, align 8 ; 2 uses
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 72 ; 2 uses
  %.sroa.471.0.copyload = load <2 x float>, ptr %.sroa.471.0..sroa_idx, align 8 ; 2 uses
  %i.cd = call { <2 x float>, <2 x float> } @b2ComputeShapeAABB(ptr noundef %i.bg, <2 x float> %i.ag, <2 x float> %i.o) #8 ; 2 uses
  %i.ce = extractvalue { <2 x float>, <2 x float> } %i.cd, 0
  %i.cf = extractvalue { <2 x float>, <2 x float> } %i.cd, 1
  %i.cg = fadd <2 x float> %.sroa.0105.0.copyload, %i.ce ; 3 uses
  %i.ch = fadd <2 x float> %.sroa.0105.0.copyload, %i.cf ; 3 uses
  store <2 x float> %i.cg, ptr %i.cc, align 8
  store <2 x float> %i.ch, ptr %.sroa.471.0..sroa_idx, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !147
  %.not165 = icmp eq i32 %i.cj, -1
  br i1 %.not165, label %bb.c, label %bb.e, !llvm.loop !336

bb.c:                                             ; preds = %bb.b
  %i.ck = fcmp olt <2 x float> %.sroa.070.0.copyload, %i.cg
  %i.cl = select <2 x i1> %i.ck, <2 x float> %.sroa.070.0.copyload, <2 x float> %i.cg ; 3 uses
  %i.cm = fcmp ogt <2 x float> %.sroa.471.0.copyload, %i.ch
  %i.cn = select <2 x i1> %i.cm, <2 x float> %.sroa.471.0.copyload, <2 x float> %i.ch ; 3 uses
  %i.co = call i64 @b2DynamicTree_Query(ptr noundef nonnull %i.ah, <2 x float> %i.cl, <2 x float> %i.cn, i64 noundef -1, ptr noundef nonnull @b2ContinuousQueryCallback, ptr noundef nonnull %4) #8 ; 0 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cp = call i64 @b2DynamicTree_Query(ptr noundef nonnull %i.ai, <2 x float> %i.cl, <2 x float> %i.cn, i64 noundef -1, ptr noundef nonnull @b2ContinuousQueryCallback, ptr noundef nonnull %4) #8 ; 0 uses
  %i.cq = call i64 @b2DynamicTree_Query(ptr noundef nonnull %i.aj, <2 x float> %i.cl, <2 x float> %i.cn, i64 noundef -1, ptr noundef nonnull @b2ContinuousQueryCallback, ptr noundef nonnull %4) #8 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.not161 = icmp eq i32 %i.bi, -1
  br i1 %.not161, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %i.cr = call float @b2GetLengthUnitsPerMeter() #8
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
  %foldExtExtBinop293 = fmul <2 x float> %i.de, %i.de
  %5 = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %foldExtExtBinop293) ; 2 uses
  %sqrt.i = call float @llvm.sqrt.f32(float %5)
  %i.df = fcmp ogt float %5, 0.000000e+00
  %i.dg = fdiv float 1.000000e+00, %sqrt.i
  %i.dh = select i1 %i.df, float %i.dg, float 0.000000e+00
  %i.di = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.dj = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dk = fmul <2 x float> %i.de, %i.dj           ; 4 uses
  %i.dl = fmul <2 x float> %i.j, %i.dc
  %i.dm = fadd <2 x float> %i.da, %i.dl           ; 2 uses
  %i.dn = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.do = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dp = fmul <2 x float> %i.dn, %i.do           ; 2 uses
  %i.dq = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dr = fmul <2 x float> %i.q, %i.dq            ; 2 uses
  %i.ds = fsub <2 x float> %i.dr, %i.dp
  %i.dt = fadd <2 x float> %i.dr, %i.dp
  %i.du = shufflevector <2 x float> %i.ds, <2 x float> %i.dt, <2 x i32> <i32 0, i32 3>
  %i.dv = fsub <2 x float> %i.dm, %i.du
  store <2 x float> %i.dk, ptr %i.n, align 4
  %i.dw = fadd <2 x float> %.sroa.0105.0.copyload, %i.dv
  store <2 x float> %i.dw, ptr %i.f, align 4
  %i.dx = fadd <2 x float> %.sroa.0105.0.copyload, %i.dm ; 2 uses
  store <2 x float> %i.dx, ptr %i.h, align 4
  store <2 x float> %i.dk, ptr %i.l, align 4
  store <2 x float> %i.dx, ptr %i.g, align 4
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !94
  %i.ea = getelementptr inbounds [32 x i8], ptr %i.dz, i64 %i.e ; 2 uses
  %.sroa.044.0.copyload = load <2 x float>, ptr %i.ea, align 4
  %i.eb = fmul float %3, %i.cw
  %i.ec = getelementptr inbounds nuw i8, ptr %i.f, i64 84
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !159
  %i.ee = fmul float %i.ed, %i.eb
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 2452
  %i.eg = load <2 x float>, ptr %i.ef, align 4
  %i.eh = insertelement <2 x float> poison, float %i.ee, i64 0
  %i.ei = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ej = fmul <2 x float> %i.ei, %i.eg
  %i.ek = fsub <2 x float> %.sroa.044.0.copyload, %i.ej
  store <2 x float> %i.ek, ptr %i.ea, align 4
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 2224
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !96
  %i.en = getelementptr inbounds [40 x i8], ptr %i.em, i64 %i.e
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eo, ptr noundef nonnull align 4 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !154
  %.1266 = load i32, ptr %i.ay, align 8, !tbaa !98 ; 2 uses
  %.not163267 = icmp eq i32 %.1266, -1
  br i1 %.not163267, label %.loopexit, label %.lr.ph270

.lr.ph270:                                        ; preds = %bb.f
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 2144
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph270, %bb.i
  %.1268 = phi i32 [ %.1266, %.lr.ph270 ], [ %.1, %bb.i ]
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !124
  %i.er = sext i32 %.1268 to i64
  %i.es = getelementptr inbounds [296 x i8], ptr %i.eq, i64 %i.er ; 8 uses
  %i.et = load <2 x float>, ptr %i.f, align 4
  %i.eu = load <2 x float>, ptr %i.n, align 4
  %i.ev = call { <2 x float>, <2 x float> } @b2ComputeFatShapeAABB(ptr noundef %i.es, <2 x float> %i.et, <2 x float> %i.eu, float noundef %i.ct) #8 ; 2 uses
  %i.ew = extractvalue { <2 x float>, <2 x float> } %i.ev, 0 ; 3 uses
  %i.ex = extractvalue { <2 x float>, <2 x float> } %i.ev, 1 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.es, i64 64
  store <2 x float> %i.ew, ptr %i.ey, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 72
  store <2 x float> %i.ex, ptr %.sroa.7.0..sroa_idx, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.es, i64 80 ; 2 uses
  %i.fa = load <2 x float>, ptr %i.ez, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.es, i64 88
  %i.fc = load <2 x float>, ptr %i.fb, align 8
  %i.fd = shufflevector <2 x float> %i.fa, <2 x float> %i.ex, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fe = shufflevector <2 x float> %i.ew, <2 x float> %i.fc, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ff = fcmp ole <4 x float> %i.fd, %i.fe
  %i.fg = freeze <4 x i1> %i.ff
  %i.fh = bitcast <4 x i1> %i.fg to i4
  %i.fi = icmp eq i4 %i.fh, -1
  br i1 %i.fi, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fj = getelementptr inbounds nuw i8, ptr %i.es, i64 60
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !158
  %i.fl = shufflevector <2 x float> %i.ew, <2 x float> %i.ex, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.fm = insertelement <4 x float> poison, float %i.fk, i64 0
  %i.fn = shufflevector <4 x float> %i.fm, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fo = fsub <4 x float> %i.fl, %i.fn
  %i.fp = fadd <4 x float> %i.fl, %i.fn
  %i.fq = shufflevector <4 x float> %i.fo, <4 x float> %i.fp, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.fq, ptr %i.ez, align 8, !tbaa !137
  %i.fr = getelementptr inbounds nuw i8, ptr %i.es, i64 295
  store i8 1, ptr %i.fr, align 1, !tbaa !143
  %i.fs = load i32, ptr %i.av, align 4, !tbaa !144
  %i.ft = or i32 %i.fs, 256
  store i32 %i.ft, ptr %i.av, align 4, !tbaa !144
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.fu = getelementptr inbounds nuw i8, ptr %i.es, i64 12
  %.1 = load i32, ptr %i.fu, align 4, !tbaa !98   ; 2 uses
  %.not163 = icmp eq i32 %.1, -1
  br i1 %.not163, label %.loopexit, label %bb.g, !llvm.loop !337

bb.j:                                             ; preds = %._crit_edge
  %i.fv = load <2 x i64>, ptr %i.n, align 4
  store <2 x i64> %i.fv, ptr %i.l, align 4
  %.2261 = load i32, ptr %i.ay, align 8, !tbaa !98 ; 2 uses
  %.not162262 = icmp eq i32 %.2261, -1
  br i1 %.not162262, label %.loopexit, label %.lr.ph265

.lr.ph265:                                        ; preds = %bb.j
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 2144
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !124
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph265, %bb.m
  %.2263 = phi i32 [ %.2261, %.lr.ph265 ], [ %.2, %bb.m ]
  %i.fy = sext i32 %.2263 to i64
  %i.fz = getelementptr inbounds [296 x i8], ptr %i.fx, i64 %i.fy ; 7 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 80 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 64
  %i.gc = load <2 x float>, ptr %i.ga, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fz, i64 88
  %i.ge = load <2 x float>, ptr %i.gd, align 8
  %i.gf = load <2 x float>, ptr %i.gb, align 8    ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fz, i64 72
  %i.gh = load <2 x float>, ptr %i.gg, align 8    ; 2 uses
  %i.gi = shufflevector <2 x float> %i.gc, <2 x float> %i.gh, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gj = shufflevector <2 x float> %i.gf, <2 x float> %i.ge, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gk = fcmp ole <4 x float> %i.gi, %i.gj
  %i.gl = freeze <4 x i1> %i.gk
  %i.gm = bitcast <4 x i1> %i.gl to i4
  %i.gn = icmp eq i4 %i.gm, -1
  br i1 %i.gn, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.go = getelementptr inbounds nuw i8, ptr %i.fz, i64 60
  %i.gp = load float, ptr %i.go, align 4, !tbaa !158
  %i.gq = shufflevector <2 x float> %i.gf, <2 x float> %i.gh, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.gr = insertelement <4 x float> poison, float %i.gp, i64 0
  %i.gs = shufflevector <4 x float> %i.gr, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gt = fsub <4 x float> %i.gq, %i.gs
  %i.gu = fadd <4 x float> %i.gq, %i.gs
  %i.gv = shufflevector <4 x float> %i.gt, <4 x float> %i.gu, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.gv, ptr %i.ga, align 8, !tbaa !137
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fz, i64 295
  store i8 1, ptr %i.gw, align 1, !tbaa !143
  %i.gx = load i32, ptr %i.av, align 4, !tbaa !144
  %i.gy = or i32 %i.gx, 256
  store i32 %i.gy, ptr %i.av, align 4, !tbaa !144
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fz, i64 12
  %.2 = load i32, ptr %i.gz, align 4, !tbaa !98   ; 2 uses
  %.not162 = icmp eq i32 %.2, -1
  br i1 %.not162, label %.loopexit, label %bb.k, !llvm.loop !338

.loopexit:                                        ; preds = %bb.m, %bb.i, %bb.j, %bb.f
  %i.ha = getelementptr inbounds nuw i8, ptr %4, i64 188 ; 2 uses
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !166 ; 2 uses
  %i.hc = icmp sgt i32 %i.hb, 0
  br i1 %i.hc, label %.lr.ph273, label %._crit_edge274

.lr.ph273:                                        ; preds = %.loopexit
  %i.hd = getelementptr inbounds nuw i8, ptr %4, i64 156
  %i.he = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %4, i64 92
  br label %bb.n

._crit_edge274:                                   ; preds = %bb.r, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  ret void

bb.n:                                             ; preds = %.lr.ph273, %bb.r
  %i.hh = phi i32 [ %i.hb, %.lr.ph273 ], [ %i.id, %bb.r ]
  %indvars.iv = phi i64 [ 0, %.lr.ph273 ], [ %indvars.iv.next, %bb.r ] ; 3 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !137
  %i.hk = load float, ptr %i.au, align 8, !tbaa !164
  %i.hl = fcmp olt float %i.hj, %i.hk
  br i1 %i.hl, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.hm = load i32, ptr %i.he, align 8, !tbaa !116 ; 2 uses
  %i.hn = load i32, ptr %i.hf, align 4, !tbaa !341 ; 4 uses
  %.not164 = icmp slt i32 %i.hm, %i.hn
  %.pre = load ptr, ptr %2, align 8, !tbaa !146   ; 2 uses
  br i1 %.not164, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ho = shl nsw i32 %i.hn, 3
  %i.hp = icmp eq i32 %i.hn, 0
  %i.hq = shl nsw i32 %i.hn, 1
  %spec.select = select i1 %i.hp, i32 8, i32 %i.hq ; 2 uses
  %i.hr = shl nsw i32 %spec.select, 3
  %i.hs = sext i32 %i.ho to i64
  %i.ht = sext i32 %i.hr to i64
  %i.hu = call ptr @b2GrowAlloc(ptr noundef %.pre, i64 noundef %i.hs, i64 noundef %i.ht) #8 ; 2 uses
  store ptr %i.hu, ptr %2, align 8, !tbaa !146
end_hunk_1
begin_hunk_2_@b2SolveContinuous:bb.a
  %.pre278 = load i32, ptr %i.ha, align 4, !tbaa !166
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.q
  %i.id = phi i32 [ %i.hh, %bb.n ], [ %.pre278, %bb.q ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ie = sext i32 %i.id to i64
  %i.if = icmp slt i64 %indvars.iv.next, %i.ie
  br i1 %i.if, label %bb.n, label %._crit_edge274, !llvm.loop !339
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
  %i.f = load i32, ptr %i.c, align 8, !tbaa !135
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
  %i.n = load i32, ptr %i.m, align 4, !tbaa !132  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !132
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
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !127
  %i.al = sext i32 %i.n to i64
  %i.am = getelementptr inbounds [104 x i8], ptr %i.ak, i64 %i.al ; 2 uses
  %i.an = tail call ptr @b2GetBodySim(ptr noundef nonnull %i.h, ptr noundef %i.am) #8 ; 8 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 92
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !144
  %i.aq = and i32 %i.ap, 16
  %.not147 = icmp eq i32 %i.aq, 0
  br i1 %.not147, label %bb.h, label %.critedge153

bb.h:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr %i.aj, align 8, !tbaa !127
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.at = load i32, ptr %i.as, align 4, !tbaa !139
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [104 x i8], ptr %i.ar, i64 %i.au
  %i.aw = tail call zeroext i1 @b2ShouldBodiesCollide(ptr noundef nonnull %i.h, ptr noundef %i.av, ptr noundef %i.am) #8
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
  %i.bf = load i32, ptr %i.l, align 8, !tbaa !135
  %i.bg = add nsw i32 %i.bf, 1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 2736
  %i.bi = load i16, ptr %i.bh, align 8, !tbaa !120
  %i.bj = getelementptr inbounds nuw i8, ptr %i.l, i64 288
  %i.bk = load i16, ptr %i.bj, align 8, !tbaa !136
  %i.bl = load i32, ptr %i.c, align 8, !tbaa !135
  %i.bm = add nsw i32 %i.bl, 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.bo = load i16, ptr %i.bn, align 8, !tbaa !136
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
  %i.bt = tail call zeroext i1 %i.be(i64 %.sroa.040.0.insert.insert, i64 %.sroa.037.0.insert.insert, ptr noundef %i.bq) #8
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
  %9 = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.da) ; 2 uses
  %i.db = fcmp ogt float %9, f0x057A0000
  br i1 %i.db, label %bb.n, label %b2GetLengthAndNormalize.exit

bb.n:                                             ; preds = %bb.m
  %sqrt.i = tail call float @llvm.sqrt.f32(float %9) ; 2 uses
  %i.dc = fdiv nnan float 1.000000e+00, %sqrt.i
  %i.dd = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.df = fmul <2 x float> %i.cz, %i.de
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %b2GetLengthAndNormalize.exit

b2GetLengthAndNormalize.exit:                     ; preds = %bb.m, %bb.n
  %.sink.i = phi float [ %sqrt.i, %bb.n ], [ 0.000000e+00, %bb.m ]
  %.sroa.015.0.i = phi <2 x float> [ %i.dg, %bb.n ], [ zeroinitializer, %bb.m ] ; 2 uses
  %i.dh = tail call float @b2GetLengthUnitsPerMeter() #8
  %i.di = fmul float %i.dh, 5.000000e-03
  %i.dj = fcmp ogt float %.sink.i, %i.di
  br i1 %i.dj, label %bb.o, label %.critedge151

bb.o:                                             ; preds = %b2GetLengthAndNormalize.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.024.0.copyload = load <2 x float>, ptr %i.dk, align 8
  %i.dl = fsub <2 x float> %.sroa.024.0.copyload, %i.cn
  %i.dm = fmul <2 x float> %.sroa.015.0.i, %i.dl  ; 2 uses
  %shift232.a = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop233.a = fsub <2 x float> %i.dm, %shift232.a ; 2 uses
  %i.dn = extractelement <2 x float> %foldExtExtBinop233.a, i64 0
  %i.do = fcmp olt float %i.dn, 0.000000e+00
  br i1 %i.do, label %.critedge153, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dp = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !157
  %i.dr = fmul float %i.dq, 2.500000e-01          ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.020.0.copyload = load <2 x float>, ptr %i.ds, align 8
  %i.dt = fsub <2 x float> %.sroa.020.0.copyload, %i.cn
  %i.du = fmul <2 x float> %.sroa.015.0.i, %i.dt  ; 2 uses
  %shift235 = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop236 = fsub <2 x float> %i.du, %shift235 ; 2 uses
  %i.dv = extractelement <2 x float> %foldExtExtBinop236, i64 0
  %foldExtExtBinop238 = fsub <2 x float> %foldExtExtBinop233.a, %foldExtExtBinop236
  %i.dw = extractelement <2 x float> %foldExtExtBinop238, i64 0
  %i.dx = fcmp olt float %i.dw, %i.dr
  %i.dy = fcmp ogt float %i.dv, %i.dr
  %or.cond = and i1 %i.dy, %i.dx
  br i1 %or.cond, label %.critedge153, label %.critedge151

.critedge151:                                     ; preds = %b2GetLengthAndNormalize.exit, %bb.p, %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @b2MakeShapeDistanceProxy(ptr dead_on_unwind nonnull writable sret(%struct.b2ShapeProxy) align 4 %3, ptr noundef nonnull %i.l) #8
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @b2MakeShapeDistanceProxy(ptr dead_on_unwind nonnull writable sret(%struct.b2ShapeProxy) align 4 %4, ptr noundef nonnull %i.c) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %i.dz, ptr noundef nonnull align 4 dereferenceable(72) %4, i64 72, i1 false), !tbaa.struct !349
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.ec = load <2 x float>, ptr %i.eb, align 8    ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ee = load <2 x float>, ptr %i.ed, align 4, !noalias !350
  %i.ef = fsub <2 x float> %i.ee, %i.ec
  %i.eg = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.eh = load <2 x float>, ptr %i.eg, align 4, !noalias !350
  %i.ei = fsub <2 x float> %i.eh, %i.ec
  %i.ej = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ek = load i64, ptr %i.ej, align 4, !noalias !350
  %i.el = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.em = load i64, ptr %i.el, align 4, !noalias !350
  %i.en = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.eo = load i64, ptr %i.en, align 4, !noalias !350
  store i64 %i.eo, ptr %i.ea, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 152
  store <2 x float> %i.ef, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 160
  store <2 x float> %i.ei, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 168
  store i64 %i.ek, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 176
  store i64 %i.em, ptr %.sroa.7.0..sroa_idx, align 4
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.ep, ptr noundef nonnull align 8 dereferenceable(40) %i.eq, i64 40, i1 false), !tbaa.struct !351
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 5 uses
  %i.es = load float, ptr %i.er, align 8, !tbaa !164
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 224
  store float %i.es, ptr %i.et, align 4, !tbaa !354
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @b2TimeOfImpact(ptr dead_on_unwind nonnull writable sret(%struct.b2TOIOutput) align 4 %5, ptr noundef nonnull %3) #8
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
  %i.fb = load i32, ptr %i.l, align 8, !tbaa !135
  %i.fc = load i32, ptr %i.c, align 8, !tbaa !135
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.fe = sext i32 %i.ez to i64                   ; 2 uses
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %i.fe ; 2 uses
  store i32 %i.fb, ptr %i.ff, align 4, !tbaa !98
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  store i32 %i.fc, ptr %.sroa.412.0..sroa_idx, align 4, !tbaa !98
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 156
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.fg, i64 %i.fe
  store float %i.ev, ptr %i.fh, align 4, !tbaa !137
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
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.fq = call <2 x float> @b2GetShapeCentroid(ptr noundef nonnull %i.c) #8 ; 2 uses
  store <2 x float> %i.fq, ptr %6, align 8
  %i.fr = call <2 x float> @b2ComputeShapeExtent(ptr noundef nonnull %i.c, <2 x float> %i.fq) #8
  %.sroa.08.0.vec.extract = extractelement <2 x float> %i.fr, i64 0
  %i.fs = fmul float %.sroa.08.0.vec.extract, 2.500000e-01
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @b2MakeProxy(ptr dead_on_unwind nonnull writable sret(%struct.b2ShapeProxy) align 4 %7, ptr noundef nonnull %6, i32 noundef 1, float noundef %i.fs) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %i.dz, ptr noundef nonnull align 4 dereferenceable(72) %7, i64 72, i1 false), !tbaa.struct !349
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  call void @b2TimeOfImpact(ptr dead_on_unwind nonnull writable sret(%struct.b2TOIOutput) align 4 %8, ptr noundef nonnull %3) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !357
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  %i.ft = load float, ptr %i.fl, align 4, !tbaa !356 ; 3 uses
  %i.fu = fcmp ogt float %i.ft, 0.000000e+00
  br i1 %i.fu, label %bb.w, label %.thread211

bb.w:                                             ; preds = %bb.v
  %i.fv = load float, ptr %i.er, align 8, !tbaa !164
  %i.fw = fcmp olt float %i.ft, %i.fv
  br i1 %i.fw, label %bb.x, label %.thread211

.thread211:                                       ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %.thread220

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
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
  %i.gf = load i32, ptr %i.l, align 8, !tbaa !135
  %i.gg = add nsw i32 %i.gf, 1
  %i.gh = getelementptr inbounds nuw i8, ptr %i.h, i64 2736
  %i.gi = load i16, ptr %i.gh, align 8, !tbaa !120
  %i.gj = getelementptr inbounds nuw i8, ptr %i.l, i64 288
  %i.gk = load i16, ptr %i.gj, align 8, !tbaa !136
  %i.gl = load i32, ptr %i.c, align 8, !tbaa !135
  %i.gm = add nsw i32 %i.gl, 1
  %i.gn = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.go = load i16, ptr %i.gn, align 8, !tbaa !136
  %i.gp = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.gq = load <2 x float>, ptr %i.eb, align 8
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
  %i.gz = call zeroext i1 %i.ge(i64 %.sroa.05.0.insert.insert, i64 %.sroa.04.0.insert.insert, <2 x float> %i.gs, <2 x float> %i.gy, ptr noundef %i.gv) #8
  br i1 %i.gz, label %.thread215, label %.thread220

.thread215:                                       ; preds = %bb.y, %bb.z, %bb.aa
  %i.ha = getelementptr inbounds nuw i8, ptr %i.e, i64 92 ; 2 uses
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !144
  %i.hc = or i32 %i.hb, 64
  store i32 %i.hc, ptr %i.ha, align 4, !tbaa !144
  store float %.1140206, ptr %i.er, align 8, !tbaa !164
  br label %.thread220

.thread220:                                       ; preds = %bb.u, %.thread211, %bb.aa, %.thread215, %bb.q, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
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
declare i64 @llvm.cttz.i64(i64, i1 immarg) #5

declare void @b2GrowBitSet(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !99}
!1 = distinct !{!1, !99}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"p1 _ZTS12b2StackEntry", !10, i64 0}
!13 = !{!"b2DynamicArray_b2StackEntry", !12, i64 0, !7, i64 8, !7, i64 12}
!14 = !{!"b2Stack", !11, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !13, i64 24}
!15 = !{!"p1 int", !10, i64 0}
!16 = !{!"b2DynamicArray_int", !15, i64 0, !7, i64 8, !7, i64 12}
!17 = !{!"p1 _ZTS12b2MoveResult", !10, i64 0}
!18 = !{!"p1 _ZTS10b2MovePair", !10, i64 0}
!19 = !{!"b2AtomicInt", !7, i64 0}
!20 = !{!"p1 _ZTS9b2SetItem", !10, i64 0}
!21 = !{!"b2HashSet", !20, i64 0, !7, i64 8, !7, i64 12}
!22 = !{!"b2BroadPhase", !6, i64 0, !6, i64 216, !16, i64 264, !17, i64 280, !18, i64 288, !7, i64 296, !19, i64 300, !21, i64 304}
!23 = !{!"b2ConstraintGraph", !6, i64 0}
!24 = !{!"b2IdPool", !16, i64 0, !7, i64 16}
!25 = !{!"p1 _ZTS6b2Body", !10, i64 0}
!26 = !{!"b2DynamicArray_b2Body", !25, i64 0, !7, i64 8, !7, i64 12}
!27 = !{!"p1 _ZTS11b2SolverSet", !10, i64 0}
!28 = !{!"b2DynamicArray_b2SolverSet", !27, i64 0, !7, i64 8, !7, i64 12}
!29 = !{!"p1 _ZTS7b2Joint", !10, i64 0}
!30 = !{!"b2DynamicArray_b2Joint", !29, i64 0, !7, i64 8, !7, i64 12}
!31 = !{!"p1 _ZTS9b2Contact", !10, i64 0}
!32 = !{!"b2DynamicArray_b2Contact", !31, i64 0, !7, i64 8, !7, i64 12}
!33 = !{!"p1 _ZTS8b2Island", !10, i64 0}
!34 = !{!"b2DynamicArray_b2Island", !33, i64 0, !7, i64 8, !7, i64 12}
!35 = !{!"p1 _ZTS7b2Shape", !10, i64 0}
!36 = !{!"b2DynamicArray_b2Shape", !35, i64 0, !7, i64 8, !7, i64 12}
!37 = !{!"p1 _ZTS12b2ChainShape", !10, i64 0}
!38 = !{!"b2DynamicArray_b2ChainShape", !37, i64 0, !7, i64 8, !7, i64 12}
!39 = !{!"p1 _ZTS8b2Sensor", !10, i64 0}
!40 = !{!"b2DynamicArray_b2Sensor", !39, i64 0, !7, i64 8, !7, i64 12}
!41 = !{!"p1 _ZTS13b2TaskContext", !10, i64 0}
!42 = !{!"b2DynamicArray_b2TaskContext", !41, i64 0, !7, i64 8, !7, i64 12}
!43 = !{!"p1 _ZTS19b2SensorTaskContext", !10, i64 0}
!44 = !{!"b2DynamicArray_b2SensorTaskContext", !43, i64 0, !7, i64 8, !7, i64 12}
!45 = !{!"p1 _ZTS15b2BodyMoveEvent", !10, i64 0}
!46 = !{!"b2DynamicArray_b2BodyMoveEvent", !45, i64 0, !7, i64 8, !7, i64 12}
!47 = !{!"p1 _ZTS23b2SensorBeginTouchEvent", !10, i64 0}
!48 = !{!"b2DynamicArray_b2SensorBeginTouchEvent", !47, i64 0, !7, i64 8, !7, i64 12}
!49 = !{!"p1 _ZTS24b2ContactBeginTouchEvent", !10, i64 0}
!50 = !{!"b2DynamicArray_b2ContactBeginTouchEvent", !49, i64 0, !7, i64 8, !7, i64 12}
!51 = !{!"p1 _ZTS17b2ContactHitEvent", !10, i64 0}
!52 = !{!"b2DynamicArray_b2ContactHitEvent", !51, i64 0, !7, i64 8, !7, i64 12}
!53 = !{!"p1 _ZTS12b2JointEvent", !10, i64 0}
!54 = !{!"b2DynamicArray_b2JointEvent", !53, i64 0, !7, i64 8, !7, i64 12}
!55 = !{!"p1 long", !10, i64 0}
!56 = !{!"b2BitSet", !55, i64 0, !7, i64 8, !7, i64 12}
!57 = !{!"long", !6, i64 0}
!58 = !{!"float", !6, i64 0}
!59 = !{!"b2Vec2", !58, i64 0, !58, i64 4}
!60 = !{!"short", !6, i64 0}
!61 = !{!"b2Profile", !58, i64 0, !58, i64 4, !58, i64 8, !58, i64 12, !58, i64 16, !58, i64 20, !58, i64 24, !58, i64 28, !58, i64 32, !58, i64 36, !58, i64 40, !58, i64 44, !58, i64 48, !58, i64 52, !58, i64 56, !58, i64 60, !58, i64 64, !58, i64 68, !58, i64 72, !58, i64 76, !58, i64 80, !58, i64 84}
!62 = !{!"b2Capacity", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16}
!63 = !{!"p1 _ZTS11b2Scheduler", !10, i64 0}
!64 = !{!"p1 _ZTS11b2Recording", !10, i64 0}
!65 = !{!"_Bool", !6, i64 0}
!66 = !{!"b2World", !14, i64 0, !22, i64 40, !23, i64 360, !24, i64 1896, !26, i64 1920, !24, i64 1936, !28, i64 1960, !24, i64 1976, !30, i64 2000, !24, i64 2016, !32, i64 2040, !24, i64 2056, !34, i64 2080, !24, i64 2096, !24, i64 2120, !36, i64 2144, !38, i64 2160, !40, i64 2176, !42, i64 2192, !44, i64 2208, !46, i64 2224, !48, i64 2240, !50, i64 2256, !6, i64 2272, !6, i64 2304, !7, i64 2336, !52, i64 2344, !54, i64 2360, !56, i64 2376, !56, i64 2392, !56, i64 2408, !56, i64 2424, !57, i64 2440, !7, i64 2448, !59, i64 2452, !58, i64 2460, !58, i64 2464, !58, i64 2468, !58, i64 2472, !58, i64 2476, !58, i64 2480, !58, i64 2484, !10, i64 2488, !10, i64 2496, !60, i64 2504, !61, i64 2508, !62, i64 2596, !10, i64 2616, !10, i64 2624, !10, i64 2632, !10, i64 2640, !10, i64 2648, !7, i64 2656, !10, i64 2664, !10, i64 2672, !10, i64 2680, !10, i64 2688, !63, i64 2696, !10, i64 2704, !64, i64 2712, !58, i64 2720, !58, i64 2724, !7, i64 2728, !7, i64 2732, !60, i64 2736, !65, i64 2738, !65, i64 2739, !65, i64 2740, !65, i64 2741, !65, i64 2742}
!67 = !{!66, !27, i64 1960}
!68 = !{!"p1 _ZTS9b2BodySim", !10, i64 0}
!69 = !{!"b2DynamicArray_b2BodySim", !68, i64 0, !7, i64 8, !7, i64 12}
!70 = !{!"p1 _ZTS11b2BodyState", !10, i64 0}
!71 = !{!"b2DynamicArray_b2BodyState", !70, i64 0, !7, i64 8, !7, i64 12}
!72 = !{!"p1 _ZTS10b2JointSim", !10, i64 0}
!73 = !{!"b2DynamicArray_b2JointSim", !72, i64 0, !7, i64 8, !7, i64 12}
!74 = !{!"p1 _ZTS12b2ContactSim", !10, i64 0}
!75 = !{!"b2DynamicArray_b2ContactSim", !74, i64 0, !7, i64 8, !7, i64 12}
!76 = !{!"p1 _ZTS11b2IslandSim", !10, i64 0}
!77 = !{!"b2DynamicArray_b2IslandSim", !76, i64 0, !7, i64 8, !7, i64 12}
!78 = !{!"b2SolverSet", !69, i64 0, !71, i64 16, !73, i64 32, !75, i64 48, !77, i64 64, !7, i64 80}
!79 = !{!57, !57, i64 0}
!80 = !{!"b2Softness", !58, i64 0, !58, i64 4, !58, i64 8}
!81 = !{!"p1 _ZTS7b2World", !10, i64 0}
!82 = !{!"p1 _ZTS17b2ConstraintGraph", !10, i64 0}
!83 = !{!"any p2 pointer", !10, i64 0}
!84 = !{!"p2 _ZTS12b2ContactSim", !83, i64 0}
!85 = !{!"p1 _ZTS23b2ContactConstraintWide", !10, i64 0}
!86 = !{!"p1 _ZTS20b2ContactPrepareSpan", !10, i64 0}
!87 = !{!"p1 _ZTS18b2JointPrepareSpan", !10, i64 0}
!88 = !{!"p1 _ZTS13b2SolverStage", !10, i64 0}
!89 = !{!"b2AtomicU32", !7, i64 0}
!90 = !{!"b2StepContext", !58, i64 0, !58, i64 4, !58, i64 8, !58, i64 12, !7, i64 16, !80, i64 20, !80, i64 32, !58, i64 44, !58, i64 48, !81, i64 56, !82, i64 64, !70, i64 72, !68, i64 80, !15, i64 88, !7, i64 96, !15, i64 104, !19, i64 112, !84, i64 120, !85, i64 128, !86, i64 136, !7, i64 144, !87, i64 152, !7, i64 160, !7, i64 164, !7, i64 168, !88, i64 176, !7, i64 184, !65, i64 188, !6, i64 189, !89, i64 256, !6, i64 260, !19, i64 324, !6, i64 328}
!91 = !{!90, !15, i64 104}
!92 = !{!78, !68, i64 0}
!93 = !{!90, !68, i64 80}
!94 = !{!78, !70, i64 16}
!95 = !{!90, !70, i64 72}
!96 = !{!66, !45, i64 2224}
!97 = !{!6, !6, i64 0}
!98 = !{!7, !7, i64 0}
!99 = !{!"llvm.loop.mustprogress"}
!100 = !{!"p1 _ZTS11b2SyncBlock", !10, i64 0}
!101 = !{!"b2SolverStage", !100, i64 0, !7, i64 8, !7, i64 12, !6, i64 16, !19, i64 20}
!102 = !{!101, !7, i64 8}
!103 = !{!101, !100, i64 0}
!104 = !{!101, !7, i64 12}
!105 = !{!90, !7, i64 164}
!106 = !{!90, !7, i64 168}
!107 = !{!90, !88, i64 176}
!108 = !{!"p1 _ZTS13b2StepContext", !10, i64 0}
!109 = !{!"b2WorkerContext", !108, i64 0, !7, i64 8, !10, i64 16}
!110 = !{!109, !108, i64 0}
!111 = !{!66, !41, i64 2192}
!112 = !{!"p1 _ZTS11b2SensorHit", !10, i64 0}
!113 = !{!"b2DynamicArray_b2SensorHit", !112, i64 0, !7, i64 8, !7, i64 12}
!114 = !{!"b2TaskContext", !113, i64 0, !56, i64 16, !56, i64 32, !65, i64 48, !56, i64 56, !56, i64 72, !56, i64 88, !58, i64 104, !7, i64 108, !7, i64 112}
!115 = !{!109, !7, i64 8}
!116 = !{!114, !7, i64 8}
!117 = !{!114, !7, i64 108}
!118 = !{!114, !58, i64 104}
!119 = !{!56, !55, i64 0}
!120 = !{!66, !60, i64 2736}
!121 = !{!60, !60, i64 0}
!122 = !{i8 0, i8 2}
!123 = !{}
!124 = !{!66, !35, i64 2144}
!125 = !{!"b2Rot", !58, i64 0, !58, i64 4}
!126 = !{!"b2Transform", !59, i64 0, !125, i64 8}
!127 = !{!66, !25, i64 1920}
!128 = !{!"b2SurfaceMaterial", !58, i64 0, !58, i64 4, !58, i64 8, !58, i64 12, !57, i64 16, !7, i64 24}
!129 = !{!"b2AABB", !59, i64 0, !59, i64 8}
!130 = !{!"b2Filter", !57, i64 0, !57, i64 8, !7, i64 16}
!131 = !{!"b2Shape", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !128, i64 24, !58, i64 56, !58, i64 60, !129, i64 64, !129, i64 80, !59, i64 96, !7, i64 104, !130, i64 112, !10, i64 136, !6, i64 144, !60, i64 288, !65, i64 290, !65, i64 291, !65, i64 292, !65, i64 293, !65, i64 294, !65, i64 295}
!132 = !{!131, !7, i64 4}
!133 = !{!"b2Body", !10, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !58, i64 52, !58, i64 56, !58, i64 60, !58, i64 64, !58, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !60, i64 88, !6, i64 90}
!134 = !{!133, !7, i64 84}
!135 = !{!131, !7, i64 0}
!136 = !{!131, !60, i64 288}
!137 = !{!58, !58, i64 0}
!138 = !{!"b2BodySim", !126, i64 0, !59, i64 16, !125, i64 24, !59, i64 32, !59, i64 40, !59, i64 48, !58, i64 56, !58, i64 60, !58, i64 64, !58, i64 68, !58, i64 72, !58, i64 76, !58, i64 80, !58, i64 84, !7, i64 88, !7, i64 92}
!139 = !{!138, !7, i64 88}
!140 = !{!133, !7, i64 24}
!141 = !{!133, !7, i64 80}
!142 = !{!131, !7, i64 12}
!143 = !{!131, !65, i64 295}
!144 = !{!138, !7, i64 92}
!145 = !{!66, !65, i64 2738}
!146 = !{!114, !112, i64 0}
!147 = !{!131, !7, i64 16}
!148 = !{!90, !81, i64 56}
!149 = !{i64 778}
!150 = !{!90, !58, i64 0}
!151 = !{!90, !58, i64 4}
!152 = !{!"b2BodyState", !59, i64 0, !58, i64 8, !7, i64 12, !59, i64 16, !125, i64 24}
!153 = !{!152, !58, i64 8}
!154 = !{i64 0, i64 4, !137, i64 4, i64 4, !137, i64 8, i64 4, !137, i64 12, i64 4, !137}
!155 = !{!138, !58, i64 56}
!156 = !{!152, !7, i64 12}
!157 = !{!138, !58, i64 68}
!158 = !{!131, !58, i64 60}
!159 = !{!138, !58, i64 84}
!160 = !{!"b2Sweep", !59, i64 0, !59, i64 8, !59, i64 16, !125, i64 24, !125, i64 32}
!161 = !{!"b2ContinuousContext", !81, i64 0, !68, i64 8, !35, i64 16, !59, i64 24, !59, i64 32, !160, i64 40, !59, i64 80, !58, i64 88, !6, i64 92, !6, i64 156, !7, i64 188}
!162 = !{!161, !81, i64 0}
!163 = !{!161, !68, i64 8}
!164 = !{!161, !58, i64 88}
!165 = !{!161, !35, i64 16}
!166 = !{!161, !7, i64 188}
!167 = distinct !{!167, !99}
!168 = distinct !{!168, !99}
!169 = distinct !{!169, !99}
!170 = distinct !{!170, !99}
!171 = distinct !{!171, !99}
!172 = distinct !{!172, !99}
!173 = distinct !{!173, !99}
!174 = distinct !{!174, !99}
!175 = distinct !{!175, !99}
!176 = distinct !{!176, !99}
!177 = distinct !{!177, !99}
!178 = distinct !{!178, !99}
!179 = distinct !{!179, !99}
!180 = distinct !{!180, !99}
!181 = distinct !{!181, !99}
!182 = distinct !{!182, !99}
!183 = distinct !{!183, !99}
end_hunk_2
