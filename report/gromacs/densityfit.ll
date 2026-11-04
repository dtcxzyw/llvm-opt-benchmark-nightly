Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/densityfit?download=true
inline.NumInlined: 534
inline.NumDeleted: 335
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN3gmx20ExceptionInitializerC2EPKc:bb.a
  store i64 %i.j, ptr %i.k, align 8, !tbaa !79
  %i.l = load ptr, ptr %0, align 8, !tbaa !59
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx16GromacsExceptionE, i64 16), ptr %0, align 8, !tbaa !21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !82
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !83
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !80
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !80
  br label %_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !84

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27
  br label %_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #27
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !89   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.f, %_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !91
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.05.i.i.i) #27
  br label %_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !85

_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !88
  br label %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.g = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !92
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #26
  br label %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit

_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i, %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !59     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !60
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN3gmx12_GLOBAL__N_129DensitySimilarityInnerProductD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(128) dereferenceable(128) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN3gmx13MultiDimArrayISt6vectorIfSaIfEENS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #26
  br label %_ZN3gmx13MultiDimArrayISt6vectorIfSaIfEENS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightEED2Ev.exit

_ZN3gmx13MultiDimArrayISt6vectorIfSaIfEENS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN3gmx12_GLOBAL__N_129DensitySimilarityInnerProductD0Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN3gmx12_GLOBAL__N_129DensitySimilarityInnerProductD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #26
  br label %_ZN3gmx12_GLOBAL__N_129DensitySimilarityInnerProductD2Ev.exit

_ZN3gmx12_GLOBAL__N_129DensitySimilarityInnerProductD2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3gmx12_GLOBAL__N_129DensitySimilarityInnerProduct8gradientENS_12basic_mdspanIKfNS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightENS_14accessor_basicIS3_EEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.gmx::basic_mdspan") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1, ptr nofree noundef readonly byval(%"class.gmx::basic_mdspan") align 8 captures(none) %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.gmx::RangeError", align 8   ; 4 uses
  %4 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %5 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load <2 x i64>, ptr %i.a, align 8
  %i.d = load <2 x i64>, ptr %i.b, align 8
  %i.e = icmp eq <2 x i64> %i.c, %i.d             ; 2 uses
  %6 = extractelement <2 x i1> %i.e, i64 0
  %7 = extractelement <2 x i1> %i.e, i64 1
  %or.cond.i.i = select i1 %7, i1 %6, i1 false
  br i1 %or.cond.i.i, label %_ZN3gmxneIJLln1ELln1ELln1EEJLln1ELln1ELln1EEEEbRKNS_7extentsIJXspT_EEEERKNS1_IJXspT0_EEEE.exit, label %_ZN3gmxneIJLln1ELln1ELln1EEJLln1ELln1ELln1EEEEbRKNS_7extentsIJXspT_EEEERKNS1_IJXspT0_EEEE.exit.thread

_ZN3gmxneIJLln1ELln1ELln1EEJLln1ELln1ELln1EEEEbRKNS_7extentsIJXspT_EEEERKNS1_IJXspT0_EEEE.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load i64, ptr %i.h, align 8
  %.not = icmp eq i64 %i.i, %i.g
  br i1 %.not, label %bb.g, label %_ZN3gmxneIJLln1ELln1ELln1EEJLln1ELln1ELln1EEEEbRKNS_7extentsIJXspT_EEEERKNS1_IJXspT0_EEEE.exit.thread

_ZN3gmxneIJLln1ELln1ELln1EEJLln1ELln1ELln1EEEEbRKNS_7extentsIJXspT_EEEERKNS1_IJXspT0_EEEE.exit.thread: ; preds = %bb.a, %_ZN3gmxneIJLln1ELln1ELln1EEJLln1ELln1ELln1EEEEbRKNS_7extentsIJXspT_EEEERKNS1_IJXspT0_EEEE.exit
  %i.j = tail call ptr @__cxa_allocate_exception(i64 24) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull @.str.3)
          to label %bb.b unwind label %.thread

bb.b:                                             ; preds = %_ZN3gmxneIJLln1ELln1ELln1EEJLln1ELln1ELln1EEEEbRKNS_7extentsIJXspT_EEEERKNS1_IJXspT0_EEEE.exit.thread
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %bb.c unwind label %.thread13

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx10RangeErrorE, i64 16), ptr %3, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %5, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx12_GLOBAL__N_129DensitySimilarityInnerProduct8gradientENS_12basic_mdspanIKfNS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightENS_14accessor_basicIS3_EEEE, ptr %i.k, align 8, !tbaa !42
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !42
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 142, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !43
  invoke void @_ZN3gmxlsINS_10RangeErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::RangeError") align 8 %i.j, ptr noundef nonnull align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr %i.j, ptr nonnull @_ZTIN3gmx10RangeErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #28
          to label %bb.i unwind label %bb.e

.thread:                                          ; preds = %_ZN3gmxneIJLln1ELln1ELln1EEJLln1ELln1ELln1EEEEbRKNS_7extentsIJXspT_EEEERKNS1_IJXspT0_EEEE.exit.thread
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread13:                                        ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #27
  br label %.sink.split

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #27
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br i1 %.0, label %bb.f, label %bb.h

.sink.split:                                      ; preds = %.thread, %.thread13
  %.pn.pn12.ph = phi { ptr, i32 } [ %i.m, %.thread13 ], [ %i.l, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e
  %.pn.pn12 = phi { ptr, i32 } [ %i.n, %bb.e ], [ %.pn.pn12.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.j) #27
  br label %bb.h

bb.g:                                             ; preds = %_ZN3gmxneIJLln1ELln1ELln1EEJLln1ELln1ELln1EEEEbRKNS_7extentsIJXspT_EEEERKNS1_IJXspT0_EEEE.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !23, !noalias !95
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.p, ptr %i.s, align 8, !tbaa !32, !alias.scope !95
  ret void

bb.h:                                             ; preds = %bb.e, %bb.f
  %.pn.pn11 = phi { ptr, i32 } [ %i.n, %bb.e ], [ %.pn.pn12, %bb.f ]
  resume { ptr, i32 } %.pn.pn11

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN3gmx12_GLOBAL__N_129DensitySimilarityInnerProduct10similarityENS_12basic_mdspanIKfNS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightENS_14accessor_basicIS3_EEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr nofree noundef readonly byval(%"class.gmx::basic_mdspan") align 8 captures(none) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.gmx::RangeError", align 8   ; 4 uses
  %3 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %4 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load <2 x i64>, ptr %i.a, align 8
  %i.d = load <2 x i64>, ptr %i.b, align 8
  %i.e = icmp eq <2 x i64> %i.c, %i.d             ; 2 uses
  %5 = extractelement <2 x i1> %i.e, i64 0
  %6 = extractelement <2 x i1> %i.e, i64 1
  %or.cond.i.i = select i1 %6, i1 %5, i1 false
  br i1 %or.cond.i.i, label %_ZN3gmxneIJLln1ELln1ELln1EEJLln1ELln1ELln1EEEEbRKNS_7extentsIJXspT_EEEERKNS1_IJXspT0_EEEE.exit, label %_ZN3gmxneIJLln1ELln1ELln1EEJLln1ELln1ELln1EEEEbRKNS_7extentsIJXspT_EEEERKNS1_IJXspT0_EEEE.exit.thread

_ZN3gmxneIJLln1ELln1ELln1EEJLln1ELln1ELln1EEEEbRKNS_7extentsIJXspT_EEEERKNS1_IJXspT0_EEEE.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8
  %.not = icmp eq i64 %i.i, %i.g
  br i1 %.not, label %bb.g, label %_ZN3gmxneIJLln1ELln1ELln1EEJLln1ELln1ELln1EEEEbRKNS_7extentsIJXspT_EEEERKNS1_IJXspT0_EEEE.exit.thread

_ZN3gmxneIJLln1ELln1ELln1EEJLln1ELln1ELln1EEEEbRKNS_7extentsIJXspT_EEEERKNS1_IJXspT0_EEEE.exit.thread: ; preds = %bb.a, %_ZN3gmxneIJLln1ELln1ELln1EEJLln1ELln1ELln1EEEEbRKNS_7extentsIJXspT_EEEERKNS1_IJXspT0_EEEE.exit
  %i.j = tail call ptr @__cxa_allocate_exception(i64 24) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull @.str.3)
          to label %bb.b unwind label %.thread

bb.b:                                             ; preds = %_ZN3gmxneIJLln1ELln1ELln1EEJLln1ELln1ELln1EEEEbRKNS_7extentsIJXspT_EEEERKNS1_IJXspT0_EEEE.exit.thread
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %bb.c unwind label %.thread14

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx10RangeErrorE, i64 16), ptr %2, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %4, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx12_GLOBAL__N_129DensitySimilarityInnerProduct10similarityENS_12basic_mdspanIKfNS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightENS_14accessor_basicIS3_EEEE, ptr %i.k, align 8, !tbaa !42
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !42
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 129, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !43
  invoke void @_ZN3gmxlsINS_10RangeErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::RangeError") align 8 %i.j, ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr %i.j, ptr nonnull @_ZTIN3gmx10RangeErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #28
          to label %bb.i unwind label %bb.e

.thread:                                          ; preds = %_ZN3gmxneIJLln1ELln1ELln1EEJLln1ELln1ELln1EEEEbRKNS_7extentsIJXspT_EEEERKNS1_IJXspT0_EEEE.exit.thread
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread14:                                        ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #27
  br label %.sink.split

bb.e:                                             ; preds = %bb.c, %bb.d
  %.06 = phi i1 [ false, %bb.d ], [ true, %bb.c ]
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #27
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br i1 %.06, label %bb.f, label %bb.h

.sink.split:                                      ; preds = %.thread, %.thread14
  %.pn.pn13.ph = phi { ptr, i32 } [ %i.m, %.thread14 ], [ %i.l, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e
  %.pn.pn13 = phi { ptr, i32 } [ %i.n, %bb.e ], [ %.pn.pn13.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.j) #27
  br label %bb.h

bb.g:                                             ; preds = %_ZN3gmxneIJLln1ELln1ELln1EEJLln1ELln1ELln1EEEEbRKNS_7extentsIJXspT_EEEERKNS1_IJXspT0_EEEE.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !23   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !61   ; 2 uses
  %.not8.i = icmp eq ptr %i.p, %i.r
  br i1 %.not8.i, label %_ZSt13inner_productIN3gmx12ArrayRefIterIfEEPKfdET1_T_S6_T0_S5_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.011.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %i.t, %.lr.ph.i.preheader ] ; 2 uses
  %.0610.i = phi double [ %i.y, %.lr.ph.i ], [ 0.000000e+00, %.lr.ph.i.preheader ]
  %.sroa.0.09.i = phi ptr [ %i.z, %.lr.ph.i ], [ %i.p, %.lr.ph.i.preheader ] ; 2 uses
  %i.u = load float, ptr %.sroa.0.09.i, align 4, !tbaa !35
  %i.v = load float, ptr %.011.i, align 4, !tbaa !35
  %i.w = fmul float %i.u, %i.v
  %i.x = fpext float %i.w to double
  %i.y = fadd double %.0610.i, %i.x               ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i, i64 4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.011.i, i64 4
  %.not.i = icmp eq ptr %i.z, %i.r
  br i1 %.not.i, label %_ZSt13inner_productIN3gmx12ArrayRefIterIfEEPKfdET1_T_S6_T0_S5_.exit.loopexit, label %.lr.ph.i, !llvm.loop !96

_ZSt13inner_productIN3gmx12ArrayRefIterIfEEPKfdET1_T_S6_T0_S5_.exit.loopexit: ; preds = %.lr.ph.i
  %i.ab = fptrunc double %i.y to float
  br label %_ZSt13inner_productIN3gmx12ArrayRefIterIfEEPKfdET1_T_S6_T0_S5_.exit

_ZSt13inner_productIN3gmx12ArrayRefIterIfEEPKfdET1_T_S6_T0_S5_.exit: ; preds = %_ZSt13inner_productIN3gmx12ArrayRefIterIfEEPKfdET1_T_S6_T0_S5_.exit.loopexit, %bb.g
  %.06.lcssa.i = phi float [ 0.000000e+00, %bb.g ], [ %i.ab, %_ZSt13inner_productIN3gmx12ArrayRefIterIfEEPKfdET1_T_S6_T0_S5_.exit.loopexit ]
  ret float %.06.lcssa.i

bb.h:                                             ; preds = %bb.e, %bb.f
  %.pn.pn12 = phi { ptr, i32 } [ %i.n, %bb.e ], [ %.pn.pn13, %bb.f ]
  resume { ptr, i32 } %.pn.pn12

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3gmx12_GLOBAL__N_129DensitySimilarityInnerProduct5cloneEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #25, !noalias !104, !inline_history !99 ; 15 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.515.0.copyload.i = load i64, ptr %.sroa.515.0..sroa_idx.i, align 8, !tbaa !17, !noalias !104 ; 3 uses
  %.sroa.616.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.616.0.copyload.i = load ptr, ptr %.sroa.616.0..sroa_idx.i, align 8, !tbaa !19, !noalias !104 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN3gmx12_GLOBAL__N_129DensitySimilarityInnerProductE, i64 16), ptr %i.b, align 8, !tbaa !21, !noalias !104
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load <4 x i64>, ptr %i.a, align 8, !noalias !104 ; 3 uses
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !104
  store <4 x i64> %i.d, ptr %i.c, align 8, !noalias !104
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 %.sroa.515.0.copyload.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !17, !noalias !104
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store ptr %.sroa.616.0.copyload.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !19, !noalias !104
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, i8 0, i64 24, i1 false), !noalias !104
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, i8 0, i64 40, i1 false), !noalias !104
  %i.g = extractelement <4 x i64> %i.d, i64 2     ; 2 uses
  %i.h = extractelement <4 x i64> %i.d, i64 3     ; 2 uses
  %i.i = mul i64 %i.h, %i.g
  %i.j = mul i64 %i.i, %.sroa.515.0.copyload.i    ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 noundef %i.j)
          to label %.noexc.i.i.i unwind label %bb.c, !noalias !104, !inline_history !100

.noexc.i.i.i:                                     ; preds = %bb.b
  %.pre.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !23, !noalias !104
  %.pre.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !32, !noalias !104
  %.sroa.3.0.copyload.i.i.pre.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !17, !noalias !104
  %.sroa.4.0.copyload.i.i.pre.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !17, !noalias !104
  %.sroa.5.0.copyload.i.i.pre.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !17, !noalias !104
  %.pre20.i = mul i64 %.sroa.4.0.copyload.i.i.pre.i, %.sroa.3.0.copyload.i.i.pre.i
  %.pre21.i = mul i64 %.pre20.i, %.sroa.5.0.copyload.i.i.pre.i
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !23, !noalias !104 ; 3 uses
  %.not.i.i.i2.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i2.i.i.i, label %.body.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !33, !noalias !104
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #26, !noalias !104, !inline_history !100
  br label %.body.i

bb.e:                                             ; preds = %.noexc.i.i.i, %bb.a
  %.pre-phi22.i = phi i64 [ %.pre21.i, %.noexc.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.r = phi ptr [ %.pre.i, %.noexc.i.i.i ], [ %.sroa.616.0.copyload.i, %bb.a ] ; 7 uses
  %i.s = phi ptr [ %.pre.i.i.i.i, %.noexc.i.i.i ], [ null, %bb.a ] ; 7 uses
  store i64 %.sroa.2.0.copyload.i, ptr %i.f, align 8, !noalias !104
  %.sroa.01.i.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i64 %i.g, ptr %.sroa.01.i.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !17, !noalias !104
  %.sroa.01.i.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 %i.h, ptr %.sroa.01.i.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !17, !noalias !104
  %.sroa.01.i.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i64 %.sroa.515.0.copyload.i, ptr %.sroa.01.i.sroa.6.0..sroa_idx.i.i.i, align 8, !tbaa !17, !noalias !104
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !19, !noalias !104
  %.idx.i.i = shl i64 %.pre-phi22.i, 2            ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %.idx.i.i
  %.not6.i.i.i = icmp eq i64 %.pre-phi22.i, 0
  br i1 %.not6.i.i.i, label %_ZNSt10unique_ptrIN3gmx12_GLOBAL__N_129DensitySimilarityInnerProductESt14default_deleteIS2_EED2Ev.exit, label %iter.check

iter.check:                                       ; preds = %bb.e
  %i.u = ptrtoaddr ptr %i.s to i64
  %i.v = ptrtoaddr ptr %i.r to i64
  %i.w = sitofp i64 %i.j to float                 ; 3 uses
  %i.x = add i64 %.idx.i.i, -4                    ; 3 uses
  %i.y = lshr exact i64 %i.x, 2
  %i.z = add nuw nsw i64 %i.y, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.x, 28
end_hunk_0
begin_hunk_1_@_ZN3gmx12_GLOBAL__N_133DensitySimilarityCrossCorrelation8gradientENS_12basic_mdspanIKfNS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightENS_14accessor_basicIS3_EEEE:bb.a
  %broadcast.splatinsert72 = insertelement <4 x float> poison, float %i.dm, i64 0
  %broadcast.splat73 = shufflevector <4 x float> %broadcast.splatinsert72, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat75 = shufflevector <4 x float> %i.da, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat77 = shufflevector <4 x float> %i.da, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %broadcast.splatinsert78 = insertelement <4 x float> poison, float %i.dk, i64 0
  %broadcast.splat79 = shufflevector <4 x float> %broadcast.splatinsert78, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index80 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next86, %vec.epilog.vector.body ] ; 2 uses
  %i.eo = shl i64 %index80, 2                     ; 3 uses
  %next.gep81 = getelementptr i8, ptr %.sroa.527.0.copyload, i64 %i.eo
  %next.gep82 = getelementptr i8, ptr %.sroa.1.0.copyload, i64 %i.eo
  %next.gep83 = getelementptr i8, ptr %i.dd, i64 %i.eo
  %wide.load84 = load <4 x float>, ptr %next.gep82, align 4, !tbaa !35
  %wide.load85 = load <4 x float>, ptr %next.gep81, align 4, !tbaa !35
  %i.ep = fsub <4 x float> %wide.load84, %broadcast.splat75
  %i.eq = fsub <4 x float> %wide.load85, %broadcast.splat77
  %i.er = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat73, <4 x float> %i.eq, <4 x float> %i.ep)
  %i.es = fmul <4 x float> %broadcast.splat79, %i.er
  store <4 x float> %i.es, ptr %next.gep83, align 4, !tbaa !35
  %index.next86 = add nuw i64 %index80, 4         ; 2 uses
  %i.et = icmp eq i64 %index.next86, %n.vec71
  br i1 %i.et, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !121

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n87 = icmp eq i64 %i.dp, %n.vec71
  br i1 %cmp.n87, label %_ZSt9transformIPKfS1_N3gmx12ArrayRefIterIfEENS2_12_GLOBAL__N_131CrossCorrelationGradientAtVoxelEET1_T_S8_T0_S7_T2_.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.ph = phi ptr [ %.sroa.527.0.copyload, %iter.check ], [ %.sroa.527.0.copyload, %vector.memcheck ], [ %i.du, %vec.epilog.iter.check ], [ %i.el, %vec.epilog.middle.block ]
  %.0611.i.ph = phi ptr [ %.sroa.1.0.copyload, %iter.check ], [ %.sroa.1.0.copyload, %vector.memcheck ], [ %i.dv, %vec.epilog.iter.check ], [ %i.em, %vec.epilog.middle.block ]
  %.sroa.07.010.i.ph = phi ptr [ %i.dd, %iter.check ], [ %i.dd, %vector.memcheck ], [ %i.dw, %vec.epilog.iter.check ], [ %i.en, %vec.epilog.middle.block ]
  %i.eu = extractelement <4 x float> %i.da, i64 2
  %i.ev = extractelement <4 x float> %i.da, i64 3
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.012.i = phi ptr [ %i.fd, %vec.epilog.scalar.ph ], [ %.012.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0611.i = phi ptr [ %i.fc, %vec.epilog.scalar.ph ], [ %.0611.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.sroa.07.010.i = phi ptr [ %i.fe, %vec.epilog.scalar.ph ], [ %.sroa.07.010.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ew = load float, ptr %.0611.i, align 4, !tbaa !35
  %i.ex = load float, ptr %.012.i, align 4, !tbaa !35
  %i.ey = fsub float %i.ew, %i.eu
  %i.ez = fsub float %i.ex, %i.ev
  %i.fa = tail call float @llvm.fmuladd.f32(float %i.dm, float %i.ez, float %i.ey)
  %i.fb = fmul float %i.dk, %i.fa
  store float %i.fb, ptr %.sroa.07.010.i, align 4, !tbaa !35
  %i.fc = getelementptr inbounds nuw i8, ptr %.0611.i, i64 4 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.012.i, i64 4
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.07.010.i, i64 4
  %.not.i11 = icmp eq ptr %i.fc, %i.db
  br i1 %.not.i11, label %_ZSt9transformIPKfS1_N3gmx12ArrayRefIterIfEENS2_12_GLOBAL__N_131CrossCorrelationGradientAtVoxelEET1_T_S8_T0_S7_T2_.exit, label %vec.epilog.scalar.ph, !llvm.loop !122

_ZSt9transformIPKfS1_N3gmx12ArrayRefIterIfEENS2_12_GLOBAL__N_131CrossCorrelationGradientAtVoxelEET1_T_S8_T0_S7_T2_.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %_ZN3gmx12_GLOBAL__N_120evaluateHelperValuesENS_12basic_mdspanIKfNS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightENS_14accessor_basicIS2_EEEES8_.exit
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fg, ptr noundef nonnull align 8 dereferenceable(32) %i.ff, i64 32, i1 false)
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.dd, ptr %i.fh, align 8, !tbaa !32, !alias.scope !126
  ret void

bb.h:                                             ; preds = %bb.e, %bb.f
  %.pn.pn30 = phi { ptr, i32 } [ %i.s, %bb.e ], [ %.pn.pn31, %bb.f ]
  resume { ptr, i32 } %.pn.pn30

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN3gmx12_GLOBAL__N_133DensitySimilarityCrossCorrelation10similarityENS_12basic_mdspanIKfNS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightENS_14accessor_basicIS3_EEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr nofree noundef readonly byval(%"class.gmx::basic_mdspan") align 8 captures(none) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.gmx::RangeError", align 8   ; 4 uses
  %3 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %4 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp eq i64 %i.f, %i.h
  %i.j = icmp eq i64 %i.b, %i.d
  %or.cond.i.i = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond.i.i, label %_ZN3gmxneIJLln1ELln1ELln1EEJLln1ELln1ELln1EEEEbRKNS_7extentsIJXspT_EEEERKNS1_IJXspT0_EEEE.exit, label %_ZN3gmxneIJLln1ELln1ELln1EEJLln1ELln1ELln1EEEEbRKNS_7extentsIJXspT_EEEERKNS1_IJXspT0_EEEE.exit.thread

_ZN3gmxneIJLln1ELln1ELln1EEJLln1ELln1ELln1EEEEbRKNS_7extentsIJXspT_EEEERKNS1_IJXspT0_EEEE.exit: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8
  %.not = icmp eq i64 %i.n, %i.l
  br i1 %.not, label %bb.g, label %_ZN3gmxneIJLln1ELln1ELln1EEJLln1ELln1ELln1EEEEbRKNS_7extentsIJXspT_EEEERKNS1_IJXspT0_EEEE.exit.thread

_ZN3gmxneIJLln1ELln1ELln1EEJLln1ELln1ELln1EEEEbRKNS_7extentsIJXspT_EEEERKNS1_IJXspT0_EEEE.exit.thread: ; preds = %bb.a, %_ZN3gmxneIJLln1ELln1ELln1EEJLln1ELln1ELln1EEEEbRKNS_7extentsIJXspT_EEEERKNS1_IJXspT0_EEEE.exit
  %i.o = tail call ptr @__cxa_allocate_exception(i64 24) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull @.str.3)
          to label %bb.b unwind label %.thread

bb.b:                                             ; preds = %_ZN3gmxneIJLln1ELln1ELln1EEJLln1ELln1ELln1EEEEbRKNS_7extentsIJXspT_EEEERKNS1_IJXspT0_EEEE.exit.thread
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %bb.c unwind label %.thread35

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx10RangeErrorE, i64 16), ptr %2, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %4, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx12_GLOBAL__N_133DensitySimilarityCrossCorrelation10similarityENS_12basic_mdspanIKfNS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightENS_14accessor_basicIS3_EEEE, ptr %i.p, align 8, !tbaa !42
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.1, ptr %.sroa.421.0..sroa_idx, align 8, !tbaa !42
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 353, ptr %.sroa.522.0..sroa_idx, align 8, !tbaa !43
  invoke void @_ZN3gmxlsINS_10RangeErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::RangeError") align 8 %i.o, ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr %i.o, ptr nonnull @_ZTIN3gmx10RangeErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #28
          to label %bb.j unwind label %bb.e

.thread:                                          ; preds = %_ZN3gmxneIJLln1ELln1ELln1EEJLln1ELln1ELln1EEEEbRKNS_7extentsIJXspT_EEEERKNS1_IJXspT0_EEEE.exit.thread
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread35:                                        ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #27
  br label %.sink.split

bb.e:                                             ; preds = %bb.c, %bb.d
  %.010 = phi i1 [ false, %bb.d ], [ true, %bb.c ]
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #27
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br i1 %.010, label %bb.f, label %bb.i

.sink.split:                                      ; preds = %.thread, %.thread35
  %.pn.pn34.ph = phi { ptr, i32 } [ %i.r, %.thread35 ], [ %i.q, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e
  %.pn.pn34 = phi { ptr, i32 } [ %i.s, %bb.e ], [ %.pn.pn34.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.o) #27
  br label %bb.i

bb.g:                                             ; preds = %_ZN3gmxneIJLln1ELln1ELln1EEJLln1ELln1ELln1EEEEbRKNS_7extentsIJXspT_EEEERKNS1_IJXspT0_EEEE.exit
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.530.0.copyload = load ptr, ptr %.sroa.530.0..sroa_idx, align 8, !tbaa !19 ; 2 uses
  %i.t = mul i64 %i.b, %i.l
  %i.u = mul i64 %i.t, %i.f                       ; 2 uses
  %.not1.i = icmp eq i64 %i.u, 0
  br i1 %.not1.i, label %_ZN3gmx12_GLOBAL__N_120evaluateHelperValuesENS_12basic_mdspanIKfNS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightENS_14accessor_basicIS2_EEEES8_.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.g
  %.sroa.1.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.1.0.copyload = load ptr, ptr %.sroa.1.0..sroa_idx, align 8, !tbaa !19 ; 2 uses
  %i.v = add i64 %i.u, 4611686018427387903        ; 2 uses
  %i.w = and i64 %i.v, 4611686018427387903        ; 2 uses
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %i.y = icmp eq i64 %i.w, 0
  br i1 %i.y, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.x, 9223372036854775806
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %i.z = phi float [ 0.000000e+00, %.lr.ph.i.preheader.new ], [ %i.bx, %.lr.ph.i ]
  %.04.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.bf, %.lr.ph.i ] ; 3 uses
  %.0233.i = phi ptr [ %.sroa.1.0.copyload, %.lr.ph.i.preheader.new ], [ %i.ca, %.lr.ph.i ] ; 3 uses
  %.0242.i = phi ptr [ %.sroa.530.0.copyload, %.lr.ph.i.preheader.new ], [ %i.cb, %.lr.ph.i ] ; 3 uses
  %i.aa = phi <2 x float> [ zeroinitializer, %.lr.ph.i.preheader.new ], [ %i.br, %.lr.ph.i ]
  %i.ab = phi <2 x float> [ zeroinitializer, %.lr.ph.i.preheader.new ], [ %i.bz, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.ac = load float, ptr %.0242.i, align 4, !tbaa !35, !noalias !129
  %i.ad = load float, ptr %.0233.i, align 4, !tbaa !35, !noalias !129
  %i.ae = uitofp nneg i64 %.04.i to float         ; 2 uses
  %i.af = or disjoint i64 %.04.i, 1               ; 2 uses
  %i.ag = uitofp nneg i64 %i.af to float          ; 2 uses
  %i.ah = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %i.ad, i64 1
  %i.aj = fsub <2 x float> %i.ai, %i.ab           ; 5 uses
  %i.ak = fmul <2 x float> %i.aj, %i.aj
  %i.al = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = fmul <2 x float> %i.ak, %i.am
  %i.ao = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aq = fdiv <2 x float> %i.an, %i.ap
  %i.ar = fadd <2 x float> %i.aa, %i.aq
  %i.as = extractelement <2 x float> %i.aj, i64 1
  %i.at = fmul float %i.as, %i.ae
  %i.au = extractelement <2 x float> %i.aj, i64 0
  %i.av = fmul float %i.au, %i.at
  %i.aw = fdiv float %i.av, %i.ag
  %i.ax = fadd float %i.z, %i.aw
  %i.ay = fdiv <2 x float> %i.aj, %i.ap
  %i.az = fadd <2 x float> %i.ab, %i.ay           ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0233.i, i64 4
  %i.bb = getelementptr inbounds nuw i8, ptr %.0242.i, i64 4
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !35, !noalias !129
  %i.bd = load float, ptr %i.ba, align 4, !tbaa !35, !noalias !129
  %i.be = uitofp nneg i64 %i.af to float          ; 2 uses
  %i.bf = add nuw nsw i64 %.04.i, 2               ; 3 uses
  %i.bg = uitofp nneg i64 %i.bf to float          ; 2 uses
  %i.bh = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bi = insertelement <2 x float> %i.bh, float %i.bd, i64 1
  %i.bj = fsub <2 x float> %i.bi, %i.az           ; 5 uses
  %i.bk = fmul <2 x float> %i.bj, %i.bj
  %i.bl = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bn = fmul <2 x float> %i.bk, %i.bm
  %i.bo = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bq = fdiv <2 x float> %i.bn, %i.bp
  %i.br = fadd <2 x float> %i.ar, %i.bq           ; 3 uses
  %i.bs = extractelement <2 x float> %i.bj, i64 1
  %i.bt = fmul float %i.bs, %i.be
  %i.bu = extractelement <2 x float> %i.bj, i64 0
  %i.bv = fmul float %i.bu, %i.bt
  %i.bw = fdiv float %i.bv, %i.bg
  %i.bx = fadd float %i.ax, %i.bw                 ; 3 uses
  %i.by = fdiv <2 x float> %i.bj, %i.bp
  %i.bz = fadd <2 x float> %i.az, %i.by           ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0233.i, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0242.i, i64 8 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN3gmx12_GLOBAL__N_120evaluateHelperValuesENS_12basic_mdspanIKfNS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightENS_14accessor_basicIS2_EEEES8_.exit.unr-lcssa, label %.lr.ph.i

_ZN3gmx12_GLOBAL__N_120evaluateHelperValuesENS_12basic_mdspanIKfNS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightENS_14accessor_basicIS2_EEEES8_.exit.unr-lcssa: ; preds = %.lr.ph.i
  %i.cc = and i64 %i.v, 1
  %lcmp.mod.not.not = icmp eq i64 %i.cc, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.epil.preheader, label %_ZN3gmx12_GLOBAL__N_120evaluateHelperValuesENS_12basic_mdspanIKfNS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightENS_14accessor_basicIS2_EEEES8_.exit

.lr.ph.i.epil.preheader:                          ; preds = %_ZN3gmx12_GLOBAL__N_120evaluateHelperValuesENS_12basic_mdspanIKfNS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightENS_14accessor_basicIS2_EEEES8_.exit.unr-lcssa, %.lr.ph.i.preheader
  %.epil.init = phi float [ 0.000000e+00, %.lr.ph.i.preheader ], [ %i.bx, %_ZN3gmx12_GLOBAL__N_120evaluateHelperValuesENS_12basic_mdspanIKfNS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightENS_14accessor_basicIS2_EEEES8_.exit.unr-lcssa ]
  %.04.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bf, %_ZN3gmx12_GLOBAL__N_120evaluateHelperValuesENS_12basic_mdspanIKfNS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightENS_14accessor_basicIS2_EEEES8_.exit.unr-lcssa ] ; 2 uses
  %.0233.i.epil.init = phi ptr [ %.sroa.1.0.copyload, %.lr.ph.i.preheader ], [ %i.ca, %_ZN3gmx12_GLOBAL__N_120evaluateHelperValuesENS_12basic_mdspanIKfNS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightENS_14accessor_basicIS2_EEEES8_.exit.unr-lcssa ]
  %.0242.i.epil.init = phi ptr [ %.sroa.530.0.copyload, %.lr.ph.i.preheader ], [ %i.cb, %_ZN3gmx12_GLOBAL__N_120evaluateHelperValuesENS_12basic_mdspanIKfNS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightENS_14accessor_basicIS2_EEEES8_.exit.unr-lcssa ]
  %.epil.init57 = phi <2 x float> [ zeroinitializer, %.lr.ph.i.preheader ], [ %i.br, %_ZN3gmx12_GLOBAL__N_120evaluateHelperValuesENS_12basic_mdspanIKfNS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightENS_14accessor_basicIS2_EEEES8_.exit.unr-lcssa ]
  %.epil.init59 = phi <2 x float> [ zeroinitializer, %.lr.ph.i.preheader ], [ %i.bz, %_ZN3gmx12_GLOBAL__N_120evaluateHelperValuesENS_12basic_mdspanIKfNS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightENS_14accessor_basicIS2_EEEES8_.exit.unr-lcssa ]
  %lcmp.mod62 = trunc i64 %i.x to i1
  tail call void @llvm.assume(i1 %lcmp.mod62)
  %i.cd = load float, ptr %.0242.i.epil.init, align 4, !tbaa !35, !noalias !129
  %i.ce = load float, ptr %.0233.i.epil.init, align 4, !tbaa !35, !noalias !129
  %i.cf = uitofp nneg i64 %.04.i.epil.init to float ; 2 uses
  %i.cg = add nuw nsw i64 %.04.i.epil.init, 1
  %i.ch = uitofp nneg i64 %i.cg to float          ; 2 uses
  %i.ci = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.cj = insertelement <2 x float> %i.ci, float %i.ce, i64 1
  %i.ck = fsub <2 x float> %i.cj, %.epil.init59   ; 4 uses
  %i.cl = fmul <2 x float> %i.ck, %i.ck
  %i.cm = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.co = fmul <2 x float> %i.cl, %i.cn
  %i.cp = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cr = fdiv <2 x float> %i.co, %i.cq
  %i.cs = fadd <2 x float> %.epil.init57, %i.cr
  %i.ct = extractelement <2 x float> %i.ck, i64 1
  %i.cu = fmul float %i.ct, %i.cf
  %i.cv = extractelement <2 x float> %i.ck, i64 0
  %i.cw = fmul float %i.cv, %i.cu
  %i.cx = fdiv float %i.cw, %i.ch
  %i.cy = fadd float %.epil.init, %i.cx
  br label %_ZN3gmx12_GLOBAL__N_120evaluateHelperValuesENS_12basic_mdspanIKfNS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightENS_14accessor_basicIS2_EEEES8_.exit

_ZN3gmx12_GLOBAL__N_120evaluateHelperValuesENS_12basic_mdspanIKfNS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightENS_14accessor_basicIS2_EEEES8_.exit: ; preds = %_ZN3gmx12_GLOBAL__N_120evaluateHelperValuesENS_12basic_mdspanIKfNS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightENS_14accessor_basicIS2_EEEES8_.exit.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa55 = phi <2 x float> [ %i.br, %_ZN3gmx12_GLOBAL__N_120evaluateHelperValuesENS_12basic_mdspanIKfNS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightENS_14accessor_basicIS2_EEEES8_.exit.unr-lcssa ], [ %i.cs, %.lr.ph.i.epil.preheader ] ; 3 uses
  %.lcssa = phi float [ %i.bx, %_ZN3gmx12_GLOBAL__N_120evaluateHelperValuesENS_12basic_mdspanIKfNS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightENS_14accessor_basicIS2_EEEES8_.exit.unr-lcssa ], [ %i.cy, %.lr.ph.i.epil.preheader ] ; 2 uses
  %i.cz = fcmp oeq <2 x float> %.lcssa55, zeroinitializer ; 2 uses
  %5 = extractelement <2 x i1> %i.cz, i64 0
  %6 = extractelement <2 x i1> %i.cz, i64 1
  %or.cond = select i1 %6, i1 true, i1 %5
  br i1 %or.cond, label %_ZN3gmx12_GLOBAL__N_120evaluateHelperValuesENS_12basic_mdspanIKfNS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightENS_14accessor_basicIS2_EEEES8_.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN3gmx12_GLOBAL__N_120evaluateHelperValuesENS_12basic_mdspanIKfNS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightENS_14accessor_basicIS2_EEEES8_.exit
  %i.da = tail call noundef float @llvm.fabs.f32(float %.lcssa)
  %sqrt = tail call float @llvm.sqrt.f32(float %i.da) ; 2 uses
  %i.db = fcmp ogt float %.lcssa, 0.000000e+00
  %i.dc = extractelement <2 x float> %.lcssa55, i64 1
  %i.dd = tail call noundef float @sqrtf(float noundef %i.dc) #27
  %i.de = fdiv float %sqrt, %i.dd                 ; 2 uses
  %i.df = fneg float %i.de
  %i.dg = select i1 %i.db, float %i.de, float %i.df
  %i.dh = extractelement <2 x float> %.lcssa55, i64 0
  %i.di = tail call noundef float @sqrtf(float noundef %i.dh) #27
  %i.dj = fdiv float %sqrt, %i.di
  %i.dk = fmul float %i.dg, %i.dj
  br label %_ZN3gmx12_GLOBAL__N_120evaluateHelperValuesENS_12basic_mdspanIKfNS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightENS_14accessor_basicIS2_EEEES8_.exit.thread

_ZN3gmx12_GLOBAL__N_120evaluateHelperValuesENS_12basic_mdspanIKfNS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightENS_14accessor_basicIS2_EEEES8_.exit.thread: ; preds = %bb.g, %_ZN3gmx12_GLOBAL__N_120evaluateHelperValuesENS_12basic_mdspanIKfNS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightENS_14accessor_basicIS2_EEEES8_.exit, %bb.h
  %.0 = phi float [ %i.dk, %bb.h ], [ 0.000000e+00, %_ZN3gmx12_GLOBAL__N_120evaluateHelperValuesENS_12basic_mdspanIKfNS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightENS_14accessor_basicIS2_EEEES8_.exit ], [ 0.000000e+00, %bb.g ]
  ret float %.0

bb.i:                                             ; preds = %bb.e, %bb.f
  %.pn.pn33 = phi { ptr, i32 } [ %i.s, %bb.e ], [ %.pn.pn34, %bb.f ]
  resume { ptr, i32 } %.pn.pn33

bb.j:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3gmx12_GLOBAL__N_133DensitySimilarityCrossCorrelation5cloneEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #25, !noalias !134, !inline_history !132 ; 13 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.515.0.copyload.i = load i64, ptr %.sroa.515.0..sroa_idx.i, align 8, !tbaa !17, !noalias !134 ; 3 uses
  %.sroa.616.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.616.0.copyload.i = load ptr, ptr %.sroa.616.0..sroa_idx.i, align 8, !tbaa !19, !noalias !134
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN3gmx12_GLOBAL__N_133DensitySimilarityCrossCorrelationE, i64 16), ptr %i.b, align 8, !tbaa !21, !noalias !134
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load <4 x i64>, ptr %i.a, align 8, !noalias !134 ; 3 uses
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !134
  store <4 x i64> %i.d, ptr %i.c, align 8, !noalias !134
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.sroa.515.0.copyload.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !17, !noalias !134
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.616.0.copyload.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !19, !noalias !134
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, i8 0, i64 24, i1 false), !noalias !134
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, i8 0, i64 40, i1 false), !noalias !134
  %i.g = extractelement <4 x i64> %i.d, i64 2     ; 2 uses
  %i.h = extractelement <4 x i64> %i.d, i64 3     ; 2 uses
  %i.i = mul i64 %i.h, %i.g
  %i.j = mul i64 %i.i, %.sroa.515.0.copyload.i    ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN3gmx12_GLOBAL__N_133DensitySimilarityCrossCorrelationESt14default_deleteIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 noundef %i.j)
          to label %.noexc.i.i.i unwind label %bb.c, !noalias !134, !inline_history !133

.noexc.i.i.i:                                     ; preds = %bb.b
  %.pre.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !23, !noalias !134
  br label %_ZNSt10unique_ptrIN3gmx12_GLOBAL__N_133DensitySimilarityCrossCorrelationESt14default_deleteIS2_EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !23, !noalias !134 ; 3 uses
  %.not.i.i.i2.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i2.i.i.i, label %.body.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !33, !noalias !134
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #26, !noalias !134, !inline_history !133
  br label %.body.i

.body.i:                                          ; preds = %bb.d, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 128) #26, !noalias !134, !inline_history !132
  resume { ptr, i32 } %i.k

_ZNSt10unique_ptrIN3gmx12_GLOBAL__N_133DensitySimilarityCrossCorrelationESt14default_deleteIS2_EED2Ev.exit: ; preds = %.noexc.i.i.i, %bb.a
  %i.r = phi ptr [ %.pre.i.i.i.i, %.noexc.i.i.i ], [ null, %bb.a ]
  store i64 %.sroa.2.0.copyload.i, ptr %i.f, align 8, !noalias !134
  %.sroa.01.i.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i64 %i.g, ptr %.sroa.01.i.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !17, !noalias !134
  %.sroa.01.i.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 %i.h, ptr %.sroa.01.i.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !17, !noalias !134
  %.sroa.01.i.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i64 %.sroa.515.0.copyload.i, ptr %.sroa.01.i.sroa.6.0..sroa_idx.i.i.i, align 8, !tbaa !17, !noalias !134
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store ptr %i.r, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !19, !noalias !134
  store ptr %i.b, ptr %0, align 8, !tbaa !15
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #18

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #19

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx24DensitySimilarityMeasure8gradientENS_12basic_mdspanIKfNS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightENS_14accessor_basicIS2_EEEE(ptr dead_on_unwind noalias writable sret(%"class.gmx::basic_mdspan") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef readonly byval(%"class.gmx::basic_mdspan") align 8 captures(none) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr dead_on_unwind writable sret(%"class.gmx::basic_mdspan") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull byval(%"class.gmx::basic_mdspan") align 8 %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef float @_ZN3gmx24DensitySimilarityMeasure10similarityENS_12basic_mdspanIKfNS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightENS_14accessor_basicIS2_EEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readonly byval(%"class.gmx::basic_mdspan") align 8 captures(none) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef float %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull byval(%"class.gmx::basic_mdspan") align 8 %1)
  ret float %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN3gmx24DensitySimilarityMeasureD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !40     ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN3gmx28DensitySimilarityMeasureImplESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN3gmx28DensitySimilarityMeasureImplEEclEPS1_.exit.i

_ZNKSt14default_deleteIN3gmx28DensitySimilarityMeasureImplEEclEPS1_.exit.i: ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #27, !inline_history !0
  br label %_ZNSt10unique_ptrIN3gmx28DensitySimilarityMeasureImplESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx28DensitySimilarityMeasureImplESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN3gmx28DensitySimilarityMeasureImplEEclEPS1_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx24DensitySimilarityMeasureC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN3gmx24DensitySimilarityMeasureaSERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.a = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.e = load ptr, ptr %2, align 8, !tbaa !40
  store ptr null, ptr %2, align 8, !tbaa !40
  %i.f = load ptr, ptr %0, align 8, !tbaa !40     ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !40
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN3gmx28DensitySimilarityMeasureImplESt14default_deleteIS1_EED2Ev.exit, label %_ZNSt10unique_ptrIN3gmx28DensitySimilarityMeasureImplESt14default_deleteIS1_EEaSEOS4_.exit

_ZNSt10unique_ptrIN3gmx28DensitySimilarityMeasureImplESt14default_deleteIS1_EEaSEOS4_.exit: ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #27, !inline_history !2
  %.pr = load ptr, ptr %2, align 8, !tbaa !40     ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN3gmx28DensitySimilarityMeasureImplESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN3gmx28DensitySimilarityMeasureImplEEclEPS1_.exit.i

_ZNKSt14default_deleteIN3gmx28DensitySimilarityMeasureImplEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN3gmx28DensitySimilarityMeasureImplESt14default_deleteIS1_EEaSEOS4_.exit
  %i.j = load ptr, ptr %.pr, align 8, !tbaa !21
end_hunk_1
