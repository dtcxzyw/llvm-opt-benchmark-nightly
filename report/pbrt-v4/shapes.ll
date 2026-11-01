Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/shapes?download=true
inline.NumInlined: 6411
inline.NumDeleted: 1459
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN4pbrt5Curve6CreateEPKNS_9TransformES3_bRKNS_19ParameterDictionaryEPKNS_7FileLocEN4pstd3pmr21polymorphic_allocatorISt4byteEE:._crit_edge.i.i
  %i.mi = load ptr, ptr %7, align 8, !tbaa !63    ; 2 uses
  %i.mj = icmp eq ptr %i.mi, %i.lv
  br i1 %i.mj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i299, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i298

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i298: ; preds = %bb.at
  %i.mk = load i64, ptr %i.lv, align 8, !tbaa !62
  %i.ml = add i64 %i.mk, 1
  call void @_ZdlPvm(ptr noundef %i.mi, i64 noundef %i.ml) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i299

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i299: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i298
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %.body303

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i302: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i301
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #32
  br label %.loopexit441.sink.split

.body303:                                         ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i294, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i299
  %eh.lpad-body304 = phi { ptr, i32 } [ %i.lx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i294 ], [ %i.mh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i299 ], [ %i.lx, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #32
  br label %.body288

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281
  br i1 %.not117, label %.invoke, label %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EEaSESt16initializer_listIS2_E.exit

.invoke:                                          ; preds = %bb.av, %bb.au
  invoke void @_ZN4pbrt5ErrorEPKNS_7FileLocEPKc(ptr noundef %5, ptr noundef nonnull @.str.70)
          to label %.loopexit441.sink.split unwind label %bb.ax

_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EEaSESt16initializer_listIS2_E.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i287, %_ZSt8_DestroyIPN4pbrt7Normal3IfEES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.au, %bb.ap
  %i.mm = load ptr, ptr @_ZN4pbrt7OptionsE, align 8, !tbaa !187
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 10
  %i.mo = load i8, ptr %i.mn, align 2, !tbaa !434, !range !30, !noundef !31
  %i.mp = trunc nuw i8 %i.mo to i1
  br i1 %i.mp, label %.critedge145, label %._crit_edge.i.i305

._crit_edge.i.i305:                               ; preds = %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EEaSESt16initializer_listIS2_E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #32
  %i.mq = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 6 uses
  store ptr %i.mq, ptr %28, align 8, !tbaa !59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.mq, ptr noundef nonnull align 1 dereferenceable(10) @.str.71, i64 10, i1 false)
  %i.mr = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 10, ptr %i.mr, align 8, !tbaa !61
  %i.ms = getelementptr inbounds nuw i8, ptr %28, i64 26
  store i8 0, ptr %i.ms, align 2, !tbaa !62
  %i.mt = invoke noundef i32 @_ZNK4pbrt19ParameterDictionary9GetOneIntERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(108) %4, ptr noundef nonnull align 8 dereferenceable(32) %28, i32 noundef 3)
          to label %.critedge unwind label %bb.aw

.critedge:                                        ; preds = %._crit_edge.i.i305
  %i.mu = load ptr, ptr %28, align 8, !tbaa !63   ; 2 uses
  %i.mv = icmp eq ptr %i.mu, %i.mq
  br i1 %i.mv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309: ; preds = %.critedge
  %i.mw = load i64, ptr %i.mq, align 8, !tbaa !62
  %i.mx = add i64 %i.mw, 1
  call void @_ZdlPvm(ptr noundef %i.mu, i64 noundef %i.mx) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #32
  br label %.critedge145

.critedge145:                                     ; preds = %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EEaSESt16initializer_listIS2_E.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311
  %i.my = phi i32 [ %i.mt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311 ], [ 0, %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EEaSESt16initializer_listIS2_E.exit ]
  br i1 %.not117, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %.critedge145
  %i.mz = load ptr, ptr %26, align 8, !tbaa !159
  %i.na = load ptr, ptr %i.km, align 8, !tbaa !159
  %i.nb = icmp eq ptr %i.mz, %i.na
  br i1 %i.nb, label %.invoke, label %bb.ay

bb.aw:                                            ; preds = %._crit_edge.i.i305
  %i.nc = landingpad { ptr, i32 }
          cleanup
  %i.nd = load ptr, ptr %28, align 8, !tbaa !63   ; 2 uses
  %i.ne = icmp eq ptr %i.nd, %i.mq
  br i1 %i.ne, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312: ; preds = %bb.aw
  %i.nf = load i64, ptr %i.mq, align 8, !tbaa !62
  %i.ng = add i64 %i.nf, 1
  call void @_ZdlPvm(ptr noundef %i.nd, i64 noundef %i.ng) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #32
  br label %.body288

bb.ax:                                            ; preds = %.invoke
  %i.nh = landingpad { ptr, i32 }
          cleanup
  br label %.body288

bb.ay:                                            ; preds = %bb.av, %.critedge145
  store i64 %6, ptr %0, align 8, !tbaa !80
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ni, i8 0, i64 24, i1 false)
  %i.nj = load i32, ptr %i.b, align 4, !tbaa !89  ; 2 uses
  %i.nk = icmp sgt i32 %i.nj, 0
  br i1 %i.nk, label %.lr.ph, label %.loopexit441

.lr.ph:                                           ; preds = %bb.ay
  %.sroa.5394.0..sroa_idx = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  %.sroa.6395.0..sroa_idx = getelementptr inbounds nuw i8, ptr %29, i64 12 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %29, i64 20 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %29, i64 24 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %29, i64 32 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %29, i64 36 ; 3 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %29, i64 44
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.nm = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %30, i64 24 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %30, i64 16
  %.sroa.9401.sroa.4.0..sroa.9401.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %29, i64 44
  %i.np = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.nq = shufflevector <2 x float> %i.np, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nr = insertelement <2 x float> poison, float %i.t, i64 0
  %i.ns = shufflevector <2 x float> %i.nr, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.az

bb.az:                                            ; preds = %.lr.ph, %_ZN4pstd6vectorIN4pbrt5ShapeENS_3pmr21polymorphic_allocatorIS2_EEED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4pstd6vectorIN4pbrt5ShapeENS_3pmr21polymorphic_allocatorIS2_EEED2Ev.exit ] ; 3 uses
  %i.nt = phi i32 [ %i.nj, %.lr.ph ], [ %i.sz, %_ZN4pstd6vectorIN4pbrt5ShapeENS_3pmr21polymorphic_allocatorIS2_EEED2Ev.exit ]
  %.095443 = phi i32 [ 0, %.lr.ph ], [ %.196, %_ZN4pstd6vectorIN4pbrt5ShapeENS_3pmr21polymorphic_allocatorIS2_EEED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %29, i8 0, i64 48, i1 false)
  %i.nu = load i64, ptr %i.cr, align 8, !tbaa !61
  %i.nv = icmp eq i64 %i.nu, 6
  br i1 %i.nv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit316, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit316.thread438

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit316: ; preds = %bb.az
  %i.nw = load ptr, ptr %18, align 8, !tbaa !63   ; 2 uses
  %i.nx = load i32, ptr %i.nw, align 1
  %i.ny = xor i32 %i.nx, 1769629026
  %i.nz = getelementptr i8, ptr %i.nw, i64 4
  %i.oa = load i16, ptr %i.nz, align 1
  %i.ob = zext i16 %i.oa to i32
  %i.oc = xor i32 %i.ob, 29285
  %i.od = or i32 %i.ny, %i.oc
  %i.oe = icmp ne i32 %i.od, 0
  %i.of = zext i1 %i.oe to i32
  %i.og = icmp eq i32 %i.of, 0
  br i1 %i.og, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit316.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit316.thread438

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit316.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit316
  %i.oh = load i32, ptr %i.a, align 4, !tbaa !89  ; 2 uses
  %i.oi = icmp eq i32 %i.oh, 2
  %i.oj = load ptr, ptr %21, align 8, !tbaa !146  ; 2 uses
  %i.ok = sext i32 %.095443 to i64                ; 2 uses
  br i1 %i.oi, label %bb.ba, label %.preheader

.preheader:                                       ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit316.thread
  %i.ol = mul nsw i64 %i.ok, 12
  %scevgep = getelementptr nuw i8, ptr %i.oj, i64 %i.ol
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %29, ptr noundef nonnull align 4 dereferenceable(48) %scevgep, i64 48, i1 false)
  br label %.loopexit

bb.ba:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit316.thread
  %i.om = getelementptr inbounds nuw [12 x i8], ptr %i.oj, i64 %i.ok ; 6 uses
  %.sroa.019.0.copyload.i = load <2 x float>, ptr %i.om, align 4, !tbaa !28, !noalias !435
  %.sroa.220.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  %.sroa.220.0.copyload.i = load float, ptr %.sroa.220.0..sroa_idx.i, align 4, !tbaa !28, !noalias !435
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 12
  %.sroa.017.0.copyload.i = load <2 x float>, ptr %i.on, align 4, !tbaa !28, !noalias !435 ; 2 uses
  %.sroa.218.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.om, i64 20
  %i.oo = fmul <2 x float> %.sroa.019.0.copyload.i, splat (float f0x3EAAAAAA)
  %i.op = fmul <2 x float> %.sroa.017.0.copyload.i, splat (float f0x3F2AAAAB)
  %i.oq = fadd <2 x float> %i.oo, %i.op
  %i.or = getelementptr inbounds nuw i8, ptr %i.om, i64 24 ; 2 uses
  %.sroa.05.0.copyload.i = load <2 x float>, ptr %i.or, align 4, !tbaa !28, !noalias !435
  %i.os = fmul <2 x float> %.sroa.017.0.copyload.i, splat (float f0x3F2AAAAA)
  %i.ot = fmul <2 x float> %.sroa.05.0.copyload.i, splat (float f0x3EAAAAAB)
  %i.ou = fadd <2 x float> %i.os, %i.ot
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %29, ptr noundef nonnull align 4 dereferenceable(12) %i.om, i64 12, i1 false)
  store <2 x float> %i.oq, ptr %.sroa.6395.0..sroa_idx, align 4
  store <2 x float> %i.ou, ptr %.sroa.8.0..sroa_idx, align 8
  %i.ov = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %.sroa.218.0..sroa_idx.i, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !28, !noalias !435 ; 2 uses
  %i.ow = shufflevector <4 x float> %i.ov, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ox = shufflevector <4 x float> %i.ov, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.oy = insertelement <2 x float> %i.ox, float %.sroa.220.0.copyload.i, i64 0
  %i.oz = fmul <2 x float> %i.oy, <float f0x3EAAAAAA, float f0x3F2AAAAA>
  %i.pa = fmul <2 x float> %i.ow, <float f0x3F2AAAAB, float f0x3EAAAAAB>
  %i.pb = fadd <2 x float> %i.oz, %i.pa
  %i.pc = shufflevector <2 x float> %i.pb, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 1>
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.pc, ptr align 4 %.sroa.7.0..sroa_idx, <4 x i1> <i1 true, i1 false, i1 false, i1 true>)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %i.or, i64 12, i1 false)
  br label %.loopexit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit316.thread438: ; preds = %bb.az, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit316
  %i.pd = load i32, ptr %i.a, align 4, !tbaa !89
  %i.pe = icmp eq i32 %i.pd, 2
  %i.pf = load ptr, ptr %21, align 8, !tbaa !146
  %i.pg = sext i32 %.095443 to i64
  %i.ph = getelementptr inbounds nuw [12 x i8], ptr %i.pf, i64 %i.pg ; 10 uses
  %.sroa.022.0.copyload.i = load <2 x float>, ptr %i.ph, align 4, !noalias !31 ; 2 uses
  %.sroa.223.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  %.sroa.223.0.copyload.i = load float, ptr %.sroa.223.0..sroa_idx.i, align 4, !noalias !31 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 12
  %.sroa.020.0.copyload.i = load <2 x float>, ptr %i.pi, align 4, !noalias !31 ; 6 uses
  %.sroa.221.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ph, i64 20
  %.sroa.221.0.copyload.i = load float, ptr %.sroa.221.0..sroa_idx.i, align 4, !noalias !31 ; 5 uses
  br i1 %i.pe, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit316.thread438
  %i.pj = fmul float %.sroa.223.0.copyload.i, 5.000000e-01
  %i.pk = fmul float %.sroa.221.0.copyload.i, 5.000000e-01 ; 2 uses
  %i.pl = fadd float %i.pj, %i.pk                 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.ph, i64 24
  %.sroa.07.0.copyload.i = load <2 x float>, ptr %i.pm, align 4, !tbaa !28, !noalias !436
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ph, i64 32
  %.sroa.28.0.copyload.i = load float, ptr %.sroa.28.0..sroa_idx.i, align 4, !tbaa !28, !noalias !436
  %i.pn = fmul float %.sroa.28.0.copyload.i, 5.000000e-01
  %i.po = fadd float %i.pk, %i.pn                 ; 2 uses
  %i.pp = fmul float %i.pl, f0x3EAAAAAA
  %i.pq = fmul float %.sroa.221.0.copyload.i, f0x3F2AAAAB
  %i.pr = fadd float %i.pp, %i.pq
  %i.ps = fmul float %.sroa.221.0.copyload.i, f0x3F2AAAAA
  %i.pt = fmul float %i.po, f0x3EAAAAAB
  %i.pu = fmul <2 x float> %.sroa.020.0.copyload.i, splat (float 5.000000e-01) ; 2 uses
  %i.pv = fmul <2 x float> %.sroa.07.0.copyload.i, splat (float 5.000000e-01)
  %i.pw = fadd <2 x float> %i.pu, %i.pv           ; 2 uses
  %i.px = fmul <2 x float> %.sroa.022.0.copyload.i, splat (float 5.000000e-01)
  %i.py = fmul <2 x float> %.sroa.020.0.copyload.i, splat (float f0x3F2AAAAB)
  %i.pz = fadd <2 x float> %i.px, %i.pu           ; 2 uses
  %i.qa = fmul <2 x float> %i.pz, splat (float f0x3EAAAAAA)
  %i.qb = fadd <2 x float> %i.qa, %i.py
  %i.qc = fmul <2 x float> %.sroa.020.0.copyload.i, splat (float f0x3F2AAAAA)
  %i.qd = fmul <2 x float> %i.pw, splat (float f0x3EAAAAAB)
  %i.qe = fadd <2 x float> %i.qd, %i.qc
  %i.qf = fadd float %i.pt, %i.ps
  store <2 x float> %i.pz, ptr %29, align 8
  store float %i.pl, ptr %.sroa.5394.0..sroa_idx, align 8
  store <2 x float> %i.qb, ptr %.sroa.6395.0..sroa_idx, align 4
  store float %i.pr, ptr %.sroa.7.0..sroa_idx, align 4
  store <2 x float> %i.qe, ptr %.sroa.8.0..sroa_idx, align 8
  store float %i.qf, ptr %.sroa.9.0..sroa_idx, align 8
  store <2 x float> %i.pw, ptr %.sroa.10.0..sroa_idx, align 4
  store float %i.po, ptr %.sroa.9401.sroa.4.0..sroa.9401.0..sroa_idx.sroa_idx, align 4, !tbaa !62
  br label %.loopexit

bb.bc:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit316.thread438
  %i.qg = getelementptr inbounds nuw i8, ptr %i.ph, i64 24
  %.sroa.083.0.copyload.i = load <2 x float>, ptr %i.qg, align 4, !noalias !437 ; 3 uses
  %.sroa.6.0..sroa_idx.i362 = getelementptr inbounds nuw i8, ptr %i.ph, i64 32
  %.sroa.6.0.copyload.i = load float, ptr %.sroa.6.0..sroa_idx.i362, align 4, !noalias !437
  %i.qh = getelementptr inbounds nuw i8, ptr %i.ph, i64 36
  %.sroa.081.0.copyload.i = load <2 x float>, ptr %i.qh, align 4, !noalias !437
  %.sroa.482.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ph, i64 44
  %.sroa.482.0.copyload.i = load float, ptr %.sroa.482.0..sroa_idx.i, align 4, !noalias !437
  %i.qi = insertelement <2 x float> poison, float %.sroa.223.0.copyload.i, i64 0
  %i.qj = insertelement <2 x float> %i.qi, float %.sroa.221.0.copyload.i, i64 1
  %i.qk = fmul <2 x float> %i.qj, splat (float f0x3EAAAAAA)
  %i.ql = fmul <2 x float> %.sroa.022.0.copyload.i, splat (float f0x3EAAAAAA)
  %i.qm = fmul <2 x float> %.sroa.020.0.copyload.i, splat (float f0x3F2AAAAB)
  %i.qn = fadd <2 x float> %i.ql, %i.qm
  %i.qo = fmul <2 x float> %.sroa.020.0.copyload.i, splat (float f0x3F2AAAAA)
  %i.qp = fmul <2 x float> %.sroa.083.0.copyload.i, splat (float f0x3EAAAAAB)
  %i.qq = fadd <2 x float> %i.qo, %i.qp           ; 2 uses
  %i.qr = fmul <2 x float> %i.qn, splat (float 5.000000e-01)
  %i.qs = fmul <2 x float> %i.qq, splat (float 5.000000e-01)
  %i.qt = fadd <2 x float> %i.qr, %i.qs
  %i.qu = fmul <2 x float> %.sroa.020.0.copyload.i, splat (float f0x3EAAAAAA)
  %i.qv = fmul <2 x float> %.sroa.083.0.copyload.i, splat (float f0x3F2AAAAB)
  %i.qw = fadd <2 x float> %i.qu, %i.qv           ; 2 uses
  %i.qx = fmul <2 x float> %.sroa.083.0.copyload.i, splat (float f0x3F2AAAAA)
  %i.qy = fmul <2 x float> %.sroa.081.0.copyload.i, splat (float f0x3EAAAAAB)
  %i.qz = fadd <2 x float> %i.qx, %i.qy
  %i.ra = fmul <2 x float> %i.qw, splat (float 5.000000e-01)
  %i.rb = fmul <2 x float> %i.qz, splat (float 5.000000e-01)
  %i.rc = fadd <2 x float> %i.ra, %i.rb
  %32 = insertelement <2 x float> poison, float %.sroa.221.0.copyload.i, i64 0 ; 2 uses
  %33 = insertelement <2 x float> %32, float %.sroa.6.0.copyload.i, i64 1 ; 2 uses
  %i.rd = fmul <2 x float> %33, splat (float f0x3F2AAAAB)
  %i.re = fadd <2 x float> %i.qk, %i.rd           ; 2 uses
  %34 = shufflevector <2 x float> %33, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.rf = fmul <2 x float> %34, <float f0x3EAAAAAB, float f0x3F2AAAAA>
  %i.rg = insertelement <2 x float> %32, float %.sroa.482.0.copyload.i, i64 1
  %i.rh = fmul <2 x float> %i.rg, <float f0x3F2AAAAA, float f0x3EAAAAAB>
  %i.ri = fadd <2 x float> %i.rf, %i.rh           ; 2 uses
  %i.rj = fmul <2 x float> %i.re, splat (float 5.000000e-01)
  %i.rk = fmul <2 x float> %i.ri, splat (float 5.000000e-01)
  %i.rl = fadd <2 x float> %i.rj, %i.rk           ; 2 uses
  store <2 x float> %i.qt, ptr %29, align 8
  %i.rm = extractelement <2 x float> %i.rl, i64 0
  store float %i.rm, ptr %.sroa.5394.0..sroa_idx, align 8
  store <2 x float> %i.qq, ptr %.sroa.6395.0..sroa_idx, align 4
  %i.rn = extractelement <2 x float> %i.ri, i64 0
  store float %i.rn, ptr %.sroa.7.0..sroa_idx, align 4
  store <2 x float> %i.qw, ptr %.sroa.8.0..sroa_idx, align 8
  %i.ro = extractelement <2 x float> %i.re, i64 1
  store float %i.ro, ptr %.sroa.9.0..sroa_idx, align 8
  store <2 x float> %i.rc, ptr %.sroa.10.0..sroa_idx, align 4
  %i.rp = extractelement <2 x float> %i.rl, i64 1
  store float %i.rp, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !62
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.ba, %bb.bb, %bb.bc
  %.pn123 = phi i32 [ 1, %bb.bb ], [ 1, %bb.bc ], [ 2, %bb.ba ], [ %i.oh, %.preheader ]
  %.196 = add nsw i32 %.pn123, %.095443
  %i.rq = load ptr, ptr %26, align 8, !tbaa !159  ; 2 uses
  %i.rr = load ptr, ptr %i.km, align 8, !tbaa !159
  %i.rs = icmp eq ptr %i.rq, %i.rr                ; 2 uses
  %i.rt = getelementptr inbounds nuw [12 x i8], ptr %i.rq, i64 %indvars.iv
  %.sroa.0391.0 = select i1 %i.rs, ptr null, ptr %i.rt
  %.sroa.6.0 = select i1 %i.rs, i64 0, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #32
  %i.ru = sitofp i32 %i.nt to float
  %i.rv = trunc nsw i64 %indvars.iv to i32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.rw = trunc nsw i64 %indvars.iv.next to i32
  %i.rx = insertelement <2 x i32> poison, i32 %i.rv, i64 0
  %i.ry = insertelement <2 x i32> %i.rx, i32 %i.rw, i64 1
  %i.rz = uitofp nneg <2 x i32> %i.ry to <2 x float>
  %i.sa = insertelement <2 x float> poison, float %i.ru, i64 0
  %i.sb = shufflevector <2 x float> %i.sa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sc = fdiv <2 x float> %i.rz, %i.sb           ; 2 uses
  %i.sd = fsub <2 x float> splat (float 1.000000e+00), %i.sc
  %i.se = fmul <2 x float> %i.ns, %i.sd
  %i.sf = fmul <2 x float> %i.nq, %i.sc
  %i.sg = fadd <2 x float> %i.sf, %i.se           ; 2 uses
  store ptr %.sroa.0391.0, ptr %31, align 8, !tbaa !159
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !66
  %i.sh = extractelement <2 x float> %i.sg, i64 0
  %i.si = extractelement <2 x float> %i.sg, i64 1
  invoke void @_ZN4pbrt11CreateCurveEPKNS_9TransformES2_bN4pstd4spanIKNS_6Point3IfEEEEffNS_9CurveTypeENS4_IKNS_7Normal3IfEEEEiNS3_3pmr21polymorphic_allocatorISt4byteEE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::vector") align 8 %30, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr nonnull %29, i64 4, float noundef %i.sh, float noundef %i.si, i32 noundef %.091, ptr noundef nonnull byval(%"class.pstd::span.62") align 8 %31, i32 noundef %i.my, i64 %6)
          to label %bb.bd unwind label %bb.bh

bb.bd:                                            ; preds = %.loopexit
  %i.sj = load ptr, ptr %i.ni, align 8, !tbaa !109
  %i.sk = load i64, ptr %i.nl, align 8, !tbaa !107
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %i.sk
  %i.sm = load ptr, ptr %i.nm, align 8, !tbaa !109 ; 2 uses
  %i.sn = load i64, ptr %i.nn, align 8, !tbaa !107
  %i.so = getelementptr inbounds nuw [8 x i8], ptr %i.sm, i64 %i.sn
  %i.sp = invoke noundef ptr @_ZN4pstd6vectorIN4pbrt5ShapeENS_3pmr21polymorphic_allocatorIS2_EEE6insertIPS2_EES8_PKS2_T_SB_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.sl, ptr noundef %i.sm, ptr noundef %i.so)
          to label %bb.be unwind label %bb.bi     ; 0 uses

bb.be:                                            ; preds = %bb.bd
  store i64 0, ptr %i.nn, align 8, !tbaa !107
  %i.sq = load ptr, ptr %i.nm, align 8, !tbaa !109 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.sq, null
  br i1 %.not.i.i.i.i, label %_ZN4pstd6vectorIN4pbrt5ShapeENS_3pmr21polymorphic_allocatorIS2_EEED2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.sr = load i64, ptr %i.no, align 8, !tbaa !108
  %i.ss = shl i64 %i.sr, 3
  %i.st = load ptr, ptr %30, align 8, !tbaa !115  ; 2 uses
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !65
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 24
  %i.sw = load ptr, ptr %i.sv, align 8
  invoke void %i.sw(ptr noundef nonnull align 8 dereferenceable(8) %i.st, ptr noundef nonnull %i.sq, i64 noundef %i.ss, i64 noundef 8)
          to label %_ZN4pstd6vectorIN4pbrt5ShapeENS_3pmr21polymorphic_allocatorIS2_EEED2Ev.exit unwind label %bb.bg, !inline_history !1

bb.bg:                                            ; preds = %bb.bf
  %i.sx = landingpad { ptr, i32 }
          catch ptr null
  %i.sy = extractvalue { ptr, i32 } %i.sx, 0
  call void @__clang_call_terminate(ptr %i.sy) #35
  unreachable

_ZN4pstd6vectorIN4pbrt5ShapeENS_3pmr21polymorphic_allocatorIS2_EEED2Ev.exit: ; preds = %bb.be, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #32
  %i.sz = load i32, ptr %i.b, align 4, !tbaa !89  ; 2 uses
  %i.ta = sext i32 %i.sz to i64
  %i.tb = icmp slt i64 %indvars.iv.next, %i.ta
  br i1 %i.tb, label %bb.az, label %.loopexit441, !llvm.loop !426

bb.bh:                                            ; preds = %.loopexit
  %i.tc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bd
  %i.td = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pstd6vectorIN4pbrt5ShapeENS_3pmr21polymorphic_allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %30) #32
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.pn124 = phi { ptr, i32 } [ %i.td, %bb.bi ], [ %i.tc, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #32
  call void @_ZN4pstd6vectorIN4pbrt5ShapeENS_3pmr21polymorphic_allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #32
  br label %.body288

.loopexit441.sink.split:                          ; preds = %.invoke, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i302
  %i.te = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #32
  %i.tf = ptrtoint ptr %i.te to i64
  store i64 %i.tf, ptr %0, align 8, !tbaa !80
  %i.tg = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tg, i8 0, i64 24, i1 false)
  br label %.loopexit441

.loopexit441:                                     ; preds = %_ZN4pstd6vectorIN4pbrt5ShapeENS_3pmr21polymorphic_allocatorIS2_EEED2Ev.exit, %.loopexit441.sink.split, %bb.ay
  %i.th = load ptr, ptr %26, align 8, !tbaa !161  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.th, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EED2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %.loopexit441
  %i.ti = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !165
  %i.tk = ptrtoint ptr %i.tj to i64
  %i.tl = ptrtoint ptr %i.th to i64
  %i.tm = sub i64 %i.tk, %i.tl
  call void @_ZdlPvm(ptr noundef nonnull %i.th, i64 noundef %i.tm) #33
  br label %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EED2Ev.exit: ; preds = %.loopexit441, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #32
  %i.tn = load ptr, ptr %23, align 8, !tbaa !63   ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.tp = icmp eq ptr %i.tn, %i.to
  br i1 %i.tp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i371

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i371: ; preds = %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EED2Ev.exit
  %i.tq = load i64, ptr %i.to, align 8, !tbaa !62
  %i.tr = add i64 %i.tq, 1
  call void @_ZdlPvm(ptr noundef %i.tn, i64 noundef %i.tr) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373: ; preds = %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i371
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #32
  br label %bb.bm

.body288:                                         ; preds = %bb.al, %bb.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i282, %bb.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314, %.body303
  %.pn129 = phi { ptr, i32 } [ %i.nc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314 ], [ %eh.lpad-body304, %.body303 ], [ %.pn124, %bb.bj ], [ %i.nh, %bb.ax ], [ %i.lb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i ], [ %i.kr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i282 ], [ %i.kr, %bb.al ] ; 2 uses
  %i.ts = load ptr, ptr %26, align 8, !tbaa !161  ; 3 uses
  %.not.i.i.i374 = icmp eq ptr %i.ts, null
  br i1 %.not.i.i.i374, label %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EED2Ev.exit375, label %bb.bl

bb.bl:                                            ; preds = %.body288
  %i.tt = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !165
  %i.tv = ptrtoint ptr %i.tu to i64
  %i.tw = ptrtoint ptr %i.ts to i64
  %i.tx = sub i64 %i.tv, %i.tw
  call void @_ZdlPvm(ptr noundef nonnull %i.ts, i64 noundef %i.tx) #33
  br label %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EED2Ev.exit375

_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EED2Ev.exit375: ; preds = %bb.bl, %.body288, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293
  %.pn129.pn = phi { ptr, i32 } [ %i.li, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293 ], [ %.pn129, %.body288 ], [ %.pn129, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #32
  br label %.body272

.body272:                                         ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i262, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i268, %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EED2Ev.exit375
  %.pn129.pn.pn = phi { ptr, i32 } [ %.pn129.pn, %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EED2Ev.exit375 ], [ %i.jp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i262 ], [ %i.jz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i268 ], [ %i.jp, %bb.af ] ; 2 uses
  %i.ty = load ptr, ptr %23, align 8, !tbaa !63   ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.ua = icmp eq ptr %i.ty, %i.tz
  br i1 %i.ua, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i376

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i376: ; preds = %.body272
  %i.ub = load i64, ptr %i.tz, align 8, !tbaa !62
  %i.uc = add i64 %i.ub, 1
  call void @_ZdlPvm(ptr noundef %i.ty, i64 noundef %i.uc) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378: ; preds = %.body272, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i376, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257
  %.pn129.pn.pn.pn = phi { ptr, i32 } [ %i.jc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257 ], [ %.pn129.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i376 ], [ %.pn129.pn.pn, %.body272 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #32
  br label %bb.bo

bb.bm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i233, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i222
  %i.ud = load ptr, ptr %21, align 8, !tbaa !146  ; 3 uses
  %.not.i.i.i379 = icmp eq ptr %i.ud, null
  br i1 %.not.i.i.i379, label %_ZNSt6vectorIN4pbrt6Point3IfEESaIS2_EED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ue = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !168
  %i.ug = ptrtoint ptr %i.uf to i64
  %i.uh = ptrtoint ptr %i.ud to i64
  %i.ui = sub i64 %i.ug, %i.uh
  call void @_ZdlPvm(ptr noundef nonnull %i.ud, i64 noundef %i.ui) #33
  br label %_ZNSt6vectorIN4pbrt6Point3IfEESaIS2_EED2Ev.exit

end_hunk_0
