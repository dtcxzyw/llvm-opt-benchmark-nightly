Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/AsyncSSLSocket?download=true
inline.NumInlined: 2905
inline.NumDeleted: 1295
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2EEEE4callIJchPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpRKT_:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.e, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !tbaa !10536
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.b, label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvcPT_.exit

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef %i.e, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !10534
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvcPT_.exit

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvcPT_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i, %bb.b
  %i.n = phi ptr [ %.pre.i.i.i, %bb.b ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.e
  store i8 %i.c, ptr %i.o, align 1, !tbaa !10536
  store i64 %i.f, ptr %i.d, align 8, !tbaa !10535
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !10534
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store i8 0, ptr %i.q, align 1, !tbaa !10536
  %i.r = load i8, ptr %1, align 1, !tbaa !10536
  %i.s = zext i8 %i.r to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.t = call noundef i64 @_ZN5folly13to_ascii_withILm10ENS_17to_ascii_alphabetILb0EEELm20EEEmRAT1__cm(ptr noundef nonnull align 1 dereferenceable(20) %i.a, i64 noundef %i.s) ; 6 uses
  %i.u = load i64, ptr %i.d, align 8, !tbaa !10535 ; 5 uses
  %i.v = sub i64 9223372036854775807, %i.u
  %i.w = icmp ult i64 %i.v, %i.t
  br i1 %i.w, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.c:                                             ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvcPT_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.147) #40
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvcPT_.exit
  %i.x = add i64 %i.u, %i.t                       ; 3 uses
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !10534 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.h
  br i1 %i.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.aa = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.aa)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ab = load i64, ptr %i.h, align 8, !tbaa !10536
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.ac = phi i64 [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.x, %i.ac
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not8.i.i.i.i, label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEhEENSt9enable_ifIXaaaa13is_integral_vIT0_Esr12IsSomeStringIT_EE5valueltstS8_Li4EEvE4typeES8_PS9_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.u ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.t, 1
  br i1 %cond.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = load i8, ptr %i.a, align 16, !tbaa !10536
  store i8 %i.ae, ptr %i.ad, align 1, !tbaa !10536
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEhEENSt9enable_ifIXaaaa13is_integral_vIT0_Esr12IsSomeStringIT_EE5valueltstS8_Li4EEvE4typeES8_PS9_.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr nonnull align 16 %i.a, i64 %i.t, i1 false)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEhEENSt9enable_ifIXaaaa13is_integral_vIT0_Esr12IsSomeStringIT_EE5valueltstS8_Li4EEvE4typeES8_PS9_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef %i.u, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.t)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEhEENSt9enable_ifIXaaaa13is_integral_vIT0_Esr12IsSomeStringIT_EE5valueltstS8_Li4EEvE4typeES8_PS9_.exit

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEhEENSt9enable_ifIXaaaa13is_integral_vIT0_Esr12IsSomeStringIT_EE5valueltstS8_Li4EEvE4typeES8_PS9_.exit: ; preds = %bb.d, %bb.f, %bb.g, %bb.h
  store i64 %i.x, ptr %i.d, align 8, !tbaa !10535
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !10534
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.x
  store i8 0, ptr %i.ag, align 1, !tbaa !10536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5folly13to_ascii_withILm10ENS_17to_ascii_alphabetILb0EEELm20EEEmRAT1__cm(ptr noundef nonnull align 1 dereferenceable(20) %0, i64 noundef %1) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load i64, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, align 8, !tbaa !641
  %i.b = icmp ult i64 %1, %i.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 8), align 8
  %i.d = icmp ult i64 %1, %i.c
  %or.cond = select i1 %i.b, i1 true, i1 %i.d, !prof !11137
  br i1 %or.cond, label %._crit_edge.thread, label %bb.b, !prof !11137

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 16), align 8, !tbaa !641
  %i.f = icmp ult i64 %1, %i.e
  br i1 %i.f, label %._crit_edge.thread15, label %bb.c, !prof !10573

._crit_edge.thread15:                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %1
  %i.h = load i16, ptr %i.g, align 2, !tbaa !11125
  br label %bb.t

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 24), align 8, !tbaa !641
  %i.j = icmp ult i64 %1, %i.i
  br i1 %i.j, label %.lr.ph.preheader, label %bb.d, !prof !10573

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 32), align 8, !tbaa !641
  %i.l = icmp ult i64 %1, %i.k
  br i1 %i.l, label %.lr.ph.preheader, label %bb.e, !prof !10573

bb.e:                                             ; preds = %bb.d
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 40), align 8, !tbaa !641
  %i.n = icmp ult i64 %1, %i.m
  br i1 %i.n, label %.lr.ph.preheader, label %bb.f, !prof !10573

bb.f:                                             ; preds = %bb.e
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 48), align 8, !tbaa !641
  %i.p = icmp ult i64 %1, %i.o
  br i1 %i.p, label %.lr.ph.preheader, label %bb.g, !prof !10573

bb.g:                                             ; preds = %bb.f
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 56), align 8, !tbaa !641
  %i.r = icmp ult i64 %1, %i.q
  br i1 %i.r, label %.lr.ph.preheader, label %bb.h, !prof !10573

bb.h:                                             ; preds = %bb.g
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 64), align 8, !tbaa !641
  %i.t = icmp ult i64 %1, %i.s
  br i1 %i.t, label %.lr.ph.preheader, label %bb.i, !prof !10573

bb.i:                                             ; preds = %bb.h
  %i.u = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 72), align 8, !tbaa !641
  %i.v = icmp ult i64 %1, %i.u
  br i1 %i.v, label %.lr.ph.preheader, label %bb.j, !prof !10573

bb.j:                                             ; preds = %bb.i
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 80), align 8, !tbaa !641
  %i.x = icmp ult i64 %1, %i.w
  br i1 %i.x, label %.lr.ph.preheader, label %bb.k, !prof !10573

bb.k:                                             ; preds = %bb.j
  %i.y = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 88), align 8, !tbaa !641
  %i.z = icmp ult i64 %1, %i.y
  br i1 %i.z, label %.lr.ph.preheader, label %bb.l, !prof !10573

bb.l:                                             ; preds = %bb.k
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 96), align 8, !tbaa !641
  %i.ab = icmp ult i64 %1, %i.aa
  br i1 %i.ab, label %.lr.ph.preheader, label %bb.m, !prof !10573

bb.m:                                             ; preds = %bb.l
  %i.ac = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 104), align 8, !tbaa !641
  %i.ad = icmp ult i64 %1, %i.ac
  br i1 %i.ad, label %.lr.ph.preheader, label %bb.n, !prof !10573

bb.n:                                             ; preds = %bb.m
  %i.ae = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 112), align 8, !tbaa !641
  %i.af = icmp ult i64 %1, %i.ae
  br i1 %i.af, label %.lr.ph.preheader, label %bb.o, !prof !10573

bb.o:                                             ; preds = %bb.n
  %i.ag = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 120), align 8, !tbaa !641
  %i.ah = icmp ult i64 %1, %i.ag
  br i1 %i.ah, label %.lr.ph.preheader, label %bb.p, !prof !10573

bb.p:                                             ; preds = %bb.o
  %i.ai = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 128), align 8, !tbaa !641
  %i.aj = icmp ult i64 %1, %i.ai
  br i1 %i.aj, label %.lr.ph.preheader, label %bb.q, !prof !10573

bb.q:                                             ; preds = %bb.p
  %i.ak = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 136), align 8, !tbaa !641
  %i.al = icmp ult i64 %1, %i.ak
  br i1 %i.al, label %.lr.ph.preheader, label %bb.r, !prof !10573

bb.r:                                             ; preds = %bb.q
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 144), align 8, !tbaa !641
  %i.an = icmp ult i64 %1, %i.am
  br i1 %i.an, label %.lr.ph.preheader, label %bb.s, !prof !10573

bb.s:                                             ; preds = %bb.r
  %i.ao = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 152), align 8, !tbaa !641
  %i.ap = icmp ult i64 %1, %i.ao
  br i1 %i.ap, label %_ZN5folly6detail19to_ascii_size_arrayILm10EEEmm.exit, label %.lr.ph.preheader, !prof !10573

_ZN5folly6detail19to_ascii_size_arrayILm10EEEmm.exit: ; preds = %bb.s
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %_ZN5folly6detail19to_ascii_size_arrayILm10EEEmm.exit
  %.ph = phi i64 [ 19, %_ZN5folly6detail19to_ascii_size_arrayILm10EEEmm.exit ], [ 18, %bb.r ], [ 17, %bb.q ], [ 16, %bb.p ], [ 15, %bb.o ], [ 14, %bb.n ], [ 13, %bb.m ], [ 12, %bb.l ], [ 11, %bb.k ], [ 10, %bb.j ], [ 9, %bb.i ], [ 8, %bb.h ], [ 7, %bb.g ], [ 6, %bb.f ], [ 5, %bb.e ], [ 4, %bb.d ], [ 3, %bb.c ], [ 20, %bb.s ] ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0.i7 = phi i64 [ %i.ar, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.014.i6 = phi i64 [ %i.aq, %.lr.ph ], [ %.ph, %.lr.ph.preheader ]
  %i.aq = add i64 %.014.i6, -2                    ; 4 uses
  %i.ar = udiv i64 %.0.i7, 100                    ; 2 uses
  %i.as = urem i64 %.0.i7, 100
  %i.at = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2, !tbaa !11125
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %i.aq
  store i16 %i.au, ptr %i.av, align 1
  %i.aw = icmp ugt i64 %i.aq, 2
  br i1 %i.aw, label %.lr.ph, label %._crit_edge, !llvm.loop !12478

._crit_edge.thread:                               ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %1
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !11125
  br label %bb.u

._crit_edge:                                      ; preds = %.lr.ph
  %i.az = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.ar
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !11125 ; 2 uses
  %i.bb = icmp eq i64 %i.aq, 2
  br i1 %i.bb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge.thread15, %._crit_edge
  %i.bc = phi i16 [ %i.h, %._crit_edge.thread15 ], [ %i.ba, %._crit_edge ]
  %i.bd = phi i64 [ 2, %._crit_edge.thread15 ], [ %.ph, %._crit_edge ]
  store i16 %i.bc, ptr %0, align 1
  br label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEvPcmm.exit

bb.u:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.be = phi i16 [ %i.ay, %._crit_edge.thread ], [ %i.ba, %._crit_edge ]
  %i.bf = phi i64 [ 1, %._crit_edge.thread ], [ %.ph, %._crit_edge ]
  %i.bg = lshr i16 %i.be, 8
  %i.bh = trunc nuw i16 %i.bg to i8
  store i8 %i.bh, ptr %0, align 1, !tbaa !10536
  br label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEvPcmm.exit

_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEvPcmm.exit: ; preds = %bb.t, %bb.u
  %i.bi = phi i64 [ %i.bd, %bb.t ], [ %i.bf, %bb.u ]
  ret i64 %i.bi
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2EEEE4callIJNS_5RangeIPKcEEhPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 6 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !11136  ; 8 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !10538 ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !10538 ; 2 uses
  %i.c = ptrtoint ptr %.sroa.2.0.copyload.i to i64
  %i.d = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.e = sub i64 %i.c, %i.d                       ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !10535 ; 5 uses
  %i.h = sub i64 9223372036854775807, %i.g
  %i.i = icmp ult i64 %i.h, %i.e
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.147) #40
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.a
  %i.j = add i64 %i.e, %i.g                       ; 3 uses
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !10534 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.n = icmp ult i64 %i.g, 16
  tail call void @llvm.assume(i1 %i.n)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.o = load i64, ptr %i.l, align 8, !tbaa !10536
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.p = phi i64 [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.j, %i.p
  br i1 %.not.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq ptr %.sroa.2.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %.not8.i.i.i, label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.g ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.e, 1
  br i1 %cond.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load i8, ptr %.sroa.0.0.copyload.i, align 1, !tbaa !10536
  store i8 %i.r, ptr %i.q, align 1, !tbaa !10536
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %.sroa.0.0.copyload.i, i64 %i.e, i1 false)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef %i.g, i64 noundef 0, ptr noundef %.sroa.0.0.copyload.i, i64 noundef %i.e)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  store i64 %i.j, ptr %i.f, align 8, !tbaa !10535
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !10534
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.j
  store i8 0, ptr %i.t, align 1, !tbaa !10536
  %i.u = load i8, ptr %1, align 1, !tbaa !10536
  %i.v = zext i8 %i.u to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.w = call noundef i64 @_ZN5folly13to_ascii_withILm10ENS_17to_ascii_alphabetILb0EEELm20EEEmRAT1__cm(ptr noundef nonnull align 1 dereferenceable(20) %i.a, i64 noundef %i.v) ; 6 uses
  %i.x = load i64, ptr %i.f, align 8, !tbaa !10535 ; 5 uses
  %i.y = sub i64 9223372036854775807, %i.x
  %i.z = icmp ult i64 %i.y, %i.w
  br i1 %i.z, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.h:                                             ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.147) #40
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit
  %i.aa = add i64 %i.x, %i.w                      ; 3 uses
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !10534 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.l
  br i1 %i.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ad = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.ad)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ae = load i64, ptr %i.l, align 8, !tbaa !10536
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.af = phi i64 [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.aa, %i.af
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not8.i.i.i.i, label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEhEENSt9enable_ifIXaaaa13is_integral_vIT0_Esr12IsSomeStringIT_EE5valueltstS8_Li4EEvE4typeES8_PS9_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.x ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.w, 1
  br i1 %cond.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = load i8, ptr %i.a, align 16, !tbaa !10536
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !10536
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEhEENSt9enable_ifIXaaaa13is_integral_vIT0_Esr12IsSomeStringIT_EE5valueltstS8_Li4EEvE4typeES8_PS9_.exit

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr nonnull align 16 %i.a, i64 %i.w, i1 false)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEhEENSt9enable_ifIXaaaa13is_integral_vIT0_Esr12IsSomeStringIT_EE5valueltstS8_Li4EEvE4typeES8_PS9_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef %i.x, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.w)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEhEENSt9enable_ifIXaaaa13is_integral_vIT0_Esr12IsSomeStringIT_EE5valueltstS8_Li4EEvE4typeES8_PS9_.exit

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEhEENSt9enable_ifIXaaaa13is_integral_vIT0_Esr12IsSomeStringIT_EE5valueltstS8_Li4EEvE4typeES8_PS9_.exit: ; preds = %bb.i, %bb.k, %bb.l, %bb.m
  store i64 %i.aa, ptr %i.f, align 8, !tbaa !10535
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !10534
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aa
  store i8 0, ptr %i.aj, align 1, !tbaa !10536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5folly14AsyncSSLSocket16getSSLClientExtsB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1968) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1788
  %i.b = load i8, ptr %i.a, align 4, !tbaa !11120, !range !431, !noundef !890
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !10537
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !10535
  store i8 0, ptr %i.d, align 8, !tbaa !10536
  br label %_ZN5folly4joinIA2_cSt6vectorINS_3ssl12TLSExtensionESaIS4_EEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit

common.resume:                                    ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.o

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1792
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !10707 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12481)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !10537, !alias.scope !12481
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !10563, !noalias !12481 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !10563, !noalias !12481 ; 2 uses
  store i64 0, ptr %i.j, align 8, !tbaa !10535, !alias.scope !12481
  store i8 0, ptr %i.i, align 8, !tbaa !10536, !alias.scope !12481
  %i.n = icmp eq ptr %i.k, %i.m
  br i1 %i.n, label %_ZN5folly4joinIA2_cSt6vectorINS_3ssl12TLSExtensionESaIS4_EEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5folly6detail18internalJoinAppendINS_5RangeIPKcEEN9__gnu_cxx17__normal_iteratorIPKNS_3ssl12TLSExtensionESt6vectorIS9_SaIS9_EEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_T0_SN_RT1_(ptr nonnull align 1 dereferenceable(2) @.str.152, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.152, i64 1), ptr %i.k, ptr %i.m, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN5folly4joinIA2_cSt6vectorINS_3ssl12TLSExtensionESaIS4_EEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %0, align 8, !tbaa !10534, !alias.scope !12481 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.i
  br i1 %i.q, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

end_hunk_0
