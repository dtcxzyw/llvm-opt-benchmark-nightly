Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/defmodel?download=true
inline.NumInlined: 4674
inline.NumDeleted: 1744
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN16DeformationModel9Component23ExponentialTimeFunctionC2Ev:bb.a
  store i8 0, ptr %i.l, align 8, !tbaa !29
  invoke void @_ZN16DeformationModel5EpochC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.n = load ptr, ptr %2, align 8, !tbaa !26     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.l
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.c
  %i.p = load i64, ptr %i.l, align 8, !tbaa !29
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120
  store <2 x double> splat (double +qnan), ptr %i.r, align 8, !tbaa !61
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  store <2 x double> splat (double +qnan), ptr %i.s, align 8, !tbaa !61
  ret void

bb.d:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %1, align 8, !tbaa !26     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.e
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.d
  %i.w = load i64, ptr %i.e, align 8, !tbaa !29
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br label %_ZN16DeformationModel5EpochD2Ev.exit

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %2, align 8, !tbaa !26     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.l
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.e
  %i.ab = load i64, ptr %i.l, align 8, !tbaa !29
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !26  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZN16DeformationModel5EpochD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !29
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #38
  br label %_ZN16DeformationModel5EpochD2Ev.exit

_ZN16DeformationModel5EpochD2Ev.exit:             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %.pn = phi { ptr, i32 } [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9 ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12 ]
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN16DeformationModel9Component12TimeFunctionE, i64 16), ptr %0, align 8, !tbaa !47
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !26  ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.b
  br i1 %i.aj, label %_ZN16DeformationModel9Component12TimeFunctionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13: ; preds = %_ZN16DeformationModel5EpochD2Ev.exit
  %i.ak = load i64, ptr %i.b, align 8, !tbaa !29
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #38, !inline_history !103
  br label %_ZN16DeformationModel9Component12TimeFunctionD2Ev.exit

_ZN16DeformationModel9Component12TimeFunctionD2Ev.exit: ; preds = %_ZN16DeformationModel5EpochD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #37 ; 3 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !30   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !27, !alias.scope !396
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.f, align 8, !tbaa !30, !alias.scope !396
  store i8 0, ptr %i.e, align 8, !tbaa !29, !alias.scope !396
  %i.g = add i64 %i.d, %i.a
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.g)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.f, align 8, !tbaa !30, !alias.scope !396
  %i.i = sub i64 4611686018427387903, %i.h
  %i.j = icmp ult i64 %i.i, %i.a
  br i1 %i.j, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %i.a)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.l = load i64, ptr %i.f, align 8, !tbaa !30, !alias.scope !396
  %i.m = sub i64 4611686018427387903, %i.l
  %i.n = icmp ult i64 %i.m, %i.d
  br i1 %i.n, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i

.invoke.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.119) #36
          to label %.cont.i unwind label %bb.c

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b, i64 noundef %i.d)
          to label %_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i, %.invoke.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !26, !alias.scope !396 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.e, align 8, !tbaa !29, !alias.scope !396
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #38
  br label %.body

_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef double @_ZNK16DeformationModel9Component20ConstantTimeFunction10evaluateAtEd(ptr nofree nonnull readnone align 8 captures(none) %0, double %1) unnamed_addr #16 align 2 {
bb.a:
  ret double 1.000000e+00
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef double @_ZNK16DeformationModel9Component20VelocityTimeFunction10evaluateAtEd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, double noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load double, ptr %i.a, align 8, !tbaa !33
  %i.c = fsub double %1, %i.b
  ret double %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef double @_ZNK16DeformationModel9Component16StepTimeFunction10evaluateAtEd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, double noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load double, ptr %i.a, align 8, !tbaa !33
  %i.c = fcmp olt double %1, %i.b
  %. = select i1 %i.c, double 0.000000e+00, double 1.000000e+00
  ret double %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef double @_ZNK16DeformationModel9Component23ReverseStepTimeFunction10evaluateAtEd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, double noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load double, ptr %i.a, align 8, !tbaa !33
  %i.c = fcmp olt double %1, %i.b
  %. = select i1 %i.c, double -1.000000e+00, double 0.000000e+00
  ret double %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef double @_ZNK16DeformationModel9Component21PiecewiseTimeFunction10evaluateAtEd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, double noundef %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !398  ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !398  ; 7 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = load double, ptr %i.f, align 8, !tbaa !33 ; 4 uses
  %i.h = fcmp olt double %1, %i.g
  br i1 %i.h, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = ptrtoint ptr %i.b to i64
  %i.k = sub i64 %i.i, %i.j                       ; 4 uses
  %2 = sdiv exact i64 %i.k, 48                    ; 2 uses
  %.not77 = icmp ugt i64 %2, 1
  br i1 %.not77, label %.lr.ph, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load i64, ptr %i.m, align 8, !tbaa !30
  switch i64 %i.n, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit55.thread61 [
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 8, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit55
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.c
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !26
  %i.p = load i32, ptr %i.o, align 1
  %i.q = icmp ne i32 %i.p, 1869768058
  %i.r = zext i1 %i.q to i32
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit55.thread61

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit55: ; preds = %bb.c
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !26
  %i.u = load i64, ptr %i.t, align 1
  %i.v = icmp ne i64 %i.u, 8389750308618530659
  %i.w = zext i1 %i.v to i32
  %i.x = icmp eq i32 %i.w, 0
  %i.y = ptrtoint ptr %i.d to i64
  %i.z = ptrtoint ptr %i.b to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = icmp eq i64 %i.aa, 48
  %or.cond72 = or i1 %i.ab, %i.x
  br i1 %or.cond72, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit55.thread, label %bb.d

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit55.thread61: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.c
  %.old68 = ptrtoint ptr %i.d to i64
  %.old69 = ptrtoint ptr %i.b to i64
  %.old70 = sub i64 %.old68, %.old69
  %.old71 = icmp eq i64 %.old70, 48
  br i1 %.old71, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit55.thread, label %bb.d

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit55.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit55.thread61, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit55
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !105
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit55, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit55.thread61
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.af = load double, ptr %i.ae, align 8, !tbaa !105 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !33 ; 3 uses
  %i.ai = fcmp oeq double %i.g, %i.ah
  br i1 %i.ai, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !105
  %i.al = fsub double %i.ah, %1
  %i.am = fsub double %1, %i.g
  %i.an = fmul double %i.am, %i.ak
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.af, double %i.al, double %i.an)
  %i.ap = fsub double %i.ah, %i.g
  %i.aq = fdiv double %i.ao, %i.ap
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

.lr.ph:                                           ; preds = %.preheader, %bb.f
  %.04678 = phi i64 [ %i.bh, %bb.f ], [ 1, %.preheader ] ; 2 uses
  %i.ar = getelementptr [48 x i8], ptr %i.b, i64 %.04678 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load double, ptr %i.as, align 8, !tbaa !33 ; 3 uses
  %i.au = fcmp uge double %1, %i.at
  br i1 %i.au, label %bb.f, label %.thread64

.thread64:                                        ; preds = %.lr.ph
  %i.av = getelementptr i8, ptr %i.ar, i64 -16
  %i.aw = load double, ptr %i.av, align 8, !tbaa !33 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !105
  %i.az = getelementptr i8, ptr %i.ar, i64 -8
  %i.ba = load double, ptr %i.az, align 8, !tbaa !105
  %i.bb = fsub double %i.at, %1
  %i.bc = fsub double %1, %i.aw
  %i.bd = fmul double %i.ay, %i.bc
  %i.be = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.bb, double %i.bd)
  %i.bf = fsub double %i.at, %i.aw
  %i.bg = fdiv double %i.be, %i.bf
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.f:                                             ; preds = %.lr.ph
  %i.bh = add nuw i64 %.04678, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bh, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !397

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !30
  switch i64 %i.bk, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59.thread67 [
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57
    i64 8, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57: ; preds = %._crit_edge
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !26
  %i.bm = load i32, ptr %i.bl, align 1
  %i.bn = icmp ne i32 %i.bm, 1869768058
  %i.bo = zext i1 %i.bn to i32
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59.thread67

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59: ; preds = %._crit_edge
  %i.bq = load ptr, ptr %i.bi, align 8, !tbaa !26
  %i.br = load i64, ptr %i.bq, align 1
  %i.bs = icmp ne i64 %i.br, 8389750308618530659
  %i.bt = zext i1 %i.bs to i32
  %i.bu = icmp eq i32 %i.bt, 0
  %i.bv = icmp eq i64 %i.k, 48
  %or.cond = or i1 %i.bv, %i.bu
  br i1 %or.cond, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59.thread, label %bb.g

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59.thread67: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57, %._crit_edge
  %.old = icmp eq i64 %i.k, 48
  br i1 %.old, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59.thread, label %bb.g

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59.thread67, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59
  %i.bw = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !105
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.g:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59.thread67
  %i.by = getelementptr i8, ptr %i.b, i64 %i.k    ; 2 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 -64
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !33 ; 3 uses
  %i.cb = getelementptr inbounds i8, ptr %i.d, i64 -16
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !33 ; 3 uses
  %i.cd = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !105 ; 2 uses
  %i.cf = fcmp oeq double %i.ca, %i.cc
  br i1 %i.cf, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cg = getelementptr i8, ptr %i.by, i64 -56
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !105
  %i.ci = fsub double %i.cc, %1
  %i.cj = fsub double %1, %i.ca
  %i.ck = fmul double %i.cj, %i.ce
  %i.cl = tail call double @llvm.fmuladd.f64(double %i.ch, double %i.ci, double %i.ck)
  %i.cm = fsub double %i.cc, %i.ca
  %i.cn = fdiv double %i.cl, %i.cm
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %.thread64, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit55.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.d, %bb.e, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57, %bb.g, %bb.h, %bb.a
  %.6 = phi double [ 0.000000e+00, %bb.a ], [ %i.bg, %.thread64 ], [ %i.ad, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit55.thread ], [ 0.000000e+00, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %i.af, %bb.d ], [ %i.bx, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59.thread ], [ 0.000000e+00, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57 ], [ %i.aq, %bb.e ], [ %i.cn, %bb.h ], [ %i.ce, %bb.g ]
  ret double %.6
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #18

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define hidden noundef double @_ZNK16DeformationModel9Component23ExponentialTimeFunction10evaluateAtEd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0, double noundef %1) unnamed_addr #19 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load double, ptr %i.a, align 8, !tbaa !33 ; 2 uses
  %i.c = fcmp olt double %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = load double, ptr %i.d, align 8, !tbaa !113
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i64, ptr %i.f, align 8, !tbaa !30
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = load double, ptr %i.i, align 8, !tbaa !33 ; 2 uses
  %i.k = fcmp olt double %i.j, %1
  %.sroa.speculated = select i1 %i.k, double %i.j, double %1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.07 = phi double [ %1, %bb.c ], [ %.sroa.speculated, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.m = load double, ptr %i.l, align 8, !tbaa !114 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.o = load double, ptr %i.n, align 8, !tbaa !115
  %i.p = fsub double %i.o, %i.m
  %i.q = fsub double %.07, %i.b
  %i.r = fneg double %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.t = load double, ptr %i.s, align 8, !tbaa !112
  %i.u = fdiv double %i.r, %i.t
  %i.v = tail call double @exp(double noundef %i.u) #37
  %i.w = fsub double 1.000000e+00, %i.v
  %i.x = tail call double @llvm.fmuladd.f64(double %i.p, double %i.w, double %i.m)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.0 = phi double [ %i.e, %bb.b ], [ %i.x, %bb.e ]
  ret double %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @pj_defmodel(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @_Z37pj_projection_specific_setup_defmodelP8PJconsts(ptr noundef nonnull %0)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_Z6pj_newv()      ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @.str.105, ptr %i.d, align 8, !tbaa !399
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @_ZL12des_defmodel, ptr %i.e, align 8, !tbaa !400
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  store i32 1, ptr %i.f, align 8, !tbaa !401
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 380
  store i32 4, ptr %i.g, align 4, !tbaa !139
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  store i32 1, ptr %i.h, align 8, !tbaa !140
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ %i.a, %bb.b ], [ %i.b, %bb.d ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_Z37pj_projection_specific_setup_defmodelP8PJconsts(ptr noundef %0) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %5 = alloca %"class.std::unique_ptr.109", align 8 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  %8 = alloca %"class.std::unique_ptr.89", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !419
  %i.b = tail call ptr @proj_create(ptr noundef %i.a, ptr noundef nonnull @.str.106) ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZL10destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef 4096)
  br label %bb.ce

bb.c:                                             ; preds = %bb.a
  tail call void @_Z24pj_inherit_ellipsoid_defPK8PJconstsPS_(ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.e = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #39 ; 7 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !419    ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !420
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !144
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.b, ptr %i.h, align 8, !tbaa !145
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.e, ptr %i.i, align 8, !tbaa !146
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr @_ZL10destructorP8PJconstsi, ptr %i.j, align 8, !tbaa !147
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr @_ZL16reassign_contextP8PJconstsP6pj_ctx, ptr %i.k, align 8, !tbaa !421
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !422
  %i.n = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef %i.f, ptr noundef %i.m, ptr noundef nonnull @.str.107) ; 2 uses
  %i.o = inttoptr i64 %i.n to ptr                 ; 4 uses
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.108)
  %i.p = tail call noundef ptr @_ZL10destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef 1026)
  br label %bb.ce
end_hunk_0
begin_hunk_1_@_Z37pj_projection_specific_setup_defmodelP8PJconsts:bb.a
  br i1 %i.bo, label %bb.x, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

bb.x:                                             ; preds = %bb.w
  %i.bp = icmp eq i64 %i.bm, 0
  br i1 %i.bp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bq = load ptr, ptr @_ZN16DeformationModelL10STR_DEGREEB5cxx11E, align 8, !tbaa !26
  %i.br = load ptr, ptr %i.bk, align 8, !tbaa !26
  %bcmp.i.i = call i32 @bcmp(ptr %i.br, ptr %i.bq, i64 %i.bm)
  %i.bs = icmp eq i32 %bcmp.i.i, 0
  %i.bt = zext i1 %i.bs to i8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.y, %bb.x, %bb.w
  %i.bu = phi i8 [ 0, %bb.w ], [ %i.bt, %bb.y ], [ 1, %bb.x ]
  store i8 %i.bu, ptr %i.bi, align 8, !tbaa !161
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ax, i64 33 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bj, i64 728
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 736
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !30 ; 3 uses
  %i.bz = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL12STR_ADDITIONB5cxx11E, i64 8), align 8, !tbaa !30
  %i.ca = icmp eq i64 %i.by, %i.bz
  br i1 %i.ca, label %bb.z, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit43.i

bb.z:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i
  %i.cb = icmp eq i64 %i.by, 0
  br i1 %i.cb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit43.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cc = load ptr, ptr @_ZN16DeformationModelL12STR_ADDITIONB5cxx11E, align 8, !tbaa !26
  %i.cd = load ptr, ptr %i.bw, align 8, !tbaa !26
  %bcmp.i42.i = call i32 @bcmp(ptr %i.cd, ptr %i.cc, i64 %i.by)
  %i.ce = icmp eq i32 %bcmp.i42.i, 0
  %i.cf = zext i1 %i.ce to i8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit43.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit43.i: ; preds = %bb.aa, %bb.z, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i
  %i.cg = phi i8 [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ], [ %i.cf, %bb.aa ], [ 1, %bb.z ]
  store i8 %i.cg, ptr %i.bv, align 1, !tbaa !162
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ax, i64 34 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bj, i64 440
  %.val39.i = load ptr, ptr %i.ci, align 8, !tbaa !26
  %i.cj = invoke ptr @proj_create(ptr noundef %.val, ptr noundef %.val39.i)
          to label %.noexc.i unwind label %bb.ag  ; 3 uses

.noexc.i:                                         ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit43.i
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %_ZN12_GLOBAL__N_114EvaluatorIface15isGeographicCRSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i, label %bb.ab

_ZN12_GLOBAL__N_114EvaluatorIface15isGeographicCRSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i: ; preds = %.noexc.i
  store i8 1, ptr %i.ch, align 2, !tbaa !163
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ax, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i8 0, i64 24, i1 false)
  br label %.thread.i

bb.ab:                                            ; preds = %.noexc.i
  %i.cm = invoke i32 @proj_get_type(ptr noundef nonnull %i.cj)
          to label %.noexc44.i unwind label %bb.ag

.noexc44.i:                                       ; preds = %bb.ab
  %i.cn = invoke ptr @proj_destroy(ptr noundef nonnull %i.cj)
          to label %_ZN12_GLOBAL__N_114EvaluatorIface15isGeographicCRSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i unwind label %bb.ag ; 0 uses

_ZN12_GLOBAL__N_114EvaluatorIface15isGeographicCRSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %.noexc44.i
  %i.co = and i32 %i.cm, -2
  %i.cp = icmp eq i32 %i.co, 12                   ; 2 uses
  %i.cq = zext i1 %i.cp to i8
  store i8 %i.cq, ptr %i.ch, align 2, !tbaa !163
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ax, i64 40 ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i8 0, i64 24, i1 false)
  br i1 %i.cp, label %.thread.i, label %bb.ac

bb.ac:                                            ; preds = %_ZN12_GLOBAL__N_114EvaluatorIface15isGeographicCRSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.cs = load i8, ptr %i.bi, align 8, !tbaa !161, !range !92, !noundef !93
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.ad, label %bb.aj

bb.ad:                                            ; preds = %bb.ac
  %i.cu = call ptr @__cxa_allocate_exception(i64 40) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.247, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.ae unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN16DeformationModel18EvaluatorExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.cu, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  invoke void @__cxa_throw(ptr nonnull %i.cu, ptr nonnull @_ZTIN16DeformationModel18EvaluatorExceptionE, ptr nonnull @_ZN16DeformationModel18EvaluatorExceptionD2Ev) #36
          to label %bb.bp unwind label %bb.ah

bb.ag:                                            ; preds = %.noexc44.i, %bb.ab, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit43.i
  %i.cv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.ad
  %i.cw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af, %bb.ae
  %.018.i = phi i1 [ false, %bb.af ], [ true, %bb.ae ] ; 2 uses
  %i.cx = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 4 uses
  %i.cy = load ptr, ptr %1, align 8, !tbaa !26    ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ah
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !29
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.018.i, label %bb.ai, label %bb.bo

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.018.i, label %bb.ai, label %bb.bo

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn8.i = phi { ptr, i32 } [ %i.cw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.cu) #37
  br label %bb.bo

bb.aj:                                            ; preds = %bb.ac
  %i.dd = load i8, ptr %i.bv, align 1, !tbaa !162, !range !92, !noundef !93
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %.thread.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.df = call ptr @__cxa_allocate_exception(i64 40) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.248, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.al unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.thread.i

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN16DeformationModel18EvaluatorExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.df, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  invoke void @__cxa_throw(ptr nonnull %i.df, ptr nonnull @_ZTIN16DeformationModel18EvaluatorExceptionE, ptr nonnull @_ZN16DeformationModel18EvaluatorExceptionD2Ev) #36
          to label %bb.bp unwind label %bb.an

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.thread.i: ; preds = %bb.ak
  %i.dg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %bb.ao

bb.an:                                            ; preds = %bb.am, %bb.al
  %.016.i = phi i1 [ false, %bb.am ], [ true, %bb.al ] ; 2 uses
  %i.dh = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 4 uses
  %i.di = load ptr, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i: ; preds = %bb.an
  %i.dl = load i64, ptr %i.dj, align 8, !tbaa !29
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dm) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br i1 %.016.i, label %bb.ao, label %bb.bo

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i: ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br i1 %.016.i, label %bb.ao, label %bb.bo

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.thread.i
  %.pn3012.i = phi { ptr, i32 } [ %i.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.thread.i ], [ %i.dh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i ], [ %i.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i ]
  call void @__cxa_free_exception(ptr %i.df) #37
  br label %bb.bo

.thread.i:                                        ; preds = %bb.aj, %_ZN12_GLOBAL__N_114EvaluatorIface15isGeographicCRSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %_ZN12_GLOBAL__N_114EvaluatorIface15isGeographicCRSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i
  %i.dn = phi ptr [ %i.cr, %bb.aj ], [ %i.cr, %_ZN12_GLOBAL__N_114EvaluatorIface15isGeographicCRSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ], [ %i.cl, %_ZN12_GLOBAL__N_114EvaluatorIface15isGeographicCRSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i ] ; 9 uses
  %i.do = load ptr, ptr %i.ax, align 8, !tbaa !39 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 904
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 912
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !70 ; 3 uses
  %i.ds = load ptr, ptr %i.dp, align 8, !tbaa !164 ; 3 uses
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = sdiv exact i64 %i.dv, 312               ; 3 uses
  %11 = icmp ugt i64 %i.dw, 1152921504606846975
  br i1 %11, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.thread.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.148) #36
          to label %.noexc49.i unwind label %bb.as

.noexc49.i:                                       ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %.thread.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ax, i64 56 ; 5 uses
  %.not43.i = icmp eq ptr %i.dr, %i.ds
  br i1 %.not43.i, label %_ZNSt6vectorISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE7reserveEm.exit.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.aq
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ax, i64 48 ; 2 uses
  %i.dz = shl nuw nsw i64 %i.dw, 3
  %i.ea = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dz) #39
          to label %.noexc50.i unwind label %bb.as ; 9 uses

.noexc50.i:                                       ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE11_M_allocateEm.exit.i.i
  %i.eb = load ptr, ptr %i.dn, align 8, !tbaa !165 ; 11 uses
  %i.ec = ptrtoaddr ptr %i.eb to i64              ; 2 uses
  %i.ed = load ptr, ptr %i.dy, align 8, !tbaa !166 ; 3 uses
  %i.ee = ptrtoaddr ptr %i.ed to i64              ; 2 uses
  %.not1.i.i.i.i.i = icmp eq ptr %i.eb, %i.ed
  br i1 %.not1.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc50.i
  %i.ef = add i64 %i.ee, -8
  %i.eg = sub i64 %i.ef, %i.ec                    ; 2 uses
  %i.eh = lshr i64 %i.eg, 3
  %i.ei = add nuw nsw i64 %i.eh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.eg, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader147, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ej = add i64 %i.ee, -8
  %i.ek = sub i64 %i.ej, %i.ec
  %i.el = and i64 %i.ek, -8
  %i.em = add i64 %i.el, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ea, i64 %i.em
  %scevgep119 = getelementptr i8, ptr %i.eb, i64 %i.em
  %bound0 = icmp ult ptr %i.ea, %scevgep119
  %bound1 = icmp ult ptr %i.eb, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader147, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ei, 4611686018427387900     ; 3 uses
  %i.en = shl i64 %n.vec, 3                       ; 2 uses
  %i.eo = getelementptr i8, ptr %i.ea, i64 %i.en
  %i.ep = getelementptr i8, ptr %i.eb, i64 %i.en
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ea, i64 %i.eq ; 2 uses
  %next.gep120 = getelementptr i8, ptr %i.eb, i64 %i.eq ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !425)
  call void @llvm.experimental.noalias.scope.decl(metadata !426)
  %i.er = getelementptr i8, ptr %next.gep120, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep120, align 8, !tbaa !168, !alias.scope !427, !noalias !425
  %wide.load121 = load <2 x i64>, ptr %i.er, align 8, !tbaa !168, !alias.scope !427, !noalias !425
  %i.es = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !168, !alias.scope !428, !noalias !427
  store <2 x i64> %wide.load121, ptr %i.es, align 8, !tbaa !168, !alias.scope !428, !noalias !427
  %i.et = getelementptr i8, ptr %next.gep120, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep120, align 8, !tbaa !168, !alias.scope !427, !noalias !425
  store <2 x ptr> splat (ptr null), ptr %i.et, align 8, !tbaa !168, !alias.scope !427, !noalias !425
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eu = icmp eq i64 %index.next, %n.vec
  br i1 %i.eu, label %middle.block, label %vector.body, !llvm.loop !408

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ei, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader147

.lr.ph.i.i.i.i.i.preheader147:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.03.i.i.i.i.i.ph = phi ptr [ %i.ea, %vector.memcheck ], [ %i.ea, %.lr.ph.i.i.i.i.i.preheader ], [ %i.eo, %middle.block ]
  %.092.i.i.i.i.i.ph = phi ptr [ %i.eb, %vector.memcheck ], [ %i.eb, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ep, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader147, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.ew, %.lr.ph.i.i.i.i.i ], [ %.03.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader147 ] ; 2 uses
  %.092.i.i.i.i.i = phi ptr [ %i.ev, %.lr.ph.i.i.i.i.i ], [ %.092.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader147 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !425)
  call void @llvm.experimental.noalias.scope.decl(metadata !426)
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %.092.i.i.i.i.i, align 8, !tbaa !168, !alias.scope !426, !noalias !425
  store i64 %.val.i.i.i.i.i.i.i.i.i, ptr %.03.i.i.i.i.i, align 8, !tbaa !168, !alias.scope !425, !noalias !426
  store ptr null, ptr %.092.i.i.i.i.i, align 8, !tbaa !168, !alias.scope !426, !noalias !425
  %i.ev = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 8 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ev, %i.ed
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !409

_ZNSt6vectorISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc50.i
  %.not.i11.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i11.i.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE13_M_deallocateEPS9_m.exit.i.i, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit.i.i
  %i.ex = load ptr, ptr %i.dx, align 8, !tbaa !169
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = ptrtoint ptr %i.eb to i64
  %i.fa = sub i64 %i.ey, %i.ez
  call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef %i.fa) #38
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE13_M_deallocateEPS9_m.exit.i.i

_ZNSt12_Vector_baseISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE13_M_deallocateEPS9_m.exit.i.i: ; preds = %bb.ar, %_ZNSt6vectorISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit.i.i
  store ptr %i.ea, ptr %i.dn, align 8, !tbaa !165
  store ptr %i.ea, ptr %i.dy, align 8, !tbaa !166
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.dw
  store ptr %i.fb, ptr %i.dx, align 8, !tbaa !169
  %.pre.i = load ptr, ptr %i.ax, align 8, !tbaa !39 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 904
  %.pre19.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !74
  %.phi.trans.insert20.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 912
  %.pre21.i = load ptr, ptr %.phi.trans.insert20.i, align 8, !tbaa !74
  br label %_ZNSt6vectorISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE7reserveEm.exit.i

_ZNSt6vectorISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE7reserveEm.exit.i: ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE13_M_deallocateEPS9_m.exit.i.i, %bb.aq
  %i.fc = phi ptr [ %.pre21.i, %_ZNSt12_Vector_baseISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE13_M_deallocateEPS9_m.exit.i.i ], [ %i.dr, %bb.aq ] ; 2 uses
  %i.fd = phi ptr [ %.pre19.i, %_ZNSt12_Vector_baseISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE13_M_deallocateEPS9_m.exit.i.i ], [ %i.ds, %bb.aq ] ; 2 uses
  %.not17.i = icmp eq ptr %i.fd, %i.fc
  br i1 %.not17.i, label %_ZN16DeformationModel9EvaluatorIN12_GLOBAL__N_14GridENS1_7GridSetENS1_14EvaluatorIfaceEEC2EOSt10unique_ptrINS_10MasterFileESt14default_deleteIS7_EERS4_dd.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE7reserveEm.exit.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ax, i64 48 ; 3 uses
  br label %bb.at

bb.as:                                            ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE11_M_allocateEm.exit.i.i, %bb.ap
  %i.ff = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.bo

bb.at:                                            ; preds = %bb.bn, %.lr.ph.i
  %.sroa.01.018.i = phi ptr [ %i.fd, %.lr.ph.i ], [ %i.is, %bb.bn ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.fg = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #39
          to label %bb.au unwind label %bb.bi     ; 10 uses

bb.au:                                            ; preds = %bb.at
  store ptr %.sroa.01.018.i, ptr %i.fg, align 8, !tbaa !74
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.01.018.i, i64 208
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.01.018.i, i64 216
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !30 ; 3 uses
  %i.fl = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL12STR_BILINEARB5cxx11E, i64 8), align 8, !tbaa !30
  %i.fm = icmp eq i64 %i.fk, %i.fl
  br i1 %i.fm, label %bb.av, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i

bb.av:                                            ; preds = %bb.au
  %i.fn = icmp eq i64 %i.fk, 0
  br i1 %i.fn, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fo = load ptr, ptr @_ZN16DeformationModelL12STR_BILINEARB5cxx11E, align 8, !tbaa !26
  %i.fp = load ptr, ptr %i.fi, align 8, !tbaa !26
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.fp, ptr %i.fo, i64 %i.fk)
  %i.fq = icmp eq i32 %bcmp.i.i.i, 0
  %i.fr = zext i1 %i.fq to i8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i: ; preds = %bb.aw, %bb.av, %bb.au
  %i.fs = phi i8 [ 0, %bb.au ], [ %i.fr, %bb.aw ], [ 1, %bb.av ]
  store i8 %i.fs, ptr %i.fh, align 8, !tbaa !184
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.01.018.i, i64 96
  %.val.i51.i = load ptr, ptr %i.ft, align 8      ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.01.018.i, i64 104
  %.val3.i.i = load i64, ptr %i.fu, align 8, !tbaa !30 ; 9 uses
  %i.fv = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL14STR_HORIZONTALB5cxx11E, i64 8), align 8, !tbaa !30
  %i.fw = icmp eq i64 %.val3.i.i, %i.fv
  br i1 %i.fw, label %bb.ax, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread1.i.i.i

bb.ax:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i
  %i.fx = icmp eq i64 %.val3.i.i, 0
  br i1 %i.fx, label %bb.ba, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i: ; preds = %bb.ax
  %i.fy = load ptr, ptr @_ZN16DeformationModelL14STR_HORIZONTALB5cxx11E, align 8, !tbaa !26
  %bcmp.i.i.i.i = call i32 @bcmp(ptr readonly %.val.i51.i, ptr %i.fy, i64 %.val3.i.i)
  %i.fz = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.fz, label %bb.ba, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread1.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread1.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i
  %i.ga = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL12STR_VERTICALB5cxx11E, i64 8), align 8, !tbaa !30
  %i.gb = icmp eq i64 %.val3.i.i, %i.ga
  br i1 %i.gb, label %bb.ay, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit4.thread2.i.i.i

bb.ay:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread1.i.i.i
  %i.gc = icmp eq i64 %.val3.i.i, 0
  br i1 %i.gc, label %bb.ba, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit4.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit4.i.i.i: ; preds = %bb.ay
  %i.gd = load ptr, ptr @_ZN16DeformationModelL12STR_VERTICALB5cxx11E, align 8, !tbaa !26
  %bcmp.i3.i.i.i = call i32 @bcmp(ptr readonly %.val.i51.i, ptr %i.gd, i64 %.val3.i.i)
  %i.ge = icmp eq i32 %bcmp.i3.i.i.i, 0
  br i1 %i.ge, label %bb.ba, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit4.thread2.i.i.i
end_hunk_1
