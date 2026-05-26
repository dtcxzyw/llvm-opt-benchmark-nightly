inline.NumInlined: 1584
inline.NumDeleted: 649
begin_hunk_0_@_ZN6hermes2vm23ExternalStringPrimitiveIDsE15createLongLivedERNS0_7RuntimeEONSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE:bb.a

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @_ZN6hermes2vm7HadesGC19pauseBackgroundTaskEv(ptr dead_on_unwind nonnull writable sret(%"class.std::lock_guard") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8112) %i.i) #16
  %i.x = call noundef ptr @_ZN6hermes2vm7HadesGC14allocLongLivedEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.i, i32 noundef 48) #16 ; 8 uses
  %i.y = load i64, ptr %i.a, align 8, !tbaa !35   ; 3 uses
  %i.z = trunc i64 %i.y to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i32 536870911, ptr %i.ab, align 4, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 5 uses
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !42
  %i.ae = load ptr, ptr %1, align 8, !tbaa !30    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.k
  br i1 %i.af, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ag = icmp ult i64 %i.y, 8
  call void @llvm.assume(i1 %i.ag)
  %i.ah = shl nuw nsw i64 %i.y, 1
  %i.ai = add nuw nsw i64 %i.ah, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.ai, i1 false)
  br label %_ZN6hermes2vm7Runtime13makeAVariableINS0_23ExternalStringPrimitiveIDsEELNS0_12HasFinalizerE1ELNS0_9LongLivedE1EJNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEEPT_jDpOT2_.exit

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !30
  %i.aj = load i64, ptr %i.k, align 8, !tbaa !24
  store i64 %i.aj, ptr %i.ad, align 8, !tbaa !24
  br label %_ZN6hermes2vm7Runtime13makeAVariableINS0_23ExternalStringPrimitiveIDsEELNS0_12HasFinalizerE1ELNS0_9LongLivedE1EJNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEEPT_jDpOT2_.exit

_ZN6hermes2vm7Runtime13makeAVariableINS0_23ExternalStringPrimitiveIDsEELNS0_12HasFinalizerE1ELNS0_9LongLivedE1EJNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEEPT_jDpOT2_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !35
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !35
  store ptr %i.k, ptr %1, align 8, !tbaa !30
  store i64 0, ptr %i.a, align 8, !tbaa !35
  store i16 0, ptr %i.k, align 8, !tbaa !14
  store i32 150994992, ptr %i.x, align 8, !tbaa !24
  %i.am = load ptr, ptr %2, align 8, !tbaa !25, !nonnull !28, !align !29
  %i.an = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.am) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.ao = load ptr, ptr %i.ac, align 8, !tbaa !30
  %i.ap = icmp eq ptr %i.ao, %i.ad
  %i.aq = load i64, ptr %i.ad, align 8
  %.tr = trunc i64 %i.aq to i32
  %i.ar = shl i32 %.tr, 1
  %i.as = select i1 %i.ap, i32 14, i32 %i.ar
  call void @_ZN6hermes2vm7HadesGC20creditExternalMemoryEPNS0_6GCCellEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.i, ptr noundef nonnull %i.x, i32 noundef %i.as) #16
  %i.at = ptrtoint ptr %i.x to i64
  %i.au = or i64 %i.at, -844424930131968
  br label %bb.f

bb.f:                                             ; preds = %_ZN6hermes2vm7Runtime13makeAVariableINS0_23ExternalStringPrimitiveIDsEELNS0_12HasFinalizerE1ELNS0_9LongLivedE1EJNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEEPT_jDpOT2_.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit12, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.4.0 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %i.au, %_ZN6hermes2vm7Runtime13makeAVariableINS0_23ExternalStringPrimitiveIDsEELNS0_12HasFinalizerE1ELNS0_9LongLivedE1EJNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEEPT_jDpOT2_.exit ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit12 ]
  %.sroa.0.0 = phi i32 [ %i.h, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %_ZN6hermes2vm7Runtime13makeAVariableINS0_23ExternalStringPrimitiveIDsEELNS0_12HasFinalizerE1ELNS0_9LongLivedE1EJNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEEPT_jDpOT2_.exit ], [ %i.w, %_ZN6hermes2vm11TwineChar16C2EPKc.exit12 ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.4.0, 1
  ret { i32, i64 } %.fca.1.insert
}

declare noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6hermes2vm7HadesGC22canAllocExternalMemoryEj(ptr noundef nonnull align 8 dereferenceable(8112), i32 noundef) unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC20creditExternalMemoryEPNS0_6GCCellEj(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string.162", align 8 ; 10 uses
  %i.a = icmp ugt i32 %1, 268435456
  br i1 %i.a, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, label %bb.b, !prof !23

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 1, ptr %i.b, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 27, ptr %i.c, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 0, ptr %i.d, align 8, !tbaa !40
  store ptr @.str, ptr %2, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 3, ptr %i.e, align 8, !tbaa !41
  %i.f = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.g = shl nuw nsw i32 %1, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 3 uses
  %i.i = tail call noundef zeroext i1 @_ZN6hermes2vm7HadesGC22canAllocExternalMemoryEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.h, i32 noundef %i.g) #16
  br i1 %i.i, label %bb.c, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit8, !prof !13

_ZN6hermes2vm11TwineChar16C2EPKc.exit8:           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.j, align 8, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 45, ptr %i.k, align 8, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.l, align 8, !tbaa !40
  store ptr @.str.1, ptr %3, align 8, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.m, align 8, !tbaa !41
  %i.n = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.o = zext nneg i32 %1 to i64                  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 15 uses
  store ptr %i.p, ptr %4, align 8, !tbaa !42
  %i.q = icmp samesign ugt i32 %1, 7
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = shl nuw nsw i64 %i.o, 1                  ; 2 uses
  %i.s = add nuw nsw i64 %i.r, 2
  %i.t = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #18 ; 2 uses
  store ptr %i.t, ptr %4, align 8, !tbaa !30
  store i64 %i.o, ptr %i.p, align 8, !tbaa !24
  br label %.lr.ph.i.i.preheader.i.i

bb.e:                                             ; preds = %bb.c
  switch i32 %1, label %..lr.ph.i.i.preheader.i.i_crit_edge [
    i32 0, label %.loopexit
    i32 1, label %bb.f
  ]

..lr.ph.i.i.preheader.i.i_crit_edge:              ; preds = %bb.e
  %.pre = shl nuw nsw i64 %i.o, 1
  br label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %..lr.ph.i.i.preheader.i.i_crit_edge, %bb.d
  %.pre-phi = phi i64 [ %.pre, %..lr.ph.i.i.preheader.i.i_crit_edge ], [ %i.r, %bb.d ]
  %i.u = phi ptr [ %i.p, %..lr.ph.i.i.preheader.i.i_crit_edge ], [ %i.t, %bb.d ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.u, i8 0, i64 %.pre-phi, i1 false), !tbaa !14
  br label %.loopexit

bb.f:                                             ; preds = %bb.e
  store i16 0, ptr %i.p, align 8, !tbaa !14
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i.preheader.i.i, %bb.f, %bb.e
  %i.v = phi ptr [ %i.p, %bb.e ], [ %i.p, %bb.f ], [ %i.u, %.lr.ph.i.i.preheader.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 %i.o, ptr %i.w, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.o
  store i16 0, ptr %i.x, align 2, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !16   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !22
  %.not.i.not.i.i = icmp ugt ptr %i.aa, %i.ac
  br i1 %.not.i.not.i.i, label %bb.g, label %bb.h, !prof !23

bb.g:                                             ; preds = %.loopexit
  %i.ad = call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.h, i32 noundef 48) #16
  br label %bb.i

bb.h:                                             ; preds = %.loopexit
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ae = phi ptr [ %i.ad, %bb.g ], [ %i.z, %bb.h ] ; 12 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1672 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1680 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !43 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1688 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !47
  %.not.i4.i.i = icmp eq ptr %i.ah, %i.aj
  br i1 %.not.i4.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !48
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.ak, ptr %i.ag, align 8, !tbaa !43
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb0ELNS0_12HasFinalizerE1EEEPvj.exit.i

bb.k:                                             ; preds = %bb.i
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !50 ; 4 uses
  %i.am = ptrtoint ptr %i.ah to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 6 uses
  %i.ap = icmp eq i64 %i.ao, 9223372036854775800
  br i1 %i.ap, label %bb.l, label %_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #19
  unreachable

_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.k
  %i.aq = ashr exact i64 %i.ao, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %i.ar = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.aq ; 2 uses
  %5 = icmp ult i64 %i.ar, %i.aq
  %i.as = call i64 @llvm.umin.i64(i64 %i.ar, i64 1152921504606846975)
  %6 = select i1 %5, i64 1152921504606846975, i64 %i.as ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %6, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.at = shl nuw nsw i64 %6, 3
  %i.au = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #18 ; 4 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.ao ; 2 uses
  store ptr %i.ae, ptr %i.av, align 8, !tbaa !48
  %i.aw = icmp sgt i64 %i.ao, 0
  br i1 %i.aw, label %bb.m, label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i

bb.m:                                             ; preds = %_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.au, ptr align 8 %i.al, i64 %i.ao, i1 false)
  br label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i

_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i: ; preds = %bb.m, %_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.not.i17.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ao) #17
  br label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i

_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i: ; preds = %bb.n, %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i
  store ptr %i.au, ptr %i.af, align 8, !tbaa !50
  store ptr %i.ax, ptr %i.ag, align 8, !tbaa !43
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %6
  store ptr %i.ay, ptr %i.ai, align 8, !tbaa !47
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb0ELNS0_12HasFinalizerE1EEEPvj.exit.i

_ZN6hermes2vm7HadesGC9allocWorkILb0ELNS0_12HasFinalizerE1EEEPvj.exit.i: ; preds = %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, %bb.j
  %i.az = load i64, ptr %i.w, align 8, !tbaa !35  ; 6 uses
  %i.ba = trunc i64 %i.az to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i32 536870911, ptr %i.bc, align 4, !tbaa !11
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 5 uses
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !42
  %i.bf = load ptr, ptr %4, align 8, !tbaa !30    ; 3 uses
  %i.bg = icmp eq ptr %i.bf, %i.p
  br i1 %i.bg, label %_ZN6hermes2vm7HadesGC5makeAINS0_23ExternalStringPrimitiveIDsEELb0ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEEPT_jDpOT3_.exit.thread, label %_ZN6hermes2vm7HadesGC5makeAINS0_23ExternalStringPrimitiveIDsEELb0ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEEPT_jDpOT3_.exit

_ZN6hermes2vm7HadesGC5makeAINS0_23ExternalStringPrimitiveIDsEELb0ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEEPT_jDpOT3_.exit.thread: ; preds = %_ZN6hermes2vm7HadesGC9allocWorkILb0ELNS0_12HasFinalizerE1EEEPvj.exit.i
  %i.bh = icmp ult i64 %i.az, 8
  call void @llvm.assume(i1 %i.bh)
  %i.bi = shl nuw nsw i64 %i.az, 1
  %i.bj = add nuw nsw i64 %i.bi, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.bj, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i64 %i.az, ptr %i.bk, align 8, !tbaa !35
  store ptr %i.p, ptr %4, align 8, !tbaa !30
  store i64 0, ptr %i.w, align 8, !tbaa !35
  store i16 0, ptr %i.p, align 8, !tbaa !14
  store i32 150994992, ptr %i.ae, align 8, !tbaa !24
  br label %bb.o

_ZN6hermes2vm7HadesGC5makeAINS0_23ExternalStringPrimitiveIDsEELb0ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEEPT_jDpOT3_.exit: ; preds = %_ZN6hermes2vm7HadesGC9allocWorkILb0ELNS0_12HasFinalizerE1EEEPvj.exit.i
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !30
  %i.bl = load i64, ptr %i.p, align 8, !tbaa !24
  store i64 %i.bl, ptr %i.be, align 8, !tbaa !24
  %i.bm = icmp eq ptr %i.bf, %i.be
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i64 %i.az, ptr %i.bn, align 8, !tbaa !35
  store ptr %i.p, ptr %4, align 8, !tbaa !30
  store i64 0, ptr %i.w, align 8, !tbaa !35
  store i16 0, ptr %i.p, align 8, !tbaa !14
  store i32 150994992, ptr %i.ae, align 8, !tbaa !24
  br i1 %i.bm, label %bb.o, label %_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_.exit

bb.o:                                             ; preds = %_ZN6hermes2vm7HadesGC5makeAINS0_23ExternalStringPrimitiveIDsEELb0ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEEPT_jDpOT3_.exit.thread, %_ZN6hermes2vm7HadesGC5makeAINS0_23ExternalStringPrimitiveIDsEELb0ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEEPT_jDpOT3_.exit
  %i.bo = icmp ult i64 %i.az, 8
  call void @llvm.assume(i1 %i.bo)
  br label %_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_.exit

_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_.exit: ; preds = %_ZN6hermes2vm7HadesGC5makeAINS0_23ExternalStringPrimitiveIDsEELb0ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEEPT_jDpOT3_.exit, %bb.o
  %i.bp = phi i1 [ false, %_ZN6hermes2vm7HadesGC5makeAINS0_23ExternalStringPrimitiveIDsEELb0ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEEPT_jDpOT3_.exit ], [ true, %bb.o ]
  %i.bq = load i64, ptr %i.be, align 8
  %.tr.i = trunc i64 %i.bq to i32
  %i.br = shl i32 %.tr.i, 1
  %i.bs = select i1 %i.bp, i32 14, i32 %i.br
  call void @_ZN6hermes2vm7HadesGC20creditExternalMemoryEPNS0_6GCCellEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.h, ptr noundef nonnull %i.ae, i32 noundef %i.bs) #16
  %i.bt = ptrtoint ptr %i.ae to i64
  %i.bu = or i64 %i.bt, -844424930131968
  %i.bv = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.p
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_.exit
  %i.bx = load i64, ptr %i.p, align 8, !tbaa !24
  %i.by = shl i64 %i.bx, 1
  %i.bz = add i64 %i.by, 2
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #17
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit: ; preds = %_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_.exit, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.p

bb.p:                                             ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit8, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.09.0 = phi i32 [ %i.f, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit ], [ %i.n, %_ZN6hermes2vm11TwineChar16C2EPKc.exit8 ]
  %.sroa.4.0 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %i.bu, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit8 ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.09.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.4.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !35
  %i.c = icmp ugt i64 %i.b, 268435456
  br i1 %i.c, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, label %_ZNK6hermes2vm23ExternalStringPrimitiveIDsE22calcExternalMemorySizeEv.exit, !prof !23

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 1, ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 27, ptr %i.e, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 0, ptr %i.f, align 8, !tbaa !40
  store ptr @.str, ptr %2, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 3, ptr %i.g, align 8, !tbaa !41
  %i.h = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.b

_ZNK6hermes2vm23ExternalStringPrimitiveIDsE22calcExternalMemorySizeEv.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.j = tail call noundef ptr @_ZN6hermes2vm7HadesGC5makeAINS0_23ExternalStringPrimitiveIDsEELb0ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEEPT_jDpOT3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.i, i32 noundef 48, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  %i.o = load i64, ptr %i.m, align 8
  %.tr = trunc i64 %i.o to i32
  %i.p = shl i32 %.tr, 1
  %i.q = select i1 %i.n, i32 14, i32 %i.p
  tail call void @_ZN6hermes2vm7HadesGC20creditExternalMemoryEPNS0_6GCCellEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.i, ptr noundef nonnull %i.j, i32 noundef %i.q) #16
  %i.r = ptrtoint ptr %i.j to i64
  %i.s = or i64 %i.r, -844424930131968
  br label %bb.b

bb.b:                                             ; preds = %_ZNK6hermes2vm23ExternalStringPrimitiveIDsE22calcExternalMemorySizeEv.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.3.0 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %i.s, %_ZNK6hermes2vm23ExternalStringPrimitiveIDsE22calcExternalMemorySizeEv.exit ]
  %.sroa.0.0 = phi i32 [ %i.h, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %_ZNK6hermes2vm23ExternalStringPrimitiveIDsE22calcExternalMemorySizeEv.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK6hermes2vm23ExternalStringPrimitiveIDsE13getRawPointerEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN6hermes2vm23ExternalStringPrimitiveIDsE21getRawPointerForWriteEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  ret ptr %i.b
}

declare void @_ZN6hermes2vm6GCBase9IDTracker13untrackNativeEPKv(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC19debitExternalMemoryEPNS0_6GCCellEj(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm23ExternalStringPrimitiveIcE11getCellKindEv() local_unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 10
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN6hermes2vm23ExternalStringPrimitiveIcE7classofEPKNS0_6GCCellE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %.mask = and i32 %i.a, -16777216
  %i.b = icmp eq i32 %.mask, 167772160
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6hermes2vm23ExternalStringPrimitiveIcE13_finalizeImplEPNS0_6GCCellERNS0_7HadesGCE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8112) %1) #0 comdat align 2 {
_ZNK6hermes2vm23ExternalStringPrimitiveIcE22calcExternalMemorySizeEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !51
  tail call void @_ZN6hermes2vm6GCBase9IDTracker13untrackNativeEPKv(ptr noundef nonnull align 8 dereferenceable(200) %i.a, ptr noundef %i.c) #16
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.f = icmp eq ptr %i.d, %i.e
  %i.g = load i64, ptr %i.e, align 8
  %i.h = trunc i64 %i.g to i32
  %i.i = select i1 %i.f, i32 15, i32 %i.h
  tail call void @_ZN6hermes2vm7HadesGC19debitExternalMemoryEPNS0_6GCCellEj(ptr noundef nonnull align 8 dereferenceable(8112) %1, ptr noundef nonnull %0, i32 noundef %i.i) #16
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !51   ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.e
  br i1 %i.k, label %_ZN6hermes2vm23ExternalStringPrimitiveIcED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNK6hermes2vm23ExternalStringPrimitiveIcE22calcExternalMemorySizeEv.exit
  %i.l = load i64, ptr %i.e, align 8, !tbaa !24
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #17
  br label %_ZN6hermes2vm23ExternalStringPrimitiveIcED2Ev.exit

_ZN6hermes2vm23ExternalStringPrimitiveIcED2Ev.exit: ; preds = %_ZNK6hermes2vm23ExternalStringPrimitiveIcE22calcExternalMemorySizeEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i64 @_ZN6hermes2vm23ExternalStringPrimitiveIcE15_mallocSizeImplEPNS0_6GCCellE(ptr noundef %0) #0 comdat align 2 {
_ZNK6hermes2vm23ExternalStringPrimitiveIcE22calcExternalMemorySizeEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  %i.e = load i64, ptr %i.c, align 8
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm23ExternalStringPrimitiveIcE15createLongLivedERNS0_7RuntimeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.b, %bb.c
  %i.n = load i64, ptr %i.k, align 8
  %i.o = trunc i64 %i.n to i32
  %i.p = select i1 %i.l, i32 15, i32 %i.o
  %i.q = tail call noundef zeroext i1 @_ZN6hermes2vm7HadesGC22canAllocExternalMemoryEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.i, i32 noundef %i.p) #16
  br i1 %i.q, label %bb.d, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit12, !prof !13

_ZN6hermes2vm11TwineChar16C2EPKc.exit12:          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.r, align 8, !tbaa !36
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 45, ptr %i.s, align 8, !tbaa !39
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.t, align 8, !tbaa !40
  store ptr @.str.1, ptr %4, align 8, !tbaa !24
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.u, align 8, !tbaa !41
  %i.v = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.f

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @_ZN6hermes2vm7HadesGC19pauseBackgroundTaskEv(ptr dead_on_unwind nonnull writable sret(%"class.std::lock_guard") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8112) %i.i) #16
  %i.w = call noundef ptr @_ZN6hermes2vm7HadesGC14allocLongLivedEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.i, i32 noundef 48) #16 ; 8 uses
  %i.x = load i64, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %i.y = trunc i64 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 %i.y, ptr %i.z, align 4, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 536870911, ptr %i.aa, align 4, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 5 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !55
  %i.ad = load ptr, ptr %1, align 8, !tbaa !51    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.k
  br i1 %i.ae, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.af = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.af)
  %i.ag = add nuw nsw i64 %i.x, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.ag, i1 false)
  br label %_ZN6hermes2vm7Runtime13makeAVariableINS0_23ExternalStringPrimitiveIcEELNS0_12HasFinalizerE1ELNS0_9LongLivedE1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPT_jDpOT2_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !51
  %i.ah = load i64, ptr %i.k, align 8, !tbaa !24
  store i64 %i.ah, ptr %i.ac, align 8, !tbaa !24
  br label %_ZN6hermes2vm7Runtime13makeAVariableINS0_23ExternalStringPrimitiveIcEELNS0_12HasFinalizerE1ELNS0_9LongLivedE1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPT_jDpOT2_.exit

_ZN6hermes2vm7Runtime13makeAVariableINS0_23ExternalStringPrimitiveIcEELNS0_12HasFinalizerE1ELNS0_9LongLivedE1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPT_jDpOT2_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !54
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !54
  store ptr %i.k, ptr %1, align 8, !tbaa !51
  store i64 0, ptr %i.a, align 8, !tbaa !54
  store i8 0, ptr %i.k, align 8, !tbaa !24
  store i32 167772208, ptr %i.w, align 8, !tbaa !24
  %i.ak = load ptr, ptr %2, align 8, !tbaa !25, !nonnull !28, !align !29
  %i.al = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ak) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.am = load ptr, ptr %i.ab, align 8, !tbaa !51
  %i.an = icmp eq ptr %i.am, %i.ac
  %i.ao = load i64, ptr %i.ac, align 8
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = select i1 %i.an, i32 15, i32 %i.ap
  call void @_ZN6hermes2vm7HadesGC20creditExternalMemoryEPNS0_6GCCellEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.i, ptr noundef nonnull %i.w, i32 noundef %i.aq) #16
  %i.ar = ptrtoint ptr %i.w to i64
  %i.as = or i64 %i.ar, -844424930131968
  br label %bb.f

bb.f:                                             ; preds = %_ZN6hermes2vm7Runtime13makeAVariableINS0_23ExternalStringPrimitiveIcEELNS0_12HasFinalizerE1ELNS0_9LongLivedE1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPT_jDpOT2_.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit12, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.4.0 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %i.as, %_ZN6hermes2vm7Runtime13makeAVariableINS0_23ExternalStringPrimitiveIcEELNS0_12HasFinalizerE1ELNS0_9LongLivedE1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPT_jDpOT2_.exit ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit12 ]
  %.sroa.0.0 = phi i32 [ %i.h, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %_ZN6hermes2vm7Runtime13makeAVariableINS0_23ExternalStringPrimitiveIcEELNS0_12HasFinalizerE1ELNS0_9LongLivedE1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPT_jDpOT2_.exit ], [ %i.v, %_ZN6hermes2vm11TwineChar16C2EPKc.exit12 ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.4.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIcE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = icmp ugt i32 %1, 268435456
  br i1 %i.a, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, label %bb.b, !prof !23

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.b, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 27, ptr %i.c, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.d, align 8, !tbaa !40
  store ptr @.str, ptr %3, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.e, align 8, !tbaa !41
  %i.f = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 3 uses
  %i.h = tail call noundef zeroext i1 @_ZN6hermes2vm7HadesGC22canAllocExternalMemoryEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.g, i32 noundef %1) #16
  br i1 %i.h, label %bb.c, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit8, !prof !13

_ZN6hermes2vm11TwineChar16C2EPKc.exit8:           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.i, align 8, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 45, ptr %i.j, align 8, !tbaa !39
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.k, align 8, !tbaa !40
  store ptr @.str.1, ptr %4, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.l, align 8, !tbaa !41
  %i.m = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.n = zext nneg i32 %1 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.o, ptr %5, align 8, !tbaa !55
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.n, i8 noundef signext 0) #16
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !54
  %i.r = icmp ugt i64 %i.q, 268435456
  br i1 %i.r, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i, label %bb.d, !prof !23

_ZN6hermes2vm11TwineChar16C2EPKc.exit.i:          ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 1, ptr %i.s, align 8, !tbaa !36
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 27, ptr %i.t, align 8, !tbaa !39
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 0, ptr %i.u, align 8, !tbaa !40
  store ptr @.str, ptr %2, align 8, !tbaa !24
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 3, ptr %i.v, align 8, !tbaa !41
  %i.w = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %_ZN6hermes2vm23ExternalStringPrimitiveIcE6createINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_.exit

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !16   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !22
  %.not.i.not.i.i = icmp ugt ptr %i.z, %i.ab
  br i1 %.not.i.not.i.i, label %bb.e, label %bb.f, !prof !23

bb.e:                                             ; preds = %bb.d
  %i.ac = call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.g, i32 noundef 48) #16
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store ptr %i.z, ptr %i.x, align 8, !tbaa !16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ad = phi ptr [ %i.ac, %bb.e ], [ %i.y, %bb.f ] ; 10 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1672 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1680 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !43 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1688 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !47
  %.not.i4.i.i = icmp eq ptr %i.ag, %i.ai
  br i1 %.not.i4.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.ad, ptr %i.ag, align 8, !tbaa !48
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.aj, ptr %i.af, align 8, !tbaa !43
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb0ELNS0_12HasFinalizerE1EEEPvj.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !50 ; 4 uses
  %i.al = ptrtoint ptr %i.ag to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am                    ; 6 uses
  %i.ao = icmp eq i64 %i.an, 9223372036854775800
  br i1 %i.ao, label %bb.j, label %_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #19
  unreachable

_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.i
  %i.ap = ashr exact i64 %i.an, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ap, i64 1)
  %i.aq = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ap ; 2 uses
  %6 = icmp ult i64 %i.aq, %i.ap
  %i.ar = call i64 @llvm.umin.i64(i64 %i.aq, i64 1152921504606846975)
  %7 = select i1 %6, i64 1152921504606846975, i64 %i.ar ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %7, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.as = shl nuw nsw i64 %7, 3
  %i.at = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #18 ; 4 uses
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %i.an ; 2 uses
  store ptr %i.ad, ptr %i.au, align 8, !tbaa !48
  %i.av = icmp sgt i64 %i.an, 0
  br i1 %i.av, label %bb.k, label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.at, ptr align 8 %i.ak, i64 %i.an, i1 false)
  br label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i

_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i: ; preds = %bb.k, %_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.not.i17.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.an) #17
  br label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i

_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i: ; preds = %bb.l, %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i
  store ptr %i.at, ptr %i.ae, align 8, !tbaa !50
  store ptr %i.aw, ptr %i.af, align 8, !tbaa !43
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %7
  store ptr %i.ax, ptr %i.ah, align 8, !tbaa !47
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb0ELNS0_12HasFinalizerE1EEEPvj.exit.i

_ZN6hermes2vm7HadesGC9allocWorkILb0ELNS0_12HasFinalizerE1EEEPvj.exit.i: ; preds = %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, %bb.h
  %i.ay = load i64, ptr %i.p, align 8, !tbaa !54  ; 5 uses
  %i.az = trunc i64 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !7
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i32 536870911, ptr %i.bb, align 4, !tbaa !11
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 5 uses
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !55
  %i.be = load ptr, ptr %5, align 8, !tbaa !51    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.o
  br i1 %i.bf, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.m:                                             ; preds = %_ZN6hermes2vm7HadesGC9allocWorkILb0ELNS0_12HasFinalizerE1EEEPvj.exit.i
  %i.bg = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.bg)
  %i.bh = add nuw nsw i64 %i.ay, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bd, ptr noundef nonnull align 8 dereferenceable(1) %i.o, i64 %i.bh, i1 false)
  br label %_ZN6hermes2vm7HadesGC5makeAINS0_23ExternalStringPrimitiveIcEELb0ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPT_jDpOT3_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN6hermes2vm7HadesGC9allocWorkILb0ELNS0_12HasFinalizerE1EEEPvj.exit.i
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !51
  %i.bi = load i64, ptr %i.o, align 8, !tbaa !24
  store i64 %i.bi, ptr %i.bd, align 8, !tbaa !24
  br label %_ZN6hermes2vm7HadesGC5makeAINS0_23ExternalStringPrimitiveIcEELb0ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPT_jDpOT3_.exit

_ZN6hermes2vm7HadesGC5makeAINS0_23ExternalStringPrimitiveIcEELb0ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPT_jDpOT3_.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i64 %i.ay, ptr %i.bj, align 8, !tbaa !54
  store ptr %i.o, ptr %5, align 8, !tbaa !51
  store i64 0, ptr %i.p, align 8, !tbaa !54
  store i8 0, ptr %i.o, align 8, !tbaa !24
  store i32 167772208, ptr %i.ad, align 8, !tbaa !24
  %i.bk = load ptr, ptr %i.bc, align 8, !tbaa !51
  %i.bl = icmp eq ptr %i.bk, %i.bd                ; 2 uses
  br i1 %i.bl, label %bb.n, label %_ZNK6hermes2vm23ExternalStringPrimitiveIcE22calcExternalMemorySizeEv.exit.i

bb.n:                                             ; preds = %_ZN6hermes2vm7HadesGC5makeAINS0_23ExternalStringPrimitiveIcEELb0ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPT_jDpOT3_.exit
  %i.bm = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.bm)
  br label %_ZNK6hermes2vm23ExternalStringPrimitiveIcE22calcExternalMemorySizeEv.exit.i

_ZNK6hermes2vm23ExternalStringPrimitiveIcE22calcExternalMemorySizeEv.exit.i: ; preds = %bb.n, %_ZN6hermes2vm7HadesGC5makeAINS0_23ExternalStringPrimitiveIcEELb0ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPT_jDpOT3_.exit
  %i.bn = load i64, ptr %i.bd, align 8
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = select i1 %i.bl, i32 15, i32 %i.bo
  call void @_ZN6hermes2vm7HadesGC20creditExternalMemoryEPNS0_6GCCellEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.g, ptr noundef nonnull %i.ad, i32 noundef %i.bp) #16
  %i.bq = ptrtoint ptr %i.ad to i64
  %i.br = or i64 %i.bq, -844424930131968
  br label %_ZN6hermes2vm23ExternalStringPrimitiveIcE6createINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_.exit

_ZN6hermes2vm23ExternalStringPrimitiveIcE6createINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_.exit: ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i, %_ZNK6hermes2vm23ExternalStringPrimitiveIcE22calcExternalMemorySizeEv.exit.i
  %.sroa.3.0.i = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i ], [ %i.br, %_ZNK6hermes2vm23ExternalStringPrimitiveIcE22calcExternalMemorySizeEv.exit.i ]
  %.sroa.0.0.i = phi i32 [ %i.w, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i ], [ 1, %_ZNK6hermes2vm23ExternalStringPrimitiveIcE22calcExternalMemorySizeEv.exit.i ]
  %i.bs = load ptr, ptr %5, align 8, !tbaa !51    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.o
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6hermes2vm23ExternalStringPrimitiveIcE6createINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_.exit
  %i.bu = load i64, ptr %i.o, align 8, !tbaa !24
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6hermes2vm23ExternalStringPrimitiveIcE6createINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.o

bb.o:                                             ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.09.0 = phi i32 [ %i.f, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %.sroa.0.0.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.m, %_ZN6hermes2vm11TwineChar16C2EPKc.exit8 ]
  %.sroa.4.0 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %.sroa.3.0.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit8 ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.09.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.4.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIcE6createINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54
  %i.c = icmp ugt i64 %i.b, 268435456
  br i1 %i.c, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, label %_ZNK6hermes2vm23ExternalStringPrimitiveIcE22calcExternalMemorySizeEv.exit, !prof !23

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 1, ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 27, ptr %i.e, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 0, ptr %i.f, align 8, !tbaa !40
  store ptr @.str, ptr %2, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 3, ptr %i.g, align 8, !tbaa !41
  %i.h = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.b

_ZNK6hermes2vm23ExternalStringPrimitiveIcE22calcExternalMemorySizeEv.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.j = tail call noundef ptr @_ZN6hermes2vm7HadesGC5makeAINS0_23ExternalStringPrimitiveIcEELb0ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPT_jDpOT3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.i, i32 noundef 48, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !51
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  %i.o = load i64, ptr %i.m, align 8
  %i.p = trunc i64 %i.o to i32
  %i.q = select i1 %i.n, i32 15, i32 %i.p
  tail call void @_ZN6hermes2vm7HadesGC20creditExternalMemoryEPNS0_6GCCellEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.i, ptr noundef nonnull %i.j, i32 noundef %i.q) #16
  %i.r = ptrtoint ptr %i.j to i64
  %i.s = or i64 %i.r, -844424930131968
  br label %bb.b

bb.b:                                             ; preds = %_ZNK6hermes2vm23ExternalStringPrimitiveIcE22calcExternalMemorySizeEv.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.3.0 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %i.s, %_ZNK6hermes2vm23ExternalStringPrimitiveIcE22calcExternalMemorySizeEv.exit ]
  %.sroa.0.0 = phi i32 [ %i.h, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %_ZNK6hermes2vm23ExternalStringPrimitiveIcE22calcExternalMemorySizeEv.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK6hermes2vm23ExternalStringPrimitiveIcE13getRawPointerEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN6hermes2vm23ExternalStringPrimitiveIcE21getRawPointerForWriteEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51
  ret ptr %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm23BufferedStringPrimitiveIDsE11getCellKindEv() local_unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 5
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN6hermes2vm23BufferedStringPrimitiveIDsE7classofEPKNS0_6GCCellE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %.mask = and i32 %i.a, -16777216
  %i.b = icmp eq i32 %.mask, 83886080
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6hermes2vm23BufferedStringPrimitiveIDsEC2ERNS0_7RuntimeEjNS0_6HandleINS0_23ExternalStringPrimitiveIDsEEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2, ptr %3) unnamed_addr #0 comdat($_ZN6hermes2vm23BufferedStringPrimitiveIDsEC5ERNS0_7RuntimeEjNS0_6HandleINS0_23ExternalStringPrimitiveIDsEEEE) align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.a, align 4, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 -1688849860263936, ptr %i.b, align 8, !tbaa !56
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %3, align 8, !tbaa !56
  %i.c = or i64 %.sroa.0.0.copyload.i.i.i, -281474976710656 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !57
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = and i64 %i.f, -4194304
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = icmp eq ptr %i.e, %i.h
  br i1 %i.i, label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 856
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_11HermesValueEEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 %i.c) #16
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit

_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit: ; preds = %bb.a, %bb.b
  store i64 %i.c, ptr %i.b, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN6hermes2vm23BufferedStringPrimitiveIDsE6createERNS0_7RuntimeEjNS0_6HandleINS0_23ExternalStringPrimitiveIDsEEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22
  %.not.i.not.i.i.i.i.i = icmp ugt ptr %i.c, %i.e
  br i1 %.not.i.not.i.i.i.i.i, label %bb.b, label %bb.c, !prof !23

bb.b:                                             ; preds = %bb.a
end_hunk_1
begin_hunk_2_@_ZN6hermes2vm23BufferedStringPrimitiveIDsE6createERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES7_:_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.aa, align 8, !tbaa !56
  %i.ab = and i64 %.sroa.0.0.copyload.i.i.i.i, 281474976710655
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !51
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit.i

_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %.0.i.i = phi ptr [ %i.x, %bb.b ], [ %i.y, %bb.d ], [ %i.z, %bb.e ], [ %i.ae, %bb.f ] ; 2 uses
  %i.af = load i32, ptr %i.g, align 4, !tbaa !7
  %i.ag = and i32 %i.af, 2147483647
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.ah
  %i.aj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE19_M_replace_dispatchIPKhEERS4_N9__gnu_cxx17__normal_iteratorIPKDsS4_EESD_T_SE_St12__false_type(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull %i.r, ptr nonnull %i.r, ptr noundef %.0.i.i, ptr noundef %i.ai) ; 0 uses
  br label %_ZN6hermes2vm23BufferedStringPrimitiveIDsE22appendToCopyableStringERNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPKNS0_15StringPrimitiveE.exit

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7reserveEm.exit
  br i1 %i.v, label %bb.h, label %bb.i, !prof !23

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !30
  br label %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit.i

bb.i:                                             ; preds = %bb.g
  %.mask.i.i.i.i.i.i.i.i11.i = and i32 %i.s, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i11.i, label %bb.l [
    i32 117440512, label %bb.j
    i32 50331648, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  br label %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit.i

bb.k:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit.i

bb.l:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.0.0.copyload.i.i.i13.i = load i64, ptr %i.ao, align 8, !tbaa !56
  %i.ap = and i64 %.sroa.0.0.copyload.i.i.i13.i, 281474976710655
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !30
  br label %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit.i

_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit.i: ; preds = %bb.l, %bb.k, %bb.j, %bb.h
  %.0.i12.i = phi ptr [ %i.al, %bb.h ], [ %i.am, %bb.j ], [ %i.an, %bb.k ], [ %i.as, %bb.l ]
  %i.at = load i32, ptr %i.g, align 4, !tbaa !7
  %i.au = and i32 %i.at, 2147483647
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE10_M_replaceEmmPKDsm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef %.0.i12.i, i64 noundef %i.av) ; 0 uses
  br label %_ZN6hermes2vm23BufferedStringPrimitiveIDsE22appendToCopyableStringERNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPKNS0_15StringPrimitiveE.exit

_ZN6hermes2vm23BufferedStringPrimitiveIDsE22appendToCopyableStringERNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPKNS0_15StringPrimitiveE.exit: ; preds = %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit.i, %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit.i
  %i.ax = load i32, ptr %i.f, align 4             ; 4 uses
  %i.ay = and i32 %i.ax, 16777216
  %i.az = icmp eq i32 %i.ay, 0
  %i.ba = icmp ugt i32 %i.ax, 150994943           ; 2 uses
  br i1 %i.az, label %bb.m, label %bb.s

bb.m:                                             ; preds = %_ZN6hermes2vm23BufferedStringPrimitiveIDsE22appendToCopyableStringERNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPKNS0_15StringPrimitiveE.exit
  br i1 %i.ba, label %bb.n, label %bb.o, !prof !23

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !51
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit.i22

bb.o:                                             ; preds = %bb.m
  %.mask.i.i.i.i.i.i.i.i.i21 = and i32 %i.ax, 234881024
  switch i32 %.mask.i.i.i.i.i.i.i.i.i21, label %bb.r [
    i32 134217728, label %bb.p
    i32 67108864, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit.i22

bb.q:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit.i22

bb.r:                                             ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.0.0.copyload.i.i.i.i24 = load i64, ptr %i.bf, align 8, !tbaa !56
  %i.bg = and i64 %.sroa.0.0.copyload.i.i.i.i24, 281474976710655
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !51
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit.i22

_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit.i22: ; preds = %bb.r, %bb.q, %bb.p, %bb.n
  %.0.i.i23 = phi ptr [ %i.bc, %bb.n ], [ %i.bd, %bb.p ], [ %i.be, %bb.q ], [ %i.bj, %bb.r ] ; 2 uses
  %i.bk = load i32, ptr %i.j, align 4, !tbaa !7
  %i.bl = and i32 %i.bk, 2147483647
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i.i23, i64 %i.bm
  %i.bo = load ptr, ptr %4, align 8, !tbaa !30
  %i.bp = load i64, ptr %i.b, align 8, !tbaa !35
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %i.bp ; 2 uses
  %i.br = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE19_M_replace_dispatchIPKhEERS4_N9__gnu_cxx17__normal_iteratorIPKDsS4_EESD_T_SE_St12__false_type(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr %i.bq, ptr %i.bq, ptr noundef %.0.i.i23, ptr noundef %i.bn) ; 0 uses
  br label %_ZN6hermes2vm23BufferedStringPrimitiveIDsE22appendToCopyableStringERNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPKNS0_15StringPrimitiveE.exit25

bb.s:                                             ; preds = %_ZN6hermes2vm23BufferedStringPrimitiveIDsE22appendToCopyableStringERNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPKNS0_15StringPrimitiveE.exit
  br i1 %i.ba, label %bb.t, label %bb.u, !prof !23

bb.t:                                             ; preds = %bb.s
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !30
  br label %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit.i18

bb.u:                                             ; preds = %bb.s
  %.mask.i.i.i.i.i.i.i.i11.i17 = and i32 %i.ax, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i11.i17, label %bb.x [
    i32 117440512, label %bb.v
    i32 50331648, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  br label %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit.i18

bb.w:                                             ; preds = %bb.u
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit.i18

bb.x:                                             ; preds = %bb.u
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.0.0.copyload.i.i.i13.i20 = load i64, ptr %i.bw, align 8, !tbaa !56
  %i.bx = and i64 %.sroa.0.0.copyload.i.i.i13.i20, 281474976710655
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !30
  br label %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit.i18

_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit.i18: ; preds = %bb.x, %bb.w, %bb.v, %bb.t
  %.0.i12.i19 = phi ptr [ %i.bt, %bb.t ], [ %i.bu, %bb.v ], [ %i.bv, %bb.w ], [ %i.ca, %bb.x ]
  %i.cb = load i32, ptr %i.j, align 4, !tbaa !7
  %i.cc = load i64, ptr %i.b, align 8, !tbaa !35
  %i.cd = and i32 %i.cb, 2147483647
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE10_M_replaceEmmPKDsm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.cc, i64 noundef 0, ptr noundef %.0.i12.i19, i64 noundef %i.ce) ; 0 uses
  br label %_ZN6hermes2vm23BufferedStringPrimitiveIDsE22appendToCopyableStringERNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPKNS0_15StringPrimitiveE.exit25

_ZN6hermes2vm23BufferedStringPrimitiveIDsE22appendToCopyableStringERNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPKNS0_15StringPrimitiveE.exit25: ; preds = %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit.i22, %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit.i18
  %i.cg = load i64, ptr %i.b, align 8, !tbaa !35
  %i.ch = icmp ugt i64 %i.cg, 268435456
  br i1 %i.ch, label %_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_.exit, label %bb.y, !prof !23

bb.y:                                             ; preds = %_ZN6hermes2vm23BufferedStringPrimitiveIDsE22appendToCopyableStringERNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPKNS0_15StringPrimitiveE.exit25
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !16 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 48 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !22
  %.not.i.not.i.i = icmp ugt ptr %i.cl, %i.cn
  br i1 %.not.i.not.i.i, label %bb.z, label %bb.aa, !prof !23

bb.z:                                             ; preds = %bb.y
  %i.co = call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.ci, i32 noundef 48) #16
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  store ptr %i.cl, ptr %i.cj, align 8, !tbaa !16
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cp = phi ptr [ %i.co, %bb.z ], [ %i.ck, %bb.aa ] ; 12 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1672 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 1680 ; 3 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !43 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 1688 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !47
  %.not.i4.i.i = icmp eq ptr %i.cs, %i.cu
  br i1 %.not.i4.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.cp, ptr %i.cs, align 8, !tbaa !48
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr %i.cv, ptr %i.cr, align 8, !tbaa !43
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb0ELNS0_12HasFinalizerE1EEEPvj.exit.i

bb.ad:                                            ; preds = %bb.ab
  %i.cw = load ptr, ptr %i.cq, align 8, !tbaa !50 ; 4 uses
  %i.cx = ptrtoint ptr %i.cs to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy                    ; 6 uses
  %i.da = icmp eq i64 %i.cz, 9223372036854775800
  br i1 %i.da, label %bb.ae, label %_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.ae:                                            ; preds = %bb.ad
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #19
  unreachable

_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.ad
  %i.db = ashr exact i64 %i.cz, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.db, i64 1)
  %i.dc = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.db ; 2 uses
  %5 = icmp ult i64 %i.dc, %i.db
  %i.dd = call i64 @llvm.umin.i64(i64 %i.dc, i64 1152921504606846975)
  %6 = select i1 %5, i64 1152921504606846975, i64 %i.dd ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %6, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.de = shl nuw nsw i64 %6, 3
  %i.df = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.de) #18 ; 4 uses
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 %i.cz ; 2 uses
  store ptr %i.cp, ptr %i.dg, align 8, !tbaa !48
  %i.dh = icmp sgt i64 %i.cz, 0
  br i1 %i.dh, label %bb.af, label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i

bb.af:                                            ; preds = %_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.df, ptr align 8 %i.cw, i64 %i.cz, i1 false)
  br label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i

_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i: ; preds = %bb.af, %_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %.not.i17.i.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.cz) #17
  br label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i

_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i: ; preds = %bb.ag, %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i
  store ptr %i.df, ptr %i.cq, align 8, !tbaa !50
  store ptr %i.di, ptr %i.cr, align 8, !tbaa !43
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %6
  store ptr %i.dj, ptr %i.ct, align 8, !tbaa !47
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb0ELNS0_12HasFinalizerE1EEEPvj.exit.i

_ZN6hermes2vm7HadesGC9allocWorkILb0ELNS0_12HasFinalizerE1EEEPvj.exit.i: ; preds = %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, %bb.ac
  %i.dk = load i64, ptr %i.b, align 8, !tbaa !35  ; 6 uses
  %i.dl = trunc i64 %i.dk to i32
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !7
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i32 536870911, ptr %i.dn, align 4, !tbaa !11
  %i.do = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cp, i64 32 ; 5 uses
  store ptr %i.dp, ptr %i.do, align 8, !tbaa !42
  %i.dq = load ptr, ptr %4, align 8, !tbaa !30    ; 3 uses
  %i.dr = icmp eq ptr %i.dq, %i.a
  br i1 %i.dr, label %_ZN6hermes2vm7HadesGC5makeAINS0_23ExternalStringPrimitiveIDsEELb0ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEEPT_jDpOT3_.exit.thread, label %_ZN6hermes2vm7HadesGC5makeAINS0_23ExternalStringPrimitiveIDsEELb0ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEEPT_jDpOT3_.exit

_ZN6hermes2vm7HadesGC5makeAINS0_23ExternalStringPrimitiveIDsEELb0ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEEPT_jDpOT3_.exit.thread: ; preds = %_ZN6hermes2vm7HadesGC9allocWorkILb0ELNS0_12HasFinalizerE1EEEPvj.exit.i
  %i.ds = icmp ult i64 %i.dk, 8
  call void @llvm.assume(i1 %i.ds)
  %i.dt = shl nuw nsw i64 %i.dk, 1
  %i.du = add nuw nsw i64 %i.dt, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dp, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %i.du, i1 false)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  store i64 %i.dk, ptr %i.dv, align 8, !tbaa !35
  store ptr %i.a, ptr %4, align 8, !tbaa !30
  store i64 0, ptr %i.b, align 8, !tbaa !35
  store i16 0, ptr %i.a, align 8, !tbaa !14
  store i32 150994992, ptr %i.cp, align 8, !tbaa !24
  br label %bb.ah

_ZN6hermes2vm7HadesGC5makeAINS0_23ExternalStringPrimitiveIDsEELb0ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEEPT_jDpOT3_.exit: ; preds = %_ZN6hermes2vm7HadesGC9allocWorkILb0ELNS0_12HasFinalizerE1EEEPvj.exit.i
  store ptr %i.dq, ptr %i.do, align 8, !tbaa !30
  %i.dw = load i64, ptr %i.a, align 8, !tbaa !24
  store i64 %i.dw, ptr %i.dp, align 8, !tbaa !24
  %i.dx = icmp eq ptr %i.dq, %i.dp
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  store i64 %i.dk, ptr %i.dy, align 8, !tbaa !35
  store ptr %i.a, ptr %4, align 8, !tbaa !30
  store i64 0, ptr %i.b, align 8, !tbaa !35
  store i16 0, ptr %i.a, align 8, !tbaa !14
  store i32 150994992, ptr %i.cp, align 8, !tbaa !24
  br i1 %i.dx, label %bb.ah, label %_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_.exit.thread

bb.ah:                                            ; preds = %_ZN6hermes2vm7HadesGC5makeAINS0_23ExternalStringPrimitiveIDsEELb0ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEEPT_jDpOT3_.exit.thread, %_ZN6hermes2vm7HadesGC5makeAINS0_23ExternalStringPrimitiveIDsEELb0ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEEPT_jDpOT3_.exit
  %i.dz = icmp ult i64 %i.dk, 8
  call void @llvm.assume(i1 %i.dz)
  br label %_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_.exit.thread

_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_.exit.thread: ; preds = %_ZN6hermes2vm7HadesGC5makeAINS0_23ExternalStringPrimitiveIDsEELb0ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEEPT_jDpOT3_.exit, %bb.ah
  %i.ea = phi i1 [ false, %_ZN6hermes2vm7HadesGC5makeAINS0_23ExternalStringPrimitiveIDsEELb0ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEEPT_jDpOT3_.exit ], [ true, %bb.ah ]
  %i.eb = load i64, ptr %i.dp, align 8
  %.tr.i = trunc i64 %i.eb to i32
  %i.ec = shl i32 %.tr.i, 1
  %i.ed = select i1 %i.ea, i32 14, i32 %i.ec
  call void @_ZN6hermes2vm7HadesGC20creditExternalMemoryEPNS0_6GCCellEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.ci, ptr noundef nonnull %i.cp, i32 noundef %i.ed) #16
  %i.ee = ptrtoint ptr %i.cp to i64
  %i.ef = or i64 %i.ee, -281474976710656
  br label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit

_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_.exit: ; preds = %_ZN6hermes2vm23BufferedStringPrimitiveIDsE22appendToCopyableStringERNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPKNS0_15StringPrimitiveE.exit25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.eg, align 8, !tbaa !36
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 27, ptr %i.eh, align 8, !tbaa !39
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.ei, align 8, !tbaa !40
  store ptr @.str, ptr %3, align 8, !tbaa !24
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.ej, align 8, !tbaa !41
  %i.ek = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %bb.ai, label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit, !prof !74

bb.ai:                                            ; preds = %_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_.exit
  call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.8) #19
  unreachable

_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit: ; preds = %_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_.exit.thread, %_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_.exit
  %.sroa.3.0.i35 = phi i64 [ %i.ef, %_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_.exit.thread ], [ -1, %_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_.exit ] ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !60 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 192 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !63 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 200
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !73
  %i.es = icmp ult ptr %i.ep, %i.er
  br i1 %i.es, label %bb.aj, label %bb.ak, !prof !13

bb.aj:                                            ; preds = %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store ptr %i.et, ptr %i.eo, align 8, !tbaa !63
  store i64 %.sroa.3.0.i35, ptr %i.ep, align 8, !tbaa !56
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_23ExternalStringPrimitiveIDsEEEENS0_6HandleIT_EENS0_11HermesValueE.exit

bb.ak:                                            ; preds = %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit
  %i.eu = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.en, i64 %.sroa.3.0.i35) #16
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_23ExternalStringPrimitiveIDsEEEENS0_6HandleIT_EENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_23ExternalStringPrimitiveIDsEEEENS0_6HandleIT_EENS0_11HermesValueE.exit: ; preds = %bb.aj, %bb.ak
  %.0.i.i.i.i.i.i = phi ptr [ %i.ep, %bb.aj ], [ %i.eu, %bb.ak ]
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !16 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !22
  %.not.i.not.i.i.i.i.i.i = icmp ugt ptr %i.ex, %i.ez
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.al, label %bb.am, !prof !23

bb.al:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_23ExternalStringPrimitiveIDsEEEENS0_6HandleIT_EENS0_11HermesValueE.exit
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.fb = call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.fa, i32 noundef 16) #16
  br label %_ZN6hermes2vm23BufferedStringPrimitiveIDsE6createERNS0_7RuntimeEjNS0_6HandleINS0_23ExternalStringPrimitiveIDsEEEE.exit

bb.am:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_23ExternalStringPrimitiveIDsEEEENS0_6HandleIT_EENS0_11HermesValueE.exit
  store ptr %i.ex, ptr %i.ev, align 8, !tbaa !16
  br label %_ZN6hermes2vm23BufferedStringPrimitiveIDsE6createERNS0_7RuntimeEjNS0_6HandleINS0_23ExternalStringPrimitiveIDsEEEE.exit

_ZN6hermes2vm23BufferedStringPrimitiveIDsE6createERNS0_7RuntimeEjNS0_6HandleINS0_23ExternalStringPrimitiveIDsEEEE.exit: ; preds = %bb.al, %bb.am
  %i.fc = phi ptr [ %i.fb, %bb.al ], [ %i.ew, %bb.am ] ; 3 uses
  call void @_ZN6hermes2vm23BufferedStringPrimitiveIDsEC1ERNS0_7RuntimeEjNS0_6HandleINS0_23ExternalStringPrimitiveIDsEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.fc, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %i.m, ptr %.0.i.i.i.i.i.i) #16
  store i32 83886096, ptr %i.fc, align 4, !tbaa !24
  %i.fd = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.a
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i26: ; preds = %_ZN6hermes2vm23BufferedStringPrimitiveIDsE6createERNS0_7RuntimeEjNS0_6HandleINS0_23ExternalStringPrimitiveIDsEEEE.exit
  %i.ff = load i64, ptr %i.a, align 8, !tbaa !24
  %i.fg = shl i64 %i.ff, 1
  %i.fh = add i64 %i.fg, 2
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #17
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit: ; preds = %_ZN6hermes2vm23BufferedStringPrimitiveIDsE6createERNS0_7RuntimeEjNS0_6HandleINS0_23ExternalStringPrimitiveIDsEEEE.exit, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret ptr %i.fc
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm23BufferedStringPrimitiveIDsE22appendToCopyableStringERNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPKNS0_15StringPrimitiveE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4                ; 4 uses
  %i.b = and i32 %i.a, 16777216
  %i.c = icmp eq i32 %i.b, 0
  %i.d = icmp ugt i32 %i.a, 150994943             ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.c, label %bb.d, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !51
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit

bb.d:                                             ; preds = %bb.b
  %.mask.i.i.i.i.i.i.i.i = and i32 %i.a, 234881024
  switch i32 %.mask.i.i.i.i.i.i.i.i, label %bb.g [
    i32 134217728, label %bb.e
    i32 67108864, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit

bb.f:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit

bb.g:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.i, align 8, !tbaa !56
  %i.j = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !51
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit

_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  %.0.i = phi ptr [ %i.f, %bb.c ], [ %i.g, %bb.e ], [ %i.h, %bb.f ], [ %i.m, %bb.g ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !7
  %i.p = and i32 %i.o, 2147483647
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.q
  %i.s = load ptr, ptr %0, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.u ; 2 uses
  %i.w = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE19_M_replace_dispatchIPKhEERS4_N9__gnu_cxx17__normal_iteratorIPKDsS4_EESD_T_SE_St12__false_type(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %i.v, ptr %i.v, ptr noundef %.0.i, ptr noundef %i.r) ; 0 uses
  br label %bb.n

bb.h:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.i, label %bb.j, !prof !23

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
end_hunk_2
begin_hunk_3_@_ZN6hermes2vm23BufferedStringPrimitiveIcE6appendENS0_6HandleIS2_EERNS0_7RuntimeENS3_INS0_15StringPrimitiveEEE:bb.a
bb.k:                                             ; preds = %_ZN6hermes2vm23BufferedStringPrimitiveIcE22appendToCopyableStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_15StringPrimitiveE.exit
  %i.bd = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.aw, i64 %i.au) #16
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_23ExternalStringPrimitiveIcEEEENS0_6HandleIT_EEPS6_.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_23ExternalStringPrimitiveIcEEEENS0_6HandleIT_EEPS6_.exit: ; preds = %bb.j, %bb.k
  %.0.i.i.i.i.i.i = phi ptr [ %i.ay, %bb.j ], [ %i.bd, %bb.k ]
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 1648 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !16 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 1656
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !22
  %.not.i.not.i.i.i.i.i.i = icmp ugt ptr %i.bg, %i.bi
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.l, label %bb.m, !prof !23

bb.l:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_23ExternalStringPrimitiveIcEEEENS0_6HandleIT_EEPS6_.exit
  %i.bj = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.al, i32 noundef 16) #16
  br label %_ZN6hermes2vm23BufferedStringPrimitiveIcE6createERNS0_7RuntimeEjNS0_6HandleINS0_23ExternalStringPrimitiveIcEEEE.exit

bb.m:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_23ExternalStringPrimitiveIcEEEENS0_6HandleIT_EEPS6_.exit
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !16
  br label %_ZN6hermes2vm23BufferedStringPrimitiveIcE6createERNS0_7RuntimeEjNS0_6HandleINS0_23ExternalStringPrimitiveIcEEEE.exit

_ZN6hermes2vm23BufferedStringPrimitiveIcE6createERNS0_7RuntimeEjNS0_6HandleINS0_23ExternalStringPrimitiveIcEEEE.exit: ; preds = %bb.l, %bb.m
  %i.bk = phi ptr [ %i.bj, %bb.l ], [ %i.bf, %bb.m ] ; 3 uses
  tail call void @_ZN6hermes2vm23BufferedStringPrimitiveIcEC1ERNS0_7RuntimeEjNS0_6HandleINS0_23ExternalStringPrimitiveIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.at, ptr %.0.i.i.i.i.i.i) #16
  store i32 100663312, ptr %i.bk, align 4, !tbaa !24
  br label %bb.n

bb.n:                                             ; preds = %_ZN6hermes2vm23BufferedStringPrimitiveIcE6createERNS0_7RuntimeEjNS0_6HandleINS0_23ExternalStringPrimitiveIcEEEE.exit, %bb.b
  %.sroa.018.0 = phi ptr [ %i.o, %bb.b ], [ %i.bk, %_ZN6hermes2vm23BufferedStringPrimitiveIcE6createERNS0_7RuntimeEjNS0_6HandleINS0_23ExternalStringPrimitiveIcEEEE.exit ]
  ret ptr %.sroa.018.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK6hermes2vm23BufferedStringPrimitiveIcE15getConcatBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8, !tbaa !56
  %i.b = and i64 %.sroa.0.0.copyload, 281474976710655
  %i.c = inttoptr i64 %i.b to ptr
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN6hermes2vm23BufferedStringPrimitiveIcE6createERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES7_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !55
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i64 0, ptr %i.b, align 8, !tbaa !54
  store i8 0, ptr %i.a, align 8, !tbaa !24
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !56
  %i.c = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.d = inttoptr i64 %i.c to ptr                 ; 6 uses
  %.sroa.0.0.copyload.i.i16 = load i64, ptr %2, align 8, !tbaa !56
  %i.e = and i64 %.sroa.0.0.copyload.i.i16, 281474976710655
  %i.f = inttoptr i64 %i.e to ptr                 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !7
  %i.i = and i32 %i.h, 2147483647
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !7
  %i.l = and i32 %i.k, 2147483647
  %i.m = add nuw i32 %i.l, %i.i                   ; 2 uses
  %i.n = zext i32 %i.m to i64
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.n) #16
  %i.o = load i32, ptr %i.d, align 4              ; 2 uses
  %i.p = icmp ugt i32 %i.o, 150994943
  br i1 %i.p, label %bb.b, label %bb.c, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !51
  br label %_ZN6hermes2vm23BufferedStringPrimitiveIcE22appendToCopyableStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_15StringPrimitiveE.exit

bb.c:                                             ; preds = %bb.a
  %.mask.i.i.i.i.i.i.i.i.i = and i32 %i.o, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i, label %bb.f [
    i32 134217728, label %bb.d
    i32 67108864, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  br label %_ZN6hermes2vm23BufferedStringPrimitiveIcE22appendToCopyableStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_15StringPrimitiveE.exit

bb.e:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %_ZN6hermes2vm23BufferedStringPrimitiveIcE22appendToCopyableStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_15StringPrimitiveE.exit

bb.f:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.u, align 8, !tbaa !56
  %i.v = and i64 %.sroa.0.0.copyload.i.i.i.i, 281474976710655
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !51
  br label %_ZN6hermes2vm23BufferedStringPrimitiveIcE22appendToCopyableStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_15StringPrimitiveE.exit

_ZN6hermes2vm23BufferedStringPrimitiveIcE22appendToCopyableStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_15StringPrimitiveE.exit: ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.r, %bb.b ], [ %i.s, %bb.d ], [ %i.t, %bb.e ], [ %i.y, %bb.f ]
  %i.z = load i32, ptr %i.g, align 4, !tbaa !7
  %i.aa = and i32 %i.z, 2147483647
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !54
  %i.ad = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.ac, i64 noundef 0, ptr noundef %.0.i.i, i64 noundef %i.ab) #16 ; 0 uses
  %i.ae = load i32, ptr %i.f, align 4             ; 2 uses
  %i.af = icmp ugt i32 %i.ae, 150994943
  br i1 %i.af, label %bb.g, label %bb.h, !prof !23

bb.g:                                             ; preds = %_ZN6hermes2vm23BufferedStringPrimitiveIcE22appendToCopyableStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_15StringPrimitiveE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !51
  br label %_ZN6hermes2vm23BufferedStringPrimitiveIcE22appendToCopyableStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_15StringPrimitiveE.exit20

bb.h:                                             ; preds = %_ZN6hermes2vm23BufferedStringPrimitiveIcE22appendToCopyableStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_15StringPrimitiveE.exit
  %.mask.i.i.i.i.i.i.i.i.i17 = and i32 %i.ae, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i17, label %bb.k [
    i32 134217728, label %bb.i
    i32 67108864, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  br label %_ZN6hermes2vm23BufferedStringPrimitiveIcE22appendToCopyableStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_15StringPrimitiveE.exit20

bb.j:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %_ZN6hermes2vm23BufferedStringPrimitiveIcE22appendToCopyableStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_15StringPrimitiveE.exit20

bb.k:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.0.0.copyload.i.i.i.i19 = load i64, ptr %i.ak, align 8, !tbaa !56
  %i.al = and i64 %.sroa.0.0.copyload.i.i.i.i19, 281474976710655
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !51
  br label %_ZN6hermes2vm23BufferedStringPrimitiveIcE22appendToCopyableStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_15StringPrimitiveE.exit20

_ZN6hermes2vm23BufferedStringPrimitiveIcE22appendToCopyableStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_15StringPrimitiveE.exit20: ; preds = %bb.g, %bb.i, %bb.j, %bb.k
  %.0.i.i18 = phi ptr [ %i.ah, %bb.g ], [ %i.ai, %bb.i ], [ %i.aj, %bb.j ], [ %i.ao, %bb.k ]
  %i.ap = load i32, ptr %i.j, align 4, !tbaa !7
  %i.aq = and i32 %i.ap, 2147483647
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = load i64, ptr %i.b, align 8, !tbaa !54
  %i.at = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.as, i64 noundef 0, ptr noundef %.0.i.i18, i64 noundef %i.ar) #16 ; 0 uses
  %i.au = load i64, ptr %i.b, align 8, !tbaa !54
  %i.av = icmp ugt i64 %i.au, 268435456
  br i1 %i.av, label %_ZN6hermes2vm23ExternalStringPrimitiveIcE6createINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_.exit, label %bb.l, !prof !23

bb.l:                                             ; preds = %_ZN6hermes2vm23BufferedStringPrimitiveIcE22appendToCopyableStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_15StringPrimitiveE.exit20
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 48 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !22
  %.not.i.not.i.i = icmp ugt ptr %i.az, %i.bb
  br i1 %.not.i.not.i.i, label %bb.m, label %bb.n, !prof !23

bb.m:                                             ; preds = %bb.l
  %i.bc = call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.aw, i32 noundef 48) #16
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bd = phi ptr [ %i.bc, %bb.m ], [ %i.ay, %bb.n ] ; 10 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1672 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1680 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !43 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1688 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !47
  %.not.i4.i.i = icmp eq ptr %i.bg, %i.bi
  br i1 %.not.i4.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.bd, ptr %i.bg, align 8, !tbaa !48
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !43
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb0ELNS0_12HasFinalizerE1EEEPvj.exit.i

bb.q:                                             ; preds = %bb.o
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !50 ; 4 uses
  %i.bl = ptrtoint ptr %i.bg to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 6 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775800
  br i1 %i.bo, label %bb.r, label %_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.r:                                             ; preds = %bb.q
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #19
  unreachable

_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.q
  %i.bp = ashr exact i64 %i.bn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.bq = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.bp ; 2 uses
  %5 = icmp ult i64 %i.bq, %i.bp
  %i.br = call i64 @llvm.umin.i64(i64 %i.bq, i64 1152921504606846975)
  %6 = select i1 %5, i64 1152921504606846975, i64 %i.br ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %6, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.bs = shl nuw nsw i64 %6, 3
  %i.bt = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #18 ; 4 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 %i.bn ; 2 uses
  store ptr %i.bd, ptr %i.bu, align 8, !tbaa !48
  %i.bv = icmp sgt i64 %i.bn, 0
  br i1 %i.bv, label %bb.s, label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i

bb.s:                                             ; preds = %_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bt, ptr align 8 %i.bk, i64 %i.bn, i1 false)
  br label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i

_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i: ; preds = %bb.s, %_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.not.i17.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bn) #17
  br label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i

_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i: ; preds = %bb.t, %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i
  store ptr %i.bt, ptr %i.be, align 8, !tbaa !50
  store ptr %i.bw, ptr %i.bf, align 8, !tbaa !43
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %6
  store ptr %i.bx, ptr %i.bh, align 8, !tbaa !47
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb0ELNS0_12HasFinalizerE1EEEPvj.exit.i

_ZN6hermes2vm7HadesGC9allocWorkILb0ELNS0_12HasFinalizerE1EEEPvj.exit.i: ; preds = %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, %bb.p
  %i.by = load i64, ptr %i.b, align 8, !tbaa !54  ; 5 uses
  %i.bz = trunc i64 %i.by to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !7
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i32 536870911, ptr %i.cb, align 4, !tbaa !11
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bd, i64 32 ; 5 uses
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !55
  %i.ce = load ptr, ptr %4, align 8, !tbaa !51    ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.a
  br i1 %i.cf, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.u:                                             ; preds = %_ZN6hermes2vm7HadesGC9allocWorkILb0ELNS0_12HasFinalizerE1EEEPvj.exit.i
  %i.cg = icmp ult i64 %i.by, 16
  call void @llvm.assume(i1 %i.cg)
  %i.ch = add nuw nsw i64 %i.by, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cd, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %i.ch, i1 false)
  br label %_ZN6hermes2vm7HadesGC5makeAINS0_23ExternalStringPrimitiveIcEELb0ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPT_jDpOT3_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN6hermes2vm7HadesGC9allocWorkILb0ELNS0_12HasFinalizerE1EEEPvj.exit.i
  store ptr %i.ce, ptr %i.cc, align 8, !tbaa !51
  %i.ci = load i64, ptr %i.a, align 8, !tbaa !24
  store i64 %i.ci, ptr %i.cd, align 8, !tbaa !24
  br label %_ZN6hermes2vm7HadesGC5makeAINS0_23ExternalStringPrimitiveIcEELb0ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPT_jDpOT3_.exit

_ZN6hermes2vm7HadesGC5makeAINS0_23ExternalStringPrimitiveIcEELb0ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPT_jDpOT3_.exit: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store i64 %i.by, ptr %i.cj, align 8, !tbaa !54
  store ptr %i.a, ptr %4, align 8, !tbaa !51
  store i64 0, ptr %i.b, align 8, !tbaa !54
  store i8 0, ptr %i.a, align 8, !tbaa !24
  store i32 167772208, ptr %i.bd, align 8, !tbaa !24
  %i.ck = load ptr, ptr %i.cc, align 8, !tbaa !51
  %i.cl = icmp eq ptr %i.ck, %i.cd                ; 2 uses
  br i1 %i.cl, label %bb.v, label %_ZN6hermes2vm23ExternalStringPrimitiveIcE6createINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_.exit.thread

bb.v:                                             ; preds = %_ZN6hermes2vm7HadesGC5makeAINS0_23ExternalStringPrimitiveIcEELb0ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPT_jDpOT3_.exit
  %i.cm = icmp ult i64 %i.by, 16
  call void @llvm.assume(i1 %i.cm)
  br label %_ZN6hermes2vm23ExternalStringPrimitiveIcE6createINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_.exit.thread

_ZN6hermes2vm23ExternalStringPrimitiveIcE6createINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_.exit.thread: ; preds = %_ZN6hermes2vm7HadesGC5makeAINS0_23ExternalStringPrimitiveIcEELb0ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPT_jDpOT3_.exit, %bb.v
  %i.cn = load i64, ptr %i.cd, align 8
  %i.co = trunc i64 %i.cn to i32
  %i.cp = select i1 %i.cl, i32 15, i32 %i.co
  call void @_ZN6hermes2vm7HadesGC20creditExternalMemoryEPNS0_6GCCellEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.aw, ptr noundef nonnull %i.bd, i32 noundef %i.cp) #16
  %i.cq = ptrtoint ptr %i.bd to i64
  %i.cr = or i64 %i.cq, -281474976710656
  br label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit

_ZN6hermes2vm23ExternalStringPrimitiveIcE6createINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_.exit: ; preds = %_ZN6hermes2vm23BufferedStringPrimitiveIcE22appendToCopyableStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_15StringPrimitiveE.exit20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.cs, align 8, !tbaa !36
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 27, ptr %i.ct, align 8, !tbaa !39
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.cu, align 8, !tbaa !40
  store ptr @.str, ptr %3, align 8, !tbaa !24
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.cv, align 8, !tbaa !41
  %i.cw = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.w, label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit, !prof !74

bb.w:                                             ; preds = %_ZN6hermes2vm23ExternalStringPrimitiveIcE6createINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_.exit
  call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.8) #19
  unreachable

_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit: ; preds = %_ZN6hermes2vm23ExternalStringPrimitiveIcE6createINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_.exit.thread, %_ZN6hermes2vm23ExternalStringPrimitiveIcE6createINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_.exit
  %.sroa.3.0.i27 = phi i64 [ %i.cr, %_ZN6hermes2vm23ExternalStringPrimitiveIcE6createINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_.exit.thread ], [ -1, %_ZN6hermes2vm23ExternalStringPrimitiveIcE6createINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_.exit ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !60 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 192 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !63 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 200
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !73
  %i.de = icmp ult ptr %i.db, %i.dd
  br i1 %i.de, label %bb.x, label %bb.y, !prof !13

bb.x:                                             ; preds = %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store ptr %i.df, ptr %i.da, align 8, !tbaa !63
  store i64 %.sroa.3.0.i27, ptr %i.db, align 8, !tbaa !56
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_23ExternalStringPrimitiveIcEEEENS0_6HandleIT_EENS0_11HermesValueE.exit

bb.y:                                             ; preds = %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit
  %i.dg = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.cz, i64 %.sroa.3.0.i27) #16
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_23ExternalStringPrimitiveIcEEEENS0_6HandleIT_EENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_23ExternalStringPrimitiveIcEEEENS0_6HandleIT_EENS0_11HermesValueE.exit: ; preds = %bb.x, %bb.y
  %.0.i.i.i.i.i.i = phi ptr [ %i.db, %bb.x ], [ %i.dg, %bb.y ]
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !16 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !22
  %.not.i.not.i.i.i.i.i.i = icmp ugt ptr %i.dj, %i.dl
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.z, label %bb.aa, !prof !23

bb.z:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_23ExternalStringPrimitiveIcEEEENS0_6HandleIT_EENS0_11HermesValueE.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.dn = call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.dm, i32 noundef 16) #16
  br label %_ZN6hermes2vm23BufferedStringPrimitiveIcE6createERNS0_7RuntimeEjNS0_6HandleINS0_23ExternalStringPrimitiveIcEEEE.exit

bb.aa:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_23ExternalStringPrimitiveIcEEEENS0_6HandleIT_EENS0_11HermesValueE.exit
  store ptr %i.dj, ptr %i.dh, align 8, !tbaa !16
  br label %_ZN6hermes2vm23BufferedStringPrimitiveIcE6createERNS0_7RuntimeEjNS0_6HandleINS0_23ExternalStringPrimitiveIcEEEE.exit

_ZN6hermes2vm23BufferedStringPrimitiveIcE6createERNS0_7RuntimeEjNS0_6HandleINS0_23ExternalStringPrimitiveIcEEEE.exit: ; preds = %bb.z, %bb.aa
  %i.do = phi ptr [ %i.dn, %bb.z ], [ %i.di, %bb.aa ] ; 3 uses
  call void @_ZN6hermes2vm23BufferedStringPrimitiveIcEC1ERNS0_7RuntimeEjNS0_6HandleINS0_23ExternalStringPrimitiveIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.do, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %i.m, ptr %.0.i.i.i.i.i.i) #16
  store i32 100663312, ptr %i.do, align 4, !tbaa !24
  %i.dp = load ptr, ptr %4, align 8, !tbaa !51    ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.a
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6hermes2vm23BufferedStringPrimitiveIcE6createERNS0_7RuntimeEjNS0_6HandleINS0_23ExternalStringPrimitiveIcEEEE.exit
  %i.dr = load i64, ptr %i.a, align 8, !tbaa !24
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6hermes2vm23BufferedStringPrimitiveIcE6createERNS0_7RuntimeEjNS0_6HandleINS0_23ExternalStringPrimitiveIcEEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret ptr %i.do
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm23BufferedStringPrimitiveIcE22appendToCopyableStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_15StringPrimitiveE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4                ; 2 uses
  %i.b = icmp ugt i32 %i.a, 150994943
  br i1 %i.b, label %bb.b, label %bb.c, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit

bb.c:                                             ; preds = %bb.a
  %.mask.i.i.i.i.i.i.i.i = and i32 %i.a, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i, label %bb.f [
    i32 134217728, label %bb.d
    i32 67108864, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit

bb.f:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.g, align 8, !tbaa !56
  %i.h = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !51
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit

_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit: ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  %.0.i = phi ptr [ %i.d, %bb.b ], [ %i.e, %bb.d ], [ %i.f, %bb.e ], [ %i.k, %bb.f ]
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !7
  %i.n = and i32 %i.m, 2147483647
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !54
  %i.r = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.q, i64 noundef 0, ptr noundef %.0.i, i64 noundef %i.o) #16 ; 0 uses
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK6hermes2vm23BufferedStringPrimitiveIcE13getRawPointerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !56
  %i.b = and i64 %.sroa.0.0.copyload.i, 281474976710655
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !51
  ret ptr %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN6hermes2vm36DynamicASCIIStringPrimitiveBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef readnone captures(none) %0, ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(224) initializes((216, 224)) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216
end_hunk_3
begin_hunk_4_@_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE:bb.a

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_ZN6hermes2vm15StringPrimitive13createDynamicERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !106

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec20 = and i64 %2, 9223372032559874044      ; 4 uses
  %i.ao = and i64 %2, 3
  %i.ap = getelementptr i8, ptr %.0.i.i.i, i64 %n.vec20
  %i.aq = shl nuw i64 %n.vec20, 1
  %i.ar = getelementptr i8, ptr %1, i64 %i.aq
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index21 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next25, %vec.epilog.vector.body ] ; 3 uses
  %next.gep22 = getelementptr i8, ptr %.0.i.i.i, i64 %index21
  %i.as = shl i64 %index21, 1
  %next.gep23 = getelementptr i8, ptr %1, i64 %i.as
  %wide.load24 = load <4 x i16>, ptr %next.gep23, align 2, !tbaa !14, !alias.scope !202
  %i.at = trunc <4 x i16> %wide.load24 to <4 x i8>
  store <4 x i8> %i.at, ptr %next.gep22, align 1, !tbaa !24, !alias.scope !205, !noalias !202
  %index.next25 = add nuw i64 %index21, 4         ; 2 uses
  %i.au = icmp eq i64 %index.next25, %n.vec20
  br i1 %i.au, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !208

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n26 = icmp eq i64 %2, %n.vec20
  br i1 %cmp.n26, label %_ZN6hermes2vm15StringPrimitive13createDynamicERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.i.ph = phi i64 [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.ae, %vec.epilog.iter.check ], [ %i.ao, %vec.epilog.middle.block ]
  %.0811.i.i.i.i.i.i.i.ph = phi ptr [ %.0.i.i.i, %iter.check ], [ %.0.i.i.i, %vector.memcheck ], [ %i.af, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ]
  %.0910.i.i.i.i.i.i.i.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.ah, %vec.epilog.iter.check ], [ %i.ar, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.az, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0811.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.av = load i16, ptr %.0910.i.i.i.i.i.i.i, align 2, !tbaa !14
  %i.aw = trunc i16 %i.av to i8
  store i8 %i.aw, ptr %.0811.i.i.i.i.i.i.i, align 1, !tbaa !24
  %i.ax = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 2
  %i.ay = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 1
  %i.az = add nsw i64 %.012.i.i.i.i.i.i.i, -1
  %i.ba = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i, 1
  br i1 %i.ba, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN6hermes2vm15StringPrimitive13createDynamicERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit, !llvm.loop !209

_ZN6hermes10isAllASCIIIPKDsEEbT_S3_.exit.i:       ; preds = %.lr.ph.i.i
  %i.bb = tail call { i32, i64 } @_ZN6hermes2vm22DynamicStringPrimitiveIDsLb0EE6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, i64 %2) ; 2 uses
  %i.bc = extractvalue { i32, i64 } %i.bb, 0
  %i.bd = extractvalue { i32, i64 } %i.bb, 1
  br label %_ZN6hermes2vm15StringPrimitive13createDynamicERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit

_ZN6hermes2vm15StringPrimitive13createDynamicERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i.i, %_ZN6hermes10isAllASCIIIPKDsEEbT_S3_.exit.i
  %.sroa.07.1.i.i = phi i32 [ %i.bc, %_ZN6hermes10isAllASCIIIPKDsEEbT_S3_.exit.i ], [ 1, %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i.i ], [ 1, %middle.block ], [ 1, %vec.epilog.middle.block ], [ 1, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.59.1.i.i = phi i64 [ %i.bd, %_ZN6hermes10isAllASCIIIPKDsEEbT_S3_.exit.i ], [ %i.t, %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i.i ], [ %i.t, %middle.block ], [ %i.t, %vec.epilog.middle.block ], [ %i.t, %.lr.ph.i.i.i.i.i.i.i ]
  %.fca.0.insert.i.i = insertvalue { i32, i64 } poison, i32 %.sroa.07.1.i.i, 0
  %.fca.1.insert.i.i = insertvalue { i32, i64 } %.fca.0.insert.i.i, i64 %.sroa.59.1.i.i, 1
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZN6hermes2vm15StringPrimitive13arrayToStringIDsEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.162") align 8 %3, ptr %1, i64 %2)
  %i.be = call { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.bf = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !24
  %i.bj = shl i64 %i.bi, 1
  %i.bk = add i64 %i.bj, 2
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bk) #17
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit, %_ZN6hermes2vm15StringPrimitive13createDynamicERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit
  %.pn = phi { i32, i64 } [ %.fca.1.insert.i.i, %_ZN6hermes2vm15StringPrimitive13createDynamicERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit ], [ %i.be, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit ]
  ret { i32, i64 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm15StringPrimitive13arrayToStringIDsEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.162") align 8 %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !35
  %.idx = shl nuw nsw i64 %2, 1                   ; 3 uses
  %i.c = icmp ugt i64 %2, 7
  br i1 %i.c, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.d, label %bb.c, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #19
  unreachable

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i: ; preds = %bb.b
  %i.e = add nuw nsw i64 %.idx, 2
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #18 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !30
  store i64 %2, ptr %i.a, align 8, !tbaa !24
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i, %bb.a
  %.pre7.i.i = phi ptr [ %i.f, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %2, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKDsvEET_S8_RKS3_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.g = load i16, ptr %1, align 2, !tbaa !14
  store i16 %i.g, ptr %.pre7.i.i, align 2, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKDsvEET_S8_RKS3_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %.pre7.i.i, ptr align 2 %1, i64 %.idx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKDsvEET_S8_RKS3_.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKDsvEET_S8_RKS3_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  store i64 %2, ptr %i.b, align 8, !tbaa !35
  %i.h = getelementptr inbounds nuw i8, ptr %.pre7.i.i, i64 %.idx
  store i16 0, ptr %i.h, align 2, !tbaa !14
  ret void
}

declare void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112), i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm7HadesGC14allocLongLivedEj(ptr noundef nonnull align 8 dereferenceable(8112), i32 noundef) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC19pauseBackgroundTaskEv(ptr dead_on_unwind writable sret(%"class.std::lock_guard") align 8, ptr noundef nonnull align 8 dereferenceable(8112)) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes2vm7HadesGC5makeAINS0_23ExternalStringPrimitiveIcEELb0ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPT_jDpOT3_(ptr noundef nonnull align 8 dereferenceable(8112) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22
  %.not.i.not.i = icmp ugt ptr %i.d, %i.f
  br i1 %.not.i.not.i, label %bb.b, label %bb.c, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %0, i32 noundef %1) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.c ] ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !43   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !47
  %.not.i4.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i4.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.h, ptr %i.k, align 8, !tbaa !48
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.n, ptr %i.j, align 8, !tbaa !43
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb0ELNS0_12HasFinalizerE1EEEPvj.exit

bb.f:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !50   ; 4 uses
  %i.p = ptrtoint ptr %i.k to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 6 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.g, label %_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #19
  unreachable

_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i.i, %i.t ; 2 uses
  %3 = icmp ult i64 %i.u, %i.t
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %4 = select i1 %3, i64 1152921504606846975, i64 %i.v ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %4, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.w = shl nuw nsw i64 %4, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #18 ; 4 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 %i.r ; 2 uses
  store ptr %i.h, ptr %i.y, align 8, !tbaa !48
  %i.z = icmp sgt i64 %i.r, 0
  br i1 %i.z, label %bb.h, label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.o, i64 %i.r, i1 false)
  br label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.r) #17
  br label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.x, ptr %i.i, align 8, !tbaa !50
  store ptr %i.aa, ptr %i.j, align 8, !tbaa !43
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %4
  store ptr %i.ab, ptr %i.l, align 8, !tbaa !47
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb0ELNS0_12HasFinalizerE1EEEPvj.exit

_ZN6hermes2vm7HadesGC9allocWorkILb0ELNS0_12HasFinalizerE1EEEPvj.exit: ; preds = %bb.e, %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !54 ; 3 uses
  %i.ae = trunc i64 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 536870911, ptr %i.ag, align 4, !tbaa !11
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 3 uses
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !55
  %i.aj = load ptr, ptr %2, align 8, !tbaa !51    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.j:                                             ; preds = %_ZN6hermes2vm7HadesGC9allocWorkILb0ELNS0_12HasFinalizerE1EEEPvj.exit
  %i.am = icmp ult i64 %i.ad, 16
  tail call void @llvm.assume(i1 %i.am)
  %i.an = add nuw nsw i64 %i.ad, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ai, ptr noundef nonnull align 8 dereferenceable(1) %i.ak, i64 %i.an, i1 false)
  br label %_ZN6hermes2vm6GCBase13constructCellINS0_23ExternalStringPrimitiveIcEEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPT_PvjDpOT0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN6hermes2vm7HadesGC9allocWorkILb0ELNS0_12HasFinalizerE1EEEPvj.exit
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !51
  %i.ao = load i64, ptr %i.ak, align 8, !tbaa !24
  store i64 %i.ao, ptr %i.ai, align 8, !tbaa !24
  br label %_ZN6hermes2vm6GCBase13constructCellINS0_23ExternalStringPrimitiveIcEEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPT_PvjDpOT0_.exit

_ZN6hermes2vm6GCBase13constructCellINS0_23ExternalStringPrimitiveIcEEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPT_PvjDpOT0_.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ap = load i64, ptr %i.ac, align 8, !tbaa !54
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !54
  store ptr %i.ak, ptr %2, align 8, !tbaa !51
  store i64 0, ptr %i.ac, align 8, !tbaa !54
  store i8 0, ptr %i.ak, align 8, !tbaa !24
  %i.ar = and i32 %1, 16777215
  %i.as = or disjoint i32 %i.ar, 167772160
  store i32 %i.as, ptr %i.h, align 8, !tbaa !24
  ret ptr %i.h
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes2vm7HadesGC5makeAINS0_23ExternalStringPrimitiveIDsEELb0ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEEPT_jDpOT3_(ptr noundef nonnull align 8 dereferenceable(8112) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22
  %.not.i.not.i = icmp ugt ptr %i.d, %i.f
  br i1 %.not.i.not.i, label %bb.b, label %bb.c, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %0, i32 noundef %1) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.c ] ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !43   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !47
  %.not.i4.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i4.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.h, ptr %i.k, align 8, !tbaa !48
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.n, ptr %i.j, align 8, !tbaa !43
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb0ELNS0_12HasFinalizerE1EEEPvj.exit

bb.f:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !50   ; 4 uses
  %i.p = ptrtoint ptr %i.k to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 6 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.g, label %_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #19
  unreachable

_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i.i, %i.t ; 2 uses
  %3 = icmp ult i64 %i.u, %i.t
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %4 = select i1 %3, i64 1152921504606846975, i64 %i.v ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %4, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.w = shl nuw nsw i64 %4, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #18 ; 4 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 %i.r ; 2 uses
  store ptr %i.h, ptr %i.y, align 8, !tbaa !48
  %i.z = icmp sgt i64 %i.r, 0
  br i1 %i.z, label %bb.h, label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.o, i64 %i.r, i1 false)
  br label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.r) #17
  br label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.x, ptr %i.i, align 8, !tbaa !50
  store ptr %i.aa, ptr %i.j, align 8, !tbaa !43
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %4
  store ptr %i.ab, ptr %i.l, align 8, !tbaa !47
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb0ELNS0_12HasFinalizerE1EEEPvj.exit

_ZN6hermes2vm7HadesGC9allocWorkILb0ELNS0_12HasFinalizerE1EEEPvj.exit: ; preds = %bb.e, %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !35 ; 3 uses
  %i.ae = trunc i64 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 536870911, ptr %i.ag, align 4, !tbaa !11
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 3 uses
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !42
  %i.aj = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i

bb.j:                                             ; preds = %_ZN6hermes2vm7HadesGC9allocWorkILb0ELNS0_12HasFinalizerE1EEEPvj.exit
  %i.am = icmp ult i64 %i.ad, 8
  tail call void @llvm.assume(i1 %i.am)
  %i.an = shl nuw nsw i64 %i.ad, 1
  %i.ao = add nuw nsw i64 %i.an, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ai, ptr noundef nonnull align 8 dereferenceable(1) %i.ak, i64 %i.ao, i1 false)
  br label %_ZN6hermes2vm6GCBase13constructCellINS0_23ExternalStringPrimitiveIDsEEJNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEEPT_PvjDpOT0_.exit

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN6hermes2vm7HadesGC9allocWorkILb0ELNS0_12HasFinalizerE1EEEPvj.exit
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !30
  %i.ap = load i64, ptr %i.ak, align 8, !tbaa !24
  store i64 %i.ap, ptr %i.ai, align 8, !tbaa !24
  br label %_ZN6hermes2vm6GCBase13constructCellINS0_23ExternalStringPrimitiveIDsEEJNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEEPT_PvjDpOT0_.exit

_ZN6hermes2vm6GCBase13constructCellINS0_23ExternalStringPrimitiveIDsEEJNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEEPT_PvjDpOT0_.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i
  %i.aq = load i64, ptr %i.ac, align 8, !tbaa !35
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !35
  store ptr %i.ak, ptr %2, align 8, !tbaa !30
  store i64 0, ptr %i.ac, align 8, !tbaa !35
  store i16 0, ptr %i.ak, align 8, !tbaa !14
  %i.as = and i32 %1, 16777215
  %i.at = or disjoint i32 %i.as, 150994944
  store i32 %i.at, ptr %i.h, align 8, !tbaa !24
  ret ptr %i.h
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE19_M_replace_dispatchIPKhEERS4_N9__gnu_cxx17__normal_iteratorIPKDsS4_EESD_T_SE_St12__false_type(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string.162", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !35
  %i.c = ptrtoint ptr %4 to i64
  %i.d = ptrtoint ptr %3 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 14 uses
  %i.f = icmp ugt i64 %i.e, 7
  br i1 %i.f, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.e, 2305843009213693951
  br i1 %i.g, label %bb.c, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i

bb.c:                                             ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #19
  unreachable

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i: ; preds = %bb.b
  %i.h = shl nuw nsw i64 %i.e, 1
  %i.i = add nuw nsw i64 %i.h, 2
  %i.j = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #18 ; 2 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !30
  store i64 %i.e, ptr %i.a, align 8, !tbaa !24
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i, %bb.a
  %i.k = phi ptr [ %i.j, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 7 uses
  %.not7.i.i.i = icmp eq ptr %3, %4
  br i1 %.not7.i.i.i, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKhvEET_S8_RKS3_.exit, label %iter.check

iter.check:                                       ; preds = %._crit_edge.i.i
  %min.iters.check = icmp ult i64 %i.e, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check11 = icmp ult i64 %i.e, 16
  br i1 %min.iters.check11, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.e, 12
  %n.vec = and i64 %i.e, -16                      ; 5 uses
  %i.l = shl i64 %n.vec, 1
  %i.m = getelementptr i8, ptr %i.k, i64 %i.l
  %i.n = getelementptr i8, ptr %3, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.o = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.o ; 2 uses
  %next.gep12 = getelementptr i8, ptr %3, i64 %index ; 2 uses
  %i.p = getelementptr i8, ptr %next.gep12, i64 8
  %wide.load = load <8 x i8>, ptr %next.gep12, align 1, !tbaa !24
  %wide.load13 = load <8 x i8>, ptr %i.p, align 1, !tbaa !24
  %i.q = zext <8 x i8> %wide.load to <8 x i16>
  %i.r = zext <8 x i8> %wide.load13 to <8 x i16>
  %i.s = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %i.q, ptr %next.gep, align 2, !tbaa !14
  store <8 x i16> %i.r, ptr %i.s, align 2, !tbaa !14
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !210

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKhvEET_S8_RKS3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !106

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec16 = and i64 %i.e, -4                     ; 4 uses
  %i.u = shl i64 %n.vec16, 1
  %i.v = getelementptr i8, ptr %i.k, i64 %i.u
  %i.w = getelementptr i8, ptr %3, i64 %n.vec16
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index17 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next21, %vec.epilog.vector.body ] ; 3 uses
  %i.x = shl i64 %index17, 1
  %next.gep18 = getelementptr i8, ptr %i.k, i64 %i.x
  %next.gep19 = getelementptr i8, ptr %3, i64 %index17
  %wide.load20 = load <4 x i8>, ptr %next.gep19, align 1, !tbaa !24
  %i.y = zext <4 x i8> %wide.load20 to <4 x i16>
  store <4 x i16> %i.y, ptr %next.gep18, align 2, !tbaa !14
  %index.next21 = add nuw i64 %index17, 4         ; 2 uses
  %i.z = icmp eq i64 %index.next21, %n.vec16
  br i1 %i.z, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !211

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n22 = icmp eq i64 %i.e, %n.vec16
  br i1 %cmp.n22, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKhvEET_S8_RKS3_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.i.i.ph = phi ptr [ %i.k, %iter.check ], [ %i.m, %vec.epilog.iter.check ], [ %i.v, %vec.epilog.middle.block ]
  %.068.i.i.i.ph = phi ptr [ %3, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.w, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.068.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %.068.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.aa = load i8, ptr %.068.i.i.i, align 1, !tbaa !24
  %i.ab = zext i8 %i.aa to i16
  store i16 %i.ab, ptr %.09.i.i.i, align 2, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %.068.i.i.i, i64 1 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 2
  %.not.i.i.i = icmp eq ptr %i.ac, %4
  br i1 %.not.i.i.i, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKhvEET_S8_RKS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !212

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKhvEET_S8_RKS3_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %._crit_edge.i.i
  store i64 %i.e, ptr %i.b, align 8, !tbaa !35
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.e
  store i16 0, ptr %i.ae, align 2, !tbaa !14
  %i.af = ptrtoint ptr %2 to i64
  %i.ag = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 1
  %i.aj = load ptr, ptr %0, align 8, !tbaa !30
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ag, %i.ak
  %i.am = ashr exact i64 %i.al, 1
  %i.an = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE10_M_replaceEmmPKDsm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.am, i64 noundef %i.ai, ptr noundef nonnull %i.k, i64 noundef %i.e)
  %i.ao = load ptr, ptr %5, align 8, !tbaa !30    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.a
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKhvEET_S8_RKS3_.exit
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !24
  %i.ar = shl i64 %i.aq, 1
  %i.as = add i64 %i.ar, 2
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #17
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKhvEET_S8_RKS3_.exit, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret ptr %i.an
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE10_M_replaceEmmPKDsm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !35   ; 6 uses
  %.neg.i = add i64 %2, 2305843009213693951
end_hunk_4
