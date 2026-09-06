Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_denoiseprofile?download=true
inline.NumInlined: 157
inline.NumDeleted: 53
loop-unroll.NumCompletelyUnrolled: 79
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 84
begin_hunk_0_@process:bb.a

bb.h:                                             ; preds = %bb.g
  %i.cd = call i32 @llvm.smin.i32(i32 %i.at, i32 4)
  %i.ce = sitofp reassoc nsz arcp contract afn i32 %i.cd to float ; 2 uses
  %i.cf = sitofp reassoc nsz arcp contract afn i32 %i.at to float
  %i.cg = fmul reassoc nsz arcp contract afn float %i.am, %i.cf ; 2 uses
  %i.ch = fcmp reassoc nsz arcp contract afn olt float %i.cg, %i.ce
  %..i.i = select reassoc nsz arcp contract afn i1 %i.ch, float %i.ce, float %i.cg
  %i.ci = fptosi float %..i.i to i32              ; 6 uses
  %i.cj = sub nsw i32 %i.bj, %i.ci
  %i.ck = sitofp reassoc nsz arcp contract afn i32 %i.cj to double
  %i.cl = fmul reassoc nnan nsz arcp contract afn double %i.ck, 6.000000e+00
  %i.cm = mul nsw i32 %i.ci, %i.ci
  %i.cn = mul nsw i32 %i.cm, %i.ci
  %i.co = sitofp reassoc nsz arcp contract afn i32 %i.cn to double
  %i.cp = sitofp reassoc nsz arcp contract afn i32 %i.ci to double ; 2 uses
  %i.cq = fmul reassoc nnan nsz arcp contract afn double %i.cp, 7.000000e+00
  %i.cr = call reassoc ninf nsz arcp contract afn double @llvm.sqrt.f64(double %i.cp)
  %i.cs = fmul reassoc nsz arcp contract afn double %i.cq, %i.cr
  %i.ct = fadd reassoc nsz arcp contract afn double %i.cs, %i.co
  %i.cu = fdiv reassoc nsz arcp contract afn double %i.cl, %i.ct
  %i.cv = fptrunc reassoc nsz arcp contract afn double %i.cu to float
  br label %nlmeans_scattering.exit.i

nlmeans_scattering.exit.i:                        ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.039.i.i = phi i32 [ %i.bl, %bb.e ], [ %i.at, %bb.g ], [ %i.ci, %bb.h ], [ %i.at, %bb.f ]
  %.0.i.i = phi nsz float [ %i.by, %bb.e ], [ %.val.i, %bb.g ], [ %i.cv, %bb.h ], [ %.val.i, %bb.f ]
  %i.cw = getelementptr i8, ptr %i.w, i64 288
  %.val41.i = load i32, ptr %i.cw, align 8, !tbaa !303
  %i.cx = shl nsw i32 %i.aq, 1
  %i.cy = or disjoint i32 %i.cx, 1                ; 3 uses
  %i.cz = mul nsw i32 %i.cy, %i.cy
  %i.da = uitofp nneg i32 %i.cz to float
  %i.db = fdiv reassoc nsz arcp contract afn float 4.500000e-02, %i.da
  %.not.i.i = icmp eq i32 %.val41.i, 0            ; 2 uses
  %i.dc = sitofp reassoc nsz arcp contract afn i32 %i.cy to float
  %i.dd = fdiv reassoc nsz arcp contract afn float 1.500000e-02, %i.dc
  %.0.i43.i = select nsz i1 %.not.i.i, float %i.dd, float %i.db
  %i.de = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.df = load float, ptr %i.de, align 8, !tbaa !133
  %i.dg = fmul reassoc nsz arcp contract afn float %i.df, %i.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #18
  %i.dh = load ptr, ptr %i.p, align 8, !tbaa !304 ; 13 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.val40.i, i64 256
  %i.dj = load <2 x float>, ptr %i.di, align 16, !tbaa !12 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.val40.i, i64 264
  %i.dl = load float, ptr %i.dk, align 8, !tbaa !12 ; 2 uses
  %i.dm = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v2f32(float %i.dl, <2 x float> %i.dj)
  %i.dn = fmul reassoc nsz arcp contract afn float %i.dm, f0x3EAAAAAB ; 6 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.dp = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  br i1 %.not.i.i, label %.preheader.i.i.i, label %bb.i

.preheader.i.i.i:                                 ; preds = %nlmeans_scattering.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.val40.i, i64 272
  %i.dr = load <2 x float>, ptr %i.dq, align 16, !tbaa !12
  %i.ds = getelementptr inbounds nuw i8, ptr %.val40.i, i64 280
  %i.dt = getelementptr inbounds nuw i8, ptr %.val40.i, i64 284
  %i.du = load float, ptr %i.dt, align 4, !tbaa !12
  %i.dv = load float, ptr %i.ds, align 8, !tbaa !12
  %i.dw = fmul reassoc nsz arcp contract afn float %i.du, 0.000000e+00
  br label %compute_wb_factors.exit.i.i

bb.i:                                             ; preds = %nlmeans_scattering.exit.i
  %i.dx = fcmp reassoc nsz arcp contract afn une float %i.dn, 0.000000e+00
  br i1 %i.dx, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.w, i64 284
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !305
  %.not31.i.i.i = icmp eq i32 %i.dz, 0
  br i1 %.not31.i.i.i, label %bb.k, label %compute_wb_factors.exit.i.i

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ea = fcmp reassoc nsz arcp contract afn oeq float %i.dn, 0.000000e+00
  %i.eb = insertelement <2 x float> poison, float %i.dn, i64 0
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> zeroinitializer
  br i1 %i.ea, label %.preheader1.preheader.i.i.i, label %compute_wb_factors.exit.i.i

.preheader1.preheader.i.i.i:                      ; preds = %bb.k
  br label %compute_wb_factors.exit.i.i

compute_wb_factors.exit.i.i:                      ; preds = %.preheader1.preheader.i.i.i, %bb.k, %bb.j, %.preheader.i.i.i
  %i.ed = phi float [ %i.dw, %.preheader.i.i.i ], [ 1.000000e+00, %.preheader1.preheader.i.i.i ], [ %i.dn, %bb.k ], [ %i.dn, %bb.j ]
  %i.ee = phi float [ %i.dv, %.preheader.i.i.i ], [ 1.000000e+00, %.preheader1.preheader.i.i.i ], [ %i.dn, %bb.k ], [ %i.dl, %bb.j ] ; 2 uses
  %i.ef = phi <2 x float> [ %i.dr, %.preheader.i.i.i ], [ splat (float 1.000000e+00), %.preheader1.preheader.i.i.i ], [ %i.ec, %bb.k ], [ %i.dj, %bb.j ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !306 ; 3 uses
  %i.ei = insertelement <2 x float> poison, float %i.am, i64 0
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ek = fdiv reassoc nsz arcp contract afn <2 x float> %i.ej, %i.ef
  %i.el = fdiv reassoc nsz arcp contract afn float %i.am, %i.ee
  %i.em = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.el)
  %i.en = fmul reassoc nsz arcp contract afn float %i.em, 1.000000e-01
  %i.eo = fadd reassoc nsz arcp contract afn float %i.en, %i.eh ; 2 uses
  %i.ep = fcmp reassoc nsz arcp contract afn ogt float %i.eo, 0.000000e+00
  %i.eq = select reassoc nsz arcp contract afn i1 %i.ep, float %i.eo, float 0.000000e+00 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.w, i64 36 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.w, i64 48 ; 2 uses
  %i.eu = load float, ptr %i.er, align 8, !tbaa !307
  %i.ev = fmul reassoc nsz arcp contract afn float %i.eu, %i.am ; 3 uses
  %i.ew = load float, ptr %i.es, align 4, !tbaa !12 ; 2 uses
  %i.ex = load float, ptr %i.et, align 8, !tbaa !12 ; 3 uses
  %i.ey = call reassoc nsz arcp contract afn <2 x float> @llvm.log.v2f32(<2 x float> %i.ek)
  %i.ez = fmul reassoc nsz arcp contract afn <2 x float> %i.ey, splat (float 1.000000e-01)
  %i.fa = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.fb = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fc = fadd reassoc nsz arcp contract afn <2 x float> %i.ez, %i.fb ; 2 uses
  %i.fd = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.fc, zeroinitializer
  %i.fe = select <2 x i1> %i.fd, <2 x float> %i.fc, <2 x float> zeroinitializer ; 2 uses
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fg = insertelement <4 x float> %i.ff, float 0.000000e+00, i64 3
  %i.fh = insertelement <4 x float> %i.fg, float %i.eq, i64 2 ; 2 uses
  store <4 x float> %i.fh, ptr %i.r, align 16, !tbaa !12
  %i.fi = insertelement <2 x float> poison, float %i.ev, i64 0
  %i.fj = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fk = fmul reassoc nsz arcp contract afn <2 x float> %i.fj, %i.ef ; 5 uses
  store <2 x float> %i.fk, ptr %i.q, align 16, !tbaa !12
  %i.fl = fmul reassoc nsz arcp contract afn float %i.ev, %i.ee ; 4 uses
  %i.fm = fmul reassoc nsz arcp contract afn float %i.ev, %i.ed ; 3 uses
  store float %i.fl, ptr %i.dp, align 8, !tbaa !12
  store float %i.fm, ptr %i.do, align 4, !tbaa !12
  %i.fn = insertelement <4 x float> poison, float %i.ew, i64 0
  %i.fo = shufflevector <4 x float> %i.fn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fp = shufflevector <2 x float> %i.fk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fq = insertelement <4 x float> %i.fp, float %i.fl, i64 2
  %i.fr = insertelement <4 x float> %i.fq, float %i.fm, i64 3 ; 2 uses
  %i.fs = fmul reassoc nsz arcp contract afn <4 x float> %i.fo, %i.fr ; 11 uses
  store <4 x float> %i.fs, ptr %i.s, align 16, !tbaa !12
  %i.ft = insertelement <4 x float> poison, float %i.ex, i64 0
  %i.fu = shufflevector <4 x float> %i.ft, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fv = fmul reassoc nsz arcp contract afn <4 x float> %i.fu, %i.fr ; 3 uses
  store <4 x float> %i.fv, ptr %i.t, align 16, !tbaa !12
  %i.fw = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.eh
  %i.fx = call reassoc nsz arcp contract afn float @llvm.pow.f32(float 5.000000e-02, float %i.fw) ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.w, i64 292 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !134
  %.not.i44.i = icmp eq i32 %i.fz, 0
  %i.ga = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !308 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !309 ; 2 uses
  br i1 %.not.i44.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %compute_wb_factors.exit.i.i
  %i.ge = fmul reassoc nsz arcp contract afn float %i.ex, %i.fl
  %i.gf = extractelement <4 x float> %i.fs, i64 0
  %foldExtExtBinop263 = fdiv reassoc nsz arcp contract afn <4 x float> %i.fv, %i.fs ; 2 uses
  %foldExtExtBinop265 = fmul reassoc nsz arcp contract afn <4 x float> %foldExtExtBinop263, %foldExtExtBinop263
  %i.gg = extractelement <4 x float> %foldExtExtBinop265, i64 0
  %i.gh = fadd reassoc nsz arcp contract afn float %i.gg, 3.750000e-01 ; 2 uses
  %i.gi = extractelement <4 x float> %i.fs, i64 1
  %foldExtExtBinop267 = fdiv reassoc nsz arcp contract afn <4 x float> %i.fv, %i.fs ; 2 uses
  %foldExtExtBinop269 = fmul reassoc nsz arcp contract afn <4 x float> %foldExtExtBinop267, %foldExtExtBinop267
  %i.gj = extractelement <4 x float> %foldExtExtBinop269, i64 1
  %i.gk = fadd reassoc nsz arcp contract afn float %i.gj, 3.750000e-01 ; 2 uses
  %i.gl = extractelement <4 x float> %i.fs, i64 2 ; 2 uses
  %i.gm = fdiv reassoc nsz arcp contract afn float %i.ge, %i.gl ; 2 uses
  %i.gn = fmul reassoc nsz arcp contract afn float %i.gm, %i.gm
  %i.go = fadd reassoc nsz arcp contract afn float %i.gn, 3.750000e-01 ; 2 uses
  %i.gp = sext i32 %i.gb to i64
  %i.gq = sext i32 %i.gd to i64
  %i.gr = shl nsw i64 %i.gp, 2
  %i.gs = mul i64 %i.gr, %i.gq                    ; 4 uses
  %.not.i61.i.i = icmp eq i64 %i.gs, 0
  br i1 %.not.i61.i.i, label %nlmeans_precondition.exit.i, label %.preheader.i62.i.i.preheader

.preheader.i62.i.i.preheader:                     ; preds = %bb.l
  %i.gt = add i64 %i.gs, -4                       ; 2 uses
  %i.gu = lshr exact i64 %i.gt, 2
  %i.gv = add nuw nsw i64 %i.gu, 1                ; 2 uses
  %min.iters.check233 = icmp ult i64 %i.gt, 28
  br i1 %min.iters.check233, label %.preheader.i62.i.i.preheader287, label %vector.memcheck226

vector.memcheck226:                               ; preds = %.preheader.i62.i.i.preheader
  %i.gw = shl i64 %i.gs, 2                        ; 2 uses
  %scevgep227 = getelementptr i8, ptr %i.dh, i64 %i.gw
  %scevgep228 = getelementptr i8, ptr %2, i64 %i.gw
  %bound0229 = icmp ult ptr %i.dh, %scevgep228
  %bound1230 = icmp ult ptr %2, %scevgep227
  %found.conflict231 = and i1 %bound0229, %bound1230
  br i1 %found.conflict231, label %.preheader.i62.i.i.preheader287, label %vector.ph234

vector.ph234:                                     ; preds = %vector.memcheck226
  %n.vec235 = and i64 %i.gv, 9223372036854775800  ; 3 uses
  %i.gx = shl i64 %n.vec235, 2
  %broadcast.splat237 = shufflevector <4 x float> %i.fs, <4 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert238 = insertelement <8 x float> poison, float %i.gh, i64 0
  %broadcast.splat241 = shufflevector <4 x float> %i.fs, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert242 = insertelement <8 x float> poison, float %i.gk, i64 0
  %broadcast.splat245 = shufflevector <4 x float> %i.fs, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splatinsert246 = insertelement <8 x float> poison, float %i.go, i64 0
  %broadcast.splat247 = shufflevector <8 x float> %broadcast.splatinsert246, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat249 = shufflevector <4 x float> %i.fs, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.gy = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat237
  %i.gz = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat241
  %7 = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat245
  %i.ha = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat249
  %8 = shufflevector <8 x float> %broadcast.splatinsert238, <8 x float> %broadcast.splatinsert242, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  br label %vector.body250

vector.body250:                                   ; preds = %vector.body250, %vector.ph234
  %index251 = phi i64 [ 0, %vector.ph234 ], [ %index.next258, %vector.body250 ] ; 2 uses
  %i.hb = shl nuw i64 %index251, 2                ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hb
  %wide.vec252 = load <32 x float>, ptr %i.hc, align 4, !tbaa !12, !alias.scope !310 ; 4 uses
  %strided.vec253 = shufflevector <32 x float> %wide.vec252, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec254 = shufflevector <32 x float> %wide.vec252, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec255 = shufflevector <32 x float> %wide.vec252, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec256 = shufflevector <32 x float> %wide.vec252, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.hd = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec253, %i.gy
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.hb
  %i.hf = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec254, %i.gz
  %9 = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec255, %7
  %10 = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat247, %9
  %i.hg = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec256, %i.ha
  %11 = shufflevector <8 x float> %i.hd, <8 x float> %i.hf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %12 = fadd reassoc nsz arcp contract afn <16 x float> %8, %11
  %i.hh = shufflevector <8 x float> %10, <8 x float> %i.hg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hi = shufflevector <16 x float> %12, <16 x float> %i.hh, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  %i.hj = call reassoc nsz arcp contract afn <32 x float> @llvm.maxnum.v32f32(<32 x float> %i.hi, <32 x float> zeroinitializer)
  %i.hk = call reassoc nnan nsz arcp contract afn <32 x float> @llvm.sqrt.v32f32(<32 x float> %i.hj)
  %interleaved.vec257 = fmul reassoc nnan nsz arcp contract afn <32 x float> %i.hk, splat (float 2.000000e+00)
  store <32 x float> %interleaved.vec257, ptr %i.he, align 4, !tbaa !12, !alias.scope !311, !noalias !310
  %index.next258 = add nuw i64 %index251, 8       ; 2 uses
  %i.hl = icmp eq i64 %index.next258, %n.vec235
  br i1 %i.hl, label %middle.block259, label %vector.body250, !llvm.loop !260

middle.block259:                                  ; preds = %vector.body250
  %cmp.n260 = icmp eq i64 %i.gv, %n.vec235
  br i1 %cmp.n260, label %nlmeans_precondition.exit.i, label %.preheader.i62.i.i.preheader287

.preheader.i62.i.i.preheader287:                  ; preds = %vector.memcheck226, %.preheader.i62.i.i.preheader, %middle.block259
  %.02830.i.i.i.ph = phi i64 [ 0, %vector.memcheck226 ], [ 0, %.preheader.i62.i.i.preheader ], [ %i.gx, %middle.block259 ]
  %i.hm = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.gf
  %i.hn = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.gi
  %i.ho = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.gl
  %i.hp = extractelement <4 x float> %i.fs, i64 3
  %i.hq = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.hp
  br label %.preheader.i62.i.i

.preheader.i62.i.i:                               ; preds = %.preheader.i62.i.i.preheader287, %.preheader.i62.i.i
  %.02830.i.i.i = phi i64 [ %i.iz, %.preheader.i62.i.i ], [ %.02830.i.i.i.ph, %.preheader.i62.i.i.preheader287 ] ; 6 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02830.i.i.i
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !12
  %i.ht = fmul reassoc nsz arcp contract afn float %i.hs, %i.hm
  %i.hu = fadd reassoc nsz arcp contract afn float %i.gh, %i.ht
  %i.hv = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.hu, float 0.000000e+00)
  %i.hw = call reassoc nnan nsz arcp contract afn float @llvm.sqrt.f32(float %i.hv)
  %i.hx = fmul reassoc nnan nsz arcp contract afn float %i.hw, 2.000000e+00
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %.02830.i.i.i
  store float %i.hx, ptr %i.hy, align 4, !tbaa !12
  %i.hz = or disjoint i64 %.02830.i.i.i, 1        ; 2 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hz
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !12
  %i.ic = fmul reassoc nsz arcp contract afn float %i.ib, %i.hn
  %i.id = fadd reassoc nsz arcp contract afn float %i.gk, %i.ic
  %i.ie = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.id, float 0.000000e+00)
  %i.if = call reassoc nnan nsz arcp contract afn float @llvm.sqrt.f32(float %i.ie)
  %i.ig = fmul reassoc nnan nsz arcp contract afn float %i.if, 2.000000e+00
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.hz
  store float %i.ig, ptr %i.ih, align 4, !tbaa !12
  %i.ii = or disjoint i64 %.02830.i.i.i, 2        ; 2 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ii
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !12
  %i.il = fmul reassoc nsz arcp contract afn float %i.ik, %i.ho
  %i.im = fadd reassoc nsz arcp contract afn float %i.go, %i.il
  %i.in = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.im, float 0.000000e+00)
  %i.io = call reassoc nnan nsz arcp contract afn float @llvm.sqrt.f32(float %i.in)
  %i.ip = fmul reassoc nnan nsz arcp contract afn float %i.io, 2.000000e+00
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.ii
  store float %i.ip, ptr %i.iq, align 4, !tbaa !12
  %i.ir = or disjoint i64 %.02830.i.i.i, 3        ; 2 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ir
  %i.it = load float, ptr %i.is, align 4, !tbaa !12
  %i.iu = fmul reassoc nsz arcp contract afn float %i.it, %i.hq
  %i.iv = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.iu, float 0.000000e+00)
  %i.iw = call reassoc nnan nsz arcp contract afn float @llvm.sqrt.f32(float %i.iv)
  %i.ix = fmul reassoc nnan nsz arcp contract afn float %i.iw, 2.000000e+00
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.ir
  store float %i.ix, ptr %i.iy, align 4, !tbaa !12
  %i.iz = add nuw i64 %.02830.i.i.i, 4            ; 2 uses
  %i.ja = icmp ult i64 %i.iz, %i.gs
  br i1 %i.ja, label %.preheader.i62.i.i, label %nlmeans_precondition.exit.i, !llvm.loop !261

bb.m:                                             ; preds = %compute_wb_factors.exit.i.i
  %i.jb = sext i32 %i.gb to i64
  %i.jc = sext i32 %i.gd to i64
  %i.jd = fmul reassoc nsz arcp contract afn <2 x float> %i.fe, splat (float 5.000000e-01)
  %i.je = fsub reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.jd ; 3 uses
  %i.jf = fmul reassoc nsz arcp contract afn float %i.eq, 5.000000e-01
  %i.jg = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.jf ; 3 uses
  %i.jh = shl nsw i64 %i.jb, 2
  %i.ji = mul i64 %i.jh, %i.jc                    ; 2 uses
  %.not.i63.i.i = icmp eq i64 %i.ji, 0
  br i1 %.not.i63.i.i, label %precondition_v2.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.m
  %i.jj = fmul reassoc nsz arcp contract afn float %i.ew, %i.fx
  %i.jk = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.jj)
  %i.jl = fsub reassoc nsz arcp contract afn <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 1.000000e+00>, %i.fh
  %i.jm = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.jk, i64 0
  %i.jn = shufflevector <4 x float> %i.jm, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.jo = fmul reassoc nsz arcp contract afn <4 x float> %i.jn, %i.jl ; 3 uses
  %i.jp = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.jq = shufflevector <2 x float> %i.jp, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.jr = insertelement <2 x float> poison, float %i.fl, i64 0
  %i.js = insertelement <2 x float> %i.jr, float %i.fm, i64 1 ; 3 uses
  %i.jt = add i64 %i.ji, -4                       ; 3 uses
  %i.ju = lshr exact i64 %i.jt, 2
  %i.jv = add nuw nsw i64 %i.ju, 1                ; 2 uses
  %i.jw = icmp eq i64 %i.jt, 0
  br i1 %i.jw, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.new

.lr.ph.preheader.i.i.i.new:                       ; preds = %.lr.ph.preheader.i.i.i
  %unroll_iter297 = and i64 %i.jv, 9223372036854775806
  %i.jx = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.js
  %i.jy = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.fk
  %i.jz = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.jo
  %i.ka = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.js
  %i.kb = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.fk
  %i.kc = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.jo
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i.new
  %.04247.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %i.ly, %.lr.ph.i.i.i ] ; 4 uses
  %niter298 = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %niter298.next.1, %.lr.ph.i.i.i ]
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.04247.i.i.i ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load <2 x float>, ptr %i.ke, align 4, !tbaa !12
  %i.kg = fmul reassoc nsz arcp contract afn <2 x float> %i.kf, %i.jx
  %i.kh = fadd reassoc nsz arcp contract afn <2 x float> %i.kg, %i.jq ; 2 uses
  %i.ki = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.kh, zeroinitializer
  %i.kj = select <2 x i1> %i.ki, <2 x float> %i.kh, <2 x float> zeroinitializer ; 2 uses
  %i.kk = extractelement <2 x float> %i.kj, i64 0
  %i.kl = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.kk, float %i.jg)
  %i.km = load <2 x float>, ptr %i.kd, align 4, !tbaa !12
  %i.kn = fmul reassoc nsz arcp contract afn <2 x float> %i.km, %i.jy
  %i.ko = fadd reassoc nsz arcp contract afn <2 x float> %i.kn, %i.jq ; 2 uses
  %i.kp = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ko, zeroinitializer
  %i.kq = select <2 x i1> %i.kp, <2 x float> %i.ko, <2 x float> zeroinitializer
  %i.kr = call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.kq, <2 x float> %i.je)
  %i.ks = insertelement <4 x float> poison, float %i.kl, i64 2
  %i.kt = shufflevector <2 x float> %i.kj, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ku = shufflevector <4 x float> %i.ks, <4 x float> %i.kt, <4 x i32> <i32 poison, i32 poison, i32 2, i32 5>
  %i.kv = shufflevector <2 x float> %i.kr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.kw = shufflevector <4 x float> %i.kv, <4 x float> %i.ku, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.kx = fmul reassoc nsz arcp contract afn <4 x float> %i.kw, splat (float 2.000000e+00)
  %i.ky = fmul reassoc nsz arcp contract afn <4 x float> %i.kx, %i.jz
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %.04247.i.i.i
  store <4 x float> %i.ky, ptr %i.kz, align 16, !tbaa !34, !alias.scope !312, !nontemporal !313
  %i.la = or disjoint i64 %.04247.i.i.i, 4        ; 2 uses
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.la ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %i.ld = load <2 x float>, ptr %i.lc, align 4, !tbaa !12
  %i.le = fmul reassoc nsz arcp contract afn <2 x float> %i.ld, %i.ka
  %i.lf = fadd reassoc nsz arcp contract afn <2 x float> %i.le, %i.jq ; 2 uses
  %i.lg = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.lf, zeroinitializer
  %i.lh = select <2 x i1> %i.lg, <2 x float> %i.lf, <2 x float> zeroinitializer ; 2 uses
  %i.li = extractelement <2 x float> %i.lh, i64 0
  %i.lj = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.li, float %i.jg)
  %i.lk = load <2 x float>, ptr %i.lb, align 4, !tbaa !12
  %i.ll = fmul reassoc nsz arcp contract afn <2 x float> %i.lk, %i.kb
  %i.lm = fadd reassoc nsz arcp contract afn <2 x float> %i.ll, %i.jq ; 2 uses
  %i.ln = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.lm, zeroinitializer
  %i.lo = select <2 x i1> %i.ln, <2 x float> %i.lm, <2 x float> zeroinitializer
  %i.lp = call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.lo, <2 x float> %i.je)
  %i.lq = insertelement <4 x float> poison, float %i.lj, i64 2
  %i.lr = shufflevector <2 x float> %i.lh, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ls = shufflevector <4 x float> %i.lq, <4 x float> %i.lr, <4 x i32> <i32 poison, i32 poison, i32 2, i32 5>
  %i.lt = shufflevector <2 x float> %i.lp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.lu = shufflevector <4 x float> %i.lt, <4 x float> %i.ls, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.lv = fmul reassoc nsz arcp contract afn <4 x float> %i.lu, splat (float 2.000000e+00)
  %i.lw = fmul reassoc nsz arcp contract afn <4 x float> %i.lv, %i.kc
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.la
  store <4 x float> %i.lw, ptr %i.lx, align 16, !tbaa !34, !alias.scope !312, !nontemporal !313
  %i.ly = add nuw i64 %.04247.i.i.i, 8            ; 2 uses
  %niter298.next.1 = add i64 %niter298, 2         ; 2 uses
  %niter298.ncmp.1.not = icmp eq i64 %niter298.next.1, %unroll_iter297
  br i1 %niter298.ncmp.1.not, label %precondition_v2.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

precondition_v2.exit.i.i.loopexit.unr-lcssa:      ; preds = %.lr.ph.i.i.i
  %i.lz = and i64 %i.jt, 4
  %lcmp.mod295.not.not = icmp eq i64 %i.lz, 0
  br i1 %lcmp.mod295.not.not, label %.lr.ph.i.i.i.epil.preheader, label %precondition_v2.exit.i.i

.lr.ph.i.i.i.epil.preheader:                      ; preds = %precondition_v2.exit.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i
  %.04247.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %i.ly, %precondition_v2.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod296 = trunc i64 %i.jv to i1
  call void @llvm.assume(i1 %lcmp.mod296)
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.04247.i.i.i.epil.init ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.mc = load <2 x float>, ptr %i.mb, align 4, !tbaa !12
  %i.md = fdiv reassoc nsz arcp contract afn <2 x float> %i.mc, %i.js
  %i.me = fadd reassoc nsz arcp contract afn <2 x float> %i.md, %i.jq ; 2 uses
  %i.mf = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.me, zeroinitializer
  %i.mg = select <2 x i1> %i.mf, <2 x float> %i.me, <2 x float> zeroinitializer ; 2 uses
  %i.mh = extractelement <2 x float> %i.mg, i64 0
  %i.mi = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.mh, float %i.jg)
  %i.mj = load <2 x float>, ptr %i.ma, align 4, !tbaa !12
  %i.mk = fdiv reassoc nsz arcp contract afn <2 x float> %i.mj, %i.fk
  %i.ml = fadd reassoc nsz arcp contract afn <2 x float> %i.mk, %i.jq ; 2 uses
  %i.mm = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ml, zeroinitializer
  %i.mn = select <2 x i1> %i.mm, <2 x float> %i.ml, <2 x float> zeroinitializer
  %i.mo = call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.mn, <2 x float> %i.je)
  %i.mp = insertelement <4 x float> poison, float %i.mi, i64 2
  %i.mq = shufflevector <2 x float> %i.mg, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.mr = shufflevector <4 x float> %i.mp, <4 x float> %i.mq, <4 x i32> <i32 poison, i32 poison, i32 2, i32 5>
  %i.ms = shufflevector <2 x float> %i.mo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mt = shufflevector <4 x float> %i.ms, <4 x float> %i.mr, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.mu = fmul reassoc nsz arcp contract afn <4 x float> %i.mt, splat (float 2.000000e+00)
  %i.mv = fdiv reassoc nsz arcp contract afn <4 x float> %i.mu, %i.jo
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %.04247.i.i.i.epil.init
  store <4 x float> %i.mv, ptr %i.mw, align 16, !tbaa !34, !alias.scope !312, !nontemporal !313
  br label %precondition_v2.exit.i.i

precondition_v2.exit.i.i:                         ; preds = %.lr.ph.i.i.i.epil.preheader, %precondition_v2.exit.i.i.loopexit.unr-lcssa, %bb.m
  call void @llvm.x86.sse.sfence()
  %.pre.i = load ptr, ptr %i.p, align 8, !tbaa !304
  br label %nlmeans_precondition.exit.i
end_hunk_0
begin_hunk_1_@process:bb.a
  %i.ua = fdiv reassoc nsz arcp contract afn <2 x float> <float -5.000000e-01, float 5.000000e-01>, %i.tv ; 7 uses
  %i.ub = extractelement <2 x float> %i.tz, i64 0 ; 3 uses
  %shift273 = shufflevector <2 x float> %i.tz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop274 = fmul reassoc nsz arcp contract afn <2 x float> %i.tz, %shift273 ; 2 uses
  %i.uc = extractelement <2 x float> %foldExtExtBinop274, i64 0
  %i.ud = extractelement <2 x float> %i.ua, i64 0 ; 3 uses
  %i.ue = extractelement <2 x float> %i.ty, i64 0 ; 2 uses
  %foldExtExtBinop276 = fmul reassoc nsz arcp contract afn <2 x float> %i.ua, %i.ty
  %foldExtExtBinop278 = fsub reassoc nsz arcp contract afn <2 x float> %foldExtExtBinop274, %foldExtExtBinop276
  %i.uf = extractelement <2 x float> %foldExtExtBinop278, i64 0 ; 4 uses
  %i.ug = extractelement <2 x float> %i.ua, i64 1 ; 2 uses
  %i.uh = fsub reassoc nsz arcp contract afn float %i.ue, %i.ug
  %i.ui = fmul reassoc nsz arcp contract afn float %i.uh, %i.ub ; 4 uses
  %i.uj = fmul reassoc nsz arcp contract afn float %i.ud, %i.ug
  %i.uk = fsub reassoc nsz arcp contract afn float %i.uj, %i.uc ; 4 uses
  %i.ul = extractelement <2 x float> %i.to, i64 1 ; 3 uses
  %i.um = fmul reassoc nsz arcp contract afn float %i.uf, %i.ul
  %i.un = extractelement <2 x float> %i.to, i64 0 ; 2 uses
  %i.uo = fmul reassoc nsz arcp contract afn float %i.ui, %i.un
  %i.up = extractelement <2 x float> %i.ty, i64 1 ; 4 uses
  %i.uq = fmul reassoc nsz arcp contract afn float %i.uk, %i.up
  %i.ur = fadd reassoc nsz arcp contract afn float %i.uq, %i.uo
  %i.us = fadd reassoc nsz arcp contract afn float %i.ur, %i.um ; 2 uses
  %i.ut = fcmp reassoc nsz arcp contract afn oeq float %i.us, 0.000000e+00
  br i1 %i.ut, label %bb.af, label %invert_matrix.exit225.i

invert_matrix.exit225.i:                          ; preds = %compute_wb_factors.exit.i
  %i.uu = fmul reassoc nsz arcp contract afn <2 x float> %i.tz, %i.to ; 2 uses
  %i.uv = shufflevector <2 x float> %i.to, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.uw = fmul reassoc nsz arcp contract afn <2 x float> %i.ua, %i.uv
  %i.ux = fsub reassoc nsz arcp contract afn <2 x float> %i.uu, %i.uw
  %i.uy = fsub reassoc nsz arcp contract afn float %i.ul, %i.up
  %i.uz = fmul reassoc nsz arcp contract afn float %i.uy, %i.ub
  %i.va = fmul reassoc nsz arcp contract afn float %i.ud, %i.up
  %i.vb = extractelement <2 x float> %i.uu, i64 0
  %i.vc = fsub reassoc nsz arcp contract afn float %i.va, %i.vb
  %i.vd = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.us ; 5 uses
  %i.ve = fmul reassoc nsz arcp contract afn float %i.vd, %i.uf
  %i.vf = fmul reassoc nsz arcp contract afn float %i.vd, %i.vc
  %i.vg = fmul reassoc nsz arcp contract afn float %i.vd, %i.ui
  %i.vh = shufflevector <2 x float> %i.to, <2 x float> %i.ua, <2 x i32> <i32 0, i32 3>
  %i.vi = fmul reassoc nsz arcp contract afn <2 x float> %i.ty, %i.vh
  %i.vj = shufflevector <2 x float> %i.to, <2 x float> %i.tz, <2 x i32> <i32 3, i32 1>
  %i.vk = shufflevector <2 x float> %i.ty, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.vl = fmul reassoc nsz arcp contract afn <2 x float> %i.vj, %i.vk
  %i.vm = fsub reassoc nsz arcp contract afn <2 x float> %i.vi, %i.vl
  %i.vn = insertelement <2 x float> poison, float %i.vd, i64 0
  %i.vo = shufflevector <2 x float> %i.vn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vp = fmul reassoc nsz arcp contract afn <2 x float> %i.vo, %i.vm
  %i.vq = insertelement <4 x float> poison, float %i.vd, i64 0
  %i.vr = shufflevector <4 x float> %i.vq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vs = insertelement <4 x float> poison, float %i.uz, i64 0
  %i.vt = insertelement <4 x float> %i.vs, float %i.uk, i64 1
  %i.vu = shufflevector <2 x float> %i.ux, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.vv = shufflevector <4 x float> %i.vt, <4 x float> %i.vu, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.vw = fmul reassoc nsz arcp contract afn <4 x float> %i.vr, %i.vv
  br label %set_up_conversion_matrices.exit.i

bb.af:                                            ; preds = %compute_wb_factors.exit.i
  %i.vx = fadd reassoc nsz arcp contract afn float %i.tp, %i.tj
  %i.vy = fmul reassoc nsz arcp contract afn float %i.vx, f0x3DE38E39
  %i.vz = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.vy)
  %i.wa = fdiv reassoc nsz arcp contract afn float f0x3EAAAAAB, %i.vz ; 9 uses
  %i.wb = fadd reassoc nsz arcp contract afn float %i.uk, %i.ui
  %i.wc = fadd reassoc nsz arcp contract afn float %i.wb, %i.uf
  %i.wd = fmul reassoc nsz arcp contract afn float %i.wc, %i.wa ; 2 uses
  %i.we = fcmp reassoc nsz arcp contract afn oeq float %i.wd, 0.000000e+00
  br i1 %i.we, label %set_up_conversion_matrices.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.wf = fmul reassoc nsz arcp contract afn float %i.wa, %i.ue ; 2 uses
  %i.wg = insertelement <2 x float> poison, float %i.wa, i64 0
  %i.wh = shufflevector <2 x float> %i.wg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.wi = fmul reassoc nsz arcp contract afn <2 x float> %i.ua, %i.wh ; 3 uses
  %i.wj = extractelement <2 x float> %i.wi, i64 1
  %i.wk = fsub reassoc nsz arcp contract afn float %i.wj, %i.wf
  %i.wl = fmul reassoc nsz arcp contract afn <2 x float> %i.tz, %i.wh ; 5 uses
  %i.wm = extractelement <2 x float> %i.wl, i64 1
  %i.wn = fsub reassoc nsz arcp contract afn float %i.wf, %i.wm
  %i.wo = fsub reassoc nsz arcp contract afn <2 x float> %i.wl, %i.wi
  %foldExtExtBinop280 = fsub reassoc nsz arcp contract afn <2 x float> %i.wl, %i.wl
  %i.wp = extractelement <2 x float> %foldExtExtBinop280, i64 0
  %foldExtExtBinop282 = fsub reassoc nsz arcp contract afn <2 x float> %i.wi, %i.wl
  %i.wq = extractelement <2 x float> %foldExtExtBinop282, i64 0
  %i.wr = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.wd ; 6 uses
  %i.ws = fmul reassoc nsz arcp contract afn float %i.wr, %i.uf
  %i.wt = fmul reassoc nsz arcp contract afn float %i.wr, %i.wq
  %i.wu = fmul reassoc nsz arcp contract afn float %i.wr, %i.wn
  %i.wv = fmul reassoc nsz arcp contract afn float %i.wr, %i.ui
  %i.ww = fmul reassoc nsz arcp contract afn float %i.wr, %i.wk
  %i.wx = insertelement <4 x float> poison, float %i.wr, i64 0
  %i.wy = shufflevector <4 x float> %i.wx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wz = insertelement <4 x float> poison, float %i.wp, i64 0
  %i.xa = insertelement <4 x float> %i.wz, float %i.uk, i64 1
  %i.xb = shufflevector <2 x float> %i.wo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.xc = shufflevector <4 x float> %i.xa, <4 x float> %i.xb, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.xd = fmul reassoc nsz arcp contract afn <4 x float> %i.wy, %i.xc
  %i.xe = insertelement <2 x float> poison, float %i.wu, i64 0
  %i.xf = insertelement <2 x float> %i.xe, float %i.ww, i64 1
  br label %set_up_conversion_matrices.exit.i

set_up_conversion_matrices.exit.i:                ; preds = %bb.ag, %bb.af, %invert_matrix.exit225.i
  %.sroa.1362.0.i = phi nsz float [ %i.wa, %bb.af ], [ %i.wa, %bb.ag ], [ %i.up, %invert_matrix.exit225.i ]
  %.sroa.860.0.i = phi nsz float [ %i.wa, %bb.af ], [ %i.wa, %bb.ag ], [ %i.un, %invert_matrix.exit225.i ]
  %.sroa.058.0.i = phi nsz float [ %i.wa, %bb.af ], [ %i.wa, %bb.ag ], [ %i.ul, %invert_matrix.exit225.i ]
  %.sroa.0.0.i = phi nsz float [ 0.000000e+00, %bb.af ], [ %i.ws, %bb.ag ], [ %i.ve, %invert_matrix.exit225.i ]
  %.sroa.8.0.i = phi nsz float [ 0.000000e+00, %bb.af ], [ %i.wt, %bb.ag ], [ %i.vf, %invert_matrix.exit225.i ]
  %.sroa.22.0.i = phi nsz float [ 0.000000e+00, %bb.af ], [ %i.wv, %bb.ag ], [ %i.vg, %invert_matrix.exit225.i ]
  %i.xg = phi <2 x float> [ zeroinitializer, %bb.af ], [ %i.xf, %bb.ag ], [ %i.vp, %invert_matrix.exit225.i ]
  %i.xh = phi <4 x float> [ zeroinitializer, %bb.af ], [ %i.xd, %bb.ag ], [ %i.vw, %invert_matrix.exit225.i ] ; 4 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.w, i64 296 ; 3 uses
  %i.xj = load i32, ptr %i.xi, align 8, !tbaa !137
  %i.xk = icmp eq i32 %i.xj, 0                    ; 2 uses
  %i.xl = select reassoc nsz arcp contract afn i1 %i.xk, float 1.000000e+00, float 2.500000e+00
  %i.xm = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.xn = load float, ptr %i.xm, align 8, !tbaa !307
  %i.xo = fmul reassoc nsz arcp contract afn float %i.xn, %i.oc
  %i.xp = fmul reassoc nsz arcp contract afn float %i.xo, %i.xl ; 6 uses
  %i.xq = insertelement <2 x float> poison, float %i.xp, i64 0
  %i.xr = shufflevector <2 x float> %i.xq, <2 x float> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.xs = fmul reassoc nsz arcp contract afn <2 x float> %i.xr, %i.rw ; 7 uses
  %i.xt = extractelement <2 x float> %i.xs, i64 0
  %i.xu = extractelement <2 x float> %i.xs, i64 1 ; 2 uses
  %i.xv = fmul reassoc nsz arcp contract afn <2 x float> %i.xr, %i.rx ; 5 uses
  %i.xw = extractelement <2 x float> %i.xv, i64 0 ; 2 uses
  %i.xx = shufflevector <2 x float> %i.xs, <2 x float> %i.xv, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  store <4 x float> %i.xx, ptr %i.i, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #18
  %i.xy = getelementptr inbounds nuw i8, ptr %i.w, i64 36 ; 2 uses
  %i.xz = load float, ptr %i.xy, align 4, !tbaa !12 ; 4 uses
  %i.ya = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.xz, i64 0
  %i.yb = shufflevector <4 x float> %i.ya, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.yc = insertelement <4 x float> %i.xx, float 1.000000e+00, i64 3
  %i.yd = fmul reassoc nsz arcp contract afn <4 x float> %i.yb, %i.yc ; 6 uses
  %i.ye = fmul reassoc nsz arcp contract afn float %i.xz, %i.xu ; 2 uses
  store <4 x float> %i.yd, ptr %i.k, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #18
  %i.yf = getelementptr inbounds nuw i8, ptr %i.w, i64 48 ; 2 uses
  %i.yg = load float, ptr %i.yf, align 8, !tbaa !12 ; 6 uses
  %i.yh = fmul reassoc nsz arcp contract afn float %i.yg, %i.xt ; 2 uses
  store float %i.yh, ptr %i.l, align 16, !tbaa !12
  %i.yi = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.yj = fmul reassoc nsz arcp contract afn float %i.yg, %i.xu ; 2 uses
  store float %i.yj, ptr %i.yi, align 4, !tbaa !12
  %i.yk = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.yl = fmul reassoc nsz arcp contract afn float %i.yg, %i.xw ; 2 uses
  store float %i.yl, ptr %i.yk, align 8, !tbaa !12
  %i.ym = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store float 0.000000e+00, ptr %i.ym, align 4, !tbaa !12
  %i.yn = getelementptr inbounds nuw i8, ptr %i.w, i64 292 ; 2 uses
  %i.yo = load i32, ptr %i.yn, align 4, !tbaa !134
  %.not196.i = icmp eq i32 %i.yo, 0
  %i.yp = load ptr, ptr %i.g, align 8, !tbaa !304 ; 14 uses
  br i1 %.not196.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %set_up_conversion_matrices.exit.i
  %i.yq = extractelement <4 x float> %i.yd, i64 0 ; 2 uses
  %i.yr = fdiv reassoc nsz arcp contract afn float %i.yh, %i.yq ; 2 uses
  %i.ys = fmul reassoc nsz arcp contract afn float %i.yr, %i.yr
  %i.yt = fadd reassoc nsz arcp contract afn float %i.ys, 3.750000e-01 ; 2 uses
  %i.yu = fdiv reassoc nsz arcp contract afn float %i.yj, %i.ye ; 2 uses
  %i.yv = fmul reassoc nsz arcp contract afn float %i.yu, %i.yu
  %i.yw = fadd reassoc nsz arcp contract afn float %i.yv, 3.750000e-01 ; 2 uses
  %i.yx = extractelement <4 x float> %i.yd, i64 2 ; 2 uses
  %i.yy = fdiv reassoc nsz arcp contract afn float %i.yl, %i.yx ; 2 uses
  %i.yz = fmul reassoc nsz arcp contract afn float %i.yy, %i.yy
  %i.za = fadd reassoc nsz arcp contract afn float %i.yz, 3.750000e-01 ; 2 uses
  %i.zb = shl nsw i64 %i.qg, 2
  %i.zc = mul i64 %i.zb, %i.qh                    ; 4 uses
  %.not.i201.i = icmp eq i64 %i.zc, 0
  br i1 %.not.i201.i, label %precondition.exit.i, label %.preheader.i202.i.preheader

.preheader.i202.i.preheader:                      ; preds = %bb.ah
  %i.zd = add i64 %i.zc, -4                       ; 2 uses
  %i.ze = lshr exact i64 %i.zd, 2
  %i.zf = add nuw nsw i64 %i.ze, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.zd, 28
  br i1 %min.iters.check, label %.preheader.i202.i.preheader289, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.i202.i.preheader
  %i.zg = shl i64 %i.zc, 2                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.yp, i64 %i.zg
  %scevgep134 = getelementptr i8, ptr %2, i64 %i.zg
  %bound0 = icmp ult ptr %i.yp, %scevgep134
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader.i202.i.preheader289, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.zf, 9223372036854775800     ; 3 uses
  %i.zh = shl i64 %n.vec, 2
  %broadcast.splat = shufflevector <4 x float> %i.yd, <4 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert135 = insertelement <8 x float> poison, float %i.yt, i64 0
  %broadcast.splat138 = shufflevector <4 x float> %i.yd, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert139 = insertelement <8 x float> poison, float %i.yw, i64 0
  %broadcast.splat142 = shufflevector <4 x float> %i.yd, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splatinsert143 = insertelement <8 x float> poison, float %i.za, i64 0
  %broadcast.splat144 = shufflevector <8 x float> %broadcast.splatinsert143, <8 x float> poison, <8 x i32> zeroinitializer
  %i.zi = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat
  %i.zj = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat138
  %13 = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat142
  %14 = shufflevector <8 x float> %broadcast.splatinsert135, <8 x float> %broadcast.splatinsert139, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.zk = shl nuw i64 %index, 2                   ; 2 uses
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.zk
  %wide.vec = load <32 x float>, ptr %i.zl, align 4, !tbaa !12, !alias.scope !326 ; 4 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec145 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec146 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec147 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.zm = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, %i.zi
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %i.yp, i64 %i.zk
  %i.zo = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec145, %i.zj
  %15 = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec146, %13
  %16 = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat144, %15
  %i.zp = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec147, splat (float +inf)
  %17 = shufflevector <8 x float> %i.zm, <8 x float> %i.zo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %18 = fadd reassoc nsz arcp contract afn <16 x float> %14, %17
  %i.zq = shufflevector <8 x float> %16, <8 x float> %i.zp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.zr = shufflevector <16 x float> %18, <16 x float> %i.zq, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  %i.zs = call reassoc nsz arcp contract afn <32 x float> @llvm.maxnum.v32f32(<32 x float> %i.zr, <32 x float> zeroinitializer)
  %i.zt = call reassoc nnan nsz arcp contract afn <32 x float> @llvm.sqrt.v32f32(<32 x float> %i.zs)
  %interleaved.vec = fmul reassoc nnan nsz arcp contract afn <32 x float> %i.zt, splat (float 2.000000e+00)
  store <32 x float> %interleaved.vec, ptr %i.zn, align 4, !tbaa !12, !alias.scope !327, !noalias !326
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.zu = icmp eq i64 %index.next, %n.vec
  br i1 %i.zu, label %middle.block, label %vector.body, !llvm.loop !267

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.zf, %n.vec
  br i1 %cmp.n, label %precondition.exit.i, label %.preheader.i202.i.preheader289

.preheader.i202.i.preheader289:                   ; preds = %vector.memcheck, %.preheader.i202.i.preheader, %middle.block
  %.02830.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.i202.i.preheader ], [ %i.zh, %middle.block ]
  %i.zv = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.yq
  %i.zw = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ye
  %i.zx = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.yx
  br label %.preheader.i202.i

.preheader.i202.i:                                ; preds = %.preheader.i202.i.preheader289, %.preheader.i202.i
  %.02830.i.i = phi i64 [ %i.abg, %.preheader.i202.i ], [ %.02830.i.i.ph, %.preheader.i202.i.preheader289 ] ; 6 uses
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02830.i.i
  %i.zz = load float, ptr %i.zy, align 4, !tbaa !12
  %i.aaa = fmul reassoc nsz arcp contract afn float %i.zz, %i.zv
  %i.aab = fadd reassoc nsz arcp contract afn float %i.yt, %i.aaa
  %i.aac = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aab, float 0.000000e+00)
  %i.aad = call reassoc nnan nsz arcp contract afn float @llvm.sqrt.f32(float %i.aac)
  %i.aae = fmul reassoc nnan nsz arcp contract afn float %i.aad, 2.000000e+00
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %i.yp, i64 %.02830.i.i
  store float %i.aae, ptr %i.aaf, align 4, !tbaa !12
  %i.aag = or disjoint i64 %.02830.i.i, 1         ; 2 uses
  %i.aah = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aag
  %i.aai = load float, ptr %i.aah, align 4, !tbaa !12
  %i.aaj = fmul reassoc nsz arcp contract afn float %i.aai, %i.zw
  %i.aak = fadd reassoc nsz arcp contract afn float %i.yw, %i.aaj
  %i.aal = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aak, float 0.000000e+00)
  %i.aam = call reassoc nnan nsz arcp contract afn float @llvm.sqrt.f32(float %i.aal)
  %i.aan = fmul reassoc nnan nsz arcp contract afn float %i.aam, 2.000000e+00
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %i.yp, i64 %i.aag
  store float %i.aan, ptr %i.aao, align 4, !tbaa !12
  %i.aap = or disjoint i64 %.02830.i.i, 2         ; 2 uses
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aap
  %i.aar = load float, ptr %i.aaq, align 4, !tbaa !12
  %i.aas = fmul reassoc nsz arcp contract afn float %i.aar, %i.zx
  %i.aat = fadd reassoc nsz arcp contract afn float %i.za, %i.aas
  %i.aau = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aat, float 0.000000e+00)
  %i.aav = call reassoc nnan nsz arcp contract afn float @llvm.sqrt.f32(float %i.aau)
  %i.aaw = fmul reassoc nnan nsz arcp contract afn float %i.aav, 2.000000e+00
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %i.yp, i64 %i.aap
  store float %i.aaw, ptr %i.aax, align 4, !tbaa !12
  %i.aay = or disjoint i64 %.02830.i.i, 3         ; 2 uses
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aay
  %i.aba = load float, ptr %i.aaz, align 4, !tbaa !12
  %i.abb = fmul reassoc nsz arcp contract afn float %i.aba, +inf
  %i.abc = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.abb, float 0.000000e+00)
  %i.abd = call reassoc nnan nsz arcp contract afn float @llvm.sqrt.f32(float %i.abc)
  %i.abe = fmul reassoc nnan nsz arcp contract afn float %i.abd, 2.000000e+00
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %i.yp, i64 %i.aay
  store float %i.abe, ptr %i.abf, align 4, !tbaa !12
  %i.abg = add nuw i64 %.02830.i.i, 4             ; 2 uses
  %i.abh = icmp ult i64 %i.abg, %i.zc
  br i1 %i.abh, label %.preheader.i202.i, label %precondition.exit.i, !llvm.loop !268

bb.ai:                                            ; preds = %set_up_conversion_matrices.exit.i
  %i.abi = fmul reassoc nsz arcp contract afn <2 x float> %i.sm, splat (float 5.000000e-01)
  %i.abj = fsub reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.abi ; 4 uses
  %i.abk = fmul reassoc nsz arcp contract afn float %i.sv, 5.000000e-01
  %i.abl = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.abk ; 4 uses
  %i.abm = shl nsw i64 %i.qg, 2
  %i.abn = mul i64 %i.abm, %i.qh                  ; 3 uses
  %.not.i203.i = icmp eq i64 %i.abn, 0            ; 2 uses
  br i1 %i.xk, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  br i1 %.not.i203.i, label %precondition.exit.sink.split.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.aj
  %i.abo = fmul reassoc nsz arcp contract afn float %i.xz, %i.ta
  %i.abp = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.abo)
  %i.abq = fsub reassoc nsz arcp contract afn <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 1.000000e+00>, %i.sy
  %i.abr = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.abp, i64 0
  %i.abs = shufflevector <4 x float> %i.abr, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.abt = fmul reassoc nsz arcp contract afn <4 x float> %i.abs, %i.abq ; 3 uses
  %i.abu = insertelement <2 x float> poison, float %i.yg, i64 0
  %i.abv = shufflevector <2 x float> %i.abu, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.abw = add i64 %i.abn, -4                     ; 3 uses
  %i.abx = lshr exact i64 %i.abw, 2
  %i.aby = add nuw nsw i64 %i.abx, 1              ; 2 uses
  %i.abz = icmp eq i64 %i.abw, 0
  br i1 %i.abz, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %i.aby, 9223372036854775806
  %i.aca = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.xv
  %i.acb = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.xs
  %i.acc = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.abt
  %i.acd = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.xv
  %i.ace = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.xs
  %i.acf = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.abt
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %.04247.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.aeb, %.lr.ph.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.acg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.04247.i.i ; 2 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 8
  %i.aci = load <2 x float>, ptr %i.ach, align 4, !tbaa !12
  %i.acj = fmul reassoc nsz arcp contract afn <2 x float> %i.aci, %i.aca
  %i.ack = fadd reassoc nsz arcp contract afn <2 x float> %i.acj, %i.abv ; 2 uses
  %i.acl = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ack, zeroinitializer
  %i.acm = select <2 x i1> %i.acl, <2 x float> %i.ack, <2 x float> zeroinitializer ; 2 uses
  %i.acn = extractelement <2 x float> %i.acm, i64 0
  %i.aco = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.acn, float %i.abl)
  %i.acp = load <2 x float>, ptr %i.acg, align 4, !tbaa !12
  %i.acq = fmul reassoc nsz arcp contract afn <2 x float> %i.acp, %i.acb
  %i.acr = fadd reassoc nsz arcp contract afn <2 x float> %i.acq, %i.abv ; 2 uses
  %i.acs = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.acr, zeroinitializer
  %i.act = select <2 x i1> %i.acs, <2 x float> %i.acr, <2 x float> zeroinitializer
  %i.acu = call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.act, <2 x float> %i.abj)
  %i.acv = insertelement <4 x float> poison, float %i.aco, i64 2
  %i.acw = shufflevector <2 x float> %i.acm, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.acx = shufflevector <4 x float> %i.acv, <4 x float> %i.acw, <4 x i32> <i32 poison, i32 poison, i32 2, i32 5>
  %i.acy = shufflevector <2 x float> %i.acu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.acz = shufflevector <4 x float> %i.acy, <4 x float> %i.acx, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ada = fmul reassoc nsz arcp contract afn <4 x float> %i.acz, splat (float 2.000000e+00)
  %i.adb = fmul reassoc nsz arcp contract afn <4 x float> %i.ada, %i.acc
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %i.yp, i64 %.04247.i.i
  store <4 x float> %i.adb, ptr %i.adc, align 16, !tbaa !34, !alias.scope !328, !nontemporal !313
  %i.add = or disjoint i64 %.04247.i.i, 4         ; 2 uses
  %i.ade = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.add ; 2 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %i.ade, i64 8
  %i.adg = load <2 x float>, ptr %i.adf, align 4, !tbaa !12
  %i.adh = fmul reassoc nsz arcp contract afn <2 x float> %i.adg, %i.acd
  %i.adi = fadd reassoc nsz arcp contract afn <2 x float> %i.adh, %i.abv ; 2 uses
  %i.adj = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.adi, zeroinitializer
  %i.adk = select <2 x i1> %i.adj, <2 x float> %i.adi, <2 x float> zeroinitializer ; 2 uses
  %i.adl = extractelement <2 x float> %i.adk, i64 0
  %i.adm = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.adl, float %i.abl)
  %i.adn = load <2 x float>, ptr %i.ade, align 4, !tbaa !12
  %i.ado = fmul reassoc nsz arcp contract afn <2 x float> %i.adn, %i.ace
  %i.adp = fadd reassoc nsz arcp contract afn <2 x float> %i.ado, %i.abv ; 2 uses
  %i.adq = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.adp, zeroinitializer
  %i.adr = select <2 x i1> %i.adq, <2 x float> %i.adp, <2 x float> zeroinitializer
  %i.ads = call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.adr, <2 x float> %i.abj)
  %i.adt = insertelement <4 x float> poison, float %i.adm, i64 2
  %i.adu = shufflevector <2 x float> %i.adk, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.adv = shufflevector <4 x float> %i.adt, <4 x float> %i.adu, <4 x i32> <i32 poison, i32 poison, i32 2, i32 5>
  %i.adw = shufflevector <2 x float> %i.ads, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.adx = shufflevector <4 x float> %i.adw, <4 x float> %i.adv, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ady = fmul reassoc nsz arcp contract afn <4 x float> %i.adx, splat (float 2.000000e+00)
  %i.adz = fmul reassoc nsz arcp contract afn <4 x float> %i.ady, %i.acf
  %i.aea = getelementptr inbounds nuw [4 x i8], ptr %i.yp, i64 %i.add
  store <4 x float> %i.adz, ptr %i.aea, align 16, !tbaa !34, !alias.scope !328, !nontemporal !313
  %i.aeb = add nuw i64 %.04247.i.i, 8             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %precondition.exit.sink.split.i.loopexit.unr-lcssa, label %.lr.ph.i.i

bb.ak:                                            ; preds = %bb.ai
  br i1 %.not.i203.i, label %precondition.exit.sink.split.i, label %.lr.ph.i205.i

.lr.ph.i205.i:                                    ; preds = %bb.ak
  %i.aec = fmul reassoc nsz arcp contract afn float %i.xz, %i.ta
  %i.aed = fsub reassoc nsz arcp contract afn float 2.000000e+00, %i.sv
  %i.aee = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.aec) ; 2 uses
  %i.aef = fmul reassoc nsz arcp contract afn float %i.aee, %i.aed
  %i.aeg = fsub reassoc nsz arcp contract afn <2 x float> splat (float 2.000000e+00), %i.sm
  %i.aeh = insertelement <2 x float> poison, float %i.aee, i64 0
  %i.aei = shufflevector <2 x float> %i.aeh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aej = fmul reassoc nsz arcp contract afn <2 x float> %i.aei, %i.aeg
  %i.aek = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.xp
  %i.ael = shufflevector <2 x float> %i.ty, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.aem = insertelement <2 x float> %i.ael, float %.sroa.1362.0.i, i64 0
  %i.aen = insertelement <2 x float> poison, float %i.aek, i64 0 ; 2 uses
  %i.aeo = shufflevector <2 x float> %i.aen, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aep = insertelement <2 x float> %i.ua, float %.sroa.860.0.i, i64 0
  %i.aeq = fmul reassoc nsz arcp contract afn <2 x float> %i.aep, %i.aeo
  %i.aer = insertelement <2 x float> %i.tz, float %.sroa.058.0.i, i64 0
  %i.aes = fmul reassoc nsz arcp contract afn <2 x float> %i.aer, %i.aeo
  %i.aet = insertelement <2 x float> poison, float %i.yg, i64 0
  %i.aeu = shufflevector <2 x float> %i.aet, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aev = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.aef
  %i.aew = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.aej
  %i.aex = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.xp
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.lr.ph.i205.i
  %.02832.i.i = phi i64 [ 0, %.lr.ph.i205.i ], [ %i.agh, %bb.al ] ; 3 uses
  %i.aey = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02832.i.i ; 2 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 8
  %i.afa = load float, ptr %i.aez, align 4, !tbaa !12
  %i.afb = fadd reassoc nsz arcp contract afn float %i.afa, %i.yg ; 2 uses
  %i.afc = fcmp reassoc nsz arcp contract afn ogt float %i.afb, 0.000000e+00
  %spec.select.2.i208.i = select reassoc nsz arcp contract afn i1 %i.afc, float %i.afb, float 0.000000e+00
  %i.afd = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %spec.select.2.i208.i, float %i.abl)
  %i.afe = fmul reassoc nsz arcp contract afn float %i.afd, 2.000000e+00
  %i.aff = fmul reassoc nsz arcp contract afn float %i.afe, %i.aev ; 3 uses
  %i.afg = load <2 x float>, ptr %i.aey, align 4, !tbaa !12
  %i.afh = fadd reassoc nsz arcp contract afn <2 x float> %i.afg, %i.aeu ; 2 uses
  %i.afi = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.afh, zeroinitializer
end_hunk_1
