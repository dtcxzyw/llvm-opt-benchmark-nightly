Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/transform?download=true
inline.NumInlined: 2588
inline.NumDeleted: 406
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZNK4pbrt17AnimatedTransform12MotionBoundsERKNS_7Bounds3IfEE:bb.a
  %.sroa.22.0.copyload.i27.i.1 = load float, ptr %.sroa.22.0..sroa_idx.i26.i, align 4
  %.sroa.0.4.vec.insert.i.1 = shufflevector <2 x float> %.sroa.01.0.copyload.i.i.1, <2 x float> %.sroa.01.0.copyload.i19.i.1, <2 x i32> <i32 0, i32 3>
  call void @_ZNK4pbrt17AnimatedTransform16BoundPointMotionENS_6Point3IfEE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Bounds3") align 4 %5, ptr noundef nonnull align 4 dereferenceable(696) %1, <2 x float> %.sroa.0.4.vec.insert.i.1, float %.sroa.22.0.copyload.i27.i.1)
  %.sroa.018.0.copyload.i14.1 = load <2 x float>, ptr %5, align 8, !tbaa !11, !noalias !163 ; 2 uses
  %.sroa.219.0.copyload.i16.1 = load float, ptr %.sroa.219.0..sroa_idx.i15, align 8, !tbaa !11, !noalias !163 ; 2 uses
  %i.bd = fcmp olt <2 x float> %.sroa.018.0.copyload.i14.1, %i.ax
  %i.be = select <2 x i1> %i.bd, <2 x float> %.sroa.018.0.copyload.i14.1, <2 x float> %i.ax ; 2 uses
  %i.bf = fcmp olt float %.sroa.219.0.copyload.i16.1, %.sroa.speculated.i.i21
  %.sroa.speculated.i.i21.1 = select i1 %i.bf, float %.sroa.219.0.copyload.i16.1, float %.sroa.speculated.i.i21 ; 2 uses
  %.sroa.05.0.copyload.i27.1 = load <2 x float>, ptr %i.u, align 4, !tbaa !11, !noalias !163 ; 2 uses
  %.sroa.26.0.copyload.i29.1 = load float, ptr %.sroa.26.0..sroa_idx.i28, align 4, !tbaa !11, !noalias !163 ; 2 uses
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
  %.sroa.018.0.copyload.i14.2 = load <2 x float>, ptr %5, align 8, !tbaa !11, !noalias !163 ; 2 uses
  %.sroa.219.0.copyload.i16.2 = load float, ptr %.sroa.219.0..sroa_idx.i15, align 8, !tbaa !11, !noalias !163 ; 2 uses
  %i.bk = fcmp olt <2 x float> %.sroa.018.0.copyload.i14.2, %i.be
  %i.bl = select <2 x i1> %i.bk, <2 x float> %.sroa.018.0.copyload.i14.2, <2 x float> %i.be ; 2 uses
  %i.bm = fcmp olt float %.sroa.219.0.copyload.i16.2, %.sroa.speculated.i.i21.1
  %.sroa.speculated.i.i21.2 = select i1 %i.bm, float %.sroa.219.0.copyload.i16.2, float %.sroa.speculated.i.i21.1 ; 2 uses
  %.sroa.05.0.copyload.i27.2 = load <2 x float>, ptr %i.u, align 4, !tbaa !11, !noalias !163 ; 2 uses
  %.sroa.26.0.copyload.i29.2 = load float, ptr %.sroa.26.0..sroa_idx.i28, align 4, !tbaa !11, !noalias !163 ; 2 uses
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
  %.sroa.018.0.copyload.i14.3 = load <2 x float>, ptr %5, align 8, !tbaa !11, !noalias !163 ; 2 uses
  %.sroa.219.0.copyload.i16.3 = load float, ptr %.sroa.219.0..sroa_idx.i15, align 8, !tbaa !11, !noalias !163 ; 2 uses
  %i.br = fcmp olt <2 x float> %.sroa.018.0.copyload.i14.3, %i.bl
  %i.bs = select <2 x i1> %i.br, <2 x float> %.sroa.018.0.copyload.i14.3, <2 x float> %i.bl
  %i.bt = fcmp olt float %.sroa.219.0.copyload.i16.3, %.sroa.speculated.i.i21.2
  %.sroa.speculated.i.i21.3 = select i1 %i.bt, float %.sroa.219.0.copyload.i16.3, float %.sroa.speculated.i.i21.2
  %.sroa.05.0.copyload.i27.3 = load <2 x float>, ptr %i.u, align 4, !tbaa !11, !noalias !163 ; 2 uses
  %.sroa.26.0.copyload.i29.3 = load float, ptr %.sroa.26.0..sroa_idx.i28, align 4, !tbaa !11, !noalias !163 ; 2 uses
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
  %i.h = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
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
  %shift175 = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop176 = fadd <2 x float> %i.bg, %shift175
  %i.bh = extractelement <2 x float> %foldExtExtBinop176, i64 0
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !11
  %i.bk = fmul float %3, %i.bj
  %i.bl = fadd float %i.bh, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !11
  %i.bo = fadd float %i.bn, %i.bl
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.br = load <2 x float>, ptr %i.bq, align 4, !tbaa !11
  %i.bs = fmul <2 x float> %2, %i.br              ; 2 uses
  %shift178 = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop179 = fadd <2 x float> %i.bs, %shift178
  %i.bt = extractelement <2 x float> %foldExtExtBinop179, i64 0
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !11
  %i.bw = fmul float %3, %i.bv
  %i.bx = fadd float %i.bt, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 172
  %i.bz = load float, ptr %i.by, align 4, !tbaa !11
  %i.ca = fadd float %i.bz, %i.bx                 ; 2 uses
  %i.cb = tail call <12 x float> @llvm.masked.load.v12f32.p0(ptr nonnull align 4 %i.bp, <12 x i1> <i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 true, i1 true, i1 true, i1 true>, <12 x float> poison), !tbaa !11 ; 4 uses
  %i.cc = shufflevector <12 x float> %i.cb, <12 x float> poison, <2 x i32> <i32 1, i32 8>
  %i.cd = fmul <2 x float> %i.h, %i.cc
  %i.ce = shufflevector <12 x float> %i.cb, <12 x float> poison, <2 x i32> <i32 0, i32 9>
  %i.cf = fmul <2 x float> %2, %i.ce
  %i.cg = fadd <2 x float> %i.cd, %i.cf
  %i.ch = shufflevector <12 x float> %i.cb, <12 x float> poison, <2 x i32> <i32 2, i32 10>
  %i.ci = fmul <2 x float> %i.aq, %i.ch
  %i.cj = fadd <2 x float> %i.cg, %i.ci
  %i.ck = shufflevector <12 x float> %i.cb, <12 x float> poison, <2 x i32> <i32 3, i32 11>
  %i.cl = fadd <2 x float> %i.ck, %i.cj           ; 3 uses
  %i.cm = extractelement <2 x float> %i.cl, i64 1 ; 2 uses
  %i.cn = fcmp oeq float %i.cm, 1.000000e+00      ; 2 uses
  %i.co = fdiv float %i.ca, %i.cm
  %.sroa.495.0.i106 = select i1 %i.cn, float %i.ca, float %i.co ; 4 uses
  %i.cp = fcmp olt float %.sroa.495.0.i106, %.sroa.495.0.i97
  %.sroa.speculated.i.i = select i1 %i.cp, float %.sroa.495.0.i106, float %.sroa.495.0.i97 ; 3 uses
  %.sroa.212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.cr = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cs = insertelement <2 x float> %i.cr, float %i.bo, i64 0 ; 2 uses
  %i.ct = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cu = fdiv <2 x float> %i.cs, %i.ct
  %i.cv = insertelement <2 x i1> poison, i1 %i.cn, i64 0
  %i.cw = shufflevector <2 x i1> %i.cv, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.cx = select <2 x i1> %i.cw, <2 x float> %i.cs, <2 x float> %i.cu ; 4 uses
  %i.cy = fcmp olt <2 x float> %i.cx, %i.bc
  %i.cz = select <2 x i1> %i.cy, <2 x float> %i.cx, <2 x float> %i.bc ; 3 uses
  %i.da = fcmp olt <2 x float> %i.bc, %i.cx
  %i.db = select <2 x i1> %i.da, <2 x float> %i.cx, <2 x float> %i.bc ; 3 uses
  %i.dc = fcmp olt float %.sroa.495.0.i97, %.sroa.495.0.i106
  %.sroa.speculated.i34.i = select i1 %i.dc, float %.sroa.495.0.i106, float %.sroa.495.0.i97 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 292
  %4 = load <4 x float>, ptr %i.dd, align 4
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 308
  %5 = load <4 x float>, ptr %i.de, align 4
  %i.df = fmul <4 x float> %4, %5                 ; 4 uses
  %shift181 = shufflevector <4 x float> %i.df, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop182 = fadd <4 x float> %i.df, %shift181
  %shift184 = shufflevector <4 x float> %i.df, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop185 = fadd <4 x float> %shift184, %foldExtExtBinop182
  %shift187 = shufflevector <4 x float> %i.df, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop188 = fadd <4 x float> %shift187, %foldExtExtBinop185
  %i.dg = extractelement <4 x float> %foldExtExtBinop188, i64 0 ; 3 uses
  %i.dh = fcmp olt float %i.dg, -1.000000e+00
  %i.di = fcmp ogt float %i.dg, 1.000000e+00
  %..i.i = select i1 %i.di, float 1.000000e+00, float %i.dg
  %.0.i.i = select i1 %i.dh, float -1.000000e+00, float %..i.i
  %i.dj = tail call noundef float @acosf(float noundef %.0.i.i) #28 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 260 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i32 0, ptr %i.b, align 4, !tbaa !26
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !166
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 460
  %i.dt = load <2 x float>, ptr %i.ds, align 4, !tbaa !11
  %i.du = fmul <2 x float> %2, %i.dt              ; 2 uses
  %i.dv = extractelement <2 x float> %i.du, i64 0
  %i.dw = fadd float %i.dr, %i.dv
  %i.dx = extractelement <2 x float> %i.du, i64 1
  %i.dy = fadd float %i.dw, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 468
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !167
  %i.eb = fmul float %3, %i.ea
  %i.ec = fadd float %i.dy, %i.eb
  %i.ed = load float, ptr %i.dp, align 4, !tbaa !166
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 508
  %i.ef = load <2 x float>, ptr %i.ee, align 4, !tbaa !11
  %i.eg = fmul <2 x float> %2, %i.ef              ; 2 uses
  %i.eh = extractelement <2 x float> %i.eg, i64 0
  %i.ei = fadd float %i.ed, %i.eh
  %i.ej = extractelement <2 x float> %i.eg, i64 1
  %i.ek = fadd float %i.ei, %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 516
  %i.em = load float, ptr %i.el, align 4, !tbaa !167
  %i.en = fmul float %3, %i.em
  %i.eo = fadd float %i.ek, %i.en
  %i.ep = load float, ptr %i.do, align 4, !tbaa !166
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 556
  %i.er = load <2 x float>, ptr %i.eq, align 4, !tbaa !11
  %i.es = fmul <2 x float> %2, %i.er              ; 2 uses
  %i.et = extractelement <2 x float> %i.es, i64 0
  %i.eu = fadd float %i.ep, %i.et
  %i.ev = extractelement <2 x float> %i.es, i64 1
  %i.ew = fadd float %i.eu, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 564
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !167
  %i.ez = fmul float %3, %i.ey
  %i.fa = fadd float %i.ew, %i.ez
  %i.fb = load float, ptr %i.dn, align 4, !tbaa !166
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 604
  %i.fd = load <2 x float>, ptr %i.fc, align 4, !tbaa !11
  %i.fe = fmul <2 x float> %2, %i.fd              ; 2 uses
  %i.ff = extractelement <2 x float> %i.fe, i64 0
  %i.fg = fadd float %i.fb, %i.ff
  %i.fh = extractelement <2 x float> %i.fe, i64 1
  %i.fi = fadd float %i.fg, %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 612
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !167
  %i.fl = fmul float %3, %i.fk
  %i.fm = fadd float %i.fi, %i.fl
  %i.fn = load float, ptr %i.dm, align 4, !tbaa !166
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 652
  %i.fp = load <2 x float>, ptr %i.fo, align 4, !tbaa !11
  %i.fq = fmul <2 x float> %2, %i.fp              ; 2 uses
  %i.fr = extractelement <2 x float> %i.fq, i64 0
  %i.fs = fadd float %i.fn, %i.fr
  %i.ft = extractelement <2 x float> %i.fq, i64 1
  %i.fu = fadd float %i.fs, %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 660
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !167
  %i.fx = fmul float %3, %i.fw
  %i.fy = fadd float %i.fu, %i.fx
  call void @_ZN4pbrt17AnimatedTransform9FindZerosEffffffNS_8IntervalEN4pstd4spanIfEEPii(float noundef %i.ec, float noundef %i.eo, float noundef %i.fa, float noundef %i.fm, float noundef %i.fy, float noundef %i.dj, <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr nonnull %i.a, i64 8, ptr noundef nonnull %i.b, i32 noundef 8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.fz = load i32, ptr %i.b, align 4, !tbaa !26  ; 3 uses
  store i32 %i.fz, ptr %i.c, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i64 8, ptr %i.d, align 8, !tbaa !55
  %i.ga = icmp ult i32 %i.fz, 9
  br i1 %i.ga, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge.1, %._crit_edge, %bb.c
  %.sroa.015.4.vec.insert.i.i125129.lcssa143156.lcssa = phi <2 x float> [ %i.cz, %bb.c ], [ %.sroa.015.4.vec.insert.i.i125129.lcssa, %._crit_edge ], [ %.sroa.015.4.vec.insert.i.i125129.lcssa.1, %._crit_edge.1 ]
  %.sroa.speculated.i.i123130.lcssa146155.lcssa = phi float [ %.sroa.speculated.i.i, %bb.c ], [ %.sroa.speculated.i.i123130.lcssa, %._crit_edge ], [ %.sroa.speculated.i.i123130.lcssa.1, %._crit_edge.1 ]
  %.sroa.015.4.vec.insert.i35.i132.lcssa148154.lcssa = phi <2 x float> [ %i.db, %bb.c ], [ %.sroa.015.4.vec.insert.i35.i132.lcssa, %._crit_edge ], [ %.sroa.015.4.vec.insert.i35.i132.lcssa.1, %._crit_edge.1 ]
  %.sroa.speculated.i33.i133.lcssa151153.lcssa = phi float [ %.sroa.speculated.i34.i, %bb.c ], [ %.sroa.speculated.i33.i133.lcssa, %._crit_edge ], [ %.sroa.speculated.i33.i133.lcssa.1, %._crit_edge.1 ]
  store <2 x float> %.sroa.015.4.vec.insert.i.i125129.lcssa143156.lcssa, ptr %0, align 4
  store float %.sroa.speculated.i.i123130.lcssa146155.lcssa, ptr %.sroa.212.0..sroa_idx.i, align 4
  store <2 x float> %.sroa.015.4.vec.insert.i35.i132.lcssa148154.lcssa, ptr %i.cq, align 4
  store float %.sroa.speculated.i33.i133.lcssa151153.lcssa, ptr %.sroa.2.0..sroa_idx.i, align 4
  call void @_ZN4pbrt8LogFatalIJRA7_KcRA49_S1_S3_RiS5_RmEEEvNS_8LogLevelEPS1_iS9_DpOT_(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 1109, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(7) @.str.6, ptr noundef nonnull align 1 dereferenceable(49) @.str.7, ptr noundef nonnull align 1 dereferenceable(7) @.str.6, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 1 dereferenceable(49) @.str.7, ptr noundef nonnull align 8 dereferenceable(8) %i.d) #29
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %.not = icmp eq i32 %i.fz, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %.sroa.speculated.i33.i133.lcssa = phi float [ %.sroa.speculated.i34.i, %bb.e ], [ %.sroa.speculated.i33.i, %.lr.ph ] ; 3 uses
  %.sroa.015.4.vec.insert.i35.i132.lcssa = phi <2 x float> [ %i.db, %bb.e ], [ %i.nc, %.lr.ph ] ; 3 uses
  %.sroa.speculated.i.i123130.lcssa = phi float [ %.sroa.speculated.i.i, %bb.e ], [ %.sroa.speculated.i.i123, %.lr.ph ] ; 3 uses
  %.sroa.015.4.vec.insert.i.i125129.lcssa = phi <2 x float> [ %i.cz, %bb.e ], [ %i.mz, %.lr.ph ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i32 0, ptr %i.b, align 4, !tbaa !26
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !166
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 476
  %i.ge = load <2 x float>, ptr %i.gd, align 4, !tbaa !11
  %i.gf = fmul <2 x float> %2, %i.ge              ; 2 uses
  %i.gg = extractelement <2 x float> %i.gf, i64 0
  %i.gh = fadd float %i.gc, %i.gg
  %i.gi = extractelement <2 x float> %i.gf, i64 1
  %i.gj = fadd float %i.gh, %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 484
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !167
  %i.gm = fmul float %3, %i.gl
  %i.gn = fadd float %i.gj, %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.gp = load float, ptr %i.go, align 4, !tbaa !166
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 524
  %i.gr = load <2 x float>, ptr %i.gq, align 4, !tbaa !11
  %i.gs = fmul <2 x float> %2, %i.gr              ; 2 uses
  %i.gt = extractelement <2 x float> %i.gs, i64 0
  %i.gu = fadd float %i.gp, %i.gt
  %i.gv = extractelement <2 x float> %i.gs, i64 1
  %i.gw = fadd float %i.gu, %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 532
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !167
  %i.gz = fmul float %3, %i.gy
  %i.ha = fadd float %i.gw, %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !166
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 572
  %i.he = load <2 x float>, ptr %i.hd, align 4, !tbaa !11
  %i.hf = fmul <2 x float> %2, %i.he              ; 2 uses
  %i.hg = extractelement <2 x float> %i.hf, i64 0
  %i.hh = fadd float %i.hc, %i.hg
  %i.hi = extractelement <2 x float> %i.hf, i64 1
  %i.hj = fadd float %i.hh, %i.hi
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 580
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !167
  %i.hm = fmul float %3, %i.hl
  %i.hn = fadd float %i.hj, %i.hm
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !166
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 620
  %i.hr = load <2 x float>, ptr %i.hq, align 4, !tbaa !11
  %i.hs = fmul <2 x float> %2, %i.hr              ; 2 uses
  %i.ht = extractelement <2 x float> %i.hs, i64 0
  %i.hu = fadd float %i.hp, %i.ht
  %i.hv = extractelement <2 x float> %i.hs, i64 1
  %i.hw = fadd float %i.hu, %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 628
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !167
  %i.hz = fmul float %3, %i.hy
  %i.ia = fadd float %i.hw, %i.hz
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !166
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 668
  %i.ie = load <2 x float>, ptr %i.id, align 4, !tbaa !11
  %i.if = fmul <2 x float> %2, %i.ie              ; 2 uses
  %i.ig = extractelement <2 x float> %i.if, i64 0
  %i.ih = fadd float %i.ic, %i.ig
  %i.ii = extractelement <2 x float> %i.if, i64 1
  %i.ij = fadd float %i.ih, %i.ii
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 676
  %i.il = load float, ptr %i.ik, align 4, !tbaa !167
  %i.im = fmul float %3, %i.il
  %i.in = fadd float %i.ij, %i.im
  call void @_ZN4pbrt17AnimatedTransform9FindZerosEffffffNS_8IntervalEN4pstd4spanIfEEPii(float noundef %i.gn, float noundef %i.ha, float noundef %i.hn, float noundef %i.ia, float noundef %i.in, float noundef %i.dj, <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr nonnull %i.a, i64 8, ptr noundef nonnull %i.b, i32 noundef 8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.io = load i32, ptr %i.b, align 4, !tbaa !26  ; 3 uses
  store i32 %i.io, ptr %i.c, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i64 8, ptr %i.d, align 8, !tbaa !55
  %i.ip = icmp ult i32 %i.io, 9
  br i1 %i.ip, label %bb.f, label %bb.d

bb.f:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %.not.1 = icmp eq i32 %i.io, 0
  br i1 %.not.1, label %._crit_edge.1, label %.lr.ph.1

end_hunk_0
