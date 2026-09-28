Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/nanovg?download=true
inline.NumInlined: 893
inline.NumDeleted: 136
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 56
begin_hunk_0_@nvgArc:bb.a
  %i.cu = tail call float @sinf(float noundef %i.cs) #40 ; 2 uses
  %i.cv = fneg float %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  store float 2.000000e+00, ptr %i.cw, align 4, !tbaa !81
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.cy = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.cz = insertelement <2 x float> %i.cy, float %i.cu, i64 1
  %i.da = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cz, <2 x float> %i.aq, <2 x float> %i.as) ; 3 uses
  %i.db = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.dc = insertelement <2 x float> %i.db, float %i.ct, i64 1
  %i.dd = fmul <2 x float> %i.aq, %i.dc
  %i.de = fmul <2 x float> %i.av, %i.dd           ; 2 uses
  %i.df = shufflevector <2 x float> %i.cg, <2 x float> %i.da, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.dg = shufflevector <2 x float> %i.de, <2 x float> %i.ck, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.dh = fadd <4 x float> %i.df, %i.dg
  %i.di = fsub <4 x float> %i.df, %i.dg
  %i.dj = shufflevector <4 x float> %i.dh, <4 x float> %i.di, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.dj, ptr %i.cx, align 8, !tbaa !81
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store <2 x float> %i.da, ptr %i.dk, align 8, !tbaa !81
  %exitcond.not.2 = icmp eq i32 %i.t, 3
  br i1 %exitcond.not.2, label %.loopexit90, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dl = fdiv float 4.000000e+00, %i.w
  %i.dm = tail call float @llvm.fmuladd.f32(float %.2, float %i.dl, float %4) ; 2 uses
  %i.dn = tail call float @cosf(float noundef %i.dm) #40 ; 2 uses
  %i.do = tail call float @sinf(float noundef %i.dm) #40 ; 2 uses
  %i.dp = fneg float %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store float 2.000000e+00, ptr %i.dq, align 16, !tbaa !81
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  %i.ds = insertelement <2 x float> poison, float %i.dn, i64 0
  %i.dt = insertelement <2 x float> %i.ds, float %i.do, i64 1
  %i.du = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dt, <2 x float> %i.aq, <2 x float> %i.as) ; 3 uses
  %i.dv = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.dw = insertelement <2 x float> %i.dv, float %i.dn, i64 1
  %i.dx = fmul <2 x float> %i.aq, %i.dw
  %i.dy = fmul <2 x float> %i.av, %i.dx           ; 2 uses
  %i.dz = shufflevector <2 x float> %i.da, <2 x float> %i.du, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.ea = shufflevector <2 x float> %i.dy, <2 x float> %i.de, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.eb = fadd <4 x float> %i.dz, %i.ea
  %i.ec = fsub <4 x float> %i.dz, %i.ea
  %i.ed = shufflevector <4 x float> %i.eb, <4 x float> %i.ec, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.ed, ptr %i.dr, align 4, !tbaa !81
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  store <2 x float> %i.du, ptr %i.ee, align 4, !tbaa !81
  %exitcond.not.3 = icmp eq i32 %i.t, 4
  br i1 %exitcond.not.3, label %.loopexit90, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ef = fdiv float 5.000000e+00, %i.w
  %i.eg = tail call float @llvm.fmuladd.f32(float %.2, float %i.ef, float %4) ; 2 uses
  %i.eh = tail call float @cosf(float noundef %i.eg) #40 ; 2 uses
  %i.ei = tail call float @sinf(float noundef %i.eg) #40 ; 2 uses
  %i.ej = fneg float %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  store float 2.000000e+00, ptr %i.ek, align 4, !tbaa !81
  %i.el = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.em = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.en = insertelement <2 x float> %i.em, float %i.ei, i64 1
  %i.eo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.en, <2 x float> %i.aq, <2 x float> %i.as) ; 2 uses
  %i.ep = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.eq = insertelement <2 x float> %i.ep, float %i.eh, i64 1
  %i.er = fmul <2 x float> %i.aq, %i.eq
  %i.es = fmul <2 x float> %i.av, %i.er
  %i.et = shufflevector <2 x float> %i.du, <2 x float> %i.eo, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.eu = shufflevector <2 x float> %i.es, <2 x float> %i.dy, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.ev = fadd <4 x float> %i.et, %i.eu
  %i.ew = fsub <4 x float> %i.et, %i.eu
  %i.ex = shufflevector <4 x float> %i.ev, <4 x float> %i.ew, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.ex, ptr %i.el, align 16, !tbaa !81
  %i.ey = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store <2 x float> %i.eo, ptr %i.ey, align 16, !tbaa !81
  br label %.loopexit90

.loopexit90:                                      ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %.peel.next
  %.lcssa = phi i32 [ 10, %.peel.next ], [ 17, %bb.d ], [ 24, %bb.e ], [ 31, %bb.f ], [ 38, %bb.g ]
  call fastcc void @nvg__appendCommands(ptr noundef nonnull %0, ptr noundef %i.a, i32 noundef %.lcssa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @nvgClosePath(ptr nofree noundef captures(none) %0) local_unnamed_addr #19 {
bb.a:
  %i.a = alloca [1 x float], align 4              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i32 1077936128, ptr %i.a, align 4
  call fastcc void @nvg__appendCommands(ptr noundef %0, ptr noundef %i.a, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @nvgPathWinding(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #19 {
bb.a:
  %i.a = alloca [2 x float], align 4              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store float 4.000000e+00, ptr %i.a, align 4, !tbaa !81
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = sitofp i32 %1 to float
  store float %i.c, ptr %i.b, align 4, !tbaa !81
  call fastcc void @nvg__appendCommands(ptr noundef %0, ptr noundef %i.a, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @nvgRect(ptr nofree noundef captures(none) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #19 {
bb.a:
  %i.a = alloca [13 x float], align 16            ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store float 0.000000e+00, ptr %i.a, align 16, !tbaa !81
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store float %1, ptr %i.b, align 4, !tbaa !81
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %2, ptr %i.c, align 8, !tbaa !81
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float 1.000000e+00, ptr %i.d, align 4, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store float %1, ptr %i.e, align 16, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.g = fadd float %2, %4                        ; 2 uses
  store float %i.g, ptr %i.f, align 4, !tbaa !81
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store float 1.000000e+00, ptr %i.h, align 8, !tbaa !81
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.j = fadd float %1, %3                        ; 2 uses
  store float %i.j, ptr %i.i, align 4, !tbaa !81
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store float %i.g, ptr %i.k, align 16, !tbaa !81
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store float 1.000000e+00, ptr %i.l, align 4, !tbaa !81
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store float %i.j, ptr %i.m, align 8, !tbaa !81
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store float %2, ptr %i.n, align 4, !tbaa !81
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store float 3.000000e+00, ptr %i.o, align 16, !tbaa !81
  call fastcc void @nvg__appendCommands(ptr noundef %0, ptr noundef %i.a, i32 noundef 13)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @nvgRoundedRect(ptr nofree noundef captures(none) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5) local_unnamed_addr #19 {
bb.a:
  tail call void @nvgRoundedRectVarying(ptr noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %5, float noundef %5, float noundef %5)
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @nvgRoundedRectVarying(ptr nofree noundef captures(none) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8) local_unnamed_addr #19 {
bb.a:
  %i.a = alloca [13 x float], align 16            ; 16 uses
  %i.b = alloca [44 x float], align 16            ; 45 uses
  %i.c = fcmp olt float %5, 1.000000e-01
  %i.d = fcmp olt float %6, 1.000000e-01
  %or.cond = and i1 %i.c, %i.d
  %i.e = fcmp olt float %7, 1.000000e-01
  %or.cond3 = and i1 %or.cond, %i.e
  %i.f = fcmp olt float %8, 1.000000e-01
  %or.cond5 = and i1 %or.cond3, %i.f
  br i1 %or.cond5, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store float 0.000000e+00, ptr %i.a, align 16, !tbaa !81
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store float %1, ptr %i.g, align 4, !tbaa !81
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %2, ptr %i.h, align 8, !tbaa !81
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float 1.000000e+00, ptr %i.i, align 4, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store float %1, ptr %i.j, align 16, !tbaa !81
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.l = fadd float %2, %4                        ; 2 uses
  store float %i.l, ptr %i.k, align 4, !tbaa !81
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store float 1.000000e+00, ptr %i.m, align 8, !tbaa !81
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.o = fadd float %1, %3                        ; 2 uses
  store float %i.o, ptr %i.n, align 4, !tbaa !81
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store float %i.l, ptr %i.p, align 16, !tbaa !81
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store float 1.000000e+00, ptr %i.q, align 4, !tbaa !81
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store float %i.o, ptr %i.r, align 8, !tbaa !81
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store float %2, ptr %i.s, align 4, !tbaa !81
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store float 3.000000e+00, ptr %i.t, align 16, !tbaa !81
  call fastcc void @nvg__appendCommands(ptr noundef %0, ptr noundef %i.a, i32 noundef 13)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = insertelement <2 x float> poison, float %3, i64 0
  %i.v = insertelement <2 x float> %i.u, float %4, i64 1 ; 3 uses
  %i.w = fneg <2 x float> %i.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  store float 0.000000e+00, ptr %i.b, align 16, !tbaa !81
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store float %1, ptr %i.x, align 4, !tbaa !81
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store float 1.000000e+00, ptr %i.z, align 4, !tbaa !81
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store float %1, ptr %i.aa, align 16, !tbaa !81
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store float 2.000000e+00, ptr %i.ac, align 8, !tbaa !81
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store float %1, ptr %i.ad, align 4, !tbaa !81
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.af = fadd float %2, %4                       ; 8 uses
  %i.ag = insertelement <2 x float> poison, float %i.af, i64 0
  %i.ah = insertelement <2 x float> %i.ag, float %1, i64 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store float %i.af, ptr %i.ai, align 8, !tbaa !81
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store float %i.af, ptr %i.ak, align 16, !tbaa !81
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  store float 1.000000e+00, ptr %i.al, align 4, !tbaa !81
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store float %i.af, ptr %i.an, align 4, !tbaa !81
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store float 2.000000e+00, ptr %i.ao, align 16, !tbaa !81
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store float %i.af, ptr %i.aq, align 8, !tbaa !81
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  store float 1.000000e+00, ptr %i.av, align 4, !tbaa !81
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store float 2.000000e+00, ptr %i.ay, align 8, !tbaa !81
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.bb = fadd float %1, %3                       ; 8 uses
  store float %i.bb, ptr %i.ar, align 4, !tbaa !81
  store float %i.bb, ptr %i.at, align 4, !tbaa !81
  store float %i.bb, ptr %i.aw, align 16, !tbaa !81
  store float %i.bb, ptr %i.az, align 4, !tbaa !81
  %i.bc = insertelement <2 x float> poison, float %2, i64 0
  %i.bd = insertelement <2 x float> %i.bc, float %i.bb, i64 1
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store float %2, ptr %i.be, align 8, !tbaa !81
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store float %2, ptr %i.bg, align 16, !tbaa !81
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  store float 1.000000e+00, ptr %i.bh, align 4, !tbaa !81
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  store float %2, ptr %i.bj, align 4, !tbaa !81
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store float 2.000000e+00, ptr %i.bk, align 16, !tbaa !81
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store float %2, ptr %i.bm, align 8, !tbaa !81
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 156
  store float %1, ptr %i.bn, align 4, !tbaa !81
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %9 = fcmp oge <2 x float> %i.v, zeroinitializer ; 2 uses
  %i.bp = select <2 x i1> %9, <2 x float> %i.v, <2 x float> %i.w
  %10 = shufflevector <2 x float> %i.bp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bq = fmul <4 x float> %10, splat (float 5.000000e-01) ; 4 uses
  %i.br = insertelement <4 x float> poison, float %8, i64 0
  %i.bs = insertelement <4 x float> %i.br, float %6, i64 1
  %11 = shufflevector <4 x float> %i.bs, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %12 = fcmp olt <4 x float> %11, %i.bq
  %13 = select <4 x i1> %12, <4 x float> %11, <4 x float> %i.bq ; 3 uses
  %14 = extractelement <4 x float> %13, i64 0
  %15 = extractelement <4 x float> %i.bq, i64 0   ; 4 uses
  %16 = fcmp olt float %7, %15
  %17 = select i1 %16, float %7, float %15
  %18 = extractelement <4 x float> %i.bq, i64 1   ; 4 uses
  %19 = fcmp olt float %7, %18
  %i.bt = select i1 %19, float %7, float %18
  %i.bu = extractelement <4 x float> %13, i64 3
  %20 = fcmp olt float %5, %15
  %21 = select i1 %20, float %5, float %15
  %i.bv = fcmp olt float %5, %18
  %i.bw = select i1 %i.bv, float %5, float %18
  %22 = insertelement <4 x float> poison, float %i.af, i64 0
  %23 = insertelement <4 x float> %22, float %i.bb, i64 1
  %24 = insertelement <4 x float> %23, float %1, i64 2
  %25 = insertelement <4 x float> %24, float %2, i64 3
  %26 = select <2 x i1> %9, <2 x float> splat (float 1.000000e+00), <2 x float> splat (float -1.000000e+00) ; 3 uses
  %27 = shufflevector <2 x float> %26, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %28 = extractelement <2 x float> %26, i64 0     ; 3 uses
  %29 = fmul float %28, %14                       ; 2 uses
  %i.bx = fmul float %28, %17                     ; 2 uses
  %i.by = extractelement <2 x float> %26, i64 1   ; 3 uses
  %i.bz = fmul float %i.by, %i.bt                 ; 2 uses
  %30 = shufflevector <4 x float> %13, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %31 = fmul <2 x float> %27, %30                 ; 3 uses
  %i.ca = fmul float %i.by, %i.bu                 ; 2 uses
  %32 = fmul float %28, %21                       ; 2 uses
  %i.cb = fmul float %i.by, %i.bw                 ; 2 uses
  %i.cc = fadd float %2, %i.cb                    ; 2 uses
  store float %i.cc, ptr %i.y, align 8, !tbaa !81
  %33 = extractelement <2 x float> %31, i64 0
  %i.cd = fsub float %i.af, %33
  store float %i.cd, ptr %i.ab, align 4, !tbaa !81
  %34 = fneg <2 x float> %31                      ; 2 uses
  %i.ce = insertelement <2 x float> %34, float %29, i64 1
  %i.cf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> splat (float f0x3EE53AEE), <2 x float> %i.ah)
  store <2 x float> %i.cf, ptr %i.ae, align 16, !tbaa !81
  %i.cg = fadd float %1, %29
  store float %i.cg, ptr %i.aj, align 4, !tbaa !81
  %i.ch = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.ci = insertelement <2 x float> %i.ch, float %i.bx, i64 1
  %i.cj = fneg <2 x float> %i.ci
  %i.ck = insertelement <4 x float> poison, float %32, i64 2
  %i.cl = insertelement <4 x float> %i.ck, float %i.cb, i64 3
  %i.cm = shufflevector <2 x float> %i.cj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> %i.cl, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.co = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cn, <4 x float> splat (float f0x3EE53AEE), <4 x float> %25) ; 4 uses
  %i.cp = extractelement <4 x float> %i.co, i64 0
  store float %i.cp, ptr %i.as, align 16, !tbaa !81
  %i.cq = fsub float %i.af, %i.bz
  store float %i.cq, ptr %i.au, align 8, !tbaa !81
  %i.cr = fadd float %2, %i.ca
  store float %i.cr, ptr %i.ax, align 4, !tbaa !81
  %i.cs = fsub float %i.bb, %i.bx
  store float %i.cs, ptr %i.am, align 8, !tbaa !81
  %i.ct = extractelement <4 x float> %i.co, i64 1
  store float %i.ct, ptr %i.ap, align 4, !tbaa !81
  %i.cu = insertelement <2 x float> %34, float %i.ca, i64 0
  %35 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cu, <2 x float> splat (float f0x3EE53AEE), <2 x float> %i.bd)
  store <2 x float> %35, ptr %i.ba, align 16, !tbaa !81
  %36 = extractelement <2 x float> %31, i64 1
  %i.cv = fsub float %i.bb, %36
  store float %i.cv, ptr %i.bf, align 4, !tbaa !81
  %i.cw = fadd float %1, %32
  store float %i.cw, ptr %i.bi, align 8, !tbaa !81
  %i.cx = extractelement <4 x float> %i.co, i64 2
  store float %i.cx, ptr %i.bl, align 4, !tbaa !81
  %i.cy = extractelement <4 x float> %i.co, i64 3
  store float %i.cy, ptr %i.bo, align 16, !tbaa !81
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 164
  store float %1, ptr %i.cz, align 4, !tbaa !81
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  store float %i.cc, ptr %i.da, align 8, !tbaa !81
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 172
  store float 3.000000e+00, ptr %i.db, align 4, !tbaa !81
  call fastcc void @nvg__appendCommands(ptr noundef %0, ptr noundef %i.b, i32 noundef 44)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @nvgEllipse(ptr nofree noundef captures(none) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #19 {
bb.a:
  %i.a = alloca [32 x float], align 16            ; 32 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store float 0.000000e+00, ptr %i.a, align 16, !tbaa !81
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = fsub float %1, %3                        ; 4 uses
  store float %i.c, ptr %i.b, align 4, !tbaa !81
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %2, ptr %i.d, align 8, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float 2.000000e+00, ptr %i.e, align 4, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store float %i.c, ptr %i.f, align 16, !tbaa !81
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.h = fneg float %3
  %i.i = insertelement <2 x float> poison, float %4, i64 0
  %i.j = insertelement <2 x float> %i.i, float %i.h, i64 1
  %i.k = insertelement <2 x float> poison, float %2, i64 0
  %i.l = insertelement <2 x float> %i.k, float %1, i64 1 ; 2 uses
  %i.m = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.j, <2 x float> splat (float f0x3F0D6289), <2 x float> %i.l) ; 3 uses
  store <2 x float> %i.m, ptr %i.g, align 4, !tbaa !81
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.o = fadd float %2, %4                        ; 3 uses
  store float %i.o, ptr %i.n, align 4, !tbaa !81
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store float %1, ptr %i.p, align 16, !tbaa !81
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store float %i.o, ptr %i.q, align 4, !tbaa !81
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store float 2.000000e+00, ptr %i.r, align 8, !tbaa !81
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store float %i.o, ptr %i.t, align 16, !tbaa !81
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.v = fadd float %1, %3                        ; 3 uses
  store float %i.v, ptr %i.u, align 4, !tbaa !81
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.x = extractelement <2 x float> %i.m, i64 0
  store float %i.x, ptr %i.w, align 8, !tbaa !81
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  store float %i.v, ptr %i.y, align 4, !tbaa !81
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store float %2, ptr %i.z, align 16, !tbaa !81
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  store float 2.000000e+00, ptr %i.aa, align 4, !tbaa !81
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store float %i.v, ptr %i.ab, align 8, !tbaa !81
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %i.ad = fneg float %4
  %i.ae = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %3, i64 1
  %i.ag = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> splat (float f0x3F0D6289), <2 x float> %i.l) ; 3 uses
  %i.ah = extractelement <2 x float> %i.ag, i64 1
  store float %i.ah, ptr %i.s, align 4, !tbaa !81
  store <2 x float> %i.ag, ptr %i.ac, align 4, !tbaa !81
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  %i.aj = fsub float %2, %4                       ; 3 uses
  store float %i.aj, ptr %i.ai, align 4, !tbaa !81
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store float %1, ptr %i.ak, align 8, !tbaa !81
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 92
  store float %i.aj, ptr %i.al, align 4, !tbaa !81
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.an = insertelement <2 x float> %i.m, float 2.000000e+00, i64 0
  store <2 x float> %i.an, ptr %i.am, align 16, !tbaa !81
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store float %i.aj, ptr %i.ao, align 8, !tbaa !81
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  store float %i.c, ptr %i.ap, align 4, !tbaa !81
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.ar = extractelement <2 x float> %i.ag, i64 0
  store float %i.ar, ptr %i.aq, align 16, !tbaa !81
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  store float %i.c, ptr %i.as, align 4, !tbaa !81
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store float %2, ptr %i.at, align 8, !tbaa !81
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  store float 3.000000e+00, ptr %i.au, align 4, !tbaa !81
  call fastcc void @nvg__appendCommands(ptr noundef %0, ptr noundef %i.a, i32 noundef 32)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @nvgCircle(ptr nofree noundef captures(none) %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #19 {
bb.a:
  %i.a = alloca [32 x float], align 16            ; 32 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store float 0.000000e+00, ptr %i.a, align 16, !tbaa !81
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = fsub float %1, %3                        ; 4 uses
  store float %i.c, ptr %i.b, align 4, !tbaa !81
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %2, ptr %i.d, align 8, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float 2.000000e+00, ptr %i.e, align 4, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store float %i.c, ptr %i.f, align 16, !tbaa !81
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.h = fneg float %3                            ; 2 uses
  %i.i = insertelement <2 x float> poison, float %3, i64 0
  %i.j = insertelement <2 x float> %i.i, float %i.h, i64 1
  %i.k = insertelement <2 x float> poison, float %2, i64 0
  %i.l = insertelement <2 x float> %i.k, float %1, i64 1 ; 2 uses
  %i.m = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.j, <2 x float> splat (float f0x3F0D6289), <2 x float> %i.l) ; 3 uses
  store <2 x float> %i.m, ptr %i.g, align 4, !tbaa !81
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.o = fadd float %2, %3                        ; 3 uses
  store float %i.o, ptr %i.n, align 4, !tbaa !81
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store float %1, ptr %i.p, align 16, !tbaa !81
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store float %i.o, ptr %i.q, align 4, !tbaa !81
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store float 2.000000e+00, ptr %i.r, align 8, !tbaa !81
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store float %i.o, ptr %i.t, align 16, !tbaa !81
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.v = fadd float %1, %3                        ; 3 uses
  store float %i.v, ptr %i.u, align 4, !tbaa !81
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.x = extractelement <2 x float> %i.m, i64 0
  store float %i.x, ptr %i.w, align 8, !tbaa !81
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  store float %i.v, ptr %i.y, align 4, !tbaa !81
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store float %2, ptr %i.z, align 16, !tbaa !81
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  store float 2.000000e+00, ptr %i.aa, align 4, !tbaa !81
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store float %i.v, ptr %i.ab, align 8, !tbaa !81
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %i.ad = insertelement <2 x float> poison, float %i.h, i64 0
  %i.ae = insertelement <2 x float> %i.ad, float %3, i64 1
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> splat (float f0x3F0D6289), <2 x float> %i.l) ; 3 uses
  %i.ag = extractelement <2 x float> %i.af, i64 1
  store float %i.ag, ptr %i.s, align 4, !tbaa !81
  store <2 x float> %i.af, ptr %i.ac, align 4, !tbaa !81
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  %i.ai = fsub float %2, %3                       ; 3 uses
  store float %i.ai, ptr %i.ah, align 4, !tbaa !81
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store float %1, ptr %i.aj, align 8, !tbaa !81
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 92
  store float %i.ai, ptr %i.ak, align 4, !tbaa !81
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.am = insertelement <2 x float> %i.m, float 2.000000e+00, i64 0
  store <2 x float> %i.am, ptr %i.al, align 16, !tbaa !81
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store float %i.ai, ptr %i.an, align 8, !tbaa !81
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  store float %i.c, ptr %i.ao, align 4, !tbaa !81
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.aq = extractelement <2 x float> %i.af, i64 0
  store float %i.aq, ptr %i.ap, align 16, !tbaa !81
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  store float %i.c, ptr %i.ar, align 4, !tbaa !81
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store float %2, ptr %i.as, align 8, !tbaa !81
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  store float 3.000000e+00, ptr %i.at, align 4, !tbaa !81
  call fastcc void @nvg__appendCommands(ptr noundef %0, ptr noundef %i.a, i32 noundef 32)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @nvgDebugDumpPathCache(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #35 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8848 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !222
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !256
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.d) ; 0 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !222  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !256
  %i.i = icmp sgt i32 %i.h, 0
end_hunk_0
