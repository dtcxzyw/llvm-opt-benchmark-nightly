Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/clientmap?download=true
inline.NumInlined: 4211
inline.NumDeleted: 1666
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN9ClientMap22invalidateMapBlockMeshEP12MapBlockMesh:bb.a
  resume { ptr, i32 } %.pn25.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9ClientMap23getBackgroundBrightnessEfjiPb(ptr noundef nonnull align 8 dereferenceable(656) %0, float noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %class.ScopeProfiler, align 8       ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.core::vector3d", align 4    ; 6 uses
  %8 = alloca %"class.core::CMatrix4", align 16   ; 16 uses
  %9 = alloca %"class.core::vector3d", align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #2
  %i.b = load ptr, ptr @g_profiler, align 8, !tbaa !493
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #2
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.c, ptr %6, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #2
  store i64 27, ptr %i.a, align 8, !tbaa !178
  %i.d = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.b     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.d, ptr %6, align 8, !tbaa !64
  %i.e = load i64, ptr %i.a, align 8, !tbaa !178  ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.d, ptr noundef nonnull align 1 dereferenceable(27) @.str.33, i64 27, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !176
  %i.g = load ptr, ptr %6, align 8, !tbaa !64
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.e
  store i8 0, ptr %i.h, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #2
  invoke void @_ZN13ScopeProfilerC1EP8ProfilerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17ScopeProfilerType13TimePrecision(ptr noundef nonnull align 8 dereferenceable(50) %5, ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(32) %6, i8 noundef zeroext 2, i8 noundef signext 1)
          to label %bb.a unwind label %bb.c

bb.a:                                             ; preds = %.noexc
  %i.i = load ptr, ptr %6, align 8, !tbaa !64     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.c
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.c, align 8, !tbaa !65
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #2
  %i.m = load float, ptr @_ZZN9ClientMap23getBackgroundBrightnessEfjiPbE12z_directions, align 16, !tbaa !481
  %i.n = fcmp nsz olt float %i.m, -9.900000e+01
  br i1 %i.n, label %.preheader, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

bb.b:                                             ; preds = %.noexc.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

bb.c:                                             ; preds = %.noexc
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %6, align 8, !tbaa !64     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !tbaa !65
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103, %bb.b
  %.pn = phi { ptr, i32 } [ %i.o, %bb.b ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103 ], [ %i.p, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #2
  br label %bb.aj

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %i.u = invoke noundef i32 @_Z12myrand_rangeii(i32 noundef -100, i32 noundef 100)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %.preheader
  %i.v = invoke noundef i32 @_Z12myrand_rangeii(i32 noundef -100, i32 noundef 100)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.w = insertelement <2 x i32> poison, i32 %i.u, i64 0
  %i.x = insertelement <2 x i32> %i.w, i32 %i.v, i64 1
  %i.y = sitofp <2 x i32> %i.x to <2 x double>
  %i.z = fmul nnan nsz <2 x double> %i.y, <double 2.000000e-02, double 1.000000e-02>
  %i.aa = fptrunc <2 x double> %i.z to <2 x float> ; 3 uses
  %i.ab = extractelement <2 x float> %i.aa, i64 0 ; 2 uses
  %i.ac = call nsz float @llvm.fmuladd.f32(float %i.ab, float %i.ab, float 1.000000e+00)
  %i.ad = extractelement <2 x float> %i.aa, i64 1 ; 2 uses
  %i.ae = call nsz float @llvm.fmuladd.f32(float %i.ad, float %i.ad, float %i.ac)
  %i.af = fpext nsz float %i.ae to double
  %i.ag = call nsz double @llvm.sqrt.f64(double %i.af)
  %i.ah = fdiv nsz double 1.000000e+00, %i.ag     ; 3 uses
  %i.ai = fpext <2 x float> %i.aa to <2 x double> ; 2 uses
  %i.aj = extractelement <2 x double> %i.ai, i64 0
  %i.ak = fmul nsz double %i.ah, %i.aj
  %i.al = extractelement <2 x double> %i.ai, i64 1
  %i.am = fmul nsz double %i.ah, %i.al
  %i.an = fptrunc nsz double %i.am to float
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr @_ZZN9ClientMap23getBackgroundBrightnessEfjiPbE12z_directions, i64 %indvars.iv ; 2 uses
  %i.ap = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.aq = insertelement <2 x double> %i.ap, double %i.ah, i64 1
  %i.ar = fptrunc <2 x double> %i.aq to <2 x float>
  store <2 x float> %i.ar, ptr %i.ao, align 4, !tbaa !82
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store float %i.an, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !82
  %i.as = invoke noundef i32 @_Z12myrand_rangeii(i32 noundef 0, i32 noundef 100)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.at = sitofp nsz i32 %i.as to double
  %i.au = fmul nnan nsz double %i.at, 1.000000e-02
  %i.av = fptrunc nsz double %i.au to float
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr @_ZZN9ClientMap23getBackgroundBrightnessEfjiPbE9z_offsets, i64 %indvars.iv
  store float %i.av, ptr %i.aw, align 4, !tbaa !82
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 50
  br i1 %exitcond.not, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, label %.preheader, !llvm.loop !893

bb.g:                                             ; preds = %bb.d, %.preheader
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit118

bb.h:                                             ; preds = %bb.e
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit118

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.az = fpext nsz float %1 to double            ; 2 uses
  %i.ba = fmul nsz double %i.az, 8.000000e-01
  %i.bb = fptrunc nsz double %i.ba to float       ; 2 uses
  %i.bc = fcmp nsz ogt float %i.bb, 3.500000e+02
  %spec.store.select = select i1 %i.bc, float 3.500000e+02, float %i.bb
  %i.bd = invoke noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #38
          to label %_ZNSt6vectorIiSaIiEE7reserveEm.exit unwind label %.thread156 ; 3 uses

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 200
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 60
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.bs = fcmp nsz ogt float %1, 3.500000e+02
  %i.bt = fdiv nnan nsz float %1, 3.500000e+01
  %i.bu = fmul nnan nsz float %i.bt, 1.500000e+00
  %.085 = select nsz i1 %i.bs, float %i.bu, float 1.500000e+01 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  %i.bx = sub i32 1000, %2                        ; 2 uses
  %i.by = insertelement <2 x float> poison, float %.085, i64 0
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.i

.thread156:                                       ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit118

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit, %bb.x
  %indvars.iv220 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %indvars.iv.next221, %bb.x ] ; 3 uses
  %.074200 = phi i32 [ 0, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %spec.select146.ph, %bb.x ] ; 2 uses
  %.sroa.24.0198 = phi ptr [ %i.be, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %.sroa.24.1.ph, %bb.x ] ; 5 uses
  %.sroa.15.0197 = phi ptr [ %i.bd, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %.sroa.15.1.ph, %bb.x ] ; 4 uses
  %.sroa.0122.0196 = phi ptr [ %i.bd, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %.sroa.0122.1.ph, %bb.x ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #2
  %i.cb = getelementptr inbounds nuw [12 x i8], ptr @_ZZN9ClientMap23getBackgroundBrightnessEfjiPbE12z_directions, i64 %indvars.iv220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) %i.cb, i64 12, i1 false), !tbaa.struct !501
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.bf, i8 0, i64 56, i1 false)
  store float 1.000000e+00, ptr %i.bg, align 4, !tbaa !82
  store float 1.000000e+00, ptr %i.bh, align 8, !tbaa !82
  store float 1.000000e+00, ptr %i.bi, align 4, !tbaa !82
  store float 1.000000e+00, ptr %8, align 16, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #2
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %9, align 8, !tbaa !82
  store float 0.000000e+00, ptr %i.bj, align 8, !tbaa !483
  %i.cc = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN4core8CMatrix4IfE17buildRotateFromToERKNS_8vector3dIfEES5_(ptr noundef nonnull align 4 dereferenceable(64) %8, ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %7)
          to label %bb.j unwind label %bb.q       ; 0 uses

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #2
  %i.cd = load <4 x float>, ptr %8, align 16
  %i.ce = shufflevector <4 x float> %i.cd, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %10 = load <4 x float>, ptr %i.bm, align 16
  %11 = shufflevector <4 x float> %10, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.cf = load <4 x float>, ptr %i.bo, align 16
  %i.cg = shufflevector <4 x float> %i.cf, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ch = load float, ptr %i.bf, align 4, !tbaa !82
  %i.ci = load float, ptr %i.bi, align 4, !tbaa !82
  %i.cj = load float, ptr %i.bp, align 4, !tbaa !82
  %i.ck = load float, ptr %i.bq, align 8, !tbaa !82
  %i.cl = load float, ptr %i.br, align 8, !tbaa !82
  %i.cm = load float, ptr %i.bh, align 8, !tbaa !82
  %i.cn = load float, ptr %i.bl, align 8, !tbaa !482 ; 2 uses
  %i.co = load float, ptr %i.bk, align 4, !tbaa !481 ; 2 uses
  %i.cp = load float, ptr %i.bn, align 4, !tbaa !483 ; 2 uses
  %i.cq = fmul nsz float %i.cn, %i.ci
  %i.cr = call nsz float @llvm.fmuladd.f32(float %i.co, float %i.ch, float %i.cq)
  %i.cs = call nsz float @llvm.fmuladd.f32(float %i.cp, float %i.cj, float %i.cr) ; 4 uses
  %12 = insertelement <2 x float> poison, float %i.cn, i64 0
  %13 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = insertelement <2 x float> %11, float %i.cl, i64 1
  %14 = fmul nsz <2 x float> %13, %i.ct
  %i.cu = insertelement <2 x float> poison, float %i.co, i64 0
  %15 = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cv = insertelement <2 x float> %i.ce, float %i.ck, i64 1
  %i.cw = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %15, <2 x float> %i.cv, <2 x float> %14)
  %i.cx = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cz = insertelement <2 x float> %i.cg, float %i.cm, i64 1
  %i.da = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> %i.cz, <2 x float> %i.cw) ; 4 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr @_ZZN9ClientMap23getBackgroundBrightnessEfjiPbE9z_offsets, i64 %indvars.iv220
  %i.dc = load float, ptr %i.db, align 4, !tbaa !82
  %i.dd = fmul nsz float %.085, %i.dc
  %i.de = fpext nsz float %i.dd to double
  %i.df = call nsz double @llvm.fmuladd.f64(double %i.az, double 6.000000e-01, double %i.de)
  %i.dg = fptrunc nsz double %i.df to float       ; 3 uses
  %i.dh = load ptr, ptr %i.bw, align 8, !tbaa !566
  %i.di = fmul nsz float %i.cs, %i.cs
  %i.dj = extractelement <2 x float> %i.da, i64 0 ; 2 uses
  %i.dk = call nsz float @llvm.fmuladd.f32(float %i.dj, float %i.dj, float %i.di)
  %i.dl = extractelement <2 x float> %i.da, i64 1 ; 2 uses
  %i.dm = call nsz float @llvm.fmuladd.f32(float %i.dl, float %i.dl, float %i.dk) ; 2 uses
  %i.dn = fcmp nsz oeq float %i.dm, 0.000000e+00
  br i1 %i.dn, label %_ZN4core8vector3dIfE9normalizeEv.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.do = fpext nsz float %i.dm to double
  %i.dp = call nsz double @llvm.sqrt.f64(double %i.do)
  %i.dq = fdiv nsz double 1.000000e+00, %i.dp     ; 2 uses
  %i.dr = fpext <2 x float> %i.da to <2 x double>
  %i.ds = fpext nsz float %i.cs to double
  %i.dt = fmul nsz double %i.dq, %i.ds
  %i.du = fptrunc nsz double %i.dt to float
  %i.dv = insertelement <2 x double> poison, double %i.dq, i64 0
  %i.dw = shufflevector <2 x double> %i.dv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dx = fmul nsz <2 x double> %i.dw, %i.dr
  %i.dy = fptrunc <2 x double> %i.dx to <2 x float>
  br label %_ZN4core8vector3dIfE9normalizeEv.exit.i

_ZN4core8vector3dIfE9normalizeEv.exit.i:          ; preds = %bb.k, %bb.j
  %.sroa.0183.4.vec.extract193.pre-phi.i = phi float [ %i.cs, %bb.j ], [ %i.du, %bb.k ] ; 3 uses
  %i.dz = phi <2 x float> [ %i.da, %bb.j ], [ %i.dy, %bb.k ] ; 4 uses
  %.sroa.0169.0.copyload.i = load <2 x float>, ptr %i.bv, align 8 ; 2 uses
  %.sroa.14.0.copyload.i = load float, ptr %.sroa.14.0..sroa_idx.i, align 8, !tbaa !82
  %i.ea = fmul nsz float %.sroa.0183.4.vec.extract193.pre-phi.i, %i.dg
  %.sroa.0169.4.vec.extract.i = extractelement <2 x float> %.sroa.0169.0.copyload.i, i64 1 ; 3 uses
  %i.eb = fadd nsz float %i.ea, %.sroa.0169.4.vec.extract.i ; 3 uses
  %i.ec = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.ed = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ee = fmul nsz <2 x float> %i.dz, %i.ed
  %i.ef = insertelement <2 x float> %.sroa.0169.0.copyload.i, float %.sroa.14.0.copyload.i, i64 1 ; 3 uses
  %i.eg = fadd nsz <2 x float> %i.ee, %i.ef       ; 4 uses
  %.sroa.0169.4.vec.insert.i = insertelement <2 x float> %i.eg, float %i.eb, i64 1
  %i.eh = fcmp nsz ogt float %.sroa.0169.4.vec.extract.i, 0.000000e+00
  %i.ei = select nsz i1 %i.eh, float 5.000000e+00, float -5.000000e+00
  %i.ej = fadd nsz float %.sroa.0169.4.vec.extract.i, %i.ei
  %i.ek = fdiv nsz float %i.ej, 1.000000e+01
  %i.el = fptosi float %i.ek to i16
  %i.em = fcmp nsz ogt <2 x float> %i.ef, zeroinitializer
  %i.en = select <2 x i1> %i.em, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.eo = fadd nsz <2 x float> %i.ef, %i.en
  %i.ep = fdiv nsz <2 x float> %i.eo, splat (float 1.000000e+01)
  %.sroa.2.0.insert.ext.i.i = zext i16 %i.el to i48
  %.sroa.2.0.insert.shift.i.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i.i, 16
  %i.eq = fptosi <2 x float> %i.ep to <2 x i16>   ; 2 uses
  %i.er = extractelement <2 x i16> %i.eq, i64 1
  %i.es = zext i16 %i.er to i48
  %.sroa.3.0.insert.shift.i.i = shl nuw i48 %i.es, 32
  %.sroa.2.0.insert.insert.i.i = or disjoint i48 %.sroa.3.0.insert.shift.i.i, %.sroa.2.0.insert.shift.i.i
  %i.et = extractelement <2 x i16> %i.eq, i64 0
  %i.eu = zext i16 %i.et to i48
  %.sroa.0.0.insert.insert.i.i = or disjoint i48 %.sroa.2.0.insert.insert.i.i, %i.eu
  %i.ev = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0.0.insert.insert.i.i, ptr noundef null)
          to label %.noexc107 unwind label %.loopexit.split-lp.loopexit

.noexc107:                                        ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dh, i64 336 ; 2 uses
  %i.ex = and i32 %i.ev, 65535
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ey
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.ez, align 1, !tbaa !65
  %i.fa = and i8 %.sroa.0.0.copyload.i.i.i, 80
  %.0107.i = icmp eq i8 %i.fa, 16
  %i.fb = fcmp nsz ogt <2 x float> %i.eg, zeroinitializer
  %i.fc = fcmp nsz ogt float %i.eb, 0.000000e+00
  %i.fd = select nsz i1 %i.fc, float 5.000000e+00, float -5.000000e+00
  %i.fe = fadd nsz float %i.eb, %i.fd
  %i.ff = fdiv nsz float %i.fe, 1.000000e+01
  %i.fg = fptosi float %i.ff to i16
  %i.fh = select <2 x i1> %i.fb, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.fi = fadd nsz <2 x float> %i.eg, %i.fh
  %i.fj = fdiv nsz <2 x float> %i.fi, splat (float 1.000000e+01)
  %.sroa.2.0.insert.ext.i125.i = zext i16 %i.fg to i48
  %.sroa.2.0.insert.shift.i126.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i125.i, 16
  %i.fk = fptosi <2 x float> %i.fj to <2 x i16>   ; 2 uses
  %i.fl = extractelement <2 x i16> %i.fk, i64 1
  %i.fm = zext i16 %i.fl to i48
  %.sroa.3.0.insert.shift.i124.i = shl nuw i48 %i.fm, 32
  %.sroa.2.0.insert.insert.i127.i = or disjoint i48 %.sroa.3.0.insert.shift.i124.i, %.sroa.2.0.insert.shift.i126.i
  %i.fn = extractelement <2 x i16> %i.fk, i64 0
  %i.fo = zext i16 %i.fn to i48
  %.sroa.0.0.insert.insert.i129.i = or disjoint i48 %.sroa.2.0.insert.insert.i127.i, %i.fo
  %i.fp = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0.0.insert.insert.i129.i, ptr noundef null)
          to label %.noexc108 unwind label %.loopexit.split-lp.loopexit

.noexc108:                                        ; preds = %.noexc107
  %i.fq = and i32 %i.fp, 65535
  %i.fr = icmp eq i32 %i.fq, 127
  %i.fs = extractelement <2 x float> %i.eg, i64 1
  br i1 %i.fr, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.noexc108
  %i.ft = extractelement <2 x float> %i.dz, i64 1
  %i.fu = fmul nsz float %i.ft, 2.000000e+00
  %i.fv = fmul nsz float %i.fu, 2.000000e+01
  %i.fw = insertelement <2 x float> %i.dz, float %.sroa.0183.4.vec.extract193.pre-phi.i, i64 1
  %i.fx = fmul nsz <2 x float> %i.fw, splat (float 2.000000e+00)
  %i.fy = fmul nsz <2 x float> %i.fx, splat (float 2.000000e+01)
  %i.fz = load <2 x float>, ptr %i.bv, align 8, !tbaa !82
  %i.ga = fadd nsz <2 x float> %i.fy, %i.fz
  %i.gb = load float, ptr %.sroa.14.0..sroa_idx.i, align 8, !tbaa !483
  %i.gc = fadd nsz float %i.fv, %i.gb
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.noexc108
  %.sroa.0169.0.i = phi nsz <2 x float> [ %i.ga, %bb.l ], [ %.sroa.0169.4.vec.insert.i, %.noexc108 ]
  %.sroa.14.0.i = phi nsz float [ %i.gc, %bb.l ], [ %i.fs, %.noexc108 ]
  %.0101.i = phi nsz float [ 2.000000e+01, %bb.l ], [ %i.dg, %.noexc108 ] ; 2 uses
  %.096.i = phi nsz float [ 0.000000e+00, %bb.l ], [ %spec.store.select, %.noexc108 ]
  %i.gd = fcmp nsz olt float %.0101.i, %1
  br i1 %i.gd, label %.lr.ph.i, label %_ZL20getVisibleBrightnessP3MapRKN4core8vector3dIfEES3_ffffPK14NodeDefManagerjfPiPb.exit.thread

.lr.ph.i:                                         ; preds = %bb.m
  %i.ge = fmul nsz float %.085, %.sroa.0183.4.vec.extract193.pre-phi.i
  %i.gf = fmul nsz <2 x float> %i.bz, %i.dz
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.lr.ph.i
  %.0 = phi i8 [ 0, %.lr.ph.i ], [ %.1, %bb.p ]   ; 4 uses
  %.097224.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.ph.i, %bb.p ] ; 3 uses
  %.098223.i = phi i32 [ 0, %.lr.ph.i ], [ %.199.ph.i, %bb.p ] ; 3 uses
  %.1102222.i = phi float [ %.0101.i, %.lr.ph.i ], [ %i.gh, %bb.p ]
  %.0103221.i = phi i32 [ 0, %.lr.ph.i ], [ %.1104.ph.i, %bb.p ] ; 2 uses
  %.0105220.i = phi i1 [ false, %.lr.ph.i ], [ %.1106.ph.i, %bb.p ] ; 2 uses
  %.0108219.i = phi i1 [ false, %.lr.ph.i ], [ %.1109.i, %bb.p ]
  %.0111218.i = phi i32 [ 0, %.lr.ph.i ], [ %i.id, %bb.p ] ; 2 uses
  %.sroa.14.1217.i = phi float [ %.sroa.14.0.i, %.lr.ph.i ], [ %i.if, %bb.p ]
  %.sroa.0169.1216.i = phi <2 x float> [ %.sroa.0169.0.i, %.lr.ph.i ], [ %.sroa.0169.4.vec.insert181.i, %bb.p ] ; 2 uses
  %.sroa.0169.4.vec.extract179.i = extractelement <2 x float> %.sroa.0169.1216.i, i64 1
  %i.gg = fadd nsz float %i.ge, %.sroa.0169.4.vec.extract179.i ; 3 uses
  %i.gh = fadd nsz float %.085, %.1102222.i       ; 3 uses
  %i.gi = fcmp nsz ogt float %i.gg, 0.000000e+00
  %i.gj = select nsz i1 %i.gi, float 5.000000e+00, float -5.000000e+00
  %i.gk = fadd nsz float %i.gg, %i.gj
  %i.gl = fdiv nsz float %i.gk, 1.000000e+01
  %i.gm = fptosi float %i.gl to i16
  %i.gn = insertelement <2 x float> %.sroa.0169.1216.i, float %.sroa.14.1217.i, i64 1
  %i.go = fadd nsz <2 x float> %i.gf, %i.gn       ; 4 uses
  %.sroa.0169.4.vec.insert181.i = insertelement <2 x float> %i.go, float %i.gg, i64 1
  %i.gp = fcmp nsz ogt <2 x float> %i.go, zeroinitializer
  %i.gq = select <2 x i1> %i.gp, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.gr = fadd nsz <2 x float> %i.go, %i.gq
  %i.gs = fdiv nsz <2 x float> %i.gr, splat (float 1.000000e+01)
  %.sroa.2.0.insert.ext.i150.i = zext i16 %i.gm to i48
  %.sroa.2.0.insert.shift.i151.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i150.i, 16
  %i.gt = fptosi <2 x float> %i.gs to <2 x i16>   ; 2 uses
  %i.gu = extractelement <2 x i16> %i.gt, i64 1
  %i.gv = zext i16 %i.gu to i48
  %.sroa.3.0.insert.shift.i149.i = shl nuw i48 %i.gv, 32
  %.sroa.2.0.insert.insert.i152.i = or disjoint i48 %.sroa.2.0.insert.shift.i151.i, %.sroa.3.0.insert.shift.i149.i
  %i.gw = extractelement <2 x i16> %i.gt, i64 0
  %i.gx = zext i16 %i.gw to i48
  %.sroa.0.0.insert.insert.i154.i = or disjoint i48 %.sroa.2.0.insert.insert.i152.i, %i.gx
  %i.gy = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0.0.insert.insert.i154.i, ptr noundef null)
          to label %.noexc109 unwind label %.loopexit ; 2 uses

.noexc109:                                        ; preds = %bb.n
  %i.gz = and i32 %i.gy, 65535
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ha
  %.sroa.0.0.copyload.i.i155.i = load i8, ptr %i.hb, align 1, !tbaa !65 ; 4 uses
  %i.hc = icmp eq i32 %.0111218.i, 0
  %or.cond.not212.not215.i = select i1 %.0107.i, i1 %i.hc, i1 false
  %i.hd = and i8 %.sroa.0.0.copyload.i.i155.i, 16
  %.not115.i = icmp ne i8 %i.hd, 0
  %i.he = and i8 %.sroa.0.0.copyload.i.i155.i, 64
  %i.hf = and i8 %.sroa.0.0.copyload.i.i155.i, 80
  %i.hg = icmp eq i8 %i.hf, 16
  %or.cond119.i = and i1 %or.cond.not212.not215.i, %i.hg
  %.1109.i = select i1 %or.cond119.i, i1 true, i1 %.0108219.i ; 2 uses
  %i.hh = icmp ne i8 %i.he, 0
  %or.cond3.i = select i1 %i.hh, i1 true, i1 %.1109.i
  %or.cond211.i = select i1 %.not115.i, i1 %or.cond3.i, i1 false
  br i1 %or.cond211.i, label %_ZNK7MapNode13getLightBlendEj20ContentLightingFlags.exit.i, label %bb.o

bb.o:                                             ; preds = %.noexc109
  %i.hi = add nsw i32 %.0103221.i, 1
  %i.hj = icmp sgt i32 %.0103221.i, 2
  br i1 %i.hj, label %._crit_edge.i, label %bb.p

_ZNK7MapNode13getLightBlendEj20ContentLightingFlags.exit.i: ; preds = %.noexc109
  %.sroa.4.0.extract.shift.i = lshr i32 %i.gy, 16
  %.sroa.4.0.extract.trunc.i = trunc i32 %.sroa.4.0.extract.shift.i to i8 ; 2 uses
  %i.hk = fcmp nsz ult float %i.gh, %.096.i
  %i.hl = trunc nuw i8 %.0 to i1
  %i.hm = select i1 %i.hk, i1 true, i1 %i.hl
end_hunk_0
