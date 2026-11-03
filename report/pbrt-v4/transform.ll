Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/transform?download=true
inline.NumInlined: 2588
inline.NumDeleted: 406
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZNK4pbrt17AnimatedTransform12MotionBoundsERKNS_7Bounds3IfEE:bb.a
  call void @_ZNK4pbrt17AnimatedTransform16BoundPointMotionENS_6Point3IfEE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Bounds3") align 4 %5, ptr noundef nonnull align 4 dereferenceable(696) %1, <2 x float> %.sroa.0.4.vec.insert.i.1, float %.sroa.22.0.copyload.i27.i.1)
  %.sroa.018.0.copyload.i14.1 = load <2 x float>, ptr %5, align 8, !tbaa !11, !noalias !165 ; 2 uses
  %.sroa.219.0.copyload.i16.1 = load float, ptr %.sroa.219.0..sroa_idx.i15, align 8, !tbaa !11, !noalias !165 ; 2 uses
  %i.bd = fcmp olt <2 x float> %.sroa.018.0.copyload.i14.1, %i.ax
  %i.be = select <2 x i1> %i.bd, <2 x float> %.sroa.018.0.copyload.i14.1, <2 x float> %i.ax ; 2 uses
  %i.bf = fcmp olt float %.sroa.219.0.copyload.i16.1, %.sroa.speculated.i.i21
  %.sroa.speculated.i.i21.1 = select i1 %i.bf, float %.sroa.219.0.copyload.i16.1, float %.sroa.speculated.i.i21 ; 2 uses
  %.sroa.05.0.copyload.i27.1 = load <2 x float>, ptr %i.u, align 4, !tbaa !11, !noalias !165 ; 2 uses
  %.sroa.26.0.copyload.i29.1 = load float, ptr %.sroa.26.0..sroa_idx.i28, align 4, !tbaa !11, !noalias !165 ; 2 uses
  %i.bg = fcmp olt <2 x float> %i.ba, %.sroa.05.0.copyload.i27.1
  %i.bh = select <2 x i1> %i.bg, <2 x float> %.sroa.05.0.copyload.i27.1, <2 x float> %i.ba ; 2 uses
  %i.bi = fcmp olt float %.sroa.speculated.i31.i34, %.sroa.26.0.copyload.i29.1
  %.sroa.speculated.i31.i34.1 = select i1 %i.bi, float %.sroa.26.0.copyload.i29.1, float %.sroa.speculated.i31.i34 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %.sroa.01.0.copyload.i.i.2 = load <2 x float>, ptr %2, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.01.0.copyload.i19.i.2 = load <2 x float>, ptr %i.bj, align 4
  %.sroa.22.0.copyload.i27.i.2 = load float, ptr %.sroa.22.0..sroa_idx.i26.i, align 4
  %.sroa.0.4.vec.insert.i.2 = shufflevector <2 x float> %.sroa.01.0.copyload.i.i.2, <2 x float> %.sroa.01.0.copyload.i19.i.2, <2 x i32> <i32 0, i32 3>
  call void @_ZNK4pbrt17AnimatedTransform16BoundPointMotionENS_6Point3IfEE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Bounds3") align 4 %5, ptr noundef nonnull align 4 dereferenceable(696) %1, <2 x float> %.sroa.0.4.vec.insert.i.2, float %.sroa.22.0.copyload.i27.i.2)
  %.sroa.018.0.copyload.i14.2 = load <2 x float>, ptr %5, align 8, !tbaa !11, !noalias !165 ; 2 uses
  %.sroa.219.0.copyload.i16.2 = load float, ptr %.sroa.219.0..sroa_idx.i15, align 8, !tbaa !11, !noalias !165 ; 2 uses
  %i.bk = fcmp olt <2 x float> %.sroa.018.0.copyload.i14.2, %i.be
  %i.bl = select <2 x i1> %i.bk, <2 x float> %.sroa.018.0.copyload.i14.2, <2 x float> %i.be ; 2 uses
  %i.bm = fcmp olt float %.sroa.219.0.copyload.i16.2, %.sroa.speculated.i.i21.1
  %.sroa.speculated.i.i21.2 = select i1 %i.bm, float %.sroa.219.0.copyload.i16.2, float %.sroa.speculated.i.i21.1 ; 2 uses
  %.sroa.05.0.copyload.i27.2 = load <2 x float>, ptr %i.u, align 4, !tbaa !11, !noalias !165 ; 2 uses
  %.sroa.26.0.copyload.i29.2 = load float, ptr %.sroa.26.0..sroa_idx.i28, align 4, !tbaa !11, !noalias !165 ; 2 uses
  %i.bn = fcmp olt <2 x float> %i.bh, %.sroa.05.0.copyload.i27.2
  %i.bo = select <2 x i1> %i.bn, <2 x float> %.sroa.05.0.copyload.i27.2, <2 x float> %i.bh ; 2 uses
  %i.bp = fcmp olt float %.sroa.speculated.i31.i34.1, %.sroa.26.0.copyload.i29.2
  %.sroa.speculated.i31.i34.2 = select i1 %i.bp, float %.sroa.26.0.copyload.i29.2, float %.sroa.speculated.i31.i34.1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.01.0.copyload.i.i.3 = load <2 x float>, ptr %i.bq, align 4
  %.sroa.22.0.copyload.i27.i.3 = load float, ptr %.sroa.22.0..sroa_idx.i26.i, align 4
  call void @_ZNK4pbrt17AnimatedTransform16BoundPointMotionENS_6Point3IfEE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Bounds3") align 4 %5, ptr noundef nonnull align 4 dereferenceable(696) %1, <2 x float> %.sroa.01.0.copyload.i.i.3, float %.sroa.22.0.copyload.i27.i.3)
  %.sroa.018.0.copyload.i14.3 = load <2 x float>, ptr %5, align 8, !tbaa !11, !noalias !165 ; 2 uses
  %.sroa.219.0.copyload.i16.3 = load float, ptr %.sroa.219.0..sroa_idx.i15, align 8, !tbaa !11, !noalias !165 ; 2 uses
  %i.br = fcmp olt <2 x float> %.sroa.018.0.copyload.i14.3, %i.bl
  %i.bs = select <2 x i1> %i.br, <2 x float> %.sroa.018.0.copyload.i14.3, <2 x float> %i.bl
  %i.bt = fcmp olt float %.sroa.219.0.copyload.i16.3, %.sroa.speculated.i.i21.2
  %.sroa.speculated.i.i21.3 = select i1 %i.bt, float %.sroa.219.0.copyload.i16.3, float %.sroa.speculated.i.i21.2
  %.sroa.05.0.copyload.i27.3 = load <2 x float>, ptr %i.u, align 4, !tbaa !11, !noalias !165 ; 2 uses
  %.sroa.26.0.copyload.i29.3 = load float, ptr %.sroa.26.0..sroa_idx.i28, align 4, !tbaa !11, !noalias !165 ; 2 uses
  %i.bu = fcmp olt <2 x float> %i.bo, %.sroa.05.0.copyload.i27.3
  %i.bv = select <2 x i1> %i.bu, <2 x float> %.sroa.05.0.copyload.i27.3, <2 x float> %i.bo
  %i.bw = fcmp olt float %.sroa.speculated.i31.i34.2, %.sroa.26.0.copyload.i29.3
  %.sroa.speculated.i31.i34.3 = select i1 %i.bw, float %.sroa.26.0.copyload.i29.3, float %.sroa.speculated.i31.i34.2
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  store <2 x float> %i.bs, ptr %0, align 4
  store float %.sroa.speculated.i.i21.3, ptr %i.av, align 4
  store <2 x float> %i.bv, ptr %i.s, align 4
  store float %.sroa.speculated.i31.i34.3, ptr %i.au, align 4
  br label %bb.e

bb.e:                                             ; preds = %.peel.next103, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt17AnimatedTransform16BoundPointMotionENS_6Point3IfEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.pbrt::Bounds3") align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(696) %1, <2 x float> %2, float %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca [8 x float], align 16             ; 12 uses
  %i.b = alloca i32, align 4                      ; 18 uses
  %i.c = alloca i32, align 4                      ; 10 uses
  %i.d = alloca i64, align 8                      ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.f = load i8, ptr %i.e, align 4, !tbaa !65, !range !15, !noundef !16
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.013.0.vec.extract.i93 = extractelement <2 x float> %2, i64 0
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load float, ptr %i.i, align 4, !tbaa !11
  %i.k = fmul float %.sroa.013.0.vec.extract.i93, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.m = load float, ptr %i.l, align 4, !tbaa !11
  %i.n = extractelement <2 x float> %2, i64 1
  %i.o = fmul float %i.n, %i.m
  %i.p = fadd float %i.k, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load float, ptr %i.q, align 4, !tbaa !11
  %i.s = fmul float %3, %i.r
  %i.t = fadd float %i.p, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.v = load float, ptr %i.u, align 4, !tbaa !11
  %i.w = fadd float %i.v, %i.t                    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.y = load <2 x float>, ptr %i.x, align 4, !tbaa !11
  %i.z = fmul <2 x float> %2, %i.y                ; 2 uses
  %shift = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.z, %shift
  %i.aa = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !11
  %i.ad = fmul float %3, %i.ac
  %i.ae = fadd float %i.aa, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ag = load float, ptr %i.af, align 4, !tbaa !11
  %i.ah = fadd float %i.ag, %i.ae                 ; 3 uses
  %i.ai = fcmp oeq float %i.ah, 1.000000e+00      ; 2 uses
  %i.aj = load <8 x float>, ptr %1, align 4, !tbaa !11 ; 4 uses
  %i.ak = shufflevector <8 x float> %i.aj, <8 x float> poison, <2 x i32> <i32 1, i32 4>
  %i.al = fmul <2 x float> %i.h, %i.ak
  %i.am = shufflevector <8 x float> %i.aj, <8 x float> poison, <2 x i32> <i32 0, i32 5>
  %i.an = fmul <2 x float> %2, %i.am
  %i.ao = fadd <2 x float> %i.al, %i.an
  %i.ap = insertelement <2 x float> poison, float %3, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ar = shufflevector <8 x float> %i.aj, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.as = fmul <2 x float> %i.aq, %i.ar
  %i.at = fadd <2 x float> %i.ao, %i.as
  %i.au = shufflevector <8 x float> %i.aj, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.av = fadd <2 x float> %i.au, %i.at           ; 2 uses
  %i.aw = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = fdiv <2 x float> %i.av, %i.ax
  %i.az = fdiv float %i.w, %i.ah
  %i.ba = insertelement <2 x i1> poison, i1 %i.ai, i64 0
  %i.bb = shufflevector <2 x i1> %i.ba, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bc = select <2 x i1> %i.bb, <2 x float> %i.av, <2 x float> %i.ay ; 6 uses
  %.sroa.495.0.i97 = select i1 %i.ai, float %i.w, float %i.az ; 6 uses
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store <2 x float> %i.bc, ptr %0, align 4
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sroa.495.0.i97, ptr %.sroa.3.0..sroa_idx.i, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <2 x float> %i.bc, ptr %i.bd, align 4
  %.sroa.3.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %.sroa.495.0.i97, ptr %.sroa.3.0..sroa_idx3.i, align 4
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bf = load <2 x float>, ptr %i.be, align 4, !tbaa !11
  %i.bg = fmul <2 x float> %2, %i.bf              ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bj = load <2 x float>, ptr %i.bi, align 4, !tbaa !11
  %i.bk = fmul <2 x float> %2, %i.bj              ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.bm = load <2 x float>, ptr %i.bl, align 4, !tbaa !11
  %i.bn = fmul <2 x float> %2, %i.bm              ; 2 uses
  %shift175 = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop176 = fadd <2 x float> %i.bn, %shift175
  %i.bo = extractelement <2 x float> %foldExtExtBinop176, i64 0
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !11
  %i.br = fmul float %3, %i.bq
  %i.bs = fadd float %i.bo, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 172
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !11
  %i.bv = fadd float %i.bu, %i.bs                 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bx = load <2 x float>, ptr %i.bw, align 4, !tbaa !11
  %i.by = fmul <2 x float> %2, %i.bx              ; 2 uses
  %shift178 = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop179 = fadd <2 x float> %i.by, %shift178
  %i.bz = extractelement <2 x float> %foldExtExtBinop179, i64 0
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !11
  %i.cc = fmul float %3, %i.cb
  %i.cd = fadd float %i.bz, %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 188
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !11
  %i.cg = fadd float %i.cf, %i.cd                 ; 3 uses
  %i.ch = fcmp oeq float %i.cg, 1.000000e+00      ; 2 uses
  %i.ci = fdiv float %i.bv, %i.cg
  %.sroa.495.0.i106 = select i1 %i.ch, float %i.bv, float %i.ci ; 4 uses
  %i.cj = fcmp olt float %.sroa.495.0.i106, %.sroa.495.0.i97
  %.sroa.speculated.i.i = select i1 %i.cj, float %.sroa.495.0.i106, float %.sroa.495.0.i97 ; 3 uses
  %.sroa.212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.cl = shufflevector <2 x float> %i.bg, <2 x float> %i.bk, <2 x i32> <i32 0, i32 2>
  %i.cm = shufflevector <2 x float> %i.bk, <2 x float> %i.bg, <2 x i32> <i32 3, i32 1>
  %i.cn = fadd <2 x float> %i.cl, %i.cm
  %i.co = tail call <6 x float> @llvm.masked.load.v6f32.p0(ptr nonnull align 4 %i.bh, <6 x i1> <i1 true, i1 true, i1 false, i1 false, i1 true, i1 true>, <6 x float> poison), !tbaa !11 ; 2 uses
  %i.cp = shufflevector <6 x float> %i.co, <6 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.cq = fmul <2 x float> %i.aq, %i.cp
  %i.cr = fadd <2 x float> %i.cn, %i.cq
  %i.cs = shufflevector <6 x float> %i.co, <6 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.ct = fadd <2 x float> %i.cs, %i.cr           ; 2 uses
  %i.cu = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = fdiv <2 x float> %i.ct, %i.cv
  %i.cx = insertelement <2 x i1> poison, i1 %i.ch, i64 0
  %i.cy = shufflevector <2 x i1> %i.cx, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.cz = select <2 x i1> %i.cy, <2 x float> %i.ct, <2 x float> %i.cw ; 4 uses
  %i.da = fcmp olt <2 x float> %i.cz, %i.bc
  %i.db = select <2 x i1> %i.da, <2 x float> %i.cz, <2 x float> %i.bc ; 3 uses
  %i.dc = fcmp olt <2 x float> %i.bc, %i.cz
  %i.dd = select <2 x i1> %i.dc, <2 x float> %i.cz, <2 x float> %i.bc ; 3 uses
  %i.de = fcmp olt float %.sroa.495.0.i97, %.sroa.495.0.i106
  %.sroa.speculated.i34.i = select i1 %i.de, float %.sroa.495.0.i106, float %.sroa.495.0.i97 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 292
  %.sroa.041.0.copyload = load <2 x float>, ptr %i.df, align 4
  %.sroa.242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 300
  %.sroa.242.0.copyload = load <2 x float>, ptr %.sroa.242.0..sroa_idx, align 4
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 308
  %.sroa.039.0.copyload = load <2 x float>, ptr %i.dg, align 4
  %.sroa.240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 316
  %.sroa.240.0.copyload = load <2 x float>, ptr %.sroa.240.0..sroa_idx, align 4
  %4 = shufflevector <2 x float> %.sroa.041.0.copyload, <2 x float> %.sroa.242.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %5 = shufflevector <2 x float> %.sroa.039.0.copyload, <2 x float> %.sroa.240.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dh = fmul <4 x float> %4, %5                 ; 4 uses
  %shift181 = shufflevector <4 x float> %i.dh, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop182 = fadd <4 x float> %i.dh, %shift181
  %shift184 = shufflevector <4 x float> %i.dh, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop185 = fadd <4 x float> %shift184, %foldExtExtBinop182
  %shift187 = shufflevector <4 x float> %i.dh, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop188 = fadd <4 x float> %shift187, %foldExtExtBinop185
  %i.di = extractelement <4 x float> %foldExtExtBinop188, i64 0 ; 3 uses
  %i.dj = fcmp olt float %i.di, -1.000000e+00
  %i.dk = fcmp ogt float %i.di, 1.000000e+00
  %..i.i = select i1 %i.dk, float 1.000000e+00, float %i.di
  %.0.i.i = select i1 %i.dj, float -1.000000e+00, float %..i.i
  %i.dl = tail call noundef float @acosf(float noundef %.0.i.i) #28 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 260 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i32 0, ptr %i.b, align 4, !tbaa !27
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !168
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 460
  %i.dv = load <2 x float>, ptr %i.du, align 4, !tbaa !11
  %i.dw = fmul <2 x float> %2, %i.dv              ; 2 uses
  %i.dx = extractelement <2 x float> %i.dw, i64 0
  %i.dy = fadd float %i.dt, %i.dx
  %i.dz = extractelement <2 x float> %i.dw, i64 1
  %i.ea = fadd float %i.dy, %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 468
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !169
  %i.ed = fmul float %3, %i.ec
  %i.ee = fadd float %i.ea, %i.ed
  %i.ef = load float, ptr %i.dr, align 4, !tbaa !168
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 508
  %i.eh = load <2 x float>, ptr %i.eg, align 4, !tbaa !11
  %i.ei = fmul <2 x float> %2, %i.eh              ; 2 uses
  %i.ej = extractelement <2 x float> %i.ei, i64 0
  %i.ek = fadd float %i.ef, %i.ej
  %i.el = extractelement <2 x float> %i.ei, i64 1
  %i.em = fadd float %i.ek, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 516
  %i.eo = load float, ptr %i.en, align 4, !tbaa !169
  %i.ep = fmul float %3, %i.eo
  %i.eq = fadd float %i.em, %i.ep
  %i.er = load float, ptr %i.dq, align 4, !tbaa !168
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 556
  %i.et = load <2 x float>, ptr %i.es, align 4, !tbaa !11
  %i.eu = fmul <2 x float> %2, %i.et              ; 2 uses
  %i.ev = extractelement <2 x float> %i.eu, i64 0
  %i.ew = fadd float %i.er, %i.ev
  %i.ex = extractelement <2 x float> %i.eu, i64 1
  %i.ey = fadd float %i.ew, %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 564
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !169
  %i.fb = fmul float %3, %i.fa
  %i.fc = fadd float %i.ey, %i.fb
  %i.fd = load float, ptr %i.dp, align 4, !tbaa !168
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 604
  %i.ff = load <2 x float>, ptr %i.fe, align 4, !tbaa !11
  %i.fg = fmul <2 x float> %2, %i.ff              ; 2 uses
  %i.fh = extractelement <2 x float> %i.fg, i64 0
  %i.fi = fadd float %i.fd, %i.fh
  %i.fj = extractelement <2 x float> %i.fg, i64 1
  %i.fk = fadd float %i.fi, %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 612
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !169
  %i.fn = fmul float %3, %i.fm
  %i.fo = fadd float %i.fk, %i.fn
  %i.fp = load float, ptr %i.do, align 4, !tbaa !168
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 652
  %i.fr = load <2 x float>, ptr %i.fq, align 4, !tbaa !11
  %i.fs = fmul <2 x float> %2, %i.fr              ; 2 uses
  %i.ft = extractelement <2 x float> %i.fs, i64 0
  %i.fu = fadd float %i.fp, %i.ft
  %i.fv = extractelement <2 x float> %i.fs, i64 1
  %i.fw = fadd float %i.fu, %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 660
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !169
  %i.fz = fmul float %3, %i.fy
  %i.ga = fadd float %i.fw, %i.fz
  call void @_ZN4pbrt17AnimatedTransform9FindZerosEffffffNS_8IntervalEN4pstd4spanIfEEPii(float noundef %i.ee, float noundef %i.eq, float noundef %i.fc, float noundef %i.fo, float noundef %i.ga, float noundef %i.dl, <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr nonnull %i.a, i64 8, ptr noundef nonnull %i.b, i32 noundef 8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.gb = load i32, ptr %i.b, align 4, !tbaa !27  ; 3 uses
  store i32 %i.gb, ptr %i.c, align 4, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i64 8, ptr %i.d, align 8, !tbaa !55
  %i.gc = icmp ult i32 %i.gb, 9
  br i1 %i.gc, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge.1, %._crit_edge, %bb.c
  %.sroa.015.4.vec.insert.i.i125129.lcssa143156.lcssa = phi <2 x float> [ %i.db, %bb.c ], [ %.sroa.015.4.vec.insert.i.i125129.lcssa, %._crit_edge ], [ %.sroa.015.4.vec.insert.i.i125129.lcssa.1, %._crit_edge.1 ]
  %.sroa.speculated.i.i123130.lcssa146155.lcssa = phi float [ %.sroa.speculated.i.i, %bb.c ], [ %.sroa.speculated.i.i123130.lcssa, %._crit_edge ], [ %.sroa.speculated.i.i123130.lcssa.1, %._crit_edge.1 ]
  %.sroa.015.4.vec.insert.i35.i132.lcssa148154.lcssa = phi <2 x float> [ %i.dd, %bb.c ], [ %.sroa.015.4.vec.insert.i35.i132.lcssa, %._crit_edge ], [ %.sroa.015.4.vec.insert.i35.i132.lcssa.1, %._crit_edge.1 ]
  %.sroa.speculated.i33.i133.lcssa151153.lcssa = phi float [ %.sroa.speculated.i34.i, %bb.c ], [ %.sroa.speculated.i33.i133.lcssa, %._crit_edge ], [ %.sroa.speculated.i33.i133.lcssa.1, %._crit_edge.1 ]
  store <2 x float> %.sroa.015.4.vec.insert.i.i125129.lcssa143156.lcssa, ptr %0, align 4
  store float %.sroa.speculated.i.i123130.lcssa146155.lcssa, ptr %.sroa.212.0..sroa_idx.i, align 4
  store <2 x float> %.sroa.015.4.vec.insert.i35.i132.lcssa148154.lcssa, ptr %i.ck, align 4
  store float %.sroa.speculated.i33.i133.lcssa151153.lcssa, ptr %.sroa.2.0..sroa_idx.i, align 4
  call void @_ZN4pbrt8LogFatalIJRA7_KcRA49_S1_S3_RiS5_RmEEEvNS_8LogLevelEPS1_iS9_DpOT_(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 1109, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(7) @.str.6, ptr noundef nonnull align 1 dereferenceable(49) @.str.7, ptr noundef nonnull align 1 dereferenceable(7) @.str.6, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 1 dereferenceable(49) @.str.7, ptr noundef nonnull align 8 dereferenceable(8) %i.d) #29
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %.not = icmp eq i32 %i.gb, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %.sroa.speculated.i33.i133.lcssa = phi float [ %.sroa.speculated.i34.i, %bb.e ], [ %.sroa.speculated.i33.i, %.lr.ph ] ; 3 uses
  %.sroa.015.4.vec.insert.i35.i132.lcssa = phi <2 x float> [ %i.dd, %bb.e ], [ %i.ne, %.lr.ph ] ; 3 uses
  %.sroa.speculated.i.i123130.lcssa = phi float [ %.sroa.speculated.i.i, %bb.e ], [ %.sroa.speculated.i.i123, %.lr.ph ] ; 3 uses
  %.sroa.015.4.vec.insert.i.i125129.lcssa = phi <2 x float> [ %i.db, %bb.e ], [ %i.nb, %.lr.ph ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i32 0, ptr %i.b, align 4, !tbaa !27
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !168
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 476
  %i.gg = load <2 x float>, ptr %i.gf, align 4, !tbaa !11
  %i.gh = fmul <2 x float> %2, %i.gg              ; 2 uses
  %i.gi = extractelement <2 x float> %i.gh, i64 0
  %i.gj = fadd float %i.ge, %i.gi
  %i.gk = extractelement <2 x float> %i.gh, i64 1
  %i.gl = fadd float %i.gj, %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 484
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !169
  %i.go = fmul float %3, %i.gn
  %i.gp = fadd float %i.gl, %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !168
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 524
  %i.gt = load <2 x float>, ptr %i.gs, align 4, !tbaa !11
  %i.gu = fmul <2 x float> %2, %i.gt              ; 2 uses
  %i.gv = extractelement <2 x float> %i.gu, i64 0
  %i.gw = fadd float %i.gr, %i.gv
  %i.gx = extractelement <2 x float> %i.gu, i64 1
  %i.gy = fadd float %i.gw, %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 532
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !169
  %i.hb = fmul float %3, %i.ha
  %i.hc = fadd float %i.gy, %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.he = load float, ptr %i.hd, align 4, !tbaa !168
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 572
  %i.hg = load <2 x float>, ptr %i.hf, align 4, !tbaa !11
  %i.hh = fmul <2 x float> %2, %i.hg              ; 2 uses
  %i.hi = extractelement <2 x float> %i.hh, i64 0
  %i.hj = fadd float %i.he, %i.hi
  %i.hk = extractelement <2 x float> %i.hh, i64 1
  %i.hl = fadd float %i.hj, %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 580
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !169
  %i.ho = fmul float %3, %i.hn
  %i.hp = fadd float %i.hl, %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !168
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 620
  %i.ht = load <2 x float>, ptr %i.hs, align 4, !tbaa !11
  %i.hu = fmul <2 x float> %2, %i.ht              ; 2 uses
  %i.hv = extractelement <2 x float> %i.hu, i64 0
  %i.hw = fadd float %i.hr, %i.hv
  %i.hx = extractelement <2 x float> %i.hu, i64 1
  %i.hy = fadd float %i.hw, %i.hx
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 628
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !169
  %i.ib = fmul float %3, %i.ia
  %i.ic = fadd float %i.hy, %i.ib
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.ie = load float, ptr %i.id, align 4, !tbaa !168
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 668
  %i.ig = load <2 x float>, ptr %i.if, align 4, !tbaa !11
  %i.ih = fmul <2 x float> %2, %i.ig              ; 2 uses
  %i.ii = extractelement <2 x float> %i.ih, i64 0
  %i.ij = fadd float %i.ie, %i.ii
  %i.ik = extractelement <2 x float> %i.ih, i64 1
  %i.il = fadd float %i.ij, %i.ik
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 676
  %i.in = load float, ptr %i.im, align 4, !tbaa !169
  %i.io = fmul float %3, %i.in
  %i.ip = fadd float %i.il, %i.io
  call void @_ZN4pbrt17AnimatedTransform9FindZerosEffffffNS_8IntervalEN4pstd4spanIfEEPii(float noundef %i.gp, float noundef %i.hc, float noundef %i.hp, float noundef %i.ic, float noundef %i.ip, float noundef %i.dl, <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr nonnull %i.a, i64 8, ptr noundef nonnull %i.b, i32 noundef 8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.iq = load i32, ptr %i.b, align 4, !tbaa !27  ; 3 uses
  store i32 %i.iq, ptr %i.c, align 4, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i64 8, ptr %i.d, align 8, !tbaa !55
  %i.ir = icmp ult i32 %i.iq, 9
  br i1 %i.ir, label %bb.f, label %bb.d

bb.f:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %.not.1 = icmp eq i32 %i.iq, 0
  br i1 %.not.1, label %._crit_edge.1, label %.lr.ph.1

end_hunk_0
