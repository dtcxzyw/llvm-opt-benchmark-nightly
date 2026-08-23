Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_channelmixerrgb?download=true
inline.NumInlined: 403
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 99
begin_hunk_0_@find_temperature_from_raw_coeffs:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.at = load float, ptr %i.as, align 4, !tbaa !14
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.av = load float, ptr %i.au, align 8, !tbaa !14
  %i.aw = fdiv reassoc nsz arcp contract afn float %i.av, %.sroa.0.0
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.ay = load <4 x float>, ptr %i.ax, align 4, !tbaa !14
  %i.az = shufflevector <4 x float> %i.ay, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ba = fdiv reassoc nsz arcp contract afn <2 x float> %i.az, %i.ad ; 2 uses
  %i.bb = extractelement <2 x float> %i.ba, i64 0
  %i.bc = fadd reassoc nsz arcp contract afn float %i.bb, %i.aw
  %i.bd = extractelement <2 x float> %i.ba, i64 1
  %i.be = fadd reassoc nsz arcp contract afn float %i.bc, %i.bd ; 2 uses
  %i.bf = fmul reassoc nsz arcp contract afn float %i.be, -1.614000e-01
  %i.bg = insertelement <2 x float> poison, float %i.an, i64 0
  %i.bh = insertelement <2 x float> %i.bg, float %i.at, i64 1
  %i.bi = insertelement <2 x float> poison, float %.sroa.0.0, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = fdiv reassoc nsz arcp contract afn <2 x float> %i.bh, %i.bj
  %i.bl = load <2 x float>, ptr %i.aq, align 4, !tbaa !14
  %i.bm = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bn = fdiv reassoc nsz arcp contract afn <2 x float> %i.bl, %i.bm
  %i.bo = fadd reassoc nsz arcp contract afn <2 x float> %i.bn, %i.bk
  %i.bp = load <2 x float>, ptr %i.ar, align 8, !tbaa !14
  %i.bq = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.br = fdiv reassoc nsz arcp contract afn <2 x float> %i.bp, %i.bq
  %i.bs = fadd reassoc nsz arcp contract afn <2 x float> %i.bo, %i.br ; 4 uses
  %i.bt = extractelement <2 x float> %i.bs, i64 0
  %i.bu = fmul reassoc nsz arcp contract afn float %i.bt, f0x3F652546
  %i.bv = extractelement <2 x float> %i.bs, i64 1
  %i.bw = fmul reassoc nsz arcp contract afn float %i.bv, 2.664000e-01
  %i.bx = fadd reassoc nsz arcp contract afn float %i.bw, %i.bu
  %i.by = fadd reassoc nsz arcp contract afn float %i.bx, %i.bf ; 2 uses
  %i.bz = fmul reassoc nsz arcp contract afn <2 x float> %i.bs, <float 3.890000e-02, float 1.713500e+00>
  %i.ca = fmul reassoc nsz arcp contract afn <2 x float> %i.bs, <float f0x3F400D1B, float 6.850000e-02>
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cc = fsub reassoc nsz arcp contract afn <2 x float> %i.bz, %i.cb
  %i.cd = insertelement <2 x float> poison, float %i.be, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = fmul reassoc nsz arcp contract afn <2 x float> %i.ce, <float 1.029600e+00, float 3.670000e-02>
  %i.cg = fadd reassoc nsz arcp contract afn <2 x float> %i.cf, %i.cc ; 4 uses
  %i.ch = fmul reassoc nsz arcp contract afn <2 x float> %i.cg, <float f0x3DF632B8, float f0xBE13BCC0> ; 2 uses
  %i.ci = fmul reassoc nsz arcp contract afn float %i.by, f0xBC1360C7
  %i.cj = fmul reassoc nsz arcp contract afn <2 x float> %i.cg, <float f0x3F3A4894, float f0x3D20B175> ; 2 uses
  %i.ck = extractelement <2 x float> %i.cj, i64 1
  %i.cl = fadd reassoc nsz arcp contract afn float %i.ck, %i.ci
  %i.cm = extractelement <2 x float> %i.cj, i64 0
  %i.cn = fadd reassoc nsz arcp contract afn float %i.cl, %i.cm
  %i.co = insertelement <2 x float> poison, float %i.by, i64 0
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cq = fmul reassoc nsz arcp contract afn <2 x float> %i.cp, <float f0x3F85B261, float f0x3EEA3BC9>
  %i.cr = shufflevector <2 x float> %i.ch, <2 x float> %i.cg, <2 x i32> <i32 1, i32 3>
  %i.cs = fmul reassoc nsz arcp contract afn <2 x float> %i.cr, <float 1.000000e+00, float f0x3F022957>
  %i.ct = fadd reassoc nsz arcp contract afn <2 x float> %i.cs, %i.cq
  %i.cu = shufflevector <2 x float> %i.ch, <2 x float> %i.cg, <2 x i32> <i32 0, i32 2>
  %i.cv = fmul reassoc nsz arcp contract afn <2 x float> %i.cu, <float 1.000000e+00, float f0x3D17B837>
  %i.cw = fadd reassoc nsz arcp contract afn <2 x float> %i.ct, %i.cv ; 3 uses
  %i.cx = extractelement <2 x float> %i.cw, i64 1
  %i.cy = fdiv reassoc nsz arcp contract afn float %i.cn, %i.cx
  %i.cz = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.da = fdiv reassoc nsz arcp contract afn <2 x float> %i.cw, %i.cz ; 2 uses
  %i.db = extractelement <2 x float> %i.da, i64 0 ; 2 uses
  %i.dc = extractelement <2 x float> %i.da, i64 1 ; 2 uses
  %i.dd = fadd reassoc nsz arcp contract afn float %i.db, %i.dc
  %i.de = fadd reassoc nsz arcp contract afn float %i.dd, %i.cy ; 2 uses
  %i.df = fdiv reassoc nsz arcp contract afn float %i.db, %i.de
  %i.dg = fdiv reassoc nsz arcp contract afn float %i.dc, %i.de
  store float %i.df, ptr %2, align 4, !tbaa !14
  store float %i.dg, ptr %3, align 4, !tbaa !14
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.047 = phi i32 [ 1, %bb.j ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br label %bb.l

bb.l:                                             ; preds = %.loopexit, %bb.k
  %.148 = phi i32 [ %.047, %bb.k ], [ 0, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.e, %bb.l, %bb.d, %bb.b, %bb.a
  %.3 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %.148, %bb.l ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.c ]
  ret i32 %.3
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @convert_any_XYZ_to_LMS(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, i32 noundef %2) unnamed_addr #11 {
bb.a:
  switch i32 %2, label %bb.d [
    i32 2, label %bb.b
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load float, ptr %0, align 4, !tbaa !14
  %i.d = fmul reassoc nsz arcp contract afn float %i.c, f0x3F652546
  %i.e = load float, ptr %i.a, align 4, !tbaa !14
  %i.f = fmul reassoc nsz arcp contract afn float %i.e, 2.664000e-01
  %i.g = fadd reassoc nsz arcp contract afn float %i.f, %i.d
  %i.h = load float, ptr %i.b, align 4, !tbaa !14
  %i.i = fmul reassoc nsz arcp contract afn float %i.h, -1.614000e-01
  %i.j = fadd reassoc nsz arcp contract afn float %i.g, %i.i
  store float %i.j, ptr %1, align 4, !tbaa !14
  %i.k = load float, ptr %0, align 4, !tbaa !14
  %i.l = fmul reassoc nsz arcp contract afn float %i.k, f0xBF400D1B
  %i.m = load float, ptr %i.a, align 4, !tbaa !14
  %i.n = fmul reassoc nsz arcp contract afn float %i.m, 1.713500e+00
  %i.o = fadd reassoc nsz arcp contract afn float %i.n, %i.l
  %i.p = load float, ptr %i.b, align 4, !tbaa !14
  %i.q = fmul reassoc nsz arcp contract afn float %i.p, 3.670000e-02
  %i.r = fadd reassoc nsz arcp contract afn float %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.r, ptr %i.s, align 4, !tbaa !14
  %i.t = load float, ptr %0, align 4, !tbaa !14
  %i.u = fmul reassoc nsz arcp contract afn float %i.t, 3.890000e-02
  %i.v = load float, ptr %i.a, align 4, !tbaa !14
  %i.w = fmul reassoc nsz arcp contract afn float %i.v, -6.850000e-02
  %i.x = fadd reassoc nsz arcp contract afn float %i.w, %i.u
  %i.y = load float, ptr %i.b, align 4, !tbaa !14
  %i.z = fmul reassoc nsz arcp contract afn float %i.y, 1.029600e+00
  %i.aa = fadd reassoc nsz arcp contract afn float %i.x, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.aa, ptr %i.ab, align 4, !tbaa !14
  %i.ac = load float, ptr %0, align 4, !tbaa !14
  %i.ad = load float, ptr %i.a, align 4, !tbaa !14
  %i.ae = fadd reassoc nsz arcp contract afn float %i.ad, %i.ac
  %i.af = load float, ptr %i.b, align 4, !tbaa !14
  %i.ag = fadd reassoc nsz arcp contract afn float %i.ae, %i.af
  %i.ah = fmul reassoc nsz arcp contract afn float %i.ag, 0.000000e+00
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ak = load float, ptr %0, align 4, !tbaa !14
  %i.al = fmul reassoc nsz arcp contract afn float %i.ak, 4.012880e-01
  %i.am = load float, ptr %i.ai, align 4, !tbaa !14
  %i.an = fmul reassoc nsz arcp contract afn float %i.am, 6.501730e-01
  %i.ao = fadd reassoc nsz arcp contract afn float %i.an, %i.al
  %i.ap = load float, ptr %i.aj, align 4, !tbaa !14
  %i.aq = fmul reassoc nsz arcp contract afn float %i.ap, -5.146100e-02
  %i.ar = fadd reassoc nsz arcp contract afn float %i.ao, %i.aq
  store float %i.ar, ptr %1, align 4, !tbaa !14
  %i.as = load float, ptr %0, align 4, !tbaa !14
  %i.at = fmul reassoc nsz arcp contract afn float %i.as, -2.502680e-01
  %i.au = load float, ptr %i.ai, align 4, !tbaa !14
  %i.av = fmul reassoc nsz arcp contract afn float %i.au, f0x3F9A2A3D
  %i.aw = fadd reassoc nsz arcp contract afn float %i.av, %i.at
  %i.ax = load float, ptr %i.aj, align 4, !tbaa !14
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ax, 4.585400e-02
  %i.az = fadd reassoc nsz arcp contract afn float %i.aw, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.az, ptr %i.ba, align 4, !tbaa !14
  %i.bb = load float, ptr %0, align 4, !tbaa !14
  %i.bc = fmul reassoc nsz arcp contract afn float %i.bb, -2.079000e-03
  %i.bd = load float, ptr %i.ai, align 4, !tbaa !14
  %i.be = fmul reassoc nsz arcp contract afn float %i.bd, 4.895200e-02
  %i.bf = fadd reassoc nsz arcp contract afn float %i.be, %i.bc
  %i.bg = load float, ptr %i.aj, align 4, !tbaa !14
  %i.bh = fmul reassoc nsz arcp contract afn float %i.bg, 9.531270e-01
  %i.bi = fadd reassoc nsz arcp contract afn float %i.bf, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.bi, ptr %i.bj, align 4, !tbaa !14
  %i.bk = load float, ptr %0, align 4, !tbaa !14
  %i.bl = load float, ptr %i.ai, align 4, !tbaa !14
  %i.bm = fadd reassoc nsz arcp contract afn float %i.bl, %i.bk
  %i.bn = load float, ptr %i.aj, align 4, !tbaa !14
  %i.bo = fadd reassoc nsz arcp contract afn float %i.bm, %i.bn
  %i.bp = fmul reassoc nsz arcp contract afn float %i.bo, 0.000000e+00
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.bq = load float, ptr %0, align 4, !tbaa !14
  store float %i.bq, ptr %1, align 4, !tbaa !14
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bs = load float, ptr %i.br, align 4, !tbaa !14
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.bs, ptr %i.bt, align 4, !tbaa !14
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sink11 = phi i64 [ 8, %bb.d ], [ 12, %bb.c ], [ 12, %bb.b ]
  %.sink = phi float [ %i.bv, %bb.d ], [ %i.bp, %bb.c ], [ %i.ah, %bb.b ]
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 %.sink11
  store float %.sink, ptr %i.bw, align 4, !tbaa !14
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_loop_switch(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1, i64 noundef range(i64 -2147483648, 2147483648) %2, i64 noundef range(i64 -2147483648, 2147483648) %3, ptr nofree noundef nonnull readonly captures(none) %4, ptr nofree noundef nonnull readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef readonly captures(none) %10, float noundef %11, float noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef range(i32 0, 5) %15, i32 noundef %16) unnamed_addr #12 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 19 uses
  %i.b = alloca [4 x float], align 16             ; 19 uses
  %.sink11.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 14 uses
  %.sink11.i.sroa.gep116 = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 8 uses
  %i.c = load float, ptr %5, align 4, !tbaa !14   ; 6 uses
  switch i32 %15, label %bb.e [
    i32 2, label %bb.b
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %gep.1.i72 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %gep.2.i73 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %invariant.gep.1.i74 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.d = load float, ptr %invariant.gep.1.i74, align 4, !tbaa !14 ; 2 uses
  %invariant.gep.2.i77 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = load float, ptr %invariant.gep.2.i77, align 4, !tbaa !14 ; 2 uses
  %gep.1.2.i78 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.f = load float, ptr %gep.1.2.i78, align 4, !tbaa !14 ; 2 uses
  %gep.2.2.i79 = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.g = load <2 x float>, ptr %gep.1.i72, align 4, !tbaa !14 ; 3 uses
  %i.h = load <2 x float>, ptr %gep.2.i73, align 4, !tbaa !14 ; 3 uses
  %i.i = insertelement <2 x float> poison, float %i.d, i64 0
  %i.j = insertelement <2 x float> %i.i, float %i.c, i64 1 ; 2 uses
  %i.k = fmul reassoc nsz arcp contract afn <2 x float> %i.j, <float f0xBF400D1B, float f0x3F652546>
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.m = fmul reassoc nsz arcp contract afn <2 x float> %i.g, <float 2.664000e-01, float 1.713500e+00>
  %i.n = fadd reassoc nsz arcp contract afn <2 x float> %i.m, %i.l
  %i.o = fmul reassoc nsz arcp contract afn <2 x float> %i.h, <float -1.614000e-01, float 3.670000e-02>
  %i.p = fmul reassoc nsz arcp contract afn <2 x float> %i.j, <float f0x3F652546, float f0xBF400D1B>
  %i.q = fmul reassoc nsz arcp contract afn <2 x float> %i.g, <float 1.713500e+00, float 2.664000e-01>
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.s = fadd reassoc nsz arcp contract afn <2 x float> %i.r, %i.p
  %i.t = fmul reassoc nsz arcp contract afn <2 x float> %i.h, <float 3.670000e-02, float -1.614000e-01>
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.v = fadd reassoc nsz arcp contract afn <2 x float> %i.s, %i.u
  %i.w = fadd reassoc nsz arcp contract afn <2 x float> %i.n, %i.o
  %i.x = insertelement <2 x float> poison, float %i.e, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = fmul reassoc nsz arcp contract afn <2 x float> %i.y, <float f0x3F652546, float f0xBF400D1B>
  %i.aa = insertelement <2 x float> poison, float %i.f, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = fmul reassoc nsz arcp contract afn <2 x float> %i.ab, <float 2.664000e-01, float 1.713500e+00>
  %i.ad = fadd reassoc nsz arcp contract afn <2 x float> %i.ac, %i.z
  %i.ae = fmul reassoc nsz arcp contract afn float %i.e, 3.890000e-02
  %i.af = fmul reassoc nsz arcp contract afn float %i.f, -6.850000e-02
  %i.ag = fadd reassoc nsz arcp contract afn float %i.af, %i.ae
  %i.ah = load float, ptr %gep.2.2.i79, align 4, !tbaa !14 ; 3 uses
  %i.ai = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = fmul reassoc nsz arcp contract afn <2 x float> %i.aj, <float -1.614000e-01, float 3.670000e-02>
  %i.al = fadd reassoc nsz arcp contract afn <2 x float> %i.ad, %i.ak
  %i.am = insertelement <2 x float> poison, float %i.c, i64 0
  %i.an = insertelement <2 x float> %i.am, float %i.d, i64 1
  %i.ao = fmul reassoc nsz arcp contract afn <2 x float> %i.an, splat (float 3.890000e-02)
  %i.ap = fmul reassoc nsz arcp contract afn <2 x float> %i.g, splat (float -6.850000e-02)
  %i.aq = fadd reassoc nsz arcp contract afn <2 x float> %i.ap, %i.ao
  %i.ar = fmul reassoc nsz arcp contract afn <2 x float> %i.h, splat (float 1.029600e+00)
  %i.as = fadd reassoc nsz arcp contract afn <2 x float> %i.aq, %i.ar
  %i.at = fmul reassoc nsz arcp contract afn float %i.ah, 1.029600e+00
  %i.au = fadd reassoc nsz arcp contract afn float %i.ag, %i.at
  %gep.1.i83 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %gep.2.i84 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %invariant.gep.2.i88 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.av = load float, ptr %invariant.gep.2.i88, align 4, !tbaa !14 ; 2 uses
  %gep.1.2.i89 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.aw = load float, ptr %gep.1.2.i89, align 4, !tbaa !14 ; 2 uses
  %gep.2.2.i90 = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ax = load <2 x float>, ptr %6, align 4, !tbaa !14
  %i.ay = load <2 x float>, ptr %gep.1.i83, align 4, !tbaa !14 ; 2 uses
  %i.az = load float, ptr %gep.2.2.i90, align 4, !tbaa !14
  %i.ba = load <3 x float>, ptr %gep.2.i84, align 4, !tbaa !14
  %i.bb = shufflevector <3 x float> %i.ba, <3 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1>
  %i.bc = shufflevector <2 x float> %i.ax, <2 x float> poison, <5 x i32> <i32 0, i32 1, i32 poison, i32 0, i32 1> ; 2 uses
  %i.bd = insertelement <5 x float> %i.bc, float %i.aw, i64 2
  %i.be = shufflevector <2 x float> %i.ay, <2 x float> poison, <5 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison>
  %i.bf = shufflevector <5 x float> %i.be, <5 x float> %i.bd, <8 x i32> <i32 0, i32 1, i32 7, i32 0, i32 1, i32 7, i32 8, i32 9>
  %i.bg = fmul reassoc nsz arcp contract afn <8 x float> %i.bf, <float -1.471000e-01, float -1.471000e-01, float -1.471000e-01, float 5.184000e-01, float 5.184000e-01, float 5.184000e-01, float -8.500000e-03, float -8.500000e-03>
  %i.bh = shufflevector <2 x float> %i.ay, <2 x float> poison, <5 x i32> <i32 poison, i32 poison, i32 poison, i32 0, i32 1>
  %i.bi = insertelement <5 x float> %i.bh, float %i.av, i64 2
  %i.bj = shufflevector <5 x float> %i.bc, <5 x float> %i.bi, <8 x i32> <i32 0, i32 1, i32 7, i32 0, i32 1, i32 7, i32 8, i32 9>
  %i.bk = fmul reassoc nsz arcp contract afn <8 x float> %i.bj, <float f0x3F7CAC08, float f0x3F7CAC08, float f0x3F7CAC08, float 4.323000e-01, float 4.323000e-01, float 4.323000e-01, float 4.000000e-02, float 4.000000e-02>
  %i.bl = fadd reassoc nsz arcp contract afn <8 x float> %i.bk, %i.bg
  %i.bm = fmul reassoc nsz arcp contract afn <8 x float> %i.bb, <float 1.600000e-01, float 1.600000e-01, float 1.600000e-01, float 4.930000e-02, float 4.930000e-02, float 4.930000e-02, float 9.685000e-01, float 9.685000e-01>
  %i.bn = fadd reassoc nsz arcp contract afn <8 x float> %i.bl, %i.bm
  %i.bo = fmul reassoc nsz arcp contract afn float %i.av, -8.500000e-03
  %i.bp = fmul reassoc nsz arcp contract afn float %i.aw, 4.000000e-02
  %i.bq = fadd reassoc nsz arcp contract afn float %i.bp, %i.bo
  %i.br = fmul reassoc nsz arcp contract afn float %i.az, 9.685000e-01
  %i.bs = fadd reassoc nsz arcp contract afn float %i.bq, %i.br
  %i.bt = insertelement <4 x float> poison, float %i.au, i64 2
  %i.bu = insertelement <4 x float> %i.bt, float %i.ah, i64 3
  %i.bv = shufflevector <2 x float> %i.as, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bw = shufflevector <4 x float> %i.bv, <4 x float> %i.bu, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %gep.1.i94 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %gep.2.i95 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %invariant.gep.1.i96 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bx = load float, ptr %invariant.gep.1.i96, align 4, !tbaa !14 ; 2 uses
  %invariant.gep.2.i99 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.by = load float, ptr %invariant.gep.2.i99, align 4, !tbaa !14 ; 2 uses
  %gep.1.2.i100 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bz = load float, ptr %gep.1.2.i100, align 4, !tbaa !14 ; 2 uses
  %gep.2.2.i101 = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ca = load <2 x float>, ptr %gep.1.i94, align 4, !tbaa !14 ; 3 uses
  %i.cb = load <2 x float>, ptr %gep.2.i95, align 4, !tbaa !14 ; 3 uses
  %i.cc = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.cd = insertelement <2 x float> %i.cc, float %i.c, i64 1 ; 2 uses
  %i.ce = fmul reassoc nsz arcp contract afn <2 x float> %i.cd, <float -2.502680e-01, float 4.012880e-01>
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cg = fmul reassoc nsz arcp contract afn <2 x float> %i.ca, <float 6.501730e-01, float f0x3F9A2A3D>
  %i.ch = fadd reassoc nsz arcp contract afn <2 x float> %i.cg, %i.cf
  %i.ci = fmul reassoc nsz arcp contract afn <2 x float> %i.cb, <float -5.146100e-02, float 4.585400e-02>
  %i.cj = fmul reassoc nsz arcp contract afn <2 x float> %i.cd, <float 4.012880e-01, float -2.502680e-01>
  %i.ck = fmul reassoc nsz arcp contract afn <2 x float> %i.ca, <float f0x3F9A2A3D, float 6.501730e-01>
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cm = fadd reassoc nsz arcp contract afn <2 x float> %i.cl, %i.cj
  %i.cn = fmul reassoc nsz arcp contract afn <2 x float> %i.cb, <float 4.585400e-02, float -5.146100e-02>
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cp = fadd reassoc nsz arcp contract afn <2 x float> %i.cm, %i.co
  %i.cq = fadd reassoc nsz arcp contract afn <2 x float> %i.ch, %i.ci
  %i.cr = insertelement <2 x float> poison, float %i.by, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = fmul reassoc nsz arcp contract afn <2 x float> %i.cs, <float 4.012880e-01, float -2.502680e-01>
  %i.cu = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = fmul reassoc nsz arcp contract afn <2 x float> %i.cv, <float 6.501730e-01, float f0x3F9A2A3D>
  %i.cx = fadd reassoc nsz arcp contract afn <2 x float> %i.cw, %i.ct
  %i.cy = fmul reassoc nsz arcp contract afn float %i.by, -2.079000e-03
  %i.cz = fmul reassoc nsz arcp contract afn float %i.bz, 4.895200e-02
  %i.da = fadd reassoc nsz arcp contract afn float %i.cz, %i.cy
  %i.db = load float, ptr %gep.2.2.i101, align 4, !tbaa !14 ; 3 uses
  %i.dc = insertelement <2 x float> poison, float %i.db, i64 0
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.de = fmul reassoc nsz arcp contract afn <2 x float> %i.dd, <float -5.146100e-02, float 4.585400e-02>
  %i.df = fadd reassoc nsz arcp contract afn <2 x float> %i.cx, %i.de
  %i.dg = insertelement <2 x float> poison, float %i.c, i64 0
  %i.dh = insertelement <2 x float> %i.dg, float %i.bx, i64 1
  %i.di = fmul reassoc nsz arcp contract afn <2 x float> %i.dh, splat (float -2.079000e-03)
  %i.dj = fmul reassoc nsz arcp contract afn <2 x float> %i.ca, splat (float 4.895200e-02)
  %i.dk = fadd reassoc nsz arcp contract afn <2 x float> %i.dj, %i.di
  %i.dl = fmul reassoc nsz arcp contract afn <2 x float> %i.cb, splat (float 9.531270e-01)
  %i.dm = fadd reassoc nsz arcp contract afn <2 x float> %i.dk, %i.dl
  %i.dn = fmul reassoc nsz arcp contract afn float %i.db, 9.531270e-01
  %i.do = fadd reassoc nsz arcp contract afn float %i.da, %i.dn
  %gep.1.i105 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %gep.2.i106 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %invariant.gep.2.i110 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dp = load float, ptr %invariant.gep.2.i110, align 4, !tbaa !14 ; 2 uses
  %gep.1.2.i111 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.dq = load float, ptr %gep.1.2.i111, align 4, !tbaa !14 ; 2 uses
  %gep.2.2.i112 = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.dr = load <2 x float>, ptr %6, align 4, !tbaa !14
  %i.ds = load <2 x float>, ptr %gep.1.i105, align 4, !tbaa !14 ; 2 uses
  %i.dt = load float, ptr %gep.2.2.i112, align 4, !tbaa !14
  %i.du = load <3 x float>, ptr %gep.2.i106, align 4, !tbaa !14
  %i.dv = shufflevector <3 x float> %i.du, <3 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1>
  %i.dw = shufflevector <2 x float> %i.dr, <2 x float> poison, <5 x i32> <i32 0, i32 1, i32 poison, i32 0, i32 1> ; 2 uses
  %i.dx = insertelement <5 x float> %i.dw, float %i.dq, i64 2
  %i.dy = shufflevector <2 x float> %i.ds, <2 x float> poison, <5 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison>
  %i.dz = shufflevector <5 x float> %i.dy, <5 x float> %i.dx, <8 x i32> <i32 0, i32 1, i32 7, i32 0, i32 1, i32 7, i32 8, i32 9>
  %i.ea = fmul reassoc nsz arcp contract afn <8 x float> %i.dz, <float f0xBF8170CE, float f0xBF8170CE, float f0xBF8170CE, float 6.214470e-01, float 6.214470e-01, float 6.214470e-01, float -1.584100e-02, float -1.584100e-02>
  %i.eb = shufflevector <2 x float> %i.ds, <2 x float> poison, <5 x i32> <i32 poison, i32 poison, i32 poison, i32 0, i32 1>
  %i.ec = insertelement <5 x float> %i.eb, float %i.dp, i64 2
  %i.ed = shufflevector <5 x float> %i.dw, <5 x float> %i.ec, <8 x i32> <i32 0, i32 1, i32 7, i32 0, i32 1, i32 7, i32 8, i32 9>
  %i.ee = fmul reassoc nsz arcp contract afn <8 x float> %i.ed, <float f0x3FEE583F, float f0x3FEE583F, float f0x3FEE583F, float 3.875200e-01, float 3.875200e-01, float 3.875200e-01, float -3.412300e-02, float -3.412300e-02>
  %i.ef = fadd reassoc nsz arcp contract afn <8 x float> %i.ee, %i.ea
  %i.eg = fmul reassoc nsz arcp contract afn <8 x float> %i.dv, <float 1.491870e-01, float 1.491870e-01, float 1.491870e-01, float -8.974000e-03, float -8.974000e-03, float -8.974000e-03, float f0x3F866538, float f0x3F866538>
  %i.eh = fadd reassoc nsz arcp contract afn <8 x float> %i.ef, %i.eg
  %i.ei = fmul reassoc nsz arcp contract afn float %i.dp, -1.584100e-02
  %i.ej = fmul reassoc nsz arcp contract afn float %i.dq, -3.412300e-02
  %i.ek = fadd reassoc nsz arcp contract afn float %i.ej, %i.ei
  %i.el = fmul reassoc nsz arcp contract afn float %i.dt, f0x3F866538
  %i.em = fadd reassoc nsz arcp contract afn float %i.ek, %i.el
  %i.en = insertelement <4 x float> poison, float %i.do, i64 2
  %i.eo = insertelement <4 x float> %i.en, float %i.db, i64 3
  %i.ep = shufflevector <2 x float> %i.dm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.eq = shufflevector <4 x float> %i.ep, <4 x float> %i.eo, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.er = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.es = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !14
  %i.ew = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ex = load <3 x float>, ptr %i.ew, align 4, !tbaa !14
  %i.ey = shufflevector <3 x float> %i.ex, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %17 = getelementptr inbounds nuw i8, ptr %5, i64 48
  %18 = load float, ptr %17, align 4, !tbaa !14
  %19 = getelementptr inbounds nuw i8, ptr %5, i64 52
  %20 = load float, ptr %19, align 4, !tbaa !14
  %21 = getelementptr inbounds nuw i8, ptr %5, i64 56
  %22 = load float, ptr %21, align 4, !tbaa !14
  %i.ez = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.fa = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.fb = getelementptr inbounds nuw i8, ptr %6, i64 52
  %i.fc = load float, ptr %i.et, align 4, !tbaa !14
  %i.fd = load float, ptr %i.es, align 4, !tbaa !14
  %i.fe = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.er, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !14
  %i.ff = shufflevector <4 x float> %i.fe, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.fg = load float, ptr %i.fa, align 4, !tbaa !14
  %i.fh = load float, ptr %i.ez, align 4, !tbaa !14
  %i.fi = tail call <10 x float> @llvm.masked.load.v10f32.p0(ptr align 4 %6, <10 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true, i1 true, i1 true, i1 false, i1 true, i1 true>, <10 x float> poison), !tbaa !14
  %i.fj = shufflevector <10 x float> %i.fi, <10 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 4, i32 5, i32 6, i32 8, i32 9>
  %i.fk = load <2 x float>, ptr %i.fb, align 4, !tbaa !14
  %i.fl = insertelement <2 x float> poison, float %i.fd, i64 0
  %i.fm = insertelement <2 x float> %i.fl, float %i.ev, i64 1
  %i.fn = insertelement <2 x float> poison, float %i.c, i64 0
  %i.fo = insertelement <2 x float> %i.fn, float %i.fc, i64 1
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.fp = getelementptr inbounds nuw i8, ptr %5, i64 4
  %gep.1.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  %gep.2.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  %invariant.gep.2.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %gep.1.2.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  %gep.2.2.i = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.fq = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.fr = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.fs = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ft = load float, ptr %invariant.gep.2.i, align 4, !tbaa !14
  %i.fu = load <3 x float>, ptr %6, align 4, !tbaa !14
  %i.fv = shufflevector <3 x float> %i.fu, <3 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1>
  %i.fw = load float, ptr %gep.1.2.i, align 4, !tbaa !14
  %i.fx = load <3 x float>, ptr %gep.1.i, align 4, !tbaa !14
  %i.fy = shufflevector <3 x float> %i.fx, <3 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1>
  %i.fz = load float, ptr %gep.2.2.i, align 4, !tbaa !14
  %i.ga = load <3 x float>, ptr %gep.2.i, align 4, !tbaa !14
  %i.gb = shufflevector <3 x float> %i.ga, <3 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1>
  %i.gc = tail call <10 x float> @llvm.masked.load.v10f32.p0(ptr nonnull align 4 %i.fp, <10 x i1> <i1 true, i1 true, i1 false, i1 true, i1 true, i1 true, i1 false, i1 true, i1 true, i1 true>, <10 x float> poison), !tbaa !14 ; 3 uses
  %i.gd = load float, ptr %i.fs, align 4, !tbaa !14 ; 2 uses
  %i.ge = load float, ptr %i.fr, align 4, !tbaa !14
  %i.gf = load float, ptr %i.fq, align 4, !tbaa !14
  %i.gg = shufflevector <10 x float> %i.gc, <10 x float> poison, <3 x i32> <i32 poison, i32 3, i32 7>
  %i.gh = insertelement <3 x float> poison, float %i.c, i64 0
  %i.gi = shufflevector <3 x float> %i.gh, <3 x float> %i.gg, <8 x i32> <i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 5, i32 5>
  %i.gj = fmul reassoc nsz arcp contract afn <8 x float> %i.fv, %i.gi
  %i.gk = shufflevector <10 x float> %i.gc, <10 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 8, i32 8>
  %i.gl = fmul reassoc nsz arcp contract afn <8 x float> %i.gk, %i.fy
  %i.gm = fadd reassoc nsz arcp contract afn <8 x float> %i.gl, %i.gj
  %i.gn = shufflevector <10 x float> %i.gc, <10 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 5, i32 5, i32 5, i32 9, i32 9>
  %i.go = fmul reassoc nsz arcp contract afn <8 x float> %i.gn, %i.gb
  %i.gp = fadd reassoc nsz arcp contract afn <8 x float> %i.gm, %i.go
  %i.gq = fmul reassoc nsz arcp contract afn float %i.gf, %i.ft
  %i.gr = fmul reassoc nsz arcp contract afn float %i.ge, %i.fw
  %i.gs = fadd reassoc nsz arcp contract afn float %i.gr, %i.gq
  %i.gt = fmul reassoc nsz arcp contract afn float %i.gd, %i.fz
  %i.gu = fadd reassoc nsz arcp contract afn float %i.gs, %i.gt
  %i.gv = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, float %i.gd, i64 3
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.51228.0 = phi nsz float [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.c ], [ %18, %bb.d ]
  %.sroa.53229.0 = phi nsz float [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.c ], [ %20, %bb.d ]
  %.sroa.55.0 = phi nsz float [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.c ], [ %22, %bb.d ]
  %.sroa.53220.0 = phi nsz float [ %i.gu, %bb.e ], [ %i.bs, %bb.b ], [ %i.em, %bb.c ], [ %i.fh, %bb.d ]
  %.sroa.63.0 = phi nsz float [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.c ], [ %i.fg, %bb.d ]
  %i.gw = phi <2 x float> [ zeroinitializer, %bb.e ], [ %i.al, %bb.b ], [ %i.df, %bb.c ], [ %i.fm, %bb.d ] ; 2 uses
  %i.gx = phi <2 x float> [ zeroinitializer, %bb.e ], [ %i.w, %bb.b ], [ %i.cq, %bb.c ], [ %i.fo, %bb.d ] ; 2 uses
  %i.gy = phi <2 x float> [ zeroinitializer, %bb.e ], [ %i.v, %bb.b ], [ %i.cp, %bb.c ], [ %i.ff, %bb.d ] ; 2 uses
  %i.gz = phi <8 x float> [ %i.gp, %bb.e ], [ %i.bn, %bb.b ], [ %i.eh, %bb.c ], [ %i.fj, %bb.d ] ; 5 uses
  %i.ha = phi <4 x float> [ %i.gv, %bb.e ], [ %i.bw, %bb.b ], [ %i.eq, %bb.c ], [ %i.ey, %bb.d ] ; 4 uses
  %i.hb = phi <2 x float> [ zeroinitializer, %bb.e ], [ zeroinitializer, %bb.b ], [ zeroinitializer, %bb.c ], [ %i.fk, %bb.d ] ; 2 uses
  %.not = icmp eq i32 %13, 0                      ; 4 uses
  %i.hc = select reassoc nsz arcp contract afn i1 %.not, float f0xFF7FFFFF, float 0.000000e+00 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.he = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.hf = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.hg = load <2 x float>, ptr %i.hf, align 4, !tbaa !14 ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.hi = load <2 x float>, ptr %i.hd, align 4, !tbaa !14 ; 3 uses
  %i.hj = load float, ptr %i.he, align 4, !tbaa !14
  %i.hk = load float, ptr %i.hh, align 4, !tbaa !14
  %i.hl = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !14 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !14 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !14 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %5, i64 52
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !14 ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !14 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.hw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !14 ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.hz = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !14 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.ic = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.id = load float, ptr %i.ic, align 4, !tbaa !14 ; 3 uses
  %i.ie = load float, ptr %i.hv, align 4, !tbaa !14 ; 2 uses
  %i.if = load float, ptr %i.hy, align 4, !tbaa !14 ; 2 uses
  %i.ig = load float, ptr %i.ib, align 4, !tbaa !14 ; 2 uses
  %i.ih = shl nsw i64 %2, 2
  %i.ii = mul i64 %i.ih, %3                       ; 2 uses
  %.not236 = icmp eq i64 %i.ii, 0
  br i1 %.not236, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.ij = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !14
  %i.il = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.im = load <2 x float>, ptr %i.il, align 4, !tbaa !14
  %i.in = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.io = load <2 x float>, ptr %i.in, align 4, !tbaa !14 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.iq = load <2 x float>, ptr %i.ip, align 4, !tbaa !14 ; 3 uses
  %i.ir = load <2 x float>, ptr %4, align 4, !tbaa !14 ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.it = load <2 x float>, ptr %i.is, align 4, !tbaa !14 ; 3 uses
  %i.iu = load <2 x float>, ptr %5, align 4, !tbaa !14 ; 4 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 9 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 12 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.iy = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 4 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.ja = fcmp reassoc nsz arcp contract afn oeq float %12, 0.000000e+00 ; 2 uses
  %switch = icmp samesign ult i32 %15, 4          ; 2 uses
  %.not58 = icmp eq i32 %14, 0
  %i.jb = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.jc = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.jd = extractelement <4 x float> %i.ha, i64 3 ; 3 uses
  %factor.op.fmul = fmul reassoc nsz arcp contract afn float %i.jd, f0x3F533F8A
  %factor.op.fmul257 = fmul reassoc nsz arcp contract afn float %i.hm, f0x3F533F8A
  %factor.op.fmul259 = fmul reassoc nsz arcp contract afn float %i.ho, f0x3F533F8A
  %i.je = extractelement <4 x float> %i.ha, i64 2 ; 2 uses
  %factor.op.fmul261 = fmul reassoc nsz arcp contract afn float %i.je, 8.330360e-01
  %i.jf = extractelement <4 x float> %i.ha, i64 0 ; 2 uses
  %factor.op.fmul263 = fmul reassoc nsz arcp contract afn float %i.jf, 8.330360e-01
  %i.jg = extractelement <4 x float> %i.ha, i64 1 ; 2 uses
  %factor.op.fmul265 = fmul reassoc nsz arcp contract afn float %i.jg, 8.330360e-01
  %factor.op.fmul267 = fmul reassoc nsz arcp contract afn float %i.je, f0x3F51729B
  %factor.op.fmul269 = fmul reassoc nsz arcp contract afn float %i.jf, f0x3F51729B
  %factor.op.fmul271 = fmul reassoc nsz arcp contract afn float %i.jg, f0x3F51729B
  %i.jh = insertelement <4 x float> poison, float %i.hx, i64 0
  %i.ji = insertelement <4 x float> %i.jh, float %i.ia, i64 1
  %i.jj = insertelement <4 x float> %i.ji, float %i.id, i64 2
  %i.jk = insertelement <4 x float> %i.jj, float %i.ik, i64 3
  %i.jl = extractelement <2 x float> %i.ir, i64 0 ; 2 uses
  %i.jm = extractelement <2 x float> %i.iq, i64 0 ; 2 uses
  %i.jn = extractelement <2 x float> %i.io, i64 0 ; 2 uses
  %i.jo = shufflevector <2 x float> %i.ir, <2 x float> %i.iq, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.jp = shufflevector <2 x float> %i.io, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.jq = shufflevector <4 x float> %i.jo, <4 x float> %i.jp, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.jr = shufflevector <2 x float> %i.im, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.js = shufflevector <4 x float> %i.jq, <4 x float> %i.jr, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.jt = shufflevector <2 x float> %i.ir, <2 x float> %i.iq, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.ju = shufflevector <4 x float> %i.jt, <4 x float> %i.jp, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.jv = shufflevector <4 x float> %i.ju, <4 x float> %i.jr, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.jw = insertelement <2 x float> poison, float %i.hc, i64 0
  %i.jx = shufflevector <2 x float> %i.jw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jy = shufflevector <2 x float> %i.iu, <2 x float> %i.hg, <2 x i32> <i32 0, i32 3>
  %i.jz = shufflevector <2 x float> %i.iu, <2 x float> %i.hg, <2 x i32> <i32 1, i32 2>
  %i.ka = extractelement <2 x float> %i.iu, i64 0
  %i.kb = extractelement <2 x float> %i.hg, i64 0
  %i.kc = shufflevector <2 x float> %i.hi, <2 x float> %i.it, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.kd = extractelement <2 x float> %i.hi, i64 0
  %i.ke = extractelement <2 x float> %i.it, i64 0
  %i.kf = shufflevector <2 x float> %i.iu, <2 x float> %i.it, <2 x i32> <i32 0, i32 2>
  %i.kg = shufflevector <8 x float> %i.gz, <8 x float> poison, <2 x i32> <i32 6, i32 poison>
  %i.kh = shufflevector <8 x float> %i.gz, <8 x float> poison, <2 x i32> <i32 7, i32 poison>
  %i.ki = shufflevector <2 x float> %i.kg, <2 x float> %i.hb, <2 x i32> <i32 0, i32 2>
  %i.kj = insertelement <2 x float> %i.hb, float %.sroa.53220.0, i64 0
  %i.kk = shufflevector <8 x float> %i.gz, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.kl = shufflevector <8 x float> %i.gz, <8 x float> poison, <2 x i32> <i32 2, i32 5>
  %i.km = shufflevector <2 x float> %i.hg, <2 x float> %i.hi, <2 x i32> <i32 2, i32 0>
  %i.kn = shufflevector <8 x float> %i.gz, <8 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.ko = insertelement <2 x float> %i.kh, float %.sroa.63.0, i64 1
  br label %bb.g

._crit_edge:                                      ; preds = %bb.ar, %bb.f
  ret void

bb.g:                                             ; preds = %.lr.ph, %bb.ar
  %.054235 = phi i64 [ 0, %.lr.ph ], [ %i.abz, %bb.ar ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.054235 ; 3 uses
  %i.kq = load <2 x float>, ptr %i.kp, align 4, !tbaa !14
  %i.kr = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.kq, <2 x float> %i.jx) ; 17 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !14
  %i.ku = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.kt, float %i.hc) ; 12 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kp, i64 12
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !14
  switch i32 %15, label %.preheader.preheader [
    i32 2, label %bb.h
    i32 0, label %bb.i
    i32 1, label %bb.j
    i32 3, label %bb.k
  ]

.preheader.preheader:                             ; preds = %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false), !tbaa !14
  br label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.kx = extractelement <2 x float> %i.kr, i64 0 ; 2 uses
  %i.ky = extractelement <2 x float> %i.kr, i64 1 ; 2 uses
  %i.kz = insertelement <2 x float> poison, float %i.ku, i64 0
  %i.la = shufflevector <2 x float> %i.kz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lb = fmul reassoc nsz arcp contract afn <2 x float> %i.la, %i.kc
  %i.lc = fmul reassoc nsz arcp contract afn float %i.kx, %i.hm
  %i.ld = fmul reassoc nsz arcp contract afn float %i.ky, %i.ho
  %i.le = fadd reassoc nsz arcp contract afn float %i.ld, %i.lc
  %i.lf = fmul reassoc nsz arcp contract afn float %i.ku, %i.jd
  %i.lg = fadd reassoc nsz arcp contract afn float %i.le, %i.lf ; 2 uses
  %i.lh = fmul reassoc nsz arcp contract afn float %i.kx, %i.hq
  %i.li = fmul reassoc nsz arcp contract afn float %i.ky, %i.hs
  %i.lj = fadd reassoc nsz arcp contract afn float %i.li, %i.lh
  %i.lk = fmul reassoc nsz arcp contract afn float %i.ku, %i.hu
  %i.ll = fadd reassoc nsz arcp contract afn float %i.lj, %i.lk
  store float %i.ll, ptr %.sink11.i.sroa.gep116, align 4, !tbaa !14
  %i.lm = shufflevector <2 x float> %i.kr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ln = fmul reassoc nsz arcp contract afn <2 x float> %i.lm, %i.km
  %i.lo = fmul reassoc nsz arcp contract afn <2 x float> %i.kr, %i.kf
  %i.lp = fadd reassoc nsz arcp contract afn <2 x float> %i.lo, %i.ln
  %i.lq = fadd reassoc nsz arcp contract afn <2 x float> %i.lp, %i.lb ; 4 uses
  %i.lr = fmul reassoc nsz arcp contract afn <2 x float> %i.lq, <float f0x3F400D1B, float 2.664000e-01>
  %i.ls = shufflevector <2 x float> %i.lr, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.lt = fmul reassoc nsz arcp contract afn <2 x float> %i.lq, <float f0x3F652546, float 1.713500e+00> ; 2 uses
  %i.lu = fadd reassoc nsz arcp contract afn <2 x float> %i.lt, %i.ls
  %i.lv = fsub reassoc nsz arcp contract afn <2 x float> %i.lt, %i.ls
  %i.lw = shufflevector <2 x float> %i.lu, <2 x float> %i.lv, <2 x i32> <i32 0, i32 3>
  %i.lx = insertelement <2 x float> poison, float %i.lg, i64 0
  %i.ly = shufflevector <2 x float> %i.lx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lz = fmul reassoc nsz arcp contract afn <2 x float> %i.ly, <float -1.614000e-01, float 3.670000e-02>
  %i.ma = fadd reassoc nsz arcp contract afn <2 x float> %i.lw, %i.lz ; 2 uses
  %i.mb = extractelement <2 x float> %i.lq, i64 0
  %i.mc = fmul reassoc nsz arcp contract afn float %i.mb, 3.890000e-02
  %i.md = extractelement <2 x float> %i.lq, i64 1 ; 3 uses
  %i.me = fmul reassoc nsz arcp contract afn float %i.md, 6.850000e-02
  %i.mf = fsub reassoc nsz arcp contract afn float %i.mc, %i.me
  %i.mg = fmul reassoc nsz arcp contract afn float %i.lg, 1.029600e+00
  %i.mh = fadd reassoc nsz arcp contract afn float %i.mf, %i.mg ; 2 uses
  %i.mi = fcmp reassoc nsz arcp contract afn ogt float %i.md, f0x37800000
  br i1 %i.mi, label %.split.us.preheader.i, label %.split.preheader.i

.split.preheader.i:                               ; preds = %bb.h
  %i.mj = fmul reassoc nsz arcp contract afn <2 x float> %i.ma, splat (float 6.553600e+04)
  %i.mk = fmul reassoc nsz arcp contract afn float %i.mh, 6.553600e+04
  br label %downscale_vector.exit

.split.us.preheader.i:                            ; preds = %bb.h
  %i.ml = fadd reassoc nsz arcp contract afn float %i.md, f0x37800000 ; 3 uses
  %i.mm = insertelement <2 x float> poison, float %i.ml, i64 0
  %i.mn = shufflevector <2 x float> %i.mm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mo = fdiv reassoc nsz arcp contract afn <2 x float> %i.ma, %i.mn
  %i.mp = fdiv reassoc nsz arcp contract afn float %i.mh, %i.ml
  br label %downscale_vector.exit

downscale_vector.exit:                            ; preds = %.split.preheader.i, %.split.us.preheader.i
  %.sink22.i = phi float [ f0x37800000, %.split.preheader.i ], [ %i.ml, %.split.us.preheader.i ] ; 2 uses
  %storemerge = phi float [ %i.mk, %.split.preheader.i ], [ %i.mp, %.split.us.preheader.i ]
  %i.mq = phi <2 x float> [ %i.mj, %.split.preheader.i ], [ %i.mo, %.split.us.preheader.i ]
  %i.mr = load float, ptr %i.iz, align 4, !tbaa !14
  %i.ms = fdiv reassoc nsz arcp contract afn float %storemerge, %i.mr ; 3 uses
  %i.mt = fcmp reassoc nsz arcp contract afn ogt float %i.ms, 0.000000e+00
  %i.mu = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ms, float %11)
  %i.mv = select reassoc nsz arcp contract afn i1 %i.mt, float %i.mu, float %i.ms
  %i.mw = fmul reassoc nsz arcp contract afn <2 x float> %i.mq, <float 9.960780e-01, float f0x3F82A487>
  %i.mx = fmul reassoc nsz arcp contract afn float %i.mv, f0x3F51729B
  %i.my = load <2 x float>, ptr %7, align 4, !tbaa !14
  %i.mz = insertelement <2 x float> poison, float %.sink22.i, i64 0
  %i.na = shufflevector <2 x float> %i.mz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nb = fmul reassoc nsz arcp contract afn <2 x float> %i.mw, %i.na
  %i.nc = fdiv reassoc nsz arcp contract afn <2 x float> %i.nb, %i.my
  store <2 x float> %i.nc, ptr %i.a, align 16, !tbaa !14
  %i.nd = fmul reassoc nsz arcp contract afn float %i.mx, %.sink22.i
  store float %i.nd, ptr %.sink11.i.sroa.gep, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa !14, !alias.scope !290
  %i.ne = load <2 x float>, ptr %i.b, align 16, !tbaa !14
  %.pre239 = load float, ptr %i.iw, align 8, !tbaa !14
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.nf = fmul reassoc nsz arcp contract afn <2 x float> %i.kr, %i.gx
  %i.ng = shufflevector <2 x float> %i.kr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.nh = fmul reassoc nsz arcp contract afn <2 x float> %i.ng, %i.gy
  %i.ni = insertelement <2 x float> poison, float %i.ku, i64 0
  %i.nj = shufflevector <2 x float> %i.ni, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nk = fmul reassoc nsz arcp contract afn <2 x float> %i.nj, %i.gw
  %i.nl = extractelement <2 x float> %i.kr, i64 0
  %.reass270 = fmul reassoc nsz arcp contract afn float %i.nl, %factor.op.fmul269
  %i.nm = extractelement <2 x float> %i.kr, i64 1
  %.reass272 = fmul reassoc nsz arcp contract afn float %i.nm, %factor.op.fmul271
  %i.nn = fadd reassoc nsz arcp contract afn float %.reass272, %.reass270
  %.reass268 = fmul reassoc nsz arcp contract afn float %i.ku, %factor.op.fmul267
  %i.no = fadd reassoc nsz arcp contract afn float %i.nn, %.reass268
  %i.np = load float, ptr %i.iz, align 4, !tbaa !14
  %i.nq = fadd reassoc nsz arcp contract afn <2 x float> %i.nf, %i.nh
  %i.nr = fadd reassoc nsz arcp contract afn <2 x float> %i.nq, %i.nk ; 2 uses
  store <2 x float> %i.nr, ptr %i.a, align 16, !tbaa !14
  %i.ns = load <2 x float>, ptr %7, align 4, !tbaa !14
  %i.nt = fmul reassoc nsz arcp contract afn <2 x float> %i.nr, <float 9.960780e-01, float f0x3F82A487>
  %i.nu = fdiv reassoc nsz arcp contract afn <2 x float> %i.nt, %i.ns
  %i.nv = fdiv reassoc nsz arcp contract afn float %i.no, %i.np
  br label %.loopexit

bb.j:                                             ; preds = %bb.g
  %i.nw = extractelement <2 x float> %i.kr, i64 0 ; 2 uses
  %i.nx = extractelement <2 x float> %i.kr, i64 1 ; 2 uses
  %.reass264 = fmul reassoc nsz arcp contract afn float %i.nw, %factor.op.fmul263
  %.reass266 = fmul reassoc nsz arcp contract afn float %i.nx, %factor.op.fmul265
  %i.ny = fadd reassoc nsz arcp contract afn float %.reass266, %.reass264
  %.reass262 = fmul reassoc nsz arcp contract afn float %i.ku, %factor.op.fmul261
  %23 = fadd reassoc nsz arcp contract afn float %i.ny, %.reass262
  %24 = fmul reassoc nsz arcp contract afn float %i.nw, %.sroa.51228.0
  %25 = fmul reassoc nsz arcp contract afn float %i.nx, %.sroa.53229.0
  %26 = fadd reassoc nsz arcp contract afn float %25, %24
  %27 = fmul reassoc nsz arcp contract afn float %i.ku, %.sroa.55.0
  %i.nz = fadd reassoc nsz arcp contract afn float %26, %27
  store float %i.nz, ptr %.sink11.i.sroa.gep116, align 4, !tbaa !14
  %i.oa = shufflevector <2 x float> %i.kr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ob = fmul reassoc nsz arcp contract afn <2 x float> %i.oa, %i.gy
  %i.oc = fmul reassoc nsz arcp contract afn <2 x float> %i.kr, %i.gx
  %i.od = insertelement <2 x float> poison, float %i.ku, i64 0
  %i.oe = shufflevector <2 x float> %i.od, <2 x float> poison, <2 x i32> zeroinitializer
  %i.of = fmul reassoc nsz arcp contract afn <2 x float> %i.oe, %i.gw
  %i.og = fadd reassoc nsz arcp contract afn <2 x float> %i.oc, %i.ob
  %i.oh = fadd reassoc nsz arcp contract afn <2 x float> %i.og, %i.of ; 2 uses
  store <2 x float> %i.oh, ptr %i.a, align 16, !tbaa !14
  %i.oi = fmul reassoc nsz arcp contract afn <2 x float> %i.oh, <float 9.945350e-01, float f0x3F8020AB>
  %i.oj = load <2 x float>, ptr %7, align 4, !tbaa !14
  %i.ok = fdiv reassoc nsz arcp contract afn <2 x float> %i.oi, %i.oj ; 2 uses
  %28 = extractelement <2 x float> %i.ok, i64 0
  store float %28, ptr %i.b, align 16, !tbaa !14
  %i.ol = load float, ptr %i.iz, align 4, !tbaa !14
  %i.om = fdiv reassoc nsz arcp contract afn float %23, %i.ol
  br label %.loopexit

bb.k:                                             ; preds = %bb.g
  %i.on = fmul reassoc nsz arcp contract afn <2 x float> %i.kr, %i.jy
  %i.oo = shufflevector <2 x float> %i.kr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.op = fmul reassoc nsz arcp contract afn <2 x float> %i.oo, %i.jz
  %i.oq = insertelement <2 x float> poison, float %i.ku, i64 0
  %i.or = shufflevector <2 x float> %i.oq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.os = fmul reassoc nsz arcp contract afn <2 x float> %i.or, %i.kc
  %i.ot = extractelement <2 x float> %i.kr, i64 0 ; 2 uses
  %.reass258 = fmul reassoc nsz arcp contract afn float %i.ot, %factor.op.fmul257
  %i.ou = extractelement <2 x float> %i.kr, i64 1 ; 2 uses
  %.reass260 = fmul reassoc nsz arcp contract afn float %i.ou, %factor.op.fmul259
  %i.ov = fadd reassoc nsz arcp contract afn float %.reass260, %.reass258
  %.reass = fmul reassoc nsz arcp contract afn float %i.ku, %factor.op.fmul
  %i.ow = fadd reassoc nsz arcp contract afn float %i.ov, %.reass
  %i.ox = fmul reassoc nsz arcp contract afn float %i.ot, %i.hq
  %i.oy = fmul reassoc nsz arcp contract afn float %i.ou, %i.hs
  %i.oz = fadd reassoc nsz arcp contract afn float %i.oy, %i.ox
  %i.pa = fmul reassoc nsz arcp contract afn float %i.ku, %i.hu
  %i.pb = fadd reassoc nsz arcp contract afn float %i.oz, %i.pa
  store float %i.pb, ptr %.sink11.i.sroa.gep116, align 4, !tbaa !14
  %i.pc = fadd reassoc nsz arcp contract afn <2 x float> %i.on, %i.op
  %i.pd = fadd reassoc nsz arcp contract afn <2 x float> %i.pc, %i.os ; 2 uses
  store <2 x float> %i.pd, ptr %i.a, align 16, !tbaa !14
  %i.pe = fmul reassoc nsz arcp contract afn <2 x float> %i.pd, <float 9.642120e-01, float 1.000000e+00>
  %i.pf = load <2 x float>, ptr %7, align 4, !tbaa !14
  %i.pg = fdiv reassoc nsz arcp contract afn <2 x float> %i.pe, %i.pf ; 2 uses
  store <2 x float> %i.pg, ptr %i.b, align 16, !tbaa !14
  %i.ph = load float, ptr %i.iz, align 4, !tbaa !14
  %i.pi = fdiv reassoc nsz arcp contract afn float %i.ow, %i.ph
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.k, %bb.j, %bb.i, %downscale_vector.exit
  %i.pj = phi float [ %i.ku, %.preheader.preheader ], [ %i.pi, %bb.k ], [ %i.om, %bb.j ], [ %i.nv, %bb.i ], [ %.pre239, %downscale_vector.exit ]
  %i.pk = phi <2 x float> [ %i.kr, %.preheader.preheader ], [ %i.pg, %bb.k ], [ %i.ok, %bb.j ], [ %i.nu, %bb.i ], [ %i.ne, %downscale_vector.exit ] ; 4 uses
  %i.pl = shufflevector <2 x float> %i.pk, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.pm = fmul reassoc nsz arcp contract afn <2 x float> %i.pl, %i.kn
  %i.pn = fmul reassoc nsz arcp contract afn <2 x float> %i.pk, %i.kk
  %i.po = fadd reassoc nsz arcp contract afn <2 x float> %i.pn, %i.pm
  %i.pp = insertelement <2 x float> poison, float %i.pj, i64 0
  %i.pq = shufflevector <2 x float> %i.pp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.pr = fmul reassoc nsz arcp contract afn <2 x float> %i.pq, %i.kl
  %i.ps = fadd reassoc nsz arcp contract afn <2 x float> %i.po, %i.pr ; 5 uses
  %i.pt = fmul reassoc nsz arcp contract afn <2 x float> %i.pk, %i.ki
  %i.pu = shufflevector <2 x float> %i.pk, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.pv = fmul reassoc nsz arcp contract afn <2 x float> %i.pu, %i.ko
  %i.pw = fmul reassoc nsz arcp contract afn <2 x float> %i.pq, %i.kj
  %i.px = fadd reassoc nsz arcp contract afn <2 x float> %i.pt, %i.pv
  %i.py = fadd reassoc nsz arcp contract afn <2 x float> %i.px, %i.pw ; 3 uses
  store <2 x float> %i.py, ptr %.sink11.i.sroa.gep, align 8, !tbaa !14
  br i1 %.not, label %.split, label %.split56

.split:                                           ; preds = %.loopexit
  %i.pz = extractelement <2 x float> %i.ps, i64 0
  %i.qa = extractelement <2 x float> %i.ps, i64 1 ; 5 uses
  %i.qb = fadd reassoc nsz arcp contract afn float %i.qa, %i.pz
  %i.qc = extractelement <2 x float> %i.py, i64 0
  %i.qd = fadd reassoc nsz arcp contract afn float %i.qb, %i.qc ; 2 uses
  %i.qe = fcmp reassoc nsz arcp contract afn ogt float %i.qd, 0.000000e+00 ; 2 uses
  %i.qf = insertelement <2 x float> poison, float %i.qd, i64 0
  %i.qg = shufflevector <2 x float> %i.qf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qh = fdiv reassoc nsz arcp contract afn <2 x float> %i.ps, %i.qg ; 2 uses
  %i.qi = extractelement <2 x float> %i.qh, i64 0
  %i.qj = select i1 %i.qe, float %i.qi, float 3.456700e-01 ; 2 uses
  %i.qk = extractelement <2 x float> %i.qh, i64 1
  %i.ql = select i1 %i.qe, float %i.qk, float 3.585000e-01 ; 2 uses
  %i.qm = fmul reassoc nsz arcp contract afn float %i.qj, 2.000000e+00
  %i.qn = fmul reassoc nsz arcp contract afn float %i.ql, 1.200000e+01
  %i.qo = fsub reassoc nsz arcp contract afn float %i.qn, %i.qm
  %i.qp = fadd reassoc nsz arcp contract afn float %i.qo, 3.000000e+00 ; 2 uses
  %i.qq = fmul reassoc nsz arcp contract afn float %i.qj, 4.000000e+00
  %i.qr = fdiv reassoc nsz arcp contract afn float %i.qq, %i.qp ; 3 uses
  %i.qs = fmul reassoc nsz arcp contract afn float %i.ql, 9.000000e+00
  %i.qt = fdiv reassoc nsz arcp contract afn float %i.qs, %i.qp ; 3 uses
  %i.qu = fsub reassoc nsz arcp contract afn float f0x3E562DD1, %i.qr ; 3 uses
  %i.qv = fsub reassoc nsz arcp contract afn float f0x3EF9E502, %i.qt ; 3 uses
  br i1 %i.ja, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.split
  %i.qw = fmul reassoc nsz arcp contract afn float %i.qv, %i.qv
  %i.qx = fmul reassoc nsz arcp contract afn float %i.qu, %i.qu
  %i.qy = fadd reassoc nsz arcp contract afn float %i.qx, %i.qw
  %i.qz = fmul reassoc nsz arcp contract afn float %i.qy, %i.qa
  %i.ra = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.qz, float %12)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.split
  %i.rb = phi reassoc nsz arcp contract afn float [ %i.ra, %bb.l ], [ 0.000000e+00, %.split ] ; 2 uses
  %i.rc = fmul reassoc nsz arcp contract afn float %i.rb, %i.qu
  %i.rd = fadd reassoc nsz arcp contract afn float %i.rc, %i.qr ; 2 uses
  %i.re = fcmp reassoc nsz arcp contract afn ogt float %i.qr, f0x3E562DD1
  br i1 %i.re, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.rf = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.rd, float f0x3E562DD1)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.rg = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.rd, float f0x3E562DD1)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.rh = phi reassoc nsz arcp contract afn float [ %i.rf, %bb.n ], [ %i.rg, %bb.o ] ; 2 uses
  %i.ri = fmul reassoc nsz arcp contract afn float %i.rb, %i.qv
  %i.rj = fadd reassoc nsz arcp contract afn float %i.ri, %i.qt ; 2 uses
  %i.rk = fcmp reassoc nsz arcp contract afn ogt float %i.qt, f0x3EF9E502
  br i1 %i.rk, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.rl = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.rj, float f0x3EF9E502)
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.rm = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.rj, float f0x3EF9E502)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.rn = phi reassoc nsz arcp contract afn float [ %i.rm, %bb.r ], [ %i.rl, %bb.q ] ; 2 uses
  %i.ro = fmul reassoc nnan nsz arcp contract afn float %i.rh, 6.000000e+00
  %i.rp = fmul reassoc nnan nsz arcp contract afn float %i.rn, 1.600000e+01
  %i.rq = fsub reassoc nsz arcp contract afn float %i.ro, %i.rp
  %i.rr = fadd reassoc nsz arcp contract afn float %i.rq, 1.200000e+01 ; 2 uses
  %i.rs = fmul reassoc nnan nsz arcp contract afn float %i.rh, 9.000000e+00
  %i.rt = fdiv reassoc nsz arcp contract afn float %i.rs, %i.rr ; 3 uses
  %i.ru = fmul reassoc nnan nsz arcp contract afn float %i.rn, 4.000000e+00
  %i.rv = fdiv reassoc nsz arcp contract afn float %i.ru, %i.rr
  %i.rw = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.rv, float f0x37800000) ; 3 uses
  %i.rx = fadd reassoc nsz arcp contract afn float %i.rw, %i.rt ; 4 uses
  %i.ry = fcmp reassoc nsz arcp contract afn ult float %i.rx, 1.000000e+00
  br i1 %i.ry, label %.split53.us.thread.i, label %.split53.us.i

.split53.us.i:                                    ; preds = %bb.s
  %i.rz = fdiv reassoc nsz arcp contract afn float %i.rw, %i.rx ; 3 uses
  %i.sa = fcmp reassoc nsz arcp contract afn oeq float %i.rz, 0.000000e+00
  br i1 %i.sa, label %_gamut_mapping.exit, label %.split53.us.i..split53.us.thread.i_crit_edge

.split53.us.i..split53.us.thread.i_crit_edge:     ; preds = %.split53.us.i
  %i.sb = fdiv reassoc nsz arcp contract afn float %i.rt, %i.rx ; 2 uses
  %.pre241 = fadd reassoc nsz arcp contract afn float %i.rz, %i.sb
  br label %.split53.us.thread.i

.split53.us.thread.i:                             ; preds = %.split53.us.i..split53.us.thread.i_crit_edge, %bb.s
  %.pre-phi242 = phi float [ %.pre241, %.split53.us.i..split53.us.thread.i_crit_edge ], [ %i.rx, %bb.s ]
  %.sroa.11.170.i = phi float [ %i.rz, %.split53.us.i..split53.us.thread.i_crit_edge ], [ %i.rw, %bb.s ] ; 2 uses
  %.sroa.058.169.i = phi float [ %i.sb, %.split53.us.i..split53.us.thread.i_crit_edge ], [ %i.rt, %bb.s ]
  %i.sc = fmul reassoc nsz arcp contract afn float %.sroa.058.169.i, %i.qa
  %i.sd = fdiv reassoc nsz arcp contract afn float %i.sc, %.sroa.11.170.i ; 2 uses
  %i.se = fsub reassoc nsz arcp contract afn float 1.000000e+00, %.pre-phi242
  %i.sf = fmul reassoc nsz arcp contract afn float %i.se, %i.qa
  %i.sg = fdiv reassoc nsz arcp contract afn float %i.sf, %.sroa.11.170.i
  %i.sh = insertelement <2 x float> %i.ps, float %i.sd, i64 0
  br label %_gamut_mapping.exit

.split56:                                         ; preds = %.loopexit
  %i.si = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.py, <2 x float> zeroinitializer) ; 2 uses
  store <2 x float> %i.si, ptr %.sink11.i.sroa.gep, align 8, !tbaa !14
  %i.sj = extractelement <2 x float> %i.si, i64 0
  %i.sk = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ps, <2 x float> zeroinitializer) ; 4 uses
  %i.sl = extractelement <2 x float> %i.sk, i64 1 ; 5 uses
  %i.sm = extractelement <2 x float> %i.sk, i64 0
  %i.sn = fadd reassoc nsz arcp contract afn float %i.sl, %i.sm
  %i.so = fadd reassoc nsz arcp contract afn float %i.sn, %i.sj ; 2 uses
  %i.sp = fcmp reassoc nsz arcp contract afn ogt float %i.so, 0.000000e+00 ; 2 uses
  %i.sq = insertelement <2 x float> poison, float %i.so, i64 0
  %i.sr = shufflevector <2 x float> %i.sq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ss = fdiv reassoc nsz arcp contract afn <2 x float> %i.sk, %i.sr ; 2 uses
  %i.st = extractelement <2 x float> %i.ss, i64 0
  %i.su = select i1 %i.sp, float %i.st, float 3.456700e-01 ; 2 uses
  %i.sv = extractelement <2 x float> %i.ss, i64 1
  %i.sw = select i1 %i.sp, float %i.sv, float 3.585000e-01 ; 2 uses
  %i.sx = fmul reassoc nsz arcp contract afn float %i.su, 2.000000e+00
  %i.sy = fmul reassoc nsz arcp contract afn float %i.sw, 1.200000e+01
  %i.sz = fsub reassoc nsz arcp contract afn float %i.sy, %i.sx
  %i.ta = fadd reassoc nsz arcp contract afn float %i.sz, 3.000000e+00 ; 2 uses
  %i.tb = fmul reassoc nsz arcp contract afn float %i.su, 4.000000e+00
  %i.tc = fdiv reassoc nsz arcp contract afn float %i.tb, %i.ta ; 3 uses
  %i.td = fmul reassoc nsz arcp contract afn float %i.sw, 9.000000e+00
  %i.te = fdiv reassoc nsz arcp contract afn float %i.td, %i.ta ; 3 uses
  %i.tf = fsub reassoc nsz arcp contract afn float f0x3E562DD1, %i.tc ; 3 uses
  %i.tg = fsub reassoc nsz arcp contract afn float f0x3EF9E502, %i.te ; 3 uses
  br i1 %i.ja, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.split56
  %i.th = fmul reassoc nsz arcp contract afn float %i.tg, %i.tg
  %i.ti = fmul reassoc nsz arcp contract afn float %i.tf, %i.tf
  %i.tj = fadd reassoc nsz arcp contract afn float %i.ti, %i.th
  %i.tk = fmul reassoc nsz arcp contract afn float %i.tj, %i.sl
  %i.tl = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.tk, float %12)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.split56
  %i.tm = phi reassoc nsz arcp contract afn float [ %i.tl, %bb.t ], [ 0.000000e+00, %.split56 ] ; 2 uses
  %i.tn = fmul reassoc nsz arcp contract afn float %i.tm, %i.tf
  %i.to = fadd reassoc nsz arcp contract afn float %i.tn, %i.tc ; 2 uses
  %i.tp = fcmp reassoc nsz arcp contract afn ogt float %i.tc, f0x3E562DD1
  br i1 %i.tp, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.tq = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.to, float f0x3E562DD1)
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.tr = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.to, float f0x3E562DD1)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ts = phi reassoc nsz arcp contract afn float [ %i.tq, %bb.v ], [ %i.tr, %bb.w ] ; 2 uses
  %i.tt = fmul reassoc nsz arcp contract afn float %i.tm, %i.tg
  %i.tu = fadd reassoc nsz arcp contract afn float %i.tt, %i.te ; 2 uses
  %i.tv = fcmp reassoc nsz arcp contract afn ogt float %i.te, f0x3EF9E502
  br i1 %i.tv, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.tw = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.tu, float f0x3EF9E502)
  br label %.loopexit.i

bb.z:                                             ; preds = %bb.x
  %i.tx = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.tu, float f0x3EF9E502)
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.y, %bb.z
  %i.ty = phi reassoc nsz arcp contract afn float [ %i.tx, %bb.z ], [ %i.tw, %bb.y ] ; 2 uses
  %i.tz = fmul reassoc nnan nsz arcp contract afn float %i.ts, 6.000000e+00
  %i.ua = fmul reassoc nnan nsz arcp contract afn float %i.ty, 1.600000e+01
  %i.ub = fsub reassoc nsz arcp contract afn float %i.tz, %i.ua
  %i.uc = fadd reassoc nsz arcp contract afn float %i.ub, 1.200000e+01
  %i.ud = insertelement <2 x float> poison, float %i.ts, i64 0
  %i.ue = insertelement <2 x float> %i.ud, float %i.ty, i64 1
end_hunk_0
