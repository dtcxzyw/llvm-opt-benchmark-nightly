Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/sky?download=true
inline.NumInlined: 1905
inline.NumDeleted: 597
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_ZN3Sky9draw_moonEPN5video12IVideoDriverERKNS0_6SColorES5_f:bb.a
  store i32 %.sroa.0.0, ptr %i.g, align 4, !tbaa !111
  store <2 x float> zeroinitializer, ptr %i.h, align 4, !tbaa !37
  store i16 0, ptr %i.i, align 4, !tbaa !176
  store float %i.bd, ptr %.ptr.3.i, align 4, !tbaa !37
  %.sroa.4.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %5, i64 124
  store float %i.ay, ptr %.sroa.4.0..sroa_idx.i47, align 4, !tbaa !37
  %.sroa.5.0..sroa_idx.i48 = getelementptr inbounds nuw i8, ptr %5, i64 128
  store <4 x float> <float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.5.0..sroa_idx.i48, align 4, !tbaa !37
  store i32 %.sroa.0.0, ptr %i.j, align 4, !tbaa !111
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.k, align 4, !tbaa !37
  store i16 0, ptr %i.l, align 4, !tbaa !176
  %i.be = tail call nsz float @llvm.fmuladd.f32(float %4, float 3.600000e+02, float -9.000000e+01)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.sink = phi float [ %i.be, %bb.e ], [ %i.ak, %bb.b ]
  call void @_ZN3Sky14place_sky_bodyERSt5arrayIN5video9S3DVertexELm4EEff(ptr noundef nonnull align 8 dereferenceable(2368) %0, ptr noundef nonnull align 4 dereferenceable(160) %5, float noundef -9.000000e+01, float noundef %.sink)
  %i.bf = load ptr, ptr %1, align 8, !tbaa !32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 360
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %5, i32 noundef 4, ptr noundef nonnull @_ZZN3Sky9draw_moonEPN5video12IVideoDriverERKNS0_6SColorES5_fE7indices, i32 noundef 2, i32 noundef 0, i32 noundef 6, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13ScopeProfilerD2Ev(ptr noundef nonnull align 8 dead_on_return(50) dereferenceable(50) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN13ScopeProfiler4stopEv(ptr noundef nonnull align 8 dereferenceable(50) %0) #31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !77
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN3Sky6updateEfffb10CameraModeff(ptr noundef nonnull align 8 dereferenceable(2368) %0, float noundef %1, float noundef %2, float noundef %3, i1 noundef zeroext %4, i32 noundef %5, float noundef %6, float noundef %7) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1792 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !99, !range !119, !noundef !120
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !99
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %.0327 = phi i32 [ 0, %bb.b ], [ %i.d, %bb.c ]
  tail call void @_ZN3Sky6updateEfffb10CameraModeff(ptr noundef nonnull align 8 dereferenceable(2368) %0, float noundef %1, float noundef %2, float noundef %3, i1 noundef zeroext %4, i32 noundef %5, float noundef %6, float noundef %7)
  %i.d = add nuw nsw i32 %.0327, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.d, 100
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !320

bb.d:                                             ; preds = %bb.a
  %i.e = zext i1 %4 to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1796
  store float %1, ptr %i.f, align 4, !tbaa !170
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1800
  store float %2, ptr %i.g, align 8, !tbaa !168
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1804
  store i8 %i.e, ptr %i.h, align 4, !tbaa !167
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1819
  store i8 0, ptr %i.i, align 1, !tbaa !101
  %i.j = fpext nsz float %2 to double             ; 4 uses
  %i.k = fcmp nsz oge double %i.j, 2.000000e-01
  %i.l = fcmp nsz olt double %i.j, 3.500000e-01
  %i.m = and i1 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1996
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2000
  %.sroa.081.0.copyload = load i32, ptr %i.o, align 8, !tbaa !111 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2020
  %.sroa.080.0.copyload = load i32, ptr %i.p, align 4, !tbaa !111 ; 4 uses
  %i.q = and i32 %.sroa.080.0.copyload, 255
  %i.r = uitofp nsz nneg i32 %i.q to float
  %i.s = fmul nnan nsz float %i.r, f0x3B808081
  %i.t = lshr i32 %.sroa.080.0.copyload, 24
  %i.u = uitofp nsz nneg i32 %i.t to float
  %i.v = fmul nnan nsz float %i.u, f0x3B808081
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2016
  %.sroa.078.0.copyload = load i32, ptr %i.w, align 8, !tbaa !111 ; 4 uses
  %.sroa.077.0.copyload = load i32, ptr %i.n, align 4, !tbaa !111 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2004
  %i.y = lshr i32 %.sroa.080.0.copyload, 16
  %i.z = and i32 %i.y, 255
  %i.aa = uitofp nsz nneg i32 %i.z to float
  %i.ab = lshr i32 %.sroa.080.0.copyload, 8
  %i.ac = and i32 %i.ab, 255
  %i.ad = uitofp nsz nneg i32 %i.ac to float
  %i.ae = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %i.ad, i64 1
  %i.ag = fmul nnan nsz <2 x float> %i.af, splat (float f0x3B808081) ; 2 uses
  %i.ah = load <2 x i32>, ptr %i.x, align 4, !tbaa !111 ; 3 uses
  %i.ai = extractelement <2 x i32> %i.ah, i64 1   ; 3 uses
  %i.aj = lshr i32 %i.ai, 16
  %i.ak = and i32 %i.aj, 255
  %i.al = uitofp nsz nneg i32 %i.ak to float
  %i.am = lshr i32 %i.ai, 8
  %i.an = and i32 %i.am, 255
  %i.ao = uitofp nsz nneg i32 %i.an to float
  %i.ap = insertelement <2 x float> poison, float %i.al, i64 0
  %i.aq = insertelement <2 x float> %i.ap, float %i.ao, i64 1
  %i.ar = fmul nnan nsz <2 x float> %i.aq, splat (float f0x3B808081)
  %i.as = and i32 %i.ai, 255
  %i.at = uitofp nsz nneg i32 %i.as to float
  %i.au = lshr <2 x i32> %i.ah, splat (i32 24)
  %i.av = uitofp nneg <2 x i32> %i.au to <2 x float>
  %i.aw = extractelement <2 x i32> %i.ah, i64 0   ; 3 uses
  %i.ax = lshr i32 %i.aw, 16
  %i.ay = and i32 %i.ax, 255
  %i.az = uitofp nsz nneg i32 %i.ay to float
  %i.ba = lshr i32 %i.aw, 8
  %i.bb = and i32 %i.ba, 255
  %i.bc = uitofp nsz nneg i32 %i.bb to float
  %i.bd = insertelement <2 x float> poison, float %i.az, i64 0
  %i.be = insertelement <2 x float> %i.bd, float %i.bc, i64 1
  %i.bf = fmul nnan nsz <2 x float> %i.be, splat (float f0x3B808081)
  %i.bg = and i32 %i.aw, 255
  %i.bh = uitofp nsz nneg i32 %i.bg to float
  %i.bi = insertelement <2 x float> poison, float %i.at, i64 0
  %i.bj = insertelement <2 x float> %i.bi, float %i.bh, i64 1
  %i.bk = fmul nnan nsz <2 x float> %i.bj, splat (float f0x3B808081)
  %i.bl = fmul nnan nsz <2 x float> %i.av, splat (float f0x3B808081)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 2012
  %.sroa.075.0.copyload = load i32, ptr %i.bm, align 4, !tbaa !111 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1892
  %.sroa.7261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1900
  %i.bo = load <2 x float>, ptr %.sroa.7261.0..sroa_idx, align 4, !tbaa !37 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1908
  %i.bq = load <2 x float>, ptr %i.bn, align 4, !tbaa !37 ; 2 uses
  %i.br = load <2 x float>, ptr %i.bp, align 4, !tbaa !37
  %.sroa.5255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1916
  %i.bs = load <2 x float>, ptr %.sroa.5255.0..sroa_idx, align 4, !tbaa !37
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1808 ; 3 uses
  %i.bu = load float, ptr %i.bt, align 8, !tbaa !169 ; 4 uses
  br i1 %4, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.bv = fsub nsz float %2, %i.bu
  %i.bw = tail call nsz noundef float @llvm.fabs.f32(float %i.bv)
  %i.bx = fcmp nsz olt float %i.bw, 2.000000e-01
  %i.by = fpext nsz float %i.bu to double         ; 2 uses
  br i1 %i.bx, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bz = fmul nsz double %i.j, 5.000000e-02
  %i.ca = tail call nsz double @llvm.fmuladd.f64(double %i.by, double f0x3FEE666666666666, double %i.bz)
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.cb = fmul nsz double %i.j, 2.000000e-01
  %i.cc = tail call nsz double @llvm.fmuladd.f64(double %i.by, double 8.000000e-01, double %i.cb)
  br label %bb.k

bb.h:                                             ; preds = %bb.d
  %i.cd = fcmp nsz olt float %3, %i.bu
  %i.ce = fpext nsz float %i.bu to double         ; 2 uses
  %i.cf = fpext nsz float %3 to double            ; 2 uses
  br i1 %i.cd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cg = fmul nsz double %i.cf, 5.000000e-02
  %i.ch = tail call nsz double @llvm.fmuladd.f64(double %i.ce, double f0x3FEE666666666666, double %i.cg)
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.ci = fmul nsz double %i.cf, 2.000000e-02
  %i.cj = tail call nsz double @llvm.fmuladd.f64(double %i.ce, double f0x3FEF5C28F5C28F5C, double %i.ci)
  br label %bb.n

bb.k:                                             ; preds = %bb.f, %bb.g
  %storemerge326.in = phi double [ %i.cc, %bb.g ], [ %i.ca, %bb.f ]
  %.0117.ph = phi float [ 0.000000e+00, %bb.g ], [ f0x3F733333, %bb.f ] ; 2 uses
  %storemerge326 = fptrunc double %storemerge326.in to float ; 3 uses
  store float %storemerge326, ptr %i.bt, align 8, !tbaa !169
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1816
  store i8 1, ptr %i.ck, align 8, !tbaa !321
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1824
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !322
  %i.cn = fmul nsz float %i.cm, 9.800000e-01      ; 2 uses
  br i1 %i.m, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1820 ; 2 uses
  %i.cp = load float, ptr %i.co, align 4, !tbaa !323
  %i.cq = fmul nsz float %i.cp, 9.800000e-01
  %i.cr = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.cs = insertelement <2 x float> %i.cr, float %i.cn, i64 1
  %i.ct = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ar, <2 x float> splat (float f0x3CA3D700), <2 x float> %i.cs) ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 1828 ; 2 uses
  %8 = load <4 x float>, ptr %i.cu, align 4
  %9 = shufflevector <4 x float> %8, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1832
  %i.cw = load float, ptr %i.cv, align 8, !tbaa !102
  store <2 x float> %i.ct, ptr %i.co, align 4, !tbaa !37
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1836 ; 2 uses
  %i.cy = load <2 x float>, ptr %i.cx, align 4, !tbaa !37
  %i.cz = fmul nsz <2 x float> %i.cy, splat (float 9.800000e-01)
  %i.da = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> splat (float f0x3CA3D700), <2 x float> %i.cz) ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 1844 ; 2 uses
  %i.dc = load float, ptr %i.db, align 4, !tbaa !324
  %i.dd = insertelement <2 x float> %9, float %i.dc, i64 1
  %i.de = fmul nsz <2 x float> %i.dd, splat (float 9.800000e-01)
  %i.df = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> splat (float f0x3CA3D700), <2 x float> %i.de) ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 1848
  %10 = load <4 x float>, ptr %i.dg, align 8
  %11 = shufflevector <4 x float> %10, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.dh = insertelement <2 x float> %11, float %i.cw, i64 1
  %i.di = fmul nsz <2 x float> %i.dh, splat (float 9.800000e-01)
  %i.dj = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bl, <2 x float> splat (float f0x3CA3D700), <2 x float> %i.di) ; 2 uses
  %i.dk = shufflevector <2 x float> %i.df, <2 x float> %i.dj, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.dk, ptr %i.cu, align 4, !tbaa !37
  %i.dl = shufflevector <2 x float> %i.df, <2 x float> %i.dj, <2 x i32> <i32 1, i32 2>
  store <2 x float> %i.da, ptr %i.cx, align 4, !tbaa !37
  store <2 x float> %i.dl, ptr %i.db, align 4, !tbaa !37
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 1852 ; 2 uses
  %i.dn = load <2 x float>, ptr %i.dm, align 4, !tbaa !37
  %i.do = fmul nsz <2 x float> %i.dn, splat (float 9.800000e-01)
  %i.dp = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.br, <2 x float> splat (float f0x3CA3D700), <2 x float> %i.do) ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 1860 ; 2 uses
  %i.dr = load <2 x float>, ptr %i.dq, align 4, !tbaa !37
  %i.ds = fmul nsz <2 x float> %i.dr, splat (float 9.800000e-01)
  %i.dt = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> splat (float f0x3CA3D700), <2 x float> %i.ds) ; 2 uses
  store <2 x float> %i.dp, ptr %i.dm, align 4, !tbaa !37
  store <2 x float> %i.dt, ptr %i.dq, align 4, !tbaa !37
  %i.du = extractelement <2 x float> %i.dt, i64 0
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.dv = fcmp nsz olt float %2, 1.300000e-01     ; 8 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 1820 ; 2 uses
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !323
  %i.dy = fmul nsz float %i.dx, 9.800000e-01
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 1828 ; 2 uses
  %12 = load <4 x float>, ptr %i.dz, align 4
  %13 = shufflevector <4 x float> %12, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 1832
  %i.eb = load float, ptr %i.ea, align 8, !tbaa !102
  %i.ec = fmul nsz float %i.eb, 9.800000e-01
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 1836 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 1844
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 1848
  %.385.v.v.v = select i1 %i.dv, i32 %.sroa.078.0.copyload, i32 %.sroa.081.0.copyload
  %.385.v.v = and i32 %.385.v.v.v, 255
  %.385.v = uitofp nneg i32 %.385.v.v to float
  %.386.v.v.v = select i1 %i.dv, i32 %.sroa.078.0.copyload, i32 %.sroa.081.0.copyload
  %.386.v.v = lshr i32 %.386.v.v.v, 24
  %.386.v = uitofp nneg i32 %.386.v.v to float
  %.386 = fmul nnan nsz float %.386.v, f0x3B808081
  %.389.v.v.v = select i1 %i.dv, i32 %.sroa.075.0.copyload, i32 %.sroa.077.0.copyload
  %.389.v.v = and i32 %.389.v.v.v, 255
  %.389.v = uitofp nneg i32 %.389.v.v to float
  %.390.v.v.v = select i1 %i.dv, i32 %.sroa.075.0.copyload, i32 %.sroa.077.0.copyload
  %.390.v.v = lshr i32 %.390.v.v.v, 24
  %.390.v = uitofp nneg i32 %.390.v.v to float
  %.390 = fmul nnan nsz float %.390.v, f0x3B808081
  %..v.v.v.v = select i1 %i.dv, i32 %.sroa.078.0.copyload, i32 %.sroa.081.0.copyload
  %..v.v.v = lshr i32 %..v.v.v.v, 16
  %..v.v = and i32 %..v.v.v, 255
  %..v = uitofp nneg i32 %..v.v to float
  %.384.v.v.v.v = select i1 %i.dv, i32 %.sroa.078.0.copyload, i32 %.sroa.081.0.copyload
  %.384.v.v.v = lshr i32 %.384.v.v.v.v, 8
  %.384.v.v = and i32 %.384.v.v.v, 255
  %.384.v = uitofp nneg i32 %.384.v.v to float
  %i.eg = insertelement <2 x float> poison, float %..v, i64 0
  %i.eh = insertelement <2 x float> %i.eg, float %.384.v, i64 1
  %i.ei = fmul nnan nsz <2 x float> %i.eh, splat (float f0x3B808081)
  %i.ej = insertelement <2 x float> poison, float %i.dy, i64 0
  %i.ek = insertelement <2 x float> %i.ej, float %i.cn, i64 1
  %i.el = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ei, <2 x float> splat (float f0x3CA3D700), <2 x float> %i.ek) ; 2 uses
  %i.em = tail call nsz float @llvm.fmuladd.f32(float %.386, float f0x3CA3D700, float %i.ec)
  store <2 x float> %i.el, ptr %i.dw, align 4, !tbaa !37
  %.387.v.v.v.v = select i1 %i.dv, i32 %.sroa.075.0.copyload, i32 %.sroa.077.0.copyload
  %.387.v.v.v = lshr i32 %.387.v.v.v.v, 16
  %.387.v.v = and i32 %.387.v.v.v, 255
  %.387.v = uitofp nneg i32 %.387.v.v to float
  %.388.v.v.v.v = select i1 %i.dv, i32 %.sroa.075.0.copyload, i32 %.sroa.077.0.copyload
  %.388.v.v.v = lshr i32 %.388.v.v.v.v, 8
  %.388.v.v = and i32 %.388.v.v.v, 255
  %.388.v = uitofp nneg i32 %.388.v.v to float
  %i.en = insertelement <2 x float> poison, float %.387.v, i64 0
  %i.eo = insertelement <2 x float> %i.en, float %.388.v, i64 1
  %i.ep = fmul nnan nsz <2 x float> %i.eo, splat (float f0x3B808081)
  %i.eq = load <2 x float>, ptr %i.ed, align 4, !tbaa !37
  %i.er = fmul nsz <2 x float> %i.eq, splat (float 9.800000e-01)
  %i.es = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ep, <2 x float> splat (float f0x3CA3D700), <2 x float> %i.er) ; 2 uses
  %i.et = load float, ptr %i.ee, align 4, !tbaa !324
  %i.eu = insertelement <2 x float> poison, float %.385.v, i64 0
  %i.ev = insertelement <2 x float> %i.eu, float %.389.v, i64 1
  %i.ew = fmul nnan nsz <2 x float> %i.ev, splat (float f0x3B808081)
  %i.ex = insertelement <2 x float> %13, float %i.et, i64 1
  %i.ey = fmul nsz <2 x float> %i.ex, splat (float 9.800000e-01)
  %i.ez = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ew, <2 x float> splat (float f0x3CA3D700), <2 x float> %i.ey) ; 3 uses
  %.sroa.3.12.vec.insert.i156 = insertelement <2 x float> %i.ez, float %i.em, i64 1
  store <2 x float> %.sroa.3.12.vec.insert.i156, ptr %i.dz, align 4, !tbaa !37
  %i.fa = load float, ptr %i.ef, align 8, !tbaa !102
  %i.fb = fmul nsz float %i.fa, 9.800000e-01
  %i.fc = tail call nsz float @llvm.fmuladd.f32(float %.390, float f0x3CA3D700, float %i.fb)
  %i.fd = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.3.12.vec.insert.i162 = insertelement <2 x float> %i.fd, float %i.fc, i64 1
  store <2 x float> %i.es, ptr %i.ed, align 4, !tbaa !37
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 1844
  store <2 x float> %.sroa.3.12.vec.insert.i162, ptr %i.fe, align 4, !tbaa !37
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 1852 ; 2 uses
  %i.fg = load <2 x float>, ptr %i.ff, align 4, !tbaa !37
  %i.fh = fmul nsz <2 x float> %i.fg, splat (float 9.800000e-01)
  %i.fi = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> splat (float f0x3CA3D700), <2 x float> %i.fh) ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 1860 ; 2 uses
  %i.fk = load <2 x float>, ptr %i.fj, align 4, !tbaa !37
  %i.fl = fmul nsz <2 x float> %i.fk, splat (float 9.800000e-01)
  %i.fm = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> splat (float f0x3CA3D700), <2 x float> %i.fl) ; 2 uses
  store <2 x float> %i.fi, ptr %i.ff, align 4, !tbaa !37
  store <2 x float> %i.fm, ptr %i.fj, align 4, !tbaa !37
  %i.fn = extractelement <2 x float> %i.fm, i64 0
  br label %bb.o

bb.n:                                             ; preds = %bb.j, %bb.i
  %storemerge.in = phi double [ %i.cj, %bb.j ], [ %i.ch, %bb.i ]
  %storemerge = fptrunc double %storemerge.in to float ; 2 uses
  store float %storemerge, ptr %i.bt, align 8, !tbaa !169
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 1820 ; 2 uses
  %i.fq = load <2 x float>, ptr %i.fp, align 4, !tbaa !37
  %i.fr = fmul nsz <2 x float> %i.fq, splat (float 9.800000e-01)
  %i.fs = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> splat (float f0x3CA3D700), <2 x float> %i.fr) ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 1828 ; 2 uses
  %14 = load <4 x float>, ptr %i.ft, align 4
  %15 = shufflevector <4 x float> %14, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 1832
  %16 = load <4 x float>, ptr %i.fu, align 8
  %17 = shufflevector <4 x float> %16, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  store <2 x float> %i.fs, ptr %i.fp, align 4, !tbaa !37
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 1836 ; 2 uses
  %i.fw = load <2 x float>, ptr %i.fv, align 4, !tbaa !37
  %i.fx = fmul nsz <2 x float> %i.fw, splat (float 9.800000e-01)
  %i.fy = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> splat (float f0x3CA3D700), <2 x float> %i.fx) ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 1844 ; 2 uses
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !324
  %i.gb = insertelement <2 x float> %15, float %i.ga, i64 1
  %i.gc = fmul nsz <2 x float> %i.gb, splat (float 9.800000e-01)
  %i.gd = insertelement <2 x float> poison, float %i.s, i64 0
  %i.ge = shufflevector <2 x float> %i.gd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gf = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ge, <2 x float> splat (float f0x3CA3D700), <2 x float> %i.gc) ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 1848
  %i.gh = load float, ptr %i.gg, align 8, !tbaa !102
  %i.gi = insertelement <2 x float> %17, float %i.gh, i64 1
  %i.gj = fmul nsz <2 x float> %i.gi, splat (float 9.800000e-01)
  %i.gk = insertelement <2 x float> poison, float %i.v, i64 0
  %i.gl = shufflevector <2 x float> %i.gk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gm = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gl, <2 x float> splat (float f0x3CA3D700), <2 x float> %i.gj) ; 2 uses
  %i.gn = shufflevector <2 x float> %i.gf, <2 x float> %i.gm, <2 x i32> <i32 0, i32 2>
  store <2 x float> %i.gn, ptr %i.ft, align 4, !tbaa !37
  %i.go = shufflevector <2 x float> %i.gf, <2 x float> %i.gm, <2 x i32> <i32 1, i32 3>
  store <2 x float> %i.fy, ptr %i.fv, align 4, !tbaa !37
  store <2 x float> %i.go, ptr %i.fz, align 4, !tbaa !37
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 1852 ; 2 uses
  %i.gq = load <2 x float>, ptr %i.gp, align 4, !tbaa !37
  %i.gr = fmul nsz <2 x float> %i.gq, splat (float 9.800000e-01)
  %i.gs = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> splat (float f0x3CA3D700), <2 x float> %i.gr) ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 1860 ; 2 uses
  %i.gu = load <2 x float>, ptr %i.gt, align 4, !tbaa !37
  %i.gv = fmul nsz <2 x float> %i.gu, splat (float 9.800000e-01)
  %i.gw = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> splat (float f0x3CA3D700), <2 x float> %i.gv) ; 2 uses
  store <2 x float> %i.gs, ptr %i.gp, align 4, !tbaa !37
  store <2 x float> %i.gw, ptr %i.gt, align 4, !tbaa !37
  store i8 0, ptr %i.fo, align 8, !tbaa !321
  %i.gx = extractelement <2 x float> %i.gw, i64 0
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %i.gy = phi float [ %i.du, %bb.l ], [ %i.fn, %bb.m ], [ %i.gx, %bb.n ]
  %i.gz = phi float [ %storemerge326, %bb.l ], [ %storemerge326, %bb.m ], [ %storemerge, %bb.n ]
  %.0117295 = phi float [ %.0117.ph, %bb.l ], [ %.0117.ph, %bb.m ], [ f0x3F733333, %bb.n ] ; 2 uses
  %i.ha = phi <2 x float> [ %i.dp, %bb.l ], [ %i.fi, %bb.m ], [ %i.gs, %bb.n ]
  %i.hb = phi <2 x float> [ %i.da, %bb.l ], [ %i.es, %bb.m ], [ %i.fy, %bb.n ]
  %i.hc = phi <2 x float> [ %i.ct, %bb.l ], [ %i.el, %bb.m ], [ %i.fs, %bb.n ]
  %i.hd = phi <2 x float> [ %i.df, %bb.l ], [ %i.ez, %bb.m ], [ %i.gf, %bb.n ]
  %i.he = fmul nsz <2 x float> %i.hc, splat (float 2.550000e+02)
  %i.hf = fmul nsz <2 x float> %i.hd, splat (float 2.550000e+02)
  %i.hg = fadd nsz <2 x float> %i.he, splat (float 5.000000e-01)
  %i.hh = tail call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %i.hg)
  %i.hi = fptosi <2 x float> %i.hh to <2 x i32>
  %i.hj = and <2 x i32> %i.hi, splat (i32 255)
  %i.hk = uitofp nneg <2 x i32> %i.hj to <2 x float>
  %i.hl = insertelement <2 x float> poison, float %i.gz, i64 0
  %i.hm = shufflevector <2 x float> %i.hl, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.hn = fmul nsz <2 x float> %i.hm, %i.hk
  %i.ho = fptoui <2 x float> %i.hn to <2 x i32>   ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 1868 ; 2 uses
  %i.hq = fmul nsz <2 x float> %i.hb, splat (float 2.550000e+02)
  %i.hr = fadd nsz <2 x float> %i.hq, splat (float 5.000000e-01)
  %i.hs = tail call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %i.hr)
  %i.ht = fptosi <2 x float> %i.hs to <2 x i32>
  %i.hu = and <2 x i32> %i.ht, splat (i32 255)
  %i.hv = uitofp nneg <2 x i32> %i.hu to <2 x float>
  %i.hw = fmul nsz <2 x float> %i.hm, %i.hv
  %i.hx = fptoui <2 x float> %i.hw to <2 x i32>   ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 1872
  %i.hz = fadd nsz <2 x float> %i.hf, splat (float 5.000000e-01)
  %i.ia = tail call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %i.hz)
  %i.ib = fptosi <2 x float> %i.ia to <2 x i32>
  %i.ic = and <2 x i32> %i.ib, splat (i32 255)
  %i.id = uitofp nneg <2 x i32> %i.ic to <2 x float>
  %i.ie = fmul nsz <2 x float> %i.hm, %i.id
  %i.if = fptoui <2 x float> %i.ie to <2 x i32>
  %i.ig = shufflevector <2 x i32> %i.ho, <2 x i32> %i.hx, <2 x i32> <i32 0, i32 2>
  %i.ih = shl <2 x i32> %i.ig, splat (i32 16)
  %i.ii = shufflevector <2 x i32> %i.ho, <2 x i32> %i.hx, <2 x i32> <i32 1, i32 3>
  %i.ij = shl <2 x i32> %i.ii, splat (i32 8)
  %i.ik = and <2 x i32> %i.ij, splat (i32 65280)
  %i.il = and <2 x i32> %i.if, splat (i32 255)    ; 3 uses
  %i.im = or disjoint <2 x i32> %i.ik, %i.ih
  %i.in = or disjoint <2 x i32> %i.im, %i.il
  %i.io = or <2 x i32> %i.in, splat (i32 -16777216)
  store <2 x i32> %i.io, ptr %i.hp, align 4, !tbaa !111
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 1818
  %i.iq = load i8, ptr %i.ip, align 2, !tbaa !153, !range !119, !noundef !120
  %i.ir = trunc nuw i8 %i.iq to i1                ; 2 uses
  br i1 %i.ir, label %bb.p, label %.thread317

bb.p:                                             ; preds = %bb.o
  br i1 %4, label %bb.q, label %_ZN3Sky15m_horizon_blendEv.exit198

bb.q:                                             ; preds = %bb.p
  %i.is = fcmp nsz ult float %1, 5.000000e-01
  %i.it = fsub nnan nsz float 1.000000e+00, %1
  %.in.i = select i1 %i.is, float %1, float %i.it
  %i.iu = fmul nsz float %.in.i, 2.000000e+00     ; 3 uses
  %i.iv = fpext nsz float %i.iu to double         ; 7 uses
  %i.iw = fcmp nsz ugt double %i.iv, 3.000000e-01
  br i1 %i.iw, label %bb.r, label %_ZN3Sky15m_horizon_blendEv.exit198

bb.r:                                             ; preds = %bb.q
  %i.ix = fcmp nsz ugt double %i.iv, 4.000000e-01
  br i1 %i.ix, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.iy = fadd nnan nsz double %i.iv, -3.000000e-01
  br label %_ZN3Sky15m_horizon_blendEv.exit

bb.t:                                             ; preds = %bb.r
  %i.iz = fcmp nsz ugt float %i.iu, 5.000000e-01
  br i1 %i.iz, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ja = fsub nnan nsz double 5.000000e-01, %i.iv
  br label %_ZN3Sky15m_horizon_blendEv.exit

_ZN3Sky15m_horizon_blendEv.exit:                  ; preds = %bb.s, %bb.u
  %.1.i.in.in = phi double [ %i.iy, %bb.s ], [ %i.ja, %bb.u ]
  %.1.i.in = fmul nnan nsz double %.1.i.in.in, 1.000000e+01
  %.1.i = fptrunc double %.1.i.in to float
  %i.jb = fcmp nsz une float %.1.i, 0.000000e+00
  br i1 %i.jb, label %_Z8rangelimIdidET_RKS0_RKT0_RKT1_.exit, label %bb.z

_Z8rangelimIdidET_RKS0_RKT0_RKT1_.exit:           ; preds = %_ZN3Sky15m_horizon_blendEv.exit
  %i.jc = icmp sgt i32 %5, 2
  %i.jd = select i1 %i.jc, i32 -1, i32 1
  %i.je = sitofp nsz i32 %i.jd to float
  %i.jf = tail call nsz float @llvm.fmuladd.f32(float %6, float %i.je, float 9.000000e+01)
  %i.jg = frem nsz float %i.jf, 3.600000e+02      ; 3 uses
  %i.jh = fcmp nsz olt float %i.jg, 0.000000e+00
  %i.ji = fadd nsz float %i.jg, 3.600000e+02
  %i.jj = select nsz i1 %i.jh, float %i.ji, float %i.jg ; 3 uses
  %i.jk = fcmp nsz ogt float %i.jj, 1.800000e+02
  %i.jl = fsub nsz float 3.600000e+02, %i.jj
  %.0119 = select nsz i1 %i.jk, float %i.jl, float %i.jj
  %i.jm = tail call nsz noundef float @llvm.fabs.f32(float %7)
  %i.jn = fsub nsz float 9.000000e+01, %i.jm
  %i.jo = insertelement <2 x float> poison, float %.0119, i64 0
  %i.jp = insertelement <2 x float> %i.jo, float %i.jn, i64 1
  %i.jq = fdiv nsz <2 x float> %i.jp, <float 1.800000e+02, float 9.000000e+01>
  %i.jr = fpext <2 x float> %i.jq to <2 x double> ; 2 uses
  %i.js = extractelement <2 x double> %i.jr, i64 0
  %i.jt = fneg nsz double %i.js
  %i.ju = tail call nsz double @llvm.fmuladd.f64(double %i.jt, double 1.375000e+00, double 1.000000e+00) ; 3 uses
  %i.jv = fcmp nsz olt double %i.ju, 0.000000e+00
  %i.jw = fcmp nsz ogt double %i.ju, f0x3FE745D1745D1746
  %..i = select nsz i1 %i.jw, double f0x3FE745D1745D1746, double %i.ju
  %i.jx = fmul nsz double %..i, 1.375000e+00
  %i.jy = select i1 %i.jv, double 0.000000e+00, double %i.jx
  %i.jz = fptrunc nsz double %i.jy to float
  %i.ka = fpext nsz float %i.jz to double         ; 2 uses
  %i.kb = fsub nsz double 5.000000e-01, %i.ka
  %i.kc = extractelement <2 x double> %i.jr, i64 1
  %i.kd = fmul nsz double %i.kc, 1.500000e+00     ; 2 uses
  %i.ke = fcmp nsz olt double %i.kd, 1.000000e+00
  %i.kf = select nsz i1 %i.ke, double %i.kd, double 1.000000e+00
  %i.kg = fsub nsz double 1.000000e+00, %i.kf
  %i.kh = tail call nsz double @llvm.fmuladd.f64(double %i.kb, double %i.kg, double %i.ka)
  %i.ki = fptrunc nsz double %i.kh to float       ; 2 uses
  %i.kj = fcmp nsz ogt float %1, 5.000000e-01
  %i.kk = fsub nsz float 1.000000e+00, %i.ki
  %.1 = select nsz i1 %i.kj, float %i.kk, float %i.ki ; 2 uses
  %i.kl = fmul nsz float %2, 3.000000e+00         ; 3 uses
  %i.km = fcmp nsz olt float %i.kl, 2.000000e-01
  %i.kn = fcmp nsz ogt float %i.kl, 1.000000e+00
  %..i189 = select nsz i1 %i.kn, float 1.000000e+00, float %i.kl
  %.0.i190 = select nsz i1 %i.km, float 2.000000e-01, float %..i189 ; 10 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 2352
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !171
  %.not = icmp ne ptr %i.kp, null
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 2312
  %i.kr = load i8, ptr %i.kq, align 8, !range !119
  %i.ks = trunc nuw i8 %i.kr to i1                ; 2 uses
  %or.cond = select i1 %.not, i1 %i.ks, i1 false
  br i1 %or.cond, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_Z8rangelimIdidET_RKS0_RKT0_RKT1_.exit
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 732
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !98 ; 3 uses
  %i.kv = lshr i32 %i.ku, 16
  %i.kw = and i32 %i.kv, 255
  %i.kx = uitofp nsz nneg i32 %i.kw to float
  %i.ky = fmul nsz float %.0.i190, %i.kx
  %i.kz = fdiv nsz float %i.ky, 2.550000e+02
  %i.la = lshr i32 %i.ku, 8
  %i.lb = and i32 %i.ku, 255
  %i.lc = uitofp nsz nneg i32 %i.lb to float
  %i.ld = and i32 %i.la, 255
  %i.le = uitofp nsz nneg i32 %i.ld to float
  %i.lf = insertelement <2 x float> poison, float %.0.i190, i64 0
  %i.lg = shufflevector <2 x float> %i.lf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lh = insertelement <2 x float> poison, float %i.le, i64 0
  %i.li = insertelement <2 x float> %i.lh, float %i.lc, i64 1
  %i.lj = fmul nsz <2 x float> %i.lg, %i.li
  %i.lk = fdiv nsz <2 x float> %i.lj, splat (float 2.550000e+02)
  br label %bb.x

bb.w:                                             ; preds = %_Z8rangelimIdidET_RKS0_RKT0_RKT1_.exit
  br i1 %i.ks, label %_Z8rangelimIfddET_RKS0_RKT0_RKT1_.exit, label %.thread298

_Z8rangelimIfddET_RKS0_RKT0_RKT1_.exit:           ; preds = %bb.w
  %i.ll = fpext nsz float %.0.i190 to double      ; 2 uses
  %i.lm = fcmp nsz olt float %2, 2.500000e-01
  %i.ln = fcmp nsz ogt float %2, 7.500000e-01
  %..i191 = select nsz i1 %i.ln, float 7.500000e-01, float %2
  %.0.i192 = select nsz i1 %i.lm, float 2.500000e-01, float %..i191
  %i.lo = fpext nsz float %.0.i192 to double
  %i.lp = fadd nsz double %i.lo, -2.500000e-01
  %i.lq = fmul nsz double %i.lp, 2.000000e+00
  %i.lr = tail call nsz double @llvm.fmuladd.f64(double %i.lq, double 7.500000e-01, double 2.500000e-01)
  %i.ls = fmul nsz double %i.lr, %i.ll
  %i.lt = fcmp nsz olt float %2, 5.000000e-02
  %i.lu = fcmp nsz ogt float %2, 1.500000e-01
  %..i193 = select nsz i1 %i.lu, float 1.500000e-01, float %2
end_hunk_0
begin_hunk_1_@_ZN3Sky11updateStarsEv:bb.a

bb.m:                                             ; preds = %bb.a
  %i.av = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 200) #30
  resume { ptr, i32 } %i.av

bb.n:                                             ; preds = %_ZN11StreamProxylsIiEERS_OT_.exit, %_ZN7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEE5resetEPS4_.exit
  %i.aw = phi i32 [ 16384, %_ZN11StreamProxylsIiEERS_OT_.exit ], [ %i.o, %_ZN7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEE5resetEPS4_.exit ] ; 2 uses
  %i.ax = phi ptr [ %.pre, %_ZN11StreamProxylsIiEERS_OT_.exit ], [ %i.e, %_ZN7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEE5resetEPS4_.exit ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 136
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !209 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32 ; 11 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 144
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !210 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32 ; 15 uses
  %i.be = shl nuw nsw i32 %i.aw, 2
  %i.bf = zext nneg i32 %i.be to i64              ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 48 ; 12 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !213
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !214
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = sdiv exact i64 %i.bl, 40
  %i.bn = icmp ult i64 %i.bm, %i.bf
  br i1 %i.bn, label %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %i.az, i64 40 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !215
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.bq, %i.bk
  %i.bs = mul nuw nsw i64 %i.bf, 40
  %i.bt = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #33 ; 4 uses
  %i.bu = load ptr, ptr %i.ba, align 8, !tbaa !214 ; 5 uses
  %i.bv = load ptr, ptr %i.bo, align 8, !tbaa !215 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bu, %i.bv
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i ], [ %i.bt, %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i ], [ %i.bu, %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.012.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(40) %.0911.i.i.i.i, i64 40, i1 false), !tbaa.struct !216, !alias.scope !372
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %.not.i.i.i.i = icmp eq ptr %i.bw, %i.bv
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !356

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.bu, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.by = load ptr, ptr %i.bg, align 8, !tbaa !213
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bu to i64
  %i.cb = sub i64 %i.bz, %i.ca
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.cb) #30
  br label %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.o, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.bt, ptr %i.ba, align 8, !tbaa !214
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.br
  store ptr %i.cc, ptr %i.bo, align 8, !tbaa !215
  %i.cd = getelementptr inbounds nuw [40 x i8], ptr %i.bt, i64 %i.bf
  store ptr %i.cd, ptr %i.bg, align 8, !tbaa !213
  %.pre324 = load i32, ptr %i.n, align 4, !tbaa !156
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit: ; preds = %bb.n, %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit.i
  %i.ce = phi i32 [ %i.aw, %bb.n ], [ %.pre324, %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit.i ]
  %i.cf = mul i32 %i.ce, 6
  %i.cg = zext i32 %i.cf to i64                   ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bc, i64 48 ; 16 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !218
  %i.cj = load ptr, ptr %i.bd, align 8, !tbaa !219
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64               ; 2 uses
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 1
  %i.co = icmp ult i64 %i.cn, %i.cg
  br i1 %i.co, label %_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i, label %_ZNSt6vectorItSaItEE7reserveEm.exit

_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i: ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bc, i64 40 ; 3 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !220
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = sub i64 %i.cr, %i.cl
  %i.ct = shl nuw nsw i64 %i.cg, 1
  %i.cu = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ct) #33 ; 4 uses
  %i.cv = load ptr, ptr %i.bd, align 8, !tbaa !219 ; 4 uses
  %i.cw = load ptr, ptr %i.cp, align 8, !tbaa !220
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.cv to i64               ; 2 uses
  %i.cz = sub i64 %i.cx, %i.cy                    ; 2 uses
  %i.da = icmp sgt i64 %i.cz, 0
  br i1 %i.da, label %bb.p, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i

bb.p:                                             ; preds = %_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.cu, ptr align 2 %i.cv, i64 %i.cz, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i: ; preds = %bb.p, %_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i
  %.not.i8.i52 = icmp eq ptr %i.cv, null
  br i1 %.not.i8.i52, label %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i
  %i.db = load ptr, ptr %i.ch, align 8, !tbaa !218
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = sub i64 %i.dc, %i.cy
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.dd) #30
  br label %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i

_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i: ; preds = %bb.q, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i
  store ptr %i.cu, ptr %i.bd, align 8, !tbaa !219
  %i.de = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cs
  store ptr %i.de, ptr %i.cp, align 8, !tbaa !220
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %i.cg
  store ptr %i.df, ptr %i.ch, align 8, !tbaa !218
  br label %_ZNSt6vectorItSaItEE7reserveEm.exit

_ZNSt6vectorItSaItEE7reserveEm.exit:              ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit, %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 2304
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !221 ; 2 uses
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNSt6vectorItSaItEE7reserveEm.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 2320
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !110
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorItSaItEE7reserveEm.exit, %bb.r
  %i.dl = phi i64 [ %i.dk, %bb.r ], [ %i.dh, %_ZNSt6vectorItSaItEE7reserveEm.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  call void @_ZN9PcgRandomC1Emm(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.dl, i64 noundef -2720673578348880933)
  %i.dm = load i32, ptr %i.n, align 4, !tbaa !156
  %.not = icmp eq i32 %i.dm, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 2292
  %i.do = load float, ptr %i.dn, align 4, !tbaa !373
  %i.dp = fpext nsz float %i.do to double
  %i.dq = fmul nsz double %i.dp, 3.000000e-03
  %i.dr = fptrunc nsz double %i.dq to float       ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dy = fneg nsz float %i.dr                    ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ed = getelementptr inbounds nuw i8, ptr %i.az, i64 40 ; 9 uses
  %i.ee = insertelement <2 x float> poison, float %i.dr, i64 0 ; 3 uses
  %i.ef = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.eg = insertelement <2 x float> poison, float %i.dy, i64 0
  %i.eh = shufflevector <2 x float> %i.eg, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ei = insertelement <2 x float> %i.ee, float %i.dy, i64 1
  %i.ej = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.t

.preheader:                                       ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backEOS1_.exit108
  %i.ek = icmp eq i32 %i.ji, 0
  br i1 %i.ek, label %._crit_edge, label %.lr.ph319

.lr.ph319:                                        ; preds = %.preheader
  %i.el = getelementptr inbounds nuw i8, ptr %i.bc, i64 40 ; 13 uses
  %.pre325 = load ptr, ptr %i.el, align 8, !tbaa !220
  %.pre326 = load ptr, ptr %i.ch, align 8, !tbaa !218
  br label %bb.ak

bb.t:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backEOS1_.exit108
  %.045317 = phi i16 [ 0, %.lr.ph ], [ %i.jg, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backEOS1_.exit108 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.em = call noundef i32 @_ZN9PcgRandom5rangeEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef -10000, i32 noundef 10000)
  %i.en = call noundef i32 @_ZN9PcgRandom5rangeEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef -10000, i32 noundef 10000)
  %i.eo = call noundef i32 @_ZN9PcgRandom5rangeEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef -10000, i32 noundef 10000)
  %i.ep = sitofp nsz i32 %i.eo to float
  %i.eq = insertelement <2 x i32> poison, i32 %i.em, i64 0
  %i.er = insertelement <2 x i32> %i.eq, i32 %i.en, i64 1
  %i.es = sitofp <2 x i32> %i.er to <2 x float>
  store <2 x float> %i.es, ptr %2, align 8, !tbaa !37
  store float %i.ep, ptr %i.ds, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.dt, i8 0, i64 56, i1 false)
  store float 1.000000e+00, ptr %i.du, align 4, !tbaa !37
  store float 1.000000e+00, ptr %i.dv, align 8, !tbaa !37
  store float 1.000000e+00, ptr %i.dw, align 4, !tbaa !37
  store float 1.000000e+00, ptr %3, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %4, align 8, !tbaa !37
  store float 0.000000e+00, ptr %i.dx, align 8, !tbaa !177
  %i.et = call noundef nonnull align 4 dereferenceable(64) ptr @_ZN4core8CMatrix4IfE17buildRotateFromToERKNS_8vector3dIfEES5_(ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %5 = load <4 x float>, ptr %i.eb, align 8
  %6 = load <4 x float>, ptr %i.ec, align 8
  %i.eu = load float, ptr %i.dv, align 8, !tbaa !37 ; 3 uses
  %i.ev = shufflevector <4 x float> %5, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ew = shufflevector <4 x float> %6, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ex = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ei, <2 x float> %i.ev, <2 x float> %i.ew) ; 3 uses
  %i.ey = extractelement <2 x float> %i.ex, i64 1
  %i.ez = call nsz float @llvm.fmuladd.f32(float %i.dy, float %i.eu, float %i.ey) ; 2 uses
  %i.fa = extractelement <2 x float> %i.ex, i64 0
  %i.fb = call nsz float @llvm.fmuladd.f32(float %i.dy, float %i.eu, float %i.fa) ; 2 uses
  %i.fc = load <2 x float>, ptr %3, align 8, !tbaa !37 ; 2 uses
  %i.fd = load <2 x float>, ptr %i.dz, align 8, !tbaa !37 ; 2 uses
  %i.fe = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eh, <2 x float> %i.fc, <2 x float> %i.fd) ; 2 uses
  %i.ff = load <2 x float>, ptr %i.ea, align 8, !tbaa !37 ; 4 uses
  %i.fg = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eh, <2 x float> %i.ff, <2 x float> %i.fe) ; 2 uses
  %i.fh = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> %i.fc, <2 x float> %i.fd) ; 2 uses
  %i.fi = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eh, <2 x float> %i.ff, <2 x float> %i.fh) ; 2 uses
  %i.fj = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> %i.ff, <2 x float> %i.fh) ; 2 uses
  %i.fk = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> %i.ff, <2 x float> %i.fe) ; 2 uses
  %i.fl = insertelement <2 x float> poison, float %i.eu, i64 0
  %i.fm = shufflevector <2 x float> %i.fl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fn = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ej, <2 x float> %i.fm, <2 x float> %i.ex) ; 4 uses
  %i.fo = load ptr, ptr %i.ed, align 8, !tbaa !215 ; 8 uses
  %i.fp = load ptr, ptr %i.bg, align 8, !tbaa !213 ; 2 uses
  %.not.i.i65 = icmp eq ptr %i.fo, %i.fp
  br i1 %.not.i.i65, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store <2 x float> %i.fg, ptr %i.fo, align 4, !tbaa !37
  %.sroa.0256.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store float %i.ez, ptr %.sroa.0256.sroa.5.0..sroa_idx, align 4, !tbaa !37
  %.sroa.5257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fo, i64 12
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(26) %.sroa.5257.0..sroa_idx, i8 0, i64 26, i1 false)
  store ptr %i.fq, ptr %i.ed, align 8, !tbaa !215
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backEOS1_.exit

bb.v:                                             ; preds = %bb.t
  %i.fr = load ptr, ptr %i.ba, align 8, !tbaa !214 ; 5 uses
  %i.fs = ptrtoint ptr %i.fo to i64
  %i.ft = ptrtoint ptr %i.fr to i64               ; 2 uses
  %i.fu = sub i64 %i.fs, %i.ft                    ; 3 uses
  %i.fv = icmp eq i64 %i.fu, 9223372036854775800
  br i1 %i.fv, label %bb.w, label %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.w:                                             ; preds = %bb.v
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #34
  unreachable

_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.v
  %i.fw = sdiv exact i64 %i.fu, 40                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fw, i64 1)
  %i.fx = add nsw i64 %.sroa.speculated.i.i.i.i, %i.fw ; 2 uses
  %i.fy = icmp ult i64 %i.fx, %i.fw
  %i.fz = call i64 @llvm.umin.i64(i64 %i.fx, i64 230584300921369395)
  %i.ga = select i1 %i.fy, i64 230584300921369395, i64 %i.fz ; 3 uses
  %.not.i.i.i.i66 = icmp ne i64 %i.ga, 0
  call void @llvm.assume(i1 %.not.i.i.i.i66)
  %i.gb = mul nuw nsw i64 %i.ga, 40
  %i.gc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gb) #33 ; 5 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.fu ; 3 uses
  store <2 x float> %i.fg, ptr %i.gd, align 4, !tbaa !37
  %.sroa.0256.sroa.5.0..sroa_idx311 = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store float %i.ez, ptr %.sroa.0256.sroa.5.0..sroa_idx311, align 4, !tbaa !37
  %.sroa.5257.0..sroa_idx258 = getelementptr inbounds nuw i8, ptr %i.gd, i64 12
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.fr, %i.fo
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(26) %.sroa.5257.0..sroa_idx258, i8 0, i64 26, i1 false)
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.gf, %.lr.ph.i.i.i.i.i.i ], [ %i.gc, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ge, %.lr.ph.i.i.i.i.i.i ], [ %i.fr, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(40) %.0911.i.i.i.i.i.i, i64 40, i1 false), !tbaa.struct !216, !alias.scope !374
  %i.ge = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ge, %i.fo
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !356

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.gc, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.gf, %.lr.ph.i.i.i.i.i.i ]
  %i.gg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.fr, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.gh = load ptr, ptr %i.bg, align 8, !tbaa !213
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = sub i64 %i.gi, %i.ft
  call void @_ZdlPvm(ptr noundef nonnull %i.fr, i64 noundef %i.gj) #30
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.x, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.gc, ptr %i.ba, align 8, !tbaa !214
  store ptr %i.gg, ptr %i.ed, align 8, !tbaa !215
  %i.gk = getelementptr inbounds nuw [40 x i8], ptr %i.gc, i64 %i.ga ; 2 uses
  store ptr %i.gk, ptr %i.bg, align 8, !tbaa !213
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.u, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.gl = phi ptr [ %i.fp, %bb.u ], [ %i.gk, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ] ; 5 uses
  %i.gm = phi ptr [ %i.fq, %bb.u ], [ %i.gg, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ] ; 5 uses
  %.not.i.i67 = icmp eq ptr %i.gm, %i.gl
  br i1 %.not.i.i67, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backEOS1_.exit
  store <2 x float> %i.fi, ptr %i.gm, align 4, !tbaa !37
  %.sroa.0224.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  store float %i.fb, ptr %.sroa.0224.sroa.5.0..sroa_idx, align 4, !tbaa !37
  %.sroa.5225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gm, i64 12
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(26) %.sroa.5225.0..sroa_idx, i8 0, i64 26, i1 false)
  store ptr %i.gn, ptr %i.ed, align 8, !tbaa !215
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backEOS1_.exit80

bb.z:                                             ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backEOS1_.exit
  %i.go = load ptr, ptr %i.ba, align 8, !tbaa !214 ; 5 uses
  %i.gp = ptrtoint ptr %i.gl to i64
  %i.gq = ptrtoint ptr %i.go to i64               ; 2 uses
  %i.gr = sub i64 %i.gp, %i.gq                    ; 3 uses
  %i.gs = icmp eq i64 %i.gr, 9223372036854775800
  br i1 %i.gs, label %bb.aa, label %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i68

bb.aa:                                            ; preds = %bb.z
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #34
  unreachable

_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i68: ; preds = %bb.z
  %i.gt = sdiv exact i64 %i.gr, 40                ; 3 uses
  %.sroa.speculated.i.i.i.i69 = call i64 @llvm.umax.i64(i64 %i.gt, i64 1)
  %i.gu = add nsw i64 %.sroa.speculated.i.i.i.i69, %i.gt ; 2 uses
  %i.gv = icmp ult i64 %i.gu, %i.gt
  %i.gw = call i64 @llvm.umin.i64(i64 %i.gu, i64 230584300921369395)
  %i.gx = select i1 %i.gv, i64 230584300921369395, i64 %i.gw ; 3 uses
  %.not.i.i.i.i70 = icmp ne i64 %i.gx, 0
  call void @llvm.assume(i1 %.not.i.i.i.i70)
  %i.gy = mul nuw nsw i64 %i.gx, 40
  %i.gz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gy) #33 ; 5 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.gr ; 3 uses
  store <2 x float> %i.fi, ptr %i.ha, align 4, !tbaa !37
  %.sroa.0224.sroa.5.0..sroa_idx303 = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store float %i.fb, ptr %.sroa.0224.sroa.5.0..sroa_idx303, align 4, !tbaa !37
  %.sroa.5225.0..sroa_idx226 = getelementptr inbounds nuw i8, ptr %i.ha, i64 12
  %.not10.i.i.i.i.i.i71 = icmp eq ptr %i.go, %i.gl
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(26) %.sroa.5225.0..sroa_idx226, i8 0, i64 26, i1 false)
  br i1 %.not10.i.i.i.i.i.i71, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i76, label %.lr.ph.i.i.i.i.i.i72

.lr.ph.i.i.i.i.i.i72:                             ; preds = %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i68, %.lr.ph.i.i.i.i.i.i72
  %.012.i.i.i.i.i.i73 = phi ptr [ %i.hc, %.lr.ph.i.i.i.i.i.i72 ], [ %i.gz, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i68 ] ; 2 uses
  %.0911.i.i.i.i.i.i74 = phi ptr [ %i.hb, %.lr.ph.i.i.i.i.i.i72 ], [ %i.go, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i68 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.012.i.i.i.i.i.i73, ptr noundef nonnull align 4 dereferenceable(40) %.0911.i.i.i.i.i.i74, i64 40, i1 false), !tbaa.struct !216, !alias.scope !375
  %i.hb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i74, i64 40 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i73, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i75 = icmp eq ptr %i.hb, %i.gl
  br i1 %.not.i.i.i.i.i.i75, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i76, label %.lr.ph.i.i.i.i.i.i72, !llvm.loop !356

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i76: ; preds = %.lr.ph.i.i.i.i.i.i72, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i68
  %.0.lcssa.i.i.i.i.i.i77 = phi ptr [ %i.gz, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i68 ], [ %i.hc, %.lr.ph.i.i.i.i.i.i72 ]
  %i.hd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i77, i64 40 ; 2 uses
  %.not.i23.i.i.i78 = icmp eq ptr %i.go, null
  br i1 %.not.i23.i.i.i78, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i79, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i76
  %i.he = load ptr, ptr %i.bg, align 8, !tbaa !213
  %i.hf = ptrtoint ptr %i.he to i64
  %i.hg = sub i64 %i.hf, %i.gq
  call void @_ZdlPvm(ptr noundef nonnull %i.go, i64 noundef %i.hg) #30
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i79

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i79: ; preds = %bb.ab, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i76
  store ptr %i.gz, ptr %i.ba, align 8, !tbaa !214
  store ptr %i.hd, ptr %i.ed, align 8, !tbaa !215
  %i.hh = getelementptr inbounds nuw [40 x i8], ptr %i.gz, i64 %i.gx ; 2 uses
  store ptr %i.hh, ptr %i.bg, align 8, !tbaa !213
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backEOS1_.exit80

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backEOS1_.exit80: ; preds = %bb.y, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i79
  %i.hi = phi ptr [ %i.gl, %bb.y ], [ %i.hh, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i79 ] ; 5 uses
  %i.hj = phi ptr [ %i.gn, %bb.y ], [ %i.hd, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i79 ] ; 5 uses
  %.not.i.i81 = icmp eq ptr %i.hj, %i.hi
  br i1 %.not.i.i81, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backEOS1_.exit80
  store <2 x float> %i.fj, ptr %i.hj, align 4, !tbaa !37
  %.sroa.0192.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hk = extractelement <2 x float> %i.fn, i64 0
  store float %i.hk, ptr %.sroa.0192.sroa.5.0..sroa_idx, align 4, !tbaa !37
  %.sroa.5193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hj, i64 12
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(26) %.sroa.5193.0..sroa_idx, i8 0, i64 26, i1 false)
  store ptr %i.hl, ptr %i.ed, align 8, !tbaa !215
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backEOS1_.exit94

bb.ad:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backEOS1_.exit80
  %i.hm = load ptr, ptr %i.ba, align 8, !tbaa !214 ; 5 uses
  %i.hn = ptrtoint ptr %i.hi to i64
  %i.ho = ptrtoint ptr %i.hm to i64               ; 2 uses
  %i.hp = sub i64 %i.hn, %i.ho                    ; 3 uses
  %i.hq = icmp eq i64 %i.hp, 9223372036854775800
  br i1 %i.hq, label %bb.ae, label %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i82

bb.ae:                                            ; preds = %bb.ad
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #34
  unreachable

_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i82: ; preds = %bb.ad
end_hunk_1
