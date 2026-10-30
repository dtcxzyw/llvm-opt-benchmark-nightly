Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/bench?download=true
inline.NumInlined: 54229
inline.NumDeleted: 19446
loop-unroll.NumCompletelyUnrolled: 77
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 107
begin_hunk_0_@_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJSt9monostateN2tl8expectedIbSt4errcEENSt15__exception_ptr13exception_ptrEEEaSEOSB_EUlOT_T0_E_JRSt7variantIJS4_S8_SA_EEEEDcOSF_DpOT1_:bb.a
  store i8 1, ptr %i.d, align 8, !tbaa !1179
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateN2tl8expectedIbSt4errcEENSt15__exception_ptr13exception_ptrEEEaSEOSC_EUlOT_T0_E_RSt7variantIJS5_S9_SB_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SL_.exit

bb.i:                                             ; preds = %bb.a
  %cond.i.i.i.i = icmp eq i8 %i.e, 2
  br i1 %cond.i.i.i.i, label %bb.j, label %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJSt9monostateN2tl8expectedIbSt4errcEENSt15__exception_ptr13exception_ptrEEJS8_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, !prof !1541

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  %i.k = load ptr, ptr %1, align 8, !tbaa !434
  store ptr null, ptr %1, align 8, !tbaa !434
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !434  ; 2 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !434
  store ptr %i.k, ptr %i.c, align 8, !tbaa !434
  %.not.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #43
  br label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i.i

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateN2tl8expectedIbSt4errcEENSt15__exception_ptr13exception_ptrEEEaSEOSC_EUlOT_T0_E_RSt7variantIJS5_S9_SB_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SL_.exit

_ZNSt8__detail9__variant9__emplaceILm2ELb0EJSt9monostateN2tl8expectedIbSt4errcEENSt15__exception_ptr13exception_ptrEEJS8_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %bb.i
  %i.m = load ptr, ptr %1, align 8, !tbaa !434
  store ptr %i.m, ptr %i.c, align 8, !tbaa !434
  store ptr null, ptr %1, align 8, !tbaa !434
  store i8 2, ptr %i.d, align 8, !tbaa !1179
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateN2tl8expectedIbSt4errcEENSt15__exception_ptr13exception_ptrEEEaSEOSC_EUlOT_T0_E_RSt7variantIJS5_S9_SB_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SL_.exit

bb.l:                                             ; preds = %bb.a
  %.not.i.i.i.i.i = icmp eq i8 %i.e, -1
  br i1 %.not.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateN2tl8expectedIbSt4errcEENSt15__exception_ptr13exception_ptrEEEaSEOSC_EUlOT_T0_E_RSt7variantIJS5_S9_SB_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SL_.exit, label %bb.m, !prof !297

bb.m:                                             ; preds = %bb.l
  %i.n = icmp ne i8 %i.e, 2
  %i.o = load ptr, ptr %i.c, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  %or.cond.i.i.i.i.i.i = select i1 %i.n, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN2tl8expectedIbSt4errcEENSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S7_S9_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(9) %i.c) #43
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN2tl8expectedIbSt4errcEENSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S7_S9_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i

_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN2tl8expectedIbSt4errcEENSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S7_S9_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  store i8 -1, ptr %i.d, align 8, !tbaa !1179
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateN2tl8expectedIbSt4errcEENSt15__exception_ptr13exception_ptrEEEaSEOSC_EUlOT_T0_E_RSt7variantIJS5_S9_SB_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SL_.exit

bb.o:                                             ; preds = %bb.a
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateN2tl8expectedIbSt4errcEENSt15__exception_ptr13exception_ptrEEEaSEOSC_EUlOT_T0_E_RSt7variantIJS5_S9_SB_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SL_.exit: ; preds = %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN2tl8expectedIbSt4errcEENSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S7_S9_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i, %bb.l, %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJSt9monostateN2tl8expectedIbSt4errcEENSt15__exception_ptr13exception_ptrEEJS8_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i.i, %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostateN2tl8expectedIbSt4errcEENSt15__exception_ptr13exception_ptrEEJS6_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, %bb.f, %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostateN2tl8expectedIbSt4errcEENSt15__exception_ptr13exception_ptrEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(5) ptr @_ZNO12async_simple4coro6detail11LazyPromiseIN2tl8expectedIbSt4errcEEE6resultEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i8, ptr %i.b, align 8, !tbaa !1179
  switch i8 %i.c, label %bb.g [
    i8 2, label %bb.b
    i8 1, label %_ZSt3getIN2tl8expectedIbSt4errcEEJSt9monostateS3_NSt15__exception_ptr13exception_ptrEEERT_RSt7variantIJDpT0_EE.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i
  ], !prof !1542

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3getINSt15__exception_ptr13exception_ptrEJSt9monostateN2tl8expectedIbSt4errcEES1_EERT_RSt7variantIJDpT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %i.a)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !434  ; 2 uses
  store ptr %i.e, ptr %1, align 8, !tbaa !434
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #43
  br label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %bb.b, %bb.c
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %1) #54
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  unreachable

bb.e:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %1, align 8, !tbaa !434
  %.not.i2 = icmp eq ptr %i.g, null
  br i1 %.not.i2, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #43
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.f

bb.g:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.h, align 8, !tbaa !269
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @.str.262, ptr %i.i, align 8, !tbaa !469
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #54
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i:       ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.j, align 8, !tbaa !269
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @.str.261, ptr %i.k, align 8, !tbaa !469
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #54
  unreachable

_ZSt3getIN2tl8expectedIbSt4errcEEJSt9monostateS3_NSt15__exception_ptr13exception_ptrEEERT_RSt7variantIJDpT0_EE.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3getINSt15__exception_ptr13exception_ptrEJSt9monostateN2tl8expectedIbSt4errcEES1_EERT_RSt7variantIJDpT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1179
  switch i8 %i.b, label %bb.b [
    i8 2, label %_ZSt3getILm2EJSt9monostateN2tl8expectedIbSt4errcEENSt15__exception_ptr13exception_ptrEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSB_.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i
  ], !prof !466

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !269
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @.str.262, ptr %i.d, align 8, !tbaa !469
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #54
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i:         ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.e, align 8, !tbaa !269
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @.str.261, ptr %i.f, align 8, !tbaa !469
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #54
  unreachable

_ZSt3getILm2EJSt9monostateN2tl8expectedIbSt4errcEENSt15__exception_ptr13exception_ptrEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSB_.exit: ; preds = %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3ylt6metric6detail12summary_implImLm6EE6insertEf(ptr noundef nonnull align 8 dereferenceable(44) %0, float noundef %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN3ylt6metric6detail12summary_implImLm6EE7refreshEv(ptr noundef nonnull align 8 dereferenceable(44) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load atomic i32, ptr %i.a seq_cst, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = sext i32 %i.b to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.d ; 3 uses
  %i.f = load atomic ptr, ptr %i.e seq_cst, align 8 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %_ZN3ylt6metric6detail12summary_implImLm6EE8get_dataEv.exit, !prof !297

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noalias noundef nonnull dereferenceable(1024) ptr @_Znwm(i64 noundef 1024) #53 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.h, i8 0, i64 1024, i1 false)
  %i.i = cmpxchg ptr %i.e, ptr null, ptr %i.h seq_cst seq_cst, align 8
  %i.j = extractvalue { ptr, i1 } %i.i, 1
  br i1 %i.j, label %_ZNSt6atomicIPN3ylt6metric6detail12summary_implImLm6EE6data_tEE23compare_exchange_strongERS6_S6_St12memory_order.exit.thread.i, label %_ZNSt6atomicIPN3ylt6metric6detail12summary_implImLm6EE6data_tEE23compare_exchange_strongERS6_S6_St12memory_order.exit.i

_ZNSt6atomicIPN3ylt6metric6detail12summary_implImLm6EE6data_tEE23compare_exchange_strongERS6_S6_St12memory_order.exit.i: ; preds = %bb.b, %bb.d
  %.0.idx9.i.i = phi i64 [ %.0.add.i.i, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %.0.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.0.idx9.i.i
  %i.k = load atomic ptr, ptr %.0.ptr.i.i seq_cst, align 8 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt6atomicIPN3ylt6metric6detail12summary_implImLm6EE6data_tEE23compare_exchange_strongERS6_S6_St12memory_order.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 1024) #52
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNSt6atomicIPN3ylt6metric6detail12summary_implImLm6EE6data_tEE23compare_exchange_strongERS6_S6_St12memory_order.exit.i
  %.0.add.i.i = add nuw nsw i64 %.0.idx9.i.i, 8   ; 2 uses
  %.not.i.i = icmp eq i64 %.0.add.i.i, 1024
  br i1 %.not.i.i, label %_ZN3ylt6metric6detail12summary_implImLm6EE6data_tD2Ev.exit.i, label %_ZNSt6atomicIPN3ylt6metric6detail12summary_implImLm6EE6data_tEE23compare_exchange_strongERS6_S6_St12memory_order.exit.i

_ZN3ylt6metric6detail12summary_implImLm6EE6data_tD2Ev.exit.i: ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 1024) #52
  br label %_ZNSt6atomicIPN3ylt6metric6detail12summary_implImLm6EE6data_tEE23compare_exchange_strongERS6_S6_St12memory_order.exit.thread.i

_ZNSt6atomicIPN3ylt6metric6detail12summary_implImLm6EE6data_tEE23compare_exchange_strongERS6_S6_St12memory_order.exit.thread.i: ; preds = %_ZN3ylt6metric6detail12summary_implImLm6EE6data_tD2Ev.exit.i, %bb.b
  %i.m = load atomic ptr, ptr %i.e seq_cst, align 8
  br label %_ZN3ylt6metric6detail12summary_implImLm6EE8get_dataEv.exit

_ZN3ylt6metric6detail12summary_implImLm6EE8get_dataEv.exit: ; preds = %bb.a, %_ZNSt6atomicIPN3ylt6metric6detail12summary_implImLm6EE6data_tEE23compare_exchange_strongERS6_S6_St12memory_order.exit.thread.i
  %.0.i = phi ptr [ %i.m, %_ZNSt6atomicIPN3ylt6metric6detail12summary_implImLm6EE6data_tEE23compare_exchange_strongERS6_S6_St12memory_order.exit.thread.i ], [ %i.f, %bb.a ]
  %i.n = tail call noundef float @llvm.fabs.f32(float %1)
  %2 = fcmp oge float %i.n, f0x5F800000
  %3 = fcmp uno float %1, 0.000000e+00
  %or.cond.i = or i1 %3, %2
  %i.o = tail call float @llvm.copysign.f32(float f0x5F800000, float %1)
  %.0.i3 = select i1 %or.cond.i, float %i.o, float %1
  %i.p = bitcast float %.0.i3 to i32              ; 3 uses
  %i.q = lshr i32 %i.p, 24
  %i.r = and i32 %i.q, 128
  %i.s = lshr i32 %i.p, 23                        ; 2 uses
  %i.t = and i32 %i.s, 255
  %i.u = xor i32 %i.s, 64
  %i.v = sub nsw i32 64, %i.t
  %i.w = lshr i32 %i.v, 25
  %i.x = and i32 %i.w, %i.u
  %i.y = or disjoint i32 %i.x, %i.r
  %i.z = shl nuw nsw i32 %i.y, 8
  %i.aa = lshr i32 %i.p, 15
  %i.ab = and i32 %i.aa, 252
  %i.ac = or disjoint i32 %i.z, %i.ab
  %i.ad = lshr exact i32 %i.ac, 2
  %i.ae = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.af = lshr i64 %i.ae, 7
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.af ; 3 uses
  %i.ah = load atomic ptr, ptr %i.ag seq_cst, align 8 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.e, label %_ZN3ylt6metric6detail12summary_implImLm6EE8increaseERNS3_6data_tEt.exit

bb.e:                                             ; preds = %_ZN3ylt6metric6detail12summary_implImLm6EE8get_dataEv.exit
  %i.aj = tail call noalias noundef nonnull dereferenceable(1024) ptr @_Znwm(i64 noundef 1024) #53 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.aj, i8 0, i64 1024, i1 false)
  %i.ak = cmpxchg ptr %i.ag, ptr null, ptr %i.aj seq_cst seq_cst, align 8
  %i.al = extractvalue { ptr, i1 } %i.ak, 1
  br i1 %i.al, label %_ZNSt6atomicIPSt5arrayIS_ImELm128EEE23compare_exchange_strongERS3_S3_St12memory_order.exit.thread.i.i, label %_ZNSt6atomicIPSt5arrayIS_ImELm128EEE23compare_exchange_strongERS3_S3_St12memory_order.exit.i.i

_ZNSt6atomicIPSt5arrayIS_ImELm128EEE23compare_exchange_strongERS3_S3_St12memory_order.exit.i.i: ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 1024) #52
  br label %_ZNSt6atomicIPSt5arrayIS_ImELm128EEE23compare_exchange_strongERS3_S3_St12memory_order.exit.thread.i.i

_ZNSt6atomicIPSt5arrayIS_ImELm128EEE23compare_exchange_strongERS3_S3_St12memory_order.exit.thread.i.i: ; preds = %_ZNSt6atomicIPSt5arrayIS_ImELm128EEE23compare_exchange_strongERS3_S3_St12memory_order.exit.i.i, %bb.e
  %i.am = load atomic ptr, ptr %i.ag seq_cst, align 8
  br label %_ZN3ylt6metric6detail12summary_implImLm6EE8increaseERNS3_6data_tEt.exit

_ZN3ylt6metric6detail12summary_implImLm6EE8increaseERNS3_6data_tEt.exit: ; preds = %_ZN3ylt6metric6detail12summary_implImLm6EE8get_dataEv.exit, %_ZNSt6atomicIPSt5arrayIS_ImELm128EEE23compare_exchange_strongERS3_S3_St12memory_order.exit.thread.i.i
  %.sink.i.i = phi ptr [ %i.am, %_ZNSt6atomicIPSt5arrayIS_ImELm128EEE23compare_exchange_strongERS3_S3_St12memory_order.exit.thread.i.i ], [ %i.ah, %_ZN3ylt6metric6detail12summary_implImLm6EE8get_dataEv.exit ]
  %i.an = and i64 %i.ae, 127
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %i.an
  %i.ap = atomicrmw add ptr %i.ao, i64 1 monotonic, align 8 ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #37

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12async_simple3TryISt6vectorINS0_IvEESaIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !445
  switch i8 %i.b, label %bb.g [
    i8 -1, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateSt6vectorIN12async_simple3TryIvEESaIS6_EENSt15__exception_ptr13exception_ptrEEED2Ev.exit
    i8 0, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateSt6vectorIN12async_simple3TryIvEESaIS6_EENSt15__exception_ptr13exception_ptrEEED2Ev.exit
    i8 1, label %bb.b
    i8 2, label %bb.e
  ], !prof !312

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !448    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !449  ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN12async_simple3TryIvEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.b, %_ZSt8_DestroyIN12async_simple3TryIvEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.g, %_ZSt8_DestroyIN12async_simple3TryIvEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.c, %bb.b ] ; 3 uses
  %i.f = load ptr, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !434
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN12async_simple3TryIvEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.05.i.i.i.i.i.i.i.i.i.i.i.i) #43
  br label %_ZSt8_DestroyIN12async_simple3TryIvEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIN12async_simple3TryIvEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, %i.e
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN12async_simple3TryIvEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !12

_ZSt8_DestroyIPN12async_simple3TryIvEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN12async_simple3TryIvEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !448
  br label %_ZSt8_DestroyIPN12async_simple3TryIvEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIPN12async_simple3TryIvEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN12async_simple3TryIvEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i, %bb.b
  %i.h = phi ptr [ %.pr.i.i.i.i.i.i.i.i.i.i, %_ZSt8_DestroyIPN12async_simple3TryIvEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i ], [ %i.c, %bb.b ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateSt6vectorIN12async_simple3TryIvEESaIS6_EENSt15__exception_ptr13exception_ptrEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN12async_simple3TryIvEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !450
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #52
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateSt6vectorIN12async_simple3TryIvEESaIS6_EENSt15__exception_ptr13exception_ptrEEED2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %0, align 8, !tbaa !434
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateSt6vectorIN12async_simple3TryIvEESaIS6_EENSt15__exception_ptr13exception_ptrEEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(25) %0) #43
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateSt6vectorIN12async_simple3TryIvEESaIS6_EENSt15__exception_ptr13exception_ptrEEED2Ev.exit

bb.g:                                             ; preds = %bb.a
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateSt6vectorIN12async_simple3TryIvEESaIS6_EENSt15__exception_ptr13exception_ptrEEED2Ev.exit: ; preds = %bb.a, %bb.a, %_ZSt8_DestroyIPN12async_simple3TryIvEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i, %bb.d, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN12async_simple3TryIvEESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !448    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !449  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN12async_simple3TryIvEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN12async_simple3TryIvEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.e, %_ZSt8_DestroyIN12async_simple3TryIvEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !434
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN12async_simple3TryIvEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.05.i.i) #43
  br label %_ZSt8_DestroyIN12async_simple3TryIvEEEvPT_.exit.i.i

_ZSt8_DestroyIN12async_simple3TryIvEEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN12async_simple3TryIvEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !12

_ZSt8_DestroyIPN12async_simple3TryIvEES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN12async_simple3TryIvEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !448
  br label %_ZSt8_DestroyIPN12async_simple3TryIvEES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN12async_simple3TryIvEES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN12async_simple3TryIvEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.f = phi ptr [ %.pr, %_ZSt8_DestroyIPN12async_simple3TryIvEES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.f, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN12async_simple3TryIvEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN12async_simple3TryIvEES2_EvT_S4_RSaIT0_E.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !450
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #52
  br label %_ZNSt12_Vector_baseIN12async_simple3TryIvEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN12async_simple3TryIvEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN12async_simple3TryIvEES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12async_simple4coro6detail11LazyPromiseIN2tl8expectedINS0_4LazyINS4_IN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS6_9rpc_errorEEEEESt4errcEEE12return_valueISF_EEvOT_Qsr3stdE16is_convertible_vIOTL0__SK_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !2736
  switch i8 %i.c, label %bb.h [
    i8 -1, label %_ZNSt7variantIJSt9monostateN2tl8expectedIN12async_simple4coro4LazyINS2_IN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS6_9rpc_errorEEEEESt4errcEENSt15__exception_ptr13exception_ptrEEE7emplaceISH_JSF_EEENSt9enable_ifIXaa18is_constructible_vIT_DpT0_E14__exactly_onceISN_EERSN_E4typeEDpOSO_.exit
    i8 0, label %_ZNSt7variantIJSt9monostateN2tl8expectedIN12async_simple4coro4LazyINS2_IN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS6_9rpc_errorEEEEESt4errcEENSt15__exception_ptr13exception_ptrEEE7emplaceISH_JSF_EEENSt9enable_ifIXaa18is_constructible_vIT_DpT0_E14__exactly_onceISN_EERSN_E4typeEDpOSO_.exit
    i8 1, label %bb.b
    i8 2, label %bb.f
  ], !prof !312

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i8, ptr %i.d, align 8, !tbaa !2738, !range !346, !noundef !347
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZNSt7variantIJSt9monostateN2tl8expectedIN12async_simple4coro4LazyINS2_IN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS6_9rpc_errorEEEEESt4errcEENSt15__exception_ptr13exception_ptrEEE7emplaceISH_JSF_EEENSt9enable_ifIXaa18is_constructible_vIT_DpT0_E14__exactly_onceISN_EERSN_E4typeEDpOSO_.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1882 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt7variantIJSt9monostateN2tl8expectedIN12async_simple4coro4LazyINS2_IN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS6_9rpc_errorEEEEESt4errcEENSt15__exception_ptr13exception_ptrEEE7emplaceISH_JSF_EEENSt9enable_ifIXaa18is_constructible_vIT_DpT0_E14__exactly_onceISN_EERSN_E4typeEDpOSO_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr nonnull %i.g)
          to label %_ZNSt7variantIJSt9monostateN2tl8expectedIN12async_simple4coro4LazyINS2_IN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS6_9rpc_errorEEEEESt4errcEENSt15__exception_ptr13exception_ptrEEE7emplaceISH_JSF_EEENSt9enable_ifIXaa18is_constructible_vIT_DpT0_E14__exactly_onceISN_EERSN_E4typeEDpOSO_.exit unwind label %bb.e, !inline_history !111

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #51
  unreachable
end_hunk_0
