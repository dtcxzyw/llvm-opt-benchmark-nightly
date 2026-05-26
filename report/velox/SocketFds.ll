inline.NumInlined: 276
inline.NumDeleted: 217
begin_hunk_0_@_ZN5folly9SocketFds23cloneToSendFromOrDfatalERKS0_:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.n
  br i1 %i.ak, label %_ZSt11make_uniqueISt7variantIJSt4pairISt6vectorIN5folly4FileESaIS4_EElES1_IS2_ISt10shared_ptrIKS4_ESaISA_EElEEEJRSD_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !31

bb.n:                                             ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIKN5folly4FileEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 40) #18, !noalias !18
  br label %common.resume

_ZSt11make_uniqueISt7variantIJSt4pairISt6vectorIN5folly4FileESaIS4_EElES1_IS2_ISt10shared_ptrIKS4_ESaISA_EElEEEJRSD_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %_ZSt10_ConstructISt10shared_ptrIKN5folly4FileEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc2.thread.i
  %i.am = phi ptr [ %i.s, %.noexc2.thread.i ], [ %i.x, %_ZSt10_ConstructISt10shared_ptrIKN5folly4FileEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ null, %.noexc2.thread.i ], [ %i.aj, %_ZSt10_ConstructISt10shared_ptrIKN5folly4FileEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.am, align 8, !tbaa !21, !noalias !18
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !33, !noalias !18
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !33, !noalias !18
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i8 1, ptr %i.aq, align 8, !tbaa !14, !noalias !18
  %i.ar = load ptr, ptr %0, align 8, !tbaa !11    ; 4 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !11
  %.not.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrISt7variantIJSt4pairISt6vectorIN5folly4FileESaIS4_EElES1_IS2_ISt10shared_ptrIKS4_ESaISA_EElEEESt14default_deleteISE_EE5resetEPSE_.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt11make_uniqueISt7variantIJSt4pairISt6vectorIN5folly4FileESaIS4_EElES1_IS2_ISt10shared_ptrIKS4_ESaISA_EElEEEJRSD_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load i8, ptr %i.as, align 8, !tbaa !14
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.at, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteISt7variantIJSt4pairISt6vectorIN5folly4FileESaIS4_EElES1_IS2_ISt10shared_ptrIKS4_ESaISA_EElEEEEclEPSE_.exit.i.i.i.i, label %bb.p, !prof !16

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt4pairISt6vectorIN5folly4FileESaIS6_EElES3_IS4_ISt10shared_ptrIKS6_ESaISC_EElEEE8_M_resetEvEUlOT_E_JRSt7variantIJS9_SF_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(33) %i.ar)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.q

.noexc.i.i.i.i.i.i:                               ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %_ZNKSt14default_deleteISt7variantIJSt4pairISt6vectorIN5folly4FileESaIS4_EElES1_IS2_ISt10shared_ptrIKS4_ESaISA_EElEEEEclEPSE_.exit.i.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #17
  unreachable

_ZNKSt14default_deleteISt7variantIJSt4pairISt6vectorIN5folly4FileESaIS4_EElES1_IS2_ISt10shared_ptrIKS4_ESaISA_EElEEEEclEPSE_.exit.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i, %bb.o
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef 40) #18
  br label %_ZNSt10unique_ptrISt7variantIJSt4pairISt6vectorIN5folly4FileESaIS4_EElES1_IS2_ISt10shared_ptrIKS4_ESaISA_EElEEESt14default_deleteISE_EE5resetEPSE_.exit

_ZNSt10unique_ptrISt7variantIJSt4pairISt6vectorIN5folly4FileESaIS4_EElES1_IS2_ISt10shared_ptrIKS4_ESaISA_EElEEESt14default_deleteISE_EE5resetEPSE_.exit: ; preds = %_ZSt11make_uniqueISt7variantIJSt4pairISt6vectorIN5folly4FileESaIS4_EElES1_IS2_ISt10shared_ptrIKS4_ESaISA_EElEEEJRSD_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, %_ZNKSt14default_deleteISt7variantIJSt4pairISt6vectorIN5folly4FileESaIS4_EElES1_IS2_ISt10shared_ptrIKS4_ESaISA_EElEEEEclEPSE_.exit.i.i.i.i, %_ZNKSt14default_deleteISt7variantIJSt4pairISt6vectorIN5folly4FileESaIS4_EElES1_IS2_ISt10shared_ptrIKS4_ESaISA_EElEEEEclEPSE_.exit.i.i, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrISt7variantIJSt4pairISt6vectorIN5folly4FileESaIS4_EElES1_IS2_ISt10shared_ptrIKS4_ESaISA_EElEEESt14default_deleteISE_EE5resetEPSE_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon, align 1                ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !11     ; 4 uses
  store ptr %1, ptr %0, align 8, !tbaa !11
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt15__uniq_ptr_implISt7variantIJSt4pairISt6vectorIN5folly4FileESaIS4_EElES1_IS2_ISt10shared_ptrIKS4_ESaISA_EElEEESt14default_deleteISE_EE5resetEPSE_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load i8, ptr %i.b, align 8, !tbaa !14
  %.not.i.i.i.i = icmp eq i8 %i.c, -1
  br i1 %.not.i.i.i.i, label %_ZNKSt14default_deleteISt7variantIJSt4pairISt6vectorIN5folly4FileESaIS4_EElES1_IS2_ISt10shared_ptrIKS4_ESaISA_EElEEEEclEPSE_.exit.i, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt4pairISt6vectorIN5folly4FileESaIS6_EElES3_IS4_ISt10shared_ptrIKS6_ESaISC_EElEEE8_M_resetEvEUlOT_E_JRSt7variantIJS9_SF_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(33) %i.a)
          to label %.noexc.i.i.i unwind label %bb.d

.noexc.i.i.i:                                     ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %_ZNKSt14default_deleteISt7variantIJSt4pairISt6vectorIN5folly4FileESaIS4_EElES1_IS2_ISt10shared_ptrIKS4_ESaISA_EElEEEEclEPSE_.exit.i

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  call void @__clang_call_terminate(ptr %i.e) #17
  unreachable

_ZNKSt14default_deleteISt7variantIJSt4pairISt6vectorIN5folly4FileESaIS4_EElES1_IS2_ISt10shared_ptrIKS4_ESaISA_EElEEEEclEPSE_.exit.i: ; preds = %.noexc.i.i.i, %bb.b
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #18
  br label %_ZNSt15__uniq_ptr_implISt7variantIJSt4pairISt6vectorIN5folly4FileESaIS4_EElES1_IS2_ISt10shared_ptrIKS4_ESaISA_EElEEESt14default_deleteISE_EE5resetEPSE_.exit

_ZNSt15__uniq_ptr_implISt7variantIJSt4pairISt6vectorIN5folly4FileESaIS4_EElES1_IS2_ISt10shared_ptrIKS4_ESaISA_EElEEESt14default_deleteISE_EE5resetEPSE_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteISt7variantIJSt4pairISt6vectorIN5folly4FileESaIS4_EElES1_IS2_ISt10shared_ptrIKS4_ESaISA_EElEEEEclEPSE_.exit.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96)) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @_ZN6google15LogMessageFatalC1EPKciRKNS_13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #5

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #16 ; 0 uses
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt4pairISt6vectorIN5folly4FileESaIS6_EElES3_IS4_ISt10shared_ptrIKS6_ESaISC_EElEEE8_M_resetEvEUlOT_E_JRSt7variantIJS9_SF_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !14
  %i.c = icmp eq i8 %i.b, 0
  %i.d = load ptr, ptr %1, align 8, !tbaa !29     ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29   ; 3 uses
  %.not4.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, %i.f ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5folly4FileES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  tail call void @_ZN5folly4FileD1Ev(ptr noundef nonnull align 4 dead_on_return(5) dereferenceable(5) %.05.i.i.i.i.i.i.i.i.i.i) #16
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, %i.f
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5folly4FileES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !39

_ZSt8_DestroyIPN5folly4FileES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !40
  br label %_ZSt8_DestroyIPN5folly4FileES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyIPN5folly4FileES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN5folly4FileES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i, %bb.b
  %i.h = phi ptr [ %.pr.i.i.i.i.i.i.i.i, %_ZSt8_DestroyIPN5folly4FileES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %.not.i.i1.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt4pairISt6vectorIN5folly4FileESaIS7_EElES4_IS5_ISt10shared_ptrIKS7_ESaISD_EElEEE8_M_resetEvEUlOT_E_RSt7variantIJSA_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt4pairISt6vectorIN5folly4FileESaIS7_EElES4_IS5_ISt10shared_ptrIKS7_ESaISD_EElEEE8_M_resetEvEUlOT_E_RSt7variantIJSA_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split

bb.c:                                             ; preds = %bb.a
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIKN5folly4FileEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i7

.lr.ph.i.i.i.i.i.i.i.i.i.i7:                      ; preds = %bb.c, %_ZSt8_DestroyISt10shared_ptrIKN5folly4FileEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i8 = phi ptr [ %i.z, %_ZSt8_DestroyISt10shared_ptrIKN5folly4FileEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.d, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i8, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !26   ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIKN5folly4FileEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i7
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.k, align 8, !tbaa !43
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !45
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !46
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #16, !call_target !48, !inline_history !55
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !46
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #16, !call_target !56, !inline_history !55
  br label %_ZSt8_DestroyISt10shared_ptrIKN5folly4FileEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 4, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.n, %bb.g ], [ %i.x, %bb.h ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.i, label %_ZSt8_DestroyISt10shared_ptrIKN5folly4FileEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i, !prof !16

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #16
  br label %_ZSt8_DestroyISt10shared_ptrIKN5folly4FileEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIKN5folly4FileEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.e, %.lr.ph.i.i.i.i.i.i.i.i.i.i7
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i8, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i9 = icmp eq ptr %i.z, %i.f
  br i1 %.not.i.i.i.i.i.i.i.i.i.i9, label %_ZSt8_DestroyIPSt10shared_ptrIKN5folly4FileEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i7, !llvm.loop !57

_ZSt8_DestroyIPSt10shared_ptrIKN5folly4FileEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIKN5folly4FileEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i.i10 = load ptr, ptr %1, align 8, !tbaa !24
  br label %_ZSt8_DestroyIPSt10shared_ptrIKN5folly4FileEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyIPSt10shared_ptrIKN5folly4FileEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN5folly4FileEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i, %bb.c
  %i.aa = phi ptr [ %.pr.i.i.i.i.i.i.i.i10, %_ZSt8_DestroyIPSt10shared_ptrIKN5folly4FileEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i ], [ %i.d, %bb.c ] ; 2 uses
  %.not.i.i1.i.i.i.i.i.i.i.i11 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i.i11, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt4pairISt6vectorIN5folly4FileESaIS7_EElES4_IS5_ISt10shared_ptrIKS7_ESaISD_EElEEE8_M_resetEvEUlOT_E_RSt7variantIJSA_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt4pairISt6vectorIN5folly4FileESaIS7_EElES4_IS5_ISt10shared_ptrIKS7_ESaISD_EElEEE8_M_resetEvEUlOT_E_RSt7variantIJSA_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt4pairISt6vectorIN5folly4FileESaIS7_EElES4_IS5_ISt10shared_ptrIKS7_ESaISD_EElEEE8_M_resetEvEUlOT_E_RSt7variantIJSA_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN5folly4FileEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i.i.i.i, %_ZSt8_DestroyIPN5folly4FileES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i.i
  %.sink23 = phi ptr [ %i.h, %_ZSt8_DestroyIPN5folly4FileES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i.i ], [ %i.aa, %_ZSt8_DestroyIPSt10shared_ptrIKN5folly4FileEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !29
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %.sink23 to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink23, i64 noundef %i.af) #18
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt4pairISt6vectorIN5folly4FileESaIS7_EElES4_IS5_ISt10shared_ptrIKS7_ESaISD_EElEEE8_M_resetEvEUlOT_E_RSt7variantIJSA_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt4pairISt6vectorIN5folly4FileESaIS7_EElES4_IS5_ISt10shared_ptrIKS7_ESaISD_EElEEE8_M_resetEvEUlOT_E_RSt7variantIJSA_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit: ; preds = %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt4pairISt6vectorIN5folly4FileESaIS7_EElES4_IS5_ISt10shared_ptrIKS7_ESaISD_EElEEE8_M_resetEvEUlOT_E_RSt7variantIJSA_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split, %_ZSt8_DestroyIPSt10shared_ptrIKN5folly4FileEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i.i.i.i, %_ZSt8_DestroyIPN5folly4FileES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i.i
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5folly4FileD1Ev(ptr noundef nonnull align 4 dead_on_return(5) dereferenceable(5)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #16, !call_target !48, !inline_history !58
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !7    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #16, !call_target !56, !inline_history !58
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define void @_ZN5folly9SocketFds15releaseReceivedEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::vector.4") align 8 captures(none) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon, align 1                ; 3 uses
  %3 = alloca %"class.google::LogMessageFatal", align 8 ; 3 uses
  %4 = alloca %"struct.google::CheckOpString", align 8 ; 4 uses
  %5 = alloca %"class.std::allocator.15", align 1 ; 3 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !11     ; 5 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load i8, ptr %i.b, align 8, !tbaa !14
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %_ZN6google12CheckNotNullIPSt4pairISt6vectorIN5folly4FileESaIS4_EElEEET_PKciSB_OS9_.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.e = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %i.e, ptr %4, align 8, !tbaa !59
  call void @_ZN6google15LogMessageFatalC1EPKciRKNS_13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull @.str, i32 noundef 41, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %3) #17
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 32) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  resume { ptr, i32 } %i.f

_ZN6google12CheckNotNullIPSt4pairISt6vectorIN5folly4FileESaIS4_EElEEET_PKciSB_OS9_.exit: ; preds = %bb.b
  %i.g = load <2 x ptr>, ptr %i.a, align 8, !tbaa !62
  store <2 x ptr> %i.g, ptr %0, align 8, !tbaa !62
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !63
  store ptr %i.j, ptr %i.h, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.k = load ptr, ptr %1, align 8, !tbaa !11     ; 4 uses
  store ptr null, ptr %1, align 8, !tbaa !11
  %.not.i.i2 = icmp eq ptr %i.k, null
  br i1 %.not.i.i2, label %_ZNSt10unique_ptrISt7variantIJSt4pairISt6vectorIN5folly4FileESaIS4_EElES1_IS2_ISt10shared_ptrIKS4_ESaISA_EElEEESt14default_deleteISE_EE5resetEPSE_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6google12CheckNotNullIPSt4pairISt6vectorIN5folly4FileESaIS4_EElEEET_PKciSB_OS9_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load i8, ptr %i.l, align 8, !tbaa !14
  %.not.i.i.i.i.i = icmp eq i8 %i.m, -1
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteISt7variantIJSt4pairISt6vectorIN5folly4FileESaIS4_EElES1_IS2_ISt10shared_ptrIKS4_ESaISA_EElEEEEclEPSE_.exit.i.i, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt4pairISt6vectorIN5folly4FileESaIS6_EElES3_IS4_ISt10shared_ptrIKS6_ESaISC_EElEEE8_M_resetEvEUlOT_E_JRSt7variantIJS9_SF_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(33) %i.k)
          to label %.noexc.i.i.i.i unwind label %bb.h

.noexc.i.i.i.i:                                   ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %_ZNKSt14default_deleteISt7variantIJSt4pairISt6vectorIN5folly4FileESaIS4_EElES1_IS2_ISt10shared_ptrIKS4_ESaISA_EElEEEEclEPSE_.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #17
  unreachable

_ZNKSt14default_deleteISt7variantIJSt4pairISt6vectorIN5folly4FileESaIS4_EElES1_IS2_ISt10shared_ptrIKS4_ESaISA_EElEEEEclEPSE_.exit.i.i: ; preds = %.noexc.i.i.i.i, %bb.f
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 40) #18
  br label %_ZNSt10unique_ptrISt7variantIJSt4pairISt6vectorIN5folly4FileESaIS4_EElES1_IS2_ISt10shared_ptrIKS4_ESaISA_EElEEESt14default_deleteISE_EE5resetEPSE_.exit

_ZNSt10unique_ptrISt7variantIJSt4pairISt6vectorIN5folly4FileESaIS4_EElES1_IS2_ISt10shared_ptrIKS4_ESaISA_EElEEESt14default_deleteISE_EE5resetEPSE_.exit: ; preds = %_ZN6google12CheckNotNullIPSt4pairISt6vectorIN5folly4FileESaIS4_EElEEET_PKciSB_OS9_.exit, %_ZNKSt14default_deleteISt7variantIJSt4pairISt6vectorIN5folly4FileESaIS4_EElES1_IS2_ISt10shared_ptrIKS4_ESaISA_EElEEEEclEPSE_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !64
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.5) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #20
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !16

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #19 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !67
  store i64 %i.c, ptr %i.a, align 8, !tbaa !30
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1, !tbaa !30
  store i8 %i.j, ptr %i.i, align 1, !tbaa !30
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !69
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !30
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define void @_ZN5folly9SocketFds22releaseToSendAndSeqNumEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::optional") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon, align 1                ; 3 uses
  %3 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !11     ; 6 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load i8, ptr %i.b, align 8, !tbaa !14
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %_ZSt6get_ifISt4pairISt6vectorISt10shared_ptrIKN5folly4FileEESaIS6_EElEJS0_IS1_IS4_SaIS4_EElES9_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull @.str, i32 noundef 62, i32 noundef 1)
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.7, i64 noundef 45)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @_ZNSt10unique_ptrISt7variantIJSt4pairISt6vectorIN5folly4FileESaIS4_EElES1_IS2_ISt10shared_ptrIKS4_ESaISA_EElEEESt14default_deleteISE_EE5resetEPSE_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null) #16
  br label %bb.i

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  resume { ptr, i32 } %i.g

_ZSt6get_ifISt4pairISt6vectorISt10shared_ptrIKN5folly4FileEESaIS6_EElEJS0_IS1_IS4_SaIS4_EElES9_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit: ; preds = %bb.b
  %i.h = load <2 x ptr>, ptr %i.a, align 8, !tbaa !70
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !33
  %i.m = load ptr, ptr %1, align 8, !tbaa !11     ; 4 uses
  store ptr null, ptr %1, align 8, !tbaa !11
  %.not.i.i4 = icmp eq ptr %i.m, null
  br i1 %.not.i.i4, label %_ZNSt4pairISt6vectorISt10shared_ptrIKN5folly4FileEESaIS5_EElED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt6get_ifISt4pairISt6vectorISt10shared_ptrIKN5folly4FileEESaIS6_EElEJS0_IS1_IS4_SaIS4_EElES9_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i8, ptr %i.n, align 8, !tbaa !14
  %.not.i.i.i.i.i = icmp eq i8 %i.o, -1
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteISt7variantIJSt4pairISt6vectorIN5folly4FileESaIS4_EElES1_IS2_ISt10shared_ptrIKS4_ESaISA_EElEEEEclEPSE_.exit.i.i, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt4pairISt6vectorIN5folly4FileESaIS6_EElES3_IS4_ISt10shared_ptrIKS6_ESaISC_EElEEE8_M_resetEvEUlOT_E_JRSt7variantIJS9_SF_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(33) %i.m)
          to label %.noexc.i.i.i.i unwind label %bb.h

.noexc.i.i.i.i:                                   ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %_ZNKSt14default_deleteISt7variantIJSt4pairISt6vectorIN5folly4FileESaIS4_EElES1_IS2_ISt10shared_ptrIKS4_ESaISA_EElEEEEclEPSE_.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #17
  unreachable

_ZNKSt14default_deleteISt7variantIJSt4pairISt6vectorIN5folly4FileESaIS4_EElES1_IS2_ISt10shared_ptrIKS4_ESaISA_EElEEEEclEPSE_.exit.i.i: ; preds = %.noexc.i.i.i.i, %bb.f
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 40) #18
  br label %_ZNSt4pairISt6vectorISt10shared_ptrIKN5folly4FileEESaIS5_EElED2Ev.exit

_ZNSt4pairISt6vectorISt10shared_ptrIKN5folly4FileEESaIS5_EElED2Ev.exit: ; preds = %_ZSt6get_ifISt4pairISt6vectorISt10shared_ptrIKN5folly4FileEESaIS6_EElEJS0_IS1_IS4_SaIS4_EElES9_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit, %_ZNKSt14default_deleteISt7variantIJSt4pairISt6vectorIN5folly4FileESaIS4_EElES1_IS2_ISt10shared_ptrIKS4_ESaISA_EElEEEEclEPSE_.exit.i.i
  store <2 x ptr> %i.h, ptr %0, align 8, !tbaa !70
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %i.r, align 8, !tbaa !25
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.l, ptr %i.s, align 8, !tbaa !33
  br label %bb.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a, %_ZNSt4pairISt6vectorISt10shared_ptrIKN5folly4FileEESaIS5_EElED2Ev.exit
  %.sink = phi i8 [ 1, %_ZNSt4pairISt6vectorISt10shared_ptrIKN5folly4FileEESaIS5_EElED2Ev.exit ], [ 0, %bb.a ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sink, ptr %i.t, align 8, !tbaa !71
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly9SocketFds21setFdSocketSeqNumOnceEl(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !11     ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.d, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load i8, ptr %i.b, align 8, !tbaa !14
  %.not.i.i = icmp eq i8 %i.c, -1
  br i1 %.not.i.i, label %bb.c, label %"_ZSt5visitIZN5folly9SocketFds21setFdSocketSeqNumOnceElE3$_0JRSt7variantIJSt4pairISt6vectorINS0_4FileESaIS6_EElES4_IS5_ISt10shared_ptrIKS6_ESaISC_EElEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit"

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #16 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.d, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @.str.11, ptr %i.e, align 8, !tbaa !74
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #20
  unreachable

"_ZSt5visitIZN5folly9SocketFds21setFdSocketSeqNumOnceElE3$_0JRSt7variantIJSt4pairISt6vectorINS0_4FileESaIS6_EElES4_IS5_ISt10shared_ptrIKS6_ESaISC_EElEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit": ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %1, ptr %i.f, align 8, !tbaa !77
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull @.str, i32 noundef 83, i32 noundef 2)
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.10, i64 noundef 45)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %i.i

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %"_ZSt5visitIZN5folly9SocketFds21setFdSocketSeqNumOnceElE3$_0JRSt7variantIJSt4pairISt6vectorINS0_4FileESaIS6_EElES4_IS5_ISt10shared_ptrIKS6_ESaISC_EElEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit"
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt18bad_variant_accessD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNKSt18bad_variant_access4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define noundef range(i64 -1, -9223372036854775808) i64 @_ZNK5folly9SocketFds17getFdSocketSeqNumEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %2 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !11     ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.h, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 24
  %.val = load i64, ptr %i.b, align 8             ; 4 uses
  %i.c = getelementptr i8, ptr %i.a, i64 32
  %.val13 = load i8, ptr %i.c, align 8, !tbaa !14
  %.not.i.i = icmp eq i8 %.val13, -1
  br i1 %.not.i.i, label %bb.c, label %"_ZSt5visitIZNK5folly9SocketFds17getFdSocketSeqNumEvE3$_0JRSt7variantIJSt4pairISt6vectorINS0_4FileESaIS6_EElES4_IS5_ISt10shared_ptrIKS6_ESaISC_EElEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit"

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #16 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.d, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @.str.11, ptr %i.e, align 8, !tbaa !74
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #20
  unreachable

"_ZSt5visitIZNK5folly9SocketFds17getFdSocketSeqNumEvE3$_0JRSt7variantIJSt4pairISt6vectorINS0_4FileESaIS6_EElES4_IS5_ISt10shared_ptrIKS6_ESaISC_EElEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit": ; preds = %bb.b
  %or.cond = icmp sgt i64 %.val, -2
  br i1 %or.cond, label %bb.g, label %bb.d

bb.d:                                             ; preds = %"_ZSt5visitIZNK5folly9SocketFds17getFdSocketSeqNumEvE3$_0JRSt7variantIJSt4pairISt6vectorINS0_4FileESaIS6_EElES4_IS5_ISt10shared_ptrIKS6_ESaISC_EElEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  call void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull @.str, i32 noundef 94, i32 noundef 2)
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.e unwind label %bb.f       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.14, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef %.val)
          to label %.thread unwind label %bb.f    ; 0 uses

.thread:                                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1) #16
end_hunk_0
