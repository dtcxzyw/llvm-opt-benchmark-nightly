inline.NumInlined: 2838
inline.NumDeleted: 1070
begin_hunk_0_@_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIbEEvv:bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 1, ptr %i.a, align 1, !tbaa !284
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeERKS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.h = load ptr, ptr %1, align 8, !tbaa !27     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #20
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb15SelectionVectorESaIS1_EE12emplace_backIJS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !309  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !473
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = icmp eq ptr %i.b, %1
  br i1 %i.f, label %_ZN6duckdb15SelectionVectorC2ERKS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !408  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !66   ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !11
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %i.k, align 4, !tbaa !3
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.k, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.thread.i

_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.thread.i: ; preds = %bb.e, %bb.c
  store ptr %i.h, ptr %i.e, align 8, !tbaa !401
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.j, ptr %i.o, align 8, !tbaa !66
  br label %_ZN6duckdb15SelectionVectorC2ERKS0_.exit

_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.i: ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.k, i32 1 acq_rel, align 4 ; 0 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !66 ; 8 uses
  store ptr %i.h, ptr %i.e, align 8, !tbaa !401
  store ptr %i.j, ptr %.phi.trans.insert.i, align 8, !tbaa !66
  %.not.i.i.i.i.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorC2ERKS0_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8 ; 4 uses
  %i.r = load atomic i64, ptr %i.q acquire, align 8 ; 2 uses
  %i.s = icmp eq i64 %i.r, 4294967297
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.q, align 8, !tbaa !67
  %i.u = getelementptr inbounds nuw i8, ptr %.pre.i, i64 12
  store i32 0, ptr %i.u, align 4, !tbaa !69
  %i.v = load ptr, ptr %.pre.i, align 8, !tbaa !64
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i) #20, !inline_history !474
  %i.y = load ptr, ptr %.pre.i, align 8, !tbaa !64
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i) #20, !inline_history !474
  br label %_ZN6duckdb15SelectionVectorC2ERKS0_.exit

bb.h:                                             ; preds = %bb.f
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !11
  %.not.i.i.i.i5.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i5.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = add nsw i32 %i.t, -1
  store i32 %i.ac, ptr %i.q, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ad = atomicrmw volatile add ptr %i.q, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.t, %bb.i ], [ %i.ad, %bb.j ]
  %i.ae = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ae, label %bb.k, label %_ZN6duckdb15SelectionVectorC2ERKS0_.exit, !prof !71

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i) #20
  br label %_ZN6duckdb15SelectionVectorC2ERKS0_.exit

_ZN6duckdb15SelectionVectorC2ERKS0_.exit:         ; preds = %bb.b, %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.thread.i, %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.i, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.k
  %i.af = load ptr, ptr %1, align 8, !tbaa !102
  store ptr %i.af, ptr %i.b, align 8, !tbaa !102
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !309
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr %i.ah, ptr %i.a, align 8, !tbaa !309
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN6duckdb15SelectionVectorESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN6duckdb15SelectionVectorC2ERKS0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb15SelectionVectorESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !309  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !311    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6duckdb15SelectionVectorESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #22
  unreachable

_ZNKSt6vectorIN6duckdb15SelectionVectorESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #21 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.s = icmp eq ptr %i.q, %2
  br i1 %i.s, label %bb.k, label %3

3:                                                ; preds = %_ZNKSt6vectorIN6duckdb15SelectionVectorESaIS1_EE12_M_check_lenEmPKc.exit
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %5 = load ptr, ptr %4, align 8, !tbaa !408      ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %7 = load ptr, ptr %6, align 8, !tbaa !66       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %7, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.thread.i, label %bb.c

bb.c:                                             ; preds = %3
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !11
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load i32, ptr %i.t, align 4, !tbaa !3
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.thread.i

_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.thread.i: ; preds = %bb.d, %3
  store ptr %5, ptr %i.r, align 8, !tbaa !401
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %7, ptr %i.x, align 8, !tbaa !66
  br label %bb.k

_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.i: ; preds = %bb.c
  %i.y = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4 ; 0 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !66 ; 8 uses
  store ptr %5, ptr %i.r, align 8, !tbaa !401
  store ptr %7, ptr %.phi.trans.insert.i, align 8, !tbaa !66
  %.not.i.i.i.i.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.z, align 8, !tbaa !67
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre.i, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !69
  %i.ae = load ptr, ptr %.pre.i, align 8, !tbaa !64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i) #20, !inline_history !474
  %i.ah = load ptr, ptr %.pre.i, align 8, !tbaa !64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i) #20, !inline_history !474
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !11
  %.not.i.i.i.i5.i.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i.i5.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ac, %bb.h ], [ %i.am, %bb.i ]
  %i.an = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.an, label %bb.j, label %bb.k, !prof !71

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i) #20
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.f, %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.i, %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.thread.i, %_ZNKSt6vectorIN6duckdb15SelectionVectorESaIS1_EE12_M_check_lenEmPKc.exit
  %i.ao = load ptr, ptr %2, align 8, !tbaa !102
  store ptr %i.ao, ptr %i.q, align 8, !tbaa !102
  %.not13.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not13.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb15SelectionVectorES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.k, %bb.u
  %.015.i.i.i.i.i = phi ptr [ %i.bs, %bb.u ], [ %i.p, %bb.k ] ; 6 uses
  %.01214.i.i.i.i.i = phi ptr [ %i.br, %bb.u ], [ %i.c, %bb.k ] ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  %i.aq = icmp eq ptr %.015.i.i.i.i.i, %.01214.i.i.i.i.i
  br i1 %i.aq, label %bb.u, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !408 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !66 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.thread.i.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 3 uses
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !11
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.i.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !3
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.av, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.thread.i.i.i.i.i.i.i

_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.thread.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.l
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !401
  %i.az = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 16
  store ptr %i.au, ptr %i.az, align 8, !tbaa !66
  br label %bb.u

_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.m
  %i.ba = atomicrmw volatile add ptr %i.av, i32 1 acq_rel, align 4 ; 0 uses
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 16 ; 2 uses
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !tbaa !66 ; 8 uses
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !401
  store ptr %i.au, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !tbaa !66
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.pre.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.u, label %bb.o

bb.o:                                             ; preds = %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.i.i.i.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i.i, i64 8 ; 4 uses
  %i.bc = load atomic i64, ptr %i.bb acquire, align 8 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 4294967297
  %i.be = trunc i64 %i.bc to i32                  ; 2 uses
  br i1 %i.bd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.bb, align 8, !tbaa !67
  %i.bf = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i.i, i64 12
  store i32 0, ptr %i.bf, align 4, !tbaa !69
  %i.bg = load ptr, ptr %.pre.i.i.i.i.i.i.i, align 8, !tbaa !64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i.i.i.i.i.i.i) #20, !inline_history !475
  %i.bj = load ptr, ptr %.pre.i.i.i.i.i.i.i, align 8, !tbaa !64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  tail call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i.i.i.i.i.i.i) #20, !inline_history !475
  br label %bb.u

bb.q:                                             ; preds = %bb.o
  %i.bm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !11
  %.not.i.i.i.i5.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bm, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bn = add nsw i32 %i.be, -1
  store i32 %i.bn, ptr %i.bb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bo = atomicrmw volatile add ptr %i.bb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.be, %bb.r ], [ %i.bo, %bb.s ]
  %i.bp = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bp, label %bb.t, label %bb.u, !prof !71

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i.i.i.i.i.i.i) #20
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.p, %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.i.i.i.i.i.i.i, %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.thread.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.bq = load ptr, ptr %.01214.i.i.i.i.i, align 8, !tbaa !102
  store ptr %i.bq, ptr %.015.i.i.i.i.i, align 8, !tbaa !102
  %i.br = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 24 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.br, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb15SelectionVectorES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !476

_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb15SelectionVectorES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %bb.u, %bb.k
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %bb.k ], [ %i.bs, %bb.u ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24 ; 2 uses
  %.not13.i.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not13.i.i.i.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb15SelectionVectorES2_SaIS1_EET0_T_S5_S4_RT1_.exit44, label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb15SelectionVectorES2_SaIS1_EET0_T_S5_S4_RT1_.exit, %bb.ae
  %.015.i.i.i.i.i30 = phi ptr [ %i.cx, %bb.ae ], [ %i.bt, %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb15SelectionVectorES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 6 uses
  %.01214.i.i.i.i.i31 = phi ptr [ %i.cw, %bb.ae ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb15SelectionVectorES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i30, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i8 0, i64 16, i1 false)
  %i.bv = icmp eq ptr %.015.i.i.i.i.i30, %.01214.i.i.i.i.i31
  br i1 %i.bv, label %bb.ae, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i29
  %i.bw = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i31, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !408 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i31, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !66 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i32 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i32, label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.thread.i.i.i.i.i.i.i34, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 3 uses
  %i.cb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !11
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i33 = icmp eq i8 %i.cb, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i33, label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.i.i.i.i.i.i.i37, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !3
  %i.cd = add nsw i32 %i.cc, 1
  store i32 %i.cd, ptr %i.ca, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.thread.i.i.i.i.i.i.i34

_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.thread.i.i.i.i.i.i.i34: ; preds = %bb.x, %bb.v
  store ptr %i.bx, ptr %i.bu, align 8, !tbaa !401
  %i.ce = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i30, i64 16
  store ptr %i.bz, ptr %i.ce, align 8, !tbaa !66
  br label %bb.ae

_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.i.i.i.i.i.i.i37: ; preds = %bb.w
  %i.cf = atomicrmw volatile add ptr %i.ca, i32 1 acq_rel, align 4 ; 0 uses
  %.phi.trans.insert.i.i.i.i.i.i.i38 = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i30, i64 16 ; 2 uses
  %.pre.i.i.i.i.i.i.i39 = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i.i38, align 8, !tbaa !66 ; 8 uses
  store ptr %i.bx, ptr %i.bu, align 8, !tbaa !401
  store ptr %i.bz, ptr %.phi.trans.insert.i.i.i.i.i.i.i38, align 8, !tbaa !66
  %.not.i.i.i.i.i.i.i.i.i.i.i.i40 = icmp eq ptr %.pre.i.i.i.i.i.i.i39, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i40, label %bb.ae, label %bb.y

bb.y:                                             ; preds = %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.i.i.i.i.i.i.i37
  %i.cg = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i.i39, i64 8 ; 4 uses
  %i.ch = load atomic i64, ptr %i.cg acquire, align 8 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 4294967297
  %i.cj = trunc i64 %i.ch to i32                  ; 2 uses
  br i1 %i.ci, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.cg, align 8, !tbaa !67
  %i.ck = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i.i39, i64 12
  store i32 0, ptr %i.ck, align 4, !tbaa !69
  %i.cl = load ptr, ptr %.pre.i.i.i.i.i.i.i39, align 8, !tbaa !64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8
  tail call void %i.cn(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i.i.i.i.i.i.i39) #20, !inline_history !475
  %i.co = load ptr, ptr %.pre.i.i.i.i.i.i.i39, align 8, !tbaa !64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8
  tail call void %i.cq(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i.i.i.i.i.i.i39) #20, !inline_history !475
  br label %bb.ae

bb.aa:                                            ; preds = %bb.y
  %i.cr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !11
  %.not.i.i.i.i5.i.i.i.i.i.i.i.i.i41 = icmp eq i8 %i.cr, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i.i.i.i.i41, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cs = add nsw i32 %i.cj, -1
  store i32 %i.cs, ptr %i.cg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i42

bb.ac:                                            ; preds = %bb.aa
  %i.ct = atomicrmw volatile add ptr %i.cg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i42

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i42: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i43 = phi i32 [ %i.cj, %bb.ab ], [ %i.ct, %bb.ac ]
  %i.cu = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i43, 1
  br i1 %i.cu, label %bb.ad, label %bb.ae, !prof !71

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i42
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i.i.i.i.i.i.i39) #20
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i42, %bb.z, %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.i.i.i.i.i.i.i37, %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.thread.i.i.i.i.i.i.i34, %.lr.ph.i.i.i.i.i29
  %i.cv = load ptr, ptr %.01214.i.i.i.i.i31, align 8, !tbaa !102
  store ptr %i.cv, ptr %.015.i.i.i.i.i30, align 8, !tbaa !102
  %i.cw = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i31, i64 24 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i30, i64 24 ; 2 uses
  %.not.i.i.i.i.i35 = icmp eq ptr %i.cw, %i.b
  br i1 %.not.i.i.i.i.i35, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb15SelectionVectorES2_SaIS1_EET0_T_S5_S4_RT1_.exit44, label %.lr.ph.i.i.i.i.i29, !llvm.loop !476
end_hunk_0
