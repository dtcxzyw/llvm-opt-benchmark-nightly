inline.NumInlined: 2912
inline.NumDeleted: 1314
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK5folly14AsyncSSLSocket24getSSLClientComprMethodsB5cxx11Ev:bb.a
bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %0, align 8, !tbaa !11246, !alias.scope !12866 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.i
  br i1 %i.q, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.r = load i64, ptr %i.i, align 8, !tbaa !11251, !alias.scope !12866
  %i.s = add i64 %i.r, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #38
  br label %common.resume

_ZN5folly4joinIA2_cSt6vectorIhSaIhEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit: ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail18internalJoinAppendINS_5RangeIPKcEEN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_T0_SL_RT1_(ptr %0, ptr %1, ptr %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 8 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %0, align 1, !tbaa !11251
  %i.f = load i8, ptr %2, align 1, !tbaa !11251
  %i.g = zext i8 %i.f to i64
  tail call void @_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_(i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(32) %4)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.i = icmp eq ptr %i.h, %3
  br i1 %i.i, label %_ZN5folly6detail18internalJoinAppendIcN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_T0_SH_RT1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZN5folly8toAppendIJchPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXaagesZT_Li3Esr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSC_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSB_.exit.i, %.lr.ph.i
  %i.l = phi ptr [ %i.h, %.lr.ph.i ], [ %i.aa, %_ZN5folly8toAppendIJchPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXaagesZT_Li3Esr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSC_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSB_.exit.i ] ; 2 uses
  %i.m = load i64, ptr %i.j, align 8, !tbaa !11250 ; 4 uses
  %i.n = add i64 %i.m, 1                          ; 3 uses
  %i.o = load ptr, ptr %4, align 8, !tbaa !11246  ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.k
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.q = icmp ult i64 %i.m, 16
  tail call void @llvm.assume(i1 %i.q)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.r = load i64, ptr %i.k, align 8, !tbaa !11251
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.s = phi i64 [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i ]
  %i.t = icmp ugt i64 %i.n, %i.s
  br i1 %i.t, label %bb.d, label %_ZN5folly8toAppendIJchPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXaagesZT_Li3Esr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSC_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSB_.exit.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.m, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !11246
  br label %_ZN5folly8toAppendIJchPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXaagesZT_Li3Esr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSC_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSB_.exit.i

_ZN5folly8toAppendIJchPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXaagesZT_Li3Esr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSC_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSB_.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  %i.u = phi ptr [ %.pre.i.i.i.i.i.i, %bb.d ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  store i8 %i.e, ptr %i.v, align 1, !tbaa !11251
  store i64 %i.n, ptr %i.j, align 8, !tbaa !11250
  %i.w = load ptr, ptr %4, align 8, !tbaa !11246
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.n
  store i8 0, ptr %i.x, align 1, !tbaa !11251
  %i.y = load i8, ptr %i.l, align 1, !tbaa !11251
  %i.z = zext i8 %i.y to i64
  tail call void @_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_(i64 noundef %i.z, ptr noundef nonnull align 8 dereferenceable(32) %4)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %3
  br i1 %i.ab, label %_ZN5folly6detail18internalJoinAppendIcN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_T0_SH_RT1_.exit, label %bb.c, !llvm.loop !12869

bb.e:                                             ; preds = %bb.a
  %i.ac = load i8, ptr %2, align 1, !tbaa !11251
  %i.ad = zext i8 %i.ac to i64
  tail call void @_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_(i64 noundef %i.ad, ptr noundef nonnull %4)
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 3 uses
  %i.af = icmp eq ptr %i.ae, %3
  br i1 %i.af, label %_ZN5folly6detail18internalJoinAppendIcN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_T0_SH_RT1_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %.not8.i.i.i.i.i = icmp eq ptr %1, %0
  %.not8.i.i.i.i.i.fr = freeze i1 %.not8.i.i.i.i.i
  br i1 %.not8.i.i.i.i.i.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN5folly8toAppendIJNS_5RangeIPKcEEhPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXaagesZT_Li3Esr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSG_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSF_.exit.us
  %i.ai = phi ptr [ %i.aw, %_ZN5folly8toAppendIJNS_5RangeIPKcEEhPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXaagesZT_Li3Esr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSG_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSF_.exit.us ], [ %i.ae, %.lr.ph ] ; 2 uses
  %i.aj = load i64, ptr %i.ag, align 8, !tbaa !11250 ; 4 uses
  %i.ak = sub i64 9223372036854775807, %i.aj
  %i.al = icmp ult i64 %i.ak, %i.c
  br i1 %i.al, label %.split.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.us: ; preds = %.lr.ph.split.us
  %i.am = add i64 %i.aj, %i.c                     ; 3 uses
  %i.an = load ptr, ptr %4, align 8, !tbaa !11246 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.ah
  br i1 %i.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.us: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.us
  %i.ap = load i64, ptr %i.ah, align 8, !tbaa !11251
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.us: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.us
  %i.aq = icmp ult i64 %i.aj, 16
  tail call void @llvm.assume(i1 %i.aq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.us: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.us
  %i.ar = phi i64 [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.us ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.us ]
  %.not.i.i.i.i.i.us = icmp ugt i64 %i.am, %i.ar
  br i1 %.not.i.i.i.i.i.us, label %bb.f, label %_ZN5folly8toAppendIJNS_5RangeIPKcEEhPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXaagesZT_Li3Esr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSG_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSF_.exit.us

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.us
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.aj, i64 noundef 0, ptr noundef %0, i64 noundef %i.c)
  %.pre = load ptr, ptr %4, align 8, !tbaa !11246
  br label %_ZN5folly8toAppendIJNS_5RangeIPKcEEhPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXaagesZT_Li3Esr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSG_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSF_.exit.us

_ZN5folly8toAppendIJNS_5RangeIPKcEEhPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXaagesZT_Li3Esr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSG_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSF_.exit.us: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.us, %bb.f
  %i.as = phi ptr [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.us ], [ %.pre, %bb.f ]
  store i64 %i.am, ptr %i.ag, align 8, !tbaa !11250
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.am
  store i8 0, ptr %i.at, align 1, !tbaa !11251
  %i.au = load i8, ptr %i.ai, align 1, !tbaa !11251
  %i.av = zext i8 %i.au to i64
  tail call void @_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_(i64 noundef %i.av, ptr noundef nonnull %4)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %3
  br i1 %i.ax, label %_ZN5folly6detail18internalJoinAppendIcN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_T0_SH_RT1_.exit, label %.lr.ph.split.us, !llvm.loop !12870

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN5folly8toAppendIJNS_5RangeIPKcEEhPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXaagesZT_Li3Esr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSG_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSF_.exit
  %i.ay = phi ptr [ %i.bn, %_ZN5folly8toAppendIJNS_5RangeIPKcEEhPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXaagesZT_Li3Esr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSG_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSF_.exit ], [ %i.ae, %.lr.ph ] ; 2 uses
  %i.az = load i64, ptr %i.ag, align 8, !tbaa !11250 ; 5 uses
  %i.ba = sub i64 9223372036854775807, %i.az
  %i.bb = icmp ult i64 %i.ba, %i.c
  br i1 %i.bb, label %.split.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.141) #41
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %.lr.ph.split
  %i.bc = add i64 %i.az, %i.c                     ; 3 uses
  %i.bd = load ptr, ptr %4, align 8, !tbaa !11246 ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.ah
  br i1 %i.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.bf = icmp ult i64 %i.az, 16
  tail call void @llvm.assume(i1 %i.bf)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.bg = load i64, ptr %i.ah, align 8, !tbaa !11251
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.bh = phi i64 [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i ]
  %.not.i.i.i.i.i = icmp ugt i64 %i.bc, %i.bh
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.az
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bi, ptr align 1 %0, i64 %i.c, i1 false)
  br label %_ZN5folly8toAppendIJNS_5RangeIPKcEEhPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXaagesZT_Li3Esr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSG_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSF_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.az, i64 noundef 0, ptr noundef %0, i64 noundef %i.c)
  br label %_ZN5folly8toAppendIJNS_5RangeIPKcEEhPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXaagesZT_Li3Esr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSG_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSF_.exit

_ZN5folly8toAppendIJNS_5RangeIPKcEEhPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXaagesZT_Li3Esr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSG_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSF_.exit: ; preds = %bb.g, %bb.h
  store i64 %i.bc, ptr %i.ag, align 8, !tbaa !11250
  %i.bj = load ptr, ptr %4, align 8, !tbaa !11246
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bc
  store i8 0, ptr %i.bk, align 1, !tbaa !11251
  %i.bl = load i8, ptr %i.ay, align 1, !tbaa !11251
  %i.bm = zext i8 %i.bl to i64
  tail call void @_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_(i64 noundef %i.bm, ptr noundef nonnull %4)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %3
  br i1 %i.bo, label %_ZN5folly6detail18internalJoinAppendIcN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_T0_SH_RT1_.exit, label %.lr.ph.split, !llvm.loop !12870

_ZN5folly6detail18internalJoinAppendIcN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_T0_SH_RT1_.exit: ; preds = %_ZN5folly8toAppendIJNS_5RangeIPKcEEhPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXaagesZT_Li3Esr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSG_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSF_.exit, %_ZN5folly8toAppendIJNS_5RangeIPKcEEhPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXaagesZT_Li3Esr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSG_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSF_.exit.us, %_ZN5folly8toAppendIJchPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXaagesZT_Li3Esr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSC_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSB_.exit.i, %bb.e, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_(i64 noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %.not.i.i.i.i = icmp eq i64 %0, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.thread.i.i.i, label %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i, !prof !11309

._crit_edge.thread.i.i.i:                         ; preds = %bb.a
  %i.b = load i16, ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, align 2, !tbaa !12759
  br label %bb.c

_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i: ; preds = %bb.a
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %0, i1 true)
  %i.d = sub nuw nsw i64 64, %i.c
  %i.e = mul nuw nsw i64 %i.d, 78
  %i.f = lshr i64 %i.e, 8                         ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !266
  %i.i = icmp uge i64 %0, %i.h
  %i.j = zext i1 %i.i to i64
  %i.k = add nuw nsw i64 %i.f, %i.j               ; 5 uses
  %i.l = icmp samesign ugt i64 %i.k, 2
  br i1 %i.l, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi i64 [ %i.n, %.lr.ph.i.i.i ], [ %0, %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i ] ; 2 uses
  %.014.i2.i.i.i = phi i64 [ %i.m, %.lr.ph.i.i.i ], [ %i.k, %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i ]
  %i.m = add i64 %.014.i2.i.i.i, -2               ; 4 uses
  %i.n = udiv i64 %.0.i3.i.i.i, 100               ; 2 uses
  %i.o = urem i64 %.0.i3.i.i.i, 100
  %i.p = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2, !tbaa !12759
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.m
  store i16 %i.q, ptr %i.r, align 1
  %i.s = icmp ugt i64 %i.m, 2
  br i1 %i.s, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !12871

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i
  %.014.i.lcssa.i.i.i = phi i64 [ %i.k, %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i ], [ %i.m, %.lr.ph.i.i.i ]
  %.0.i.lcssa.i.i.i = phi i64 [ %0, %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i ], [ %i.n, %.lr.ph.i.i.i ]
  %i.t = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.0.i.lcssa.i.i.i
  %i.u = load i16, ptr %i.t, align 2, !tbaa !12759 ; 3 uses
  %i.v = icmp eq i64 %.014.i.lcssa.i.i.i, 2
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i
  store i16 %i.u, ptr %i.a, align 16
  %i.w = trunc i16 %i.u to i8
  br label %_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i, %._crit_edge.thread.i.i.i
  %i.x = phi i16 [ %i.b, %._crit_edge.thread.i.i.i ], [ %i.u, %._crit_edge.i.i.i ]
  %.0.i1813.i.i.i = phi i64 [ 1, %._crit_edge.thread.i.i.i ], [ %i.k, %._crit_edge.i.i.i ]
  %i.y = lshr i16 %i.x, 8
  %i.z = trunc nuw i16 %i.y to i8                 ; 2 uses
  store i8 %i.z, ptr %i.a, align 16, !tbaa !11251
  br label %_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit

_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit: ; preds = %bb.b, %bb.c
  %i.aa = phi i8 [ %i.w, %bb.b ], [ %i.z, %bb.c ]
  %.0.i1812.i.i.i = phi i64 [ %i.k, %bb.b ], [ %.0.i1813.i.i.i, %bb.c ] ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !11250 ; 5 uses
  %i.ad = sub i64 9223372036854775807, %i.ac
  %i.ae = icmp ult i64 %i.ad, %.0.i1812.i.i.i
  br i1 %i.ae, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.d:                                             ; preds = %_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.141) #41
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit
  %i.af = add i64 %i.ac, %.0.i1812.i.i.i          ; 3 uses
  %i.ag = load ptr, ptr %1, align 8, !tbaa !11246 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.aj = icmp ult i64 %i.ac, 16
  tail call void @llvm.assume(i1 %i.aj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.ak = load i64, ptr %i.ah, align 8, !tbaa !11251
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.al = phi i64 [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.af, %i.al
  br i1 %.not.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq i64 %.0.i1812.i.i.i, 0
  br i1 %.not8.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ac ; 2 uses
  %cond.i.i = icmp eq i64 %.0.i1812.i.i.i, 1
  br i1 %cond.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 %i.aa, ptr %i.am, align 1, !tbaa !11251
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr nonnull align 16 %i.a, i64 %.0.i1812.i.i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ac, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %.0.i1812.i.i.i)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.e, %bb.g, %bb.h, %bb.i
  store i64 %i.af, ptr %i.ab, align 8, !tbaa !11250
  %i.an = load ptr, ptr %1, align 8, !tbaa !11246
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.af
  store i8 0, ptr %i.ao, align 1, !tbaa !11251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #33

; Function Attrs: mustprogress uwtable
define void @_ZNK5folly14AsyncSSLSocket16getSSLClientExtsB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1960) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1780
  %i.b = load i8, ptr %i.a, align 4, !tbaa !12503, !range !12, !noundef !493
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !11252
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !11250
  store i8 0, ptr %i.d, align 8, !tbaa !11251
  br label %_ZN5folly4joinIA2_cSt6vectorINS_3ssl12TLSExtensionESaIS4_EEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit

common.resume:                                    ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.o

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1784
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !11660 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12872)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !11252, !alias.scope !12872
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !11298, !noalias !12872 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !11298, !noalias !12872 ; 2 uses
  store i64 0, ptr %i.j, align 8, !tbaa !11250, !alias.scope !12872
  store i8 0, ptr %i.i, align 8, !tbaa !11251, !alias.scope !12872
  %i.n = icmp eq ptr %i.k, %i.m
  br i1 %i.n, label %_ZN5folly4joinIA2_cSt6vectorINS_3ssl12TLSExtensionESaIS4_EEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5folly6detail18internalJoinAppendINS_5RangeIPKcEEN9__gnu_cxx17__normal_iteratorIPKNS_3ssl12TLSExtensionESt6vectorIS9_SaIS9_EEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_T0_SN_RT1_(ptr nonnull align 1 dereferenceable(2) @.str.146, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.146, i64 1), ptr %i.k, ptr %i.m, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN5folly4joinIA2_cSt6vectorINS_3ssl12TLSExtensionESaIS4_EEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %0, align 8, !tbaa !11246, !alias.scope !12872 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.i
  br i1 %i.q, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.r = load i64, ptr %i.i, align 8, !tbaa !11251, !alias.scope !12872
  %i.s = add i64 %i.r, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #38
  br label %common.resume

_ZN5folly4joinIA2_cSt6vectorINS_3ssl12TLSExtensionESaIS4_EEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit: ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail18internalJoinAppendINS_5RangeIPKcEEN9__gnu_cxx17__normal_iteratorIPKNS_3ssl12TLSExtensionESt6vectorIS9_SaIS9_EEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_T0_SN_RT1_(ptr %0, ptr %1, ptr %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 8 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %0, align 1, !tbaa !11251
  %i.f = load i16, ptr %2, align 2, !tbaa !12764
  %i.g = zext i16 %i.f to i64
  tail call void @_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_(i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(32) %4)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %i.i = icmp eq ptr %i.h, %3
  br i1 %i.i, label %_ZN5folly6detail18internalJoinAppendIcN9__gnu_cxx17__normal_iteratorIPKNS_3ssl12TLSExtensionESt6vectorIS5_SaIS5_EEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_T0_SJ_RT1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZN5folly8toAppendIJcNS_3ssl12TLSExtensionEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXaagesZT_Li3Esr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSE_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSD_.exit.i, %.lr.ph.i
  %i.l = phi ptr [ %i.h, %.lr.ph.i ], [ %i.aa, %_ZN5folly8toAppendIJcNS_3ssl12TLSExtensionEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXaagesZT_Li3Esr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSE_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSD_.exit.i ] ; 2 uses
  %i.m = load i64, ptr %i.j, align 8, !tbaa !11250 ; 4 uses
  %i.n = add i64 %i.m, 1                          ; 3 uses
  %i.o = load ptr, ptr %4, align 8, !tbaa !11246  ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.k
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.q = icmp ult i64 %i.m, 16
  tail call void @llvm.assume(i1 %i.q)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.r = load i64, ptr %i.k, align 8, !tbaa !11251
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.s = phi i64 [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i ]
  %i.t = icmp ugt i64 %i.n, %i.s
  br i1 %i.t, label %bb.d, label %_ZN5folly8toAppendIJcNS_3ssl12TLSExtensionEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXaagesZT_Li3Esr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSE_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSD_.exit.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.m, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !11246
  br label %_ZN5folly8toAppendIJcNS_3ssl12TLSExtensionEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXaagesZT_Li3Esr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSE_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSD_.exit.i

_ZN5folly8toAppendIJcNS_3ssl12TLSExtensionEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXaagesZT_Li3Esr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSE_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSD_.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  %i.u = phi ptr [ %.pre.i.i.i.i.i.i, %bb.d ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  store i8 %i.e, ptr %i.v, align 1, !tbaa !11251
  store i64 %i.n, ptr %i.j, align 8, !tbaa !11250
  %i.w = load ptr, ptr %4, align 8, !tbaa !11246
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.n
  store i8 0, ptr %i.x, align 1, !tbaa !11251
  %i.y = load i16, ptr %i.l, align 2, !tbaa !12764
end_hunk_0
