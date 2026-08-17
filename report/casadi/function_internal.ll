inline.NumInlined: 11181
inline.NumDeleted: 2147
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN6casadi16FunctionInternal13change_optionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11GenericTypeE:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !17   ; 6 uses
  switch i64 %i.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32.thread41 [
    i64 8, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 9, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24
    i64 15, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit26
    i64 12, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !14
  %i.d = load i64, ptr %i.c, align 1
  %i.e = icmp ne i64 %i.d, 7955995170399941232
  %i.f = zext i1 %i.e to i32
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32.thread41

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.h = tail call noundef zeroext i1 @_ZNK6casadi11GenericType7to_boolEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.j = zext i1 %i.h to i8
  store i8 %i.j, ptr %i.i, align 8, !tbaa !114
  br label %bb.j

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24: ; preds = %bb.a
  %.pre = load ptr, ptr %1, align 8, !tbaa !14    ; 2 uses
  %bcmp.i23 = tail call i32 @bcmp(ptr %.pre, ptr nonnull @.str.95, i64 %i.b)
  %i.k = icmp eq i32 %bcmp.i23, 0
  br i1 %i.k, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24
  %i.l = tail call noundef zeroext i1 @_ZNK6casadi11GenericType7to_boolEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 953
  %i.n = zext i1 %i.l to i8
  store i8 %i.n, ptr %i.m, align 1, !tbaa !115
  br label %bb.j

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit26: ; preds = %bb.a
  %.pre42 = load ptr, ptr %1, align 8, !tbaa !14
  %bcmp.i25 = tail call i32 @bcmp(ptr %.pre42, ptr nonnull @.str.97, i64 %i.b)
  %i.o = icmp eq i32 %bcmp.i25, 0
  br i1 %i.o, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit26.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32.thread41

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit26.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit26
  %i.p = tail call noundef zeroext i1 @_ZNK6casadi11GenericType7to_boolEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 954
  %i.r = zext i1 %i.p to i8
  store i8 %i.r, ptr %i.q, align 2, !tbaa !116
  br label %bb.j

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24
  %bcmp.i27 = tail call i32 @bcmp(ptr %.pre, ptr nonnull @.str.44, i64 %i.b)
  %i.s = icmp eq i32 %bcmp.i27, 0
  br i1 %i.s, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32.thread41

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28
  %i.t = tail call noundef double @_ZNK6casadi11GenericType9to_doubleEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 832
  store double %i.t, ptr %i.u, align 8, !tbaa !217
  br label %bb.j

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30: ; preds = %bb.a
  %.pre43 = load ptr, ptr %1, align 8, !tbaa !14
  %bcmp.i29 = tail call i32 @bcmp(ptr %.pre43, ptr nonnull @.str.46, i64 %i.b)
  %i.v = icmp eq i32 %bcmp.i29, 0
  br i1 %i.v, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32.thread41

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30
  %i.w = tail call noundef double @_ZNK6casadi11GenericType9to_doubleEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 840
  store double %i.w, ptr %i.x, align 8, !tbaa !218
  br label %bb.j

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32: ; preds = %bb.a
  %.pre44 = load ptr, ptr %1, align 8, !tbaa !14
  %bcmp.i31 = tail call i32 @bcmp(ptr %.pre44, ptr nonnull @.str.105, i64 %i.b)
  %i.y = icmp eq i32 %bcmp.i31, 0
  br i1 %i.y, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32.thread41

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32
  %i.z = tail call noundef zeroext i1 @_ZNK6casadi11GenericType7to_boolEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 970
  %i.ab = zext i1 %i.z to i8
  store i8 %i.ab, ptr %i.aa, align 2, !tbaa !120
  br label %bb.j

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32.thread41: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit26, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32
  %i.ac = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.101)
  br i1 %i.ac, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32.thread41
  %i.ad = tail call noundef zeroext i1 @_ZNK6casadi11GenericType7to_boolEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.af = zext i1 %i.ad to i8
  store i8 %i.af, ptr %i.ae, align 8, !tbaa !118
  br label %bb.j

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32.thread41
  %i.ag = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.103)
  br i1 %i.ag, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ah = tail call noundef zeroext i1 @_ZNK6casadi11GenericType7to_boolEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 969
  %i.aj = zext i1 %i.ah to i8
  store i8 %i.aj, ptr %i.ai, align 1, !tbaa !119
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.ak = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.107)
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @_ZNK6casadi11GenericType9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.am = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %3) #38 ; 0 uses
  %i.an = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !16
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.as = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.109)
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  call void @_ZNK6casadi11GenericType9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.au = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %4) #38 ; 0 uses
  %i.av = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.h
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !16
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void @_ZN6casadi13ProtoFunction13change_optionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11GenericTypeE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.j

bb.j:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32.thread, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit26.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  ret void
}

declare void @_ZNK6casadi11GenericType9to_stringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress uwtable
define void @_ZN6casadi13ProtoFunction13change_optionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11GenericTypeE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::vector", align 8      ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !17
  switch i64 %i.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30.thread50 [
    i64 7, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 16, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !14     ; 2 uses
  %i.d = load i32, ptr %i.c, align 1
  %i.e = xor i32 %i.d, 1651664246
  %i.f = getelementptr i8, ptr %i.c, i64 3
  %i.g = load i32, ptr %i.f, align 1
  %i.h = xor i32 %i.g, 1702063970
  %i.i = or i32 %i.e, %i.h
  %i.j = icmp ne i32 %i.i, 0
  %i.k = zext i1 %i.j to i32
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.q, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30.thread50

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30: ; preds = %bb.a
  %i.m = load ptr, ptr %1, align 8, !tbaa !14
  %i.n = load i128, ptr %i.m, align 1
  %i.o = icmp ne i128 %i.n, 142743489731834254117077336980051158386
  %i.p = zext i1 %i.o to i32
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.q, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30.thread50

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30.thread50: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30
  %i.r = tail call ptr @__cxa_allocate_exception(i64 40) #38 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.246, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.b unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.thread

bb.b:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30.thread50
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.8)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #38
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull @.str.247, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.248)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false), !alias.scope !223
  invoke void @_ZN6casadi6fmtstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #37
          to label %bb.s unwind label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30.thread50
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.j:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

bb.k:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

bb.l:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

bb.m:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

bb.n:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.o:                                             ; preds = %bb.i, %bb.h
  %.0 = phi i1 [ false, %bb.i ], [ true, %bb.h ]  ; 2 uses
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %3, align 8, !tbaa !14     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !16
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.n
  %.pn = phi { ptr, i32 } [ %i.x, %bb.n ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.y, %bb.o ] ; 2 uses
  %.1 = phi i1 [ true, %bb.n ], [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.0, %bb.o ] ; 2 uses
  %i.ae = load ptr, ptr %8, align 8, !tbaa !14    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !16
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.w, %bb.m ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.2 = phi i1 [ true, %bb.m ], [ %.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38
  %i.aj = load ptr, ptr %9, align 8, !tbaa !14    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !16
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %i.v, %bb.l ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ] ; 2 uses
  %.3 = phi i1 [ true, %bb.l ], [ %.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ], [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ] ; 2 uses
  %i.ao = load ptr, ptr %10, align 8, !tbaa !14   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !16
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37, %bb.k
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.u, %bb.k ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ] ; 2 uses
  %.4 = phi i1 [ true, %bb.k ], [ %.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ], [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  %i.at = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !16
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40, %bb.j
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.t, %bb.j ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ] ; 4 uses
  %.5 = phi i1 [ true, %bb.j ], [ %.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ], [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ] ; 2 uses
  %i.ay = load ptr, ptr %5, align 8, !tbaa !14    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !16
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  %i.bd = load ptr, ptr %6, align 8, !tbaa !14    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.thread: ; preds = %bb.b
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load ptr, ptr %6, align 8, !tbaa !14    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.thread
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !16
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #39
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  %i.bm = load i64, ptr %i.be, align 8, !tbaa !16
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bn) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br i1 %.5, label %bb.p, label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br i1 %.5, label %bb.p, label %bb.r

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.thread
  %.pn.pn.pn.pn.pn.pn.pn54.ph = phi { ptr, i32 } [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.thread ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.thread ], [ %i.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  %.pn.pn.pn.pn.pn.pn.pn54 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ], [ %.pn.pn.pn.pn.pn.pn.pn54.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.r) #38
  br label %bb.r

bb.q:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %.sink = phi i64 [ 56, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ 59, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30 ]
  %12 = tail call noundef zeroext i1 @_ZNK6casadi11GenericType7to_boolEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %14 = zext i1 %12 to i8
  store i8 %14, ptr %13, align 1, !tbaa !113
  ret void

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %bb.p
  %.pn.pn.pn.pn.pn.pn.pn53 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ], [ %.pn.pn.pn.pn.pn.pn.pn54, %bb.p ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ]
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn53

bb.s:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6casadi16FunctionInternal16reset_dump_countEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(1312) initializes((1240, 1248)) %0) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1240
  store i64 0, ptr %i.a, align 8, !tbaa !226
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6casadi16FunctionInternal4initERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS7_ESaISt4pairIKS7_S8_EEE(ptr noundef nonnull align 8 dereferenceable(1312) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::allocator.0", align 1 ; 3 uses
  %18 = alloca %"class.std::vector", align 8      ; 5 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.casadi::Function", align 8 ; 7 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %30 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %34 = alloca %"class.std::vector", align 8      ; 5 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %36 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %37 = alloca %"class.std::vector.11", align 8   ; 6 uses
  %38 = alloca %"class.std::vector.11", align 8   ; 6 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %51 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %54 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %55 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %56 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %57 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %59 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %60 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %61 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %62 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %63 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %64 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %65 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %66 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %67 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %68 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %69 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %70 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %71 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %72 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %73 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %74 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %75 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %76 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %77 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %78 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %79 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %80 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %81 = alloca %"class.std::vector", align 8      ; 5 uses
  %82 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %83 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %84 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %85 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %86 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %87 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %88 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %89 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %90 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %91 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %92 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %93 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %94 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %95 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %96 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %97 = alloca %"class.std::vector", align 8      ; 5 uses
  %98 = alloca %"class.casadi::Sparsity", align 8 ; 7 uses
  %99 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %100 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %101 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %102 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %103 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %104 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %105 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %106 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %107 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %108 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %109 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %110 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %111 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %112 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %113 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %114 = alloca %"class.std::vector", align 8     ; 5 uses
  %115 = alloca %"class.casadi::Sparsity", align 8 ; 7 uses
  %116 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %117 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %118 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %119 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %120 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %121 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %122 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %123 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %124 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %125 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %126 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %127 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %128 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %129 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %130 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.k = alloca i64, align 8                      ; 4 uses
  %131 = alloca %"class.std::vector", align 8     ; 5 uses
  %132 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %133 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %134 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %135 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %136 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %137 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %138 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %139 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %140 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %141 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %142 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %143 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %144 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %145 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %146 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %147 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.l = alloca i64, align 8                      ; 4 uses
  %148 = alloca %"class.std::vector", align 8     ; 5 uses
  %149 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %150 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %151 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %152 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %153 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %154 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %155 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %156 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %157 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %158 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %159 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %160 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %161 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %162 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %163 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %164 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.m = alloca i64, align 8                      ; 4 uses
  %165 = alloca %"class.std::vector", align 8     ; 5 uses
  %166 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %167 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
end_hunk_0
