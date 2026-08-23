Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/TypeFunctionReductionGuesser?download=true
inline.NumInlined: 1188
inline.NumDeleted: 594
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4Luau12DenseHashMapIPKNS_4TypeES3_NS_16DenseHashPointerESt8equal_toIS3_EEixERKS3_:bb.a
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !52 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.ag
  br i1 %i.aj, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERS7_.exit
  %i.ak = icmp eq ptr %i.ai, %i.z
  br i1 %i.ak, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERS7_.exit, label %.lr.ph26

._crit_edge:                                      ; preds = %.lr.ph26, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERS7_.exit
  %.lcssa = phi ptr [ %i.ah, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERS7_.exit ], [ %i.aq, %.lr.ph26 ] ; 2 uses
  store ptr %i.z, ptr %.lcssa, align 8, !tbaa !269
  %i.al = load i64, ptr %i.a, align 8, !tbaa !107
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.a, align 8, !tbaa !107
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERS7_.exit

.lr.ph:                                           ; preds = %.lr.ph26
  %i.an = icmp eq ptr %i.ar, %i.z
  br i1 %i.an, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERS7_.exit, label %.lr.ph26

.lr.ph26:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.02030.i625 = phi i64 [ %i.ao, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02131.i724 = phi i64 [ %.02131.i, %.lr.ph ], [ %.02131.i5, %.lr.ph.preheader ]
  %i.ao = add i64 %.02030.i625, 1                 ; 3 uses
  %i.ap = add i64 %i.ao, %.02131.i724
  %.not.i3 = icmp ule i64 %i.ao, %i.y
  tail call void @llvm.assume(i1 %.not.i3)
  %.02131.i = and i64 %i.ap, %i.y                 ; 2 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %.02131.i ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !52 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ag
  br i1 %i.as, label %._crit_edge, label %.lr.ph

_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERS7_.exit: ; preds = %.lr.ph, %.lr.ph.preheader, %._crit_edge
  %i.at = phi ptr [ %.lcssa, %._crit_edge ], [ %i.ah, %.lr.ph.preheader ], [ %i.aq, %.lr.ph ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  ret ptr %i.au
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4Luau28TypeFunctionReductionGuesser22isNumericBinopFunctionERKNS_24TypeFunctionInstanceTypeE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(228) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !271    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !197  ; 3 uses
  switch i64 %i.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit16.thread22 [
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !54   ; 9 uses
  %i.e = load i16, ptr %i.d, align 1
  %i.f = xor i16 %i.e, 25697
  %i.g = getelementptr i8, ptr %i.d, i64 2
  %i.h = load i8, ptr %i.g, align 1
  %i.i = zext i8 %i.h to i16
  %i.j = xor i16 %i.i, 100
  %i.k = or i16 %i.f, %i.j
  %i.l = icmp ne i16 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.o = load i16, ptr %i.d, align 1
  %i.p = xor i16 %i.o, 30067
  %i.q = getelementptr i8, ptr %i.d, i64 2
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext i8 %i.r to i16
  %i.t = xor i16 %i.s, 98
  %i.u = or i16 %i.p, %i.t
  %i.v = icmp ne i16 %i.u, 0
  %i.w = zext i1 %i.v to i32
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8
  %i.y = load i16, ptr %i.d, align 1
  %i.z = xor i16 %i.y, 30061
  %i.aa = getelementptr i8, ptr %i.d, i64 2
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i16
  %i.ad = xor i16 %i.ac, 108
  %i.ae = or i16 %i.z, %i.ad
  %i.af = icmp ne i16 %i.ae, 0
  %i.ag = zext i1 %i.af to i32
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10
  %i.ai = load i16, ptr %i.d, align 1
  %i.aj = xor i16 %i.ai, 26980
  %i.ak = getelementptr i8, ptr %i.d, i64 2
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = zext i8 %i.al to i16
  %i.an = xor i16 %i.am, 118
  %i.ao = or i16 %i.aj, %i.an
  %i.ap = icmp ne i16 %i.ao, 0
  %i.aq = zext i1 %i.ap to i32
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit16

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14: ; preds = %bb.a
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !54
  %bcmp.i13 = tail call i32 @bcmp(ptr %.pre, ptr nonnull @.str.67, i64 %i.c)
  %i.as = icmp eq i32 %bcmp.i13, 0
  br i1 %i.as, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit16.thread22

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit16: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12
  %bcmp.i15 = tail call i32 @bcmp(ptr nonnull %i.d, ptr nonnull @.str.68, i64 %i.c)
  %i.at = icmp eq i32 %bcmp.i15, 0
  br i1 %i.at, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit16.thread22

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit16.thread22: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14, %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit16
  %i.au = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull @.str.69)
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit16.thread22, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit16, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.av = phi i1 [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit16 ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14 ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12 ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10 ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8 ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %i.au, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit16.thread22 ]
  ret i1 %i.av
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !197  ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !54
  %bcmp = tail call i32 @bcmp(ptr %i.f, ptr nonnull %1, i64 %i.b)
  %i.g = icmp eq i32 %bcmp, 0
  br label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit:       ; preds = %bb.c, %bb.b, %bb.a
  %i.h = phi i1 [ false, %bb.a ], [ %i.g, %bb.c ], [ true, %bb.b ]
  ret i1 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4Luau28TypeFunctionReductionGuesser20isComparisonFunctionERKNS_24TypeFunctionInstanceTypeE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(176) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(228) %1) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !271    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !197
  %cond = icmp eq i64 %i.c, 2
  br i1 %cond, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit6

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %i.e = load i16, ptr %i.d, align 1
  %i.f = icmp ne i16 %i.e, 29804
  %i.g = zext i1 %i.f to i32
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit4

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit4: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.i = load i16, ptr %i.d, align 1
  %i.j = icmp ne i16 %i.i, 25964
  %i.k = zext i1 %i.j to i32
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit4.thread8

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit4.thread8: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit4
  %i.m = load i16, ptr %i.d, align 1
  %i.n = icmp ne i16 %i.m, 29029
  %i.o = zext i1 %i.n to i32
  %i.p = icmp eq i32 %i.o, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit6

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit6: ; preds = %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit4.thread8, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit4, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.q = phi i1 [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit4 ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ false, %bb.a ], [ %i.p, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit4.thread8 ]
  ret i1 %i.q
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4Luau28TypeFunctionReductionGuesser15isOrAndFunctionERKNS_24TypeFunctionInstanceTypeE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(176) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(228) %1) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !271    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !197
  switch i64 %i.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3 [
    i64 2, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 3, label %bb.b
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.e = load i16, ptr %i.d, align 1
  %i.f = icmp ne i16 %i.e, 29295
  %i.g = zext i1 %i.f to i32
  %i.h = icmp eq i32 %i.g, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.j = load i16, ptr %i.i, align 1
  %i.k = xor i16 %i.j, 28257
  %i.l = getelementptr i8, ptr %i.i, i64 2
  %i.m = load i8, ptr %i.l, align 1
  %i.n = zext i8 %i.m to i16
  %i.o = xor i16 %i.n, 100
  %i.p = or i16 %i.k, %i.o
  %i.q = icmp ne i16 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %i.s = icmp eq i32 %i.r, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.a, %bb.b
  %2 = phi i1 [ %i.h, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %i.s, %bb.b ], [ false, %bb.a ]
  ret i1 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4Luau28TypeFunctionReductionGuesser13isNotFunctionERKNS_24TypeFunctionInstanceTypeE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(176) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(228) %1) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !271    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !197
  %i.d = icmp eq i64 %i.c, 3
  br i1 %i.d, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.f = load i16, ptr %i.e, align 1
  %i.g = xor i16 %i.f, 28526
  %i.h = getelementptr i8, ptr %i.e, i64 2
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i16
  %i.k = xor i16 %i.j, 116
  %i.l = or i16 %i.g, %i.k
  %i.m = icmp ne i16 %i.l, 0
  %i.n = zext i1 %i.m to i32
  %i.o = icmp eq i32 %i.n, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a, %bb.b
  %i.p = phi i1 [ false, %bb.a ], [ %i.o, %bb.b ]
  ret i1 %i.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4Luau28TypeFunctionReductionGuesser13isLenFunctionERKNS_24TypeFunctionInstanceTypeE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(176) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(228) %1) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !271    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !197
  %i.d = icmp eq i64 %i.c, 3
  br i1 %i.d, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.f = load i16, ptr %i.e, align 1
  %i.g = xor i16 %i.f, 25964
  %i.h = getelementptr i8, ptr %i.e, i64 2
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i16
  %i.k = xor i16 %i.j, 110
  %i.l = or i16 %i.g, %i.k
  %i.m = icmp ne i16 %i.l, 0
  %i.n = zext i1 %i.m to i32
  %i.o = icmp eq i32 %i.n, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a, %bb.b
  %i.p = phi i1 [ false, %bb.a ], [ %i.o, %bb.b ]
  ret i1 %i.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4Luau28TypeFunctionReductionGuesser12isUnaryMinusERKNS_24TypeFunctionInstanceTypeE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(176) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(228) %1) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !271    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !197
  %i.d = icmp eq i64 %i.c, 3
  br i1 %i.d, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.f = load i16, ptr %i.e, align 1
  %i.g = xor i16 %i.f, 28277
  %i.h = getelementptr i8, ptr %i.e, i64 2
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i16
  %i.k = xor i16 %i.j, 109
  %i.l = or i16 %i.g, %i.k
  %i.m = icmp ne i16 %i.l, 0
  %i.n = zext i1 %i.m to i32
  %i.o = icmp eq i32 %i.n, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a, %bb.b
  %i.p = phi i1 [ false, %bb.a ], [ %i.o, %bb.b ]
  ret i1 %i.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4Luau28TypeFunctionReductionGuesser19operandIsAssignableEPKNS_4TypeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0, ptr noundef %1) local_unnamed_addr #14 align 2 {
bb.a:
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %1, align 8, !tbaa !105
  switch i32 %i.a, label %.thread [
    i32 20, label %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit
    i32 3, label %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit
  ]

.thread:                                          ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load i64, ptr %i.c, align 8, !tbaa !42
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !52   ; 2 uses
  %i.h = icmp eq ptr %1, %i.g
  br i1 %i.h, label %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.j = load i64, ptr %i.i, align 8, !tbaa !166
  %i.k = add i64 %i.j, -1                         ; 2 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = mul i64 %i.l, -4658895280553007687       ; 2 uses
  %i.n = lshr i64 %i.m, 31
  %i.o = xor i64 %i.n, %i.m
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !118
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.pn.i.i = phi i64 [ %i.o, %bb.d ], [ %i.v, %bb.f ]
  %.01832.i.i = phi i64 [ 0, %bb.d ], [ %i.u, %bb.f ]
  %.01933.i.i = and i64 %.pn.i.i, %i.k            ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.01933.i.i
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !52   ; 2 uses
  %i.s = icmp eq ptr %i.r, %1                     ; 3 uses
  %i.t = icmp eq ptr %i.r, %i.g
  %or.cond = or i1 %i.s, %i.t
  br i1 %or.cond, label %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = add i64 %.01832.i.i, 1                   ; 3 uses
  %i.v = add i64 %i.u, %.01933.i.i
  %.not.i.i4 = icmp ugt i64 %i.u, %i.k
  br i1 %.not.i.i4, label %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit, label %bb.e, !llvm.loop !274

_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.f, %bb.e, %bb.b, %bb.b, %bb.c, %.thread
  %.0 = phi i1 [ true, %bb.b ], [ true, %bb.b ], [ false, %bb.c ], [ false, %.thread ], [ %i.s, %bb.e ], [ %i.s, %bb.f ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau28TypeFunctionReductionGuesser9normalizeEPKNS_4TypeE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.121") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %1, ptr noundef %2) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275
  tail call void @_ZN4Luau10Normalizer9normalizeEPKNS_4TypeE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.121") align 8 %0, ptr noundef nonnull align 8 dereferenceable(352) %i.b, ptr noundef %2)
  ret void
}

declare void @_ZN4Luau10Normalizer9normalizeEPKNS_4TypeE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.121") align 8, ptr noundef nonnull align 8 dereferenceable(352), ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define dso_local { ptr, i8 } @_ZN4Luau28TypeFunctionReductionGuesser20tryAssignOperandTypeEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !52
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %_ZN4Luau3getINS_11GenericTypeEEEPKT_PKNS_4TypeE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 8, !tbaa !105    ; 2 uses
  switch i32 %i.b, label %_ZN4Luau3getINS_11GenericTypeEEEPKT_PKNS_4TypeE.exit.thread [
    i32 20, label %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit
    i32 3, label %_ZN4Luau3getINS_11GenericTypeEEEPKT_PKNS_4TypeE.exit
  ]

_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !107
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN4Luau3getINS_11GenericTypeEEEPKT_PKNS_4TypeE.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !52   ; 2 uses
  %i.h = icmp eq ptr %1, %i.g
  br i1 %i.h, label %_ZN4Luau3getINS_11GenericTypeEEEPKT_PKNS_4TypeE.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !48
  %i.k = add i64 %i.j, -1                         ; 2 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = mul i64 %i.l, -4658895280553007687       ; 2 uses
  %i.n = lshr i64 %i.m, 31
  %i.o = xor i64 %i.n, %i.m
  %i.p = load ptr, ptr %0, align 8, !tbaa !51
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i.i = phi i64 [ %i.o, %bb.d ], [ %i.v, %bb.g ]
  %.01828.i.i = phi i64 [ 0, %bb.d ], [ %i.u, %bb.g ]
  %.01929.i.i = and i64 %.pn.i.i, %i.k            ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.01929.i.i
end_hunk_0
