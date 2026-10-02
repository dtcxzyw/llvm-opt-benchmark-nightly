Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/tpxio?download=true
inline.NumInlined: 3406
inline.NumDeleted: 1819
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN3gmx16GromacsExceptionD2Ev:bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !508
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !508
  br label %_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !292

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #26
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #17

; Function Attrs: nounwind
declare void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !512  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !513  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.f, %_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !515
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.05.i.i.i) #26
  br label %_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !509

_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !512
  br label %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.g = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !516
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #25
  br label %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit

_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i, %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !26
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @_ZN3gmx16GromacsException7setInfoERKSt10type_indexOSt10unique_ptrINS_8internal14IExceptionInfoESt14default_deleteIS6_EE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #25
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #11

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #26, !inline_history !517
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !27   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #26, !inline_history !517
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorI14gmx_molblock_tSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !242  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !243    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 56                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !525
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 56                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 164703072086692426
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 164703072086692425, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.057.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  store i32 -1, ptr %.08.i.i.i.prol, align 8, !tbaa !255
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.p, i8 0, i64 52, i1 false)
  %i.q = add nsw i64 %.057.i.i.i.prol, -1         ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 56 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !518

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.prol ]
  %i.s = icmp ult i64 %1, 8
  br i1 %i.s, label %_ZSt27__uninitialized_default_n_aIP14gmx_molblock_tmS0_ET_S2_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  store i32 -1, ptr %.08.i.i.i, align 8, !tbaa !255
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.t, i8 0, i64 52, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 56
  store i32 -1, ptr %i.u, align 8, !tbaa !255
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.v, i8 0, i64 52, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 112
  store i32 -1, ptr %i.w, align 8, !tbaa !255
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.x, i8 0, i64 52, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 168
  store i32 -1, ptr %i.y, align 8, !tbaa !255
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 172
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.z, i8 0, i64 52, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 224
  store i32 -1, ptr %i.aa, align 8, !tbaa !255
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 228
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.ab, i8 0, i64 52, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 280
  store i32 -1, ptr %i.ac, align 8, !tbaa !255
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 284
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.ad, i8 0, i64 52, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 336
  store i32 -1, ptr %i.ae, align 8, !tbaa !255
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 340
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.af, i8 0, i64 52, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 392
  store i32 -1, ptr %i.ag, align 8, !tbaa !255
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 396
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.ah, i8 0, i64 52, i1 false)
  %i.ai = add nsw i64 %.057.i.i.i, -8             ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 448 ; 2 uses
  %.not.i.i.i.7 = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i.7, label %_ZSt27__uninitialized_default_n_aIP14gmx_molblock_tmS0_ET_S2_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !519

_ZSt27__uninitialized_default_n_aIP14gmx_molblock_tmS0_ET_S2_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.aj, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !242
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ak = icmp ult i64 %i.n, %1
  br i1 %i.ak, label %bb.d, label %_ZNKSt6vectorI14gmx_molblock_tSaIS0_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #29
  unreachable

_ZNKSt6vectorI14gmx_molblock_tSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.al = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.al, i64 164703072086692425) ; 2 uses
  %i.an = mul nuw nsw i64 %i.am, 56
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #31 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.f ; 3 uses
  %xtraiter44 = and i64 %1, 7                     ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorI14gmx_molblock_tSaIS0_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.08.i.i.i31.prol = phi ptr [ %i.as, %.lr.ph.i.i.i30.prol ], [ %i.ap, %_ZNKSt6vectorI14gmx_molblock_tSaIS0_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.057.i.i.i32.prol = phi i64 [ %i.ar, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorI14gmx_molblock_tSaIS0_EE12_M_check_lenEmPKc.exit ]
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorI14gmx_molblock_tSaIS0_EE12_M_check_lenEmPKc.exit ]
  store i32 -1, ptr %.08.i.i.i31.prol, align 8, !tbaa !255
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.aq, i8 0, i64 52, i1 false)
  %i.ar = add nsw i64 %.057.i.i.i32.prol, -1      ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 56 ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !520

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorI14gmx_molblock_tSaIS0_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i31.unr = phi ptr [ %i.ap, %_ZNKSt6vectorI14gmx_molblock_tSaIS0_EE12_M_check_lenEmPKc.exit ], [ %i.as, %.lr.ph.i.i.i30.prol ]
  %.057.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorI14gmx_molblock_tSaIS0_EE12_M_check_lenEmPKc.exit ], [ %i.ar, %.lr.ph.i.i.i30.prol ]
  %i.at = icmp ult i64 %1, 8
  br i1 %i.at, label %_ZSt27__uninitialized_default_n_aIP14gmx_molblock_tmS0_ET_S2_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.bk, %.lr.ph.i.i.i30 ], [ %.08.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 17 uses
  %.057.i.i.i32 = phi i64 [ %i.bj, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  store i32 -1, ptr %.08.i.i.i31, align 8, !tbaa !255
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.au, i8 0, i64 52, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 56
  store i32 -1, ptr %i.av, align 8, !tbaa !255
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.aw, i8 0, i64 52, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 112
  store i32 -1, ptr %i.ax, align 8, !tbaa !255
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.ay, i8 0, i64 52, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 168
  store i32 -1, ptr %i.az, align 8, !tbaa !255
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 172
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.ba, i8 0, i64 52, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 224
  store i32 -1, ptr %i.bb, align 8, !tbaa !255
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 228
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.bc, i8 0, i64 52, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 280
  store i32 -1, ptr %i.bd, align 8, !tbaa !255
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 284
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.be, i8 0, i64 52, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 336
  store i32 -1, ptr %i.bf, align 8, !tbaa !255
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 340
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.bg, i8 0, i64 52, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 392
  store i32 -1, ptr %i.bh, align 8, !tbaa !255
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 396
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.bi, i8 0, i64 52, i1 false)
  %i.bj = add nsw i64 %.057.i.i.i32, -8           ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 448
  %.not.i.i.i33.7 = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i33.7, label %_ZSt27__uninitialized_default_n_aIP14gmx_molblock_tmS0_ET_S2_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !519

_ZSt27__uninitialized_default_n_aIP14gmx_molblock_tmS0_ET_S2_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorI14gmx_molblock_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIP14gmx_molblock_tmS0_ET_S2_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i37 ], [ %i.ao, %_ZSt27__uninitialized_default_n_aIP14gmx_molblock_tmS0_ET_S2_T0_RSaIT1_E.exit35 ] ; 7 uses
  %.0911.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIP14gmx_molblock_tmS0_ET_S2_T0_RSaIT1_E.exit35 ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !526)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !527)
  %i.bl = load i64, ptr %.0911.i.i.i, align 8, !alias.scope !527, !noalias !526
  store i64 %i.bl, ptr %.012.i.i.i, align 8, !alias.scope !526, !noalias !527
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !203, !alias.scope !527, !noalias !526
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !203, !alias.scope !526, !noalias !527
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !204, !alias.scope !527, !noalias !526
  store ptr %i.br, ptr %i.bp, align 8, !tbaa !204, !alias.scope !526, !noalias !527
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !253, !alias.scope !527, !noalias !526
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !253, !alias.scope !526, !noalias !527
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i8 0, i64 24, i1 false), !alias.scope !527, !noalias !526
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.bx = load <2 x ptr>, ptr %i.bw, align 8, !tbaa !299, !alias.scope !527, !noalias !526
  store <2 x ptr> %i.bx, ptr %i.bv, align 8, !tbaa !299, !alias.scope !526, !noalias !527
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !253, !alias.scope !527, !noalias !526
  store ptr %i.ca, ptr %i.by, align 8, !tbaa !253, !alias.scope !526, !noalias !527
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i8 0, i64 24, i1 false), !alias.scope !527, !noalias !526
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %.not.i.i.i38 = icmp eq ptr %i.cb, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorI14gmx_molblock_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i37, !llvm.loop !524

_ZNSt6vectorI14gmx_molblock_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIP14gmx_molblock_tmS0_ET_S2_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseI14gmx_molblock_tSaIS0_EE13_M_deallocateEPS0_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI14gmx_molblock_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %i.cd = load ptr, ptr %i.h, align 8, !tbaa !525
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = sub i64 %i.ce, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cf) #25
  br label %_ZNSt12_Vector_baseI14gmx_molblock_tSaIS0_EE13_M_deallocateEPS0_m.exit41

_ZNSt12_Vector_baseI14gmx_molblock_tSaIS0_EE13_M_deallocateEPS0_m.exit41: ; preds = %_ZNSt6vectorI14gmx_molblock_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %bb.e
  store ptr %i.ao, ptr %0, align 8, !tbaa !243
  %i.cg = getelementptr inbounds nuw [56 x i8], ptr %i.ap, i64 %1
  store ptr %i.cg, ptr %i.a, align 8, !tbaa !242
  %i.ch = getelementptr inbounds nuw [56 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.ch, ptr %i.h, align 8, !tbaa !525
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIP14gmx_molblock_tmS0_ET_S2_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseI14gmx_molblock_tSaIS0_EE13_M_deallocateEPS0_m.exit41, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !204  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !203    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 12                  ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !253
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = sdiv exact i64 %i.m, 12                  ; 2 uses
  %i.o = icmp ult i64 %i.g, 768614336404564651
  tail call void @llvm.assume(i1 %i.o)
  %i.p = sub nuw nsw i64 768614336404564650, %i.g
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not28.i = icmp ult i64 %i.n, %i.i
  br i1 %.not28.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = mul nuw nsw i64 %i.i, 12
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !204
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_M_default_appendEm.exit

bb.d:                                             ; preds = %bb.b
  %i.s = icmp ugt i64 %1, 768614336404564650
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #29
  unreachable

_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.d
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 768614336404564650) ; 2 uses
  %i.v = mul nuw nsw i64 %i.u, 12
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #31 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f
  %.not10.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i ], [ %i.w, %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i, i64 12, i1 false), !tbaa.struct !532, !alias.scope !533
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 12 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 12
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !531

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i
  %.not.i31.i = icmp eq ptr %i.c, null
  br i1 %.not.i31.i, label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit32.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !253
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ac) #25
  br label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit32.i

_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit32.i: ; preds = %bb.f, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !203
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.i
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !204
  %i.ae = getelementptr inbounds nuw [12 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ae, ptr %i.j, align 8, !tbaa !253
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.a
  %i.af = icmp ult i64 %1, %i.g
  br i1 %i.af, label %bb.h, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_M_default_appendEm.exit

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.ag
  br i1 %.not.i4, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPN3gmx11BasicVectorIfEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN3gmx11BasicVectorIfEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %bb.h
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !204
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_M_default_appendEm.exit

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN3gmx11BasicVectorIfEES2_EvT_S4_RSaIT0_E.exit.i, %bb.h, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit32.i, %bb.c, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorI14gmx_cmapdata_tSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !282  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !283    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !538
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 24                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 384307168202282325, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIP14gmx_cmapdata_tmS0_ET_S2_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIP14gmx_cmapdata_tmS0_ET_S2_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 24                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !282
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorI14gmx_cmapdata_tSaIS0_EE12_M_check_lenEmPKc.exit

end_hunk_0
begin_hunk_1_@_ZL11do_inputrecPN3gmx11ISerializerEP10t_inputreci:bb.a
  %i.bmz = load ptr, ptr %i.bmy, align 8
  invoke void %i.bmz(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bo)
          to label %bb.ky unwind label %bb.lf

bb.ky:                                            ; preds = %bb.kx
  %i.bna = load ptr, ptr %0, align 8, !tbaa !33
  %i.bnb = getelementptr inbounds nuw i8, ptr %i.bna, i64 128
  %i.bnc = load ptr, ptr %i.bnb, align 8
  invoke void %i.bnc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %24)
          to label %bb.kz unwind label %bb.lf

bb.kz:                                            ; preds = %bb.ky
  %i.bnd = load ptr, ptr %0, align 8, !tbaa !33
  %i.bne = getelementptr inbounds nuw i8, ptr %i.bnd, i64 56
  %i.bnf = load ptr, ptr %i.bne, align 8
  invoke void %i.bnf(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bp)
          to label %bb.la unwind label %bb.lf

bb.la:                                            ; preds = %bb.kz
  %i.bng = load ptr, ptr %0, align 8, !tbaa !33
  %i.bnh = getelementptr inbounds nuw i8, ptr %i.bng, i64 96
  %i.bni = load ptr, ptr %i.bnh, align 8
  invoke void %i.bni(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.br)
          to label %bb.lb unwind label %bb.lf

bb.lb:                                            ; preds = %bb.la
  %i.bnj = load ptr, ptr %0, align 8, !tbaa !33
  %i.bnk = getelementptr inbounds nuw i8, ptr %i.bnj, i64 56
  %i.bnl = load ptr, ptr %i.bnk, align 8
  invoke void %i.bnl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bq)
          to label %bb.lc unwind label %bb.lf

bb.lc:                                            ; preds = %bb.lb
  %i.bnm = load ptr, ptr %0, align 8, !tbaa !33
  %i.bnn = getelementptr inbounds nuw i8, ptr %i.bnm, i64 56
  %i.bno = load ptr, ptr %i.bnn, align 8
  invoke void %i.bno(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bo)
          to label %bb.ld unwind label %bb.lf

bb.ld:                                            ; preds = %bb.lc
  %i.bnp = load i32, ptr %i.bp, align 4, !tbaa !27 ; 2 uses
  %i.bnq = icmp sgt i32 %i.bnp, 0
  br i1 %i.bnq, label %bb.le, label %bb.lh

bb.le:                                            ; preds = %bb.ld
  %i.bnr = zext nneg i32 %i.bnp to i64            ; 2 uses
  %i.bns = shl nuw nsw i64 %i.bnr, 2              ; 3 uses
  %i.bnt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bns) #31
          to label %.noexc546 unwind label %bb.lg ; 6 uses

.noexc546:                                        ; preds = %bb.le
  store i32 0, ptr %i.bnt, align 4, !tbaa !27
  %i.bnu = getelementptr i8, ptr %i.bnt, i64 4    ; 3 uses
  %i.bnv = add nsw i64 %i.bnr, -1                 ; 2 uses
  %i.bnw = icmp eq i64 %i.bnv, 0
  br i1 %i.bnw, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc546
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bnv, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.bnu, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !27
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.bnu, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc546
  %.0.i.i.i.i.i = phi ptr [ %i.bnx, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.bnu, %.noexc546 ]
  %i.bny = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.bnz = ptrtoint ptr %i.bnt to i64
  %i.boa = sub i64 %i.bny, %i.bnz
  %i.bob = lshr exact i64 %i.boa, 2               ; 2 uses
  %i.boc = trunc i64 %i.bob to i32
  %i.bod = icmp sgt i32 %i.boc, 0
  br i1 %i.bod, label %.lr.ph.preheader.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit

.lr.ph.preheader.i:                               ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %wide.trip.count.i = and i64 %i.bob, 2147483647
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc549, %.lr.ph.preheader.i
  %indvars.iv.i547 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i548, %.noexc549 ] ; 2 uses
  %i.boe = getelementptr inbounds nuw [4 x i8], ptr %i.bnt, i64 %indvars.iv.i547
  %i.bof = load ptr, ptr %0, align 8, !tbaa !33
  %i.bog = getelementptr inbounds nuw i8, ptr %i.bof, i64 56
  %i.boh = load ptr, ptr %i.bog, align 8
  invoke void %i.boh(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.boe)
          to label %.noexc549 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit552, !inline_history !2

.noexc549:                                        ; preds = %.lr.ph.i
  %indvars.iv.next.i548 = add nuw nsw i64 %indvars.iv.i547, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i548, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.lr.ph.i, !llvm.loop !3

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.noexc549, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.bnt, i64 noundef %i.bns) #25
  br label %bb.lh

bb.lf:                                            ; preds = %bb.lc, %bb.lb, %bb.la, %bb.kz, %bb.ky, %bb.kx, %bb.kw, %bb.kv, %bb.ku, %bb.kt, %bb.ks
  %i.boi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ll

bb.lg:                                            ; preds = %bb.le
  %i.boj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ll

_ZNSt6vectorIiSaIiEED2Ev.exit552:                 ; preds = %.lr.ph.i
  %i.bok = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bnt, i64 noundef %i.bns) #25
  br label %bb.ll

bb.lh:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.ld
  %i.bol = load i32, ptr %i.bq, align 4, !tbaa !27 ; 2 uses
  %i.bom = icmp sgt i32 %i.bol, 0
  br i1 %i.bom, label %bb.li, label %bb.lk

bb.li:                                            ; preds = %bb.lh
  %i.bon = zext nneg i32 %i.bol to i64            ; 2 uses
  %i.boo = shl nuw nsw i64 %i.bon, 2              ; 3 uses
  %i.bop = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.boo) #31
          to label %.noexc560 unwind label %bb.lj ; 6 uses

.noexc560:                                        ; preds = %bb.li
  store i32 0, ptr %i.bop, align 4, !tbaa !27
  %i.boq = getelementptr i8, ptr %i.bop, i64 4    ; 3 uses
  %i.bor = add nsw i64 %i.bon, -1                 ; 2 uses
  %i.bos = icmp eq i64 %i.bor, 0
  br i1 %i.bos, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit561, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i555

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i555: ; preds = %.noexc560
  %.idx.i.i.i.i.i.i.i556 = shl nuw nsw i64 %i.bor, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.boq, i8 0, i64 %.idx.i.i.i.i.i.i.i556, i1 false), !tbaa !27
  %i.bot = getelementptr inbounds nuw i8, ptr %i.boq, i64 %.idx.i.i.i.i.i.i.i556
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit561

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit561:            ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i555, %.noexc560
  %.0.i.i.i.i.i557 = phi ptr [ %i.bot, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i555 ], [ %i.boq, %.noexc560 ]
  %i.bou = ptrtoint ptr %.0.i.i.i.i.i557 to i64
  %i.bov = ptrtoint ptr %i.bop to i64
  %i.bow = sub i64 %i.bou, %i.bov
  %i.box = lshr exact i64 %i.bow, 2               ; 2 uses
  %i.boy = trunc i64 %i.box to i32
  %i.boz = icmp sgt i32 %i.boy, 0
  br i1 %i.boz, label %.lr.ph.preheader.i562, label %_ZNSt6vectorIiSaIiEED2Ev.exit571

.lr.ph.preheader.i562:                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit561
  %wide.trip.count.i563 = and i64 %i.box, 2147483647
  br label %.lr.ph.i564

.lr.ph.i564:                                      ; preds = %.noexc568, %.lr.ph.preheader.i562
  %indvars.iv.i565 = phi i64 [ 0, %.lr.ph.preheader.i562 ], [ %indvars.iv.next.i566, %.noexc568 ] ; 2 uses
  %i.bpa = getelementptr inbounds nuw [4 x i8], ptr %i.bop, i64 %indvars.iv.i565
  %i.bpb = load ptr, ptr %0, align 8, !tbaa !33
  %i.bpc = getelementptr inbounds nuw i8, ptr %i.bpb, i64 56
  %i.bpd = load ptr, ptr %i.bpc, align 8
  invoke void %i.bpd(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bpa)
          to label %.noexc568 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit573, !inline_history !2

.noexc568:                                        ; preds = %.lr.ph.i564
  %indvars.iv.next.i566 = add nuw nsw i64 %indvars.iv.i565, 1 ; 2 uses
  %exitcond.not.i567 = icmp eq i64 %indvars.iv.next.i566, %wide.trip.count.i563
  br i1 %exitcond.not.i567, label %_ZNSt6vectorIiSaIiEED2Ev.exit571, label %.lr.ph.i564, !llvm.loop !3

_ZNSt6vectorIiSaIiEED2Ev.exit571:                 ; preds = %.noexc568, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit561
  call void @_ZdlPvm(ptr noundef nonnull %i.bop, i64 noundef %i.boo) #25
  br label %bb.lk

bb.lj:                                            ; preds = %bb.li
  %i.bpe = landingpad { ptr, i32 }
          cleanup
  br label %bb.ll

_ZNSt6vectorIiSaIiEED2Ev.exit573:                 ; preds = %.lr.ph.i564
  %i.bpf = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bop, i64 noundef %i.boo) #25
  br label %bb.ll

bb.lk:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit571, %bb.lh
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo) #26
  br label %bb.ln

bb.ll:                                            ; preds = %bb.lj, %_ZNSt6vectorIiSaIiEED2Ev.exit573, %bb.lg, %_ZNSt6vectorIiSaIiEED2Ev.exit552, %bb.lf
  %.pn389.pn = phi { ptr, i32 } [ %i.boj, %bb.lg ], [ %i.boi, %bb.lf ], [ %i.bok, %_ZNSt6vectorIiSaIiEED2Ev.exit552 ], [ %i.bpf, %_ZNSt6vectorIiSaIiEED2Ev.exit573 ], [ %i.bpe, %bb.lj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo) #26
  br label %.body

bb.lm:                                            ; preds = %bb.kp
  store i8 0, ptr %i.bmc, align 1, !tbaa !739
  br label %bb.ln

bb.ln:                                            ; preds = %bb.kr, %bb.lk, %bb.lm
  %i.bpg = icmp sgt i32 %2, 100                   ; 4 uses
  br i1 %i.bpg, label %bb.lo, label %bb.lp

bb.lo:                                            ; preds = %bb.ln
  %i.bph = getelementptr inbounds nuw i8, ptr %1, i64 592 ; 2 uses
  %i.bpi = load ptr, ptr %0, align 8, !tbaa !33
  %i.bpj = getelementptr inbounds nuw i8, ptr %i.bpi, i64 24
  %i.bpk = load ptr, ptr %i.bpj, align 8
  invoke void %i.bpk(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bph)
          to label %._crit_edge1944 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge1944:                                  ; preds = %bb.lo
  %.pre1945 = load i8, ptr %i.bph, align 8, !tbaa !740, !range !40
  %i.bpl = trunc nuw i8 %.pre1945 to i1
  br i1 %i.bpl, label %.split2302, label %bb.of

.loopexit1441:                                    ; preds = %.lr.ph.i26.i.i
  %lpad.loopexit1443 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp1442.loopexit:                  ; preds = %.lr.ph.i.i.i
  %lpad.loopexit1446 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp1442.loopexit.split-lp.loopexit: ; preds = %.lr.ph128.i, %bb.my, %_ZN3gmx11ISerializer10doIntArrayEPii.exit.i.i, %bb.nb, %_ZL20do_pullgrp_tpx_pre95PN3gmx11ISerializerEP12t_pull_groupP12t_pull_coord.exit.i, %.noexc615, %.noexc616, %.noexc617, %.noexc618, %.noexc619
  %lpad.loopexit1449 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i.i110.i
  %lpad.loopexit1452 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i72.i.i
  %lpad.loopexit1455 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.noexc645.invoke, %.noexc653, %.noexc652, %.noexc651, %.noexc650, %_ZL13do_pull_coordPN3gmx11ISerializerEP12t_pull_coordi16PullingAlgorithm17PullGroupGeometryPi.exit.i, %bb.oa, %.noexc647, %.noexc638, %.noexc644, %bb.ny, %.noexc642, %bb.nx, %.noexc640, %bb.nw, %bb.nu, %_ZN3gmx11ISerializer10doIntArrayEPii.exit.i107.i, %_ZN3gmx11ISerializer10doIntArrayEPii.exit76.i.i, %bb.nt, %.noexc631, %.noexc629, %bb.nq, %bb.np, %bb.nn
  %lpad.loopexit1458 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i15.i.i
  %lpad.loopexit1461 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i.i100.i
  %lpad.loopexit1464 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i580, %bb.ng, %_ZN3gmx11ISerializer10doIntArrayEPii.exit.i95.i, %bb.nj, %_ZL13do_pull_groupPN3gmx11ISerializerEP12t_pull_group.exit.i
  %lpad.loopexit1467 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.lo, %.split2302, %bb.lp, %bb.ly, %.noexc587, %bb.ma, %.noexc589, %.noexc590, %bb.mb, %.noexc592, %bb.mc, %bb.md, %.noexc595, %bb.mf, %.noexc597, %.noexc598, %.noexc596, %.noexc600, %bb.mg, %bb.mi, %bb.mn, %bb.mr, %bb.mw, %bb.oe, %.noexc655
  %lpad.loopexit.split-lp1468 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.lp:                                            ; preds = %bb.ln
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #26
  store i32 0, ptr %i.ab, align 4, !tbaa !27
  %i.bpm = load ptr, ptr %0, align 8, !tbaa !33
  %i.bpn = getelementptr inbounds nuw i8, ptr %i.bpm, i64 56
  %i.bpo = load ptr, ptr %i.bpn, align 8
  invoke void %i.bpo(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ab)
          to label %bb.lq unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !596

bb.lq:                                            ; preds = %bb.lp
  %i.bpp = load i32, ptr %i.ab, align 4, !tbaa !27 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #26
  %i.bpq = icmp ne i32 %i.bpp, 0                  ; 2 uses
  %i.bpr = getelementptr inbounds nuw i8, ptr %1, i64 592
  %i.bps = zext i1 %i.bpq to i8
  store i8 %i.bps, ptr %i.bpr, align 8, !tbaa !740
  switch i32 %i.bpp, label %bb.lr [
    i32 0, label %bb.lt
    i32 1, label %bb.lt
    i32 2, label %.split2302
    i32 3, label %.split2301
    i32 4, label %.split2300
    i32 5, label %.split2299
    i32 6, label %.split
  ]

.split2301:                                       ; preds = %bb.lq
  br label %.split2302

.split2300:                                       ; preds = %bb.lq
  br label %.split2302

.split2299:                                       ; preds = %bb.lq
  br label %.split2302

.split:                                           ; preds = %bb.lq
  br label %.split2302

bb.lr:                                            ; preds = %bb.lq
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.100, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZL11do_inputrecPN3gmx11ISerializerEP10t_inputreciENK3$_1clEv", ptr noundef nonnull @.str.12, i32 noundef 1631) #29
          to label %.noexc575 unwind label %bb.ls

.noexc575:                                        ; preds = %bb.lr
  unreachable

bb.ls:                                            ; preds = %bb.lr
  %i.bpt = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.lt:                                            ; preds = %bb.lq, %bb.lq
  br i1 %i.bpq, label %.split2302, label %.thread2304

.split2302:                                       ; preds = %.split, %.split2299, %.split2300, %.split2301, %bb.lq, %._crit_edge1944, %bb.lt
  %.013552298 = phi i32 [ 0, %._crit_edge1944 ], [ 0, %bb.lt ], [ 5, %.split ], [ 4, %.split2299 ], [ 3, %.split2300 ], [ 2, %.split2301 ], [ 1, %bb.lq ]
  %i.bpu = load ptr, ptr %0, align 8, !tbaa !33
  %i.bpv = getelementptr inbounds nuw i8, ptr %i.bpu, i64 16
  %i.bpw = load ptr, ptr %i.bpv, align 8
  %i.bpx = invoke noundef zeroext i1 %i.bpw(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.lu unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.lu:                                            ; preds = %.split2302
  br i1 %i.bpx, label %bb.lv, label %_ZNSt10unique_ptrI13pull_params_tSt14default_deleteIS0_EED2Ev.exit

bb.lv:                                            ; preds = %bb.lu
  %i.bpy = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #31
          to label %bb.lw unwind label %bb.lx     ; 2 uses

bb.lw:                                            ; preds = %bb.lv
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bpy, i8 0, i64 80, i1 false), !noalias !741
  %i.bpz = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 2 uses
  %i.bqa = load ptr, ptr %i.bpz, align 8, !tbaa !742 ; 3 uses
  store ptr %i.bpy, ptr %i.bpz, align 8, !tbaa !742
  %.not.i.i.i.i577 = icmp eq ptr %i.bqa, null
  br i1 %.not.i.i.i.i577, label %_ZNSt10unique_ptrI13pull_params_tSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteI13pull_params_tEclEPS0_.exit.i.i.i.i

_ZNKSt14default_deleteI13pull_params_tEclEPS0_.exit.i.i.i.i: ; preds = %bb.lw
  call void @_ZN13pull_params_tD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bqa) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.bqa, i64 noundef 80) #25
  br label %_ZNSt10unique_ptrI13pull_params_tSt14default_deleteIS0_EED2Ev.exit

bb.lx:                                            ; preds = %bb.lv
  %i.bqb = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt10unique_ptrI13pull_params_tSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.lw, %_ZNKSt14default_deleteI13pull_params_tEclEPS0_.exit.i.i.i.i, %bb.lu
  %i.bqc = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.bqd = load ptr, ptr %i.bqc, align 8, !tbaa !742 ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #26
  %i.bqe = icmp sgt i32 %2, 94                    ; 2 uses
  br i1 %i.bqe, label %bb.ly, label %.noexc587

bb.ly:                                            ; preds = %_ZNSt10unique_ptrI13pull_params_tSt14default_deleteIS0_EED2Ev.exit
  %i.bqf = load ptr, ptr %0, align 8, !tbaa !33
  %i.bqg = getelementptr inbounds nuw i8, ptr %i.bqf, i64 56
  %i.bqh = load ptr, ptr %i.bqg, align 8
  invoke void %i.bqh(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.bqd)
          to label %.noexc587 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !599

.noexc587:                                        ; preds = %bb.ly, %_ZNSt10unique_ptrI13pull_params_tSt14default_deleteIS0_EED2Ev.exit
  %i.bqi = getelementptr inbounds nuw i8, ptr %i.bqd, i64 4 ; 5 uses
  %i.bqj = load ptr, ptr %0, align 8, !tbaa !33
  %i.bqk = getelementptr inbounds nuw i8, ptr %i.bqj, i64 56
  %i.bql = load ptr, ptr %i.bqk, align 8
  invoke void %i.bql(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bqi)
          to label %.noexc588 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !599

.noexc588:                                        ; preds = %.noexc587
  %i.bqm = icmp slt i32 %2, 95                    ; 2 uses
  br i1 %i.bqm, label %.thread.i586, label %bb.lz

.thread.i586:                                     ; preds = %.noexc588
  %i.bqn = load i32, ptr %i.bqi, align 4, !tbaa !750
  %i.bqo = add nsw i32 %i.bqn, 1
  store i32 %i.bqo, ptr %i.bqd, align 8, !tbaa !751
  br label %bb.ma

bb.lz:                                            ; preds = %.noexc588
  %i.bqp = icmp samesign ult i32 %2, 101
  br i1 %i.bqp, label %bb.ma, label %bb.mb

bb.ma:                                            ; preds = %bb.lz, %.thread.i586
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #26
  store i32 9, ptr %i.w, align 4, !tbaa !27
  %i.bqq = load ptr, ptr %0, align 8, !tbaa !33
  %i.bqr = getelementptr inbounds nuw i8, ptr %i.bqq, i64 56
  %i.bqs = load ptr, ptr %i.bqr, align 8
  invoke void %i.bqs(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.w)
          to label %.noexc589 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !599

.noexc589:                                        ; preds = %bb.ma
  %i.bqt = load i32, ptr %i.w, align 4, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #26
  %i.bqu = load ptr, ptr %0, align 8, !tbaa !33
  %i.bqv = getelementptr inbounds nuw i8, ptr %i.bqu, i64 104
  %i.bqw = load ptr, ptr %i.bqv, align 8
  invoke void %i.bqw(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.x)
          to label %.noexc590 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !599

.noexc590:                                        ; preds = %.noexc589
  %i.bqx = load ptr, ptr %0, align 8, !tbaa !33
  %i.bqy = getelementptr inbounds nuw i8, ptr %i.bqx, i64 96
  %i.bqz = load ptr, ptr %i.bqy, align 8
  invoke void %i.bqz(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.y)
          to label %.noexc591 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !599

.noexc591:                                        ; preds = %.noexc590
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #26
  br label %bb.mb

bb.mb:                                            ; preds = %.noexc591, %bb.lz
  %.0120.i = phi i32 [ %i.bqt, %.noexc591 ], [ 9, %bb.lz ] ; 4 uses
  %i.bra = getelementptr inbounds nuw i8, ptr %i.bqd, i64 8
  %i.brb = load ptr, ptr %0, align 8, !tbaa !33
  %i.brc = getelementptr inbounds nuw i8, ptr %i.brb, i64 96
  %i.brd = load ptr, ptr %i.brc, align 8
  invoke void %i.brd(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bra)
          to label %.noexc592 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !599

.noexc592:                                        ; preds = %bb.mb
  %i.bre = getelementptr inbounds nuw i8, ptr %i.bqd, i64 12
  %i.brf = load ptr, ptr %0, align 8, !tbaa !33
  %i.brg = getelementptr inbounds nuw i8, ptr %i.brf, i64 96
  %i.brh = load ptr, ptr %i.brg, align 8
  invoke void %i.brh(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bre)
          to label %.noexc593 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !599

.noexc593:                                        ; preds = %.noexc592
  br i1 %i.bqe, label %bb.mc, label %.thread122.i

bb.mc:                                            ; preds = %.noexc593
  %i.bri = getelementptr inbounds nuw i8, ptr %i.bqd, i64 16
  %i.brj = load ptr, ptr %0, align 8, !tbaa !33
  %i.brk = getelementptr inbounds nuw i8, ptr %i.brj, i64 24
  %i.brl = load ptr, ptr %i.brk, align 8
  invoke void %i.brl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bri)
          to label %.noexc594 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !599

.noexc594:                                        ; preds = %bb.mc
  %i.brm = icmp samesign ugt i32 %2, 108
  br i1 %i.brm, label %bb.md, label %bb.me

bb.md:                                            ; preds = %.noexc594
  %i.brn = getelementptr inbounds nuw i8, ptr %i.bqd, i64 17
  %i.bro = load ptr, ptr %0, align 8, !tbaa !33
  %i.brp = getelementptr inbounds nuw i8, ptr %i.bro, i64 24
  %i.brq = load ptr, ptr %i.brp, align 8
  invoke void %i.brq(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.brn)
          to label %.noexc595 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !599

.noexc595:                                        ; preds = %bb.md
  %i.brr = getelementptr inbounds nuw i8, ptr %i.bqd, i64 18
  %i.brs = load ptr, ptr %0, align 8, !tbaa !33
  %i.brt = getelementptr inbounds nuw i8, ptr %i.brs, i64 24
  %i.bru = load ptr, ptr %i.brt, align 8
  invoke void %i.bru(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.brr)
          to label %.noexc596 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !599

bb.me:                                            ; preds = %.noexc594
  br i1 %i.bpg, label %bb.mf, label %.thread122.i

bb.mf:                                            ; preds = %bb.me
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #26
  %i.brv = load ptr, ptr %0, align 8, !tbaa !33
  %i.brw = getelementptr inbounds nuw i8, ptr %i.brv, i64 56
  %i.brx = load ptr, ptr %i.brw, align 8
  invoke void %i.brx(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.z)
          to label %.noexc597 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !599

.noexc597:                                        ; preds = %bb.mf
  %i.bry = getelementptr inbounds nuw i8, ptr %i.bqd, i64 17
  %i.brz = load ptr, ptr %0, align 8, !tbaa !33
  %i.bsa = getelementptr inbounds nuw i8, ptr %i.brz, i64 24
  %i.bsb = load ptr, ptr %i.bsa, align 8
  invoke void %i.bsb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bry)
          to label %.noexc598 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !599

.noexc598:                                        ; preds = %.noexc597
  %i.bsc = getelementptr inbounds nuw i8, ptr %i.bqd, i64 18
  %i.bsd = load ptr, ptr %0, align 8, !tbaa !33
  %i.bse = getelementptr inbounds nuw i8, ptr %i.bsd, i64 24
  %i.bsf = load ptr, ptr %i.bse, align 8
  invoke void %i.bsf(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bsc)
          to label %.noexc599 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !599

.noexc599:                                        ; preds = %.noexc598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #26
  br label %.noexc596

.thread122.i:                                     ; preds = %bb.me, %.noexc593
  %i.bsg = getelementptr inbounds nuw i8, ptr %i.bqd, i64 17
  store i8 0, ptr %i.bsg, align 1, !tbaa !752
  %i.bsh = getelementptr inbounds nuw i8, ptr %i.bqd, i64 18
  store i8 1, ptr %i.bsh, align 2, !tbaa !753
  br label %.noexc596

.noexc596:                                        ; preds = %.noexc595, %.thread122.i, %.noexc599
  %i.bsi = getelementptr inbounds nuw i8, ptr %i.bqd, i64 20
  %i.bsj = load ptr, ptr %0, align 8, !tbaa !33
  %i.bsk = getelementptr inbounds nuw i8, ptr %i.bsj, i64 56
  %i.bsl = load ptr, ptr %i.bsk, align 8
  invoke void %i.bsl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bsi)
          to label %.noexc600 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !599

.noexc600:                                        ; preds = %.noexc596
  %i.bsm = getelementptr inbounds nuw i8, ptr %i.bqd, i64 24
  %i.bsn = load ptr, ptr %0, align 8, !tbaa !33
  %i.bso = getelementptr inbounds nuw i8, ptr %i.bsn, i64 56
  %i.bsp = load ptr, ptr %i.bso, align 8
  invoke void %i.bsp(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bsm)
          to label %.noexc601 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !599

.noexc601:                                        ; preds = %.noexc600
  %i.bsq = icmp sgt i32 %2, 113
  %i.bsr = getelementptr inbounds nuw i8, ptr %i.bqd, i64 19 ; 2 uses
  br i1 %i.bsq, label %bb.mg, label %bb.mh

bb.mg:                                            ; preds = %.noexc601
  %i.bss = load ptr, ptr %0, align 8, !tbaa !33
  %i.bst = getelementptr inbounds nuw i8, ptr %i.bss, i64 24
  %i.bsu = load ptr, ptr %i.bst, align 8
  invoke void %i.bsu(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bsr)
          to label %.noexc602 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !599

bb.mh:                                            ; preds = %.noexc601
  store i8 0, ptr %i.bsr, align 1, !tbaa !754
  br label %.noexc602

.noexc602:                                        ; preds = %bb.mg, %bb.mh
  %i.bsv = getelementptr inbounds nuw i8, ptr %i.bqd, i64 32 ; 5 uses
  %i.bsw = load i32, ptr %i.bqd, align 8, !tbaa !751
  %i.bsx = sext i32 %i.bsw to i64                 ; 4 uses
  %i.bsy = getelementptr inbounds nuw i8, ptr %i.bqd, i64 40 ; 2 uses
  %i.bsz = load ptr, ptr %i.bsy, align 8, !tbaa !319 ; 3 uses
  %i.bta = load ptr, ptr %i.bsv, align 8, !tbaa !320 ; 2 uses
  %i.btb = ptrtoint ptr %i.bsz to i64
  %i.btc = ptrtoint ptr %i.bta to i64
  %i.btd = sub i64 %i.btb, %i.btc
  %i.bte = sdiv exact i64 %i.btd, 56              ; 3 uses
  %i.btf = icmp ult i64 %i.bte, %i.bsx
  br i1 %i.btf, label %bb.mi, label %bb.mj

bb.mi:                                            ; preds = %.noexc602
  %i.btg = sub nuw nsw i64 %i.bsx, %i.bte
  invoke void @_ZNSt6vectorI12t_pull_groupSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bsv, i64 noundef %i.btg)
          to label %_ZNSt6vectorI12t_pull_groupSaIS0_EE6resizeEm.exit.i unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.mj:                                            ; preds = %.noexc602
  %i.bth = icmp ugt i64 %i.bte, %i.bsx
  br i1 %i.bth, label %bb.mk, label %_ZNSt6vectorI12t_pull_groupSaIS0_EE6resizeEm.exit.i

bb.mk:                                            ; preds = %bb.mj
  %i.bti = getelementptr inbounds nuw [56 x i8], ptr %i.bta, i64 %i.bsx ; 3 uses
  %.not.i.i.i585 = icmp eq ptr %i.bsz, %i.bti
  br i1 %.not.i.i.i585, label %_ZNSt6vectorI12t_pull_groupSaIS0_EE6resizeEm.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.mk, %_ZSt8_DestroyI12t_pull_groupEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.btw, %_ZSt8_DestroyI12t_pull_groupEvPT_.exit.i.i.i.i.i ], [ %i.bti, %bb.mk ] ; 5 uses
  %i.btj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24
  %i.btk = load ptr, ptr %i.btj, align 8, !tbaa !284 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.btk, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i.i.i, label %bb.ml

bb.ml:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.btl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 40
  %i.btm = load ptr, ptr %i.btl, align 8, !tbaa !285
  %i.btn = ptrtoint ptr %i.btm to i64
  %i.bto = ptrtoint ptr %i.btk to i64
  %i.btp = sub i64 %i.btn, %i.bto
  call void @_ZdlPvm(ptr noundef nonnull %i.btk, i64 noundef %i.btp) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i.i.i:      ; preds = %bb.ml, %.lr.ph.i.i.i.i.i
  %i.btq = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !209 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.btq, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i, label %_ZSt8_DestroyI12t_pull_groupEvPT_.exit.i.i.i.i.i, label %bb.mm

bb.mm:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i.i.i
  %i.btr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.bts = load ptr, ptr %i.btr, align 8, !tbaa !252
  %i.btt = ptrtoint ptr %i.bts to i64
  %i.btu = ptrtoint ptr %i.btq to i64
  %i.btv = sub i64 %i.btt, %i.btu
  call void @_ZdlPvm(ptr noundef nonnull %i.btq, i64 noundef %i.btv) #25
  br label %_ZSt8_DestroyI12t_pull_groupEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyI12t_pull_groupEvPT_.exit.i.i.i.i.i: ; preds = %bb.mm, %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i.i.i
  %i.btw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.btw, %i.bsz
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIP12t_pull_groupS0_EvT_S2_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !6

_ZSt8_DestroyIP12t_pull_groupS0_EvT_S2_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyI12t_pull_groupEvPT_.exit.i.i.i.i.i
  store ptr %i.bti, ptr %i.bsy, align 8, !tbaa !319
  br label %_ZNSt6vectorI12t_pull_groupSaIS0_EE6resizeEm.exit.i

_ZNSt6vectorI12t_pull_groupSaIS0_EE6resizeEm.exit.i: ; preds = %bb.mi, %_ZSt8_DestroyIP12t_pull_groupS0_EvT_S2_RSaIT0_E.exit.i.i.i, %bb.mk, %bb.mj
  %i.btx = getelementptr inbounds nuw i8, ptr %i.bqd, i64 56 ; 6 uses
  %i.bty = load i32, ptr %i.bqi, align 4, !tbaa !750
  %i.btz = sext i32 %i.bty to i64                 ; 4 uses
  %i.bua = getelementptr inbounds nuw i8, ptr %i.bqd, i64 64 ; 2 uses
  %i.bub = load ptr, ptr %i.bua, align 8, !tbaa !321 ; 3 uses
  %i.buc = load ptr, ptr %i.btx, align 8, !tbaa !322 ; 2 uses
  %i.bud = ptrtoint ptr %i.bub to i64
  %i.bue = ptrtoint ptr %i.buc to i64
  %i.buf = sub i64 %i.bud, %i.bue
  %i.bug = sdiv exact i64 %i.buf, 176             ; 3 uses
  %i.buh = icmp ult i64 %i.bug, %i.btz
  br i1 %i.buh, label %bb.mn, label %bb.mo

bb.mn:                                            ; preds = %_ZNSt6vectorI12t_pull_groupSaIS0_EE6resizeEm.exit.i
  %i.bui = sub nuw nsw i64 %i.btz, %i.bug
  invoke void @_ZNSt6vectorI12t_pull_coordSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.btx, i64 noundef %i.bui)
          to label %_ZNSt6vectorI12t_pull_coordSaIS0_EE6resizeEm.exit.i unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.mo:                                            ; preds = %_ZNSt6vectorI12t_pull_groupSaIS0_EE6resizeEm.exit.i
  %i.buj = icmp ugt i64 %i.bug, %i.btz
  br i1 %i.buj, label %bb.mp, label %_ZNSt6vectorI12t_pull_coordSaIS0_EE6resizeEm.exit.i

bb.mp:                                            ; preds = %bb.mo
  %i.buk = getelementptr inbounds nuw [176 x i8], ptr %i.buc, i64 %i.btz ; 3 uses
  %.not.i.i90.i = icmp eq ptr %i.bub, %i.buk
  br i1 %.not.i.i90.i, label %_ZNSt6vectorI12t_pull_coordSaIS0_EE6resizeEm.exit.i, label %.lr.ph.i.i.i.i91.i

.lr.ph.i.i.i.i91.i:                               ; preds = %bb.mp, %_ZSt8_DestroyI12t_pull_coordEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i92.i = phi ptr [ %i.bux, %_ZSt8_DestroyI12t_pull_coordEvPT_.exit.i.i.i.i.i ], [ %i.buk, %bb.mp ] ; 5 uses
  %i.bul = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i92.i, i64 48
  %i.bum = load ptr, ptr %i.bul, align 8, !tbaa !25 ; 2 uses
  %i.bun = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i92.i, i64 64 ; 2 uses
  %i.buo = icmp eq ptr %i.bum, %i.bun
  br i1 %i.buo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i91.i
  %i.bup = load i64, ptr %i.bun, align 8, !tbaa !26
  %i.buq = add i64 %i.bup, 1
  call void @_ZdlPvm(ptr noundef %i.bum, i64 noundef %i.buq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i91.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.bur = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i92.i, i64 8
  %i.bus = load ptr, ptr %i.bur, align 8, !tbaa !25 ; 2 uses
  %i.but = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i92.i, i64 24 ; 2 uses
  %i.buu = icmp eq ptr %i.bus, %i.but
  br i1 %i.buu, label %_ZSt8_DestroyI12t_pull_coordEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i
  %i.buv = load i64, ptr %i.but, align 8, !tbaa !26
  %i.buw = add i64 %i.buv, 1
  call void @_ZdlPvm(ptr noundef %i.bus, i64 noundef %i.buw) #25
  br label %_ZSt8_DestroyI12t_pull_coordEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyI12t_pull_coordEvPT_.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i
  %i.bux = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i92.i, i64 176 ; 2 uses
  %.not.i.i.i.i93.i = icmp eq ptr %i.bux, %i.bub
  br i1 %.not.i.i.i.i93.i, label %_ZSt8_DestroyIP12t_pull_coordS0_EvT_S2_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i91.i, !llvm.loop !7

_ZSt8_DestroyIP12t_pull_coordS0_EvT_S2_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyI12t_pull_coordEvPT_.exit.i.i.i.i.i
  store ptr %i.buk, ptr %i.bua, align 8, !tbaa !321
  br label %_ZNSt6vectorI12t_pull_coordSaIS0_EE6resizeEm.exit.i

_ZNSt6vectorI12t_pull_coordSaIS0_EE6resizeEm.exit.i: ; preds = %bb.mn, %_ZSt8_DestroyIP12t_pull_coordS0_EvT_S2_RSaIT0_E.exit.i.i.i, %bb.mp, %bb.mo
end_hunk_1
begin_hunk_2_@_ZL11do_inputrecPN3gmx11ISerializerEP10t_inputreci:bb.a
  store ptr %i.bwi, ptr %i.bvm, align 8, !tbaa !208
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i:           ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i, %bb.na, %bb.mz, %.noexc610
  %i.bwj = phi i32 [ %.pre30.i.i, %.noexc610 ], [ %i.bvx, %bb.mz ], [ %i.bvx, %bb.na ], [ %i.bvx, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i ] ; 2 uses
  %i.bwk = phi ptr [ %.pre.i.i, %.noexc610 ], [ %i.bwa, %bb.mz ], [ %i.bwa, %bb.na ], [ %i.bwa, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i ]
  %i.bwl = icmp sgt i32 %i.bwj, 0
  br i1 %i.bwl, label %.lr.ph.preheader.i.i.i, label %_ZN3gmx11ISerializer10doIntArrayEPii.exit.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.bwj to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc611, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %.noexc611 ] ; 2 uses
  %i.bwm = getelementptr inbounds nuw [4 x i8], ptr %i.bwk, i64 %indvars.iv.i.i.i
  %i.bwn = load ptr, ptr %0, align 8, !tbaa !33
  %i.bwo = getelementptr inbounds nuw i8, ptr %i.bwn, i64 56
  %i.bwp = load ptr, ptr %i.bwo, align 8
  invoke void %i.bwp(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.bwm)
          to label %.noexc611 unwind label %.loopexit.split-lp1442.loopexit, !inline_history !599

.noexc611:                                        ; preds = %.lr.ph.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZN3gmx11ISerializer10doIntArrayEPii.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZN3gmx11ISerializer10doIntArrayEPii.exit.i.i:    ; preds = %.noexc611, %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #26
  %i.bwq = getelementptr inbounds nuw i8, ptr %i.bvg, i64 24 ; 4 uses
  %i.bwr = getelementptr inbounds nuw i8, ptr %i.bvg, i64 32 ; 3 uses
  %i.bws = load ptr, ptr %i.bwr, align 8, !tbaa !286
  %i.bwt = load ptr, ptr %i.bwq, align 8, !tbaa !284
  %i.bwu = ptrtoint ptr %i.bws to i64
  %i.bwv = ptrtoint ptr %i.bwt to i64
  %i.bww = sub i64 %i.bwu, %i.bwv
  %i.bwx = lshr exact i64 %i.bww, 2
  %i.bwy = trunc i64 %i.bwx to i32
  store i32 %i.bwy, ptr %i.v, align 4, !tbaa !27
  %i.bwz = load ptr, ptr %0, align 8, !tbaa !33
  %i.bxa = getelementptr inbounds nuw i8, ptr %i.bwz, i64 56
  %i.bxb = load ptr, ptr %i.bxa, align 8
  invoke void %i.bxb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.v)
          to label %.noexc612 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit, !inline_history !599

.noexc612:                                        ; preds = %_ZN3gmx11ISerializer10doIntArrayEPii.exit.i.i
  %i.bxc = load i32, ptr %i.v, align 4, !tbaa !27 ; 4 uses
  %i.bxd = sext i32 %i.bxc to i64                 ; 4 uses
  %i.bxe = load ptr, ptr %i.bwr, align 8, !tbaa !286 ; 2 uses
  %i.bxf = load ptr, ptr %i.bwq, align 8, !tbaa !284 ; 5 uses
  %i.bxg = ptrtoint ptr %i.bxe to i64
  %i.bxh = ptrtoint ptr %i.bxf to i64
  %i.bxi = sub i64 %i.bxg, %i.bxh
  %i.bxj = ashr exact i64 %i.bxi, 2               ; 3 uses
  %i.bxk = icmp ult i64 %i.bxj, %i.bxd
  br i1 %i.bxk, label %bb.nb, label %bb.nc

bb.nb:                                            ; preds = %.noexc612
  %i.bxl = sub nuw nsw i64 %i.bxd, %i.bxj
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bwq, i64 noundef %i.bxl)
          to label %.noexc613 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit

.noexc613:                                        ; preds = %bb.nb
  %.pre31.i.i = load ptr, ptr %i.bwq, align 8, !tbaa !284
  %.pre32.i.i = load i32, ptr %i.v, align 4, !tbaa !27
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i

bb.nc:                                            ; preds = %.noexc612
  %i.bxm = icmp ugt i64 %i.bxj, %i.bxd
  br i1 %i.bxm, label %bb.nd, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i

bb.nd:                                            ; preds = %bb.nc
  %i.bxn = getelementptr inbounds nuw [4 x i8], ptr %i.bxf, i64 %i.bxd ; 2 uses
  %.not.i.i23.i.i = icmp eq ptr %i.bxe, %i.bxn
  br i1 %.not.i.i23.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %bb.nd
  store ptr %i.bxn, ptr %i.bwr, align 8, !tbaa !286
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i

_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i:           ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i.i, %bb.nd, %bb.nc, %.noexc613
  %i.bxo = phi i32 [ %.pre32.i.i, %.noexc613 ], [ %i.bxc, %bb.nc ], [ %i.bxc, %bb.nd ], [ %i.bxc, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i.i ] ; 2 uses
  %i.bxp = phi ptr [ %.pre31.i.i, %.noexc613 ], [ %i.bxf, %bb.nc ], [ %i.bxf, %bb.nd ], [ %i.bxf, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i.i ]
  %i.bxq = icmp sgt i32 %i.bxo, 0
  br i1 %i.bxq, label %.lr.ph.preheader.i24.i.i, label %_ZL20do_pullgrp_tpx_pre95PN3gmx11ISerializerEP12t_pull_groupP12t_pull_coord.exit.i

.lr.ph.preheader.i24.i.i:                         ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i
  %wide.trip.count.i25.i.i = zext nneg i32 %i.bxo to i64
  br label %.lr.ph.i26.i.i

.lr.ph.i26.i.i:                                   ; preds = %.noexc614, %.lr.ph.preheader.i24.i.i
  %indvars.iv.i27.i.i = phi i64 [ 0, %.lr.ph.preheader.i24.i.i ], [ %indvars.iv.next.i28.i.i, %.noexc614 ] ; 2 uses
  %i.bxr = getelementptr inbounds nuw [4 x i8], ptr %i.bxp, i64 %indvars.iv.i27.i.i
  %i.bxs = load ptr, ptr %0, align 8, !tbaa !33
  %i.bxt = getelementptr inbounds nuw i8, ptr %i.bxs, i64 96
  %i.bxu = load ptr, ptr %i.bxt, align 8
  invoke void %i.bxu(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.bxr)
          to label %.noexc614 unwind label %.loopexit1441, !inline_history !599

.noexc614:                                        ; preds = %.lr.ph.i26.i.i
  %indvars.iv.next.i28.i.i = add nuw nsw i64 %indvars.iv.i27.i.i, 1 ; 2 uses
  %exitcond.not.i29.i.i = icmp eq i64 %indvars.iv.next.i28.i.i, %wide.trip.count.i25.i.i
  br i1 %exitcond.not.i29.i.i, label %_ZL20do_pullgrp_tpx_pre95PN3gmx11ISerializerEP12t_pull_groupP12t_pull_coord.exit.i, label %.lr.ph.i26.i.i, !llvm.loop !1

_ZL20do_pullgrp_tpx_pre95PN3gmx11ISerializerEP12t_pull_groupP12t_pull_coord.exit.i: ; preds = %.noexc614, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i
  %i.bxv = getelementptr inbounds nuw i8, ptr %i.bvg, i64 48
  %i.bxw = load ptr, ptr %0, align 8, !tbaa !33
  %i.bxx = getelementptr inbounds nuw i8, ptr %i.bxw, i64 56
  %i.bxy = load ptr, ptr %i.bxx, align 8
  invoke void %i.bxy(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bxv)
          to label %.noexc615 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit, !inline_history !599

.noexc615:                                        ; preds = %_ZL20do_pullgrp_tpx_pre95PN3gmx11ISerializerEP12t_pull_groupP12t_pull_coord.exit.i
  %i.bxz = getelementptr inbounds nuw i8, ptr %i.bvl, i64 140
  %i.bya = load ptr, ptr %0, align 8, !tbaa !33
  %i.byb = getelementptr inbounds nuw i8, ptr %i.bya, i64 128
  %i.byc = load ptr, ptr %i.byb, align 8
  invoke void %i.byc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bxz)
          to label %.noexc616 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit, !inline_history !599

.noexc616:                                        ; preds = %.noexc615
  %i.byd = getelementptr inbounds nuw i8, ptr %i.bvl, i64 128
  store <2 x float> zeroinitializer, ptr %i.byd, align 4, !tbaa !29
  %i.bye = getelementptr inbounds nuw i8, ptr %i.bvl, i64 136
  store float 0.000000e+00, ptr %i.bye, align 4, !tbaa !29
  %i.byf = load ptr, ptr %0, align 8, !tbaa !33
  %i.byg = getelementptr inbounds nuw i8, ptr %i.byf, i64 128
  %i.byh = load ptr, ptr %i.byg, align 8
  invoke void %i.byh(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %19)
          to label %.noexc617 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit, !inline_history !599

.noexc617:                                        ; preds = %.noexc616
  %i.byi = load float, ptr %19, align 4, !tbaa !29
  %i.byj = getelementptr inbounds nuw i8, ptr %i.bvl, i64 156
  store float %i.byi, ptr %i.byj, align 4, !tbaa !755
  %i.byk = getelementptr inbounds nuw i8, ptr %i.bvl, i64 160
  %i.byl = load ptr, ptr %0, align 8, !tbaa !33
  %i.bym = getelementptr inbounds nuw i8, ptr %i.byl, i64 96
  %i.byn = load ptr, ptr %i.bym, align 8
  invoke void %i.byn(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.byk)
          to label %.noexc618 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit, !inline_history !599

.noexc618:                                        ; preds = %.noexc617
  %i.byo = getelementptr inbounds nuw i8, ptr %i.bvl, i64 164
  %i.byp = load ptr, ptr %0, align 8, !tbaa !33
  %i.byq = getelementptr inbounds nuw i8, ptr %i.byp, i64 96
  %i.byr = load ptr, ptr %i.byq, align 8
  invoke void %i.byr(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.byo)
          to label %.noexc619 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit, !inline_history !599

.noexc619:                                        ; preds = %.noexc618
  %i.bys = getelementptr inbounds nuw i8, ptr %i.bvl, i64 168
  %i.byt = load ptr, ptr %0, align 8, !tbaa !33
  %i.byu = getelementptr inbounds nuw i8, ptr %i.byt, i64 96
  %i.byv = load ptr, ptr %i.byu, align 8
  invoke void %i.byv(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bys)
          to label %.noexc620 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit, !inline_history !599

.noexc620:                                        ; preds = %.noexc619
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  %.not.i583 = icmp eq i64 %indvars.iv133.i, 0
  br i1 %.not.i583, label %bb.nf, label %bb.ne

bb.ne:                                            ; preds = %.noexc620
  %i.byw = load ptr, ptr %i.btx, align 8, !tbaa !322
  %i.byx = getelementptr inbounds nuw [176 x i8], ptr %i.byw, i64 %i.bvh ; 2 uses
  %i.byy = getelementptr inbounds nuw i8, ptr %i.byx, i64 92
  store i32 0, ptr %i.byy, align 4, !tbaa !27
  %i.byz = getelementptr inbounds nuw i8, ptr %i.byx, i64 96
  %i.bza = trunc nuw nsw i64 %indvars.iv133.i to i32
  store i32 %i.bza, ptr %i.byz, align 4, !tbaa !27
  br label %bb.nf

bb.nf:                                            ; preds = %bb.ne, %.noexc620
  %indvars.iv.next134.i = add nuw nsw i64 %indvars.iv133.i, 1 ; 2 uses
  %i.bzb = load i32, ptr %i.bqd, align 8, !tbaa !751
  %i.bzc = sext i32 %i.bzb to i64
  %i.bzd = icmp slt i64 %indvars.iv.next134.i, %i.bzc
  br i1 %i.bzd, label %.lr.ph128.i, label %._crit_edge.i, !llvm.loop !600

._crit_edge.i:                                    ; preds = %bb.nf, %bb.mx
  %i.bze = load ptr, ptr %i.bsv, align 8, !tbaa !320 ; 2 uses
  %i.bzf = load ptr, ptr %i.bze, align 8, !tbaa !202
  %i.bzg = getelementptr inbounds nuw i8, ptr %i.bze, i64 8
  %i.bzh = load ptr, ptr %i.bzg, align 8, !tbaa !202
  %i.bzi = icmp ne ptr %i.bzf, %i.bzh
  %i.bzj = getelementptr inbounds nuw i8, ptr %i.bqd, i64 16
  %i.bzk = zext i1 %i.bzi to i8
  store i8 %i.bzk, ptr %i.bzj, align 8, !tbaa !756
  br label %.loopexit.i579

.preheader.i:                                     ; preds = %.noexc627, %.preheader123.i
  %i.bzl = load i32, ptr %i.bqi, align 4, !tbaa !750
  %i.bzm = icmp sgt i32 %i.bzl, 0
  br i1 %i.bzm, label %.lr.ph126.i, label %.loopexit.i579

.lr.ph126.i:                                      ; preds = %.preheader.i
  %i.bzn = icmp samesign ugt i32 %2, 106
  %i.bzo = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.bzp = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.bzq = icmp samesign ugt i32 %2, 109
  %i.bzr = icmp samesign ugt i32 %2, 123
  br label %bb.nm

.lr.ph.i580:                                      ; preds = %.preheader123.i, %.noexc627
  %indvars.iv.i581 = phi i64 [ %indvars.iv.next.i582, %.noexc627 ], [ 0, %.preheader123.i ] ; 2 uses
  %i.bzs = load ptr, ptr %i.bsv, align 8, !tbaa !320
  %i.bzt = getelementptr inbounds nuw [56 x i8], ptr %i.bzs, i64 %indvars.iv.i581 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #26
  %i.bzu = getelementptr inbounds nuw i8, ptr %i.bzt, i64 8 ; 3 uses
  %i.bzv = load ptr, ptr %i.bzu, align 8, !tbaa !208
  %i.bzw = load ptr, ptr %i.bzt, align 8, !tbaa !209
  %i.bzx = ptrtoint ptr %i.bzv to i64
  %i.bzy = ptrtoint ptr %i.bzw to i64
  %i.bzz = sub i64 %i.bzx, %i.bzy
  %i.caa = lshr exact i64 %i.bzz, 2
  %i.cab = trunc i64 %i.caa to i32
  store i32 %i.cab, ptr %i.s, align 4, !tbaa !27
  %i.cac = load ptr, ptr %0, align 8, !tbaa !33
  %i.cad = getelementptr inbounds nuw i8, ptr %i.cac, i64 56
  %i.cae = load ptr, ptr %i.cad, align 8
  invoke void %i.cae(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.s)
          to label %.noexc621 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc621:                                        ; preds = %.lr.ph.i580
  %i.caf = load i32, ptr %i.s, align 4, !tbaa !27 ; 4 uses
  %i.cag = sext i32 %i.caf to i64                 ; 4 uses
  %i.cah = load ptr, ptr %i.bzu, align 8, !tbaa !208 ; 2 uses
  %i.cai = load ptr, ptr %i.bzt, align 8, !tbaa !209 ; 5 uses
  %i.caj = ptrtoint ptr %i.cah to i64
  %i.cak = ptrtoint ptr %i.cai to i64
  %i.cal = sub i64 %i.caj, %i.cak
  %i.cam = ashr exact i64 %i.cal, 2               ; 3 uses
  %i.can = icmp ult i64 %i.cam, %i.cag
  br i1 %i.can, label %bb.ng, label %bb.nh

bb.ng:                                            ; preds = %.noexc621
  %i.cao = sub nuw nsw i64 %i.cag, %i.cam
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bzt, i64 noundef %i.cao)
          to label %.noexc622 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc622:                                        ; preds = %bb.ng
  %.pre.i106.i = load ptr, ptr %i.bzt, align 8, !tbaa !209
  %.pre19.i.i = load i32, ptr %i.s, align 4, !tbaa !27
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i94.i

bb.nh:                                            ; preds = %.noexc621
  %i.cap = icmp ugt i64 %i.cam, %i.cag
  br i1 %i.cap, label %bb.ni, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i94.i

bb.ni:                                            ; preds = %bb.nh
  %i.caq = getelementptr inbounds nuw [4 x i8], ptr %i.cai, i64 %i.cag ; 2 uses
  %.not.i.i.i104.i = icmp eq ptr %i.cah, %i.caq
  br i1 %.not.i.i.i104.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i94.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i105.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i105.i: ; preds = %bb.ni
  store ptr %i.caq, ptr %i.bzu, align 8, !tbaa !208
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i94.i

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i94.i:         ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i105.i, %bb.ni, %bb.nh, %.noexc622
  %i.car = phi i32 [ %.pre19.i.i, %.noexc622 ], [ %i.caf, %bb.nh ], [ %i.caf, %bb.ni ], [ %i.caf, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i105.i ] ; 2 uses
  %i.cas = phi ptr [ %.pre.i106.i, %.noexc622 ], [ %i.cai, %bb.nh ], [ %i.cai, %bb.ni ], [ %i.cai, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i105.i ]
  %i.cat = icmp sgt i32 %i.car, 0
  br i1 %i.cat, label %.lr.ph.preheader.i.i98.i, label %_ZN3gmx11ISerializer10doIntArrayEPii.exit.i95.i

.lr.ph.preheader.i.i98.i:                         ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i94.i
  %wide.trip.count.i.i99.i = zext nneg i32 %i.car to i64
  br label %.lr.ph.i.i100.i

.lr.ph.i.i100.i:                                  ; preds = %.noexc623, %.lr.ph.preheader.i.i98.i
  %indvars.iv.i.i101.i = phi i64 [ 0, %.lr.ph.preheader.i.i98.i ], [ %indvars.iv.next.i.i102.i, %.noexc623 ] ; 2 uses
  %i.cau = getelementptr inbounds nuw [4 x i8], ptr %i.cas, i64 %indvars.iv.i.i101.i
  %i.cav = load ptr, ptr %0, align 8, !tbaa !33
  %i.caw = getelementptr inbounds nuw i8, ptr %i.cav, i64 56
  %i.cax = load ptr, ptr %i.caw, align 8
  invoke void %i.cax(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.cau)
          to label %.noexc623 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc623:                                        ; preds = %.lr.ph.i.i100.i
  %indvars.iv.next.i.i102.i = add nuw nsw i64 %indvars.iv.i.i101.i, 1 ; 2 uses
  %exitcond.not.i.i103.i = icmp eq i64 %indvars.iv.next.i.i102.i, %wide.trip.count.i.i99.i
  br i1 %exitcond.not.i.i103.i, label %_ZN3gmx11ISerializer10doIntArrayEPii.exit.i95.i, label %.lr.ph.i.i100.i, !llvm.loop !3

_ZN3gmx11ISerializer10doIntArrayEPii.exit.i95.i:  ; preds = %.noexc623, %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i94.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #26
  %i.cay = getelementptr inbounds nuw i8, ptr %i.bzt, i64 24 ; 4 uses
  %i.caz = getelementptr inbounds nuw i8, ptr %i.bzt, i64 32 ; 3 uses
  %i.cba = load ptr, ptr %i.caz, align 8, !tbaa !286
  %i.cbb = load ptr, ptr %i.cay, align 8, !tbaa !284
  %i.cbc = ptrtoint ptr %i.cba to i64
  %i.cbd = ptrtoint ptr %i.cbb to i64
  %i.cbe = sub i64 %i.cbc, %i.cbd
  %i.cbf = lshr exact i64 %i.cbe, 2
  %i.cbg = trunc i64 %i.cbf to i32
  store i32 %i.cbg, ptr %i.t, align 4, !tbaa !27
  %i.cbh = load ptr, ptr %0, align 8, !tbaa !33
  %i.cbi = getelementptr inbounds nuw i8, ptr %i.cbh, i64 56
  %i.cbj = load ptr, ptr %i.cbi, align 8
  invoke void %i.cbj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.t)
          to label %.noexc624 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc624:                                        ; preds = %_ZN3gmx11ISerializer10doIntArrayEPii.exit.i95.i
  %i.cbk = load i32, ptr %i.t, align 4, !tbaa !27 ; 4 uses
  %i.cbl = sext i32 %i.cbk to i64                 ; 4 uses
  %i.cbm = load ptr, ptr %i.caz, align 8, !tbaa !286 ; 2 uses
  %i.cbn = load ptr, ptr %i.cay, align 8, !tbaa !284 ; 5 uses
  %i.cbo = ptrtoint ptr %i.cbm to i64
  %i.cbp = ptrtoint ptr %i.cbn to i64
  %i.cbq = sub i64 %i.cbo, %i.cbp
  %i.cbr = ashr exact i64 %i.cbq, 2               ; 3 uses
  %i.cbs = icmp ult i64 %i.cbr, %i.cbl
  br i1 %i.cbs, label %bb.nj, label %bb.nk

bb.nj:                                            ; preds = %.noexc624
  %i.cbt = sub nuw nsw i64 %i.cbl, %i.cbr
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cay, i64 noundef %i.cbt)
          to label %.noexc625 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc625:                                        ; preds = %bb.nj
  %.pre20.i.i = load ptr, ptr %i.cay, align 8, !tbaa !284
  %.pre21.i.i = load i32, ptr %i.t, align 4, !tbaa !27
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i96.i

bb.nk:                                            ; preds = %.noexc624
  %i.cbu = icmp ugt i64 %i.cbr, %i.cbl
  br i1 %i.cbu, label %bb.nl, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i96.i

bb.nl:                                            ; preds = %bb.nk
  %i.cbv = getelementptr inbounds nuw [4 x i8], ptr %i.cbn, i64 %i.cbl ; 2 uses
  %.not.i.i12.i.i = icmp eq ptr %i.cbm, %i.cbv
  br i1 %.not.i.i12.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i96.i, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i97.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i97.i:  ; preds = %bb.nl
  store ptr %i.cbv, ptr %i.caz, align 8, !tbaa !286
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i96.i

_ZNSt6vectorIfSaIfEE6resizeEm.exit.i96.i:         ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i97.i, %bb.nl, %bb.nk, %.noexc625
  %i.cbw = phi i32 [ %.pre21.i.i, %.noexc625 ], [ %i.cbk, %bb.nk ], [ %i.cbk, %bb.nl ], [ %i.cbk, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i97.i ] ; 2 uses
  %i.cbx = phi ptr [ %.pre20.i.i, %.noexc625 ], [ %i.cbn, %bb.nk ], [ %i.cbn, %bb.nl ], [ %i.cbn, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i97.i ]
  %i.cby = icmp sgt i32 %i.cbw, 0
  br i1 %i.cby, label %.lr.ph.preheader.i13.i.i, label %_ZL13do_pull_groupPN3gmx11ISerializerEP12t_pull_group.exit.i

.lr.ph.preheader.i13.i.i:                         ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i96.i
  %wide.trip.count.i14.i.i = zext nneg i32 %i.cbw to i64
  br label %.lr.ph.i15.i.i

.lr.ph.i15.i.i:                                   ; preds = %.noexc626, %.lr.ph.preheader.i13.i.i
  %indvars.iv.i16.i.i = phi i64 [ 0, %.lr.ph.preheader.i13.i.i ], [ %indvars.iv.next.i17.i.i, %.noexc626 ] ; 2 uses
  %i.cbz = getelementptr inbounds nuw [4 x i8], ptr %i.cbx, i64 %indvars.iv.i16.i.i
  %i.cca = load ptr, ptr %0, align 8, !tbaa !33
  %i.ccb = getelementptr inbounds nuw i8, ptr %i.cca, i64 96
  %i.ccc = load ptr, ptr %i.ccb, align 8
  invoke void %i.ccc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.cbz)
          to label %.noexc626 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc626:                                        ; preds = %.lr.ph.i15.i.i
  %indvars.iv.next.i17.i.i = add nuw nsw i64 %indvars.iv.i16.i.i, 1 ; 2 uses
  %exitcond.not.i18.i.i = icmp eq i64 %indvars.iv.next.i17.i.i, %wide.trip.count.i14.i.i
  br i1 %exitcond.not.i18.i.i, label %_ZL13do_pull_groupPN3gmx11ISerializerEP12t_pull_group.exit.i, label %.lr.ph.i15.i.i, !llvm.loop !1

_ZL13do_pull_groupPN3gmx11ISerializerEP12t_pull_group.exit.i: ; preds = %.noexc626, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i96.i
  %i.ccd = getelementptr inbounds nuw i8, ptr %i.bzt, i64 48
  %i.cce = load ptr, ptr %0, align 8, !tbaa !33
  %i.ccf = getelementptr inbounds nuw i8, ptr %i.cce, i64 56
  %i.ccg = load ptr, ptr %i.ccf, align 8
  invoke void %i.ccg(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ccd)
          to label %.noexc627 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc627:                                        ; preds = %_ZL13do_pull_groupPN3gmx11ISerializerEP12t_pull_group.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #26
  %indvars.iv.next.i582 = add nuw nsw i64 %indvars.iv.i581, 1 ; 2 uses
  %i.cch = load i32, ptr %i.bqd, align 8, !tbaa !751
  %i.cci = sext i32 %i.cch to i64
  %i.ccj = icmp slt i64 %indvars.iv.next.i582, %i.cci
  br i1 %i.ccj, label %.lr.ph.i580, label %.preheader.i, !llvm.loop !601

bb.nm:                                            ; preds = %bb.od, %.lr.ph126.i
  %indvars.iv130.i = phi i64 [ 0, %.lr.ph126.i ], [ %indvars.iv.next131.i, %bb.od ] ; 4 uses
  %i.cck = load ptr, ptr %i.btx, align 8, !tbaa !322
  %i.ccl = getelementptr inbounds nuw [176 x i8], ptr %i.cck, i64 %indvars.iv130.i ; 32 uses
  br i1 %i.bzn, label %bb.nn, label %bb.nw

bb.nn:                                            ; preds = %bb.nm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #26
  %i.ccm = load i32, ptr %i.ccl, align 4, !tbaa !757
  store i32 %i.ccm, ptr %i.r, align 4, !tbaa !27
  %i.ccn = load ptr, ptr %0, align 8, !tbaa !33
  %i.cco = getelementptr inbounds nuw i8, ptr %i.ccn, i64 56
  %i.ccp = load ptr, ptr %i.cco, align 8
  invoke void %i.ccp(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.r)
          to label %.noexc628 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc628:                                        ; preds = %bb.nn
  %i.ccq = load i32, ptr %i.r, align 4, !tbaa !27 ; 2 uses
  store i32 %i.ccq, ptr %i.ccl, align 4, !tbaa !757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #26
  br i1 %i.bzq, label %bb.no, label %bb.nq

bb.no:                                            ; preds = %.noexc628
  %i.ccr = icmp eq i32 %i.ccq, 5
  %i.ccs = getelementptr inbounds nuw i8, ptr %i.ccl, i64 8 ; 2 uses
  br i1 %i.ccr, label %bb.np, label %.noexc629.sink.split

bb.np:                                            ; preds = %bb.no
  %i.cct = load ptr, ptr %0, align 8, !tbaa !33
  %i.ccu = getelementptr inbounds nuw i8, ptr %i.cct, i64 136
  %i.ccv = load ptr, ptr %i.ccu, align 8
  invoke void %i.ccv(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ccs)
          to label %.noexc629 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

bb.nq:                                            ; preds = %.noexc628
  %i.ccw = load ptr, ptr %0, align 8, !tbaa !33
  %i.ccx = getelementptr inbounds nuw i8, ptr %i.ccw, i64 16
  %i.ccy = load ptr, ptr %i.ccx, align 8
  %i.ccz = invoke noundef zeroext i1 %i.ccy(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %.noexc630 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc630:                                        ; preds = %bb.nq
  br i1 %i.ccz, label %bb.nr, label %.noexc629

bb.nr:                                            ; preds = %.noexc630
  %i.cda = getelementptr inbounds nuw i8, ptr %i.ccl, i64 8
  br label %.noexc629.sink.split

.noexc629.sink.split:                             ; preds = %bb.no, %bb.nr
  %.sink.in = phi ptr [ %i.cda, %bb.nr ], [ %i.ccs, %bb.no ]
  %i.cdb = getelementptr inbounds nuw i8, ptr %i.ccl, i64 16
  store i64 0, ptr %i.cdb, align 8, !tbaa !31
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !25
  store i8 0, ptr %.sink, align 1, !tbaa !26
  br label %.noexc629

.noexc629:                                        ; preds = %.noexc629.sink.split, %bb.np, %.noexc630
  %i.cdc = getelementptr inbounds nuw i8, ptr %i.ccl, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #26
  %i.cdd = load i32, ptr %i.cdc, align 4, !tbaa !758
  store i32 %i.cdd, ptr %i.q, align 4, !tbaa !27
  %i.cde = load ptr, ptr %0, align 8, !tbaa !33
  %i.cdf = getelementptr inbounds nuw i8, ptr %i.cde, i64 56
  %i.cdg = load ptr, ptr %i.cdf, align 8
  invoke void %i.cdg(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.q)
          to label %.noexc631 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc631:                                        ; preds = %.noexc629
  %i.cdh = load i32, ptr %i.q, align 4, !tbaa !27
  store i32 %i.cdh, ptr %i.cdc, align 4, !tbaa !758
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #26
  %i.cdi = getelementptr inbounds nuw i8, ptr %i.ccl, i64 88 ; 4 uses
  %i.cdj = load ptr, ptr %0, align 8, !tbaa !33
  %i.cdk = getelementptr inbounds nuw i8, ptr %i.cdj, i64 56
  %i.cdl = load ptr, ptr %i.cdk, align 8
  invoke void %i.cdl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.cdi)
          to label %.noexc632 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc632:                                        ; preds = %.noexc631
  %i.cdm = load i32, ptr %i.cdi, align 8, !tbaa !759 ; 4 uses
  %i.cdn = icmp slt i32 %i.cdm, 7
  br i1 %i.cdn, label %bb.ns, label %bb.nt

bb.ns:                                            ; preds = %.noexc632
  %i.cdo = getelementptr inbounds nuw i8, ptr %i.ccl, i64 92
  %i.cdp = icmp sgt i32 %i.cdm, 0
  br i1 %i.cdp, label %.lr.ph.preheader.i.i108.i, label %_ZN3gmx11ISerializer10doIntArrayEPii.exit.i107.i

.lr.ph.preheader.i.i108.i:                        ; preds = %bb.ns
  %wide.trip.count.i.i109.i = zext nneg i32 %i.cdm to i64
  br label %.lr.ph.i.i110.i

.lr.ph.i.i110.i:                                  ; preds = %.noexc633, %.lr.ph.preheader.i.i108.i
  %indvars.iv.i.i111.i = phi i64 [ 0, %.lr.ph.preheader.i.i108.i ], [ %indvars.iv.next.i.i112.i, %.noexc633 ] ; 2 uses
  %i.cdq = getelementptr inbounds nuw [4 x i8], ptr %i.cdo, i64 %indvars.iv.i.i111.i
  %i.cdr = load ptr, ptr %0, align 8, !tbaa !33
  %i.cds = getelementptr inbounds nuw i8, ptr %i.cdr, i64 56
  %i.cdt = load ptr, ptr %i.cds, align 8
  invoke void %i.cdt(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.cdq)
          to label %.noexc633 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc633:                                        ; preds = %.lr.ph.i.i110.i
  %indvars.iv.next.i.i112.i = add nuw nsw i64 %indvars.iv.i.i111.i, 1 ; 2 uses
  %exitcond.not.i.i113.i = icmp eq i64 %indvars.iv.next.i.i112.i, %wide.trip.count.i.i109.i
  br i1 %exitcond.not.i.i113.i, label %_ZN3gmx11ISerializer10doIntArrayEPii.exit.i107.i, label %.lr.ph.i.i110.i, !llvm.loop !3

bb.nt:                                            ; preds = %.noexc632
  %i.cdu = zext nneg i32 %i.cdm to i64
  %i.cdv = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.12, i32 noundef 402, i64 noundef range(i64 -2147483648, 2147483648) %i.cdu, i64 noundef 4)
          to label %.noexc634 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc634:                                        ; preds = %bb.nt
  %i.cdw = load i32, ptr %i.cdi, align 8, !tbaa !759 ; 2 uses
  %i.cdx = icmp sgt i32 %i.cdw, 0
  br i1 %i.cdx, label %.lr.ph.preheader.i70.i.i, label %_ZN3gmx11ISerializer10doIntArrayEPii.exit76.i.i

.lr.ph.preheader.i70.i.i:                         ; preds = %.noexc634
  %wide.trip.count.i71.i.i = zext nneg i32 %i.cdw to i64
  br label %.lr.ph.i72.i.i

.lr.ph.i72.i.i:                                   ; preds = %.noexc635, %.lr.ph.preheader.i70.i.i
  %indvars.iv.i73.i.i = phi i64 [ 0, %.lr.ph.preheader.i70.i.i ], [ %indvars.iv.next.i74.i.i, %.noexc635 ] ; 2 uses
  %i.cdy = getelementptr inbounds nuw [4 x i8], ptr %i.cdv, i64 %indvars.iv.i73.i.i
  %i.cdz = load ptr, ptr %0, align 8, !tbaa !33
  %i.cea = getelementptr inbounds nuw i8, ptr %i.cdz, i64 56
  %i.ceb = load ptr, ptr %i.cea, align 8
  invoke void %i.ceb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.cdy)
          to label %.noexc635 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc635:                                        ; preds = %.lr.ph.i72.i.i
  %indvars.iv.next.i74.i.i = add nuw nsw i64 %indvars.iv.i73.i.i, 1 ; 2 uses
  %exitcond.not.i75.i.i = icmp eq i64 %indvars.iv.next.i74.i.i, %wide.trip.count.i71.i.i
  br i1 %exitcond.not.i75.i.i, label %_ZN3gmx11ISerializer10doIntArrayEPii.exit76.i.i, label %.lr.ph.i72.i.i, !llvm.loop !3

_ZN3gmx11ISerializer10doIntArrayEPii.exit76.i.i:  ; preds = %.noexc635, %.noexc634
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.12, i32 noundef 404, ptr noundef %i.cdv)
          to label %.noexc636 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc636:                                        ; preds = %_ZN3gmx11ISerializer10doIntArrayEPii.exit76.i.i
  store i32 0, ptr %i.cdi, align 8, !tbaa !759
  br label %_ZN3gmx11ISerializer10doIntArrayEPii.exit.i107.i

_ZN3gmx11ISerializer10doIntArrayEPii.exit.i107.i: ; preds = %.noexc633, %.noexc636, %bb.ns
  %i.cec = getelementptr inbounds nuw i8, ptr %i.ccl, i64 116
  %i.ced = load ptr, ptr %0, align 8, !tbaa !33
  %i.cee = getelementptr inbounds nuw i8, ptr %i.ced, i64 104
  %i.cef = load ptr, ptr %i.cee, align 8
  invoke void %i.cef(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.cec)
          to label %.noexc637 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc637:                                        ; preds = %_ZN3gmx11ISerializer10doIntArrayEPii.exit.i107.i
  br i1 %i.bzr, label %.noexc645.invoke, label %bb.nu

bb.nu:                                            ; preds = %.noexc637
  %i.ceg = load ptr, ptr %0, align 8, !tbaa !33
  %i.ceh = getelementptr inbounds nuw i8, ptr %i.ceg, i64 16
  %i.cei = load ptr, ptr %i.ceh, align 8
  %i.cej = invoke noundef zeroext i1 %i.cei(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %.noexc639 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc639:                                        ; preds = %bb.nu
  br i1 %i.cej, label %bb.nv, label %.noexc638

bb.nv:                                            ; preds = %.noexc639
  %i.cek = getelementptr inbounds nuw i8, ptr %i.ccl, i64 48
  %i.cel = getelementptr inbounds nuw i8, ptr %i.ccl, i64 56
  store i64 0, ptr %i.cel, align 8, !tbaa !31
  %i.cem = load ptr, ptr %i.cek, align 8, !tbaa !25
  store i8 0, ptr %i.cem, align 1, !tbaa !26
  br label %.noexc638

bb.nw:                                            ; preds = %bb.nm
  %i.cen = getelementptr inbounds nuw i8, ptr %i.ccl, i64 88 ; 3 uses
  store i32 2, ptr %i.cen, align 8, !tbaa !759
  %i.ceo = getelementptr inbounds nuw i8, ptr %i.ccl, i64 92
  %i.cep = load ptr, ptr %0, align 8, !tbaa !33
  %i.ceq = getelementptr inbounds nuw i8, ptr %i.cep, i64 56
  %i.cer = load ptr, ptr %i.ceq, align 8
  invoke void %i.cer(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ceo)
          to label %.noexc640 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc640:                                        ; preds = %bb.nw
  %i.ces = getelementptr inbounds nuw i8, ptr %i.ccl, i64 96
  %i.cet = load ptr, ptr %0, align 8, !tbaa !33
  %i.ceu = getelementptr inbounds nuw i8, ptr %i.cet, i64 56
  %i.cev = load ptr, ptr %i.ceu, align 8
  invoke void %i.cev(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ces)
          to label %.noexc641 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc641:                                        ; preds = %.noexc640
  br i1 %i.bpg, label %bb.nx, label %bb.nz

bb.nx:                                            ; preds = %.noexc641
  %i.cew = getelementptr inbounds nuw i8, ptr %i.ccl, i64 40 ; 3 uses
  %i.cex = load i32, ptr %i.cew, align 8, !tbaa !329
  %i.cey = icmp eq i32 %i.cex, 4
  %i.cez = select i1 %i.cey, i32 4, i32 2
  store i32 %i.cez, ptr %i.cen, align 8, !tbaa !759
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #26
  %i.cfa = load i32, ptr %i.ccl, align 8, !tbaa !757
  store i32 %i.cfa, ptr %i.p, align 4, !tbaa !27
  %i.cfb = load ptr, ptr %0, align 8, !tbaa !33
  %i.cfc = getelementptr inbounds nuw i8, ptr %i.cfb, i64 56
  %i.cfd = load ptr, ptr %i.cfc, align 8
  invoke void %i.cfd(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.p)
          to label %.noexc642 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc642:                                        ; preds = %bb.nx
  %i.cfe = load i32, ptr %i.p, align 4, !tbaa !27
  store i32 %i.cfe, ptr %i.ccl, align 8, !tbaa !757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #26
  %i.cff = load i32, ptr %i.cew, align 8, !tbaa !758
  store i32 %i.cff, ptr %i.o, align 4, !tbaa !27
  %i.cfg = load ptr, ptr %0, align 8, !tbaa !33
  %i.cfh = getelementptr inbounds nuw i8, ptr %i.cfg, i64 56
  %i.cfi = load ptr, ptr %i.cfh, align 8
  invoke void %i.cfi(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.o)
          to label %.noexc643 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc643:                                        ; preds = %.noexc642
  %i.cfj = load i32, ptr %i.o, align 4, !tbaa !27
  store i32 %i.cfj, ptr %i.cew, align 8, !tbaa !758
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #26
  %i.cfk = load i32, ptr %i.cen, align 8, !tbaa !759
  %i.cfl = icmp eq i32 %i.cfk, 4
  br i1 %i.cfl, label %bb.ny, label %.noexc645.invoke

bb.ny:                                            ; preds = %.noexc643
  %i.cfm = getelementptr inbounds nuw i8, ptr %i.ccl, i64 100
  %i.cfn = load ptr, ptr %0, align 8, !tbaa !33
  %i.cfo = getelementptr inbounds nuw i8, ptr %i.cfn, i64 56
  %i.cfp = load ptr, ptr %i.cfo, align 8
  invoke void %i.cfp(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.cfm)
          to label %.noexc644 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc644:                                        ; preds = %bb.ny
  %i.cfq = getelementptr inbounds nuw i8, ptr %i.ccl, i64 104
  %i.cfr = load ptr, ptr %0, align 8, !tbaa !33
  %i.cfs = getelementptr inbounds nuw i8, ptr %i.cfr, i64 56
  %i.cft = load ptr, ptr %i.cfs, align 8
  invoke void %i.cft(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.cfq)
          to label %.noexc645.invoke unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc645.invoke:                                 ; preds = %.noexc643, %.noexc644, %.noexc637
  %.sink2532 = phi i64 [ 48, %.noexc637 ], [ 116, %.noexc644 ], [ 116, %.noexc643 ]
  %.sink2531 = phi i64 [ 136, %.noexc637 ], [ 104, %.noexc644 ], [ 104, %.noexc643 ]
  %i.cfu = getelementptr inbounds nuw i8, ptr %i.ccl, i64 %.sink2532
  %i.cfv = load ptr, ptr %0, align 8, !tbaa !33
  %i.cfw = getelementptr inbounds nuw i8, ptr %i.cfv, i64 %.sink2531
  %i.cfx = load ptr, ptr %i.cfw, align 8
  invoke void %i.cfx(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.cfu)
          to label %.noexc638 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

bb.nz:                                            ; preds = %.noexc641
  store i32 %.013552298, ptr %i.ccl, align 8, !tbaa !330
  %i.cfy = getelementptr inbounds nuw i8, ptr %i.ccl, i64 40
  store i32 %.0120.i, ptr %i.cfy, align 8, !tbaa !329
  %i.cfz = getelementptr inbounds nuw i8, ptr %i.ccl, i64 116
  %i.cga = load i32, ptr %i.x, align 4, !tbaa !27
  store i32 %i.cga, ptr %i.cfz, align 4, !tbaa !27
  %i.cgb = load i32, ptr %i.bzo, align 4, !tbaa !27
  %i.cgc = getelementptr inbounds nuw i8, ptr %i.ccl, i64 120
  store i32 %i.cgb, ptr %i.cgc, align 8, !tbaa !27
  %i.cgd = load i32, ptr %i.bzp, align 4, !tbaa !27
  %i.cge = getelementptr inbounds nuw i8, ptr %i.ccl, i64 124
  store i32 %i.cgd, ptr %i.cge, align 4, !tbaa !27
  br label %.noexc638

.noexc638:                                        ; preds = %.noexc645.invoke, %bb.nz, %bb.nv, %.noexc639
  %i.cgf = getelementptr inbounds nuw i8, ptr %i.ccl, i64 128
  %i.cgg = load ptr, ptr %0, align 8, !tbaa !33
  %i.cgh = getelementptr inbounds nuw i8, ptr %i.cgg, i64 128
  %i.cgi = load ptr, ptr %i.cgh, align 8
  invoke void %i.cgi(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.cgf)
          to label %.noexc647 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc647:                                        ; preds = %.noexc638
  %i.cgj = getelementptr inbounds nuw i8, ptr %i.ccl, i64 140
  %i.cgk = load ptr, ptr %0, align 8, !tbaa !33
  %i.cgl = getelementptr inbounds nuw i8, ptr %i.cgk, i64 128
  %i.cgm = load ptr, ptr %i.cgl, align 8
  invoke void %i.cgm(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.cgj)
          to label %.noexc648 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc648:                                        ; preds = %.noexc647
  %i.cgn = getelementptr inbounds nuw i8, ptr %i.ccl, i64 152 ; 2 uses
  br i1 %i.bpg, label %bb.oa, label %bb.ob

bb.oa:                                            ; preds = %.noexc648
  %i.cgo = load ptr, ptr %0, align 8, !tbaa !33
  %i.cgp = getelementptr inbounds nuw i8, ptr %i.cgo, i64 24
  %i.cgq = load ptr, ptr %i.cgp, align 8
  invoke void %i.cgq(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.cgn)
          to label %_ZL13do_pull_coordPN3gmx11ISerializerEP12t_pull_coordi16PullingAlgorithm17PullGroupGeometryPi.exit.i unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

bb.ob:                                            ; preds = %.noexc648
  store i8 0, ptr %i.cgn, align 8, !tbaa !760
  br label %_ZL13do_pull_coordPN3gmx11ISerializerEP12t_pull_coordi16PullingAlgorithm17PullGroupGeometryPi.exit.i

_ZL13do_pull_coordPN3gmx11ISerializerEP12t_pull_coordi16PullingAlgorithm17PullGroupGeometryPi.exit.i: ; preds = %bb.oa, %bb.ob
  %i.cgr = getelementptr inbounds nuw i8, ptr %i.ccl, i64 156
  %i.cgs = load ptr, ptr %0, align 8, !tbaa !33
  %i.cgt = getelementptr inbounds nuw i8, ptr %i.cgs, i64 96
  %i.cgu = load ptr, ptr %i.cgt, align 8
  invoke void %i.cgu(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.cgr)
          to label %.noexc650 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc650:                                        ; preds = %_ZL13do_pull_coordPN3gmx11ISerializerEP12t_pull_coordi16PullingAlgorithm17PullGroupGeometryPi.exit.i
  %i.cgv = getelementptr inbounds nuw i8, ptr %i.ccl, i64 160
  %i.cgw = load ptr, ptr %0, align 8, !tbaa !33
  %i.cgx = getelementptr inbounds nuw i8, ptr %i.cgw, i64 96
  %i.cgy = load ptr, ptr %i.cgx, align 8
  invoke void %i.cgy(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.cgv)
          to label %.noexc651 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc651:                                        ; preds = %.noexc650
  %i.cgz = getelementptr inbounds nuw i8, ptr %i.ccl, i64 164
  %i.cha = load ptr, ptr %0, align 8, !tbaa !33
  %i.chb = getelementptr inbounds nuw i8, ptr %i.cha, i64 96
  %i.chc = load ptr, ptr %i.chb, align 8
  invoke void %i.chc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.cgz)
          to label %.noexc652 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc652:                                        ; preds = %.noexc651
  %i.chd = getelementptr inbounds nuw i8, ptr %i.ccl, i64 168
  %i.che = load ptr, ptr %0, align 8, !tbaa !33
  %i.chf = getelementptr inbounds nuw i8, ptr %i.che, i64 96
  %i.chg = load ptr, ptr %i.chf, align 8
  invoke void %i.chg(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.chd)
          to label %.noexc653 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc653:                                        ; preds = %.noexc652
  %i.chh = load ptr, ptr %0, align 8, !tbaa !33
  %i.chi = getelementptr inbounds nuw i8, ptr %i.chh, i64 16
  %i.chj = load ptr, ptr %i.chi, align 8
  %i.chk = invoke noundef zeroext i1 %i.chj(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %.noexc654 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !599

.noexc654:                                        ; preds = %.noexc653
  br i1 %i.chk, label %bb.oc, label %bb.od

bb.oc:                                            ; preds = %.noexc654
  %i.chl = load ptr, ptr %i.btx, align 8, !tbaa !322
  %i.chm = getelementptr inbounds nuw [176 x i8], ptr %i.chl, i64 %indvars.iv130.i
  %i.chn = getelementptr inbounds nuw i8, ptr %i.chm, i64 172
  %i.cho = trunc nuw nsw i64 %indvars.iv130.i to i32
  store i32 %i.cho, ptr %i.chn, align 4, !tbaa !331
  br label %bb.od

bb.od:                                            ; preds = %bb.oc, %.noexc654
  %indvars.iv.next131.i = add nuw nsw i64 %indvars.iv130.i, 1 ; 2 uses
  %i.chp = load i32, ptr %i.bqi, align 4, !tbaa !750
  %i.chq = sext i32 %i.chp to i64
  %i.chr = icmp slt i64 %indvars.iv.next131.i, %i.chq
  br i1 %i.chr, label %bb.nm, label %.loopexit.i579, !llvm.loop !602

.loopexit.i579:                                   ; preds = %bb.od, %.preheader.i, %._crit_edge.i
  %i.chs = icmp sgt i32 %2, 115
  br i1 %i.chs, label %bb.oe, label %_ZL7do_pullPN3gmx11ISerializerEP13pull_params_ti16PullingAlgorithm.exit

bb.oe:                                            ; preds = %.loopexit.i579
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #26
  %i.cht = getelementptr inbounds nuw i8, ptr %i.bqd, i64 28 ; 2 uses
  %i.chu = load i8, ptr %i.cht, align 4, !tbaa !761, !range !40, !noundef !41
  store i8 %i.chu, ptr %i.aa, align 1, !tbaa !105
  %i.chv = load ptr, ptr %0, align 8, !tbaa !33
  %i.chw = getelementptr inbounds nuw i8, ptr %i.chv, i64 24
  %i.chx = load ptr, ptr %i.chw, align 8
  invoke void %i.chx(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.aa)
          to label %.noexc655 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !599

.noexc655:                                        ; preds = %bb.oe
  %i.chy = load i8, ptr %i.aa, align 1, !tbaa !105, !range !40, !noundef !41
  store i8 %i.chy, ptr %i.cht, align 4, !tbaa !761
  %i.chz = getelementptr inbounds nuw i8, ptr %i.bqd, i64 29 ; 2 uses
  %i.cia = load i8, ptr %i.chz, align 1, !tbaa !762, !range !40, !noundef !41
  store i8 %i.cia, ptr %i.aa, align 1, !tbaa !105
  %i.cib = load ptr, ptr %0, align 8, !tbaa !33
  %i.cic = getelementptr inbounds nuw i8, ptr %i.cib, i64 24
  %i.cid = load ptr, ptr %i.cic, align 8
  invoke void %i.cid(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.aa)
          to label %.noexc656 unwind label %.loopexit.split-lp1442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !599

.noexc656:                                        ; preds = %.noexc655
  %i.cie = load i8, ptr %i.aa, align 1, !tbaa !105, !range !40, !noundef !41
  store i8 %i.cie, ptr %i.chz, align 1, !tbaa !762
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #26
  br label %_ZL7do_pullPN3gmx11ISerializerEP13pull_params_ti16PullingAlgorithm.exit

_ZL7do_pullPN3gmx11ISerializerEP13pull_params_ti16PullingAlgorithm.exit: ; preds = %.loopexit.i579, %.noexc656
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #26
  br label %bb.of

bb.of:                                            ; preds = %._crit_edge1944, %_ZL7do_pullPN3gmx11ISerializerEP13pull_params_ti16PullingAlgorithm.exit
  %i.cif = icmp sgt i32 %2, 111
  br i1 %i.cif, label %bb.og, label %.thread2304

bb.og:                                            ; preds = %bb.of
  %i.cig = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 2 uses
  %i.cih = load ptr, ptr %0, align 8, !tbaa !33
  %i.cii = getelementptr inbounds nuw i8, ptr %i.cih, i64 24
  %i.cij = load ptr, ptr %i.cii, align 8
  invoke void %i.cij(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.cig)
          to label %bb.oh unwind label %.loopexit.split-lp1382.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.oh:                                            ; preds = %bb.og
  %i.cik = load i8, ptr %i.cig, align 8, !tbaa !763, !range !40, !noundef !41
  %i.cil = trunc nuw i8 %i.cik to i1
  br i1 %i.cil, label %bb.oi, label %_ZNSt10unique_ptrIN3gmx9AwhParamsESt14default_deleteIS1_EED2Ev.exit.thread

bb.oi:                                            ; preds = %bb.oh
  %i.cim = load ptr, ptr %0, align 8, !tbaa !33
  %i.cin = getelementptr inbounds nuw i8, ptr %i.cim, i64 16
  %i.cio = load ptr, ptr %i.cin, align 8
  %i.cip = invoke noundef zeroext i1 %i.cio(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.oj unwind label %.loopexit.split-lp1382.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.oj:                                            ; preds = %bb.oi
  br i1 %i.cip, label %bb.ok, label %bb.oq

bb.ok:                                            ; preds = %bb.oj
  %i.ciq = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #31
          to label %.noexc657 unwind label %bb.op ; 3 uses

.noexc657:                                        ; preds = %bb.ok
  %i.cir = icmp samesign ult i32 %2, 138
  %i.cis = icmp samesign ult i32 %2, 132
  %i.cit = icmp samesign ult i32 %2, 130
  invoke void @_ZN3gmx9AwhParamsC1EPNS_11ISerializerEbbb(ptr noundef nonnull align 8 dereferenceable(49) %i.ciq, ptr noundef nonnull %0, i1 noundef zeroext %i.cit, i1 noundef zeroext %i.cis, i1 noundef zeroext %i.cir)
          to label %_ZSt11make_uniqueIN3gmx9AwhParamsEJRPNS0_11ISerializerEbbbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.ol, !noalias !764

bb.ol:                                            ; preds = %.noexc657
  %i.ciu = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ciq, i64 noundef 56) #25, !noalias !764
  br label %.body

_ZSt11make_uniqueIN3gmx9AwhParamsEJRPNS0_11ISerializerEbbbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %.noexc657
  %i.civ = getelementptr inbounds nuw i8, ptr %1, i64 616 ; 2 uses
  %i.ciw = load ptr, ptr %i.civ, align 8, !tbaa !765 ; 6 uses
  store ptr %i.ciq, ptr %i.civ, align 8, !tbaa !765
  %.not.i.i.i.i660 = icmp eq ptr %i.ciw, null
  br i1 %.not.i.i.i.i660, label %_ZNSt10unique_ptrIN3gmx9AwhParamsESt14default_deleteIS1_EED2Ev.exit.thread, label %bb.om

bb.om:                                            ; preds = %_ZSt11make_uniqueIN3gmx9AwhParamsEJRPNS0_11ISerializerEbbbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.cix = load ptr, ptr %i.ciw, align 8, !tbaa !768 ; 3 uses
  %i.ciy = getelementptr inbounds nuw i8, ptr %i.ciw, i64 8
  %i.ciz = load ptr, ptr %i.ciy, align 8, !tbaa !769 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cix, %i.ciz
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN3gmx13AwhBiasParamsES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.om, %_ZSt8_DestroyIN3gmx13AwhBiasParamsEEvPT_.exit.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cjg, %_ZSt8_DestroyIN3gmx13AwhBiasParamsEEvPT_.exit.i.i.i.i.i.i.i.i.i ], [ %i.cix, %bb.om ] ; 3 uses
  %i.cja = load ptr, ptr %.05.i.i.i.i.i.i.i.i.i, align 8, !tbaa !772 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cja, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN3gmx13AwhBiasParamsEEvPT_.exit.i.i.i.i.i.i.i.i.i, label %bb.on

bb.on:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.cjb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i, i64 16
  %i.cjc = load ptr, ptr %i.cjb, align 8, !tbaa !773
  %i.cjd = ptrtoint ptr %i.cjc to i64
  %i.cje = ptrtoint ptr %i.cja to i64
  %i.cjf = sub i64 %i.cjd, %i.cje
  call void @_ZdlPvm(ptr noundef nonnull %i.cja, i64 noundef %i.cjf) #25
  br label %_ZSt8_DestroyIN3gmx13AwhBiasParamsEEvPT_.exit.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIN3gmx13AwhBiasParamsEEvPT_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.on, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.cjg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i, i64 104 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i661 = icmp eq ptr %i.cjg, %i.ciz
  br i1 %.not.i.i.i.i.i.i.i.i.i661, label %_ZSt8_DestroyIPN3gmx13AwhBiasParamsES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !605

_ZSt8_DestroyIPN3gmx13AwhBiasParamsES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN3gmx13AwhBiasParamsEEvPT_.exit.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i = load ptr, ptr %i.ciw, align 8, !tbaa !768
  br label %_ZSt8_DestroyIPN3gmx13AwhBiasParamsES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIPN3gmx13AwhBiasParamsES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN3gmx13AwhBiasParamsES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i, %bb.om
  %i.cjh = phi ptr [ %.pr.i.i.i.i.i.i.i, %_ZSt8_DestroyIPN3gmx13AwhBiasParamsES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i ], [ %i.cix, %bb.om ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.cjh, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN3gmx9AwhParamsEEclEPS1_.exit.i.i.i.i, label %bb.oo

bb.oo:                                            ; preds = %_ZSt8_DestroyIPN3gmx13AwhBiasParamsES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i
  %i.cji = getelementptr inbounds nuw i8, ptr %i.ciw, i64 16
  %i.cjj = load ptr, ptr %i.cji, align 8, !tbaa !774
  %i.cjk = ptrtoint ptr %i.cjj to i64
  %i.cjl = ptrtoint ptr %i.cjh to i64
  %i.cjm = sub i64 %i.cjk, %i.cjl
  call void @_ZdlPvm(ptr noundef nonnull %i.cjh, i64 noundef %i.cjm) #25
end_hunk_2
begin_hunk_3_@_ZN13pull_params_tD2Ev:bb.a
  br i1 %.not.i.i.i1.i.i.i.i.i, label %_ZSt8_DestroyI12t_pull_groupEvPT_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !252
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.an) #25
  br label %_ZSt8_DestroyI12t_pull_groupEvPT_.exit.i.i.i

_ZSt8_DestroyI12t_pull_groupEvPT_.exit.i.i.i:     ; preds = %bb.d, %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 56 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.ao, %i.aa
  br i1 %.not.i.i.i4, label %_ZSt8_DestroyIP12t_pull_groupS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i2, !llvm.loop !6

_ZSt8_DestroyIP12t_pull_groupS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyI12t_pull_groupEvPT_.exit.i.i.i
  %.pr.i5 = load ptr, ptr %i.x, align 8, !tbaa !320
  br label %_ZSt8_DestroyIP12t_pull_groupS0_EvT_S2_RSaIT0_E.exit.i

_ZSt8_DestroyIP12t_pull_groupS0_EvT_S2_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIP12t_pull_groupS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorI12t_pull_coordSaIS0_EED2Ev.exit
  %i.ap = phi ptr [ %.pr.i5, %_ZSt8_DestroyIP12t_pull_groupS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i ], [ %i.y, %_ZNSt6vectorI12t_pull_coordSaIS0_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i6 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i1.i6, label %_ZNSt6vectorI12t_pull_groupSaIS0_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIP12t_pull_groupS0_EvT_S2_RSaIT0_E.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !356
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #25
  br label %_ZNSt6vectorI12t_pull_groupSaIS0_EED2Ev.exit

_ZNSt6vectorI12t_pull_groupSaIS0_EED2Ev.exit:     ; preds = %_ZSt8_DestroyIP12t_pull_groupS0_EvT_S2_RSaIT0_E.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorI12t_pull_groupSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !319  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !320    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 56                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !356
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 56                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 164703072086692426
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 164703072086692425, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIP12t_pull_groupmS0_ET_S2_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIP12t_pull_groupmS0_ET_S2_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 56                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !319
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorI12t_pull_groupSaIS0_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #29
  unreachable

_ZNKSt6vectorI12t_pull_groupSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 164703072086692425) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 56
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #31 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 56
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorI12t_pull_groupSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorI12t_pull_groupSaIS0_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorI12t_pull_groupSaIS0_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %.0911.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorI12t_pull_groupSaIS0_EE12_M_check_lenEmPKc.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !853)
  %i.x = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !209, !alias.scope !853, !noalias !852
  store ptr %i.x, ptr %.012.i.i.i, align 8, !tbaa !209, !alias.scope !852, !noalias !853
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !208, !alias.scope !853, !noalias !852
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !208, !alias.scope !852, !noalias !853
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !252, !alias.scope !853, !noalias !852
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !252, !alias.scope !852, !noalias !853
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !853, !noalias !852
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ag = load <2 x ptr>, ptr %i.af, align 8, !tbaa !300, !alias.scope !853, !noalias !852
  store <2 x ptr> %i.ag, ptr %i.ae, align 8, !tbaa !300, !alias.scope !852, !noalias !853
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !285, !alias.scope !853, !noalias !852
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !285, !alias.scope !852, !noalias !853
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false), !alias.scope !853, !noalias !852
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !853, !noalias !852
  store i64 %i.am, ptr %i.ak, align 8, !alias.scope !852, !noalias !853
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %.not.i.i.i = icmp eq ptr %i.an, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorI12t_pull_groupSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !851

_ZNSt6vectorI12t_pull_groupSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorI12t_pull_groupSaIS0_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseI12t_pull_groupSaIS0_EE13_M_deallocateEPS0_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI12t_pull_groupSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %i.ap = load ptr, ptr %i.h, align 8, !tbaa !356
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ar) #25
  br label %_ZNSt12_Vector_baseI12t_pull_groupSaIS0_EE13_M_deallocateEPS0_m.exit37

_ZNSt12_Vector_baseI12t_pull_groupSaIS0_EE13_M_deallocateEPS0_m.exit37: ; preds = %_ZNSt6vectorI12t_pull_groupSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !320
  %i.as = getelementptr inbounds nuw [56 x i8], ptr %i.v, i64 %1
  store ptr %i.as, ptr %i.a, align 8, !tbaa !319
  %i.at = getelementptr inbounds nuw [56 x i8], ptr %i.u, i64 %i.s
  store ptr %i.at, ptr %i.h, align 8, !tbaa !356
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIP12t_pull_groupmS0_ET_S2_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseI12t_pull_groupSaIS0_EE13_M_deallocateEPS0_m.exit37, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorI12t_pull_coordSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !321  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !322    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 176                 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !355
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 176                 ; 2 uses
  %i.m = icmp ult i64 %i.g, 52405522936674863
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 52405522936674862, %i.g  ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.013.i.i.i.prol = phi ptr [ %i.y, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 10 uses
  %.01012.i.i.i.prol = phi i64 [ %i.x, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.013.i.i.i.prol, i8 0, i64 160, i1 false)
  store ptr %i.q, ptr %i.p, align 8, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 64
  store ptr %i.s, ptr %i.r, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 80
  store double 1.000000e-09, ptr %i.t, align 8, !tbaa !861
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 116
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 156
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 172
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(37) %i.u, i8 0, i64 37, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.w, align 4, !tbaa !331
  %i.x = add nsw i64 %.01012.i.i.i.prol, -1       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 176 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !854

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.y, %.lr.ph.i.i.i.prol ]
  %.013.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.y, %.lr.ph.i.i.i.prol ]
  %.01012.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.x, %.lr.ph.i.i.i.prol ]
  %i.z = icmp ult i64 %1, 4
  br i1 %i.z, label %_ZSt27__uninitialized_default_n_aIP12t_pull_coordmS0_ET_S2_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i ], [ %.013.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 37 uses
  %.01012.i.i.i = phi i64 [ %i.bj, %.lr.ph.i.i.i ], [ %.01012.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.013.i.i.i, i8 0, i64 160, i1 false)
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !30
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 64
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !30
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 80
  store double 1.000000e-09, ptr %i.ae, align 8, !tbaa !861
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 116
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 156
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 172
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(37) %i.af, i8 0, i64 37, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.ah, align 4, !tbaa !331
  %i.ai = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 176
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 184
  %i.ak = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.ai, i8 0, i64 160, i1 false)
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !30
  %i.al = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 224
  %i.am = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 240
  store ptr %i.am, ptr %i.al, align 8, !tbaa !30
  %i.an = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 256
  store double 1.000000e-09, ptr %i.an, align 8, !tbaa !861
  %i.ao = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 292
  %i.ap = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 332
  %i.aq = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 348
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(37) %i.ao, i8 0, i64 37, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.aq, align 4, !tbaa !331
  %i.ar = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 352
  %i.as = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 360
  %i.at = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 376
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.ar, i8 0, i64 160, i1 false)
  store ptr %i.at, ptr %i.as, align 8, !tbaa !30
  %i.au = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 400
  %i.av = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 416
  store ptr %i.av, ptr %i.au, align 8, !tbaa !30
  %i.aw = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 432
  store double 1.000000e-09, ptr %i.aw, align 8, !tbaa !861
  %i.ax = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 468
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 508
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 524
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(37) %i.ax, i8 0, i64 37, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.az, align 4, !tbaa !331
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 528
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 536
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 552
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.ba, i8 0, i64 160, i1 false)
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !30
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 576
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 592
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !30
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 608
  store double 1.000000e-09, ptr %i.bf, align 8, !tbaa !861
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 644
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 684
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 700
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(37) %i.bg, i8 0, i64 37, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.bi, align 4, !tbaa !331
  %i.bj = add nsw i64 %.01012.i.i.i, -4           ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 704 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIP12t_pull_coordmS0_ET_S2_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !855

_ZSt27__uninitialized_default_n_aIP12t_pull_coordmS0_ET_S2_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.bk, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !321
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.bl = icmp ult i64 %i.n, %1
  br i1 %i.bl, label %bb.d, label %_ZNKSt6vectorI12t_pull_coordSaIS0_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #29
  unreachable

_ZNKSt6vectorI12t_pull_coordSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.bm = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.bn = tail call i64 @llvm.umin.i64(i64 %i.bm, i64 52405522936674862) ; 2 uses
  %i.bo = mul nuw nsw i64 %i.bn, 176
  %i.bp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bo) #31 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.f ; 3 uses
  %xtraiter51 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorI12t_pull_coordSaIS0_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.013.i.i.i31.prol = phi ptr [ %i.ca, %.lr.ph.i.i.i30.prol ], [ %i.bq, %_ZNKSt6vectorI12t_pull_coordSaIS0_EE12_M_check_lenEmPKc.exit ] ; 10 uses
  %.01012.i.i.i32.prol = phi i64 [ %i.bz, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorI12t_pull_coordSaIS0_EE12_M_check_lenEmPKc.exit ]
  %prol.iter53 = phi i64 [ %prol.iter53.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorI12t_pull_coordSaIS0_EE12_M_check_lenEmPKc.exit ]
  %i.br = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.013.i.i.i31.prol, i8 0, i64 160, i1 false)
  store ptr %i.bs, ptr %i.br, align 8, !tbaa !30
  %i.bt = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 48
  %i.bu = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 64
  store ptr %i.bu, ptr %i.bt, align 8, !tbaa !30
  %i.bv = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 80
  store double 1.000000e-09, ptr %i.bv, align 8, !tbaa !861
  %i.bw = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 116
  %i.bx = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 156
  %i.by = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 172
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(37) %i.bw, i8 0, i64 37, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bx, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.by, align 4, !tbaa !331
  %i.bz = add nsw i64 %.01012.i.i.i32.prol, -1    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 176 ; 2 uses
  %prol.iter53.next = add i64 %prol.iter53, 1     ; 2 uses
  %prol.iter53.cmp.not = icmp eq i64 %prol.iter53.next, %xtraiter51
  br i1 %prol.iter53.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !856

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorI12t_pull_coordSaIS0_EE12_M_check_lenEmPKc.exit
  %.013.i.i.i31.unr = phi ptr [ %i.bq, %_ZNKSt6vectorI12t_pull_coordSaIS0_EE12_M_check_lenEmPKc.exit ], [ %i.ca, %.lr.ph.i.i.i30.prol ]
  %.01012.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorI12t_pull_coordSaIS0_EE12_M_check_lenEmPKc.exit ], [ %i.bz, %.lr.ph.i.i.i30.prol ]
  %i.cb = icmp ult i64 %1, 4
  br i1 %i.cb, label %_ZSt27__uninitialized_default_n_aIP12t_pull_coordmS0_ET_S2_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.013.i.i.i31 = phi ptr [ %i.dm, %.lr.ph.i.i.i30 ], [ %.013.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 37 uses
  %.01012.i.i.i32 = phi i64 [ %i.dl, %.lr.ph.i.i.i30 ], [ %.01012.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.013.i.i.i31, i8 0, i64 160, i1 false)
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !30
  %i.ce = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 48
  %i.cf = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 64
  store ptr %i.cf, ptr %i.ce, align 8, !tbaa !30
  %i.cg = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 80
  store double 1.000000e-09, ptr %i.cg, align 8, !tbaa !861
  %i.ch = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 116
  %i.ci = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 156
  %i.cj = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 172
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(37) %i.ch, i8 0, i64 37, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ci, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.cj, align 4, !tbaa !331
  %i.ck = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 176
  %i.cl = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 184
  %i.cm = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.ck, i8 0, i64 160, i1 false)
  store ptr %i.cm, ptr %i.cl, align 8, !tbaa !30
  %i.cn = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 224
  %i.co = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 240
  store ptr %i.co, ptr %i.cn, align 8, !tbaa !30
  %i.cp = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 256
  store double 1.000000e-09, ptr %i.cp, align 8, !tbaa !861
  %i.cq = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 292
  %i.cr = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 332
  %i.cs = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 348
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(37) %i.cq, i8 0, i64 37, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cr, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.cs, align 4, !tbaa !331
  %i.ct = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 352
  %i.cu = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 360
  %i.cv = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 376
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.ct, i8 0, i64 160, i1 false)
  store ptr %i.cv, ptr %i.cu, align 8, !tbaa !30
  %i.cw = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 400
  %i.cx = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 416
  store ptr %i.cx, ptr %i.cw, align 8, !tbaa !30
  %i.cy = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 432
  store double 1.000000e-09, ptr %i.cy, align 8, !tbaa !861
  %i.cz = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 468
  %i.da = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 508
  %i.db = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 524
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(37) %i.cz, i8 0, i64 37, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.da, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.db, align 4, !tbaa !331
  %i.dc = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 528
  %i.dd = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 536
  %i.de = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 552
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.dc, i8 0, i64 160, i1 false)
  store ptr %i.de, ptr %i.dd, align 8, !tbaa !30
  %i.df = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 576
  %i.dg = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 592
  store ptr %i.dg, ptr %i.df, align 8, !tbaa !30
  %i.dh = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 608
  store double 1.000000e-09, ptr %i.dh, align 8, !tbaa !861
  %i.di = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 644
  %i.dj = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 684
  %i.dk = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 700
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(37) %i.di, i8 0, i64 37, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dj, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.dk, align 4, !tbaa !331
  %i.dl = add nsw i64 %.01012.i.i.i32, -4         ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 704
  %.not.i.i.i33.3 = icmp eq i64 %i.dl, 0
  br i1 %.not.i.i.i33.3, label %_ZSt27__uninitialized_default_n_aIP12t_pull_coordmS0_ET_S2_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !855

_ZSt27__uninitialized_default_n_aIP12t_pull_coordmS0_ET_S2_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorI12t_pull_coordSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIP12t_pull_coordmS0_ET_S2_T0_RSaIT1_E.exit35, %_ZSt19__relocate_object_aI12t_pull_coordS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ew, %_ZSt19__relocate_object_aI12t_pull_coordS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.bp, %_ZSt27__uninitialized_default_n_aIP12t_pull_coordmS0_ET_S2_T0_RSaIT1_E.exit35 ] ; 10 uses
  %.0911.i.i.i = phi ptr [ %i.ev, %_ZSt19__relocate_object_aI12t_pull_coordS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt27__uninitialized_default_n_aIP12t_pull_coordmS0_ET_S2_T0_RSaIT1_E.exit35 ] ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !862)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !863)
  %i.dn = load i32, ptr %.0911.i.i.i, align 8, !tbaa !330, !alias.scope !863, !noalias !862
  store i32 %i.dn, ptr %.012.i.i.i, align 8, !tbaa !330, !alias.scope !862, !noalias !863
  %i.do = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 3 uses
  store ptr %i.dq, ptr %i.do, align 8, !tbaa !30, !alias.scope !862, !noalias !863
  %i.dr = load ptr, ptr %i.dp, align 8, !tbaa !25, !alias.scope !863, !noalias !862 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 5 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i37
  %i.du = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !31, !alias.scope !863, !noalias !862 ; 3 uses
  %i.dw = icmp ult i64 %i.dv, 16
  tail call void @llvm.assume(i1 %i.dw)
  %i.dx = add nuw nsw i64 %i.dv, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dq, ptr noundef nonnull align 8 dereferenceable(1) %i.ds, i64 %i.dx, i1 false), !alias.scope !864
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i37
  store ptr %i.dr, ptr %i.do, align 8, !tbaa !25, !alias.scope !862, !noalias !863
  %i.dy = load i64, ptr %i.ds, align 8, !tbaa !26, !alias.scope !863, !noalias !862
  store i64 %i.dy, ptr %i.dq, align 8, !tbaa !26, !alias.scope !862, !noalias !863
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !31, !alias.scope !863, !noalias !862
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.e
  %i.dz = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.dv, %bb.e ]
  %i.ea = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store i64 %i.dz, ptr %i.eb, align 8, !tbaa !31, !alias.scope !862, !noalias !863
  store ptr %i.ds, ptr %i.dp, align 8, !tbaa !25, !alias.scope !863, !noalias !862
  store i64 0, ptr %i.ea, align 8, !tbaa !31, !alias.scope !863, !noalias !862
  store i8 0, ptr %i.ds, align 8, !tbaa !26, !alias.scope !863, !noalias !862
  %i.ec = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.ed = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !329, !alias.scope !863, !noalias !862
  store i32 %i.ee, ptr %i.ec, align 8, !tbaa !329, !alias.scope !862, !noalias !863
  %i.ef = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64 ; 3 uses
  store ptr %i.eh, ptr %i.ef, align 8, !tbaa !30, !alias.scope !862, !noalias !863
  %i.ei = load ptr, ptr %i.eg, align 8, !tbaa !25, !alias.scope !863, !noalias !862 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 5 uses
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i.i.i.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56
  %i.em = load i64, ptr %i.el, align 8, !tbaa !31, !alias.scope !863, !noalias !862 ; 3 uses
  %i.en = icmp ult i64 %i.em, 16
  tail call void @llvm.assume(i1 %i.en)
  %i.eo = add nuw nsw i64 %i.em, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.eh, ptr noundef nonnull align 8 dereferenceable(1) %i.ej, i64 %i.eo, i1 false), !alias.scope !864
  br label %_ZSt19__relocate_object_aI12t_pull_coordS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  store ptr %i.ei, ptr %i.ef, align 8, !tbaa !25, !alias.scope !862, !noalias !863
  %i.ep = load i64, ptr %i.ej, align 8, !tbaa !26, !alias.scope !863, !noalias !862
  store i64 %i.ep, ptr %i.eh, align 8, !tbaa !26, !alias.scope !862, !noalias !863
  %.phi.trans.insert5.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56
  %.pre6.i.i.i.i = load i64, ptr %.phi.trans.insert5.i.i.i.i, align 8, !tbaa !31, !alias.scope !863, !noalias !862
  br label %_ZSt19__relocate_object_aI12t_pull_coordS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aI12t_pull_coordS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i.i.i.i.i, %bb.f
  %i.eq = phi i64 [ %i.em, %bb.f ], [ %.pre6.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i.i.i.i.i ]
  %i.er = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56
  %i.es = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  store i64 %i.eq, ptr %i.es, align 8, !tbaa !31, !alias.scope !862, !noalias !863
  store ptr %i.ej, ptr %i.eg, align 8, !tbaa !25, !alias.scope !863, !noalias !862
  store i64 0, ptr %i.er, align 8, !tbaa !31, !alias.scope !863, !noalias !862
  store i8 0, ptr %i.ej, align 8, !tbaa !26, !alias.scope !863, !noalias !862
  %i.et = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 80
  %i.eu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.et, ptr noundef nonnull align 8 dereferenceable(96) %i.eu, i64 96, i1 false), !alias.scope !864
  %i.ev = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 176 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 176
  %.not.i.i.i38 = icmp eq ptr %i.ev, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorI12t_pull_coordSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i37, !llvm.loop !860

_ZNSt6vectorI12t_pull_coordSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %_ZSt19__relocate_object_aI12t_pull_coordS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt27__uninitialized_default_n_aIP12t_pull_coordmS0_ET_S2_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseI12t_pull_coordSaIS0_EE13_M_deallocateEPS0_m.exit41, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorI12t_pull_coordSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %i.ex = load ptr, ptr %i.h, align 8, !tbaa !355
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = sub i64 %i.ey, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ez) #25
  br label %_ZNSt12_Vector_baseI12t_pull_coordSaIS0_EE13_M_deallocateEPS0_m.exit41

_ZNSt12_Vector_baseI12t_pull_coordSaIS0_EE13_M_deallocateEPS0_m.exit41: ; preds = %_ZNSt6vectorI12t_pull_coordSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %bb.g
  store ptr %i.bp, ptr %0, align 8, !tbaa !322
  %i.fa = getelementptr inbounds nuw [176 x i8], ptr %i.bq, i64 %1
  store ptr %i.fa, ptr %i.a, align 8, !tbaa !321
  %i.fb = getelementptr inbounds nuw [176 x i8], ptr %i.bp, i64 %i.bn
  store ptr %i.fb, ptr %i.h, align 8, !tbaa !355
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIP12t_pull_coordmS0_ET_S2_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseI12t_pull_coordSaIS0_EE13_M_deallocateEPS0_m.exit41, %bb.a
  ret void
}

declare void @_ZN3gmx9AwhParamsC1EPNS_11ISerializerEbbb(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorI8t_rotgrpSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !335  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !334    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 104                 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !336
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 104                 ; 2 uses
  %i.m = icmp ult i64 %i.g, 88686269585142076
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 88686269585142075, %i.g  ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIP8t_rotgrpmS0_ET_S2_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIP8t_rotgrpmS0_ET_S2_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 104                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !335
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorI8t_rotgrpSaIS0_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #29
  unreachable

_ZNKSt6vectorI8t_rotgrpSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 88686269585142075) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 104
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #31 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 104
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorI8t_rotgrpSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorI8t_rotgrpSaIS0_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorI8t_rotgrpSaIS0_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorI8t_rotgrpSaIS0_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !869)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !870)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.0911.i.i.i, i64 24, i1 false), !alias.scope !871
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.z = load <2 x ptr>, ptr %i.y, align 8, !tbaa !299, !alias.scope !870, !noalias !869
  store <2 x ptr> %i.z, ptr %i.x, align 8, !tbaa !299, !alias.scope !869, !noalias !870
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !253, !alias.scope !870, !noalias !869
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !253, !alias.scope !869, !noalias !870
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false), !alias.scope !870, !noalias !869
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ad, ptr noundef nonnull align 8 dereferenceable(56) %i.ae, i64 56, i1 false), !alias.scope !871
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 104 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 104
  %.not.i.i.i = icmp eq ptr %i.af, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorI8t_rotgrpSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !868

_ZNSt6vectorI8t_rotgrpSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorI8t_rotgrpSaIS0_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseI8t_rotgrpSaIS0_EE13_M_deallocateEPS0_m.exit37, label %bb.e
end_hunk_3
begin_hunk_4_@_Z14read_tpx_stateRKNSt10filesystem7__cxx114pathEP10t_inputrecP7t_stateP10gmx_mtop_t:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @_ZN3gmx13XdrSerializerC1ERKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(66) %5, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @.str.10)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %0, i8 0, i64 6, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.a, i8 0, i64 33, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store i32 4, ptr %i.c, align 8, !tbaa !371
  %i.d = icmp eq ptr %2, null
  invoke fastcc void @_ZL12do_tpxheaderPN3gmx13XdrSerializerEP13TpxFileHeaderRKNSt10filesystem7__cxx114pathEb(ptr noundef %5, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i1 noundef zeroext %i.d)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke fastcc void @_ZL11readTpxBodyP13TpxFileHeaderPN3gmx11ISerializerEP10t_inputrecP7t_statePA3_fS9_P10gmx_mtop_t(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull %0, ptr noundef %5, ptr noundef %2, ptr noundef %3, ptr noundef null, ptr noundef null, ptr noundef %4)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(76) %6, i64 41, i1 false), !tbaa.struct !372
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !100  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !101
  %i.i = load <2 x ptr>, ptr %i.e, align 8, !tbaa !215
  store <2 x ptr> %i.i, ptr %i.b, align 8, !tbaa !215
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !101
  store ptr %i.k, ptr %i.g, align 8, !tbaa !101
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZN26PartialDeserializedTprFileaSEOS_.exit.thread, label %_ZN26PartialDeserializedTprFileaSEOS_.exit

_ZN26PartialDeserializedTprFileaSEOS_.exit.thread: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.m = load i32, ptr %i.l, align 8, !tbaa !371
  store i32 %i.m, ptr %i.c, align 8, !tbaa !371
  br label %_ZN26PartialDeserializedTprFileD2Ev.exit

_ZN26PartialDeserializedTprFileaSEOS_.exit:       ; preds = %bb.c
  %i.n = ptrtoint ptr %i.h to i64
  %i.o = ptrtoint ptr %i.f to i64
  %i.p = sub i64 %i.n, %i.o
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.p) #25
  %.pr = load ptr, ptr %i.e, align 8, !tbaa !100  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.r = load i32, ptr %i.q, align 8, !tbaa !371
  store i32 %i.r, ptr %i.c, align 8, !tbaa !371
  %.not.i.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i, label %_ZN26PartialDeserializedTprFileD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN26PartialDeserializedTprFileaSEOS_.exit
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !101
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %.pr to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.v) #25
  br label %_ZN26PartialDeserializedTprFileD2Ev.exit

_ZN26PartialDeserializedTprFileD2Ev.exit:         ; preds = %_ZN26PartialDeserializedTprFileaSEOS_.exit.thread, %_ZN26PartialDeserializedTprFileaSEOS_.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @_ZN3gmx13XdrSerializerD1Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void

bb.e:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.f ], [ %i.w, %bb.e ]
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !100  ; 3 uses
  %.not.i.i.i.i10 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i10, label %_ZN26PartialDeserializedTprFileD2Ev.exit11, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !101
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #25
  br label %_ZN26PartialDeserializedTprFileD2Ev.exit11

_ZN26PartialDeserializedTprFileD2Ev.exit11:       ; preds = %bb.g, %bb.h
  call void @_ZN3gmx13XdrSerializerD1Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL11readTpxBodyP13TpxFileHeaderPN3gmx11ISerializerEP10t_inputrecP7t_statePA3_fS9_P10gmx_mtop_t(ptr dead_on_unwind noalias nonnull writable align 8 initializes((0, 6), (8, 41), (48, 76)) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.gmx::InMemoryDeserializer", align 8 ; 7 uses
  %9 = alloca %"class.gmx::InMemorySerializer", align 8 ; 8 uses
  %10 = alloca %"class.std::vector.79", align 16  ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %0, i8 0, i64 6, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.a, i8 0, i64 33, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i32 4, ptr %i.c, align 8, !tbaa !371
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !42
  %i.f = icmp sgt i32 %i.e, 118
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.h = load i32, ptr %i.g, align 4, !tbaa !43
  %i.i = icmp sgt i32 %i.h, 26
  br i1 %i.i, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !44   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %_ZNSt6vectorIcSaIcEE6resizeEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNSt6vectorIcSaIcEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.k)
          to label %._ZNSt6vectorIcSaIcEE6resizeEm.exit_crit_edge35 unwind label %bb.g

._ZNSt6vectorIcSaIcEE6resizeEm.exit_crit_edge35:  ; preds = %bb.d
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !100
  %.pre36 = load ptr, ptr %i.l, align 8, !tbaa !99
  %i.m = ptrtoint ptr %.pre36 to i64
  br label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

_ZNSt6vectorIcSaIcEE6resizeEm.exit:               ; preds = %bb.c, %._ZNSt6vectorIcSaIcEE6resizeEm.exit_crit_edge35
  %i.n = phi i64 [ %i.m, %._ZNSt6vectorIcSaIcEE6resizeEm.exit_crit_edge35 ], [ 0, %bb.c ]
  %i.o = phi ptr [ %.pre, %._ZNSt6vectorIcSaIcEE6resizeEm.exit_crit_edge35 ], [ null, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(41) %1, i64 41, i1 false), !tbaa.struct !372
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.n, %i.p
  %i.r = load ptr, ptr %2, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 144
  %i.t = load ptr, ptr %i.s, align 8
  invoke void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.o, i64 noundef %i.q)
          to label %_ZL15doTpxBodyBufferPN3gmx11ISerializerENS_8ArrayRefIcEE.exit unwind label %bb.g, !inline_history !0

_ZL15doTpxBodyBufferPN3gmx11ISerializerENS_8ArrayRefIcEE.exit: ; preds = %_ZNSt6vectorIcSaIcEE6resizeEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !100  ; 3 uses
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !99
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !370, !range !40, !noundef !41
  %i.ac = trunc nuw i8 %i.ab to i1
  invoke void @_ZN3gmx20InMemoryDeserializerC1ENS_8ArrayRefIKcEEbNS_18EndianSwapBehaviorE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr %i.u, ptr %i.z, i1 noundef zeroext %i.ac, i32 noundef 3)
          to label %.noexc31 unwind label %bb.g

.noexc31:                                         ; preds = %_ZL15doTpxBodyBufferPN3gmx11ISerializerENS_8ArrayRefIcEE.exit
  %i.ad = invoke fastcc noundef i32 @_ZL11do_tpx_bodyPN3gmx11ISerializerEP13TpxFileHeaderP10t_inputrecP7t_statePA3_fS9_P10gmx_mtop_t(ptr noundef %8, ptr noundef nonnull readonly %0, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %.noexc31
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20InMemoryDeserializerD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %.body

bb.f:                                             ; preds = %.noexc31
  call void @_ZN3gmx20InMemoryDeserializerD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.i

bb.g:                                             ; preds = %_ZL15doTpxBodyBufferPN3gmx11ISerializerENS_8ArrayRefIcEE.exit, %_ZNSt6vectorIcSaIcEE6resizeEm.exit, %bb.d, %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %bb.b, %bb.a
  %i.ag = invoke fastcc noundef i32 @_ZL11do_tpx_bodyPN3gmx11ISerializerEP13TpxFileHeaderP10t_inputrecP7t_statePA3_fS9_P10gmx_mtop_t(ptr noundef %2, ptr noundef nonnull %1, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
          to label %bb.i unwind label %bb.g

bb.i:                                             ; preds = %bb.h, %bb.f
  %storemerge = phi i32 [ %i.ad, %bb.f ], [ %i.ag, %bb.h ]
  store i32 %storemerge, ptr %i.c, align 8, !tbaa !371
  %i.ah = load i32, ptr %4, align 8, !tbaa !86, !noalias !958
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !88, !noalias !958
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !90, !noalias !958
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.an = load float, ptr %i.am, align 8, !tbaa !29, !noalias !958
  %i.ao = icmp ne ptr %3, null
  %i.ap = icmp ne ptr %7, null
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !93, !noalias !958 ; 2 uses
  %i.as = and i32 %i.ar, 128
  %i.at = icmp ne i32 %i.as, 0
  %i.au = lshr i32 %i.ar, 8
  %i.av = trunc i32 %i.au to i8
  %i.aw = and i8 %i.av, 1
  %11 = insertelement <4 x i1> <i1 poison, i1 true, i1 poison, i1 poison>, i1 %i.ao, i64 0
  %12 = insertelement <4 x i1> %11, i1 %i.ap, i64 2
  %13 = insertelement <4 x i1> %12, i1 %i.at, i64 3
  %14 = zext <4 x i1> %13 to <4 x i8>
  store <4 x i8> %14, ptr %0, align 8, !tbaa !105
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.aw, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !105
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 1, !tbaa !105
  store i32 %i.ah, ptr %i.a, align 8, !tbaa !27
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.aj, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !27
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.an, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !29
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.al, ptr %.sroa.13.0..sroa_idx, align 4, !tbaa !27
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !39
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 138, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !27
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 29, ptr %.sroa.16.0..sroa_idx, align 4, !tbaa !27
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  invoke void @_ZN3gmx18InMemorySerializerC1ENS_18EndianSwapBehaviorE(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 3)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ax = invoke fastcc noundef i32 @_ZL11do_tpx_bodyPN3gmx11ISerializerEP13TpxFileHeaderP10t_inputrecP7t_statePA3_fS9_P10gmx_mtop_t(ptr noundef nonnull %9, ptr noundef nonnull readonly %0, ptr noundef %3, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %7)
          to label %_ZL11do_tpx_bodyPN3gmx11ISerializerEP13TpxFileHeaderP10t_inputrecP10gmx_mtop_t.exit unwind label %bb.n ; 0 uses

_ZL11do_tpx_bodyPN3gmx11ISerializerEP13TpxFileHeaderP10t_inputrecP10gmx_mtop_t.exit: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  invoke void @_ZN3gmx18InMemorySerializer18finishAndGetBufferEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.79") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %_ZL11do_tpx_bodyPN3gmx11ISerializerEP13TpxFileHeaderP10t_inputrecP10gmx_mtop_t.exit
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !100 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !101
  %i.bb = load <2 x ptr>, ptr %10, align 16, !tbaa !215
  store <2 x ptr> %i.bb, ptr %i.b, align 8, !tbaa !215
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 16, !tbaa !101
  store ptr %i.bd, ptr %i.az, align 8, !tbaa !101
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %_ZNSt6vectorIcSaIcEEaSEOS1_.exit

_ZNSt6vectorIcSaIcEEaSEOS1_.exit:                 ; preds = %bb.k
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = ptrtoint ptr %i.ay to i64
  %i.bg = sub i64 %i.be, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bg) #25
  %.pr = load ptr, ptr %10, align 16, !tbaa !100  ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIcSaIcEEaSEOS1_.exit
  %i.bh = load ptr, ptr %i.bc, align 16, !tbaa !101
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %.pr to i64
  %i.bk = sub i64 %i.bi, %i.bj
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.bk) #25
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.k, %_ZNSt6vectorIcSaIcEEaSEOS1_.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @_ZN3gmx18InMemorySerializerD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  ret void

bb.m:                                             ; preds = %bb.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.n:                                             ; preds = %bb.j
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZL11do_tpx_bodyPN3gmx11ISerializerEP13TpxFileHeaderP10t_inputrecP10gmx_mtop_t.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bn, %bb.o ], [ %i.bm, %bb.n ]
  call void @_ZN3gmx18InMemorySerializerD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #26
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.p ], [ %i.bl, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %.body

.body:                                            ; preds = %bb.g, %bb.e, %bb.q
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.q ], [ %i.ae, %bb.e ], [ %i.af, %bb.g ]
  %i.bo = load ptr, ptr %i.b, align 8, !tbaa !100 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i, label %_ZN26PartialDeserializedTprFileD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %.body
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !101
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #25
  br label %_ZN26PartialDeserializedTprFileD2Ev.exit

_ZN26PartialDeserializedTprFileD2Ev.exit:         ; preds = %.body, %bb.r
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIcSaIcEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !100    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !101
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.i, %i.d                       ; 2 uses
  %i.k = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = xor i64 %i.f, 9223372036854775807        ; 2 uses
  %i.m = icmp ule i64 %i.j, %i.l
  tail call void @llvm.assume(i1 %i.m)
  %.not28 = icmp ult i64 %i.j, %1
  br i1 %.not28, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 1, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.o = add nsw i64 %1, -1                       ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.b, i64 %1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.n, i8 0, i64 %i.o, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi ptr [ %i.q, %bb.d ], [ %i.n, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !99
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %i.l, %1
  br i1 %i.r, label %bb.f, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #29
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit:    ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %1)
  %i.s = add nuw i64 %.sroa.speculated.i, %i.f
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.s, i64 9223372036854775807) ; 2 uses
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #31 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 3 uses
  store i8 0, ptr %i.v, align 1, !tbaa !26
  %i.w = add nsw i64 %1, -1                       ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.y, i8 0, i64 %i.w, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31

_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31: ; preds = %bb.g, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit
  %.not35 = icmp eq ptr %i.b, %i.c
  br i1 %.not35, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.u, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31, %bb.h
  %.not.i33 = icmp eq ptr %i.c, null
  br i1 %.not.i33, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !101
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #25
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34: ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit, %bb.i
  store ptr %i.u, ptr %0, align 8, !tbaa !100
end_hunk_4
