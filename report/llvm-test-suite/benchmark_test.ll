inline.NumInlined: 926
inline.NumDeleted: 399
begin_hunk_0_@_ZL16BM_SetupTeardownRN9benchmark5StateE:bb.a
  br i1 %i.m, label %bb.d, label %bb.k

bb.d:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !112
  %.not.i11 = icmp eq ptr %i.p, %i.r
  br i1 %.not.i11, label %bb.f, label %bb.e
end_hunk_0
begin_hunk_1_@_ZL16BM_SetupTeardownRN9benchmark5StateE:bb.a
bb.f:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !113  ; 4 uses
  %i.u = ptrtoint ptr %i.p to i64
  %i.v = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.w = sub i64 %i.u, %i.v                       ; 5 uses
  %i.x = icmp eq i64 %i.w, 9223372036854775804
  br i1 %i.x, label %bb.g, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

end_hunk_1
begin_hunk_2_@_ZL16BM_SetupTeardownRN9benchmark5StateE:bb.a
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %1 = load ptr, ptr %i.q, align 8, !tbaa !112
  %2 = ptrtoint ptr %1 to i64
  %3 = sub i64 %2, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %3) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
end_hunk_2
begin_hunk_3_@_GLOBAL__sub_I_benchmark_test.cc:bb.a
  %i.dv = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #26
          to label %bb.ag unwind label %29        ; 6 uses

29:                                               ; preds = %bb.af
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.ag:                                            ; preds = %bb.af
  store ptr %i.dv, ptr %22, align 8, !tbaa !172
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32 ; 2 uses
end_hunk_3
begin_hunk_4_@_GLOBAL__sub_I_benchmark_test.cc:bb.a
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #24
  br label %__cxx_global_var_init.9.exit

bb.aj:                                            ; preds = %bb.ag
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
end_hunk_4
begin_hunk_5_@_GLOBAL__sub_I_benchmark_test.cc:bb.a
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i

.thread.i:                                        ; preds = %bb.ak, %bb.aj, %29
  %.pn.i = phi { ptr, i32 } [ %30, %29 ], [ %i.ej, %bb.ak ], [ %i.ej, %bb.aj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  %i.es = load ptr, ptr %21, align 8, !tbaa !51   ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.dq
end_hunk_5
