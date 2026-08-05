inline.NumInlined: 744
inline.NumDeleted: 340
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2EEEE4callIJA55_cmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpRKT_:bb.a

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not8.i.i.i, label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.e ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.c, 1
  br i1 %cond.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = load i8, ptr %0, align 1, !tbaa !12
  store i8 %i.p, ptr %i.o, align 1, !tbaa !12
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr nonnull align 1 dereferenceable(55) %0, i64 %i.c, i1 false)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef %i.e, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(55) %0, i64 noundef %i.c)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  store i64 %i.h, ptr %i.d, align 8, !tbaa !28
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.h
  store i8 0, ptr %i.r, align 1, !tbaa !12
  %i.s = load i64, ptr %1, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.t = call noundef i64 @_ZN5folly13to_ascii_withILm10ENS_17to_ascii_alphabetILb0EEELm20EEEmRAT1__cm(ptr noundef nonnull align 1 dereferenceable(20) %i.a, i64 noundef %i.s) ; 6 uses
  %i.u = load i64, ptr %i.d, align 8, !tbaa !28   ; 5 uses
  %i.v = sub i64 9223372036854775807, %i.u
  %i.w = icmp ult i64 %i.v, %i.t
  br i1 %i.w, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i9

bb.h:                                             ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #33
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i9: ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit
  %i.x = add i64 %i.u, %i.t                       ; 3 uses
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !25   ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.j
  br i1 %i.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i15: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i9
  %i.aa = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.aa)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i9
  %i.ab = load i64, ptr %i.j, align 8, !tbaa !12
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i11: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i15
  %i.ac = phi i64 [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i15 ]
  %.not.i.i.i12 = icmp ugt i64 %i.x, %i.ac
  br i1 %.not.i.i.i12, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i11
  %.not8.i.i.i13 = icmp eq i64 %i.t, 0
  br i1 %.not8.i.i.i13, label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.u ; 2 uses
  %cond.i.i.i14 = icmp eq i64 %i.t, 1
  br i1 %cond.i.i.i14, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ae = load i8, ptr %i.a, align 16, !tbaa !12
  store i8 %i.ae, ptr %i.ad, align 1, !tbaa !12
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_.exit

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr nonnull align 16 %i.a, i64 %i.t, i1 false)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i11
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef %i.u, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.t)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_.exit

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_.exit: ; preds = %bb.i, %bb.k, %bb.l, %bb.m
  store i64 %i.x, ptr %i.d, align 8, !tbaa !28
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.x
  store i8 0, ptr %i.ag, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5folly13to_ascii_withILm10ENS_17to_ascii_alphabetILb0EEELm20EEEmRAT1__cm(ptr noundef nonnull align 1 dereferenceable(20) %0, i64 noundef %1) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load i64, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, align 8, !tbaa !50
  %i.b = icmp ult i64 %1, %i.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 8), align 8
  %i.d = icmp ult i64 %1, %i.c
  %or.cond = select i1 %i.b, i1 true, i1 %i.d, !prof !78
  br i1 %or.cond, label %._crit_edge.thread, label %bb.b, !prof !78

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 16), align 8, !tbaa !50
  %i.f = icmp ult i64 %1, %i.e
  br i1 %i.f, label %._crit_edge.thread14, label %bb.c, !prof !24

._crit_edge.thread14:                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %1
  %i.h = load i16, ptr %i.g, align 2, !tbaa !79
  br label %bb.t

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 24), align 8, !tbaa !50
  %i.j = icmp ult i64 %1, %i.i
  br i1 %i.j, label %.lr.ph.preheader, label %bb.d, !prof !24

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 32), align 8, !tbaa !50
  %i.l = icmp ult i64 %1, %i.k
  br i1 %i.l, label %.lr.ph.preheader, label %bb.e, !prof !24

bb.e:                                             ; preds = %bb.d
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 40), align 8, !tbaa !50
  %i.n = icmp ult i64 %1, %i.m
  br i1 %i.n, label %.lr.ph.preheader, label %bb.f, !prof !24

bb.f:                                             ; preds = %bb.e
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 48), align 8, !tbaa !50
  %i.p = icmp ult i64 %1, %i.o
  br i1 %i.p, label %.lr.ph.preheader, label %bb.g, !prof !24

bb.g:                                             ; preds = %bb.f
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 56), align 8, !tbaa !50
  %i.r = icmp ult i64 %1, %i.q
  br i1 %i.r, label %.lr.ph.preheader, label %bb.h, !prof !24

bb.h:                                             ; preds = %bb.g
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 64), align 8, !tbaa !50
  %i.t = icmp ult i64 %1, %i.s
  br i1 %i.t, label %.lr.ph.preheader, label %bb.i, !prof !24

bb.i:                                             ; preds = %bb.h
  %i.u = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 72), align 8, !tbaa !50
  %i.v = icmp ult i64 %1, %i.u
  br i1 %i.v, label %.lr.ph.preheader, label %bb.j, !prof !24

bb.j:                                             ; preds = %bb.i
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 80), align 8, !tbaa !50
  %i.x = icmp ult i64 %1, %i.w
  br i1 %i.x, label %.lr.ph.preheader, label %bb.k, !prof !24

bb.k:                                             ; preds = %bb.j
  %i.y = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 88), align 8, !tbaa !50
  %i.z = icmp ult i64 %1, %i.y
  br i1 %i.z, label %.lr.ph.preheader, label %bb.l, !prof !24

bb.l:                                             ; preds = %bb.k
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 96), align 8, !tbaa !50
  %i.ab = icmp ult i64 %1, %i.aa
  br i1 %i.ab, label %.lr.ph.preheader, label %bb.m, !prof !24

bb.m:                                             ; preds = %bb.l
  %i.ac = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 104), align 8, !tbaa !50
  %i.ad = icmp ult i64 %1, %i.ac
  br i1 %i.ad, label %.lr.ph.preheader, label %bb.n, !prof !24

bb.n:                                             ; preds = %bb.m
  %i.ae = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 112), align 8, !tbaa !50
  %i.af = icmp ult i64 %1, %i.ae
  br i1 %i.af, label %.lr.ph.preheader, label %bb.o, !prof !24

bb.o:                                             ; preds = %bb.n
  %i.ag = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 120), align 8, !tbaa !50
  %i.ah = icmp ult i64 %1, %i.ag
  br i1 %i.ah, label %.lr.ph.preheader, label %bb.p, !prof !24

bb.p:                                             ; preds = %bb.o
  %i.ai = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 128), align 8, !tbaa !50
  %i.aj = icmp ult i64 %1, %i.ai
  br i1 %i.aj, label %.lr.ph.preheader, label %bb.q, !prof !24

bb.q:                                             ; preds = %bb.p
  %i.ak = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 136), align 8, !tbaa !50
  %i.al = icmp ult i64 %1, %i.ak
  br i1 %i.al, label %.lr.ph.preheader, label %bb.r, !prof !24

bb.r:                                             ; preds = %bb.q
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 144), align 8, !tbaa !50
  %i.an = icmp ult i64 %1, %i.am
  br i1 %i.an, label %.lr.ph.preheader, label %bb.s, !prof !24

bb.s:                                             ; preds = %bb.r
  %i.ao = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 152), align 8, !tbaa !50
  %i.ap = icmp ult i64 %1, %i.ao
  br i1 %i.ap, label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit, label %.lr.ph.preheader, !prof !24

_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit: ; preds = %bb.s
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit
  %.ph = phi i64 [ 19, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit ], [ 18, %bb.r ], [ 17, %bb.q ], [ 16, %bb.p ], [ 15, %bb.o ], [ 14, %bb.n ], [ 13, %bb.m ], [ 12, %bb.l ], [ 11, %bb.k ], [ 10, %bb.j ], [ 9, %bb.i ], [ 8, %bb.h ], [ 7, %bb.g ], [ 6, %bb.f ], [ 5, %bb.e ], [ 4, %bb.d ], [ 3, %bb.c ], [ 20, %bb.s ] ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0.i6 = phi i64 [ %i.ar, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.014.i5 = phi i64 [ %i.aq, %.lr.ph ], [ %.ph, %.lr.ph.preheader ]
  %i.aq = add i64 %.014.i5, -2                    ; 4 uses
  %i.ar = udiv i64 %.0.i6, 100                    ; 2 uses
  %i.as = urem i64 %.0.i6, 100
  %i.at = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2, !tbaa !79
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %i.aq
  store i16 %i.au, ptr %i.av, align 1
  %i.aw = icmp ugt i64 %i.aq, 2
  br i1 %i.aw, label %.lr.ph, label %._crit_edge, !llvm.loop !81

._crit_edge.thread:                               ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %1
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !79
  br label %bb.u

._crit_edge:                                      ; preds = %.lr.ph
  %i.az = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.ar
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !79 ; 2 uses
  %i.bb = icmp eq i64 %i.aq, 2
  br i1 %i.bb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge.thread14, %._crit_edge
  %i.bc = phi i16 [ %i.h, %._crit_edge.thread14 ], [ %i.ba, %._crit_edge ]
  %i.bd = phi i64 [ 2, %._crit_edge.thread14 ], [ %.ph, %._crit_edge ]
  store i16 %i.bc, ptr %0, align 1
  br label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEvPcmm.exit

bb.u:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.be = phi i16 [ %i.ay, %._crit_edge.thread ], [ %i.ba, %._crit_edge ]
  %i.bf = phi i64 [ 1, %._crit_edge.thread ], [ %.ph, %._crit_edge ]
  %i.bg = lshr i16 %i.be, 8
  %i.bh = trunc nuw i16 %i.bg to i8
  store i8 %i.bh, ptr %0, align 1, !tbaa !12
  br label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEvPcmm.exit

_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEvPcmm.exit: ; preds = %bb.t, %bb.u
  %i.bi = phi i64 [ %i.bd, %bb.t ], [ %i.bf, %bb.u ]
  ret i64 %i.bi
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i64 1, 3) i64 @_ZN5folly11IPAddressV416trySetFromBinaryENS_5RangeIPKhEE(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %0, ptr %1, ptr %2) local_unnamed_addr #25 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b
  %.not = icmp eq i64 %i.c, 4
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 1
  store i32 %i.d, ptr %0, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.03.0 = phi i64 [ 1, %bb.b ], [ 2, %bb.a ]
  ret i64 %.sroa.03.0
}

; Function Attrs: mustprogress uwtable
define i32 @_ZN5folly11IPAddressV419fromInverseArpaNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %3 = alloca %"class.folly::IPAddressV4", align 4 ; 2 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::vector", align 8       ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %9 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !25     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !28   ; 3 uses
  %.not.i.i = icmp ult i64 %i.c, 13
  br i1 %.not.i.i, label %.noexc24, label %_ZNK5folly5RangeIPKcE8subpieceEmm.exit.i.i

_ZNK5folly5RangeIPKcE8subpieceEmm.exit.i.i:       ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -13      ; 3 uses
  %i.f = load i64, ptr %i.e, align 1
  %i.g = xor i64 %i.f, 8242823586531666222
  %i.h = getelementptr i8, ptr %i.e, i64 5
  %i.i = load i64, ptr %i.h, align 1
  %i.j = xor i64 %i.i, 7021237580787246180
  %i.k = or i64 %i.g, %i.j
  %i.l = icmp ne i64 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %.noexc24

.noexc24:                                         ; preds = %bb.a, %_ZNK5folly5RangeIPKcE8subpieceEmm.exit.i.i
  %i.o = tail call ptr @__cxa_allocate_exception(i64 16) #32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32, !noalias !83
  %i.p = load ptr, ptr %0, align 8, !tbaa !25
  %i.q = load i64, ptr %i.b, align 8, !tbaa !28
  store ptr %i.p, ptr %1, align 16, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !12
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.13, i64 45, i64 13, ptr nonnull %1)
          to label %bb.b unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.b:                                             ; preds = %.noexc24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32, !noalias !83
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly24IPAddressFormatExceptionE, i64 16), ptr %i.o, align 8, !tbaa !56
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN5folly24IPAddressFormatExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #33
          to label %bb.u unwind label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc24
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.c
  %.014 = phi i1 [ false, %bb.c ], [ true, %bb.b ] ; 2 uses
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.u = load ptr, ptr %4, align 8, !tbaa !25     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.x = load i64, ptr %i.v, align 8, !tbaa !12
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br i1 %.014, label %bb.e, label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br i1 %.014, label %bb.e, label %bb.t

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn2054 = phi { ptr, i32 } [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.o) #32
  br label %bb.t

bb.f:                                             ; preds = %_ZNK5folly5RangeIPKcE8subpieceEmm.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE15simdSplitByCharISt6vectorINS_5RangeIPKcEESaISC_EEEEvcSC_RT_(i8 noundef signext 46, ptr %i.a, ptr nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %_ZN5folly5splitIcNS_5RangeIPKcEESt6vectorIS4_SaIS4_EEEENSt9enable_ifIXaaaasr6detail20IsSimdSupportedDelimIT_EE5valuesr6detail31HasSimdSplitCompatibleValueTypeIT1_EE5valuesr6detail25IsSplitSupportedContainerISA_EE5valueEvE4typeERKS9_RKT0_RSA_b.exit unwind label %bb.i

_ZN5folly5splitIcNS_5RangeIPKcEESt6vectorIS4_SaIS4_EEEENSt9enable_ifIXaaaasr6detail20IsSimdSupportedDelimIT_EE5valuesr6detail31HasSimdSplitCompatibleValueTypeIT1_EE5valuesr6detail25IsSplitSupportedContainerISA_EE5valueEvE4typeERKS9_RKT0_RSA_b.exit: ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !86  ; 2 uses
  %i.ab = load ptr, ptr %5, align 8, !tbaa !89    ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %.not = icmp eq i64 %i.ae, 64
  br i1 %.not, label %bb.l, label %.noexc

.noexc:                                           ; preds = %_ZN5folly5splitIcNS_5RangeIPKcEESt6vectorIS4_SaIS4_EEEENSt9enable_ifIXaaaasr6detail20IsSimdSupportedDelimIT_EE5valuesr6detail31HasSimdSplitCompatibleValueTypeIT1_EE5valuesr6detail25IsSplitSupportedContainerISA_EE5valueEvE4typeERKS9_RKT0_RSA_b.exit
  %i.af = call ptr @__cxa_allocate_exception(i64 16) #32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32, !noalias !90
  %i.ag = add nsw i64 %i.c, -13
  store ptr %i.a, ptr %2, align 16, !tbaa !12
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !12
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.14, i64 21, i64 13, ptr nonnull %2)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33.thread

bb.g:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32, !noalias !90
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly24IPAddressFormatExceptionE, i64 16), ptr %i.af, align 8, !tbaa !56
  invoke void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTIN5folly24IPAddressFormatExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #33
          to label %bb.u unwind label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33.thread: ; preds = %.noexc
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.k

bb.j:                                             ; preds = %bb.g, %bb.h
  %.0 = phi i1 [ false, %bb.h ], [ true, %bb.g ]  ; 2 uses
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.al = load ptr, ptr %6, align 8, !tbaa !25    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.j
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !12
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br i1 %.0, label %bb.k, label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br i1 %.0, label %bb.k, label %bb.r

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %.pn1757 = phi { ptr, i32 } [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33.thread ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ]
  call void @__cxa_free_exception(ptr %i.af) #32
  br label %bb.r

bb.l:                                             ; preds = %_ZN5folly5splitIcNS_5RangeIPKcEESt6vectorIS4_SaIS4_EEEENSt9enable_ifIXaaaasr6detail20IsSimdSupportedDelimIT_EE5valuesr6detail31HasSimdSplitCompatibleValueTypeIT1_EE5valuesr6detail25IsSplitSupportedContainerISA_EE5valueEvE4typeERKS9_RKT0_RSA_b.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
end_hunk_0
