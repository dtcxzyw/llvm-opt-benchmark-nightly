Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/transform?download=true
inline.NumInlined: 2588
inline.NumDeleted: 406
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZNK4pbrt17AnimatedTransform11InterpolateEf:bb.a
  %foldExtExtBinop133 = fadd <4 x float> %i.at, %shift132
  %shift135 = shufflevector <4 x float> %i.at, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop136 = fadd <4 x float> %shift135, %foldExtExtBinop133
  %shift138 = shufflevector <4 x float> %i.at, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop139 = fadd <4 x float> %shift138, %foldExtExtBinop136
  %i.au = extractelement <4 x float> %foldExtExtBinop139, i64 0
  %sqrt.i25.i.i = tail call noundef float @llvm.sqrt.f32(float %i.au)
  %i.av = fmul float %sqrt.i25.i.i, 5.000000e-01  ; 2 uses
  %i.aw = fcmp ogt float %i.av, 1.000000e+00
  %..i.i26.i.i = select i1 %i.aw, float 1.000000e+00, float %i.av
  %i.ax = tail call noundef float @asinf(float noundef %..i.i26.i.i) #28
  %i.ay = fmul float %i.ax, 2.000000e+00
  br label %_ZN4pbrt12AngleBetweenENS_10QuaternionES0_.exit.i

_ZN4pbrt12AngleBetweenENS_10QuaternionES0_.exit.i: ; preds = %bb.h, %bb.g
  %.0.i.i = phi float [ %i.ap, %bb.g ], [ %i.ay, %bb.h ] ; 6 uses
  %i.az = fmul float %.0.i.i, %.0.i.i
  %i.ba = fsub float 1.000000e+00, %i.az
  %i.bb = fcmp oeq float %i.ba, 1.000000e+00
  br i1 %i.bb, label %_ZN4pbrt9SinXOverXEf.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZN4pbrt12AngleBetweenENS_10QuaternionES0_.exit.i
  %i.bc = tail call noundef float @sinf(float noundef %.0.i.i) #28
  %i.bd = fdiv float %i.bc, %.0.i.i
  br label %_ZN4pbrt9SinXOverXEf.exit.i

_ZN4pbrt9SinXOverXEf.exit.i:                      ; preds = %bb.i, %_ZN4pbrt12AngleBetweenENS_10QuaternionES0_.exit.i
  %.0.i15.i = phi float [ %i.bd, %bb.i ], [ 1.000000e+00, %_ZN4pbrt12AngleBetweenENS_10QuaternionES0_.exit.i ] ; 5 uses
  %i.be = fmul float %i.n, %.0.i.i                ; 4 uses
  %i.bf = fmul float %i.be, %i.be
  %i.bg = fsub float 1.000000e+00, %i.bf
  %i.bh = fcmp oeq float %i.bg, 1.000000e+00
  br i1 %i.bh, label %_ZN4pbrt9SinXOverXEf.exit17.i, label %bb.j

bb.j:                                             ; preds = %_ZN4pbrt9SinXOverXEf.exit.i
  %i.bi = tail call noundef float @sinf(float noundef %i.be) #28
  %i.bj = fdiv float %i.bi, %i.be
  br label %_ZN4pbrt9SinXOverXEf.exit17.i

_ZN4pbrt9SinXOverXEf.exit17.i:                    ; preds = %bb.j, %_ZN4pbrt9SinXOverXEf.exit.i
  %.0.i16.i = phi float [ %i.bj, %bb.j ], [ 1.000000e+00, %_ZN4pbrt9SinXOverXEf.exit.i ] ; 3 uses
  %i.bk = fmul float %i.m, %.0.i.i                ; 4 uses
  %i.bl = fmul float %i.bk, %i.bk
  %i.bm = fsub float 1.000000e+00, %i.bl
  %i.bn = fcmp oeq float %i.bm, 1.000000e+00
  br i1 %i.bn, label %_ZN4pbrt5SlerpEfNS_10QuaternionES0_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4pbrt9SinXOverXEf.exit17.i
  %i.bo = tail call noundef float @sinf(float noundef %i.bk) #28
  %i.bp = fdiv float %i.bo, %i.bk
  br label %_ZN4pbrt5SlerpEfNS_10QuaternionES0_.exit

_ZN4pbrt5SlerpEfNS_10QuaternionES0_.exit:         ; preds = %_ZN4pbrt9SinXOverXEf.exit17.i, %bb.k
  %.0.i36.i = phi float [ %i.bp, %bb.k ], [ 1.000000e+00, %_ZN4pbrt9SinXOverXEf.exit17.i ] ; 3 uses
  %i.bq = fmul float %i.m, %.sroa.28.12.vec.extract.i.i.i
  %i.br = insertelement <2 x float> poison, float %i.m, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bt = shufflevector <2 x float> %.sroa.26.0.copyload, <2 x float> %.sroa.05.0.copyload, <2 x i32> <i32 0, i32 3>
  %i.bu = fmul <2 x float> %i.bs, %i.bt
  %i.bv = fmul float %i.m, %.sroa.01.0.vec.extract.i.i.i.i
  %i.bw = fmul float %i.n, %.sroa.210.12.vec.extract.i.i.i
  %i.bx = insertelement <2 x float> poison, float %i.n, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = shufflevector <2 x float> %.sroa.28.0.copyload, <2 x float> %.sroa.07.0.copyload, <2 x i32> <i32 0, i32 3>
  %i.ca = fmul <2 x float> %i.by, %i.bz
  %i.cb = fmul float %i.n, %.sroa.04.0.vec.extract.i.i.i.i
  %i.cc = fmul float %i.cb, %.0.i16.i
  %i.cd = fdiv float %i.cc, %.0.i15.i
  %i.ce = fmul float %i.bv, %.0.i36.i
  %i.cf = fdiv float %i.ce, %.0.i15.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 324
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 356
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 388
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 420
  %.sroa.20.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ci = load <8 x float>, ptr %i.cg, align 4
  %i.cj = insertelement <8 x float> poison, float %i.n, i64 0
  %i.ck = shufflevector <8 x float> %i.cj, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.cl = fmul <8 x float> %i.ck, %i.ci
  %i.cm = load <8 x float>, ptr %i.ch, align 4
  %i.cn = insertelement <8 x float> poison, float %i.m, i64 0
  %i.co = shufflevector <8 x float> %i.cn, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.cp = fmul <8 x float> %i.co, %i.cm
  %i.cq = fadd <8 x float> %i.cl, %i.cp
  store <8 x float> %i.cq, ptr %4, align 4, !tbaa !11, !alias.scope !141
  %i.cr = load <8 x float>, ptr %.sroa.20.0..sroa_idx, align 4
  %i.cs = fmul <8 x float> %i.ck, %i.cr
  %i.ct = load <8 x float>, ptr %.sroa.27.0..sroa_idx, align 4
  %i.cu = fmul <8 x float> %i.co, %i.ct
  %i.cv = fadd <8 x float> %i.cs, %i.cu
  store <8 x float> %i.cv, ptr %.sroa.20.0..sroa_idx93, align 4, !tbaa !11, !alias.scope !141
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.cw = fneg float %i.w
  %i.cx = fneg float %i.x
  %i.cy = fneg float %i.y
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %6, align 8, !alias.scope !142
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float 0.000000e+00, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !142
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 12
  store float %i.w, ptr %.sroa.610.0..sroa_idx.i, align 4, !alias.scope !142
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.711.0..sroa_idx.i, align 8, !alias.scope !142
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  store float 0.000000e+00, ptr %.sroa.913.0..sroa_idx.i, align 8, !alias.scope !142
  %.sroa.1014.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 28
  store float %i.x, ptr %.sroa.1014.0..sroa_idx.i, align 4, !alias.scope !142
  %.sroa.1115.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  store <2 x float> zeroinitializer, ptr %.sroa.1115.0..sroa_idx.i, align 8, !alias.scope !142
  %.sroa.1317.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 40
  store float 1.000000e+00, ptr %.sroa.1317.0..sroa_idx.i, align 8, !alias.scope !142
  %.sroa.1418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 44
  store float %i.y, ptr %.sroa.1418.0..sroa_idx.i, align 4, !alias.scope !142
  %.sroa.1519.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 48
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.1519.0..sroa_idx.i, align 8, !alias.scope !142
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 64
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.cz, align 8, !alias.scope !142
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 72
  store float 0.000000e+00, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !142
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 76
  store float %i.cw, ptr %.sroa.6.0..sroa_idx.i, align 4, !alias.scope !142
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 80
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !142
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 88
  store float 0.000000e+00, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !142
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 92
  store float %i.cx, ptr %.sroa.10.0..sroa_idx.i, align 4, !alias.scope !142
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 96
  store <2 x float> zeroinitializer, ptr %.sroa.11.0..sroa_idx.i, align 8, !alias.scope !142
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 104
  store float 1.000000e+00, ptr %.sroa.13.0..sroa_idx.i, align 8, !alias.scope !142
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 108
  store float %i.cy, ptr %.sroa.14.0..sroa_idx.i, align 4, !alias.scope !142
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 112
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.15.0..sroa_idx.i, align 8, !alias.scope !142
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.da = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.db = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 60
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 76
  store i32 0, ptr %i.de, align 4
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 92
  store i32 0, ptr %i.dh, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %7, i64 108
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 124
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.di, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.dj, align 4, !tbaa !11
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.dm = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.dn = fmul float %i.bw, %.0.i16.i
  %i.do = fdiv float %i.dn, %.0.i15.i
  %i.dp = insertelement <2 x float> poison, float %.0.i16.i, i64 0
  %i.dq = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dr = fmul <2 x float> %i.ca, %i.dq
  %i.ds = insertelement <2 x float> poison, float %.0.i15.i, i64 0
  %i.dt = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.du = fdiv <2 x float> %i.dr, %i.dt
  %i.dv = insertelement <2 x float> poison, float %.0.i36.i, i64 0
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dx = fmul <2 x float> %i.bu, %i.dw
  %i.dy = fmul float %i.bq, %.0.i36.i
  %i.dz = fdiv <2 x float> %i.dx, %i.dt
  %i.ea = fdiv float %i.dy, %.0.i15.i
  %i.eb = fadd float %i.cd, %i.cf                 ; 5 uses
  %i.ec = fadd <2 x float> %i.du, %i.dz           ; 6 uses
  %i.ed = fadd float %i.do, %i.ea                 ; 3 uses
  %i.ee = fmul float %i.eb, %i.eb                 ; 2 uses
  %i.ef = extractelement <2 x float> %i.ec, i64 1 ; 4 uses
  %i.eg = fmul float %i.ef, %i.ef                 ; 2 uses
  %i.eh = extractelement <2 x float> %i.ec, i64 0
  %foldExtExtBinop141 = fmul <2 x float> %i.ec, %i.ec
  %i.ei = extractelement <2 x float> %foldExtExtBinop141, i64 0 ; 2 uses
  %i.ej = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> zeroinitializer
  %i.el = fmul <2 x float> %i.ek, %i.ec           ; 3 uses
  %i.em = fmul float %i.ef, %i.eh                 ; 2 uses
  %i.en = fmul float %i.ef, %i.ed                 ; 2 uses
  %i.eo = fadd float %i.eg, %i.ei
  %i.ep = fadd float %i.ee, %i.ei
  %i.eq = fmul float %i.eb, %i.ed
  %i.er = insertelement <4 x float> poison, float %i.eo, i64 0
  %i.es = shufflevector <2 x float> %i.ec, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.et = shufflevector <4 x float> %i.er, <4 x float> %i.es, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.eu = insertelement <4 x float> %i.et, float %i.ep, i64 2
  %i.ev = insertelement <4 x float> %i.eu, float %i.eb, i64 3
  %i.ew = insertelement <4 x float> <float 2.000000e+00, float poison, float 2.000000e+00, float poison>, float %i.ed, i64 1
  %i.ex = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.ey = fmul <4 x float> %i.ev, %i.ex           ; 2 uses
  %i.ez = shufflevector <2 x float> %i.el, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fa = shufflevector <4 x float> <float 1.000000e+00, float poison, float 1.000000e+00, float poison>, <4 x float> %i.ez, <4 x i32> <i32 0, i32 5, i32 2, i32 poison>
  %i.fb = insertelement <4 x float> %i.fa, float %i.em, i64 3
  %i.fc = fsub <4 x float> %i.fb, %i.ey           ; 2 uses
  %i.fd = shufflevector <4 x float> %i.ey, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.fe = insertelement <2 x float> %i.fd, float %i.en, i64 0
  %i.ff = fadd <2 x float> %i.el, %i.fe
  %9 = shufflevector <4 x float> %i.fc, <4 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fg = shufflevector <2 x float> %i.ff, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fh = shufflevector <4 x float> %i.fc, <4 x float> %i.fg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %i.fi = shufflevector <8 x float> %i.fh, <8 x float> <float poison, float poison, float poison, float 1.000000e+00, float poison, float poison, float poison, float 1.000000e+00>, <8 x i32> <i32 0, i32 1, i32 4, i32 11, i32 5, i32 2, i32 3, i32 15>
  %i.fj = fmul <8 x float> %i.fi, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 0.000000e+00, float 2.000000e+00, float 1.000000e+00, float 2.000000e+00, float 0.000000e+00> ; 4 uses
  %i.fk = shufflevector <8 x float> %9, <8 x float> %i.fj, <2 x i32> <i32 0, i32 12>
  store <2 x float> %i.fk, ptr %i.dd, align 4, !tbaa !11
  %i.fl = extractelement <2 x float> %i.el, i64 0
  %i.fm = fsub float %i.fl, %i.en
  %i.fn = fmul float %i.fm, 2.000000e+00          ; 2 uses
  store float %i.fn, ptr %i.dk, align 4, !tbaa !11
  %10 = shufflevector <8 x float> %i.fj, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  store <2 x float> %10, ptr %i.dl, align 4, !tbaa !11
  %i.fo = fadd float %i.em, %i.eq
  %i.fp = fmul float %i.fo, 2.000000e+00          ; 2 uses
  store float %i.fp, ptr %i.df, align 4, !tbaa !11
  %i.fq = shufflevector <8 x float> %i.fj, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.fq, ptr %i.dm, align 4, !tbaa !11
  %i.fr = fadd float %i.ee, %i.eg
  %i.fs = fmul float %i.fr, 2.000000e+00
  %i.ft = fsub float 1.000000e+00, %i.fs          ; 2 uses
  store float %i.ft, ptr %i.dg, align 4, !tbaa !11
  store <8 x float> %i.fj, ptr %7, align 4
  %.sroa.11.0..sroa_idx.i56 = getelementptr inbounds nuw i8, ptr %7, i64 32
  store float %i.fn, ptr %.sroa.11.0..sroa_idx.i56, align 4
  %.sroa.12.0..sroa_idx.i57 = getelementptr inbounds nuw i8, ptr %7, i64 36
  store float %i.fp, ptr %.sroa.12.0..sroa_idx.i57, align 4
  store float %i.ft, ptr %i.da, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.db, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.dc, align 4, !tbaa !9
  call void @_ZNK4pbrt9TransformmlERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %5, ptr noundef nonnull align 4 dereferenceable(128) %6, ptr noundef nonnull align 4 dereferenceable(128) %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %8, ptr noundef nonnull align 4 dereferenceable(64) %4, i64 64, i1 false), !tbaa.struct !17
  %i.fu = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZN4pbrt7InverseILi4EEEN4pstd8optionalINS_12SquareMatrixIXT_EEEEERKS4_(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 4 %3, ptr noundef nonnull align 4 dereferenceable(64) %4)
  %i.fv = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.fw = load i8, ptr %i.fv, align 4, !tbaa !14, !range !15, !noundef !16
  %i.fx = trunc nuw i8 %i.fw to i1
  br i1 %i.fx, label %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEdeEv.exit.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %_ZN4pbrt5SlerpEfNS_10QuaternionES0_.exit
  store <8 x float> splat (float +snan(0x200000)), ptr %i.fu, align 4, !tbaa !11
  %i.fy = getelementptr inbounds nuw i8, ptr %8, i64 96
  store <8 x float> splat (float +snan(0x200000)), ptr %i.fy, align 4, !tbaa !11
  br label %_ZN4pbrt9TransformC2ERKNS_12SquareMatrixILi4EEE.exit

_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEdeEv.exit.i: ; preds = %_ZN4pbrt5SlerpEfNS_10QuaternionES0_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.fu, ptr noundef nonnull align 4 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !17
  br label %_ZN4pbrt9TransformC2ERKNS_12SquareMatrixILi4EEE.exit

_ZN4pbrt9TransformC2ERKNS_12SquareMatrixILi4EEE.exit: ; preds = %.preheader.preheader.i, %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEdeEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @_ZNK4pbrt9TransformmlERKS0_(ptr dead_on_unwind writable sret(%"class.pbrt::Transform") align 4 %0, ptr noundef nonnull align 4 dereferenceable(128) %5, ptr noundef nonnull align 4 dereferenceable(128) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.l

bb.l:                                             ; preds = %_ZN4pbrt9TransformC2ERKNS_12SquareMatrixILi4EEE.exit, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt17AnimatedTransform12ApplyInverseERKNS_3RayEPf(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.pbrt::Ray") align 8 captures(none) initializes((0, 28), (32, 40)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(696) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %4 = alloca %"class.pbrt::Point3fi", align 16   ; 11 uses
  %5 = alloca %"class.pbrt::Point3fi", align 8    ; 6 uses
  %6 = alloca %"class.pbrt::Point3fi", align 16   ; 11 uses
  %7 = alloca %"class.pbrt::Point3fi", align 8    ; 6 uses
  %8 = alloca %"class.pbrt::Point3fi", align 16   ; 11 uses
  %9 = alloca %"class.pbrt::Point3fi", align 8    ; 6 uses
  %10 = alloca %"class.pbrt::Transform", align 4  ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.b = load i8, ptr %i.a, align 4, !tbaa !65, !range !15, !noundef !16
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.e = load float, ptr %i.d, align 8, !tbaa !70 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.g = load float, ptr %i.f, align 4, !tbaa !63
  %i.h = fcmp ugt float %i.e, %i.g
  br i1 %i.h, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28, !noalias !149
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28, !noalias !149
  %i.i = load <1 x float>, ptr %2, align 8, !noalias !149
  %.sroa.07.4.vec.insert.i.i = shufflevector <1 x float> %i.i, <1 x float> poison, <2 x i32> zeroinitializer
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.k = load <1 x float>, ptr %i.j, align 4, !noalias !149
  %.sroa.05.4.vec.insert.i.i = shufflevector <1 x float> %i.k, <1 x float> poison, <2 x i32> zeroinitializer
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load <1 x float>, ptr %i.l, align 8, !noalias !149
  %.sroa.0.4.vec.insert.i.i = shufflevector <1 x float> %i.m, <1 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %.sroa.07.4.vec.insert.i.i, ptr %9, align 8, !tbaa !11, !noalias !149
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8
  store <2 x float> %.sroa.05.4.vec.insert.i.i, ptr %i.n, align 8, !tbaa !11, !noalias !149
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 16
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.o, align 8, !tbaa !11, !noalias !149
  call void @_ZNK4pbrt9Transform12ApplyInverseERKNS_8Point3fiE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Point3fi") align 4 %8, ptr noundef nonnull align 4 dereferenceable(128) %1, ptr noundef nonnull align 4 dereferenceable(24) %9), !noalias !149
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28, !noalias !149
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.040.0.copyload.i = load <2 x float>, ptr %i.p, align 4, !noalias !149 ; 3 uses
  %.sroa.241.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.241.0.copyload.i = load float, ptr %.sroa.241.0..sroa_idx.i, align 4, !noalias !149 ; 2 uses
  %i.q = shufflevector <2 x float> %.sroa.040.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.t = tail call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 4 %i.r, <5 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true>, <5 x float> poison), !tbaa !11, !noalias !149 ; 3 uses
  %i.u = shufflevector <5 x float> %i.t, <5 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.v = shufflevector <5 x float> %i.t, <5 x float> poison, <2 x i32> <i32 1, i32 4>
  %i.w = fmul <2 x float> %i.q, %i.v
  %i.x = load <2 x float>, ptr %i.s, align 4, !tbaa !11, !noalias !149 ; 2 uses
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.z = shufflevector <4 x float> %i.u, <4 x float> %i.y, <2 x i32> <i32 0, i32 4>
  %i.aa = fmul <2 x float> %.sroa.040.0.copyload.i, %i.z
  %i.ab = fadd <2 x float> %i.w, %i.aa
  %i.ac = insertelement <2 x float> poison, float %.sroa.241.0.copyload.i, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = shufflevector <2 x float> %i.x, <2 x float> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.af = shufflevector <5 x float> %i.t, <5 x float> %i.ae, <2 x i32> <i32 2, i32 6>
  %i.ag = fmul <2 x float> %i.ad, %i.af
  %i.ah = fadd <2 x float> %i.ab, %i.ag           ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aj = load <2 x float>, ptr %i.ai, align 4, !tbaa !11, !noalias !149
  %i.ak = fmul <2 x float> %.sroa.040.0.copyload.i, %i.aj ; 2 uses
  %shift = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.ak, %shift
  %i.al = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.an = load float, ptr %i.am, align 4, !tbaa !11, !noalias !149
  %i.ao = fmul float %.sroa.241.0.copyload.i, %i.an
  %i.ap = fadd float %i.al, %i.ao                 ; 5 uses
  %i.aq = fmul <2 x float> %i.ah, %i.ah           ; 2 uses
  %shift73 = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop74 = fadd <2 x float> %i.aq, %shift73
  %i.ar = extractelement <2 x float> %foldExtExtBinop74, i64 0
  %i.as = fmul float %i.ap, %i.ap
  %i.at = fadd float %i.ar, %i.as                 ; 2 uses
  %i.au = fcmp ogt float %i.at, 0.000000e+00
  br i1 %i.au, label %bb.d, label %_ZNK4pbrt9Transform12ApplyInverseERKNS_3RayEPf.exit

bb.d:                                             ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !58, !noalias !149
  %i.ay = load float, ptr %i.av, align 8, !tbaa !57, !noalias !149
  %i.az = fsub float %i.ax, %i.ay
  %i.ba = fmul float %i.az, 5.000000e-01
  %i.bb = extractelement <2 x float> %i.ah, i64 1
  %i.bc = tail call noundef float @llvm.fabs.f32(float %i.bb)
  %i.bd = fmul float %i.bc, %i.ba
  %i.be = load <6 x float>, ptr %8, align 16, !tbaa !11, !noalias !149 ; 2 uses
  %i.bf = shufflevector <6 x float> %i.be, <6 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.bg = shufflevector <6 x float> %i.be, <6 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.bh = fsub <2 x float> %i.bf, %i.bg
  %i.bi = fmul <2 x float> %i.bh, splat (float 5.000000e-01)
  %i.bj = insertelement <2 x float> %i.ah, float %i.ap, i64 1
  %i.bk = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bj)
  %i.bl = fmul <2 x float> %i.bk, %i.bi           ; 2 uses
  %i.bm = extractelement <2 x float> %i.bl, i64 0
  %i.bn = fadd float %i.bm, %i.bd
  %i.bo = extractelement <2 x float> %i.bl, i64 1
  %i.bp = fadd float %i.bn, %i.bo
  %i.bq = fdiv float %i.bp, %i.at                 ; 3 uses
  %i.br = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bt = fmul <2 x float> %i.ah, %i.bs
  %i.bu = fmul float %i.ap, %i.bq
  %i.bv = call noundef nonnull align 4 dereferenceable(24) ptr @_ZN4pbrt8Point3fipLIfEERS0_NS_7Vector3IT_EE(ptr noundef nonnull align 4 dereferenceable(24) %8, <2 x float> %i.bt, float %i.bu), !noalias !149 ; 0 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZNK4pbrt9Transform12ApplyInverseERKNS_3RayEPf.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bw = load float, ptr %3, align 4, !tbaa !11, !noalias !149
  %i.bx = fsub float %i.bw, %i.bq
  store float %i.bx, ptr %3, align 4, !tbaa !11, !noalias !149
  br label %_ZNK4pbrt9Transform12ApplyInverseERKNS_3RayEPf.exit

_ZNK4pbrt9Transform12ApplyInverseERKNS_3RayEPf.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.060.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 4
  %.sroa.060.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.060.sroa.5.0.copyload.i = load float, ptr %.sroa.060.sroa.5.0..sroa_idx.i, align 16, !noalias !149
  %.sroa.060.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 20
  %.sroa.060.sroa.6.0.copyload.i = load float, ptr %.sroa.060.sroa.6.0..sroa_idx.i, align 4, !noalias !149
  %i.by = load <2 x float>, ptr %.sroa.060.sroa.2.0..sroa_idx.i, align 4, !noalias !149
  %i.bz = load <4 x float>, ptr %8, align 16, !noalias !149
  %i.ca = shufflevector <4 x float> %i.bz, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.cb = fadd <2 x float> %i.by, %i.ca
  %i.cc = fmul <2 x float> %i.cb, splat (float 5.000000e-01)
  %i.cd = fadd float %.sroa.060.sroa.5.0.copyload.i, %.sroa.060.sroa.6.0.copyload.i
  %i.ce = fmul float %i.cd, 5.000000e-01
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cg = load float, ptr %i.cf, align 8, !tbaa !70, !noalias !149
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !71, !noalias !149
  store <2 x float> %i.cc, ptr %0, align 8, !alias.scope !149
  %.sroa.27.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.ce, ptr %.sroa.27.0..sroa_idx.i.i, align 8, !alias.scope !149
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <2 x float> %i.ah, ptr %i.cj, align 4, !alias.scope !149
  %.sroa.23.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.ap, ptr %.sroa.23.0..sroa_idx.i.i, align 4, !alias.scope !149
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.cg, ptr %i.ck, align 8, !tbaa !70, !alias.scope !149
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 32
end_hunk_0
