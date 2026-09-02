Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/integrators?download=true
inline.NumInlined: 13518
inline.NumDeleted: 3340
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_ZZNK4pbrt6BSSRDF25ProbeIntersectionToSampleERKNS_21SubsurfaceInteractionERNS_13ScratchBufferEENKUlT_E_clIPKNS_15TabulatedBSSRDFEEEDaS6_:bb.a
  %foldExtExtBinop = fadd <2 x float> %i.ar, %shift
  %i.as = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.at = fneg float %.sroa.228.0.copyload.i
  %i.au = fneg float %.sroa.01.0.vec.extract.i.i
  %i.av = fneg float %.sroa.01.4.vec.extract.i.i
  %.sroa.0.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %.sroa.0.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %.sroa.222.0.copyload.i = load float, ptr %.sroa.222.0..sroa_idx.i, align 4, !noalias !2060 ; 3 uses
  %i.aw = load <4 x float>, ptr %i.ak, align 4, !noalias !2060 ; 2 uses
  %i.ax = load <2 x float>, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i, align 4, !noalias !2060
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.az = shufflevector <4 x float> %i.aw, <4 x float> %i.ay, <4 x i32> <i32 poison, i32 0, i32 2, i32 4>
  %i.ba = insertelement <4 x float> %i.az, float %.sroa.222.0.copyload.i, i64 0
  %i.bb = shufflevector <4 x float> %i.aw, <4 x float> %i.ay, <4 x i32> <i32 poison, i32 1, i32 3, i32 5>
  %i.bc = insertelement <4 x float> %i.bb, float -0.000000e+00, i64 0
  %i.bd = fadd <4 x float> %i.ba, %i.bc
  %i.be = insertelement <4 x float> <float poison, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, float %.sroa.222.0.copyload.i, i64 0
  %i.bf = fmul <4 x float> %i.bd, %i.be           ; 4 uses
  %i.bg = extractelement <4 x float> %i.bf, i64 0
  %i.bh = fadd float %i.bg, %i.as
  %sqrt.i.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.bh) ; 2 uses
  %i.bi = insertelement <2 x float> poison, float %sqrt.i.i.i.i, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = fdiv <2 x float> %.sroa.021.0.copyload.i, %i.bj ; 3 uses
  %i.bl = fdiv float %.sroa.222.0.copyload.i, %sqrt.i.i.i.i ; 4 uses
  %i.bm = extractelement <2 x float> %i.bk, i64 1 ; 3 uses
  %i.bn = fmul float %.sroa.228.0.copyload.i, %i.bm ; 2 uses
  %i.bo = fneg float %i.bn
  %i.bp = tail call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i, float %i.bl, float %i.bo)
  %i.bq = tail call noundef float @llvm.fma.f32(float %i.at, float %i.bm, float %i.bn)
  %i.br = fadd float %i.bp, %i.bq
  %i.bs = fmul float %.sroa.01.0.vec.extract.i.i, %i.bl ; 2 uses
  %i.bt = fneg float %i.bs
  %i.bu = extractelement <2 x float> %i.bk, i64 0 ; 3 uses
  %i.bv = tail call noundef float @llvm.fma.f32(float %.sroa.228.0.copyload.i, float %i.bu, float %i.bt)
  %i.bw = tail call noundef float @llvm.fma.f32(float %i.au, float %i.bl, float %i.bs)
  %i.bx = fadd float %i.bv, %i.bw
  %i.by = fmul float %.sroa.01.4.vec.extract.i.i, %i.bu ; 2 uses
  %i.bz = fneg float %i.by
  %i.ca = tail call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i, float %i.bm, float %i.bz)
  %i.cb = tail call noundef float @llvm.fma.f32(float %i.av, float %i.bu, float %i.by)
  %i.cc = fadd float %i.ca, %i.cb
  %.sroa.0.0.vec.insert.i.i23.i.i = insertelement <2 x float> poison, float %i.br, i64 0
  %.sroa.0.4.vec.insert.i.i24.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i23.i.i, float %i.bx, i64 1
  %.sroa.05.0.copyload.i.i = load <2 x float>, ptr %2, align 8, !noalias !2060 ; 2 uses
  %.sroa.26.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.26.0.copyload.i.i = load float, ptr %.sroa.26.0..sroa_idx.i.i, align 8, !noalias !2060
  %.sroa.0.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.05.0.copyload.i.i, i64 0
  %i.cd = extractelement <4 x float> %i.bf, i64 1
  %i.ce = fsub float %.sroa.0.0.vec.extract.i.i.i, %i.cd ; 2 uses
  %.sroa.0.4.vec.extract.i.i.i = extractelement <2 x float> %.sroa.05.0.copyload.i.i, i64 1
  %i.cf = extractelement <4 x float> %i.bf, i64 2
  %i.cg = fsub float %.sroa.0.4.vec.extract.i.i.i, %i.cf ; 2 uses
  %i.ch = extractelement <4 x float> %i.bf, i64 3
  %i.ci = fsub float %.sroa.26.0.copyload.i.i, %i.ch ; 2 uses
  %i.cj = fmul float %i.ce, %i.ce
  %i.ck = fmul float %i.cg, %i.cg
  %i.cl = fadd float %i.cj, %i.ck
  %i.cm = fmul float %i.ci, %i.ci
  %i.cn = fadd float %i.cm, %i.cl
  %sqrt.i.i.i37.i = tail call noundef float @llvm.sqrt.f32(float %i.cn)
  %i.co = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt15TabulatedBSSRDF2SrEf(ptr noundef nonnull align 8 dereferenceable(80) %2, float noundef %sqrt.i.i.i37.i), !noalias !2060 ; 2 uses
  %i.cp = extractvalue { <2 x float>, <2 x float> } %i.co, 0
  store <2 x float> %i.cp, ptr %0, align 8, !alias.scope !2060
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cr = extractvalue { <2 x float>, <2 x float> } %i.co, 1
  store <2 x float> %i.cr, ptr %i.cq, align 8, !alias.scope !2060
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.sroa.5.0.copyload.i46.i = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i, align 4, !noalias !2060
  %.sroa.0.sroa.6.0.copyload.i48.i = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i, align 4, !noalias !2060
  %i.ct = load <2 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i.i, align 4, !noalias !2060
  %i.cu = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.ak, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !noalias !2060
  %i.cv = shufflevector <4 x float> %i.cu, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.cw = fadd <2 x float> %i.ct, %i.cv
  %i.cx = fmul <2 x float> %i.cw, splat (float 5.000000e-01)
  %i.cy = fadd float %.sroa.0.sroa.5.0.copyload.i46.i, %.sroa.0.sroa.6.0.copyload.i48.i
  %i.cz = fmul float %i.cy, 5.000000e-01
  %i.da = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %i.da, align 4, !noalias !2060
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %.sroa.24.0.copyload.i = load float, ptr %.sroa.24.0..sroa_idx.i, align 4, !noalias !2060
  %i.db = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt15TabulatedBSSRDF6PDF_SpENS_6Point3IfEENS_7Normal3IfEE(ptr noundef nonnull align 8 dereferenceable(80) %2, <2 x float> %i.cx, float %i.cz, <2 x float> %.sroa.03.0.copyload.i, float %.sroa.24.0.copyload.i), !noalias !2060 ; 2 uses
  %i.dc = extractvalue { <2 x float>, <2 x float> } %i.db, 0
  store <2 x float> %i.dc, ptr %i.cs, align 8, !alias.scope !2060
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.de = extractvalue { <2 x float>, <2 x float> } %i.db, 1
  store <2 x float> %i.de, ptr %i.dd, align 8, !alias.scope !2060
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.aq, ptr %i.df, align 8, !tbaa !362, !alias.scope !2060
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x float> %i.bk, ptr %i.dg, align 8, !alias.scope !2060
  %.sroa.7.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.bl, ptr %.sroa.7.8..sroa_idx.i, align 8, !alias.scope !2060
  %.sroa.8.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  store <2 x float> %.sroa.0.4.vec.insert.i.i24.i.i, ptr %.sroa.8.8..sroa_idx.i, align 4, !alias.scope !2060
  %.sroa.9.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float %i.cc, ptr %.sroa.9.8..sroa_idx.i, align 4, !alias.scope !2060
  %.sroa.10.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x float> %.sroa.027.0.copyload.i, ptr %.sroa.10.8..sroa_idx.i, align 8, !alias.scope !2060
  %.sroa.11.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store float %.sroa.228.0.copyload.i, ptr %.sroa.11.8..sroa_idx.i, align 8, !alias.scope !2060
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x float> %.sroa.027.0.copyload.i, ptr %i.dh, align 8, !alias.scope !2060
  %.sroa.555.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store float %.sroa.228.0.copyload.i, ptr %.sroa.555.0..sroa_idx.i, align 8, !alias.scope !2060
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZNK4pbrt15TabulatedBSSRDF6PDF_SpENS_6Point3IfEENS_7Normal3IfEE(ptr noundef nonnull align 8 dereferenceable(80) %0, <2 x float> %1, float %2, <2 x float> %3, float %4) local_unnamed_addr #11 comdat align 2 {
_ZN4pbrt6Tuple3INS_7Normal3EfEixEi.exit.2:
  %.sroa.033.0.copyload = load <2 x float>, ptr %0, align 8 ; 2 uses
  %.sroa.234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.234.0.copyload = load float, ptr %.sroa.234.0..sroa_idx, align 8
  %foldExtExtBinop = fsub <2 x float> %1, %.sroa.033.0.copyload ; 2 uses
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop121 = fsub <2 x float> %1, %.sroa.033.0.copyload
  %i.b = extractelement <2 x float> %foldExtExtBinop121, i64 1 ; 3 uses
  %i.c = fsub float %2, %.sroa.234.0.copyload     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.025.0.copyload = load <2 x float>, ptr %i.d, align 8 ; 5 uses
  %.sroa.226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.226.0.copyload = load float, ptr %.sroa.226.0..sroa_idx, align 8 ; 5 uses
  %.sroa.01.0.vec.extract.i.i = extractelement <2 x float> %.sroa.025.0.copyload, i64 0 ; 3 uses
  %.sroa.01.4.vec.extract.i.i = extractelement <2 x float> %.sroa.025.0.copyload, i64 1 ; 7 uses
  %i.e = tail call noundef float @llvm.copysign.f32(float 1.000000e+00, float %.sroa.226.0.copyload) ; 5 uses
  %i.f = fadd float %.sroa.226.0.copyload, %i.e
  %i.g = fdiv float -1.000000e+00, %i.f           ; 3 uses
  %i.h = fmul float %.sroa.01.0.vec.extract.i.i, %.sroa.01.4.vec.extract.i.i
  %i.i = fmul float %i.h, %i.g                    ; 3 uses
  %foldExtExtBinop123 = fmul <2 x float> %.sroa.025.0.copyload, %.sroa.025.0.copyload
  %i.j = extractelement <2 x float> %foldExtExtBinop123, i64 0
  %i.k = fmul float %i.e, %i.j
  %i.l = fmul float %i.k, %i.g
  %i.m = fadd float %i.l, 1.000000e+00            ; 2 uses
  %i.n = fmul float %i.e, %i.i                    ; 2 uses
  %i.o = fneg float %i.e
  %i.p = fmul float %.sroa.01.0.vec.extract.i.i, %i.o ; 3 uses
  %i.q = fmul float %.sroa.01.4.vec.extract.i.i, %.sroa.01.4.vec.extract.i.i
  %i.r = fmul float %i.q, %i.g
  %i.s = fadd float %i.e, %i.r                    ; 2 uses
  %i.t = fmul float %i.a, %i.m
  %i.u = fmul float %i.b, %i.n
  %i.v = fadd float %i.t, %i.u
  %i.w = fmul float %i.c, %i.p
  %i.x = fadd float %i.w, %i.v                    ; 2 uses
  %i.y = fmul float %i.a, %i.i
  %i.z = fmul float %i.b, %i.s
  %i.aa = fadd float %i.y, %i.z
  %i.ab = fmul float %i.c, %.sroa.01.4.vec.extract.i.i
  %i.ac = fsub float %i.aa, %i.ab                 ; 2 uses
  %foldExtExtBinop125 = fmul <2 x float> %foldExtExtBinop, %.sroa.025.0.copyload
  %i.ad = extractelement <2 x float> %foldExtExtBinop125, i64 0
  %i.ae = fmul float %i.b, %.sroa.01.4.vec.extract.i.i
  %i.af = fadd float %i.ad, %i.ae
  %i.ag = fmul float %i.c, %.sroa.226.0.copyload
  %i.ah = fadd float %i.ag, %i.af                 ; 2 uses
  %i.ai = fmul float %i.ac, %i.ac                 ; 2 uses
  %i.aj = fmul float %i.ah, %i.ah                 ; 2 uses
  %i.ak = fadd float %i.aj, %i.ai
  %sqrt115 = tail call float @llvm.sqrt.f32(float %i.ak)
  %i.al = fmul float %i.x, %i.x                   ; 2 uses
  %i.am = fadd float %i.al, %i.ai
  %sqrt = tail call float @llvm.sqrt.f32(float %i.am)
  %i.an = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt15TabulatedBSSRDF6PDF_SrEf(ptr noundef nonnull align 8 dereferenceable(80) %0, float noundef %sqrt115) ; 2 uses
  %i.ao = fadd float %i.aj, %i.al
  %sqrt114 = tail call float @llvm.sqrt.f32(float %i.ao)
  %i.ap = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt15TabulatedBSSRDF6PDF_SrEf(ptr noundef nonnull align 8 dereferenceable(80) %0, float noundef %sqrt114) ; 2 uses
  %i.aq = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt15TabulatedBSSRDF6PDF_SrEf(ptr noundef nonnull align 8 dereferenceable(80) %0, float noundef %sqrt) ; 2 uses
  %i.ar = extractvalue { <2 x float>, <2 x float> } %i.aq, 1
  %i.as = extractvalue { <2 x float>, <2 x float> } %i.aq, 0
  %i.at = extractvalue { <2 x float>, <2 x float> } %i.an, 1
  %.sroa.04.0.vec.extract.i.i51 = extractelement <2 x float> %3, i64 0 ; 3 uses
  %i.au = fmul float %4, %i.p                     ; 2 uses
  %i.av = fneg float %i.au
  %.sroa.04.4.vec.extract.i.i53 = extractelement <2 x float> %3, i64 1 ; 3 uses
  %i.aw = extractvalue { <2 x float>, <2 x float> } %i.ap, 1
  %i.ax = fneg float %.sroa.01.4.vec.extract.i.i  ; 2 uses
  %i.ay = fmul float %4, %i.ax                    ; 2 uses
  %i.az = fneg float %i.ay
  %i.ba = extractvalue { <2 x float>, <2 x float> } %i.an, 0
  %i.bb = extractvalue { <2 x float>, <2 x float> } %i.ap, 0
  %i.bc = fmul float %4, %.sroa.226.0.copyload    ; 2 uses
  %i.bd = fneg float %i.bc
  %i.be = tail call noundef float @llvm.fma.f32(float %.sroa.04.4.vec.extract.i.i53, float %.sroa.01.4.vec.extract.i.i, float %i.bc)
  %i.bf = tail call noundef float @llvm.fma.f32(float %4, float %i.ax, float %i.az)
  %i.bg = tail call noundef float @llvm.fma.f32(float %4, float %i.p, float %i.av)
  %i.bh = tail call noundef float @llvm.fma.f32(float %4, float %.sroa.226.0.copyload, float %i.bd)
  %i.bi = tail call noundef float @llvm.fma.f32(float %.sroa.04.4.vec.extract.i.i53, float %i.s, float %i.ay)
  %i.bj = tail call noundef float @llvm.fma.f32(float %.sroa.04.4.vec.extract.i.i53, float %i.n, float %i.au)
  %i.bk = fadd float %i.be, %i.bh
  %i.bl = fadd float %i.bf, %i.bi
  %i.bm = fadd float %i.bg, %i.bj
  %i.bn = tail call noundef float @llvm.fma.f32(float %.sroa.04.0.vec.extract.i.i51, float %.sroa.01.0.vec.extract.i.i, float %i.bk)
  %i.bo = tail call noundef float @llvm.fma.f32(float %.sroa.04.0.vec.extract.i.i51, float %i.i, float %i.bl)
  %i.bp = tail call noundef float @llvm.fma.f32(float %.sroa.04.0.vec.extract.i.i51, float %i.m, float %i.bm)
  %5 = tail call noundef float @llvm.fabs.f32(float %i.bn)
  %6 = tail call noundef float @llvm.fabs.f32(float %i.bo)
  %7 = tail call noundef float @llvm.fabs.f32(float %i.bp)
  %8 = shufflevector <2 x float> %i.ba, <2 x float> %i.at, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %9 = insertelement <4 x float> poison, float %7, i64 0
  %i.bq = shufflevector <4 x float> %9, <4 x float> poison, <4 x i32> zeroinitializer
  %i.br = fmul <4 x float> %8, %i.bq
  %i.bs = fmul <4 x float> %i.br, splat (float 2.500000e-01)
  %i.bt = fadd <4 x float> %i.bs, zeroinitializer
  %i.bu = shufflevector <2 x float> %i.bb, <2 x float> %i.aw, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %10 = insertelement <4 x float> poison, float %6, i64 0
  %11 = shufflevector <4 x float> %10, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bv = fmul <4 x float> %i.bu, %11
  %i.bw = fmul <4 x float> %i.bv, splat (float 2.500000e-01)
  %i.bx = fadd <4 x float> %i.bt, %i.bw
  %i.by = shufflevector <2 x float> %i.as, <2 x float> %i.ar, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %12 = insertelement <4 x float> poison, float %5, i64 0
  %13 = shufflevector <4 x float> %12, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bz = fmul <4 x float> %i.by, %13
  %i.ca = fmul <4 x float> %i.bz, splat (float 5.000000e-01)
  %i.cb = fadd <4 x float> %i.bx, %i.ca           ; 2 uses
  %i.cc = shufflevector <4 x float> %i.cb, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.cd = shufflevector <4 x float> %i.cb, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.cc, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %i.cd, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZNK4pbrt15TabulatedBSSRDF2SrEf(ptr noundef nonnull align 8 dereferenceable(80) %0, float noundef %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.pbrt::SampledSpectrum", align 16 ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [4 x float], align 16             ; 4 uses
  %i.d = alloca [4 x float], align 16             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  br label %bb.c

bb.b:                                             ; preds = %bb.r
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.e, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.2.0.copyload = load <2 x float>, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !47
  %i.k = shufflevector <2 x float> %.sroa.0.0.copyload, <2 x float> %.sroa.2.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.l = fmul <4 x float> %i.k, %i.k
  %i.m = load <4 x float>, ptr %2, align 16, !tbaa !189
  %i.n = fmul <4 x float> %i.l, %i.m              ; 2 uses
  %i.o = fcmp ogt <4 x float> %i.n, zeroinitializer
  %i.p = select <4 x i1> %i.o, <4 x float> %i.n, <4 x float> zeroinitializer ; 2 uses
  %i.q = shufflevector <4 x float> %i.p, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.r = shufflevector <4 x float> %i.p, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.q, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %i.r, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i

bb.c:                                             ; preds = %bb.a, %bb.r
  %indvars.iv61 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next62, %bb.r ] ; 4 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv61
  %i.t = load float, ptr %i.s, align 4, !tbaa !189
  %i.u = fmul float %1, %i.t                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #38
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !714  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !222
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !221
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv61
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !189
  %i.ac = call noundef zeroext i1 @_ZN4pbrt17CatmullRomWeightsEN4pstd4spanIKfEEfPiNS1_IfEE(ptr %i.x, i64 %i.z, float noundef %i.ab, ptr noundef nonnull %i.a, ptr nonnull %i.c, i64 4)
  br i1 %i.ac, label %bb.d, label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %i.f, align 8, !tbaa !714 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !222
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !221
  %i.ai = call noundef zeroext i1 @_ZN4pbrt17CatmullRomWeightsEN4pstd4spanIKfEEfPiNS1_IfEE(ptr %i.af, i64 %i.ah, float noundef %i.u, ptr noundef nonnull %i.b, ptr nonnull %i.d, i64 4)
  br i1 %i.ai, label %.preheader36, label %bb.r

.preheader36:                                     ; preds = %bb.d
  %i.aj = load i32, ptr %i.a, align 4
  %i.ak = load i32, ptr %i.b, align 4             ; 5 uses
  %i.al = sext i32 %i.ak to i64                   ; 5 uses
  %i.am = load float, ptr %i.d, align 16
  %i.an = load float, ptr %i.h, align 4           ; 2 uses
  %i.ao = load float, ptr %i.i, align 8           ; 2 uses
  %i.ap = load float, ptr %i.j, align 4           ; 2 uses
  %i.aq = icmp sgt i32 %i.ak, -1
  %i.ar = add nsw i64 %i.al, 1                    ; 2 uses
  %i.as = icmp sgt i32 %i.ak, -2
  %i.at = add nsw i64 %i.al, 2                    ; 2 uses
  %i.au = icmp sgt i32 %i.ak, -3
  %i.av = add nsw i64 %i.al, 3                    ; 2 uses
  %i.aw = icmp sgt i32 %i.ak, -4
  br label %.preheader

.preheader:                                       ; preds = %.preheader36, %.split46.us
  %indvars.iv = phi i64 [ 0, %.preheader36 ], [ %indvars.iv.next, %.split46.us ] ; 3 uses
  %.02653 = phi float [ 0.000000e+00, %.preheader36 ], [ %.us-phi, %.split46.us ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !189 ; 7 uses
  %i.az = trunc i64 %indvars.iv to i32
  %i.ba = add i32 %i.aj, %i.az
  %.fr56 = freeze i32 %i.ba                       ; 2 uses
  %i.bb = icmp sgt i32 %.fr56, -1
  %i.bc = zext nneg i32 %.fr56 to i64             ; 8 uses
  %i.bd = fmul float %i.ay, %i.am                 ; 2 uses
  %i.be = fcmp une float %i.bd, 0.000000e+00      ; 2 uses
  br i1 %i.bb, label %.preheader.split.us.preheader, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  %i.bf = fmul float %i.ay, %i.an
  %i.bg = fcmp une float %i.bf, 0.000000e+00
  %or.cond = select i1 %i.be, i1 true, i1 %i.bg
  %i.bh = fmul float %i.ay, %i.ao
  %i.bi = fcmp une float %i.bh, 0.000000e+00
  %or.cond80 = select i1 %or.cond, i1 true, i1 %i.bi
  %i.bj = fmul float %i.ay, %i.ap
  %i.bk = fcmp une float %i.bj, 0.000000e+00
  %or.cond82 = select i1 %or.cond80, i1 true, i1 %i.bk
  br i1 %or.cond82, label %.split.us, label %.split46.us

.preheader.split.us.preheader:                    ; preds = %.preheader
  br i1 %i.be, label %bb.e, label %.preheader.split.us.1

bb.e:                                             ; preds = %.preheader.split.us.preheader
  %i.bl = load ptr, ptr %i.f, align 8, !tbaa !714 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !221
  %i.bo = icmp ugt i64 %i.bn, %i.bc
  br i1 %i.bo, label %bb.f, label %.split.us

bb.f:                                             ; preds = %bb.e
  br i1 %i.aq, label %bb.g, label %.split44.us

bb.g:                                             ; preds = %bb.f
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !221 ; 2 uses
  %i.br = icmp ugt i64 %i.bq, %i.al
  br i1 %i.br, label %_ZNK4pbrt11BSSRDFTable11EvalProfileEii.exit.us, label %.split44.us

_ZNK4pbrt11BSSRDFTable11EvalProfileEii.exit.us:   ; preds = %bb.g
  %i.bs = mul i64 %i.bq, %i.bc
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 72
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !222
  %i.bv = getelementptr [4 x i8], ptr %i.bu, i64 %i.bs
  %i.bw = getelementptr [4 x i8], ptr %i.bv, i64 %i.al
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !189
  %i.by = fmul float %i.bd, %i.bx
  %i.bz = fadd float %.02653, %i.by
  br label %.preheader.split.us.1

.preheader.split.us.1:                            ; preds = %_ZNK4pbrt11BSSRDFTable11EvalProfileEii.exit.us, %.preheader.split.us.preheader
  %.2.us = phi float [ %i.bz, %_ZNK4pbrt11BSSRDFTable11EvalProfileEii.exit.us ], [ %.02653, %.preheader.split.us.preheader ] ; 2 uses
  %i.ca = fmul float %i.ay, %i.an                 ; 2 uses
  %i.cb = fcmp une float %i.ca, 0.000000e+00
  br i1 %i.cb, label %bb.h, label %.preheader.split.us.2

bb.h:                                             ; preds = %.preheader.split.us.1
  %i.cc = load ptr, ptr %i.f, align 8, !tbaa !714 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !221
  %i.cf = icmp ugt i64 %i.ce, %i.bc
  br i1 %i.cf, label %bb.i, label %.split.us

bb.i:                                             ; preds = %bb.h
  br i1 %i.as, label %bb.j, label %.split44.us

bb.j:                                             ; preds = %bb.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 56
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !221 ; 2 uses
  %i.ci = icmp ugt i64 %i.ch, %i.ar
  br i1 %i.ci, label %_ZNK4pbrt11BSSRDFTable11EvalProfileEii.exit.us.1, label %.split44.us

_ZNK4pbrt11BSSRDFTable11EvalProfileEii.exit.us.1: ; preds = %bb.j
  %i.cj = mul i64 %i.ch, %i.bc
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 72
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !222
  %i.cm = getelementptr [4 x i8], ptr %i.cl, i64 %i.cj
  %i.cn = getelementptr [4 x i8], ptr %i.cm, i64 %i.ar
  %i.co = load float, ptr %i.cn, align 4, !tbaa !189
  %i.cp = fmul float %i.ca, %i.co
  %i.cq = fadd float %.2.us, %i.cp
  br label %.preheader.split.us.2

.preheader.split.us.2:                            ; preds = %_ZNK4pbrt11BSSRDFTable11EvalProfileEii.exit.us.1, %.preheader.split.us.1
  %.2.us.1 = phi float [ %i.cq, %_ZNK4pbrt11BSSRDFTable11EvalProfileEii.exit.us.1 ], [ %.2.us, %.preheader.split.us.1 ] ; 2 uses
  %i.cr = fmul float %i.ay, %i.ao                 ; 2 uses
  %i.cs = fcmp une float %i.cr, 0.000000e+00
  br i1 %i.cs, label %bb.k, label %.preheader.split.us.3

bb.k:                                             ; preds = %.preheader.split.us.2
  %i.ct = load ptr, ptr %i.f, align 8, !tbaa !714 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !221
  %i.cw = icmp ugt i64 %i.cv, %i.bc
  br i1 %i.cw, label %bb.l, label %.split.us

bb.l:                                             ; preds = %bb.k
  br i1 %i.au, label %bb.m, label %.split44.us

bb.m:                                             ; preds = %bb.l
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 56
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !221 ; 2 uses
  %i.cz = icmp ugt i64 %i.cy, %i.at
  br i1 %i.cz, label %_ZNK4pbrt11BSSRDFTable11EvalProfileEii.exit.us.2, label %.split44.us

end_hunk_0
begin_hunk_1_@_ZN4pbrt6detail21stringPrintfRecursiveIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvPS7_PKcOT_DpOT0_:bb.a
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.body26, %bb.h
  %.pn19.pn = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %.pn19, %.body26 ], [ %.pn19.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  br label %bb.p

bb.p:                                             ; preds = %.body, %bb.n
  %.pn19.pn.pn = phi { ptr, i32 } [ %.pn19.pn, %.body ], [ %i.cf, %bb.n ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #38
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.pn19.pn.pn.pn = phi { ptr, i32 } [ %.pn19.pn.pn, %bb.p ], [ %i.ce, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %bb.v

bb.r:                                             ; preds = %bb.d
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !46
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %.invoke, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cs = load ptr, ptr %3, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.cs, ptr %i.a, align 8, !tbaa !507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  store ptr @_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr %i.b, align 8, !tbaa !507
  invoke void @_ZN4pbrt8LogFatalIJPKcRS2_EEEvNS_8LogLevelES2_iS2_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.126, i32 noundef 176, ptr noundef nonnull @.str.182, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #41
          to label %.noexc38 unwind label %bb.t

.noexc38:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.invoke:                                          ; preds = %bb.a, %bb.r, %bb.c
  %i.cu = phi i32 [ 257, %bb.c ], [ 266, %bb.r ], [ 229, %bb.a ]
  %i.cv = phi ptr [ @.str.128, %bb.c ], [ @.str.129, %bb.r ], [ @.str.127, %bb.a ]
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.126, i32 noundef %i.cu, ptr noundef nonnull %i.cv) #41
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

bb.u:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.cw = load ptr, ptr %3, align 8, !tbaa !48    ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %bb.u
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !47
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  ret void

bb.v:                                             ; preds = %bb.t, %bb.q, %bb.b
  %.pn24 = phi { ptr, i32 } [ %i.g, %bb.b ], [ %.pn19.pn.pn.pn, %bb.q ], [ %i.ct, %bb.t ]
  %i.db = load ptr, ptr %3, align 8, !tbaa !48    ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.v
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !47
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  resume { ptr, i32 } %.pn24
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_integrators.cpp() #34 section ".text.startup" {
bb.a:
  store <8 x float> <float f0x3F652546, float 2.664000e-01, float -1.614000e-01, float f0xBF400D1B, float 1.713500e+00, float 3.670000e-02, float 3.890000e-02, float -6.850000e-02>, ptr @_ZN4pbrtL10LMSFromXYZE, align 32, !tbaa !189
  store float 1.029600e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL10LMSFromXYZE, i64 32), align 32, !tbaa !189
  %i.a = tail call ptr @llvm.invariant.start.p0(i64 36, ptr nonnull @_ZN4pbrtL10LMSFromXYZE) ; 0 uses
  store <8 x float> <float 9.869930e-01, float -1.470540e-01, float 1.599630e-01, float 4.323050e-01, float 5.183600e-01, float 4.929120e-02, float -8.528660e-03, float 4.004280e-02>, ptr @_ZN4pbrtL10XYZFromLMSE, align 32, !tbaa !189
  store float 9.684870e-01, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL10XYZFromLMSE, i64 32), align 32, !tbaa !189
  %i.b = tail call ptr @llvm.invariant.start.p0(i64 36, ptr nonnull @_ZN4pbrtL10XYZFromLMSE) ; 0 uses
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL24STATS_REGprimitiveMemoryE, ptr noundef nonnull @"_ZN4pbrt3$_08__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL29STATS_REGredundantBufferBytesE, ptr noundef nonnull @"_ZN4pbrt3$_18__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL25STATS_REGnBufferCacheHitsE, ptr noundef nonnull @"_ZN4pbrt3$_28__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL20STATS_REGnCameraRaysE, ptr noundef nonnull @"_ZN4pbrt4$_258__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL27STATS_REGnIntersectionTestsE, ptr noundef nonnull @"_ZN4pbrt4$_268__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL21STATS_REGnShadowTestsE, ptr noundef nonnull @"_ZN4pbrt4$_278__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL26STATS_REGzeroRadiancePathsE, ptr noundef nonnull @"_ZN4pbrt4$_298__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL25STATS_REGregularizedBSDFsE, ptr noundef nonnull @"_ZN4pbrt4$_308__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL19STATS_REGpathLengthE, ptr noundef nonnull @"_ZN4pbrt4$_318__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL27STATS_REGvolumeInteractionsE, ptr noundef nonnull @"_ZN4pbrt4$_338__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL28STATS_REGsurfaceInteractionsE, ptr noundef nonnull @"_ZN4pbrt4$_348__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL26STATS_REGacceptedMutationsE, ptr noundef nonnull @"_ZN4pbrt4$_408__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL29STATS_REGvisiblePointsCheckedE, ptr noundef nonnull @"_ZN4pbrt4$_418__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL20STATS_REGphotonPathsE, ptr noundef nonnull @"_ZN4pbrt4$_428__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL33STATS_REGgridCellsPerVisiblePointE, ptr noundef nonnull @"_ZN4pbrt4$_438__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL25STATS_REGpixelMemoryBytesE, ptr noundef nonnull @"_ZN4pbrt4$_448__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL29STATS_REGsppmMemoryArenaBytesE, ptr noundef nonnull @"_ZN4pbrt4$_458__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bitreverse.i32(i32) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #36

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v10f32.p0(<10 x float>, ptr captures(none), <10 x i1>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fma.v2f32(<2 x float>, <2 x float>, <2 x float>) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #36

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <5 x float> @llvm.masked.load.v5f32.p0(ptr captures(none), <5 x i1>, <5 x float>) #36

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <6 x float> @llvm.masked.load.v6f32.p0(ptr captures(none), <6 x i1>, <6 x float>) #36

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v2i32(<2 x i32>) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #37

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.xor.v2i32(<2 x i32>) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.fshr.v2i32(<2 x i32>, <2 x i32>, <2 x i32>) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v4i64(<4 x i64>) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v3f32.p0(<3 x float>, ptr captures(none), <3 x i1>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.copysign.v2f32(<2 x float>, <2 x float>) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <9 x float> @llvm.masked.load.v9f32.p0(ptr captures(none), <9 x i1>, <9 x float>) #36

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #6 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { nofree nounwind }
attributes #18 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { mustprogress nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { cold nofree noreturn }
attributes #24 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #25 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #26 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #29 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #30 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #31 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #32 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #33 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #34 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #36 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #37 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #38 = { nounwind }
attributes #39 = { builtin nounwind }
attributes #40 = { builtin allocsize(0) }
attributes #41 = { noreturn }
attributes #42 = { noreturn nounwind }
attributes #43 = { cold nounwind }
attributes #44 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!31, !32, !33}
!llvm.ident = !{!34}
!llvm.errno.tbaa = !{!39}

!0 = distinct !{null}
!1 = distinct !{!1, !65}
!2 = distinct !{!2, !65}
!3 = distinct !{null}
!4 = distinct !{null}
!5 = distinct !{!5, !65}
!6 = distinct !{null}
!7 = distinct !{null}
!8 = distinct !{null}
!9 = distinct !{null}
!10 = distinct !{!10, !65}
!11 = distinct !{null}
!12 = distinct !{!12, !65}
!13 = distinct !{!13, !65}
!14 = distinct !{null, null, null, null}
!15 = distinct !{null}
!16 = distinct !{null}
!17 = distinct !{!17, !65}
!18 = distinct !{null}
!19 = distinct !{null}
!20 = distinct !{null}
!21 = distinct !{!21, !65}
!22 = distinct !{!22, !65}
!23 = distinct !{!23, !65}
!24 = distinct !{!24, !65}
!25 = distinct !{!25, !65}
!26 = distinct !{!26, !65}
!27 = distinct !{!27, !65}
!28 = distinct !{!28, !65}
!29 = distinct !{!29, !"_ZNK4pbrt6Tuple2INS_6Point2EiE8ToStringB5cxx11Ev"}
!30 = distinct !{!30, !29, !"_ZNK4pbrt6Tuple2INS_6Point2EiE8ToStringB5cxx11Ev: argument 0"}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!35 = !{!"Simple C++ TBAA"}
!36 = !{!"omnipotent char", !35, i64 0}
!37 = !{!"int", !36, i64 0}
!38 = !{!"__libc_errno", !37, i64 0}
!39 = !{!38, !37, i64 0}
!40 = !{!"any pointer", !36, i64 0}
!41 = !{!"p1 omnipotent char", !40, i64 0}
!42 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !41, i64 0}
!43 = !{!42, !41, i64 0}
!44 = !{!"long", !36, i64 0}
!45 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !42, i64 0, !44, i64 8, !36, i64 16}
!46 = !{!45, !44, i64 8}
!47 = !{!36, !36, i64 0}
!48 = !{!45, !41, i64 0}
!49 = !{!37, !37, i64 0}
!50 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_17PerspectiveCameraENS_18OrthographicCameraENS_15SphericalCameraENS_15RealisticCameraEEEE", !44, i64 0}
!51 = !{!50, !44, i64 0}
!52 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_14PMJ02BNSamplerENS_18IndependentSamplerENS_17StratifiedSamplerENS_13HaltonSamplerENS_18PaddedSobolSamplerENS_12SobolSamplerENS_13ZSobolSamplerENS_10MLTSamplerENS_15DebugMLTSamplerEEEE", !44, i64 0}
!53 = !{!52, !44, i64 0}
!54 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_15SimplePrimitiveENS_18GeometricPrimitiveENS_20TransformedPrimitiveENS_17AnimatedPrimitiveENS_12BVHAggregateENS_15KdTreeAggregateEEEE", !44, i64 0}
!55 = !{!54, !44, i64 0}
!56 = !{!"p1 _ZTSN4pbrt5LightE", !40, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseIN4pbrt5LightESaIS1_EE17_Vector_impl_dataE", !56, i64 0, !56, i64 8, !56, i64 16}
!58 = !{!57, !56, i64 8}
!59 = !{!57, !56, i64 0}
!60 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!61 = !{!56, !56, i64 0}
!62 = !{!57, !56, i64 16}
!63 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightENS_24PortalImageInfiniteLightEEEE", !44, i64 0}
!64 = !{!63, !44, i64 0}
!65 = !{!"llvm.loop.mustprogress"}
!66 = !{!"llvm.loop.isvectorized", i32 1}
!67 = !{!"llvm.loop.unroll.runtime.disable"}
!68 = !{!"branch_weights", i32 4, i32 12}
!69 = !{!"p1 _ZTSN4pbrt20RandomWalkIntegratorE", !40, i64 0}
!70 = !{!69, !69, i64 0}
!71 = !{!"p1 _ZTSN4pbrt11PBRTOptionsE", !40, i64 0}
!72 = !{!71, !71, i64 0}
!73 = !{!"p1 int", !40, i64 0}
!74 = !{!73, !73, i64 0}
!75 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !40, i64 0}
!76 = !{!"_ZTSNSt8__detail15_List_node_baseE", !75, i64 0, !75, i64 8}
!77 = !{!"_ZTSNSt8__detail17_List_node_headerE", !76, i64 0, !44, i64 16}
!78 = !{!"_ZTSNSt7__cxx1110_List_baseISt4pairIPcmESaIS3_EE10_List_implE", !77, i64 0}
!79 = !{!"_ZTSNSt7__cxx1110_List_baseISt4pairIPcmESaIS3_EEE", !78, i64 0}
!80 = !{!"_ZTSNSt7__cxx114listISt4pairIPcmESaIS3_EEE", !79, i64 0}
!81 = !{!"_ZTSN4pbrt13ScratchBufferE", !41, i64 0, !37, i64 8, !37, i64 12, !80, i64 16}
!82 = !{!81, !41, i64 0}
!83 = !{!81, !37, i64 8}
!84 = !{!81, !37, i64 12}
!85 = !{!76, !75, i64 8}
!86 = !{!76, !75, i64 0}
!87 = !{!77, !44, i64 16}
!88 = !{!"vtable pointer", !35, i64 0}
!89 = !{!88, !88, i64 0}
!90 = !{!"p1 _ZTSN4pbrt6Point2IiEE", !40, i64 0}
!91 = !{!90, !90, i64 0}
!92 = !{!"_ZTSSt14_Function_base", !36, i64 0, !40, i64 16}
!93 = !{!"_ZTSSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEE", !92, i64 0, !40, i64 24}
!94 = !{!93, !40, i64 24}
!95 = !{!92, !40, i64 16}
!96 = !{!"_ZTSSt8functionIFN4pbrt13ScratchBufferEvEE", !92, i64 0, !40, i64 24}
!97 = !{!96, !40, i64 24}
!98 = !{!"p1 _ZTSN4pbrt19ImageTileIntegratorE", !40, i64 0}
!99 = !{!98, !98, i64 0}
!100 = !{!"_ZTSSt8functionIFN4pbrt7SamplerEvEE", !92, i64 0, !40, i64 24}
!101 = !{!100, !40, i64 24}
!102 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_7RGBFilmENS_11GBufferFilmENS_12SpectralFilmEEEE", !44, i64 0}
!103 = !{!102, !44, i64 0}
!104 = !{!"p1 _ZTSN4pstd6vectorIN4pbrt6Point2IfEENS_3pmr21polymorphic_allocatorIS3_EEEE", !40, i64 0}
!105 = !{!"_ZTSN4pbrt6Tuple2INS_6Point2EiEE", !37, i64 0, !37, i64 4}
!106 = !{!"_ZTSN4pbrt6Point2IiEE", !105, i64 0}
!107 = !{!"_ZTSN4pbrt14PMJ02BNSamplerE", !37, i64 0, !37, i64 4, !37, i64 8, !104, i64 16, !106, i64 24, !37, i64 32, !37, i64 36}
!108 = !{!107, !37, i64 0}
!109 = !{!"_ZTSN4pbrt3RNGE", !44, i64 0, !44, i64 8}
!110 = !{!"_ZTSN4pbrt18IndependentSamplerE", !37, i64 0, !37, i64 4, !109, i64 8}
!111 = !{!110, !37, i64 0}
!112 = !{!"bool", !36, i64 0}
!113 = !{!"_ZTSN4pbrt17StratifiedSamplerE", !37, i64 0, !37, i64 4, !37, i64 8, !112, i64 12, !109, i64 16, !106, i64 32, !37, i64 40, !37, i64 44}
!114 = !{!113, !37, i64 0}
!115 = !{!113, !37, i64 4}
!116 = !{!"_ZTSN4pbrt17RandomizeStrategyE", !36, i64 0}
!117 = !{!"p1 _ZTSN4pstd6vectorIN4pbrt16DigitPermutationENS_3pmr21polymorphic_allocatorIS2_EEEE", !40, i64 0}
!118 = !{!"_ZTSN4pbrt13HaltonSamplerE", !37, i64 0, !116, i64 4, !117, i64 8, !106, i64 16, !106, i64 24, !36, i64 32, !44, i64 40, !37, i64 48}
!119 = !{!118, !37, i64 0}
!120 = !{!"_ZTSN4pbrt18PaddedSobolSamplerE", !37, i64 0, !37, i64 4, !116, i64 8, !106, i64 12, !37, i64 20, !37, i64 24}
!121 = !{!120, !37, i64 0}
!122 = !{!"_ZTSN4pbrt12SobolSamplerE", !37, i64 0, !37, i64 4, !37, i64 8, !116, i64 12, !106, i64 16, !37, i64 24, !44, i64 32}
!123 = !{!122, !37, i64 0}
!124 = !{!"_ZTSN4pbrt13ZSobolSamplerE", !116, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !44, i64 16, !37, i64 24}
!125 = !{!124, !37, i64 8}
!126 = !{!"float", !36, i64 0}
!127 = !{!"p1 _ZTSN4pstd3pmr15memory_resourceE", !40, i64 0}
!128 = !{!"_ZTSN4pstd3pmr21polymorphic_allocatorIN4pbrt10MLTSampler13PrimarySampleEEE", !127, i64 0}
!129 = !{!"p1 _ZTSN4pbrt10MLTSampler13PrimarySampleE", !40, i64 0}
!130 = !{!"_ZTSN4pstd6vectorIN4pbrt10MLTSampler13PrimarySampleENS_3pmr21polymorphic_allocatorIS3_EEEE", !128, i64 0, !129, i64 8, !44, i64 16, !44, i64 24}
!131 = !{!"_ZTSN4pbrt10MLTSamplerE", !37, i64 0, !109, i64 8, !126, i64 24, !126, i64 28, !37, i64 32, !130, i64 40, !44, i64 72, !112, i64 80, !44, i64 88, !37, i64 96, !37, i64 100}
!132 = !{!131, !37, i64 0}
!133 = !{!"_ZTSN4pbrt25RenderingCoordinateSystemE", !36, i64 0}
!134 = !{!"_ZTSN4pbrt16BasicPBRTOptionsE", !37, i64 0, !112, i64 4, !112, i64 5, !112, i64 6, !112, i64 7, !112, i64 8, !112, i64 9, !112, i64 10, !112, i64 11, !112, i64 12, !112, i64 13, !133, i64 16}
!135 = !{!134, !112, i64 4}
!136 = !{i8 0, i8 2}
!137 = !{}
!138 = !{!"_ZTSN4pbrt8LogLevelE", !36, i64 0}
!139 = !{!"_ZTSN4pstd8optionalIiEE", !36, i64 0, !112, i64 4}
!140 = !{!"_ZTSN4pstd8optionalIN4pbrt7Bounds2IfEEEE", !36, i64 0, !112, i64 16}
!141 = !{!"_ZTSN4pstd8optionalIN4pbrt7Bounds2IiEEEE", !36, i64 0, !112, i64 16}
!142 = !{!"_ZTSN4pstd8optionalIN4pbrt6Point2IiEEEE", !36, i64 0, !112, i64 8}
!143 = !{!"_ZTSN4pbrt11PBRTOptionsE", !134, i64 0, !37, i64 20, !138, i64 24, !45, i64 32, !112, i64 64, !112, i64 65, !112, i64 66, !112, i64 67, !139, i64 68, !139, i64 76, !112, i64 84, !112, i64 85, !45, i64 88, !45, i64 120, !45, i64 152, !45, i64 184, !45, i64 216, !140, i64 248, !141, i64 268, !142, i64 288, !126, i64 300}
!144 = !{!143, !112, i64 66}
!145 = !{!44, !44, i64 0}
!146 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_19LinearColorEncodingENS_17sRGBColorEncodingENS_18GammaColorEncodingEEEE", !44, i64 0}
end_hunk_1
