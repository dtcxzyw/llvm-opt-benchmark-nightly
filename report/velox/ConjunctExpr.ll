inline.NumInlined: 6696
inline.NumDeleted: 2204
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNSt12__shared_ptrIN8facebook5velox4exec10EvalErrorsELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !218
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !220
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !93
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #15, !inline_history !315
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !93
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #15, !inline_history !315
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !222
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !223

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #15
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox14VectorRecyclerD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !188    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !245, !nonnull !10, !align !246
  %i.d = invoke noundef zeroext i1 @_ZN8facebook5velox10VectorPool7releaseERSt10shared_ptrINS0_10BaseVectorEE(ptr noundef nonnull align 8 dereferenceable(1856) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox4core11QueryConfig31adaptiveFilterReorderingEnabledEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i:
  %1 = alloca %"class.std::function.207", align 8 ; 11 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(35) ptr @_Znwm(i64 noundef 35) #31 ; 3 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !216
  store i64 34, ptr %i.b, align 8, !tbaa !222
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) %i.c, ptr noundef nonnull align 1 dereferenceable(34) @.str.21, i64 34, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 34, ptr %i.d, align 8, !tbaa !217
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 34
  store i8 0, ptr %i.e, align 1, !tbaa !222
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i8 1, ptr %i.a, align 1, !tbaa !7
  %i.f = load ptr, ptr %0, align 8, !tbaa !316
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EZNK8facebook5velox6config7IConfig3getIbEET_RKS5_RKSC_RKSt8functionIFSC_S5_S5_EEEd_UlSC_T0_E_E9_M_invokeERKSt9_Any_dataOS5_SS_, ptr %i.h, align 8, !tbaa !319
  store ptr @_ZNSt17_Function_handlerIFbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EZNK8facebook5velox6config7IConfig3getIbEET_RKS5_RKSC_RKSt8functionIFSC_S5_S5_EEEd_UlSC_T0_E_E10_M_managerERSt9_Any_dataRKSP_St18_Manager_operation, ptr %i.g, align 8, !tbaa !322
  %i.i = invoke noundef zeroext i1 @_ZNK8facebook5velox6config7IConfig3getIbEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_RKSt8functionIFS4_SA_SA_EE(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.d

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !322  ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = invoke noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %bb.g unwind label %bb.c       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #30
  unreachable

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !322  ; 2 uses
  %.not.i4.i = icmp eq ptr %i.o, null
  br i1 %.not.i4.i, label %_ZNSt14_Function_baseD2Ev.exit5.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = invoke noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit5.i unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #30
  unreachable

_ZNSt14_Function_baseD2Ev.exit5.i:                ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.s = load ptr, ptr %2, align 8, !tbaa !216    ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.b
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

bb.g:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.u = load ptr, ptr %2, align 8, !tbaa !216    ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.b
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.w = load i64, ptr %i.b, align 8, !tbaa !222
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret i1 %i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %_ZNSt14_Function_baseD2Ev.exit5.i
  %i.y = load i64, ptr %i.b, align 8, !tbaa !222
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.z) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %_ZNSt14_Function_baseD2Ev.exit5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %i.n
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN8facebook5velox4exec12ConjunctExpr18maybeReorderInputsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(560) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !185
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !186
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4                   ; 2 uses
  %i.i = icmp ugt i64 %i.h, 1
  br i1 %i.i, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !194  ; 7 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !195  ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.h
  br i1 %exitcond.not, label %.critedge, label %bb.c, !llvm.loop !323

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.n = getelementptr [4 x i8], ptr %i.l, i64 %indvars.iv ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 -4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.q ; 3 uses
  %1 = load i64, ptr %i.r, align 8, !tbaa !196    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !243  ; 2 uses
  %2 = icmp eq i64 %1, %i.t
  %3 = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %4 = load i64, ptr %3, align 8, !tbaa !324
  %5 = uitofp i64 %4 to float
  %6 = sub i64 %1, %i.t
  %7 = uitofp i64 %6 to float
  %8 = select i1 %2, float 1.000000e+00, float %7
  %.0.i = fdiv float %5, %8
  %9 = load i32, ptr %i.n, align 4, !tbaa !3
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %10 ; 3 uses
  %12 = load i64, ptr %11, align 8, !tbaa !196    ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %14 = load i64, ptr %13, align 8, !tbaa !243    ; 2 uses
  %15 = icmp eq i64 %12, %14
  %16 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %17 = load i64, ptr %16, align 8, !tbaa !324
  %18 = uitofp i64 %17 to float
  %19 = sub i64 %12, %14
  %20 = uitofp i64 %19 to float
  %21 = select i1 %15, float 1.000000e+00, float %20
  %.0.i9 = fdiv float %18, %21
  %22 = fcmp ogt float %.0.i, %.0.i9
  br i1 %22, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !238  ; 6 uses
  %i.w = icmp eq ptr %i.l, %i.v
  br i1 %i.w, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.l to i64
  %i.z = sub i64 %i.x, %i.y                       ; 2 uses
  %i.aa = ashr exact i64 %i.z, 2
  %i.ab = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ac = shl nuw nsw i64 %i.ab, 1
  %i.ad = xor i64 %i.ac, 126
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZN8facebook5velox4exec12ConjunctExpr18maybeReorderInputsEvE3$_0EEEvT_SF_T0_T1_"(ptr nonnull %i.l, ptr %i.v, i64 noundef %i.ad, ptr nonnull readonly %0)
  %i.ae = icmp sgt i64 %i.z, 64
  br i1 %i.ae, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 64 ; 3 uses
  tail call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox4exec12ConjunctExpr18maybeReorderInputsEvE3$_0EEEvT_SF_T0_"(ptr nonnull %i.l, ptr nonnull %i.af, ptr nonnull readonly %0)
  %i.ag = icmp eq ptr %i.af, %i.v
  br i1 %i.ag, label %.critedge, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f
  %.val.val.i.i.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !195 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox4exec12ConjunctExpr18maybeReorderInputsEvE3$_0EEEvT_T0_.exit.i.i.i.i", %.lr.ph.i.i.i.i
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %i.bc, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox4exec12ConjunctExpr18maybeReorderInputsEvE3$_0EEEvT_T0_.exit.i.i.i.i" ] ; 5 uses
  %i.ah = load i32, ptr %.sroa.0.07.i.i.i.i, align 4, !tbaa !3 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %.val.val.i.i.i.i.i, i64 %i.ai ; 3 uses
  %23 = load i64, ptr %i.aj, align 8, !tbaa !196  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !243 ; 2 uses
  %24 = icmp eq i64 %23, %i.al
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %25 = load i64, ptr %i.am, align 8, !tbaa !324
  %26 = uitofp i64 %25 to float
  %27 = sub i64 %23, %i.al
  %28 = uitofp i64 %27 to float
  %29 = select i1 %24, float 1.000000e+00, float %28
  %.0.i.i.i.i.i.i.i.i = fdiv float %26, %29       ; 2 uses
  %.sroa.0.09.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i.i.i.i, i64 -4 ; 2 uses
  %30 = load i32, ptr %.sroa.0.09.i.i.i.i.i, align 4, !tbaa !3 ; 2 uses
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds nuw [24 x i8], ptr %.val.val.i.i.i.i.i, i64 %31 ; 3 uses
  %33 = load i64, ptr %32, align 8, !tbaa !196    ; 2 uses
  %34 = getelementptr inbounds nuw i8, ptr %32, i64 8
  %35 = load i64, ptr %34, align 8, !tbaa !243    ; 2 uses
  %36 = icmp eq i64 %33, %35
  %37 = getelementptr inbounds nuw i8, ptr %32, i64 16
  %38 = load i64, ptr %37, align 8, !tbaa !324
  %39 = uitofp i64 %38 to float
  %40 = sub i64 %33, %35
  %41 = uitofp i64 %40 to float
  %42 = select i1 %36, float 1.000000e+00, float %41
  %.0.i2.i.i10.i.i.i.i.i = fdiv float %39, %42
  %43 = fcmp olt float %.0.i.i.i.i.i.i.i.i, %.0.i2.i.i10.i.i.i.i.i
  br i1 %43, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox4exec12ConjunctExpr18maybeReorderInputsEvE3$_0EEEvT_T0_.exit.i.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %i.an = phi i32 [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %30, %bb.g ]
  %.sroa.0.012.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.09.i.i.i.i.i, %bb.g ] ; 3 uses
  %.sroa.06.011.i.i.i.i.i = phi ptr [ %.sroa.0.012.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i, %bb.g ]
  store i32 %i.an, ptr %.sroa.06.011.i.i.i.i.i, align 4, !tbaa !3
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i.i.i.i, i64 -4 ; 2 uses
  %i.ao = load i32, ptr %.sroa.0.0.i.i.i.i.i, align 4, !tbaa !3 ; 2 uses
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %.val.val.i.i.i.i.i, i64 %i.ap ; 3 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !196 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !243 ; 2 uses
  %i.au = icmp eq i64 %i.ar, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !324
  %i.ax = uitofp i64 %i.aw to float
  %i.ay = sub i64 %i.ar, %i.at
  %i.az = uitofp i64 %i.ay to float
  %i.ba = select i1 %i.au, float 1.000000e+00, float %i.az
  %.0.i2.i.i.i.i.i.i.i = fdiv float %i.ax, %i.ba
  %i.bb = fcmp olt float %.0.i.i.i.i.i.i.i.i, %.0.i2.i.i.i.i.i.i.i
  br i1 %i.bb, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox4exec12ConjunctExpr18maybeReorderInputsEvE3$_0EEEvT_T0_.exit.i.i.i.i", !llvm.loop !325

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox4exec12ConjunctExpr18maybeReorderInputsEvE3$_0EEEvT_T0_.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i, %bb.g
  %.sroa.06.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i, %bb.g ], [ %.sroa.0.012.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  store i32 %i.ah, ptr %.sroa.06.0.lcssa.i.i.i.i.i, align 4, !tbaa !3
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 4 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.v
  br i1 %i.bd, label %.critedge, label %bb.g, !llvm.loop !326

bb.h:                                             ; preds = %bb.e
  tail call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox4exec12ConjunctExpr18maybeReorderInputsEvE3$_0EEEvT_SF_T0_"(ptr nonnull %i.l, ptr %i.v, ptr nonnull readonly %0)
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox4exec12ConjunctExpr18maybeReorderInputsEvE3$_0EEEvT_T0_.exit.i.i.i.i", %bb.a, %bb.h, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox4exec22LocalSelectivityVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq ptr %i.b, null
  %i.c = ptrtoint ptr %i.b to i64
  br i1 %.not, label %_ZNSt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !251, !nonnull !10, !align !246 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !177, !range !9, !noundef !10
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !184  ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !253
  %.not.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.c, ptr %i.i, align 8, !tbaa !183
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.l, ptr %i.h, align 8, !tbaa !184
  br label %_ZNSt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS2_EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  invoke void @_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit unwind label %bb.g

_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit: ; preds = %bb.e
  %.pr.pre = load ptr, ptr %i.a, align 8, !tbaa !183 ; 2 uses
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS2_EED2Ev.exit, label %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.thread

_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.thread: ; preds = %bb.b, %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit
  %.pr7 = phi ptr [ %.pr.pre, %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit ], [ %i.b, %bb.b ] ; 3 uses
  %i.n = load ptr, ptr %.pr7, align 8, !tbaa !167 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.thread
  %i.o = getelementptr inbounds nuw i8, ptr %.pr7, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !271
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #32
  br label %_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit.i

_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit.i: ; preds = %bb.f, %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.thread
  tail call void @_ZdlPvm(ptr noundef nonnull %.pr7, i64 noundef 40) #32
  br label %_ZNSt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %bb.d, %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit, %_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit.i
  ret void

bb.g:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #30
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN8facebook5velox4exec26ScopedFinalSelectionSetterD1Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17)) unnamed_addr #5

declare noundef i32 @_ZN8facebook5velox4exec11getFlatBoolEPNS0_10BaseVectorERKNS0_17SelectivityVectorERNS1_7EvalCtxEPN5boost13intrusive_ptrINS0_6BufferEEESD_bPPKmSG_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(38), ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN8facebook5velox10BaseVector8addNullsERKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(94), ptr noundef nonnull align 8 dereferenceable(38)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector10clearNullsEPm(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZN8facebook5velox4bits6orBitsEPmPKmii.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !167    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.c = load i32, ptr %i.b, align 4, !tbaa !168  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !73   ; 7 uses
  %.not.i.i.i = icmp slt i32 %i.c, %i.e
  br i1 %.not.i.i.i, label %bb.c, label %_ZN8facebook5velox4bits6orBitsEPmPKmii.exit

bb.c:                                             ; preds = %bb.b
  %i.f = add i32 %i.c, 63                         ; 2 uses
  %i.g = srem i32 %i.f, 64
  %i.h = sub nsw i32 %i.f, %i.g                   ; 6 uses
  %i.i = and i32 %i.e, -64                        ; 4 uses
  %i.j = icmp slt i32 %i.i, %i.h
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = ashr i32 %i.e, 6
  %i.l = and i32 %i.e, 63
  %i.m = zext nneg i32 %i.l to i64
  %notmask.i.i.i.i = shl nsw i64 -1, %i.m
  %i.n = xor i64 %notmask.i.i.i.i, -1
  %i.o = sub nsw i32 %i.h, %i.c                   ; 2 uses
  %i.p = zext nneg i32 %i.o to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.p
  %i.q = xor i64 %notmask.i.i.i.i.i, -1
  %i.r = sub nsw i32 64, %i.o
  %i.s = zext nneg i32 %i.r to i64
  %i.t = shl i64 %i.q, %i.s
  %i.u = and i64 %i.t, %i.n                       ; 2 uses
  %i.v = sext i32 %i.k to i64                     ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %1, i64 %i.v ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !169  ; 2 uses
  %i.y = xor i64 %i.u, -1
  %i.z = and i64 %i.x, %i.y
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.v
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !169
  %i.ac = or i64 %i.ab, %i.x
  %i.ad = and i64 %i.ac, %i.u
  %i.ae = or disjoint i64 %i.ad, %i.z
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !169
  br label %_ZN8facebook5velox4bits6orBitsEPmPKmii.exit

bb.e:                                             ; preds = %bb.c
  %.not32.i.i.i = icmp eq i32 %i.c, %i.h
  br i1 %.not32.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = sdiv i32 %i.c, 64
  %i.ag = sub nsw i32 %i.h, %i.c                  ; 2 uses
  %i.ah = zext nneg i32 %i.ag to i64
  %notmask.i.i35.i.i.i = shl nsw i64 -1, %i.ah
  %i.ai = xor i64 %notmask.i.i35.i.i.i, -1
  %i.aj = sub nsw i32 64, %i.ag
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl i64 %i.ai, %i.ak                    ; 2 uses
  %i.am = sext i32 %i.af to i64                   ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %1, i64 %i.am ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !169 ; 2 uses
  %i.ap = xor i64 %i.al, -1
  %i.aq = and i64 %i.ao, %i.ap
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.am
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !169
  %i.at = or i64 %i.as, %i.ao
  %i.au = and i64 %i.at, %i.al
  %i.av = or disjoint i64 %i.au, %i.aq
  store i64 %i.av, ptr %i.an, align 8, !tbaa !169
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aw = add nsw i32 %i.h, 64                    ; 2 uses
  %.not3337.i.i.i = icmp sgt i32 %i.aw, %i.i
  br i1 %.not3337.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.g
  %.not34.i.i.i = icmp eq i32 %i.e, %i.i
  br i1 %.not34.i.i.i, label %_ZN8facebook5velox4bits6orBitsEPmPKmii.exit, label %bb.h

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.i.i.i
  %i.ax = phi i32 [ %i.bf, %.lr.ph.i.i.i ], [ %i.aw, %bb.g ] ; 2 uses
  %.038.i.i.i = phi i32 [ %i.ax, %.lr.ph.i.i.i ], [ %i.h, %bb.g ]
  %i.ay = sdiv i32 %.038.i.i.i, 64
  %i.az = sext i32 %i.ay to i64                   ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %1, i64 %i.az ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !169
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.az
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !169
  %i.be = or i64 %i.bd, %i.bb
  store i64 %i.be, ptr %i.ba, align 8, !tbaa !169
  %i.bf = add nsw i32 %i.ax, 64                   ; 2 uses
  %.not33.i.i.i = icmp sgt i32 %i.bf, %i.i
  br i1 %.not33.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !170

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.bg = ashr i32 %i.e, 6
  %i.bh = and i32 %i.e, 63
  %i.bi = zext nneg i32 %i.bh to i64
  %notmask.i36.i.i.i = shl nsw i64 -1, %i.bi      ; 2 uses
  %i.bj = xor i64 %notmask.i36.i.i.i, -1
end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_:bb.a
iter.check77:                                     ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %i.ay = add i64 %i.e, -8
  %i.az = sub i64 %i.ay, %i.a                     ; 3 uses
  %i.ba = lshr i64 %i.az, 3
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 5 uses
  %min.iters.check58 = icmp ult i64 %i.az, 24
  br i1 %min.iters.check58, label %.lr.ph.i.i.i17.preheader, label %vector.memcheck52

vector.memcheck52:                                ; preds = %iter.check77
  %i.bc = add i64 %i.e, -8
  %i.bd = sub i64 %i.bc, %i.a
  %i.be = and i64 %i.bd, -8                       ; 2 uses
  %i.bf = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.be
  %scevgep53 = getelementptr i8, ptr %i.bf, i64 16
  %i.bg = getelementptr i8, ptr %1, i64 %i.be
  %scevgep54 = getelementptr i8, ptr %i.bg, i64 8
  %bound055 = icmp ult ptr %i.ax, %scevgep54
  %bound156 = icmp ult ptr %1, %scevgep53
  %found.conflict57 = and i1 %bound055, %bound156
  br i1 %found.conflict57, label %.lr.ph.i.i.i17.preheader, label %vector.main.loop.iter.check59

vector.main.loop.iter.check59:                    ; preds = %vector.memcheck52
  %min.iters.check60 = icmp ult i64 %i.az, 120
  br i1 %min.iters.check60, label %vec.epilog.ph81, label %vector.ph61

vector.ph61:                                      ; preds = %vector.main.loop.iter.check59
  %n.mod.vf62 = and i64 %i.bb, 12
  %n.vec63 = and i64 %i.bb, 4611686018427387888   ; 4 uses
  %i.bh = shl i64 %n.vec63, 3                     ; 2 uses
  %i.bi = getelementptr i8, ptr %i.ax, i64 %i.bh  ; 2 uses
  %i.bj = getelementptr i8, ptr %1, i64 %i.bh
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph61
  %index65 = phi i64 [ 0, %vector.ph61 ], [ %index.next72, %vector.body64 ] ; 2 uses
  %i.bk = shl i64 %index65, 3                     ; 2 uses
  %next.gep66 = getelementptr i8, ptr %i.ax, i64 %i.bk ; 4 uses
  %next.gep67 = getelementptr i8, ptr %1, i64 %i.bk ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !461)
  %i.bl = getelementptr i8, ptr %next.gep67, i64 32
  %i.bm = getelementptr i8, ptr %next.gep67, i64 64
  %i.bn = getelementptr i8, ptr %next.gep67, i64 96
  %wide.load68 = load <4 x i64>, ptr %next.gep67, align 8, !tbaa !183, !alias.scope !463, !noalias !458
  %wide.load69 = load <4 x i64>, ptr %i.bl, align 8, !tbaa !183, !alias.scope !463, !noalias !458
  %wide.load70 = load <4 x i64>, ptr %i.bm, align 8, !tbaa !183, !alias.scope !463, !noalias !458
  %wide.load71 = load <4 x i64>, ptr %i.bn, align 8, !tbaa !183, !alias.scope !463, !noalias !458
  %i.bo = getelementptr i8, ptr %next.gep66, i64 32
  %i.bp = getelementptr i8, ptr %next.gep66, i64 64
  %i.bq = getelementptr i8, ptr %next.gep66, i64 96
  store <4 x i64> %wide.load68, ptr %next.gep66, align 8, !tbaa !183, !alias.scope !466, !noalias !463
  store <4 x i64> %wide.load69, ptr %i.bo, align 8, !tbaa !183, !alias.scope !466, !noalias !463
  store <4 x i64> %wide.load70, ptr %i.bp, align 8, !tbaa !183, !alias.scope !466, !noalias !463
  store <4 x i64> %wide.load71, ptr %i.bq, align 8, !tbaa !183, !alias.scope !466, !noalias !463
  %i.br = getelementptr i8, ptr %next.gep67, i64 32
  %i.bs = getelementptr i8, ptr %next.gep67, i64 64
  %i.bt = getelementptr i8, ptr %next.gep67, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep67, align 8, !tbaa !183, !alias.scope !463, !noalias !458
  store <4 x ptr> splat (ptr null), ptr %i.br, align 8, !tbaa !183, !alias.scope !463, !noalias !458
  store <4 x ptr> splat (ptr null), ptr %i.bs, align 8, !tbaa !183, !alias.scope !463, !noalias !458
  store <4 x ptr> splat (ptr null), ptr %i.bt, align 8, !tbaa !183, !alias.scope !463, !noalias !458
  %index.next72 = add nuw i64 %index65, 16        ; 2 uses
  %i.bu = icmp eq i64 %index.next72, %n.vec63
  br i1 %i.bu, label %middle.block73, label %vector.body64, !llvm.loop !468

middle.block73:                                   ; preds = %vector.body64
  %cmp.n74 = icmp eq i64 %i.bb, %n.vec63
  br i1 %cmp.n74, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %vec.epilog.iter.check79

vec.epilog.iter.check79:                          ; preds = %middle.block73
  %min.epilog.iters.check80 = icmp eq i64 %n.mod.vf62, 0
  br i1 %min.epilog.iters.check80, label %.lr.ph.i.i.i17.preheader, label %vec.epilog.ph81, !prof !268

vec.epilog.ph81:                                  ; preds = %vector.main.loop.iter.check59, %vec.epilog.iter.check79
  %vec.epilog.resume.val75 = phi i64 [ %n.vec63, %vec.epilog.iter.check79 ], [ 0, %vector.main.loop.iter.check59 ]
  %n.vec83 = and i64 %i.bb, 4611686018427387900   ; 3 uses
  %i.bv = shl i64 %n.vec83, 3                     ; 2 uses
  %i.bw = getelementptr i8, ptr %i.ax, i64 %i.bv  ; 2 uses
  %i.bx = getelementptr i8, ptr %1, i64 %i.bv
  br label %vec.epilog.vector.body84

vec.epilog.vector.body84:                         ; preds = %vec.epilog.vector.body84, %vec.epilog.ph81
  %index85 = phi i64 [ %vec.epilog.resume.val75, %vec.epilog.ph81 ], [ %index.next89, %vec.epilog.vector.body84 ] ; 2 uses
  %i.by = shl i64 %index85, 3                     ; 2 uses
  %next.gep86 = getelementptr i8, ptr %i.ax, i64 %i.by
  %next.gep87 = getelementptr i8, ptr %1, i64 %i.by ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !461)
  %wide.load88 = load <4 x i64>, ptr %next.gep87, align 8, !tbaa !183, !alias.scope !463, !noalias !458
  store <4 x i64> %wide.load88, ptr %next.gep86, align 8, !tbaa !183, !alias.scope !466, !noalias !463
  store <4 x ptr> splat (ptr null), ptr %next.gep87, align 8, !tbaa !183, !alias.scope !463, !noalias !458
  %index.next89 = add nuw i64 %index85, 4         ; 2 uses
  %i.bz = icmp eq i64 %index.next89, %n.vec83
  br i1 %i.bz, label %vec.epilog.middle.block90, label %vec.epilog.vector.body84, !llvm.loop !469

vec.epilog.middle.block90:                        ; preds = %vec.epilog.vector.body84
  %cmp.n91 = icmp eq i64 %i.bb, %n.vec83
  br i1 %cmp.n91, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %vector.memcheck52, %iter.check77, %vec.epilog.iter.check79, %vec.epilog.middle.block90
  %.012.i.i.i18.ph = phi ptr [ %i.ax, %iter.check77 ], [ %i.ax, %vector.memcheck52 ], [ %i.bi, %vec.epilog.iter.check79 ], [ %i.bw, %vec.epilog.middle.block90 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %iter.check77 ], [ %1, %vector.memcheck52 ], [ %i.bj, %vec.epilog.iter.check79 ], [ %i.bx, %vec.epilog.middle.block90 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.cc, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.cb, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !461)
  %i.ca = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !183, !alias.scope !461, !noalias !458
  store i64 %i.ca, ptr %.012.i.i.i18, align 8, !tbaa !183, !alias.scope !458, !noalias !461
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !183, !alias.scope !461, !noalias !458
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.cb, %i.c
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !470

_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block73, %vec.epilog.middle.block90, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ax, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ], [ %i.bw, %vec.epilog.middle.block90 ], [ %i.bi, %middle.block73 ], [ %i.cc, %.lr.ph.i.i.i17 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.d, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !253
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = sub i64 %i.cf, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.cg) #32
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, %bb.c
  store ptr %i.q, ptr %0, align 8, !tbaa !254
  store ptr %.0.lcssa.i.i.i21, ptr %i.b, align 8, !tbaa !184
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.m
  store ptr %i.ch, ptr %i.cd, align 8, !tbaa !253
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZN8facebook5velox4exec12ConjunctExpr18maybeReorderInputsEvE3$_0EEEvT_SF_T0_T1_"(ptr %0, ptr %1, i64 noundef %2, ptr nofree readonly captures(none) %3) unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox4exec12ConjunctExpr18maybeReorderInputsEvE3$_0EEEvT_SF_SF_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr i8, ptr %3, i64 512
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph46

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox4exec12ConjunctExpr18maybeReorderInputsEvE3$_0EEET_SF_SF_T0_.exit"
  %i.i = icmp eq i64 %i.w, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph46, !llvm.loop !471

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa42 = phi i64 [ %i.d, %.lr.ph ], [ %i.cx, %bb.b ] ; 2 uses
  %storemerge23.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.016.1.i.i, %bb.b ]
  %i.j = add nsw i64 %.lcssa42, -2
  %i.k = lshr i64 %i.j, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.k, %._crit_edge ], [ %i.n, %bb.c ] ; 4 uses
  %i.l = getelementptr inbounds [4 x i8], ptr %0, i64 %.09.i.i.i
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3
  tail call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN8facebook5velox4exec12ConjunctExpr18maybeReorderInputsEvE3$_0EEEvT_T0_SG_T1_T2_"(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa42, i32 noundef %i.m, ptr readonly %3)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.n = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i9.i, label %bb.c, !llvm.loop !472

.lr.ph.i9.i:                                      ; preds = %bb.c, %.lr.ph.i9.i
  %.sroa.0.03.i.i = phi ptr [ %i.o, %.lr.ph.i9.i ], [ %storemerge23.lcssa, %bb.c ]
  %i.o = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -4 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3
  %i.q = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.q, ptr %i.o, align 4, !tbaa !3
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.r, %i.a                       ; 2 uses
  %i.t = ashr exact i64 %i.s, 2
  tail call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN8facebook5velox4exec12ConjunctExpr18maybeReorderInputsEvE3$_0EEEvT_T0_SG_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.t, i32 noundef %i.p, ptr readonly %3)
  %i.u = icmp sgt i64 %i.s, 4
  br i1 %i.u, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox4exec12ConjunctExpr18maybeReorderInputsEvE3$_0EEEvT_SF_SF_T0_.exit", !llvm.loop !473

.lr.ph46:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2345 = phi ptr [ %.sroa.016.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02444 = phi i64 [ %i.w, %bb.b ], [ %2, %.lr.ph ]
  %i.v = phi i64 [ %i.cx, %bb.b ], [ %i.d, %.lr.ph ]
  %i.w = add nsw i64 %.02444, -1                  ; 3 uses
  %.val = load ptr, ptr %i.f, align 8, !tbaa !195 ; 6 uses
  %i.x = lshr i64 %i.v, 1
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.x ; 3 uses
  %i.z = getelementptr inbounds i8, ptr %storemerge2345, i64 -4 ; 3 uses
  %i.aa = load i32, ptr %i.g, align 4, !tbaa !3   ; 3 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = load i32, ptr %i.y, align 4, !tbaa !3   ; 3 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %i.ab ; 3 uses
  %4 = load i64, ptr %i.ae, align 8, !tbaa !196   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !243 ; 2 uses
  %5 = icmp eq i64 %4, %i.ag
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !324
  %6 = uitofp i64 %i.ai to float
  %7 = sub i64 %4, %i.ag
  %8 = uitofp i64 %7 to float
  %9 = select i1 %5, float 1.000000e+00, float %8
  %.0.i.i.i.i.i = fdiv float %6, %9               ; 3 uses
  %10 = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %i.ad ; 3 uses
  %11 = load i64, ptr %10, align 8, !tbaa !196    ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %13 = load i64, ptr %12, align 8, !tbaa !243    ; 2 uses
  %14 = icmp eq i64 %11, %13
  %15 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %16 = load i64, ptr %15, align 8, !tbaa !324
  %17 = uitofp i64 %16 to float
  %18 = sub i64 %11, %13
  %19 = uitofp i64 %18 to float
  %20 = select i1 %14, float 1.000000e+00, float %19
  %.0.i2.i.i.i.i = fdiv float %17, %20            ; 3 uses
  %i.aj = fcmp olt float %.0.i.i.i.i.i, %.0.i2.i.i.i.i
  %i.ak = load i32, ptr %i.z, align 4, !tbaa !3   ; 3 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %i.al ; 3 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !196 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !243 ; 2 uses
  %i.aq = icmp eq i64 %i.an, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !324
  %i.at = uitofp i64 %i.as to float
  %i.au = sub i64 %i.an, %i.ap
  %i.av = uitofp i64 %i.au to float
  %i.aw = select i1 %i.aq, float 1.000000e+00, float %i.av
  %.0.i2.i.i31.i.i = fdiv float %i.at, %i.aw      ; 4 uses
  br i1 %i.aj, label %bb.d, label %bb.i

bb.d:                                             ; preds = %.lr.ph46
  %i.ax = fcmp olt float %.0.i2.i.i.i.i, %.0.i2.i.i31.i.i
  br i1 %i.ax, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ay = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.ac, ptr %0, align 4, !tbaa !3
  store i32 %i.ay, ptr %i.y, align 4, !tbaa !3
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox4exec12ConjunctExpr18maybeReorderInputsEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.f:                                             ; preds = %bb.d
  %i.az = fcmp olt float %.0.i.i.i.i.i, %.0.i2.i.i31.i.i
  %i.ba = load i32, ptr %0, align 4, !tbaa !3     ; 2 uses
  br i1 %i.az, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 %i.ak, ptr %0, align 4, !tbaa !3
  store i32 %i.ba, ptr %i.z, align 4, !tbaa !3
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox4exec12ConjunctExpr18maybeReorderInputsEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.h:                                             ; preds = %bb.f
  store i32 %i.aa, ptr %0, align 4, !tbaa !3
  store i32 %i.ba, ptr %i.g, align 4, !tbaa !3
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox4exec12ConjunctExpr18maybeReorderInputsEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.i:                                             ; preds = %.lr.ph46
  %i.bb = fcmp olt float %.0.i.i.i.i.i, %.0.i2.i.i31.i.i
  br i1 %i.bb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bc = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.aa, ptr %0, align 4, !tbaa !3
  store i32 %i.bc, ptr %i.g, align 4, !tbaa !3
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox4exec12ConjunctExpr18maybeReorderInputsEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.k:                                             ; preds = %bb.i
  %i.bd = fcmp olt float %.0.i2.i.i.i.i, %.0.i2.i.i31.i.i
  %i.be = load i32, ptr %0, align 4, !tbaa !3     ; 2 uses
  br i1 %i.bd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 %i.ak, ptr %0, align 4, !tbaa !3
  store i32 %i.be, ptr %i.z, align 4, !tbaa !3
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox4exec12ConjunctExpr18maybeReorderInputsEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.m:                                             ; preds = %bb.k
  store i32 %i.ac, ptr %0, align 4, !tbaa !3
  store i32 %i.be, ptr %i.y, align 4, !tbaa !3
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox4exec12ConjunctExpr18maybeReorderInputsEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox4exec12ConjunctExpr18maybeReorderInputsEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader": ; preds = %bb.m, %bb.l, %bb.j, %bb.h, %bb.g, %bb.e
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox4exec12ConjunctExpr18maybeReorderInputsEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox4exec12ConjunctExpr18maybeReorderInputsEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox4exec12ConjunctExpr18maybeReorderInputsEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader", %bb.p
  %.sroa.013.0.i.i = phi ptr [ %.sroa.013.1.i.i, %bb.p ], [ %storemerge2345, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox4exec12ConjunctExpr18maybeReorderInputsEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader" ]
  %.sroa.016.0.i.i = phi ptr [ %i.cg, %bb.p ], [ %i.g, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox4exec12ConjunctExpr18maybeReorderInputsEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader" ]
  %i.bf = load i32, ptr %0, align 4, !tbaa !3
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %i.bg ; 3 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !196 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !243 ; 2 uses
  %i.bl = icmp eq i64 %i.bi, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !324
  %i.bo = uitofp i64 %i.bn to float
  %i.bp = sub i64 %i.bi, %i.bk
  %i.bq = uitofp i64 %i.bp to float
  %i.br = select i1 %i.bl, float 1.000000e+00, float %i.bq
  %.0.i2.i.i.i12.i = fdiv float %i.bo, %i.br      ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox4exec12ConjunctExpr18maybeReorderInputsEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i"
  %.sroa.016.1.i.i = phi ptr [ %.sroa.016.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox4exec12ConjunctExpr18maybeReorderInputsEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i" ], [ %i.cg, %bb.n ] ; 8 uses
  %i.bs = load i32, ptr %.sroa.016.1.i.i, align 4, !tbaa !3 ; 2 uses
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %i.bt ; 3 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !196 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !243 ; 2 uses
  %i.by = icmp eq i64 %i.bv, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !324
  %i.cb = uitofp i64 %i.ca to float
  %i.cc = sub i64 %i.bv, %i.bx
  %i.cd = uitofp i64 %i.cc to float
  %i.ce = select i1 %i.by, float 1.000000e+00, float %i.cd
  %.0.i.i.i.i13.i = fdiv float %i.cb, %i.ce
  %i.cf = fcmp olt float %.0.i.i.i.i13.i, %.0.i2.i.i.i12.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.016.1.i.i, i64 4 ; 2 uses
  br i1 %i.cf, label %bb.n, label %.preheader.i.i, !llvm.loop !474

.preheader.i.i:                                   ; preds = %bb.n, %.preheader.i.i
  %.sroa.013.0.pn.i.i = phi ptr [ %.sroa.013.1.i.i, %.preheader.i.i ], [ %.sroa.013.0.i.i, %bb.n ]
  %.sroa.013.1.i.i = getelementptr inbounds i8, ptr %.sroa.013.0.pn.i.i, i64 -4 ; 5 uses
  %i.ch = load i32, ptr %.sroa.013.1.i.i, align 4, !tbaa !3 ; 2 uses
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %i.ci ; 3 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !196 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !243 ; 2 uses
  %i.cn = icmp eq i64 %i.ck, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !324
  %i.cq = uitofp i64 %i.cp to float
  %i.cr = sub i64 %i.ck, %i.cm
  %i.cs = uitofp i64 %i.cr to float
  %i.ct = select i1 %i.cn, float 1.000000e+00, float %i.cs
  %.0.i2.i.i12.i.i = fdiv float %i.cq, %i.ct
  %i.cu = fcmp olt float %.0.i2.i.i.i12.i, %.0.i2.i.i12.i.i
  br i1 %i.cu, label %.preheader.i.i, label %bb.o, !llvm.loop !475

bb.o:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.016.1.i.i, %.sroa.013.1.i.i
  br i1 %.not.i.i, label %bb.p, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox4exec12ConjunctExpr18maybeReorderInputsEvE3$_0EEET_SF_SF_T0_.exit"

bb.p:                                             ; preds = %bb.o
  store i32 %i.ch, ptr %.sroa.016.1.i.i, align 4, !tbaa !3
  store i32 %i.bs, ptr %.sroa.013.1.i.i, align 4, !tbaa !3
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox4exec12ConjunctExpr18maybeReorderInputsEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i", !llvm.loop !476

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox4exec12ConjunctExpr18maybeReorderInputsEvE3$_0EEET_SF_SF_T0_.exit": ; preds = %bb.o
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZN8facebook5velox4exec12ConjunctExpr18maybeReorderInputsEvE3$_0EEEvT_SF_T0_T1_"(ptr nonnull %.sroa.016.1.i.i, ptr %storemerge2345, i64 noundef %i.w, ptr %3)
  %i.cv = ptrtoint ptr %.sroa.016.1.i.i to i64
  %i.cw = sub i64 %i.cv, %i.a
  %i.cx = ashr exact i64 %i.cw, 2                 ; 3 uses
  %i.cy = icmp sgt i64 %i.cx, 16
  br i1 %i.cy, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox4exec12ConjunctExpr18maybeReorderInputsEvE3$_0EEEvT_SF_SF_T0_.exit", !llvm.loop !471

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox4exec12ConjunctExpr18maybeReorderInputsEvE3$_0EEEvT_SF_SF_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox4exec12ConjunctExpr18maybeReorderInputsEvE3$_0EEET_SF_SF_T0_.exit", %.lr.ph.i9.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN8facebook5velox4exec12ConjunctExpr18maybeReorderInputsEvE3$_0EEEvT_T0_SG_T1_T2_"(ptr nofree captures(none) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr nofree readonly captures(none) %4) unnamed_addr #23 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr i8, ptr %4, i64 512
  %.val.val = load ptr, ptr %i.d, align 8, !tbaa !195 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.038 = phi i64 [ %1, %.lr.ph ], [ %spec.select, %bb.b ] ; 2 uses
  %i.e = shl i64 %.038, 1                         ; 2 uses
  %i.f = add i64 %i.e, 2                          ; 2 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %0, i64 %i.f
  %i.h = or disjoint i64 %i.e, 1                  ; 2 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %0, i64 %i.h
  %i.j = load i32, ptr %i.g, align 4, !tbaa !3
  %i.k = sext i32 %i.j to i64
  %i.l = load i32, ptr %i.i, align 4, !tbaa !3
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %.val.val, i64 %i.k ; 3 uses
  %5 = load i64, ptr %i.n, align 8, !tbaa !196    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !243  ; 2 uses
  %6 = icmp eq i64 %5, %i.p
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !324
  %7 = uitofp i64 %i.r to float
  %8 = sub i64 %5, %i.p
  %9 = uitofp i64 %8 to float
  %10 = select i1 %6, float 1.000000e+00, float %9
  %.0.i.i.i = fdiv float %7, %10
  %11 = getelementptr inbounds nuw [24 x i8], ptr %.val.val, i64 %i.m ; 3 uses
  %12 = load i64, ptr %11, align 8, !tbaa !196    ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %14 = load i64, ptr %13, align 8, !tbaa !243    ; 2 uses
  %15 = icmp eq i64 %12, %14
  %16 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %17 = load i64, ptr %16, align 8, !tbaa !324
  %18 = uitofp i64 %17 to float
  %19 = sub i64 %12, %14
  %20 = uitofp i64 %19 to float
  %21 = select i1 %15, float 1.000000e+00, float %20
  %.0.i2.i.i = fdiv float %18, %21
  %22 = fcmp olt float %.0.i.i.i, %.0.i2.i.i
  %spec.select = select i1 %22, i64 %i.h, i64 %i.f ; 4 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %.038
  store i32 %i.t, ptr %i.u, align 4, !tbaa !3
  %i.v = icmp slt i64 %spec.select, %i.b
  br i1 %i.v, label %bb.b, label %._crit_edge, !llvm.loop !477

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %bb.b ] ; 5 uses
  %i.w = and i64 %2, 1
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge
  %i.y = add nsw i64 %2, -2
  %i.z = ashr exact i64 %i.y, 1
  %i.aa = icmp eq i64 %.0.lcssa, %i.z
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = shl nsw i64 %.0.lcssa, 1
  %i.ac = or disjoint i64 %i.ab, 1                ; 2 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !3
  %i.af = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %.1 = phi i64 [ %i.ac, %bb.d ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.ag = icmp sgt i64 %.1, %1
  br i1 %i.ag, label %.lr.ph.i, label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops14_Iter_comp_valIZN8facebook5velox4exec12ConjunctExpr18maybeReorderInputsEvE3$_0EEEvT_T0_SG_T1_RT2_.exit"

.lr.ph.i:                                         ; preds = %bb.e
  %i.ah = getelementptr i8, ptr %4, i64 512
  %.val.val.i = load ptr, ptr %i.ah, align 8, !tbaa !195 ; 2 uses
  %i.ai = sext i32 %3 to i64
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %.val.val.i, i64 %i.ai ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !196 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !243 ; 2 uses
  %i.an = icmp eq i64 %i.ak, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !324
  %i.aq = uitofp i64 %i.ap to float
  %i.ar = sub i64 %i.ak, %i.am
  %i.as = uitofp i64 %i.ar to float
  %i.at = select i1 %i.an, float 1.000000e+00, float %i.as
  %.0.i2.i.i.i = fdiv float %i.aq, %i.at
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %.010.i = phi i64 [ %.1, %.lr.ph.i ], [ %.0911.i, %bb.g ] ; 3 uses
  %.0911.in.i = add nsw i64 %.010.i, -1
  %.0911.i = sdiv i64 %.0911.in.i, 2              ; 4 uses
  %i.au = getelementptr inbounds [4 x i8], ptr %0, i64 %.0911.i
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3  ; 2 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %.val.val.i, i64 %i.aw ; 3 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !196 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !243 ; 2 uses
  %i.bb = icmp eq i64 %i.ay, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !324
  %i.be = uitofp i64 %i.bd to float
  %i.bf = sub i64 %i.ay, %i.ba
  %i.bg = uitofp i64 %i.bf to float
  %i.bh = select i1 %i.bb, float 1.000000e+00, float %i.bg
  %.0.i.i.i.i = fdiv float %i.be, %i.bh
  %i.bi = fcmp olt float %.0.i.i.i.i, %.0.i2.i.i.i
  br i1 %i.bi, label %bb.g, label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops14_Iter_comp_valIZN8facebook5velox4exec12ConjunctExpr18maybeReorderInputsEvE3$_0EEEvT_T0_SG_T1_RT2_.exit"

bb.g:                                             ; preds = %bb.f
  %i.bj = getelementptr inbounds [4 x i8], ptr %0, i64 %.010.i
  store i32 %i.av, ptr %i.bj, align 4, !tbaa !3
  %i.bk = icmp sgt i64 %.0911.i, %1
  br i1 %i.bk, label %bb.f, label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops14_Iter_comp_valIZN8facebook5velox4exec12ConjunctExpr18maybeReorderInputsEvE3$_0EEEvT_T0_SG_T1_RT2_.exit", !llvm.loop !478

"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops14_Iter_comp_valIZN8facebook5velox4exec12ConjunctExpr18maybeReorderInputsEvE3$_0EEEvT_T0_SG_T1_RT2_.exit": ; preds = %bb.f, %bb.g, %bb.e
  %.0.lcssa.i = phi i64 [ %.1, %bb.e ], [ %.010.i, %bb.f ], [ %.0911.i, %bb.g ]
  %i.bl = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i
  store i32 %3, ptr %i.bl, align 4, !tbaa !3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox4exec12ConjunctExpr18maybeReorderInputsEvE3$_0EEEvT_SF_T0_"(ptr %0, ptr nofree readnone captures(address) %1, ptr nofree readonly captures(none) %2) unnamed_addr #23 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.018 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = icmp eq ptr %.sroa.0.018, %1
  br i1 %i.b, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.c = getelementptr i8, ptr %2, i64 512
  %i.d = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit
  %.sroa.0.020 = phi ptr [ %.sroa.0.018, %.lr.ph ], [ %.sroa.0.0, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ] ; 6 uses
  %.pn19 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.020, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ] ; 4 uses
  %.val.val = load ptr, ptr %i.c, align 8, !tbaa !195 ; 4 uses
  %i.e = load i32, ptr %.sroa.0.020, align 4, !tbaa !3 ; 2 uses
  %i.f = sext i32 %i.e to i64
  %i.g = load i32, ptr %0, align 4, !tbaa !3      ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %.val.val, i64 %i.f ; 3 uses
  %3 = load i64, ptr %i.i, align 8, !tbaa !196    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !243  ; 2 uses
  %4 = icmp eq i64 %3, %i.k
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !324
  %5 = uitofp i64 %i.m to float
  %6 = sub i64 %3, %i.k
  %7 = uitofp i64 %6 to float
  %8 = select i1 %4, float 1.000000e+00, float %7
  %.0.i.i.i = fdiv float %5, %8                   ; 3 uses
  %9 = getelementptr inbounds nuw [24 x i8], ptr %.val.val, i64 %i.h ; 3 uses
  %10 = load i64, ptr %9, align 8, !tbaa !196     ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %12 = load i64, ptr %11, align 8, !tbaa !243    ; 2 uses
  %13 = icmp eq i64 %10, %12
  %14 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %15 = load i64, ptr %14, align 8, !tbaa !324
  %16 = uitofp i64 %15 to float
  %17 = sub i64 %10, %12
  %18 = uitofp i64 %17 to float
  %19 = select i1 %13, float 1.000000e+00, float %18
  %.0.i2.i.i = fdiv float %16, %19
  %20 = fcmp olt float %.0.i.i.i, %.0.i2.i.i
  br i1 %20, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.n = ptrtoint ptr %.sroa.0.020 to i64
  %i.o = sub i64 %i.n, %i.d                       ; 3 uses
  %i.p = ashr exact i64 %i.o, 2                   ; 2 uses
  %i.q = icmp sgt i64 %i.p, 1
  br i1 %i.q, label %bb.d, label %bb.e, !prof !91

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.pn19, i64 8
  %i.s = sub nsw i64 0, %i.p
  %i.t = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.s
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.t, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.o, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.c
  %i.u = icmp eq i64 %i.o, 4
  br i1 %i.u, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.pn19, i64 4
  store i32 %i.g, ptr %i.v, align 4, !tbaa !3
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.b
  %i.w = load i32, ptr %.pn19, align 4, !tbaa !3  ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %.val.val, i64 %i.x ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !196  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !243 ; 2 uses
  %i.ac = icmp eq i64 %i.z, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !324
  %i.af = uitofp i64 %i.ae to float
  %i.ag = sub i64 %i.z, %i.ab
  %i.ah = uitofp i64 %i.ag to float
  %i.ai = select i1 %i.ac, float 1.000000e+00, float %i.ah
  %.0.i2.i.i10.i = fdiv float %i.af, %i.ai
  %i.aj = fcmp olt float %.0.i.i.i, %.0.i2.i.i10.i
  br i1 %i.aj, label %.lr.ph.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %i.ak = phi i32 [ %i.al, %.lr.ph.i ], [ %i.w, %bb.g ]
  %.sroa.0.012.i = phi ptr [ %.sroa.0.0.i, %.lr.ph.i ], [ %.pn19, %bb.g ] ; 3 uses
  %.sroa.06.011.i = phi ptr [ %.sroa.0.012.i, %.lr.ph.i ], [ %.sroa.0.020, %bb.g ]
  store i32 %i.ak, ptr %.sroa.06.011.i, align 4, !tbaa !3
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.012.i, i64 -4 ; 2 uses
  %i.al = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !3 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %.val.val, i64 %i.am ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !196 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !243 ; 2 uses
  %i.ar = icmp eq i64 %i.ao, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !324
  %i.au = uitofp i64 %i.at to float
  %i.av = sub i64 %i.ao, %i.aq
  %i.aw = uitofp i64 %i.av to float
  %i.ax = select i1 %i.ar, float 1.000000e+00, float %i.aw
  %.0.i2.i.i.i = fdiv float %i.au, %i.ax
  %i.ay = fcmp olt float %.0.i.i.i, %.0.i2.i.i.i
  br i1 %i.ay, label %.lr.ph.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, !llvm.loop !325

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %.lr.ph.i, %bb.g, %bb.f, %bb.e, %bb.d
  %.sink = phi ptr [ %0, %bb.f ], [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.020, %bb.g ], [ %.sroa.0.012.i, %.lr.ph.i ]
  store i32 %i.e, ptr %.sink, align 4, !tbaa !3
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.020, i64 4 ; 2 uses
  %i.az = icmp eq ptr %.sroa.0.0, %1
  br i1 %i.az, label %.loopexit, label %bb.b, !llvm.loop !479

.loopexit:                                        ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN8facebook5velox4exec4ExprEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !186    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !185  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec4ExprEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec4ExprEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec4ExprEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !193  ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec4ExprEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !218
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !220
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !93
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #15, !inline_history !480
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !93
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #15, !inline_history !480
  br label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec4ExprEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !222
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec4ExprEEEvPT_.exit.i.i, !prof !223

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #15
  br label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec4ExprEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec4ExprEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec4ExprEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !481

_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec4ExprEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec4ExprEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !186
  br label %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec4ExprEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec4ExprEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec4ExprEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec4ExprEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10shared_ptrIN8facebook5velox4exec4ExprEESaIS5_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec4ExprEES5_EvT_S7_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !482
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #32
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN8facebook5velox4exec4ExprEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseISt10shared_ptrIN8facebook5velox4exec4ExprEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec4ExprEES5_EvT_S7_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !193  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !218
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !220
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !93
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #15, !inline_history !315
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !93
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #15, !inline_history !315
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !222
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !223

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #15
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIN8facebook5velox4exec4Expr21InputForSharedResultsESt4pairIKS4_NS3_13SharedResultsEESt10_Select1stIS8_ESt4lessIS4_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !483
  tail call void @_ZNSt8_Rb_treeIN8facebook5velox4exec4Expr21InputForSharedResultsESt4pairIKS4_NS3_13SharedResultsEESt10_Select1stIS8_ESt4lessIS4_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !484  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  tail call void @_ZNSt4pairIKN8facebook5velox4exec4Expr21InputForSharedResultsENS3_13SharedResultsEED2Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.e) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 104) #32
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !485

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt4pairIKN8facebook5velox4exec4Expr21InputForSharedResultsENS3_13SharedResultsEED2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !193  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !218
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !220
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !93
end_hunk_1
