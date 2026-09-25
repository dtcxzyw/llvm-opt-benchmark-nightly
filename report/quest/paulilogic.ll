Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/paulilogic?download=true
inline.NumInlined: 250
inline.NumDeleted: 118
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z21paulis_getPrefixZSign5QuregSt6vectorIiSaIiEE:bb.a
  %.0.lcssa = phi i32 [ 1, %bb.a ], [ %i.g, %.lr.ph ]
  ret i32 %.0.lcssa

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.010 = phi i32 [ %i.g, %.lr.ph ], [ 1, %bb.a ] ; 2 uses
  %.sroa.04.09 = phi ptr [ %i.h, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load i32, ptr %.sroa.04.09, align 4, !tbaa !21
  %i.e = tail call noundef i32 @_Z22util_getRankBitOfQubiti5Qureg(i32 noundef %i.d, ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
  %.not = icmp eq i32 %i.e, 0
  %i.f = sub nsw i32 0, %.010
  %i.g = select i1 %.not, i32 %.010, i32 %i.f     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.04.09, i64 4 ; 2 uses
  %.not7 = icmp eq ptr %i.h, %i.c
  br i1 %.not7, label %._crit_edge, label %.lr.ph
}

declare noundef i32 @_Z22util_getRankBitOfQubiti5Qureg(i32 noundef, ptr noundef byval(%struct.Qureg) align 8) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define { double, double } @_Z26paulis_getPrefixPaulisElem5QuregSt6vectorIiSaIiEES2_(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !24     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !25

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #13
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #14
  %.pre = load ptr, ptr %2, align 8, !tbaa !20    ; 3 uses
  %.pre28 = load ptr, ptr %i.a, align 8, !tbaa !20 ; 2 uses
  %.pre29 = ptrtoint ptr %.pre28 to i64
  %.pre30 = ptrtoint ptr %.pre to i64
  %i.i = icmp eq ptr %.pre28, %.pre
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi31 = phi i64 [ %.pre30, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.e, %bb.a ]
  %.pre-phi = phi i64 [ %.pre29, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.d, %bb.a ]
  %.not78.i = phi i1 [ %i.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ true, %bb.a ]
  %i.j = phi ptr [ %.pre, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.k = phi ptr [ %i.h, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 8 uses
  %i.l = sub i64 %.pre-phi, %.pre-phi31           ; 4 uses
  %i.m = icmp sgt i64 %i.l, 4
  br i1 %i.m, label %bb.d, label %bb.e, !prof !26

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.k, ptr align 4 %i.j, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.n = icmp eq i64 %i.l, 4
  br i1 %i.n, label %bb.f, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.o = load i32, ptr %i.j, align 4, !tbaa !21
  store i32 %i.o, ptr %i.k, align 4, !tbaa !21
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.p = getelementptr inbounds i8, ptr %i.k, i64 %i.l
  br i1 %.not78.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit, %.noexc
  %.010.i = phi i32 [ %i.t, %.noexc ], [ 1, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ] ; 2 uses
  %.sroa.04.09.i = phi ptr [ %i.u, %.noexc ], [ %i.k, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ] ; 2 uses
  %i.q = load i32, ptr %.sroa.04.09.i, align 4, !tbaa !21
  %i.r = invoke noundef i32 @_Z22util_getRankBitOfQubiti5Qureg(i32 noundef %i.q, ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.lr.ph.i
  %.not.i = icmp eq i32 %i.r, 0
  %i.s = sub nsw i32 0, %.010.i
  %i.t = select i1 %.not.i, i32 %.010.i, i32 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i, i64 4 ; 2 uses
  %.not7.i = icmp eq ptr %i.u, %i.p
  br i1 %.not7.i, label %.loopexit.loopexit, label %.lr.ph.i

.loopexit.loopexit:                               ; preds = %.noexc
  %i.v = sitofp i32 %i.t to double
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %.0.lcssa.i = phi double [ 1.000000e+00, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ], [ %i.v, %.loopexit.loopexit ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.loopexit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.f) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.loopexit, %bb.g
  %i.w = load ptr, ptr %1, align 8, !tbaa !20     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !20   ; 2 uses
  %.not2021 = icmp eq ptr %i.w, %i.y
  br i1 %.not2021, label %._crit_edge, label %_ZmlRKSt7complexIdERKi.exit

._crit_edge:                                      ; preds = %_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %.sroa.419.0.lcssa = phi double [ 0.000000e+00, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %i.ar, %_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit ]
  %.sroa.018.0.lcssa = phi double [ %.0.lcssa.i, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %i.aq, %_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.018.0.lcssa, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.419.0.lcssa, 1
  ret { double, double } %.fca.1.insert

bb.h:                                             ; preds = %.lr.ph.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i6 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i6, label %_ZNSt6vectorIiSaIiEED2Ev.exit7, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.f) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit7

_ZNSt6vectorIiSaIiEED2Ev.exit7:                   ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %i.z

_ZmlRKSt7complexIdERKi.exit:                      ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit
  %.sroa.011.024 = phi ptr [ %i.as, %_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit ], [ %i.w, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 2 uses
  %.sroa.018.023 = phi double [ %i.aq, %_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit ], [ %.0.lcssa.i, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %.sroa.419.022 = phi double [ %i.ar, %_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit ], [ 0.000000e+00, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %i.aa = load i32, ptr %.sroa.011.024, align 4, !tbaa !21
  %i.ab = tail call noundef i32 @_Z22util_getRankBitOfQubiti5Qureg(i32 noundef %i.aa, ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
  %.not = icmp eq i32 %i.ab, 0
  %i.ac = select i1 %.not, i32 -1, i32 1
  %i.ad = sitofp i32 %i.ac to double              ; 4 uses
  %i.ae = tail call double @llvm.copysign.f64(double 0.000000e+00, double %i.ad) ; 3 uses
  %i.af = fmul double %.sroa.018.023, %i.ae
  %i.ag = fmul double %.sroa.419.022, %i.ad
  %i.ah = fmul double %.sroa.018.023, %i.ad
  %i.ai = fmul double %.sroa.419.022, %i.ae
  %i.aj = fsub double %i.af, %i.ag                ; 3 uses
  %i.ak = fadd double %i.ah, %i.ai                ; 3 uses
  %i.al = fcmp uno double %i.aj, 0.000000e+00
  br i1 %i.al, label %bb.j, label %_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit, !prof !27

bb.j:                                             ; preds = %_ZmlRKSt7complexIdERKi.exit
  %i.am = fcmp uno double %i.ak, 0.000000e+00
  br i1 %i.am, label %bb.k, label %_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit, !prof !27

bb.k:                                             ; preds = %bb.j
  %i.an = tail call noundef { double, double } @__muldc3(double noundef %.sroa.018.023, double noundef %.sroa.419.022, double noundef %i.ae, double noundef %i.ad) #16 ; 2 uses
  %i.ao = extractvalue { double, double } %i.an, 0
  %i.ap = extractvalue { double, double } %i.an, 1
  br label %_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit

_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit:          ; preds = %_ZmlRKSt7complexIdERKi.exit, %bb.j, %bb.k
  %i.aq = phi double [ %i.aj, %_ZmlRKSt7complexIdERKi.exit ], [ %i.aj, %bb.j ], [ %i.ao, %bb.k ] ; 2 uses
  %i.ar = phi double [ %i.ak, %_ZmlRKSt7complexIdERKi.exit ], [ %i.ak, %bb.j ], [ %i.ap, %bb.k ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.011.024, i64 4 ; 2 uses
  %.not20 = icmp eq ptr %i.as, %i.y
  br i1 %.not20, label %._crit_edge, label %_ZmlRKSt7complexIdERKi.exit
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

declare { double, double } @__muldc3(double, double, double, double) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define void @_Z20paulis_getTargetInds8PauliStr(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector") align 8 captures(none) %0, i64 %1, i64 %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %2, 0                        ; 2 uses
  %i.b = select i1 %i.a, i32 0, i32 32            ; 2 uses
  %i.c = select i1 %i.a, i64 %1, i64 %2           ; 2 uses
  %.not7.i = icmp eq i64 %i.c, 0
  br i1 %.not7.i, label %.loopexit23, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.09.i = phi i64 [ %i.d, %.lr.ph.i ], [ %i.c, %bb.a ]
  %.068.i = phi i32 [ %i.e, %.lr.ph.i ], [ %i.b, %bb.a ]
  %i.d = lshr i64 %.09.i, 2                       ; 2 uses
  %i.e = add nuw nsw i32 %.068.i, 1               ; 2 uses
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %.loopexit23, label %.lr.ph.i, !llvm.loop !0

.loopexit23:                                      ; preds = %.lr.ph.i, %bb.a
  %.06.lcssa.i = phi i32 [ %i.b, %bb.a ], [ %i.e, %.lr.ph.i ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not22 = icmp eq i32 %.06.lcssa.i, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %.not22, label %._crit_edge, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %.loopexit23
  %i.h = sext i32 %.06.lcssa.i to i64             ; 2 uses
  %i.i = shl nuw nsw i64 %i.h, 2
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #14 ; 5 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !24
  store ptr %i.j, ptr %i.f, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.h ; 2 uses
  store ptr %i.k, ptr %i.g, align 8, !tbaa !28
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %.loopexit23
  %.lcssa32 = phi ptr [ null, %.loopexit23 ], [ %i.ak, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %.lcssa28 = phi ptr [ null, %.loopexit23 ], [ %i.al, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %.lcssa24 = phi ptr [ null, %.loopexit23 ], [ %i.am, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  store ptr %.lcssa24, ptr %i.f, align 8
  store ptr %.lcssa28, ptr %i.g, align 8
  store ptr %.lcssa32, ptr %0, align 8
  ret void

.lr.ph:                                           ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %storemerge36 = phi i32 [ %i.an, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ 0, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ] ; 5 uses
  %i.l = phi ptr [ %i.am, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.j, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ] ; 8 uses
  %i.m = phi ptr [ %i.al, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.k, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ] ; 5 uses
  %i.n = phi ptr [ %i.ak, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.j, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ] ; 11 uses
  %i.o = icmp samesign ult i32 %storemerge36, 32  ; 2 uses
  %i.p = shl nuw nsw i32 %storemerge36, 1         ; 2 uses
  %i.q = add nsw i32 %i.p, -64
  %.sink4.i = select i1 %i.o, i32 %i.p, i32 %i.q
  %.sink.i = select i1 %i.o, i64 %1, i64 %2
  %i.r = zext nneg i32 %.sink4.i to i64
  %i.s = ashr i64 %.sink.i, %i.r
  %i.t = and i64 %i.s, 3
  %.not12 = icmp eq i64 %i.t, 0
  br i1 %.not12, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.not.i16 = icmp eq ptr %i.l, %i.m
  br i1 %.not.i16, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %storemerge36, ptr %i.l, align 4, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.d:                                             ; preds = %bb.b
  %i.v = ptrtoint ptr %i.l to i64
  %i.w = ptrtoint ptr %i.n to i64
  %i.x = sub i64 %i.v, %i.w                       ; 6 uses
  %i.y = icmp eq i64 %i.x, 9223372036854775804
  br i1 %i.y, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  store ptr %i.l, ptr %i.f, align 8
  store ptr %i.m, ptr %i.g, align 8
  store ptr %i.n, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #13
          to label %.noexc17 unwind label %.loopexit.split-lp

.noexc17:                                         ; preds = %bb.e
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.z = ashr exact i64 %i.x, 2                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.z, i64 1)
  %i.aa = add nsw i64 %.sroa.speculated.i.i.i, %i.z ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.z
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 2305843009213693951)
  %i.ad = select i1 %i.ab, i64 2305843009213693951, i64 %i.ac ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ad, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ae = shl nuw nsw i64 %i.ad, 2
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #14
          to label %.noexc18 unwind label %.loopexit ; 4 uses

.noexc18:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 %i.x ; 2 uses
  store i32 %storemerge36, ptr %i.ag, align 4, !tbaa !21
  %i.ah = icmp sgt i64 %i.x, 0
  br i1 %i.ah, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.f:                                             ; preds = %.noexc18
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.af, ptr align 4 %i.n, i64 %i.x, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.f, %.noexc18
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %.not.i17.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.x) #15
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ad
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.l, ptr %i.f, align 8
  store ptr %i.m, ptr %i.g, align 8
  store ptr %i.n, ptr %0, align 8
  br label %bb.h

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.c, %.lr.ph
  %i.ak = phi ptr [ %i.af, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.n, %bb.c ], [ %i.n, %.lr.ph ] ; 2 uses
  %i.al = phi ptr [ %i.aj, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.m, %bb.c ], [ %i.m, %.lr.ph ] ; 2 uses
  %i.am = phi ptr [ %i.ai, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.u, %bb.c ], [ %i.l, %.lr.ph ] ; 2 uses
  %i.an = add nuw nsw i32 %storemerge36, 1        ; 2 uses
  %exitcond.not = icmp eq i32 %i.an, %.06.lcssa.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !40

bb.h:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i19 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i19, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = ptrtoint ptr %i.l to i64
  %i.ap = ptrtoint ptr %i.n to i64
  %i.aq = sub i64 %i.ao, %i.ap
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.aq) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.i, %bb.h
  resume { ptr, i32 } %.pn
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @_Z23paulis_getTargetBitMask8PauliStr(i64 %0, i64 %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %1, 0                        ; 3 uses
  %i.b = select i1 %i.a, i64 %0, i64 %1           ; 2 uses
  %.not7.i = icmp eq i64 %i.b, 0
  br i1 %.not7.i, label %_Z38paulis_getIndOfLefmostNonIdentityPauli8PauliStr.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.c = select i1 %i.a, i32 0, i32 32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.09.i = phi i64 [ %i.d, %.lr.ph.i ], [ %i.b, %.lr.ph.i.preheader ]
  %.068.i = phi i32 [ %i.e, %.lr.ph.i ], [ %i.c, %.lr.ph.i.preheader ]
  %i.d = lshr i64 %.09.i, 2                       ; 2 uses
  %i.e = add nuw nsw i32 %.068.i, 1               ; 2 uses
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %.lr.ph.preheader.loopexit, label %.lr.ph.i, !llvm.loop !0

_Z38paulis_getIndOfLefmostNonIdentityPauli8PauliStr.exit: ; preds = %bb.a
  br i1 %i.a, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader.loopexit:                        ; preds = %.lr.ph.i
  %i.f = zext nneg i32 %i.e to i64
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.loopexit, %_Z38paulis_getIndOfLefmostNonIdentityPauli8PauliStr.exit
  %.06.lcssa.i20 = phi i64 [ 32, %_Z38paulis_getIndOfLefmostNonIdentityPauli8PauliStr.exit ], [ %i.f, %.lr.ph.preheader.loopexit ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_Z38paulis_getIndOfLefmostNonIdentityPauli8PauliStr.exit
  %.0.lcssa = phi i64 [ 0, %_Z38paulis_getIndOfLefmostNonIdentityPauli8PauliStr.exit ], [ %.1, %.lr.ph ]
  ret i64 %.0.lcssa

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 5 uses
  %.016 = phi i64 [ 0, %.lr.ph.preheader ], [ %.1, %.lr.ph ]
  %i.g = icmp samesign ult i64 %indvars.iv, 32    ; 2 uses
  %i.h = shl nuw i64 %indvars.iv, 1
  %i.i = add i64 %i.h, 4294967232
  %i.j = shl nuw i64 %indvars.iv, 1
  %.sink4.i = select i1 %i.g, i64 %i.j, i64 %i.i
  %.sink.i = select i1 %i.g, i64 %0, i64 %1
  %i.k = and i64 %.sink4.i, 4294967294
  %i.l = ashr i64 %.sink.i, %i.k
  %i.m = and i64 %i.l, 3
  %.not13 = icmp eq i64 %i.m, 0
  %i.n = shl nuw i64 1, %indvars.iv
  %i.o = select i1 %.not13, i64 0, i64 %i.n
  %.1 = xor i64 %i.o, %.016                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %.06.lcssa.i20
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2
}

; Function Attrs: mustprogress uwtable
define void @_Z22paulis_getSeparateInds8PauliStr(ptr dead_on_unwind noalias nofree writable sret(%"struct.std::array") align 8 captures(address) %0, i64 %1, i64 %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 8 uses
  %4 = alloca %"class.std::vector", align 8       ; 13 uses
  %5 = alloca %"class.std::vector", align 8       ; 12 uses
  %6 = alloca %"class.std::vector", align 8       ; 11 uses
  %i.a = alloca [3 x ptr], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_Z20paulis_getTargetInds8PauliStr(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %3, i64 %1, i64 %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr %4, ptr %i.a, align 16, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %5, ptr %i.b, align 8, !tbaa !42
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
end_hunk_0
