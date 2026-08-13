inline.NumInlined: 421
inline.NumDeleted: 251
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !78
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !80
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !150
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !150
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !82
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
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !83

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare void @_ZN5arrow7compute13KernelContext14AllocateBitmapEl(ptr dead_on_unwind writable sret(%"class.arrow::Result") align 8, ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !90     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread, !prof !93

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !78
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !80
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #16, !inline_history !151
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #16, !inline_history !151
  br label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !82
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit, !prof !83

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #16
  br label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit

_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %0, align 8, !tbaa !90     ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread, !prof !102

_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit
  %i.t = phi ptr [ %.pr, %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !103, !range !113, !noundef !114
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit, %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status14NotImplementedIJRA61_KcRKNS_8DataTypeEEEES0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(61) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16, !noalias !152
  call void @_ZN5arrow8internal12JoinToStringIJRA61_KcRKNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(61) %1, ptr noundef nonnull align 8 dereferenceable(72) %2), !noalias !152
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 10, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !128, !noalias !152 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN5arrow6Status8FromArgsIJRA61_KcRKNS_8DataTypeEEEES0_NS_10StatusCodeEDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !82, !noalias !152
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #18
  br label %_ZN5arrow6Status8FromArgsIJRA61_KcRKNS_8DataTypeEEEES0_NS_10StatusCodeEDpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %3, align 8, !tbaa !128, !noalias !152 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.h, align 8, !tbaa !82, !noalias !152
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16, !noalias !152
  resume { ptr, i32 } %i.f

_ZN5arrow6Status8FromArgsIJRA61_KcRKNS_8DataTypeEEEES0_NS_10StatusCodeEDpOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16, !noalias !152
  ret void
}

declare void @_ZN5arrow7compute13KernelContext8AllocateEl(ptr dead_on_unwind writable sret(%"class.arrow::Result") align 8, ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define { i32, ptr } @_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.arrow::internal::StaticVectorImpl", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store i64 0, ptr %i.a, align 8, !tbaa !155
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !158
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  store i64 0, ptr %i.c, align 8, !tbaa !159
  %i.d = load ptr, ptr %0, align 8, !tbaa !7      ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !17
  %i.g = icmp eq i32 %i.f, 32
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %i.h = phi i64 [ %i.af, %bb.d ], [ 0, %bb.a ]   ; 3 uses
  %i.i = phi ptr [ %i.ag, %bb.d ], [ %1, %bb.a ]  ; 4 uses
  %i.j = phi i64 [ %i.ah, %bb.d ], [ 0, %bb.a ]   ; 4 uses
  %i.k = phi i64 [ %i.r, %bb.d ], [ 0, %bb.a ]    ; 3 uses
  %i.l = phi ptr [ %i.an, %bb.d ], [ %i.d, %bb.a ]
  %.045 = phi ptr [ %i.am, %bb.d ], [ %0, %bb.a ] ; 2 uses
  %.04144 = phi i64 [ %i.p, %bb.d ], [ 1, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.n = load i32, ptr %i.m, align 8, !tbaa !40
  %i.o = sext i32 %i.n to i64
  %i.p = mul nsw i64 %.04144, %i.o                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.045, i64 24
  %i.r = add i64 %i.k, 1                          ; 12 uses
  %.not.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.s = icmp ugt i64 %i.r, %i.j
  br i1 %i.s, label %_ZN5arrow8internal14AlignedStorageISt4pairIllEE41move_construct_several_and_destroy_sourceEPS4_S5_m.exit.i.i.i.i, label %bb.d

_ZN5arrow8internal14AlignedStorageISt4pairIllEE41move_construct_several_and_destroy_sourceEPS4_S5_m.exit.i.i.i.i: ; preds = %bb.b
  %i.t = shl i64 %i.j, 1
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.t, i64 %i.r) ; 5 uses
  %i.u = icmp ugt i64 %.sroa.speculated.i.i.i, 1152921504606846975
  %i.v = shl nuw i64 %.sroa.speculated.i.i.i, 4
  %i.w = select i1 %i.u, i64 -1, i64 %i.v
  %i.x = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.w) #17
          to label %_ZN5arrow8internal18SmallVectorStorageISt4pairIllELm1EE18reallocate_dynamicEm.exit.i.i.i unwind label %bb.e ; 3 uses

_ZN5arrow8internal18SmallVectorStorageISt4pairIllELm1EE18reallocate_dynamicEm.exit.i.i.i: ; preds = %_ZN5arrow8internal14AlignedStorageISt4pairIllEE41move_construct_several_and_destroy_sourceEPS4_S5_m.exit.i.i.i.i
  %i.y = shl nuw i64 %i.k, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.i, i64 %i.y, i1 false), !alias.scope !160
  call void @_ZdaPv(ptr noundef nonnull %i.i) #18
  store i64 %.sroa.speculated.i.i.i, ptr %i.c, align 8, !tbaa !159
  store ptr %i.x, ptr %i.b, align 8, !tbaa !158
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.z = icmp ugt i64 %i.r, 1
  br i1 %i.z, label %.lr.ph.preheader.i.i.i3.i.i.i, label %bb.d

.lr.ph.preheader.i.i.i3.i.i.i:                    ; preds = %bb.c
  store i64 %i.r, ptr %i.c, align 8, !tbaa !159
  %i.aa = icmp ugt i64 %i.r, 1152921504606846975
  %i.ab = shl nuw i64 %i.r, 4
  %i.ac = select i1 %i.aa, i64 -1, i64 %i.ab
  %i.ad = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ac) #17
          to label %.noexc28 unwind label %bb.e   ; 3 uses

.noexc28:                                         ; preds = %.lr.ph.preheader.i.i.i3.i.i.i
  store ptr %i.ad, ptr %i.b, align 8, !tbaa !158
  %i.ae = shl nuw i64 %i.k, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr nonnull align 8 dereferenceable(40) %1, i64 %i.ae, i1 false), !alias.scope !167
  br label %bb.d

bb.d:                                             ; preds = %.noexc28, %bb.c, %_ZN5arrow8internal18SmallVectorStorageISt4pairIllELm1EE18reallocate_dynamicEm.exit.i.i.i, %bb.b
  %i.af = phi i64 [ %i.r, %.noexc28 ], [ %i.h, %bb.c ], [ %.sroa.speculated.i.i.i, %_ZN5arrow8internal18SmallVectorStorageISt4pairIllELm1EE18reallocate_dynamicEm.exit.i.i.i ], [ %i.h, %bb.b ]
  %i.ag = phi ptr [ %i.ad, %.noexc28 ], [ %i.i, %bb.c ], [ %i.x, %_ZN5arrow8internal18SmallVectorStorageISt4pairIllELm1EE18reallocate_dynamicEm.exit.i.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.ah = phi i64 [ %i.r, %.noexc28 ], [ 0, %bb.c ], [ %.sroa.speculated.i.i.i, %_ZN5arrow8internal18SmallVectorStorageISt4pairIllELm1EE18reallocate_dynamicEm.exit.i.i.i ], [ %i.j, %bb.b ]
  store i64 %i.r, ptr %i.a, align 8, !tbaa !155
  %i.ai = getelementptr [16 x i8], ptr %i.ag, i64 %i.r ; 2 uses
  %2 = getelementptr i8, ptr %i.ai, i64 -16
  %i.aj = load i64, ptr %i.q, align 8, !tbaa !174
  store i64 %i.aj, ptr %2, align 8, !tbaa !175
  %i.ak = getelementptr i8, ptr %i.ai, i64 -8
  store i64 %i.p, ptr %i.ak, align 8, !tbaa !177
  %i.al = getelementptr inbounds nuw i8, ptr %.045, i64 104
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !34 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !7  ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !17
  %i.aq = icmp eq i32 %i.ap, 32
  br i1 %i.aq, label %.lr.ph, label %._crit_edge, !llvm.loop !178

bb.e:                                             ; preds = %.lr.ph.preheader.i.i.i3.i.i.i, %_ZN5arrow8internal14AlignedStorageISt4pairIllEE41move_construct_several_and_destroy_sourceEPS4_S5_m.exit.i.i.i.i
  %i.ar = phi i64 [ %i.r, %.lr.ph.preheader.i.i.i3.i.i.i ], [ %i.h, %_ZN5arrow8internal14AlignedStorageISt4pairIllEE41move_construct_several_and_destroy_sourceEPS4_S5_m.exit.i.i.i.i ]
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.am, %bb.d ] ; 2 uses
  %.lcssa = phi ptr [ %i.d, %bb.a ], [ %i.an, %bb.d ] ; 2 uses
  %i.at = load ptr, ptr %.lcssa, align 8, !tbaa !38
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 72
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = invoke noundef i32 %i.av(ptr noundef nonnull align 8 dereferenceable(72) %.lcssa)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %._crit_edge
  %i.ax = sext i32 %i.aw to i64                   ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !179
  %i.ba = mul nsw i64 %i.az, %i.ax                ; 3 uses
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !158, !noalias !180 ; 4 uses
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !183, !noalias !180 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %._crit_edge52, label %.lr.ph51.preheader

.lr.ph51.preheader:                               ; preds = %bb.f
  %.idx = shl i64 %i.bc, 4                        ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx ; 2 uses
  %i.bf = add i64 %.idx, -16                      ; 2 uses
  %i.bg = lshr exact i64 %i.bf, 4
  %i.bh = add nuw nsw i64 %i.bg, 1
  %xtraiter = and i64 %i.bh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph51.prol.loopexit, label %.lr.ph51.prol

.lr.ph51.prol:                                    ; preds = %.lr.ph51.preheader, %.lr.ph51.prol
  %.02249.prol = phi i64 [ %i.bj, %.lr.ph51.prol ], [ %i.ax, %.lr.ph51.preheader ]
  %.02348.prol = phi i64 [ %i.bl, %.lr.ph51.prol ], [ %i.ba, %.lr.ph51.preheader ]
  %.sroa.032.047.prol = phi ptr [ %i.bi, %.lr.ph51.prol ], [ %i.be, %.lr.ph51.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph51.prol ], [ 0, %.lr.ph51.preheader ]
  %i.bi = getelementptr inbounds i8, ptr %.sroa.032.047.prol, i64 -16 ; 3 uses
  %.sroa.22.0..sroa_idx.prol = getelementptr inbounds i8, ptr %.sroa.032.047.prol, i64 -8
  %.sroa.22.0.copyload.prol = load i64, ptr %.sroa.22.0..sroa_idx.prol, align 8
  %i.bj = mul nsw i64 %.sroa.22.0.copyload.prol, %.02249.prol ; 3 uses
  %.sroa.0.0.copyload.prol = load i64, ptr %i.bi, align 8
  %i.bk = mul nsw i64 %.sroa.0.0.copyload.prol, %i.bj
  %i.bl = add nsw i64 %i.bk, %.02348.prol         ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph51.prol.loopexit, label %.lr.ph51.prol, !llvm.loop !185

.lr.ph51.prol.loopexit:                           ; preds = %.lr.ph51.prol, %.lr.ph51.preheader
  %.lcssa67.unr = phi i64 [ poison, %.lr.ph51.preheader ], [ %i.bl, %.lr.ph51.prol ]
  %.02249.unr = phi i64 [ %i.ax, %.lr.ph51.preheader ], [ %i.bj, %.lr.ph51.prol ]
  %.02348.unr = phi i64 [ %i.ba, %.lr.ph51.preheader ], [ %i.bl, %.lr.ph51.prol ]
  %.sroa.032.047.unr = phi ptr [ %i.be, %.lr.ph51.preheader ], [ %i.bi, %.lr.ph51.prol ]
  %i.bm = icmp ult i64 %i.bf, 48
  br i1 %i.bm, label %._crit_edge52, label %.lr.ph51

._crit_edge52:                                    ; preds = %.lr.ph51.prol.loopexit, %.lr.ph51, %bb.f
  %.023.lcssa = phi i64 [ %i.ba, %bb.f ], [ %.lcssa67.unr, %.lr.ph51.prol.loopexit ], [ %i.cl, %.lr.ph51 ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 56
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !187
  %i.bp = load i64, ptr %i.c, align 8, !tbaa !159
  %.not.i.i.i29 = icmp eq i64 %i.bp, 0
  %i.bq = icmp eq ptr %i.bb, null
  %or.cond = or i1 %i.bq, %.not.i.i.i29
  br i1 %or.cond, label %_ZN5arrow8internal16StaticVectorImplISt4pairIllELm1ENS0_18SmallVectorStorageIS3_Lm1EEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge52
  call void @_ZdaPv(ptr noundef nonnull %i.bb) #18
  br label %_ZN5arrow8internal16StaticVectorImplISt4pairIllELm1ENS0_18SmallVectorStorageIS3_Lm1EEEED2Ev.exit

_ZN5arrow8internal16StaticVectorImplISt4pairIllELm1ENS0_18SmallVectorStorageIS3_Lm1EEEED2Ev.exit: ; preds = %._crit_edge52, %bb.g
  %i.br = sdiv i64 %.023.lcssa, 8
  %i.bs = getelementptr inbounds i8, ptr %i.bo, i64 %i.br
  %i.bt = srem i64 %.023.lcssa, 8
  %i.bu = trunc nsw i64 %i.bt to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %i.bu, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %i.bs, 1
  ret { i32, ptr } %.fca.1.insert

bb.h:                                             ; preds = %._crit_edge
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %.pre = load i64, ptr %i.c, align 8, !tbaa !159
  br label %bb.i

.lr.ph51:                                         ; preds = %.lr.ph51.prol.loopexit, %.lr.ph51
  %.02249 = phi i64 [ %i.cj, %.lr.ph51 ], [ %.02249.unr, %.lr.ph51.prol.loopexit ]
  %.02348 = phi i64 [ %i.cl, %.lr.ph51 ], [ %.02348.unr, %.lr.ph51.prol.loopexit ]
  %.sroa.032.047 = phi ptr [ %i.ci, %.lr.ph51 ], [ %.sroa.032.047.unr, %.lr.ph51.prol.loopexit ] ; 8 uses
  %i.bw = getelementptr inbounds i8, ptr %.sroa.032.047, i64 -16
  %.sroa.22.0..sroa_idx = getelementptr inbounds i8, ptr %.sroa.032.047, i64 -8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8
  %i.bx = mul nsw i64 %.sroa.22.0.copyload, %.02249 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.bw, align 8
  %i.by = mul nsw i64 %.sroa.0.0.copyload, %i.bx
  %i.bz = add nsw i64 %i.by, %.02348
  %i.ca = getelementptr inbounds i8, ptr %.sroa.032.047, i64 -32
  %.sroa.22.0..sroa_idx.1 = getelementptr inbounds i8, ptr %.sroa.032.047, i64 -24
  %.sroa.22.0.copyload.1 = load i64, ptr %.sroa.22.0..sroa_idx.1, align 8
  %i.cb = mul nsw i64 %.sroa.22.0.copyload.1, %i.bx ; 2 uses
  %.sroa.0.0.copyload.1 = load i64, ptr %i.ca, align 8
  %i.cc = mul nsw i64 %.sroa.0.0.copyload.1, %i.cb
  %i.cd = add nsw i64 %i.cc, %i.bz
  %i.ce = getelementptr inbounds i8, ptr %.sroa.032.047, i64 -48
  %.sroa.22.0..sroa_idx.2 = getelementptr inbounds i8, ptr %.sroa.032.047, i64 -40
  %.sroa.22.0.copyload.2 = load i64, ptr %.sroa.22.0..sroa_idx.2, align 8
  %i.cf = mul nsw i64 %.sroa.22.0.copyload.2, %i.cb ; 2 uses
  %.sroa.0.0.copyload.2 = load i64, ptr %i.ce, align 8
  %i.cg = mul nsw i64 %.sroa.0.0.copyload.2, %i.cf
  %i.ch = add nsw i64 %i.cg, %i.cd
  %i.ci = getelementptr inbounds i8, ptr %.sroa.032.047, i64 -64 ; 3 uses
  %.sroa.22.0..sroa_idx.3 = getelementptr inbounds i8, ptr %.sroa.032.047, i64 -56
  %.sroa.22.0.copyload.3 = load i64, ptr %.sroa.22.0..sroa_idx.3, align 8
  %i.cj = mul nsw i64 %.sroa.22.0.copyload.3, %i.cf ; 2 uses
  %.sroa.0.0.copyload.3 = load i64, ptr %i.ci, align 8
  %i.ck = mul nsw i64 %.sroa.0.0.copyload.3, %i.cj
  %i.cl = add nsw i64 %i.ck, %i.ch                ; 2 uses
  %i.cm = icmp eq ptr %i.ci, %i.bb
  br i1 %i.cm, label %._crit_edge52, label %.lr.ph51, !llvm.loop !189

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.cn = phi i64 [ %i.ar, %bb.e ], [ %.pre, %bb.h ]
  %.pn26 = phi { ptr, i32 } [ %i.as, %bb.e ], [ %i.bv, %bb.h ]
  %.not.i.i.i30 = icmp eq i64 %i.cn, 0
  br i1 %.not.i.i.i30, label %_ZN5arrow8internal16StaticVectorImplISt4pairIllELm1ENS0_18SmallVectorStorageIS3_Lm1EEEED2Ev.exit31, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.co = load ptr, ptr %i.b, align 8, !tbaa !158 ; 2 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %_ZN5arrow8internal16StaticVectorImplISt4pairIllELm1ENS0_18SmallVectorStorageIS3_Lm1EEEED2Ev.exit31, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.co) #18
  br label %_ZN5arrow8internal16StaticVectorImplISt4pairIllELm1ENS0_18SmallVectorStorageIS3_Lm1EEEED2Ev.exit31

_ZN5arrow8internal16StaticVectorImplISt4pairIllELm1ENS0_18SmallVectorStorageIS3_Lm1EEEED2Ev.exit31: ; preds = %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  resume { ptr, i32 } %.pn26
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN5arrow4util35OffsetPointerOfFixedByteWidthValuesERKNS_9ArraySpanE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call { i32, ptr } @_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(128) %0)
  %i.b = extractvalue { i32, ptr } %i.a, 1
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN5arrow4util30MutableFixedWidthValuesPointerEPNS_9ArrayDataE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %.pn6 = load ptr, ptr %0, align 8, !tbaa !49
  %.0.in7 = getelementptr inbounds nuw i8, ptr %.pn6, i64 40
  %.08 = load i32, ptr %.0.in7, align 8, !tbaa !17
  %i.a = icmp eq i32 %.08, 32
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.059 = phi ptr [ %i.d, %.lr.ph ], [ %0, %bb.a ]
  %i.b = getelementptr inbounds nuw i8, ptr %.059, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !142
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !143  ; 3 uses
  %.pn = load ptr, ptr %i.d, align 8, !tbaa !49
  %.0.in = getelementptr inbounds nuw i8, ptr %.pn, i64 40
  %.0 = load i32, ptr %.0.in, align 8, !tbaa !17
  %i.e = icmp eq i32 %.0, 32
  br i1 %i.e, label %.lr.ph, label %._crit_edge, !llvm.loop !190

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.05.lcssa = phi ptr [ %0, %bb.a ], [ %i.d, %.lr.ph ]
  %i.f = getelementptr inbounds nuw i8, ptr %.05.lcssa, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !76
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !191  ; 4 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_il.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 9
  %i.k = load i8, ptr %i.j, align 1, !tbaa !194, !range !113, !noundef !114
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = load i8, ptr %i.m, align 8, !range !113
  %i.o = trunc nuw i8 %i.n to i1
end_hunk_0
