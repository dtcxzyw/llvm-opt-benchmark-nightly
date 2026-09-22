Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/hud?download=true
inline.NumInlined: 2250
inline.NumDeleted: 686
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN3Hud13drawCrosshairEv:bb.a
  %i.dx = insertelement <4 x i32> poison, i32 %i.dw, i64 0
  %i.dy = shufflevector <4 x i32> %i.dx, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.dy, ptr %3, align 16, !tbaa !78
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !70
  invoke void @_Z23draw2DImageFilterScaledPN5video12IVideoDriverEPNS_8ITextureERKN4core4rectIiEES8_PS7_PKNS_6SColorEb(ptr noundef %i.ea, ptr noundef nonnull %i.cw, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef null, ptr noundef nonnull %3, i1 noundef zeroext true)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  %i.eb = load ptr, ptr %12, align 8, !tbaa !77   ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.cq
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.j
  %i.ed = load i64, ptr %i.cq, align 8, !tbaa !23
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ee) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  br label %bb.m

bb.k:                                             ; preds = %bb.i, %._crit_edge.i.i43
  %i.ef = landingpad { ptr, i32 }
          cleanup
  %i.eg = load ptr, ptr %12, align 8, !tbaa !77   ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.cq
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.k
  %i.ei = load i64, ptr %i.cq, align 8, !tbaa !23
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  br label %bb.n

bb.l:                                             ; preds = %bb.h
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.el = load float, ptr %i.ek, align 4, !tbaa !116
  %i.em = fmul nsz float %i.el, 1.000000e+01
  %i.en = fadd nsz float %i.em, 5.000000e-01
  %i.eo = tail call nsz noundef float @llvm.floor.f32(float %i.en)
  %i.ep = fptosi float %i.eo to i32               ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.et = load i32, ptr %i.es, align 8, !tbaa !358 ; 2 uses
  %i.eu = sub nsw i32 %i.et, %i.ep
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !359
  %.sroa.2.0.insert.ext.i62 = zext i32 %i.ew to i64
  %.sroa.2.0.insert.shift.i63 = shl nuw i64 %.sroa.2.0.insert.ext.i62, 32 ; 2 uses
  %.sroa.0.0.insert.ext.i64 = zext i32 %i.eu to i64
  %.sroa.0.0.insert.insert.i65 = or disjoint i64 %.sroa.2.0.insert.shift.i63, %.sroa.0.0.insert.ext.i64
  store i64 %.sroa.0.0.insert.insert.i65, ptr %13, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  %i.ex = add nsw i32 %i.et, %i.ep
  %.sroa.0.0.insert.ext.i68 = zext i32 %i.ex to i64
  %.sroa.0.0.insert.insert.i69 = or disjoint i64 %.sroa.2.0.insert.shift.i63, %.sroa.0.0.insert.ext.i68
  store i64 %.sroa.0.0.insert.insert.i69, ptr %14, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.sroa.01.0.copyload = load i32, ptr %i.ey, align 4, !tbaa !78
  %i.ez = load ptr, ptr %i.er, align 8, !tbaa !69
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 440
  %i.fb = load ptr, ptr %i.fa, align 8
  call void %i.fb(ptr noundef nonnull align 8 dereferenceable(8) %i.er, ptr noundef nonnull align 4 dereferenceable(8) %13, ptr noundef nonnull align 4 dereferenceable(8) %14, i32 %.sroa.01.0.copyload)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  %i.fc = load ptr, ptr %i.eq, align 8, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  %i.fd = load i32, ptr %i.es, align 8, !tbaa !358
  %i.fe = load i32, ptr %i.ev, align 4, !tbaa !359 ; 2 uses
  %i.ff = sub nsw i32 %i.fe, %i.ep
  %.sroa.2.0.insert.ext.i70 = zext i32 %i.ff to i64
  %.sroa.2.0.insert.shift.i71 = shl nuw i64 %.sroa.2.0.insert.ext.i70, 32
  %.sroa.0.0.insert.ext.i72 = zext i32 %i.fd to i64 ; 2 uses
  %.sroa.0.0.insert.insert.i73 = or disjoint i64 %.sroa.2.0.insert.shift.i71, %.sroa.0.0.insert.ext.i72
  store i64 %.sroa.0.0.insert.insert.i73, ptr %15, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #34
  %i.fg = add nsw i32 %i.fe, %i.ep
  %.sroa.2.0.insert.ext.i74 = zext i32 %i.fg to i64
  %.sroa.2.0.insert.shift.i75 = shl nuw i64 %.sroa.2.0.insert.ext.i74, 32
  %.sroa.0.0.insert.insert.i77 = or disjoint i64 %.sroa.2.0.insert.shift.i75, %.sroa.0.0.insert.ext.i72
  store i64 %.sroa.0.0.insert.insert.i77, ptr %16, align 8
  %.sroa.0.0.copyload = load i32, ptr %i.ey, align 4, !tbaa !78
  %i.fh = load ptr, ptr %i.fc, align 8, !tbaa !69
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 440
  %i.fj = load ptr, ptr %i.fi, align 8
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(8) %i.fc, ptr noundef nonnull align 4 dereferenceable(8) %15, ptr noundef nonnull align 4 dereferenceable(8) %16, i32 %.sroa.0.0.copyload)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g
  ret void

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %.pn21.pn = phi { ptr, i32 } [ %.pn21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %i.ef, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ]
  resume { ptr, i32 } %.pn21.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN3Hud15setSelectionPosERKN4core8vector3dIfEERKNS1_IsEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(572) initializes((144, 150), (240, 264)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(6) %2) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.a, ptr noundef nonnull align 2 dereferenceable(6) %2, i64 6, i1 false), !tbaa.struct !364
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !365
  %.sroa.05.0.copyload = load i48, ptr %2, align 2 ; 3 uses
  %.sroa.2.0.extract.shift.i = lshr i48 %.sroa.05.0.copyload, 16
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.05.0.copyload, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i48 %.sroa.3.0.extract.shift.i to i16
  %i.c = sitofp nsz i16 %.sroa.3.0.extract.trunc.i to float
  %i.d = fmul nnan nsz float %i.c, 1.000000e+01
  %i.e = trunc i48 %.sroa.05.0.copyload to i16
  %i.f = insertelement <2 x i16> poison, i16 %i.e, i64 0
  %i.g = trunc i48 %.sroa.2.0.extract.shift.i to i16
  %i.h = insertelement <2 x i16> %i.f, i16 %i.g, i64 1
  %i.i = sitofp <2 x i16> %i.h to <2 x float>
  %i.j = fmul nnan nsz <2 x float> %i.i, splat (float 1.000000e+01)
  %i.k = load <2 x float>, ptr %1, align 4, !tbaa !58
  %i.l = fsub nsz <2 x float> %i.k, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load float, ptr %i.m, align 4, !tbaa !144
  %i.o = fsub nsz float %i.n, %i.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 252
  store <2 x float> %i.l, ptr %i.p, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 260
  store float %i.o, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !58
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3Hud17drawSelectionMeshEv(ptr noundef nonnull align 8 dereferenceable(572) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.core::CMatrix4", align 4    ; 4 uses
  %2 = alloca %"class.core::CMatrix4", align 16   ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !84
  switch i32 %i.b, label %bb.c [
    i32 2, label %bb.h
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !121
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !69
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(127) %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !70   ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !69
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef nonnull align 4 dereferenceable(64) ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i32 noundef 1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %i.o, i64 64, i1 false), !tbaa.struct !363
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.r = load float, ptr %i.q, align 4, !tbaa !144 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.t = load float, ptr %i.s, align 8, !tbaa !142
  %i.u = fpext nsz float %i.t to double
  %sincos.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.u) ; 2 uses
  %sin.i = extractvalue { double, double } %sincos.i, 0 ; 3 uses
  %cos.i = extractvalue { double, double } %sincos.i, 1 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !70   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ab = load <2 x float>, ptr %i.p, align 4, !tbaa !58 ; 2 uses
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ad = insertelement <4 x float> %i.ac, float %i.r, i64 2 ; 3 uses
  %i.ae = load float, ptr %i.w, align 8, !tbaa !144
  %i.af = load float, ptr %i.v, align 4, !tbaa !143
  %i.ag = fpext nsz float %i.ae to double
  %i.ah = fpext nsz float %i.af to double
  %sincos39.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.ag) ; 2 uses
  %sincos36.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.ah) ; 2 uses
  %sin37.i = extractvalue { double, double } %sincos36.i, 0 ; 3 uses
  %cos38.i = extractvalue { double, double } %sincos36.i, 1 ; 4 uses
  %sin40.i = extractvalue { double, double } %sincos39.i, 0 ; 4 uses
  %cos41.i = extractvalue { double, double } %sincos39.i, 1 ; 4 uses
  %i.ai = fmul nsz double %cos38.i, %cos41.i
  %i.aj = fptrunc nsz double %i.ai to float       ; 2 uses
  %i.ak = fmul nsz double %cos38.i, %sin40.i
  %i.al = fptrunc nsz double %i.ak to float       ; 2 uses
  %i.am = fptrunc nsz double %sin37.i to float    ; 2 uses
  %i.an = fneg nsz float %i.am                    ; 2 uses
  %i.ao = fmul nsz double %sin.i, %sin37.i
  %i.ap = fmul nsz double %cos.i, %sin37.i
  %i.aq = fneg nsz double %sin40.i
  %i.ar = fmul nsz double %sin.i, %cos38.i
  %i.as = fptrunc nsz double %i.ar to float       ; 3 uses
  %i.at = fneg nsz double %cos41.i
  %i.au = fmul nsz double %cos.i, %cos38.i
  %i.av = fptrunc nsz double %i.au to float       ; 3 uses
  %i.aw = insertelement <2 x double> poison, double %cos.i, i64 0
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ay = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.az = insertelement <2 x double> %i.ay, double %cos41.i, i64 1
  %i.ba = fmul nsz <2 x double> %i.ax, %i.az
  %i.bb = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.bc = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bd = insertelement <2 x double> poison, double %cos41.i, i64 0
  %i.be = insertelement <2 x double> %i.bd, double %sin40.i, i64 1 ; 2 uses
  %i.bf = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> %i.be, <2 x double> %i.ba)
  %i.bg = fptrunc <2 x double> %i.bf to <2 x float> ; 3 uses
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bi = fmul nsz <2 x float> %i.bh, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.bj = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bj, <2 x float> zeroinitializer, <2 x float> %i.bi) ; 3 uses
  %i.bl = insertelement <2 x float> poison, float %i.as, i64 0
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bn = insertelement <2 x double> poison, double %sin.i, i64 0
  %i.bo = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bp = insertelement <2 x double> poison, double %sin40.i, i64 0
  %i.bq = insertelement <2 x double> %i.bp, double %i.at, i64 1
  %i.br = fmul nsz <2 x double> %i.bo, %i.bq
  %i.bs = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.bt = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bu = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bt, <2 x double> %i.be, <2 x double> %i.br)
  %i.bv = fptrunc <2 x double> %i.bu to <2 x float> ; 3 uses
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bx = fmul nsz <2 x float> %i.bw, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.by = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.by, <2 x float> zeroinitializer, <2 x float> %i.bx) ; 3 uses
  %i.ca = insertelement <2 x float> poison, float %i.av, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cc = shufflevector <2 x float> %i.bi, <2 x float> %i.bk, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.cd = shufflevector <2 x float> %i.bx, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ce = shufflevector <4 x float> %i.cc, <4 x float> %i.cd, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.cf = shufflevector <2 x float> %i.bz, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cg = shufflevector <4 x float> %i.ce, <4 x float> %i.cf, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ch = shufflevector <2 x float> %i.bg, <2 x float> %i.bv, <4 x i32> <i32 0, i32 poison, i32 2, i32 poison>
  %i.ci = insertelement <4 x float> %i.ch, float %i.as, i64 1
  %i.cj = insertelement <4 x float> %i.ci, float %i.av, i64 3
  %i.ck = fadd nsz <4 x float> %i.cg, %i.cj       ; 4 uses
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> %i.bk, <2 x i32> <i32 0, i32 2>
  %i.cn = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> zeroinitializer, <2 x float> %i.cm)
  %i.co = shufflevector <4 x float> %i.ck, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> %i.bz, <2 x i32> <i32 0, i32 2>
  %i.cq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> zeroinitializer, <2 x float> %i.cp)
  %.scalar = fmul nsz float %i.al, 0.000000e+00
  %i.cr = insertelement <4 x float> <float poison, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, float %.scalar, i64 0 ; 2 uses
  %i.cs = tail call nsz float @llvm.fmuladd.f32(float %i.aj, float 0.000000e+00, float %i.al)
  %i.ct = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %i.cu = insertelement <4 x float> %i.ct, float %i.aj, i64 0 ; 2 uses
  %i.cv = insertelement <4 x float> %i.cu, float %i.cs, i64 1
  %i.cw = fadd nsz <4 x float> %i.cr, %i.cv
  %i.cx = shufflevector <4 x float> %i.cu, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cy = insertelement <2 x float> %i.cx, float %i.an, i64 0
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.da = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cz, <4 x float> zeroinitializer, <4 x float> %i.cw)
  %i.db = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, float %i.am, i64 2
  %i.dc = fsub nsz <4 x float> %i.da, %i.db
  %i.dd = insertelement <4 x float> %i.ad, float %i.an, i64 3
  %i.de = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dd, <4 x float> zeroinitializer, <4 x float> %i.dc)
  store <4 x float> %i.de, ptr %2, align 16, !tbaa !58, !alias.scope !543
  %i.df = insertelement <4 x float> %i.ad, float %i.as, i64 3
  %i.dg = shufflevector <2 x float> %i.cn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dh = shufflevector <4 x float> %i.dg, <4 x float> %i.ck, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.di = shufflevector <2 x float> %i.bk, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dj = shufflevector <4 x float> %i.dh, <4 x float> %i.di, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.dk = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.df, <4 x float> zeroinitializer, <4 x float> %i.dj)
  store <4 x float> %i.dk, ptr %i.y, align 16, !tbaa !58, !alias.scope !543
  %i.dl = insertelement <4 x float> %i.ad, float %i.av, i64 3
  %i.dm = shufflevector <2 x float> %i.cq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dn = shufflevector <4 x float> %i.dm, <4 x float> %i.ck, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.do = shufflevector <2 x float> %i.bz, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dp = shufflevector <4 x float> %i.dn, <4 x float> %i.do, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.dq = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> zeroinitializer, <4 x float> %i.dp)
  store <4 x float> %i.dq, ptr %i.z, align 16, !tbaa !58, !alias.scope !543
  store <2 x float> %i.ab, ptr %i.aa, align 16, !tbaa !58, !alias.scope !543
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 56
  store float %i.r, ptr %i.dr, align 8, !tbaa !58, !alias.scope !543
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 60
  store float 1.000000e+00, ptr %i.ds, align 4, !tbaa !58, !alias.scope !543
  %i.dt = load ptr, ptr %i.x, align 8, !tbaa !69
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(8) %i.x, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(64) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %i.dw = load i32, ptr %i.a, align 8, !tbaa !84
  switch i32 %i.dw, label %.loopexit [
    i32 0, label %bb.d
    i32 1, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !366 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !366 ; 2 uses
  %.not3740 = icmp eq ptr %i.dy, %i.ea
  br i1 %.not3740, label %.loopexit, label %.lr.ph42

.lr.ph42:                                         ; preds = %bb.d
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 288
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph42, %bb.e
  %.sroa.021.041 = phi ptr [ %i.dy, %.lr.ph42 ], [ %i.ff, %bb.e ] ; 2 uses
  %i.ed = load i32, ptr %i.eb, align 8, !tbaa !330 ; 3 uses
  %i.ee = lshr i32 %i.ed, 16
  %i.ef = and i32 %i.ee, 255
  %i.eg = load i32, ptr %i.ec, align 8, !tbaa !330 ; 3 uses
  %i.eh = lshr i32 %i.eg, 16
  %i.ei = and i32 %i.eh, 255
  %i.ej = mul nuw nsw i32 %i.ei, %i.ef
  %.lhs.trunc = trunc nuw i32 %i.ej to i16
  %i.ek = udiv i16 %.lhs.trunc, 255
  %.zext = zext nneg i16 %i.ek to i32
  %i.el = lshr i32 %i.ed, 8
  %i.em = and i32 %i.el, 255
  %i.en = lshr i32 %i.eg, 8
  %i.eo = and i32 %i.en, 255
  %i.ep = mul nuw nsw i32 %i.eo, %i.em
  %.lhs.trunc30 = trunc nuw i32 %i.ep to i16
  %i.eq = udiv i16 %.lhs.trunc30, 255
  %.zext31 = zext nneg i16 %i.eq to i32
  %i.er = and i32 %i.ed, 255
  %i.es = and i32 %i.eg, 255
  %i.et = mul nuw nsw i32 %i.es, %i.er
  %.lhs.trunc32 = trunc nuw i32 %i.et to i16
  %i.eu = udiv i16 %.lhs.trunc32, 255
  %.zext33 = zext nneg i16 %i.eu to i32
  %i.ev = load ptr, ptr %i.e, align 8, !tbaa !70  ; 2 uses
  %i.ew = shl nuw nsw i32 %.zext, 16
  %i.ex = shl nuw nsw i32 %.zext31, 8
  %i.ey = and i32 %i.ex, 65280
  %i.ez = or disjoint i32 %i.ey, %i.ew
  %i.fa = add nuw nsw i32 %i.ez, %.zext33
  %i.fb = or i32 %i.fa, -16777216
  %i.fc = load ptr, ptr %i.ev, align 8, !tbaa !69
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 384
  %i.fe = load ptr, ptr %i.fd, align 8
  call void %i.fe(ptr noundef nonnull align 8 dereferenceable(8) %i.ev, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.021.041, i32 %i.fb)
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.021.041, i64 24 ; 2 uses
  %.not37 = icmp eq ptr %i.ff, %i.ea
  br i1 %.not37, label %.loopexit, label %bb.e

bb.f:                                             ; preds = %bb.c
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 4 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !121 ; 2 uses
  %.not18 = icmp eq ptr %i.fh, null
  br i1 %.not18, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %.sroa.07.0.copyload = load i32, ptr %i.fi, align 8, !tbaa !78
  call void @_Z12setMeshColorPN5scene5IMeshEN5video6SColorE(ptr noundef nonnull %i.fh, i32 %.sroa.07.0.copyload)
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !330 ; 3 uses
  %i.fk = and i32 %i.fj, 255
  %i.fl = uitofp nsz nneg i32 %i.fk to double
  %i.fm = fmul nnan nsz double %i.fl, 1.500000e+00 ; 2 uses
  %.inv36 = fcmp nsz oge double %i.fm, 2.550000e+02
  %i.fn = select i1 %.inv36, double 2.550000e+02, double %i.fm
  %i.fo = fptoui double %i.fn to i32
  %i.fp = lshr i32 %i.fj, 16
  %i.fq = lshr i32 %i.fj, 8
  %i.fr = and i32 %i.fp, 255
  %i.fs = and i32 %i.fq, 255
  %i.ft = uitofp nsz nneg i32 %i.fr to double
  %i.fu = uitofp nsz nneg i32 %i.fs to double
  %i.fv = insertelement <2 x double> poison, double %i.fu, i64 0
  %i.fw = insertelement <2 x double> %i.fv, double %i.ft, i64 1
  %i.fx = fmul nnan nsz <2 x double> %i.fw, splat (double 1.500000e+00) ; 2 uses
  %i.fy = fcmp nsz oge <2 x double> %i.fx, splat (double 2.550000e+02)
  %i.fz = select <2 x i1> %i.fy, <2 x double> splat (double 2.550000e+02), <2 x double> %i.fx
  %i.ga = fptoui <2 x double> %i.fz to <2 x i32>
  %i.gb = shl <2 x i32> %i.ga, <i32 8, i32 16>
  %i.gc = and <2 x i32> %i.gb, <i32 65280, i32 16711680> ; 2 uses
  %i.gd = and i32 %i.fo, 255
  %i.ge = extractelement <2 x i32> %i.gc, i64 0
  %i.gf = or disjoint i32 %i.ge, %i.gd
  %i.gg = extractelement <2 x i32> %i.gc, i64 1
  %i.gh = or disjoint i32 %i.gf, %i.gg
  %i.gi = load ptr, ptr %i.fg, align 8, !tbaa !121
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 292
  %.sroa.05.0.copyload = load <2 x float>, ptr %i.gj, align 4
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 300
  %.sroa.26.0.copyload = load float, ptr %.sroa.26.0..sroa_idx, align 4, !tbaa !58
  call void @_Z20setMeshColorByNormalPN5scene5IMeshEN4core8vector3dIfEEN5video6SColorE(ptr noundef %i.gi, <2 x float> %.sroa.05.0.copyload, float %.sroa.26.0.copyload, i32 %i.gh)
  %i.gk = load ptr, ptr %i.fg, align 8, !tbaa !121 ; 2 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !69
  %i.gm = load ptr, ptr %i.gl, align 8
  %i.gn = call noundef i32 %i.gm(ptr noundef nonnull align 8 dereferenceable(8) %i.gk) ; 2 uses
  %.not43 = icmp eq i32 %i.gn, 0
  br i1 %.not43, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %.039 = phi i32 [ %i.gx, %.lr.ph ], [ 0, %bb.g ] ; 2 uses
  %i.go = load ptr, ptr %i.fg, align 8, !tbaa !121 ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !69
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8
  %i.gs = call noundef ptr %i.gr(ptr noundef nonnull align 8 dereferenceable(8) %i.go, i32 noundef %.039)
  %i.gt = load ptr, ptr %i.e, align 8, !tbaa !70  ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !69
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 448
  %i.gw = load ptr, ptr %i.gv, align 8
  call void %i.gw(ptr noundef nonnull align 8 dereferenceable(8) %i.gt, ptr noundef %i.gs)
  %i.gx = add nuw i32 %.039, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.gx, %i.gn
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !542

.loopexit:                                        ; preds = %.lr.ph, %bb.e, %bb.g, %bb.d, %bb.c, %bb.f
  %i.gy = load ptr, ptr %i.e, align 8, !tbaa !70  ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !69
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 32
  %i.hb = load ptr, ptr %i.ha, align 8
  call void %i.hb(ptr noundef nonnull align 8 dereferenceable(8) %i.gy, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(64) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.b, %.loopexit
  ret void
}

end_hunk_0
