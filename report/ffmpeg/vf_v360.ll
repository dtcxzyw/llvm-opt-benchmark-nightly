Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_v360?download=true
inline.NumInlined: 74
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 107
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 117
begin_hunk_0_@get_output_dimension:bb.a
  %i.d = fcmp nsz ogt float %2, 3.276700e+04
  %or.cond3 = or i1 %i.d, %or.cond
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = fpext nsz float %2 to double
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.26, ptr noundef %1, double noundef %i.e, i32 noundef 32767) #17
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call i64 @llvm.lrint.i64.f32(float %2)
  %i.g = trunc i64 %i.f to i32
  store i32 %i.g, ptr %3, align 4, !tbaa !57
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -22, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.tan.f32(float) #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #13

declare i32 @av_pix_fmt_count_planes(i32 noundef) local_unnamed_addr #6

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @calculate_rotation(float noundef %0, float noundef %1, float noundef %2, ptr nofree noundef captures(none) initializes((16, 32)) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #14 {
bb.a:
  %i.a = alloca [3 x [4 x float]], align 16       ; 15 uses
  %i.b = insertelement <2 x float> poison, float %0, i64 0
  %i.c = insertelement <2 x float> %i.b, float %1, i64 1
  %i.d = fpext <2 x float> %i.c to <2 x double>
  %i.e = fpext nsz float %2 to double
  %i.f = fmul nsz double %i.e, f0x400921FB54442D18
  %i.g = fdiv nsz double %i.f, 1.800000e+02
  %i.h = fptrunc nsz double %i.g to float
  %i.i = fmul nsz <2 x double> %i.d, splat (double f0x400921FB54442D18)
  %i.j = fdiv nsz <2 x double> %i.i, splat (double 1.800000e+02)
  %i.k = fptrunc <2 x double> %i.j to <2 x float>
  %i.l = fmul nsz <2 x float> %i.k, splat (float 5.000000e-01)
  %i.m = tail call nsz { <2 x float>, <2 x float> } @llvm.sincos.v2f32(<2 x float> %i.l) ; 2 uses
  %i.n = extractvalue { <2 x float>, <2 x float> } %i.m, 0 ; 2 uses
  %i.o = extractelement <2 x float> %i.n, i64 0
  %i.p = extractvalue { <2 x float>, <2 x float> } %i.m, 1 ; 2 uses
  %i.q = extractelement <2 x float> %i.p, i64 0
  %i.r = extractelement <2 x float> %i.n, i64 1
  %i.s = extractelement <2 x float> %i.p, i64 1
  %i.t = fmul nsz float %i.h, 5.000000e-01
  %sincos25 = tail call nsz { float, float } @llvm.sincos.f32(float %i.t) ; 2 uses
  %sin26 = extractvalue { float, float } %sincos25, 0
  %cos27 = extractvalue { float, float } %sincos25, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store float %i.q, ptr %i.a, align 16, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store float 0.000000e+00, ptr %i.u, align 4, !tbaa !29
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %i.o, ptr %i.v, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float 0.000000e+00, ptr %i.w, align 4, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store float %i.s, ptr %i.x, align 16, !tbaa !29
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store float %i.r, ptr %i.y, align 4, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store <2 x float> zeroinitializer, ptr %i.z, align 8, !tbaa !29
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store float %cos27, ptr %i.aa, align 16, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store <2 x float> zeroinitializer, ptr %i.ab, align 4, !tbaa !29
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store float %sin26, ptr %i.ac, align 4, !tbaa !29
  %i.ad = load i32, ptr %4, align 4, !tbaa !57
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.ae ; 2 uses
  %i.ag = load float, ptr %i.af, align 16, !tbaa !29 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !57
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.al ; 3 uses
  %i.an = load float, ptr %i.am, align 16, !tbaa !29 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !57
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.as ; 2 uses
  %i.au = load float, ptr %i.at, align 16, !tbaa !29
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 4 ; 2 uses
  %i.aw = load <3 x float>, ptr %i.ai, align 4, !tbaa !29 ; 5 uses
  %i.ax = shufflevector <3 x float> %i.aw, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 0, i32 1>
  %i.ay = load float, ptr %i.ai, align 4, !tbaa !29
  %i.az = fneg nsz float %i.ay
  %i.ba = load <3 x float>, ptr %i.ah, align 4, !tbaa !29 ; 4 uses
  %i.bb = load float, ptr %3, align 4, !tbaa !29  ; 2 uses
  %i.bc = fneg nsz <3 x float> %i.ba              ; 3 uses
  %i.bd = shufflevector <3 x float> %i.bc, <3 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 2>
  %i.be = insertelement <4 x float> poison, float %i.bb, i64 0
  %i.bf = shufflevector <4 x float> %i.be, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bg = shufflevector <3 x float> %i.aw, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 0>
  %i.bh = fmul nsz <4 x float> %i.bf, %i.bg
  %i.bi = extractelement <3 x float> %i.ba, i64 0
  %i.bj = fmul nsz float %i.bi, %i.az
  %i.bk = shufflevector <3 x float> %i.ba, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 0>
  %i.bl = insertelement <4 x float> poison, float %i.ag, i64 0
  %i.bm = shufflevector <4 x float> %i.bl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bn = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bk, <4 x float> %i.bm, <4 x float> %i.bh)
  %i.bo = tail call nsz float @llvm.fmuladd.f32(float %i.bb, float %i.ag, float %i.bj)
  %i.bp = shufflevector <3 x float> %i.ba, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 0, i32 1>
  %i.bq = shufflevector <3 x float> %i.aw, <3 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 2>
  %i.br = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bp, <4 x float> %i.bq, <4 x float> %i.bn)
  %i.bs = extractelement <3 x float> %i.bc, i64 1
  %i.bt = extractelement <3 x float> %i.aw, i64 1
  %i.bu = tail call nsz float @llvm.fmuladd.f32(float %i.bs, float %i.bt, float %i.bo)
  %i.bv = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bd, <4 x float> %i.ax, <4 x float> %i.br) ; 4 uses
  %i.bw = extractelement <3 x float> %i.bc, i64 2
  %i.bx = extractelement <3 x float> %i.aw, i64 2
  %i.by = tail call nsz float @llvm.fmuladd.f32(float %i.bw, float %i.bx, float %i.bu) ; 2 uses
  %i.bz = load <3 x float>, ptr %i.ao, align 4, !tbaa !29 ; 5 uses
  %i.ca = shufflevector <3 x float> %i.bz, <3 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 2>
  %i.cb = load float, ptr %i.ap, align 8, !tbaa !29
  %i.cc = extractelement <3 x float> %i.bz, i64 0
  %i.cd = fneg nsz float %i.cc
  %i.ce = fneg nsz <4 x float> %i.bv              ; 3 uses
  %i.cf = insertelement <4 x float> poison, float %i.by, i64 0
  %i.cg = shufflevector <4 x float> %i.cf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ch = shufflevector <3 x float> %i.bz, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 0, i32 1>
  %i.ci = fmul nsz <4 x float> %i.cg, %i.ch
  %i.cj = extractelement <4 x float> %i.bv, i64 3
  %i.ck = fmul nsz float %i.cj, %i.cd
  %i.cl = shufflevector <4 x float> %i.bv, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 3, i32 0>
  %i.cm = insertelement <4 x float> poison, float %i.an, i64 0
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.co = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cl, <4 x float> %i.cn, <4 x float> %i.ci)
  %i.cp = tail call nsz float @llvm.fmuladd.f32(float %i.by, float %i.an, float %i.ck)
  %i.cq = shufflevector <4 x float> %i.bv, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 0, i32 2>
  %i.cr = shufflevector <3 x float> %i.bz, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 0>
  %i.cs = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cq, <4 x float> %i.cr, <4 x float> %i.co)
  %i.ct = extractelement <4 x float> %i.ce, i64 0
  %i.cu = tail call nsz float @llvm.fmuladd.f32(float %i.ct, float %i.cb, float %i.cp)
  %i.cv = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ce, <4 x float> %i.ca, <4 x float> %i.cs) ; 4 uses
  %i.cw = extractelement <4 x float> %i.ce, i64 2
  %i.cx = extractelement <3 x float> %i.bz, i64 2
  %i.cy = tail call nsz float @llvm.fmuladd.f32(float %i.cw, float %i.cx, float %i.cu)
  %i.cz = load float, ptr %i.av, align 4, !tbaa !29
  %i.da = load <3 x float>, ptr %i.av, align 4, !tbaa !29 ; 3 uses
  %i.db = shufflevector <3 x float> %i.da, <3 x float> poison, <4 x i32> <i32 2, i32 1, i32 2, i32 0>
  %i.dc = fneg nsz float %i.cz
  %i.dd = fneg nsz <4 x float> %i.cv              ; 2 uses
  %i.de = insertelement <4 x float> poison, float %i.cy, i64 0
  %i.df = shufflevector <4 x float> %i.de, <4 x float> %i.cv, <4 x i32> <i32 0, i32 poison, i32 poison, i32 6> ; 2 uses
  %i.dg = shufflevector <3 x float> %i.da, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.dh = insertelement <4 x float> %i.dg, float %i.dc, i64 3
  %i.di = shufflevector <4 x float> %i.df, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 0, i32 0>
  %i.dj = shufflevector <4 x float> %i.dh, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.dk = fmul nsz <4 x float> %i.di, %i.dj
  %i.dl = shufflevector <4 x float> %i.df, <4 x float> %i.cv, <4 x i32> <i32 0, i32 3, i32 7, i32 4>
  %i.dm = insertelement <4 x float> poison, float %i.au, i64 0
  %i.dn = shufflevector <4 x float> %i.dm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.do = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %i.dn, <4 x float> %i.dk)
  %i.dp = shufflevector <4 x float> %i.dd, <4 x float> %i.cv, <4 x i32> <i32 3, i32 7, i32 4, i32 6>
  %i.dq = shufflevector <3 x float> %i.da, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.dr = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dp, <4 x float> %i.dq, <4 x float> %i.do)
  %i.ds = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dd, <4 x float> %i.db, <4 x float> %i.dr) ; 4 uses
  store <4 x float> %i.ds, ptr %3, align 4, !tbaa !29
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.du = extractelement <4 x float> %i.ds, i64 0
  store float %i.du, ptr %i.dt, align 4, !tbaa !29
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.dw = fneg nsz <4 x float> %i.ds
  %i.dx = shufflevector <4 x float> %i.dw, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  store <2 x float> %i.dx, ptr %i.dv, align 4, !tbaa !29
  %i.dy = extractelement <4 x float> %i.ds, i64 3
  %i.dz = fneg nsz float %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 28
  store float %i.dz, ptr %i.ea, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @v360_slice(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i32 noundef %2, i32 noundef %3) #4 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = alloca [3 x float], align 8              ; 10 uses
  %4 = alloca %struct.XYRemap, align 16           ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28   ; 30 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 560
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.h = sext i32 %2 to i64                       ; 2 uses
  %i.i = getelementptr inbounds [56 x i8], ptr %i.g, i64 %i.h ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 540 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !32
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge126

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 552
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 360 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 520
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 376
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 488
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 504
  %i.s = sext i32 %3 to i64                       ; 2 uses
  %i.t = add nsw i32 %2, 1
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 544
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 592
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 300
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 304
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 308
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 316
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 320
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 324
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 332
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 340
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 252
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 584
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 232
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 236
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 600
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 548
  br label %bb.b

._crit_edge126:                                   ; preds = %._crit_edge123.split, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph, %._crit_edge123.split
  %indvars.iv132 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next133, %._crit_edge123.split ] ; 10 uses
  %i.av = load i32, ptr %i.m, align 8, !tbaa !54
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv132
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !57 ; 4 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv132
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !57
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv132
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !57 ; 3 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv132
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !57 ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv132
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !57 ; 3 uses
  %i.bg = sext i32 %i.bb to i64                   ; 2 uses
  %i.bh = mul nsw i64 %i.bg, %i.h
  %i.bi = sdiv i64 %i.bh, %i.s                    ; 2 uses
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = mul nsw i64 %i.bg, %i.u
  %i.bl = sdiv i64 %i.bk, %i.s
  %i.bm = trunc i64 %i.bl to i32                  ; 2 uses
  %i.bn = load i32, ptr %i.v, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.bo = icmp slt i32 %i.bj, %i.bm
  br i1 %i.bo, label %.preheader.lr.ph, label %._crit_edge123.split

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.bp = icmp sgt i32 %i.ax, 0
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv132
  %i.br = sext i32 %i.az to i64
  %i.bs = sext i32 %i.bn to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv132
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv132
  %.not = icmp eq i64 %indvars.iv132, 0           ; 2 uses
  %i.bv = trunc i32 %i.bd to i16
  %i.bw = trunc i32 %i.bf to i16
  br i1 %i.bp, label %.preheader.preheader, label %._crit_edge123.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %sext = shl i64 %i.bi, 32
  %i.bx = ashr exact i64 %sext, 32                ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ax to i64
  %i.by = insertelement <8 x i16> poison, i16 %i.bw, i64 0
  %i.bz = shufflevector <8 x i16> %i.by, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ca = insertelement <8 x i16> poison, i16 %i.bv, i64 0
  %i.cb = shufflevector <8 x i16> %i.ca, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv128 = phi i64 [ %i.bx, %.preheader.preheader ], [ %indvars.iv.next129, %._crit_edge ] ; 4 uses
  %i.cc = sub nsw i64 %indvars.iv128, %i.bx       ; 3 uses
  %i.cd = mul nsw i64 %i.cc, %i.br
  %i.ce = trunc nsw i64 %i.cc to i32
  %i.cf = trunc nsw i64 %i.cc to i32
  %i.cg = trunc nsw i64 %indvars.iv128 to i32
  %i.ch = trunc nsw i64 %indvars.iv128 to i32
  br label %bb.c

._crit_edge123.split:                             ; preds = %._crit_edge, %.preheader.lr.ph, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %5 = load i32, ptr %i.j, align 4, !tbaa !32
  %i.ci = sext i32 %5 to i64
  %i.cj = icmp slt i64 %indvars.iv.next133, %i.ci
  br i1 %i.cj, label %bb.b, label %._crit_edge126, !llvm.loop !158

._crit_edge:                                      ; preds = %bb.t
  %indvars.iv.next129 = add nsw i64 %indvars.iv128, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next129 to i32
  %exitcond131.not = icmp eq i32 %lftr.wideiv, %i.bm
  br i1 %exitcond131.not, label %._crit_edge123.split, label %.preheader, !llvm.loop !159

bb.c:                                             ; preds = %.preheader, %bb.t
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.t ] ; 5 uses
  %i.ck = load ptr, ptr %i.bq, align 8, !tbaa !69
  %i.cl = add nsw i64 %i.cd, %indvars.iv
  %i.cm = mul nsw i64 %i.cl, %i.bs                ; 3 uses
  %i.cn = getelementptr inbounds [2 x i8], ptr %i.ck, i64 %i.cm
  %i.co = load ptr, ptr %i.bt, align 8, !tbaa !69
  %i.cp = getelementptr inbounds [2 x i8], ptr %i.co, i64 %i.cm
  %i.cq = load ptr, ptr %i.bu, align 8, !tbaa !69
  %i.cr = getelementptr inbounds [2 x i8], ptr %i.cq, i64 %i.cm
  br i1 %.not, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.cs = load ptr, ptr %i.y, align 8, !tbaa !71  ; 3 uses
  %.not116 = icmp eq ptr %i.cs, null
  br i1 %.not116, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ct = load i32, ptr %i.n, align 8, !tbaa !57  ; 2 uses
  %i.cu = mul nsw i32 %i.ct, %i.ce
  %i.cv = trunc nuw nsw i64 %indvars.iv to i32
  %i.cw = add nsw i32 %i.cu, %i.cv
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds i8, ptr %i.cs, i64 %i.cx
  %i.cz = mul nsw i32 %i.ct, %i.cf
  %i.da = trunc nuw nsw i64 %indvars.iv to i32
  %i.db = add nsw i32 %i.cz, %i.da
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds [2 x i8], ptr %i.cs, i64 %i.dc
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.c, %bb.e
  %i.de = phi ptr [ %i.cy, %bb.e ], [ null, %bb.c ], [ null, %bb.d ]
  %i.df = phi ptr [ %i.dd, %bb.e ], [ null, %bb.c ], [ null, %bb.d ]
  %i.dg = load i32, ptr %i.z, align 8, !tbaa !65
  %.not118 = icmp eq i32 %i.dg, 0
  %i.dh = load ptr, ptr %i.aa, align 8, !tbaa !62 ; 2 uses
  %i.di = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  br i1 %.not118, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.dj = call i32 %i.dh(ptr noundef nonnull %i.e, i32 noundef %i.cg, i32 noundef %i.di, i32 noundef %i.bb, i32 noundef %i.ax, ptr noundef nonnull %i.c) #17
  br label %bb.h

bb.g:                                             ; preds = %.thread
  %i.dk = call i32 %i.dh(ptr noundef nonnull %i.e, i32 noundef %i.di, i32 noundef %i.ch, i32 noundef %i.ax, i32 noundef %i.bb, ptr noundef nonnull %i.c) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i32 [ %i.dj, %bb.f ], [ %i.dk, %bb.g ]
  %i.dl = load float, ptr %i.c, align 8, !tbaa !29 ; 2 uses
  %i.dm = call float @llvm.fabs.f32(float %i.dl)
  %i.dn = fcmp ueq float %i.dm, +inf
  br i1 %i.dn, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.do = load float, ptr %i.ab, align 4, !tbaa !29 ; 2 uses
  %i.dp = call float @llvm.fabs.f32(float %i.do)
  %i.dq = fcmp ueq float %i.dp, +inf
  br i1 %i.dq, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dr = load float, ptr %i.ac, align 8, !tbaa !29 ; 2 uses
  %i.ds = call float @llvm.fabs.f32(float %i.dr)
  %i.dt = fcmp ueq float %i.ds, +inf
  br i1 %i.dt, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.du = phi float [ 1.000000e+00, %bb.k ], [ %i.dr, %bb.j ] ; 3 uses
  %i.dv = phi float [ 0.000000e+00, %bb.k ], [ %i.do, %bb.j ]
  %i.dw = phi float [ 0.000000e+00, %bb.k ], [ %i.dl, %bb.j ]
  %i.dx = load float, ptr %i.ae, align 4, !tbaa !29 ; 3 uses
  %i.dy = load float, ptr %i.ah, align 4, !tbaa !29 ; 2 uses
  %i.dz = load <2 x float>, ptr %i.ad, align 8, !tbaa !29
  %i.ea = insertelement <2 x float> poison, float %i.dw, i64 0
  %i.eb = insertelement <2 x float> %i.ea, float %i.dv, i64 1
  %i.ec = fadd nsz <2 x float> %i.dz, %i.eb       ; 4 uses
  %foldExtExtBinop = fmul nsz <2 x float> %i.ec, %i.ec
  %i.ed = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ee = extractelement <2 x float> %i.ec, i64 0 ; 2 uses
  %i.ef = call nsz float @llvm.fmuladd.f32(float %i.ee, float %i.ee, float %i.ed)
  %i.eg = call nsz float @llvm.fmuladd.f32(float %i.du, float %i.du, float %i.ef)
  %i.eh = call nsz float @llvm.sqrt.f32(float %i.eg) ; 2 uses
  %i.ei = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ek = fdiv nsz <2 x float> %i.ec, %i.ej       ; 5 uses
  %i.el = fdiv nsz float %i.du, %i.eh             ; 4 uses
  %i.em = extractelement <2 x float> %i.ek, i64 0 ; 2 uses
  %i.en = fneg nsz float %i.em
  %i.eo = load float, ptr %i.af, align 8, !tbaa !29 ; 4 uses
  %i.ep = fmul nsz float %i.eo, %i.en
  %i.eq = call nsz float @llvm.fmuladd.f32(float %i.dx, float 0.000000e+00, float %i.ep)
  %i.er = load <2 x float>, ptr %i.ag, align 4, !tbaa !29 ; 5 uses
  %i.es = fneg nsz <2 x float> %i.er              ; 3 uses
  %i.et = extractelement <2 x float> %i.es, i64 0
  %i.eu = extractelement <2 x float> %i.ek, i64 1 ; 2 uses
  %i.ev = call nsz float @llvm.fmuladd.f32(float %i.et, float %i.eu, float %i.eq)
  %i.ew = fneg nsz float %i.eo
  %i.ex = extractelement <2 x float> %i.es, i64 1
  %i.ey = call nsz float @llvm.fmuladd.f32(float %i.ex, float %i.el, float %i.ev) ; 2 uses
  %i.ez = fmul nsz float %i.eu, %i.dx
  %i.fa = extractelement <2 x float> %i.er, i64 0
  %i.fb = call nsz float @llvm.fmuladd.f32(float %i.fa, float 0.000000e+00, float %i.ez)
  %i.fc = extractelement <2 x float> %i.er, i64 1
  %i.fd = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fe = insertelement <2 x float> %i.fd, float %i.el, i64 0
  %i.ff = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.fg = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fh = fmul nsz <2 x float> %i.fe, %i.fg
  %i.fi = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fj = insertelement <2 x float> %i.fi, float %i.eo, i64 1
  %i.fk = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fj, <2 x float> zeroinitializer, <2 x float> %i.fh)
  %i.fl = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.fm = insertelement <2 x float> %i.fl, float %i.el, i64 1
  %i.fn = shufflevector <2 x float> %i.ek, <2 x float> %i.er, <2 x i32> <i32 1, i32 2>
  %i.fo = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fm, <2 x float> %i.fn, <2 x float> %i.fk)
  %i.fp = call nsz float @llvm.fmuladd.f32(float %i.fc, float %i.em, float %i.fb)
  %i.fq = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.es, <2 x float> %i.ek, <2 x float> %i.fo) ; 5 uses
  %i.fr = call nsz float @llvm.fmuladd.f32(float %i.ew, float %i.el, float %i.fp) ; 3 uses
  %i.fs = load float, ptr %i.ai, align 8, !tbaa !29 ; 3 uses
  %i.ft = fneg nsz float %i.fr
  %i.fu = load <2 x float>, ptr %i.aj, align 4, !tbaa !29 ; 4 uses
  %i.fv = insertelement <2 x float> poison, float %i.ey, i64 0
  %i.fw = shufflevector <2 x float> %i.fv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fx = shufflevector <2 x float> %i.fu, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fy = insertelement <2 x float> %i.fx, float %i.fs, i64 0
  %i.fz = fmul nsz <2 x float> %i.fw, %i.fy
  %i.ga = shufflevector <2 x float> %i.fq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gb = insertelement <2 x float> %i.ga, float %i.fr, i64 1
  %i.gc = insertelement <2 x float> poison, float %i.dy, i64 0
  %i.gd = shufflevector <2 x float> %i.gc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ge = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gb, <2 x float> %i.gd, <2 x float> %i.fz)
  %i.gf = insertelement <2 x float> poison, float %i.fr, i64 0
  %i.gg = shufflevector <2 x float> %i.gf, <2 x float> %i.fq, <2 x i32> <i32 0, i32 2>
  %i.gh = insertelement <2 x float> %i.fx, float %i.fs, i64 1
  %i.gi = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gg, <2 x float> %i.gh, <2 x float> %i.ge)
  %i.gj = fneg nsz <2 x float> %i.fq
  %i.gk = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gj, <2 x float> %i.fu, <2 x float> %i.gi) ; 4 uses
  %i.gl = extractelement <2 x float> %i.fu, i64 1
  %i.gm = fmul nsz float %i.ey, %i.gl
  %i.gn = extractelement <2 x float> %i.fq, i64 0
  %i.go = call nsz float @llvm.fmuladd.f32(float %i.gn, float %i.dy, float %i.gm)
  %i.gp = extractelement <2 x float> %i.fq, i64 1
  %i.gq = extractelement <2 x float> %i.fu, i64 0
  %i.gr = call nsz float @llvm.fmuladd.f32(float %i.gp, float %i.gq, float %i.go)
  %i.gs = call nsz float @llvm.fmuladd.f32(float %i.ft, float %i.fs, float %i.gr) ; 3 uses
  %foldExtExtBinop141 = fmul nsz <2 x float> %i.gk, %i.gk
  %i.gt = extractelement <2 x float> %foldExtExtBinop141, i64 1
  %i.gu = extractelement <2 x float> %i.gk, i64 0 ; 2 uses
  %i.gv = call nsz float @llvm.fmuladd.f32(float %i.gu, float %i.gu, float %i.gt)
  %i.gw = call nsz float @llvm.fmuladd.f32(float %i.gs, float %i.gs, float %i.gv)
  %i.gx = call nsz float @llvm.sqrt.f32(float %i.gw) ; 2 uses
  %i.gy = insertelement <2 x float> poison, float %i.gx, i64 0
  %i.gz = shufflevector <2 x float> %i.gy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ha = fdiv nsz <2 x float> %i.gk, %i.gz
  %i.hb = fdiv nsz float %i.gs, %i.gx
  %i.hc = load <2 x float>, ptr %i.ak, align 4, !tbaa !29
  %i.hd = fmul nsz <2 x float> %i.hc, %i.ha
  store <2 x float> %i.hd, ptr %i.c, align 8, !tbaa !29
  %i.he = load float, ptr %i.al, align 4, !tbaa !29
  %i.hf = fmul nsz float %i.hb, %i.he
  store float %i.hf, ptr %i.ac, align 8, !tbaa !29
  %i.hg = load i32, ptr %i.am, align 4, !tbaa !60
  %.not119 = icmp eq i32 %i.hg, 0
  %i.hh = load ptr, ptr %i.an, align 8, !tbaa !61 ; 2 uses
  br i1 %.not119, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.hi = call i32 %i.hh(ptr noundef nonnull %i.e, ptr noundef nonnull %i.c, i32 noundef %i.bf, i32 noundef %i.bd, ptr noundef nonnull %i.ao, ptr noundef nonnull %4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #17
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.hj = call i32 %i.hh(ptr noundef nonnull %i.e, ptr noundef nonnull %i.c, i32 noundef %i.bd, i32 noundef %i.bf, ptr noundef nonnull %4, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #17
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0109 = phi i32 [ %i.hi, %bb.m ], [ %i.hj, %bb.n ]
  %i.hk = load i32, ptr %i.ap, align 8, !tbaa !161
  %i.hl = load i32, ptr %i.aq, align 4, !tbaa !162
  %.not.i = icmp eq i32 %i.hk, 0
  br i1 %.not.i, label %.loopexit30.i, label %.preheader29.i

.preheader29.i:                                   ; preds = %bb.o
  %i.hm = load <8 x i16>, ptr %4, align 16, !tbaa !18
  %i.hn = xor <8 x i16> %i.hm, splat (i16 -1)
  %i.ho = add <8 x i16> %i.cb, %i.hn
  store <8 x i16> %i.ho, ptr %4, align 16, !tbaa !18
  %i.hp = load <8 x i16>, ptr %i.ar, align 16, !tbaa !18
  %i.hq = xor <8 x i16> %i.hp, splat (i16 -1)
  %i.hr = add <8 x i16> %i.cb, %i.hq
  store <8 x i16> %i.hr, ptr %i.ar, align 16, !tbaa !18
  br label %.loopexit30.i

.loopexit30.i:                                    ; preds = %.preheader29.i, %bb.o
  %.not26.i = icmp eq i32 %i.hl, 0
  br i1 %.not26.i, label %input_flip.exit, label %.preheader27.i
end_hunk_0
