begin_hunk_0_@_ZNK7UnitSAO35generateUpdateAnimationSpeedCommandB5cxx11Ev:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !180, !noalias !194 ; 2 uses
  %i.p = ptrtoint ptr %.08.i.i.i to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.o, i64 noundef %i.r)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !97, !alias.scope !194 ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.g
  br i1 %i.v, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.w = load i64, ptr %i.g, align 8, !tbaa !95, !alias.scope !194
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #33
  br label %.body

bb.f:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.y)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.f, %bb.d
  %i.z = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.z, ptr %2, align 8, !tbaa !9
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ab = getelementptr i8, ptr %i.z, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %2, i64 %i.ac
  store ptr %i.aa, ptr %i.ad, align 8, !tbaa !9
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ae, align 8, !tbaa !9
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !97 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !95
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #33
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ae, align 8, !tbaa !9
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.al) #32
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.am) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret void

bb.g:                                             ; preds = %.noexc, %bb.b, %bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.an, %bb.g ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.t, %bb.e ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7UnitSAO33generateUpdateBoneOverrideCommandERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK12BoneOverride(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(120) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [4 x i8], align 1                 ; 4 uses
  %i.c = alloca [4 x i8], align 1                 ; 4 uses
  %i.d = alloca [4 x i8], align 1                 ; 4 uses
  %i.e = alloca [12 x i8], align 1                ; 6 uses
  %i.f = alloca [12 x i8], align 1                ; 6 uses
  %i.g = alloca [12 x i8], align 1                ; 6 uses
  %i.h = alloca [1 x i8], align 1                 ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 25 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(112) %3, i32 noundef 4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #32
  store i8 7, ptr %i.h, align 1, !tbaa !95
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.h, i64 noundef 1)
          to label %bb.b unwind label %bb.s       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.j = load ptr, ptr %1, align 8, !tbaa !97
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !94
  invoke void @_Z17serializeString16B5cxx11St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 %i.l, ptr %i.j)
          to label %bb.c unwind label %bb.t

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %4, align 8, !tbaa !97
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !94
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.m, i64 noundef %i.o)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.u ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.c
  %i.q = load ptr, ptr %4, align 8, !tbaa !97     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.t = load i64, ptr %i.r, align 8, !tbaa !95
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.011.0.copyload = load <2 x float>, ptr %i.v, align 4 ; 2 uses
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.212.0.copyload = load float, ptr %.sroa.212.0..sroa_idx, align 4, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #32
  %.sroa.03.0.vec.extract.i.i = extractelement <2 x float> %.sroa.011.0.copyload, i64 0
  invoke void @_Z8writeF32Phf(ptr noundef nonnull %i.g, float noundef %.sroa.03.0.vec.extract.i.i)
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %.sroa.03.4.vec.extract.i.i = extractelement <2 x float> %.sroa.011.0.copyload, i64 1
  invoke void @_Z8writeF32Phf(ptr noundef nonnull %i.w, float noundef %.sroa.03.4.vec.extract.i.i)
          to label %.noexc30 unwind label %bb.s

.noexc30:                                         ; preds = %.noexc
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  invoke void @_Z8writeF32Phf(ptr noundef nonnull %i.x, float noundef %.sroa.212.0.copyload)
          to label %.noexc31 unwind label %bb.s

.noexc31:                                         ; preds = %.noexc30
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.g, i64 noundef 12)
          to label %bb.d unwind label %bb.s       ; 0 uses

bb.d:                                             ; preds = %.noexc31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #32
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ac = load <2 x float>, ptr %i.ab, align 4, !tbaa !158 ; 3 uses
  %i.ad = extractelement <2 x float> %i.ac, i64 1 ; 5 uses
  %i.ae = fmul nsz float %i.ad, %i.ad
  %i.af = fpext nsz float %i.ae to double         ; 2 uses
  %i.ag = load <2 x float>, ptr %i.z, align 4, !tbaa !158 ; 6 uses
  %i.ah = extractelement <2 x float> %i.ag, i64 0 ; 3 uses
  %foldExtExtBinop = fmul nsz <2 x float> %i.ag, %i.ag
  %i.ai = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.aj = fpext nsz float %i.ai to double         ; 2 uses
  %i.ak = load <2 x float>, ptr %i.aa, align 4, !tbaa !158 ; 2 uses
  %i.al = extractelement <2 x float> %i.ag, i64 1 ; 3 uses
  %i.am = fmul nsz float %i.al, %i.al
  %i.an = fpext nsz float %i.am to double         ; 2 uses
  %i.ao = extractelement <2 x float> %i.ak, i64 1 ; 3 uses
  %i.ap = fmul nsz float %i.ao, %i.ao
  %i.aq = fpext nsz float %i.ap to double         ; 2 uses
  %i.ar = fneg nsz float %i.ao
  %i.as = fmul nsz float %i.ah, %i.ar
  %i.at = call nsz float @llvm.fmuladd.f32(float %i.al, float %i.ad, float %i.as)
  %i.au = fpext nsz float %i.at to double
  %i.av = fmul nsz double %i.au, 2.000000e+00     ; 4 uses
  %i.aw = fadd nsz double %i.av, -1.000000e+00
  %i.ax = call nsz noundef double @llvm.fabs.f64(double %i.aw)
  %i.ay = fcmp nsz ugt double %i.ax, f0x3EB0C6F7A0B5ED8D
  br i1 %i.ay, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.az = fpext nsz float %i.ah to double
  %i.ba = fpext nsz float %i.ad to double
  %i.bb = call nsz double @llvm.atan2.f64(double %i.az, double %i.ba)
  %i.bc = fmul nsz double %i.bb, -2.000000e+00
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.bd = fadd nsz double %i.av, 1.000000e+00
  %i.be = call nsz noundef double @llvm.fabs.f64(double %i.bd)
  %i.bf = fcmp nsz ugt double %i.be, f0x3EB0C6F7A0B5ED8D
  br i1 %i.bf, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = fpext nsz float %i.ah to double
  %i.bh = fpext nsz float %i.ad to double
  %i.bi = call nsz double @llvm.atan2.f64(double %i.bg, double %i.bh)
  %i.bj = fmul nsz double %i.bi, 2.000000e+00
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bk = shufflevector <2 x float> %i.ac, <2 x float> %i.ag, <2 x i32> <i32 1, i32 2>
  %i.bl = fmul nsz <2 x float> %i.ac, %i.bk
  %i.bm = fsub nsz double %i.aj, %i.an
  %i.bn = fsub nsz double %i.bm, %i.aq
  %i.bo = fadd nsz double %i.bn, %i.af
  %i.bp = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.ak, <2 x float> %i.bl) ; 2 uses
  %5 = extractelement <2 x float> %i.bp, i64 0
  %6 = fpext nsz float %5 to double
  %7 = fmul nsz double %6, 2.000000e+00
  %i.bq = call nsz double @llvm.atan2.f64(double %7, double %i.bo)
  %8 = extractelement <2 x float> %i.bp, i64 1
  %9 = fpext nsz float %8 to double
  %10 = fmul nsz double %9, 2.000000e+00
  %i.br = fadd nsz double %i.aj, %i.an
  %i.bs = fsub nsz double %i.aq, %i.br
  %i.bt = fadd nsz double %i.bs, %i.af
  %i.bu = call nsz double @llvm.atan2.f64(double %10, double %i.bt)
  %i.bv = fptrunc nsz double %i.bu to float
  %i.bw = fcmp nsz olt double %i.av, -1.000000e+00
  %i.bx = select i1 %i.bw, double -1.000000e+00, double %i.av ; 2 uses
  %i.by = fcmp nsz olt double %i.bx, 1.000000e+00
  %i.bz = select i1 %i.by, double %i.bx, double 1.000000e+00
  %i.ca = call nsz double @llvm.asin.f64(double %i.bz)
  %i.cb = fptrunc nsz double %i.ca to float
  %i.cc = fmul nsz float %i.bv, f0x42652EE0
  %i.cd = fmul nsz float %i.cb, f0x42652EE0
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.g, %bb.h
  %.sroa.11.0.in = phi double [ %i.bq, %bb.h ], [ %i.bj, %bb.g ], [ %i.bc, %bb.e ]
  %.sroa.0.0 = phi float [ %i.cc, %bb.h ], [ 0.000000e+00, %bb.g ], [ 0.000000e+00, %bb.e ]
  %.sink.i = phi float [ %i.cd, %bb.h ], [ -9.000000e+01, %bb.g ], [ 9.000000e+01, %bb.e ]
  %.sroa.11.0 = fptrunc double %.sroa.11.0.in to float
  %i.ce = fmul nsz float %.sroa.11.0, f0x42652EE0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #32
  invoke void @_Z8writeF32Phf(ptr noundef nonnull %i.f, float noundef %.sroa.0.0)
          to label %.noexc37 unwind label %bb.v

.noexc37:                                         ; preds = %bb.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  invoke void @_Z8writeF32Phf(ptr noundef nonnull %i.cf, float noundef %.sink.i)
          to label %.noexc38 unwind label %bb.v

.noexc38:                                         ; preds = %.noexc37
  %i.cg = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  invoke void @_Z8writeF32Phf(ptr noundef nonnull %i.cg, float noundef %i.ce)
          to label %.noexc39 unwind label %bb.v

.noexc39:                                         ; preds = %.noexc38
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.f, i64 noundef 12)
          to label %bb.j unwind label %bb.v       ; 0 uses

bb.j:                                             ; preds = %.noexc39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #32
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 96
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.ci, align 4 ; 2 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 104
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #32
  %.sroa.03.0.vec.extract.i.i42 = extractelement <2 x float> %.sroa.01.0.copyload, i64 0
  invoke void @_Z8writeF32Phf(ptr noundef nonnull %i.e, float noundef %.sroa.03.0.vec.extract.i.i42)
          to label %.noexc44 unwind label %bb.v

.noexc44:                                         ; preds = %bb.j
  %i.cj = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.sroa.03.4.vec.extract.i.i43 = extractelement <2 x float> %.sroa.01.0.copyload, i64 1
  invoke void @_Z8writeF32Phf(ptr noundef nonnull %i.cj, float noundef %.sroa.03.4.vec.extract.i.i43)
          to label %.noexc45 unwind label %bb.v

.noexc45:                                         ; preds = %.noexc44
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  invoke void @_Z8writeF32Phf(ptr noundef nonnull %i.ck, float noundef %.sroa.22.0.copyload)
          to label %.noexc46 unwind label %bb.v

.noexc46:                                         ; preds = %.noexc45
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.e, i64 noundef 12)
          to label %bb.k unwind label %bb.v       ; 0 uses

bb.k:                                             ; preds = %.noexc46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !195
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  invoke void @_Z8writeF32Phf(ptr noundef nonnull %i.d, float noundef %i.cn)
          to label %.noexc49 unwind label %bb.v

.noexc49:                                         ; preds = %bb.k
  %i.co = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.d, i64 noundef 4)
          to label %bb.l unwind label %bb.v       ; 0 uses

bb.l:                                             ; preds = %.noexc49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  invoke void @_Z8writeF32Phf(ptr noundef nonnull %i.c, float noundef %i.cq)
          to label %.noexc51 unwind label %bb.v

.noexc51:                                         ; preds = %bb.l
  %i.cr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.c, i64 noundef 4)
          to label %bb.m unwind label %bb.v       ; 0 uses

bb.m:                                             ; preds = %.noexc51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  invoke void @_Z8writeF32Phf(ptr noundef nonnull %i.b, float noundef %i.ct)
          to label %.noexc54 unwind label %bb.v

.noexc54:                                         ; preds = %bb.m
  %i.cu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.b, i64 noundef 4)
          to label %bb.n unwind label %bb.v       ; 0 uses

bb.n:                                             ; preds = %.noexc54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cw = load i8, ptr %i.cv, align 4, !tbaa !201, !range !118, !noundef !119
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.cy = load i8, ptr %i.cx, align 4, !tbaa !202, !range !118, !noundef !119
  %i.cz = shl nuw nsw i8 %i.cy, 1
  %i.da = or disjoint i8 %i.cz, %i.cw
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.dc = load i8, ptr %i.db, align 4, !tbaa !203, !range !118, !noundef !119
  %i.dd = shl nuw nsw i8 %i.dc, 2
  %i.de = or disjoint i8 %i.da, %i.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i8 %i.de, ptr %i.a, align 1, !tbaa !95
  %i.df = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.o unwind label %bb.v       ; 0 uses

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !204)
  call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.dg, ptr %0, align 8, !tbaa !93, !alias.scope !210
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.dh, align 8, !tbaa !94, !alias.scope !210
  store i8 0, ptr %i.dg, align 8, !tbaa !95, !alias.scope !210
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !176, !noalias !210 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.dj, null
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !noalias !210 ; 2 uses
  %i.dm = icmp ugt ptr %i.dj, %i.dl
  %.08.i.i.i = select i1 %i.dm, ptr %i.dj, ptr %i.dl ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !180, !noalias !210 ; 2 uses
  %i.dp = ptrtoint ptr %.08.i.i.i to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.do, i64 noundef %i.dr)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.q ; 0 uses

bb.q:                                             ; preds = %bb.r, %bb.p
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = load ptr, ptr %0, align 8, !tbaa !97, !alias.scope !210 ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.dg
  br i1 %i.dv, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.q
  %i.dw = load i64, ptr %i.dg, align 8, !tbaa !95, !alias.scope !210
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #33
  br label %.body

bb.r:                                             ; preds = %bb.o
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.dy)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.q

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.r, %bb.p
  %i.dz = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.dz, ptr %3, align 8, !tbaa !9
  %i.ea = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.eb = getelementptr i8, ptr %i.dz, i64 -24
  %i.ec = load i64, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds i8, ptr %3, i64 %i.ec
  store ptr %i.ea, ptr %i.ed, align 8, !tbaa !9
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ee, align 8, !tbaa !9
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !97 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ei = icmp eq ptr %i.eg, %i.eh
  br i1 %i.ei, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ej = load i64, ptr %i.eh, align 8, !tbaa !95
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ek) #33
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ee, align 8, !tbaa !9
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.el) #32
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.em) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

bb.s:                                             ; preds = %.noexc31, %.noexc30, %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.t:                                             ; preds = %bb.b
  %i.eo = landingpad { ptr, i32 }
          cleanup
end_hunk_0
