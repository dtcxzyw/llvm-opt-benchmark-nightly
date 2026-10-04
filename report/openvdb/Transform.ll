Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/Transform?download=true
inline.NumInlined: 2287
inline.NumDeleted: 431
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZNK7openvdb5v13_04math9Transform10isIdentityEv:bb.a

bb.m:                                             ; preds = %bb.k
  %i.ao = atomicrmw volatile add ptr %i.ak, i32 1 acq_rel, align 4, !noalias !187 ; 0 uses
  %.pre = load ptr, ptr %2, align 8, !tbaa !87
  br label %_ZN7openvdb5v13_013StaticPtrCastINS0_4math19NonlinearFrustumMapENS2_7MapBaseEEESt10shared_ptrIT_ERKS5_IT0_E.exit

_ZN7openvdb5v13_013StaticPtrCastINS0_4math19NonlinearFrustumMapENS2_7MapBaseEEESt10shared_ptrIT_ERKS5_IT0_E.exit: ; preds = %bb.j, %bb.l, %bb.m
  %i.ap = phi ptr [ %i.ag, %bb.j ], [ %i.ag, %bb.l ], [ %.pre, %bb.m ]
  %i.aq = invoke noundef zeroext i1 @_ZNK7openvdb5v13_04math19NonlinearFrustumMap10isIdentityEv(ptr noundef nonnull align 8 dereferenceable(520) %i.ap)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %_ZN7openvdb5v13_013StaticPtrCastINS0_4math19NonlinearFrustumMapENS2_7MapBaseEEESt10shared_ptrIT_ERKS5_IT0_E.exit
  %i.ar = load ptr, ptr %i.ah, align 8, !tbaa !32 ; 8 uses
  %.not.i.i3 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i3, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math19NonlinearFrustumMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %i.at = load atomic i64, ptr %i.as acquire, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.as, align 8, !tbaa !36
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 0, ptr %i.aw, align 4, !tbaa !37
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !34
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #24, !inline_history !9
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !34
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  tail call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #24, !inline_history !9
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math19NonlinearFrustumMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i4 = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i4, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = add nsw i32 %i.av, -1
  store i32 %i.be, ptr %i.as, align 8, !tbaa !52
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5

bb.s:                                             ; preds = %bb.q
  %i.bf = atomicrmw volatile add ptr %i.as, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i6 = phi i32 [ %i.av, %bb.r ], [ %i.bf, %bb.s ]
  %i.bg = icmp eq i32 %.0.i.i.i.i6, 1
  br i1 %i.bg, label %bb.t, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math19NonlinearFrustumMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !53

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #24
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math19NonlinearFrustumMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7openvdb5v13_04math19NonlinearFrustumMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.n, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.v

bb.u:                                             ; preds = %_ZN7openvdb5v13_013StaticPtrCastINS0_4math19NonlinearFrustumMapENS2_7MapBaseEEESt10shared_ptrIT_ERKS5_IT0_E.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7openvdb5v13_04math19NonlinearFrustumMapELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.bh

bb.v:                                             ; preds = %bb.i, %_ZNSt12__shared_ptrIN7openvdb5v13_04math19NonlinearFrustumMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.0 = phi i1 [ %i.m, %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.aq, %_ZNSt12__shared_ptrIN7openvdb5v13_04math19NonlinearFrustumMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ false, %bb.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7openvdb5v13_04math7MapBase6isTypeINS1_19NonlinearFrustumMapEEEbv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.b = load ptr, ptr %0, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !190)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !43, !alias.scope !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !190
  store i64 19, ptr %i.a, align 8, !tbaa !88, !noalias !190
  %i.f = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.f, ptr %2, align 8, !tbaa !48, !alias.scope !190
  %i.g = load i64, ptr %i.a, align 8, !tbaa !88, !noalias !190 ; 3 uses
  store i64 %i.g, ptr %i.e, align 8, !tbaa !47, !alias.scope !190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.f, ptr noundef nonnull align 1 dereferenceable(19) @.str.45, i64 19, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.g, ptr %i.h, align 8, !tbaa !46, !alias.scope !190
  %i.i = load ptr, ptr %2, align 8, !tbaa !48, !alias.scope !190
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  store i8 0, ptr %i.j, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !190
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !46   ; 3 uses
  %i.m = load i64, ptr %i.h, align 8, !tbaa !46   ; 2 uses
  %i.n = icmp eq i64 %i.l, %i.m
  br i1 %i.n, label %bb.c, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge: ; preds = %bb.b
  %.pre = load ptr, ptr %2, align 8, !tbaa !48
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.c:                                             ; preds = %bb.b
  %i.o = icmp eq i64 %i.l, 0
  %.pre8 = load ptr, ptr %2, align 8, !tbaa !48   ; 3 uses
  br i1 %i.o, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %1, align 8, !tbaa !48
  %bcmp.i = call i32 @bcmp(ptr %i.p, ptr %.pre8, i64 %i.l)
  %i.q = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge, %bb.c, %bb.d
  %i.r = phi ptr [ %.pre, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %.pre8, %bb.d ], [ %.pre8, %bb.c ] ; 2 uses
  %i.s = phi i1 [ false, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %i.q, %bb.d ], [ true, %bb.c ]
  %i.t = icmp eq ptr %i.r, %i.e
  br i1 %i.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.u = icmp ult i64 %i.m, 16
  call void @llvm.assume(i1 %i.u)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.v = load i64, ptr %i.e, align 8, !tbaa !47
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.w) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.x = load ptr, ptr %1, align 8, !tbaa !48     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !47
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret i1 %i.s

bb.e:                                             ; preds = %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.ad = load ptr, ptr %1, align 8, !tbaa !48    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.e
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !47
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %i.ac
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7openvdb5v13_04math19NonlinearFrustumMap10isIdentityEv(ptr noundef nonnull align 8 dereferenceable(520) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load double, ptr %i.a, align 8, !tbaa !25
  %i.c = fadd double %i.b, -1.000000e+00
  %i.d = tail call noundef double @llvm.fabs.f64(double %i.c)
  %i.e = fcmp ule double %i.d, 1.000000e-15
  br i1 %i.e, label %bb.b, label %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit27

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load double, ptr %i.g, align 8, !tbaa !25, !noalias !201 ; 2 uses
  %i.i = fsub double 0.000000e+00, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.l = load double, ptr %i.k, align 8, !tbaa !89, !noalias !202 ; 2 uses
  %i.m = fmul double %i.i, %i.l                   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.o = load double, ptr %i.n, align 8, !tbaa !90, !noalias !202 ; 2 uses
  %i.p = tail call double @llvm.fmuladd.f64(double %i.o, double %i.m, double 1.000000e+00)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.r = load double, ptr %i.q, align 8, !tbaa !91, !noalias !202 ; 2 uses
  %i.s = fdiv double %i.p, %i.r                   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.x = load double, ptr %i.w, align 8, !tbaa !25, !noalias !203 ; 3 uses
  %i.y = load <2 x double>, ptr %i.f, align 8, !tbaa !25, !noalias !201 ; 3 uses
  %i.z = extractelement <2 x double> %i.y, i64 0
  %i.aa = fsub double 1.000000e+00, %i.z
  %i.ab = extractelement <2 x double> %i.y, i64 1
  %i.ac = fsub double 0.000000e+00, %i.ab
  %i.ad = load <2 x double>, ptr %i.j, align 8, !tbaa !25, !noalias !202 ; 3 uses
  %i.ae = extractelement <2 x double> %i.ad, i64 0
  %i.af = fsub double %i.aa, %i.ae
  %i.ag = extractelement <2 x double> %i.ad, i64 1
  %i.ah = fsub double %i.ac, %i.ag                ; 2 uses
  %i.ai = fmul double %i.af, %i.s                 ; 3 uses
  %i.aj = fmul double %i.ah, %i.s                 ; 3 uses
  %i.ak = load <2 x double>, ptr %i.u, align 8, !tbaa !25, !noalias !203 ; 3 uses
  %i.al = extractelement <2 x double> %i.ak, i64 0 ; 2 uses
  %i.am = fmul double %i.aj, %i.al
  %i.an = load <2 x double>, ptr %i.t, align 8, !tbaa !25, !noalias !203 ; 3 uses
  %i.ao = extractelement <2 x double> %i.an, i64 0 ; 2 uses
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.ao, double %i.am)
  %1 = extractelement <2 x double> %i.ak, i64 1   ; 2 uses
  %2 = fmul double %i.aj, %1
  %i.aq = extractelement <2 x double> %i.an, i64 1 ; 2 uses
  %3 = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.aq, double %2)
  %4 = load <2 x double>, ptr %i.v, align 8, !tbaa !25, !noalias !203 ; 3 uses
  %i.ar = extractelement <2 x double> %4, i64 0   ; 2 uses
  %i.as = tail call double @llvm.fmuladd.f64(double %i.m, double %i.ar, double %i.ap)
  %5 = fadd double %i.x, %i.as                    ; 3 uses
  %6 = extractelement <2 x double> %4, i64 1      ; 2 uses
  %i.at = tail call double @llvm.fmuladd.f64(double %i.m, double %6, double %3)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.av = load double, ptr %i.au, align 8, !tbaa !25, !noalias !203 ; 3 uses
  %i.aw = fadd double %i.av, %i.at                ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !25, !noalias !203 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ba = load double, ptr %i.az, align 8, !tbaa !25, !noalias !203 ; 3 uses
  %i.bb = fmul double %i.aj, %i.ba
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.ay, double %i.bb)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.be = load double, ptr %i.bd, align 8, !tbaa !25, !noalias !203 ; 3 uses
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.m, double %i.be, double %i.bc)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !25, !noalias !203 ; 3 uses
  %i.bi = fadd double %i.bh, %i.bf                ; 3 uses
  %i.bj = fadd double %5, -1.000000e+00           ; 2 uses
  %i.bk = tail call noundef double @llvm.fabs.f64(double %i.bj)
  %i.bl = fcmp ogt double %i.bk, f0x3E7AD7F29ABCAF48
  br i1 %i.bl, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i: ; preds = %bb.b
  %i.bm = tail call noundef double @llvm.fabs.f64(double %5)
  %i.bn = fcmp olt double %i.bm, 1.000000e+00
  %..i.i = select i1 %i.bn, double 1.000000e+00, double %5
  %i.bo = fdiv double %i.bj, %..i.i
  %i.bp = tail call noundef double @llvm.fabs.f64(double %i.bo)
  %i.bq = fcmp ugt double %i.bp, f0x3E7AD7F29ABCAF48
  br i1 %i.bq, label %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit27, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i, %bb.b
  %i.br = tail call noundef double @llvm.fabs.f64(double %i.aw)
  %i.bs = fcmp ogt double %i.br, f0x3E7AD7F29ABCAF48
  br i1 %i.bs, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i
  %i.bt = fdiv double %i.aw, %i.aw
  %i.bu = tail call noundef double @llvm.fabs.f64(double %i.bt)
  %i.bv = fcmp ugt double %i.bu, f0x3E7AD7F29ABCAF48
  br i1 %i.bv, label %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit27, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i
  %i.bw = tail call noundef double @llvm.fabs.f64(double %i.bi)
  %i.bx = fcmp ogt double %i.bw, f0x3E7AD7F29ABCAF48
  br i1 %i.bx, label %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit, label %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit.thread41

_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit:   ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i
  %i.by = fdiv double %i.bi, %i.bi
  %i.bz = tail call noundef double @llvm.fabs.f64(double %i.by)
  %i.ca = fcmp ugt double %i.bz, f0x3E7AD7F29ABCAF48
  br i1 %i.ca, label %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit27, label %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit.thread41

_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit.thread41: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i, %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit
  %i.cb = fsub <2 x double> <double 0.000000e+00, double 1.000000e+00>, %i.y
  %i.cc = fsub <2 x double> %i.cb, %i.ad          ; 2 uses
  %i.cd = insertelement <2 x double> poison, double %i.s, i64 0
  %i.ce = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cf = fmul <2 x double> %i.cc, %i.ce          ; 4 uses
  %i.cg = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ch = fmul <2 x double> %i.cg, %i.ak
  %i.ci = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ci, <2 x double> %i.an, <2 x double> %i.ch)
  %7 = insertelement <2 x double> poison, double %i.m, i64 0
  %8 = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer
  %9 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %8, <2 x double> %4, <2 x double> %i.cj) ; 2 uses
  %i.ck = extractelement <2 x double> %9, i64 0
  %10 = fadd double %i.x, %i.ck                   ; 3 uses
  %11 = extractelement <2 x double> %9, i64 1
  %i.cl = fadd double %i.av, %11                  ; 3 uses
  %i.cm = extractelement <2 x double> %i.cf, i64 1
  %i.cn = fmul double %i.cm, %i.ba
  %i.co = extractelement <2 x double> %i.cf, i64 0
  %i.cp = tail call double @llvm.fmuladd.f64(double %i.co, double %i.ay, double %i.cn)
  %i.cq = tail call double @llvm.fmuladd.f64(double %i.m, double %i.be, double %i.cp)
  %i.cr = fadd double %i.bh, %i.cq                ; 3 uses
  %i.cs = tail call noundef double @llvm.fabs.f64(double %10)
  %i.ct = fcmp ogt double %i.cs, f0x3E7AD7F29ABCAF48
  br i1 %i.ct, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i12, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i7

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i12: ; preds = %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit.thread41
  %i.cu = fdiv double %10, %10
  %i.cv = tail call noundef double @llvm.fabs.f64(double %i.cu)
  %i.cw = fcmp ugt double %i.cv, f0x3E7AD7F29ABCAF48
  br i1 %i.cw, label %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit27, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i7

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i7: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i12, %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit.thread41
  %i.cx = fadd double %i.cl, -1.000000e+00        ; 2 uses
  %i.cy = tail call noundef double @llvm.fabs.f64(double %i.cx)
  %i.cz = fcmp ogt double %i.cy, f0x3E7AD7F29ABCAF48
  br i1 %i.cz, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i10, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i8

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i10: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i7
  %i.da = tail call noundef double @llvm.fabs.f64(double %i.cl)
  %i.db = fcmp olt double %i.da, 1.000000e+00
  %..i5.i11 = select i1 %i.db, double 1.000000e+00, double %i.cl
  %i.dc = fdiv double %i.cx, %..i5.i11
  %i.dd = tail call noundef double @llvm.fabs.f64(double %i.dc)
  %i.de = fcmp ugt double %i.dd, f0x3E7AD7F29ABCAF48
  br i1 %i.de, label %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit27, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i8

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i8: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i10, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i7
  %i.df = tail call noundef double @llvm.fabs.f64(double %i.cr)
  %i.dg = fcmp ogt double %i.df, f0x3E7AD7F29ABCAF48
  br i1 %i.dg, label %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit14, label %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit14.thread42

_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit14: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i8
  %i.dh = fdiv double %i.cr, %i.cr
  %i.di = tail call noundef double @llvm.fabs.f64(double %i.dh)
  %i.dj = fcmp ugt double %i.di, f0x3E7AD7F29ABCAF48
  br i1 %i.dj, label %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit27, label %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit14.thread42

_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit14.thread42: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i8, %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit14
  %i.dk = fsub double 1.000000e+00, %i.h
  %i.dl = fmul double %i.dk, %i.l                 ; 4 uses
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.o, double %i.dl, double 1.000000e+00)
  %i.dn = fdiv double %i.dm, %i.r                 ; 2 uses
  %i.do = extractelement <2 x double> %i.cc, i64 0
  %i.dp = fmul double %i.do, %i.dn                ; 3 uses
  %i.dq = fmul double %i.ah, %i.dn                ; 3 uses
  %i.dr = fmul double %i.dq, %i.al
  %i.ds = tail call double @llvm.fmuladd.f64(double %i.dp, double %i.ao, double %i.dr)
  %i.dt = tail call double @llvm.fmuladd.f64(double %i.dl, double %i.ar, double %i.ds)
  %i.du = fadd double %i.x, %i.dt                 ; 3 uses
  %i.dv = fmul double %i.dq, %1
  %i.dw = tail call double @llvm.fmuladd.f64(double %i.dp, double %i.aq, double %i.dv)
  %i.dx = tail call double @llvm.fmuladd.f64(double %i.dl, double %6, double %i.dw)
  %i.dy = fadd double %i.av, %i.dx                ; 3 uses
  %i.dz = fmul double %i.dq, %i.ba
  %i.ea = tail call double @llvm.fmuladd.f64(double %i.dp, double %i.ay, double %i.dz)
  %i.eb = tail call double @llvm.fmuladd.f64(double %i.dl, double %i.be, double %i.ea)
  %i.ec = fadd double %i.bh, %i.eb                ; 3 uses
  %i.ed = tail call noundef double @llvm.fabs.f64(double %i.du)
  %i.ee = fcmp ogt double %i.ed, f0x3E7AD7F29ABCAF48
  br i1 %i.ee, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i25, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i20

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i25: ; preds = %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit14.thread42
  %i.ef = fdiv double %i.du, %i.du
  %i.eg = tail call noundef double @llvm.fabs.f64(double %i.ef)
  %i.eh = fcmp ugt double %i.eg, f0x3E7AD7F29ABCAF48
  br i1 %i.eh, label %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit27, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i20

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i20: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i25, %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit14.thread42
  %i.ei = tail call noundef double @llvm.fabs.f64(double %i.dy)
  %i.ej = fcmp ogt double %i.ei, f0x3E7AD7F29ABCAF48
  br i1 %i.ej, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i23, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i21

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i23: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i20
  %i.ek = fdiv double %i.dy, %i.dy
  %i.el = tail call noundef double @llvm.fabs.f64(double %i.ek)
  %i.em = fcmp ugt double %i.el, f0x3E7AD7F29ABCAF48
  br i1 %i.em, label %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit27, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i21

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i21: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i23, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i20
  %i.en = fadd double %i.ec, -1.000000e+00        ; 2 uses
  %i.eo = tail call noundef double @llvm.fabs.f64(double %i.en)
  %i.ep = fcmp ogt double %i.eo, f0x3E7AD7F29ABCAF48
  br i1 %i.ep, label %bb.c, label %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit27

bb.c:                                             ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i21
  %i.eq = tail call noundef double @llvm.fabs.f64(double %i.ec)
  %i.er = fcmp olt double %i.eq, 1.000000e+00
  %..i8.i22 = select i1 %i.er, double 1.000000e+00, double %i.ec
  %i.es = fdiv double %i.en, %..i8.i22
  %i.et = tail call noundef double @llvm.fabs.f64(double %i.es)
  %i.eu = fcmp ole double %i.et, f0x3E7AD7F29ABCAF48
  br label %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit27

_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit27: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i12, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i10, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i, %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit, %bb.c, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i21, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i23, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i25, %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit14, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i21 ], [ false, %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit ], [ false, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i ], [ false, %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit14 ], [ false, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i23 ], [ false, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i25 ], [ %i.eu, %bb.c ], [ false, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i ], [ false, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i10 ], [ false, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i12 ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN7openvdb5v13_04math19NonlinearFrustumMapELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !37
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !7
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !7
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !52
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !53

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_04math9Transform9preRotateEdNS1_4AxisE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, double noundef %1, i32 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.a = load ptr, ptr %0, align 8, !tbaa !31     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, double noundef %1, i32 noundef %2)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load <2 x ptr>, ptr %3, align 16, !tbaa !54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !32   ; 8 uses
  store <2 x ptr> %i.g, ptr %0, align 8, !tbaa !54
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.i, align 8, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !37
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !34
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #24, !inline_history !4
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #24, !inline_history !4
  br label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !52
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %bb.e ], [ %i.v, %bb.f ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.g, label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit, !prof !53

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #24
  br label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit

_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !32   ; 8 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEaSEOS4_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.y, align 8, !tbaa !36
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !37
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !34
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #24, !inline_history !5
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !34
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #24, !inline_history !5
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !52
end_hunk_0
begin_hunk_1_@_ZNK7openvdb5v13_04math4Mat4IdE6invertERS3_d:bb.a
  %i.fy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fv, <2 x double> %i.fx, <2 x double> %i.fu)
  store <2 x double> %i.fy, ptr %i.fs, align 8, !tbaa !25
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.gb = load <2 x double>, ptr %i.fz, align 8, !tbaa !25
  %i.gc = load <2 x double>, ptr %i.ga, align 8, !tbaa !25
  %i.gd = fneg <2 x double> %i.gb
  %i.ge = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gd, <2 x double> %i.fx, <2 x double> %i.gc)
  store <2 x double> %i.ge, ptr %i.ga, align 8, !tbaa !25
  br label %.loopexit.2174

.loopexit.2174:                                   ; preds = %.preheader.2172, %.loopexit.1171
  %invariant.gep132.1 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.gg = load double, ptr %invariant.gep132.1, align 8, !tbaa !25 ; 2 uses
  %i.gh = fcmp oeq double %i.gg, 0.000000e+00
  br i1 %i.gh, label %.loopexit.1, label %.preheader.1

.thread:                                          ; preds = %._crit_edge, %.loopexit.2
  %.398 = phi i1 [ %i.eo, %.loopexit.2 ], [ false, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret i1 %.398
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7openvdb5v13_04math4Mat4IdE2eqERKS3_d(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, double noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !25
  %i.b = load double, ptr %1, align 8, !tbaa !25
  %i.c = fsub double %i.a, %i.b
  %i.d = tail call noundef double @llvm.fabs.f64(double %i.c)
  %i.e = fcmp ule double %i.d, %2
  br i1 %i.e, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load double, ptr %i.f, align 8, !tbaa !25
  %i.i = load double, ptr %i.g, align 8, !tbaa !25
  %i.j = fsub double %i.h, %i.i
  %i.k = tail call noundef double @llvm.fabs.f64(double %i.j)
  %i.l = fcmp ule double %i.k, %2
  br i1 %i.l, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load double, ptr %i.m, align 8, !tbaa !25
  %i.p = load double, ptr %i.n, align 8, !tbaa !25
  %i.q = fsub double %i.o, %i.p
  %i.r = tail call noundef double @llvm.fabs.f64(double %i.q)
  %i.s = fcmp ule double %i.r, %2
  br i1 %i.s, label %bb.d, label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load double, ptr %i.t, align 8, !tbaa !25
  %i.w = load double, ptr %i.u, align 8, !tbaa !25
  %i.x = fsub double %i.v, %i.w
  %i.y = tail call noundef double @llvm.fabs.f64(double %i.x)
  %i.z = fcmp ule double %i.y, %2
  br i1 %i.z, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = load double, ptr %i.aa, align 8, !tbaa !25
  %i.ad = load double, ptr %i.ab, align 8, !tbaa !25
  %i.ae = fsub double %i.ac, %i.ad
  %i.af = tail call noundef double @llvm.fabs.f64(double %i.ae)
  %i.ag = fcmp ule double %i.af, %2
  br i1 %i.ag, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aj = load double, ptr %i.ah, align 8, !tbaa !25
  %i.ak = load double, ptr %i.ai, align 8, !tbaa !25
  %i.al = fsub double %i.aj, %i.ak
  %i.am = tail call noundef double @llvm.fabs.f64(double %i.al)
  %i.an = fcmp ule double %i.am, %2
  br i1 %i.an, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aq = load double, ptr %i.ao, align 8, !tbaa !25
  %i.ar = load double, ptr %i.ap, align 8, !tbaa !25
  %i.as = fsub double %i.aq, %i.ar
  %i.at = tail call noundef double @llvm.fabs.f64(double %i.as)
  %i.au = fcmp ule double %i.at, %2
  br i1 %i.au, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ax = load double, ptr %i.av, align 8, !tbaa !25
  %i.ay = load double, ptr %i.aw, align 8, !tbaa !25
  %i.az = fsub double %i.ax, %i.ay
  %i.ba = tail call noundef double @llvm.fabs.f64(double %i.az)
  %i.bb = fcmp ule double %i.ba, %2
  br i1 %i.bb, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.be = load double, ptr %i.bc, align 8, !tbaa !25
  %i.bf = load double, ptr %i.bd, align 8, !tbaa !25
  %i.bg = fsub double %i.be, %i.bf
  %i.bh = tail call noundef double @llvm.fabs.f64(double %i.bg)
  %i.bi = fcmp ule double %i.bh, %2
  br i1 %i.bi, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bl = load double, ptr %i.bj, align 8, !tbaa !25
  %i.bm = load double, ptr %i.bk, align 8, !tbaa !25
  %i.bn = fsub double %i.bl, %i.bm
  %i.bo = tail call noundef double @llvm.fabs.f64(double %i.bn)
  %i.bp = fcmp ule double %i.bo, %2
  br i1 %i.bp, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bs = load double, ptr %i.bq, align 8, !tbaa !25
  %i.bt = load double, ptr %i.br, align 8, !tbaa !25
  %i.bu = fsub double %i.bs, %i.bt
  %i.bv = tail call noundef double @llvm.fabs.f64(double %i.bu)
  %i.bw = fcmp ule double %i.bv, %2
  br i1 %i.bw, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bz = load double, ptr %i.bx, align 8, !tbaa !25
  %i.ca = load double, ptr %i.by, align 8, !tbaa !25
  %i.cb = fsub double %i.bz, %i.ca
  %i.cc = tail call noundef double @llvm.fabs.f64(double %i.cb)
  %i.cd = fcmp ule double %i.cc, %2
  br i1 %i.cd, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cg = load double, ptr %i.ce, align 8, !tbaa !25
  %i.ch = load double, ptr %i.cf, align 8, !tbaa !25
  %i.ci = fsub double %i.cg, %i.ch
  %i.cj = tail call noundef double @llvm.fabs.f64(double %i.ci)
  %i.ck = fcmp ule double %i.cj, %2
  br i1 %i.ck, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.cn = load double, ptr %i.cl, align 8, !tbaa !25
  %i.co = load double, ptr %i.cm, align 8, !tbaa !25
  %i.cp = fsub double %i.cn, %i.co
  %i.cq = tail call noundef double @llvm.fabs.f64(double %i.cp)
  %i.cr = fcmp ule double %i.cq, %2
  br i1 %i.cr, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.cu = load double, ptr %i.cs, align 8, !tbaa !25
  %i.cv = load double, ptr %i.ct, align 8, !tbaa !25
  %i.cw = fsub double %i.cu, %i.cv
  %i.cx = tail call noundef double @llvm.fabs.f64(double %i.cw)
  %i.cy = fcmp ule double %i.cx, %2
  br i1 %i.cy, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.db = load double, ptr %i.cz, align 8, !tbaa !25
  %i.dc = load double, ptr %i.da, align 8, !tbaa !25
  %i.dd = fsub double %i.db, %i.dc
  %i.de = tail call noundef double @llvm.fabs.f64(double %i.dd)
  %i.df = fcmp ule double %i.de, %2
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa = phi i1 [ false, %bb.a ], [ false, %bb.i ], [ false, %bb.b ], [ %i.df, %bb.p ], [ false, %bb.c ], [ false, %bb.k ], [ false, %bb.d ], [ false, %bb.o ], [ false, %bb.e ], [ false, %bb.j ], [ false, %bb.f ], [ false, %bb.n ], [ false, %bb.g ], [ false, %bb.l ], [ false, %bb.h ], [ false, %bb.m ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #16

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_04math9isUnitaryINS1_4Mat3IdEEEEbRKT_(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load <2 x double>, ptr %i.b, align 8, !tbaa !25 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load <2 x double>, ptr %i.e, align 8, !tbaa !25 ; 5 uses
  %i.g = load double, ptr %i.a, align 8, !tbaa !25 ; 5 uses
  %i.h = load <2 x double>, ptr %i.c, align 8, !tbaa !25 ; 7 uses
  %i.i = fneg <2 x double> %i.h
  %i.j = shufflevector <2 x double> %i.d, <2 x double> %i.f, <2 x i32> <i32 0, i32 2>
  %i.k = fmul <2 x double> %i.j, %i.i
  %i.l = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.m = insertelement <2 x double> %i.l, double %i.g, i64 0
  %i.n = shufflevector <2 x double> %i.d, <2 x double> %i.h, <2 x i32> <i32 3, i32 1> ; 2 uses
  %i.o = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.m, <2 x double> %i.n, <2 x double> %i.k) ; 2 uses
  %i.p = load <2 x double>, ptr %0, align 8, !tbaa !25 ; 7 uses
  %i.q = insertelement <2 x double> %i.p, double %i.g, i64 0
  %i.r = fneg <2 x double> %i.d
  %i.s = shufflevector <2 x double> %i.o, <2 x double> %i.r, <2 x i32> <i32 3, i32 1>
  %i.t = fmul <2 x double> %i.q, %i.s
  %i.u = shufflevector <2 x double> %i.f, <2 x double> %i.p, <2 x i32> <i32 0, i32 2>
  %i.v = shufflevector <2 x double> %i.h, <2 x double> %i.o, <2 x i32> <i32 0, i32 2>
  %i.w = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.v, <2 x double> %i.t) ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load double, ptr %i.x, align 8, !tbaa !25 ; 3 uses
  %i.z = extractelement <2 x double> %i.w, i64 0
  %i.aa = extractelement <2 x double> %i.w, i64 1
  %i.ab = tail call noundef double @llvm.fmuladd.f64(double %i.y, double %i.z, double %i.aa)
  %i.ac = tail call noundef double @llvm.fabs.f64(double %i.ab)
  %i.ad = fadd double %i.ac, -1.000000e+00
  %i.ae = tail call noundef double @llvm.fabs.f64(double %i.ad)
  %i.af = fcmp ule double %i.ae, 1.000000e-15
  br i1 %i.af, label %bb.b, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.b:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !25
  %i.ai = extractelement <2 x double> %i.d, i64 1 ; 2 uses
  %i.aj = shufflevector <2 x double> %i.f, <2 x double> %i.p, <2 x i32> <i32 3, i32 1>
  %i.ak = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.al = fmul <2 x double> %i.aj, %i.ak
  %i.am = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = shufflevector <2 x double> %i.p, <2 x double> %i.f, <2 x i32> <i32 0, i32 2>
  %i.ao = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> %i.an, <2 x double> %i.al)
  %1 = insertelement <2 x double> poison, double %i.y, i64 0 ; 2 uses
  %2 = shufflevector <2 x double> %1, <2 x double> poison, <2 x i32> zeroinitializer
  %3 = shufflevector <2 x double> %1, <2 x double> %i.d, <2 x i32> <i32 0, i32 2>
  %4 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %2, <2 x double> %3, <2 x double> %i.ao) ; 2 uses
  %5 = extractelement <2 x double> %i.h, i64 0    ; 2 uses
  %6 = fmul double %5, %i.ah
  %7 = extractelement <2 x double> %i.p, i64 0
  %8 = tail call double @llvm.fmuladd.f64(double %7, double %i.ai, double %6)
  %i.ap = extractelement <2 x double> %i.h, i64 1 ; 3 uses
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.y, double %i.ap, double %8) ; 2 uses
  %9 = fmul double %i.g, %i.g
  %10 = extractelement <2 x double> %i.f, i64 0   ; 3 uses
  %11 = tail call double @llvm.fmuladd.f64(double %10, double %10, double %9)
  %12 = extractelement <2 x double> %i.d, i64 0   ; 2 uses
  %13 = tail call double @llvm.fmuladd.f64(double %12, double %12, double %11)
  %14 = fmul double %i.g, %5
  %foldExtExtBinop = fmul <2 x double> %i.h, %i.h
  %i.ar = tail call double @llvm.fmuladd.f64(double %10, double %i.ai, double %14)
  %15 = insertelement <2 x double> poison, double %i.ar, i64 0
  %16 = shufflevector <2 x double> %15, <2 x double> %foldExtExtBinop, <2 x i32> <i32 0, i32 2>
  %i.as = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.d, <2 x double> %i.n, <2 x double> %16) ; 2 uses
  %i.at = extractelement <2 x double> %i.as, i64 1
  %i.au = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.ap, double %i.at)
  %i.av = load atomic i8, ptr @_ZGVZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity acquire, align 8
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %bb.c, label %_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit, !prof !94

bb.c:                                             ; preds = %bb.b
  %i.ax = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity) #24
  %.not.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i, label %_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store double 1.000000e+00, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 8), i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 32), align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 40), i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 64), align 8, !tbaa !25
  %i.ay = tail call ptr @llvm.invariant.start.p0(i64 72, ptr nonnull @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity) #24
  br label %_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit

_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit:   ; preds = %bb.b, %bb.c, %bb.d
  %i.az = load double, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, align 8, !tbaa !25
  %17 = extractelement <2 x double> %4, i64 0
  %i.ba = fsub double %17, %i.az
  %i.bb = tail call noundef double @llvm.fabs.f64(double %i.ba)
  %i.bc = fcmp ule double %i.bb, 1.000000e-08
  br i1 %i.bc, label %bb.e, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.e:                                             ; preds = %_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit
  %i.bd = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 8), align 8, !tbaa !25
  %i.be = extractelement <2 x double> %4, i64 1   ; 2 uses
  %i.bf = fsub double %i.be, %i.bd
  %i.bg = tail call noundef double @llvm.fabs.f64(double %i.bf)
  %i.bh = fcmp ule double %i.bg, 1.000000e-08
  br i1 %i.bh, label %bb.f, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.f:                                             ; preds = %bb.e
  %i.bi = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 16), align 8, !tbaa !25
  %i.bj = fsub double %i.aq, %i.bi
  %i.bk = tail call noundef double @llvm.fabs.f64(double %i.bj)
  %i.bl = fcmp ule double %i.bk, 1.000000e-08
  br i1 %i.bl, label %bb.g, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.g:                                             ; preds = %bb.f
  %i.bm = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 24), align 8, !tbaa !25
  %i.bn = fsub double %i.be, %i.bm
  %i.bo = tail call noundef double @llvm.fabs.f64(double %i.bn)
  %i.bp = fcmp ule double %i.bo, 1.000000e-08
  br i1 %i.bp, label %bb.h, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.h:                                             ; preds = %bb.g
  %i.bq = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 32), align 8, !tbaa !25
  %i.br = fsub double %13, %i.bq
  %i.bs = tail call noundef double @llvm.fabs.f64(double %i.br)
  %i.bt = fcmp ule double %i.bs, 1.000000e-08
  br i1 %i.bt, label %bb.i, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.i:                                             ; preds = %bb.h
  %i.bu = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 40), align 8, !tbaa !25
  %i.bv = extractelement <2 x double> %i.as, i64 0 ; 2 uses
  %i.bw = fsub double %i.bv, %i.bu
  %i.bx = tail call noundef double @llvm.fabs.f64(double %i.bw)
  %i.by = fcmp ule double %i.bx, 1.000000e-08
  br i1 %i.by, label %bb.j, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.j:                                             ; preds = %bb.i
  %i.bz = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 48), align 8, !tbaa !25
  %i.ca = fsub double %i.aq, %i.bz
  %i.cb = tail call noundef double @llvm.fabs.f64(double %i.ca)
  %i.cc = fcmp ule double %i.cb, 1.000000e-08
  br i1 %i.cc, label %bb.k, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.k:                                             ; preds = %bb.j
  %i.cd = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 56), align 8, !tbaa !25
  %i.ce = fsub double %i.bv, %i.cd
  %i.cf = tail call noundef double @llvm.fabs.f64(double %i.ce)
  %i.cg = fcmp ule double %i.cf, 1.000000e-08
  br i1 %i.cg, label %bb.l, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.l:                                             ; preds = %bb.k
  %i.ch = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 64), align 8, !tbaa !25
  %i.ci = fsub double %i.au, %i.ch
  %i.cj = tail call noundef double @llvm.fabs.f64(double %i.ci)
  %i.ck = fcmp ule double %i.cj, 1.000000e-08
  br label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit:   ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.e ], [ false, %_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit ], [ %i.ck, %bb.l ]
  ret i1 %.0
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #17

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math3MatILj4EdE3strB5cxx11Ej(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 24 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  store i64 0, ptr %i.b, align 8, !tbaa !46
  store i8 0, ptr %i.a, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !43
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.d, align 8, !tbaa !46
  store i8 0, ptr %i.c, align 8, !tbaa !47
  %i.e = add i32 %2, 1
  %i.f = zext i32 %i.e to i64
  %i.g = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, i64 noundef %i.f, i8 noundef signext 32)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit: ; preds = %bb.a
  %i.h = load i64, ptr %i.b, align 8, !tbaa !46
  %i.i = icmp eq i64 %i.h, 4611686018427387903
  br i1 %i.i, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.31, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.preheader unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.preheader: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  %i.m = load i64, ptr %i.b, align 8, !tbaa !46
  %i.n = icmp eq i64 %i.m, 4611686018427387903
  br i1 %i.n, label %.invoke96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i28

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit35
  %i.o = icmp eq i64 %i.ck, 4611686018427387903
  br i1 %i.o, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i24

.invoke:                                          ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #26
          to label %.cont unwind label %bb.c

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i24: ; preds = %bb.b
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.6, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit27 unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %.invoke, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i, %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.invoke96:                                        ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.preheader
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #26
          to label %.cont97 unwind label %.loopexit.split-lp69

.cont97:                                          ; preds = %.invoke96
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit53
  %indvars.iv98 = phi i64 [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit53 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.preheader ] ; 3 uses
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.31, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit39 unwind label %.loopexit68 ; 0 uses

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3
  %i.s = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.6, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit35 unwind label %.loopexit68 ; 0 uses

.loopexit68:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i50
  %lpad.loopexit70 = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp69:                             ; preds = %.invoke96
  %lpad.loopexit.split-lp71 = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

split:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #26
          to label %.noexc37 unwind label %.loopexit.split-lp

.noexc37:                                         ; preds = %split
  unreachable

.loopexit:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i36.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i36.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i36.1
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp:                               ; preds = %split
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit39: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i28
  %i.t = shl nuw nsw i64 %indvars.iv98, 2         ; 4 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.t
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void (ptr, ptr, i64, ptr, ...) @_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @vsnprintf, i64 noundef 328, ptr noundef nonnull @.str.33, double noundef %.pre)
          to label %_ZNSt7__cxx119to_stringEd.exit unwind label %bb.e

_ZNSt7__cxx119to_stringEd.exit:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit39
  %i.u = load i64, ptr %i.k, align 8, !tbaa !46   ; 2 uses
  %i.v = load i64, ptr %i.b, align 8, !tbaa !46
  %i.w = sub i64 4611686018427387903, %i.v
  %i.x = icmp ult i64 %i.w, %i.u
  br i1 %i.x, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i

bb.d:                                             ; preds = %_ZNSt7__cxx119to_stringEd.exit.3, %_ZNSt7__cxx119to_stringEd.exit.2, %_ZNSt7__cxx119to_stringEd.exit.1, %_ZNSt7__cxx119to_stringEd.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #26
          to label %.noexc41 unwind label %.loopexit.split-lp64

.noexc41:                                         ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %_ZNSt7__cxx119to_stringEd.exit
  %i.y = load ptr, ptr %4, align 8, !tbaa !48
  %i.z = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.y, i64 noundef %i.u)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit unwind label %.loopexit63 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %i.aa = load ptr, ptr %4, align 8, !tbaa !48    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.l
  br i1 %i.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.ac = load i64, ptr %i.l, align 8, !tbaa !47
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.ae = load i64, ptr %i.b, align 8, !tbaa !46
  %i.af = and i64 %i.ae, -2
  %i.ag = icmp eq i64 %i.af, 4611686018427387902
  br i1 %i.ag, label %split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i36.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i36.1: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ah = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.5, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit39.1 unwind label %.loopexit ; 0 uses

end_hunk_1
begin_hunk_2_@_ZN7openvdb5v13_04math9AffineMapC2Ev:bb.a

bb.f:                                             ; preds = %_ZN7openvdb5v13_04math4Mat4IdE8identityEv.exit3
  %i.m = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity) #24
  %.not.i4 = icmp eq i32 %i.m, 0
  br i1 %.not.i4, label %_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store double 1.000000e+00, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 8), i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 32), align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 40), i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 64), align 8, !tbaa !25
  %i.n = tail call ptr @llvm.invariant.start.p0(i64 72, ptr nonnull @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity) #24
  br label %_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit

_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit:   ; preds = %bb.g, %bb.f, %_ZN7openvdb5v13_04math4Mat4IdE8identityEv.exit3
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.o, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 72, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 336
  store <2 x double> splat (double 1.000000e+00), ptr %i.p, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 352
  store <2 x double> splat (double 1.000000e+00), ptr %i.q, align 8, !tbaa !25
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i8 1, ptr %i.r, align 8, !tbaa !93
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 369
  store i8 1, ptr %i.s, align 1, !tbaa !83
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math19NonlinearFrustumMap4initEv(ptr noundef nonnull align 8 dereferenceable(520) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.881.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.881.0.copyload = load double, ptr %.sroa.881.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load double, ptr %i.c, align 8, !tbaa !25, !noalias !635
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.f = load <2 x double>, ptr %i.b, align 8
  %i.g = load <2 x double>, ptr %i.a, align 8, !tbaa !25, !noalias !635
  %i.h = fsub <2 x double> %i.f, %i.g             ; 5 uses
  store <2 x double> %i.h, ptr %i.e, align 8, !tbaa !25
  %i.i = fsub double %.sroa.881.0.copyload, %i.d  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 464
  store double %i.i, ptr %i.j, align 8, !tbaa !636
  %i.k = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.h)
  %i.l = fcmp ule <2 x double> %i.k, splat (double 1.000000e-15) ; 2 uses
  %i.m = extractelement <2 x i1> %i.l, i64 0
  %i.n = extractelement <2 x i1> %i.l, i64 1
  %or.cond = select i1 %i.m, i1 true, i1 %i.n
  %i.o = tail call double @llvm.fabs.f64(double %i.i)
  %i.p = fcmp ule double %i.o, 1.000000e-15
  %or.cond84 = select i1 %or.cond, i1 true, i1 %i.p
  br i1 %or.cond84, label %.critedge, label %bb.k

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.q, ptr %1, align 8, !tbaa !43
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !46
  store i8 0, ptr %i.q, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %.critedge
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.34, i64 noundef 83)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.t = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %3) #24 ; 0 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !48     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.x = load i64, ptr %i.v, align 8, !tbaa !47
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.i

bb.d:                                             ; preds = %.critedge
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.f ], [ %i.aa, %bb.e ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.g ], [ %i.z, %bb.d ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.ac = call ptr @__cxa_begin_catch(ptr %.1) #24 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = call ptr @__cxa_allocate_exception(i64 40) #24 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull @.str.19, ptr noundef nonnull align 8 dereferenceable(32) %1) #24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_015ArithmeticErrorE, i64 16), ptr %i.ad, align 8, !tbaa !34
  invoke void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTIN7openvdb5v13_015ArithmeticErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #26
          to label %bb.q unwind label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %1, align 8, !tbaa !48    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.q
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.j
  %i.ah = load i64, ptr %i.q, align 8, !tbaa !47
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %i.ae

bb.k:                                             ; preds = %bb.a
  %i.aj = fmul nnan <2 x double> %i.h, splat (double 5.000000e-01)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 472
  store <2 x double> %i.aj, ptr %i.ak, align 8, !tbaa !25
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.am = load double, ptr %i.al, align 8, !tbaa !76
  %i.an = fdiv double 1.000000e+00, %i.am
  %i.ao = fadd double %i.an, -1.000000e+00
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !77 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.as = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.at = insertelement <2 x double> %i.as, double %i.aq, i64 1
  %i.au = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.av = insertelement <2 x double> %i.au, double %i.i, i64 1
  %i.aw = fdiv <2 x double> %i.at, %i.av          ; 2 uses
  store <2 x double> %i.aw, ptr %i.ar, align 8, !tbaa !25
  %foldExtExtBinop = fmul nnan <2 x double> %i.h, %i.h
  %i.ax = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ay = extractelement <2 x double> %i.aw, i64 1
  %i.az = fdiv double %i.ay, %i.ax
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 504
  store double %i.az, ptr %i.ba, align 8, !tbaa !132
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  store i8 1, ptr %i.bb, align 8, !tbaa !133
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 416
  %.sroa.064.0.copyload = load double, ptr %i.bc, align 8 ; 2 uses
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 424
  %.sroa.566.0.copyload = load double, ptr %.sroa.566.0..sroa_idx, align 8
  %i.bd = fsub double %.sroa.064.0.copyload, %.sroa.566.0.copyload
  %i.be = tail call noundef double @llvm.fabs.f64(double %i.bd)
  %i.bf = fcmp ule double %i.be, 1.000000e-15
  br i1 %i.bf, label %bb.l, label %.sink.split

bb.l:                                             ; preds = %bb.k
  %.sroa.667.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 432
  %.sroa.667.0.copyload = load double, ptr %.sroa.667.0..sroa_idx, align 8
  %i.bg = fsub double %.sroa.064.0.copyload, %.sroa.667.0.copyload
  %i.bh = tail call noundef double @llvm.fabs.f64(double %i.bg)
  %i.bi = fcmp ule double %i.bh, 1.000000e-15
  br i1 %i.bi, label %bb.m, label %.sink.split

bb.m:                                             ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !25, !noalias !637
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !25, !noalias !637
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !25, !noalias !637 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !25, !noalias !637 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bs = load double, ptr %i.br, align 8, !tbaa !25, !noalias !637 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !25, !noalias !637 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !25, !noalias !637 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bz = load double, ptr %i.by, align 8, !tbaa !25, !noalias !637
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !25, !noalias !637
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !25, !noalias !637 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !25, !noalias !637 ; 3 uses
  %i.cg = insertelement <2 x double> poison, double %i.bo, i64 0 ; 2 uses
  %i.ch = shufflevector <2 x double> %i.cg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ci = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.cj = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ck = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.cl = insertelement <2 x double> %i.ck, double %i.cb, i64 1 ; 2 uses
  %i.cm = fmul <2 x double> %i.cl, zeroinitializer ; 2 uses
  %i.cn = insertelement <2 x double> poison, double %i.bk, i64 0
  %i.co = insertelement <2 x double> %i.cn, double %i.bz, i64 1 ; 3 uses
  %i.cp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.co, <2 x double> zeroinitializer, <2 x double> %i.cm) ; 4 uses
  %i.cq = fadd <2 x double> %i.co, %i.cm          ; 2 uses
  %i.cr = shufflevector <2 x double> %i.cq, <2 x double> %i.cp, <2 x i32> <i32 0, i32 2>
  %i.cs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ch, <2 x double> zeroinitializer, <2 x double> %i.cr)
  %i.ct = fadd <2 x double> %i.cj, %i.cs          ; 2 uses
  %i.cu = insertelement <2 x double> poison, double %i.cd, i64 0
  %i.cv = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cw = shufflevector <2 x double> %i.cq, <2 x double> %i.cp, <2 x i32> <i32 1, i32 3>
  %i.cx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cv, <2 x double> zeroinitializer, <2 x double> %i.cw)
  %i.cy = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.cz = shufflevector <2 x double> %i.cy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.da = fadd <2 x double> %i.cz, %i.cx          ; 2 uses
  %i.db = extractelement <2 x double> %i.ct, i64 0
  %i.dc = extractelement <2 x double> %i.ct, i64 1 ; 3 uses
  %i.dd = fsub double %i.db, %i.dc                ; 2 uses
  %i.de = extractelement <2 x double> %i.da, i64 0
  %i.df = extractelement <2 x double> %i.da, i64 1 ; 3 uses
  %i.dg = fsub double %i.de, %i.df                ; 2 uses
  %i.dh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.co, <2 x double> zeroinitializer, <2 x double> %i.cl)
  %4 = insertelement <2 x double> %i.cg, double %i.cd, i64 1
  %5 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %4, <2 x double> zeroinitializer, <2 x double> %i.dh) ; 2 uses
  %6 = extractelement <2 x double> %5, i64 0
  %7 = fadd double %6, %i.bq
  %8 = extractelement <2 x double> %5, i64 1
  %9 = fadd double %i.cf, %8
  %10 = fsub double %7, %i.dc                     ; 2 uses
  %11 = load double, ptr %i.bt, align 8, !tbaa !25, !noalias !637
  %12 = insertelement <2 x double> poison, double %11, i64 0
  %13 = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> zeroinitializer
  %14 = fmul <2 x double> %13, <double 0.000000e+00, double 1.000000e+00> ; 2 uses
  %15 = insertelement <2 x double> poison, double %i.bs, i64 0
  %16 = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> zeroinitializer
  %17 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %16, <2 x double> zeroinitializer, <2 x double> %14) ; 2 uses
  %18 = extractelement <2 x double> %17, i64 0    ; 2 uses
  %19 = tail call double @llvm.fmuladd.f64(double %i.bv, double 0.000000e+00, double %18)
  %20 = fadd double %i.bx, %19                    ; 2 uses
  %21 = extractelement <2 x double> %14, i64 0
  %22 = fadd double %i.bs, %21
  %23 = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.di = shufflevector <2 x double> %23, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dj = shufflevector <2 x double> %17, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.dk = insertelement <2 x double> %i.dj, double %22, i64 1
  %i.dl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.di, <2 x double> zeroinitializer, <2 x double> %i.dk)
  %i.dm = insertelement <2 x double> poison, double %i.bx, i64 0
  %i.dn = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.do = fadd <2 x double> %i.dn, %i.dl
  %i.dp = insertelement <2 x double> poison, double %20, i64 0
  %i.dq = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dr = fsub <2 x double> %i.do, %i.dq          ; 2 uses
  %i.ds = fsub double %9, %i.df                   ; 2 uses
  %i.dt = extractelement <2 x double> %i.cp, i64 0
  %i.du = fadd double %i.bo, %i.dt
  %i.dv = fadd double %i.bq, %i.du
  %i.dw = fadd double %i.bv, %18
  %i.dx = fadd double %i.bx, %i.dw
  %i.dy = extractelement <2 x double> %i.cp, i64 1
  %i.dz = fadd double %i.cd, %i.dy
  %i.ea = fadd double %i.cf, %i.dz
  %i.eb = fsub double %i.dv, %i.dc                ; 2 uses
  %i.ec = fsub double %i.dx, %20                  ; 2 uses
  %i.ed = fsub double %i.ea, %i.df                ; 2 uses
  %i.ee = extractelement <2 x double> %i.dr, i64 0 ; 2 uses
  %i.ef = extractelement <2 x double> %i.dr, i64 1 ; 2 uses
  %i.eg = fmul double %i.ef, %i.ee
  %i.eh = tail call double @llvm.fmuladd.f64(double %i.dd, double %10, double %i.eg)
  %i.ei = tail call noundef double @llvm.fmuladd.f64(double %i.dg, double %i.ds, double %i.eh)
  %i.ej = tail call noundef double @llvm.fabs.f64(double %i.ei)
  %i.ek = fcmp ule double %i.ej, f0x3E7AD7F29ABCAF48
  br i1 %i.ek, label %bb.n, label %.sink.split

bb.n:                                             ; preds = %bb.m
  %i.el = fmul double %i.ee, %i.ec
  %i.em = tail call double @llvm.fmuladd.f64(double %10, double %i.eb, double %i.el)
  %i.en = tail call noundef double @llvm.fmuladd.f64(double %i.ds, double %i.ed, double %i.em)
  %i.eo = tail call noundef double @llvm.fabs.f64(double %i.en)
  %i.ep = fcmp ule double %i.eo, f0x3E7AD7F29ABCAF48
  br i1 %i.ep, label %bb.o, label %.sink.split

bb.o:                                             ; preds = %bb.n
  %i.eq = fmul double %i.ec, %i.ef
  %i.er = tail call double @llvm.fmuladd.f64(double %i.eb, double %i.dd, double %i.eq)
  %i.es = tail call noundef double @llvm.fmuladd.f64(double %i.ed, double %i.dg, double %i.er)
  %i.et = tail call noundef double @llvm.fabs.f64(double %i.es)
  %i.eu = fcmp ule double %i.et, f0x3E7AD7F29ABCAF48
  br i1 %i.eu, label %bb.p, label %.sink.split

.sink.split:                                      ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  store i8 0, ptr %i.bb, align 8, !tbaa !133
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.o
  ret void

bb.q:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math19NonlinearFrustumMapD0Ev(ptr noundef nonnull align 8 dereferenceable(520) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 520) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math19NonlinearFrustumMap12getAffineMapEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(520) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @_ZNK7openvdb5v13_04math9AffineMap12getAffineMapEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(376) %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math19NonlinearFrustumMap4typeB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(520) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !640)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !43, !alias.scope !640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !640
  store i64 19, ptr %i.a, align 8, !tbaa !88, !noalias !640
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !48, !alias.scope !640
  %i.d = load i64, ptr %i.a, align 8, !tbaa !88, !noalias !640 ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !47, !alias.scope !640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.c, ptr noundef nonnull align 1 dereferenceable(19) @.str.45, i64 19, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !46, !alias.scope !640
  %i.f = load ptr, ptr %0, align 8, !tbaa !48, !alias.scope !640
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !640
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7openvdb5v13_04math19NonlinearFrustumMap7isEqualERKNS1_7MapBaseE(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK7openvdb5v13_04math7MapBase6isTypeINS1_19NonlinearFrustumMapEEEbv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %i.a, label %bb.b, label %_ZN7openvdb5v13_04math7MapBase11isEqualBaseINS1_19NonlinearFrustumMapEEEbRKT_RKS2_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNK7openvdb5v13_04math19NonlinearFrustumMapeqERKS2_(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr noundef nonnull align 8 dereferenceable(520) %1)
  br label %_ZN7openvdb5v13_04math7MapBase11isEqualBaseINS1_19NonlinearFrustumMapEEEbRKT_RKS2_.exit

_ZN7openvdb5v13_04math7MapBase11isEqualBaseINS1_19NonlinearFrustumMapEEEbRKT_RKS2_.exit: ; preds = %bb.a, %bb.b
  %i.c = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7openvdb5v13_04math19NonlinearFrustumMap8isLinearEv(ptr noundef nonnull align 8 dereferenceable(520) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7openvdb5v13_04math19NonlinearFrustumMap15hasUniformScaleEv(ptr noundef nonnull align 8 dereferenceable(520) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math19NonlinearFrustumMap8applyMapERKNS1_4Vec3IdEE(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(520) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.9.0.copyload = load double, ptr %.sroa.9.0..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load <2 x double>, ptr %2, align 8
  %i.c = load <2 x double>, ptr %i.a, align 8, !tbaa !25, !noalias !649
  %i.d = fsub <2 x double> %i.b, %i.c             ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load double, ptr %i.e, align 8, !tbaa !25, !noalias !649
  %i.g = fsub double %.sroa.9.0.copyload, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.i = load double, ptr %i.h, align 8, !tbaa !134, !noalias !650
  %i.j = extractelement <2 x double> %i.d, i64 0
  %i.k = fsub double %i.j, %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.m = load double, ptr %i.l, align 8, !tbaa !135, !noalias !650
  %i.n = extractelement <2 x double> %i.d, i64 1
  %i.o = fsub double %i.n, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.q = load double, ptr %i.p, align 8, !tbaa !89, !noalias !650
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.s = load double, ptr %i.r, align 8, !tbaa !90, !noalias !650
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.u = load double, ptr %i.t, align 8, !tbaa !91, !noalias !650
  tail call void @llvm.experimental.noalias.scope.decl(metadata !651)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !652)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aa = load double, ptr %i.z, align 8, !tbaa !25, !noalias !653
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !25, !noalias !653
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !25, !noalias !653
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ag = load double, ptr %i.af, align 8, !tbaa !25, !noalias !653
  %i.ah = fmul double %i.g, %i.q                  ; 3 uses
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.s, double %i.ah, double 1.000000e+00)
  %i.aj = fdiv double %i.ai, %i.u                 ; 2 uses
  %i.ak = fmul double %i.k, %i.aj                 ; 2 uses
  %i.al = fmul double %i.o, %i.aj                 ; 2 uses
  %i.am = load <2 x double>, ptr %i.v, align 8, !tbaa !25, !noalias !653
  %i.an = load <2 x double>, ptr %i.w, align 8, !tbaa !25, !noalias !653
  %i.ao = insertelement <2 x double> poison, double %i.al, i64 0
  %i.ap = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aq = fmul <2 x double> %i.ap, %i.an
  %i.ar = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.as = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> zeroinitializer
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.as, <2 x double> %i.am, <2 x double> %i.aq)
  %i.au = load <2 x double>, ptr %i.x, align 8, !tbaa !25, !noalias !653
  %i.av = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aw, <2 x double> %i.au, <2 x double> %i.at)
  %i.ay = load <2 x double>, ptr %i.y, align 8, !tbaa !25, !noalias !653
  %i.az = fadd <2 x double> %i.ay, %i.ax
  %i.ba = fmul double %i.al, %i.ac
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.aa, double %i.ba)
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.ae, double %i.bb)
  %i.bd = fadd double %i.ag, %i.bc
  store <2 x double> %i.az, ptr %0, align 8, !tbaa !25, !alias.scope !653
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.bd, ptr %i.be, align 8, !tbaa !25, !alias.scope !653
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math19NonlinearFrustumMap15applyInverseMapERKNS1_4Vec3IdEE(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(520) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.h = load double, ptr %i.g, align 8, !tbaa !25, !noalias !662
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.j = load double, ptr %i.i, align 8, !tbaa !25, !noalias !662
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.l = load double, ptr %i.k, align 8, !tbaa !25, !noalias !662
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.n = load double, ptr %i.m, align 8, !tbaa !25, !noalias !662
  tail call void @llvm.experimental.noalias.scope.decl(metadata !663)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.p = load <2 x double>, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load double, ptr %i.u, align 8, !tbaa !25, !noalias !664
  %i.w = load double, ptr %2, align 8, !tbaa !25, !noalias !662 ; 2 uses
  %i.x = load double, ptr %i.b, align 8, !tbaa !25, !noalias !662 ; 2 uses
  %i.y = load double, ptr %i.d, align 8, !tbaa !25, !noalias !662 ; 2 uses
  %i.z = load <2 x double>, ptr %i.a, align 8, !tbaa !25, !noalias !662
  %i.aa = load <2 x double>, ptr %i.c, align 8, !tbaa !25, !noalias !662
  %i.ab = insertelement <2 x double> poison, double %i.x, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = fmul <2 x double> %i.ac, %i.aa
  %i.ae = insertelement <2 x double> poison, double %i.w, i64 0
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.af, <2 x double> %i.z, <2 x double> %i.ad)
  %i.ah = load <2 x double>, ptr %i.e, align 8, !tbaa !25, !noalias !662
  %i.ai = insertelement <2 x double> poison, double %i.y, i64 0
  %i.aj = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ak = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aj, <2 x double> %i.ah, <2 x double> %i.ag)
end_hunk_2
