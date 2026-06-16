inline.NumInlined: 3658
inline.NumDeleted: 2050
begin_hunk_0_@_ZN12v8_inspector22V8InspectorSessionImpl18findInjectedScriptEiRPNS_14InjectedScriptE

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector14InjectedScript11ObjectScopeC2EPNS_22V8InspectorSessionImplERKNS_8String16E(ptr noundef nonnull align 8 dereferenceable(224) initializes((0, 48)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN12v8_inspector14InjectedScript5ScopeE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  store ptr %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = add i64 %i.h, 560
  %i.j = inttoptr i64 %i.i to ptr                 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load ptr, ptr %i.a, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  tail call void @_ZN2v88TryCatchC1EPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(41) %i.s, ptr noundef %i.v) #19
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 0, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 121
  store i8 0, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.w, i8 0, i64 17, i1 false)
  %i.ac = load i32, ptr %i.ab, align 8
  store i32 %i.ac, ptr %i.aa, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.af = load i32, ptr %i.ae, align 4
  store i32 %i.af, ptr %i.ad, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN12v8_inspector14InjectedScript11ObjectScopeE, i64 16), ptr %0, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  store ptr %i.ah, ptr %i.ag, align 8
  %i.ai = load ptr, ptr %2, align 8               ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load i64, ptr %i.aj, align 8            ; 7 uses
  %.idx.i.i = shl nuw nsw i64 %i.ak, 1            ; 3 uses
  %i.al = icmp ugt i64 %i.ak, 7
  br i1 %i.al, label %bb.b, label %._crit_edge.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.am = icmp ugt i64 %i.ak, 4611686018427387903
  br i1 %i.am, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #18
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.an = icmp eq i64 %i.ak, 4611686018427387903
  br i1 %i.an, label %bb.e, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i, !prof !14

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #18
  unreachable

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i: ; preds = %bb.d
  %i.ao = add nuw nsw i64 %.idx.i.i, 2
  %i.ap = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #21 ; 2 uses
  store ptr %i.ap, ptr %i.ag, align 8
  store i64 %i.ak, ptr %i.ah, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i, %bb.a
  %i.aq = phi ptr [ %i.ap, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i ], [ %i.ah, %bb.a ] ; 3 uses
  switch i64 %i.ak, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZN12v8_inspector8String16C2ERKS0_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.ar = load i16, ptr %i.ai, align 2
  store i16 %i.ar, ptr %i.aq, align 2
  br label %_ZN12v8_inspector8String16C2ERKS0_.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.aq, ptr align 2 %i.ai, i64 %.idx.i.i, i1 false)
  br label %_ZN12v8_inspector8String16C2ERKS0_.exit

_ZN12v8_inspector8String16C2ERKS0_.exit:          ; preds = %._crit_edge.i.i.i, %bb.f, %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %i.ak, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i.i
  store i16 0, ptr %i.at, align 2
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aw = load i64, ptr %i.av, align 8
  store i64 %i.aw, ptr %i.au, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  store ptr %i.ay, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 0, ptr %i.az, align 8
  store i16 0, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector14InjectedScript11ObjectScopeD2Ev(ptr noundef nonnull align 8 dereferenceable(224) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN12v8_inspector14InjectedScript11ObjectScopeE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN12v8_inspector8String16D2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = shl i64 %i.e, 1
  %i.g = add i64 %i.f, 2
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.g) #20
  br label %_ZN12v8_inspector8String16D2Ev.exit

_ZN12v8_inspector8String16D2Ev.exit:              ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN12v8_inspector8String16D2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i1

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i1: ; preds = %_ZN12v8_inspector8String16D2Ev.exit
  %i.l = load i64, ptr %i.j, align 8
  %i.m = shl i64 %i.l, 1
  %i.n = add i64 %i.m, 2
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.n) #20
  br label %_ZN12v8_inspector8String16D2Ev.exit3

_ZN12v8_inspector8String16D2Ev.exit3:             ; preds = %_ZN12v8_inspector8String16D2Ev.exit, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i1
  tail call void @_ZN12v8_inspector14InjectedScript5ScopeD2Ev(ptr noundef nonnull align 8 dead_on_return(132) dereferenceable(132) %0) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector14InjectedScript11ObjectScopeD0Ev(ptr noundef nonnull align 8 dereferenceable(224) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN12v8_inspector14InjectedScript11ObjectScopeE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN12v8_inspector8String16D2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = shl i64 %i.e, 1
  %i.g = add i64 %i.f, 2
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.g) #20, !inline_history !208
  br label %_ZN12v8_inspector8String16D2Ev.exit.i

_ZN12v8_inspector8String16D2Ev.exit.i:            ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN12v8_inspector14InjectedScript11ObjectScopeD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i1.i: ; preds = %_ZN12v8_inspector8String16D2Ev.exit.i
  %i.l = load i64, ptr %i.j, align 8
  %i.m = shl i64 %i.l, 1
  %i.n = add i64 %i.m, 2
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.n) #20, !inline_history !208
  br label %_ZN12v8_inspector14InjectedScript11ObjectScopeD2Ev.exit

_ZN12v8_inspector14InjectedScript11ObjectScopeD2Ev.exit: ; preds = %_ZN12v8_inspector8String16D2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i1.i
  tail call void @_ZN12v8_inspector14InjectedScript5ScopeD2Ev(ptr noundef nonnull align 8 dead_on_return(132) dereferenceable(224) %0) #19, !inline_history !208
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 224) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector14InjectedScript11ObjectScope18findInjectedScriptEPNS_22V8InspectorSessionImplE(ptr dead_on_unwind noalias writable sret(%"class.v8_crdtp::DispatchResponse") align 8 %0, ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.203", align 8 ; 8 uses
  %4 = alloca %"class.v8_crdtp::DispatchResponse", align 8 ; 27 uses
  %i.a = alloca ptr, align 8                      ; 8 uses
  %5 = alloca %"class.v8_crdtp::DispatchResponse", align 8 ; 11 uses
  %6 = alloca %"class.v8_inspector::String16", align 8 ; 15 uses
  %7 = alloca %"class.v8_crdtp::DispatchResponse", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr null, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 136
  call void @_ZN12v8_inspector14RemoteObjectId5parseERKNS_8String16EPSt10unique_ptrIS0_St14default_deleteIS0_EE(ptr dead_on_unwind nonnull writable sret(%"class.v8_crdtp::DispatchResponse") align 8 %4, ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull %3) #19
  %i.c = load i32, ptr %4, align 8                ; 2 uses
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.c, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8
  %i.h = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.l = load i64, ptr %i.k, align 8              ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  store ptr %i.h, ptr %i.e, align 8
  %i.o = load i64, ptr %i.i, align 8
  store i64 %i.o, ptr %i.g, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %.thread

.thread:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.p = phi i64 [ %i.l, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %i.r, align 8
  store ptr %i.i, ptr %i.f, align 8
  store i64 0, ptr %i.q, align 8
  br label %_ZN8v8_crdtp16DispatchResponseD2Ev.exit24

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.s = load ptr, ptr %3, align 8
  call void @_ZN12v8_inspector22V8InspectorSessionImpl18findInjectedScriptEPNS_18RemoteObjectIdBaseERPNS_14InjectedScriptE(ptr dead_on_unwind nonnull writable sret(%"class.v8_crdtp::DispatchResponse") align 8 %5, ptr noundef nonnull align 8 dereferenceable(216) %2, ptr noundef %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #19
  %i.t = load i32, ptr %5, align 8
  store i32 %i.t, ptr %4, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 12 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.w = load ptr, ptr %i.u, align 8              ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 11 uses
  %i.y = icmp eq ptr %i.w, %i.x
  %i.z = load ptr, ptr %i.v, align 8              ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  %i.ab = icmp eq ptr %i.z, %i.aa                 ; 2 uses
  br i1 %i.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %bb.d
  br i1 %i.ab, label %bb.e, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.d
  br i1 %i.ab, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8            ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  call void @llvm.assume(i1 %i.ae)
  switch i64 %i.ad, label %bb.g [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.af = load i8, ptr %i.z, align 1
  store i8 %i.af, ptr %i.w, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.z, i64 %i.ad, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.ag = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.ag, ptr %i.ah, align 8
  %i.ai = load ptr, ptr %i.u, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  store i8 0, ptr %i.aj, align 1
  %.pre.i.i = load ptr, ptr %i.v, align 8
  br label %_ZN8v8_crdtp16DispatchResponseaSEOS0_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.z, ptr %i.u, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.am = load <2 x i64>, ptr %i.al, align 8
  store <2 x i64> %i.am, ptr %i.ak, align 8
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.an = load i64, ptr %i.x, align 8
  store ptr %i.z, ptr %i.u, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aq = load <2 x i64>, ptr %i.ao, align 8
  store <2 x i64> %i.aq, ptr %i.ap, align 8
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.w, ptr %i.v, align 8
  store i64 %i.an, ptr %i.aa, align 8
  br label %_ZN8v8_crdtp16DispatchResponseaSEOS0_.exit

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.aa, ptr %i.v, align 8
  br label %_ZN8v8_crdtp16DispatchResponseaSEOS0_.exit

_ZN8v8_crdtp16DispatchResponseaSEOS0_.exit:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.h, %bb.i
  %i.ar = phi ptr [ %i.w, %bb.h ], [ %i.aa, %bb.i ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.as, align 8
  store i8 0, ptr %i.ar, align 1
  %i.at = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZN8v8_crdtp16DispatchResponseD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN8v8_crdtp16DispatchResponseaSEOS0_.exit
  %i.aw = load i64, ptr %i.au, align 8
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #20
  br label %_ZN8v8_crdtp16DispatchResponseD2Ev.exit

_ZN8v8_crdtp16DispatchResponseD2Ev.exit:          ; preds = %_ZN8v8_crdtp16DispatchResponseaSEOS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.ay = load i32, ptr %4, align 8               ; 2 uses
  %i.az = icmp eq i32 %i.ay, 1
  br i1 %i.az, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN8v8_crdtp16DispatchResponseD2Ev.exit
  store i32 %i.ay, ptr %0, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.bb, ptr %i.ba, align 8
  %i.bc = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.x
  br i1 %i.bd, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bf = load i64, ptr %i.be, align 8            ; 3 uses
  %i.bg = icmp ult i64 %i.bf, 16
  call void @llvm.assume(i1 %i.bg)
  %i.bh = add nuw nsw i64 %i.bf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bb, ptr noundef nonnull align 8 dereferenceable(1) %i.x, i64 %i.bh, i1 false)
  br label %.thread74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.j
  store ptr %i.bc, ptr %i.ba, align 8
  %i.bi = load i64, ptr %i.x, align 8
  store i64 %i.bi, ptr %i.bb, align 8
  %.phi.trans.insert25 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.pre26 = load i64, ptr %.phi.trans.insert25, align 8
  br label %.thread74

bb.l:                                             ; preds = %_ZN8v8_crdtp16DispatchResponseD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.bj = load ptr, ptr %i.a, align 8
  %i.bk = load ptr, ptr %3, align 8
  call void @_ZNK12v8_inspector14InjectedScript15objectGroupNameERKNS_14RemoteObjectIdE(ptr dead_on_unwind nonnull writable sret(%"class.v8_inspector::String16") align 8 %6, ptr noundef nonnull align 8 dereferenceable(272) %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %i.bk)
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 4 uses
  %i.bm = load ptr, ptr %i.bl, align 8            ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  %i.bp = load ptr, ptr %6, align 8               ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.br = icmp eq ptr %i.bp, %i.bq                ; 2 uses
  br i1 %i.bo, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  br i1 %i.br, label %bb.m, label %.thread.i.i7

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.l
  br i1 %i.br, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit23.thread25.i.i

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8            ; 3 uses
  %i.bu = icmp ult i64 %i.bt, 8
  call void @llvm.assume(i1 %i.bu)
  switch i64 %i.bt, label %bb.o [
    i64 0, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit.i.i
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.bv = load i16, ptr %i.bp, align 2
  store i16 %i.bv, ptr %i.bm, align 2
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.bw = shl nuw nsw i64 %i.bt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.bm, ptr align 2 %i.bp, i64 %i.bw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit.i.i

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit.i.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.bx = load i64, ptr %i.bs, align 8            ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 184
  store i64 %i.bx, ptr %i.by, align 8
  %i.bz = load ptr, ptr %i.bl, align 8
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %i.bz, i64 %i.bx
  store i16 0, ptr %i.ca, align 2
  %.pre.i.i6 = load ptr, ptr %6, align 8
  br label %_ZN12v8_inspector8String16aSEOS0_.exit

.thread.i.i7:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 184
  store ptr %i.bp, ptr %i.bl, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cd = load <2 x i64>, ptr %i.cc, align 8
  store <2 x i64> %i.cd, ptr %i.cb, align 8
  br label %bb.q

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i
  %i.ce = load i64, ptr %i.bn, align 8
  store ptr %i.bp, ptr %i.bl, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ch = load <2 x i64>, ptr %i.cf, align 8
  store <2 x i64> %i.ch, ptr %i.cg, align 8
  %.not.i.i5 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i5, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.bm, ptr %6, align 8
  store i64 %i.ce, ptr %i.bq, align 8
  br label %_ZN12v8_inspector8String16aSEOS0_.exit

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i7
  store ptr %i.bq, ptr %6, align 8
  br label %_ZN12v8_inspector8String16aSEOS0_.exit

_ZN12v8_inspector8String16aSEOS0_.exit:           ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit.i.i, %bb.p, %bb.q
  %8 = phi ptr [ %i.bm, %bb.p ], [ %i.bq, %bb.q ], [ %.pre.i.i6, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit.i.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.ci, align 8
  store i16 0, ptr %8, align 2
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 208
  store i64 %i.ck, ptr %i.cl, align 8
  %i.cm = load ptr, ptr %6, align 8               ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZN12v8_inspector8String16D2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN12v8_inspector8String16aSEOS0_.exit
  %i.cp = load i64, ptr %i.cn, align 8
  %i.cq = shl i64 %i.cp, 1
  %i.cr = add i64 %i.cq, 2
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cr) #20
  br label %_ZN12v8_inspector8String16D2Ev.exit

_ZN12v8_inspector8String16D2Ev.exit:              ; preds = %_ZN12v8_inspector8String16aSEOS0_.exit, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.cs = load ptr, ptr %i.a, align 8
  %i.ct = load ptr, ptr %3, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 216
  call void @_ZNK12v8_inspector14InjectedScript10findObjectERKNS_14RemoteObjectIdEPN2v85LocalINS4_5ValueEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8_crdtp::DispatchResponse") align 8 %7, ptr noundef nonnull align 8 dereferenceable(272) %i.cs, ptr noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noundef nonnull %i.cu)
  %i.cv = load i32, ptr %7, align 8
  store i32 %i.cv, ptr %4, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.cx = load ptr, ptr %i.u, align 8             ; 6 uses
  %i.cy = icmp eq ptr %i.cx, %i.x
  %i.cz = load ptr, ptr %i.cw, align 8            ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 4 uses
  %i.db = icmp eq ptr %i.cz, %i.da                ; 2 uses
  br i1 %i.cy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZN12v8_inspector8String16D2Ev.exit
  br i1 %i.db, label %bb.r, label %.thread.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i8: ; preds = %_ZN12v8_inspector8String16D2Ev.exit
  br i1 %i.db, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i9

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8            ; 3 uses
  %i.de = icmp ult i64 %i.dd, 16
  call void @llvm.assume(i1 %i.de)
  switch i64 %i.dd, label %bb.t [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i12
    i64 1, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  %i.df = load i8, ptr %i.cz, align 1
  store i8 %i.df, ptr %i.cx, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i12

bb.t:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cx, ptr align 1 %i.cz, i64 %i.dd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i12: ; preds = %bb.t, %bb.s, %bb.r
  %i.dg = load i64, ptr %i.dc, align 8            ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.dg, ptr %i.dh, align 8
  %i.di = load ptr, ptr %i.u, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dg
  store i8 0, ptr %i.dj, align 1
  %.pre.i.i13 = load ptr, ptr %i.cw, align 8
  br label %_ZN8v8_crdtp16DispatchResponseaSEOS0_.exit16

.thread.i.i15:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.cz, ptr %i.u, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dm = load <2 x i64>, ptr %i.dl, align 8
  store <2 x i64> %i.dm, ptr %i.dk, align 8
  br label %bb.v

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i9: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i8
  %i.dn = load i64, ptr %i.x, align 8
  store ptr %i.cz, ptr %i.u, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dq = load <2 x i64>, ptr %i.do, align 8
  store <2 x i64> %i.dq, ptr %i.dp, align 8
  %.not.i.i10 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i10, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i9
  store ptr %i.cx, ptr %i.cw, align 8
  store i64 %i.dn, ptr %i.da, align 8
  br label %_ZN8v8_crdtp16DispatchResponseaSEOS0_.exit16

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i9, %.thread.i.i15
  store ptr %i.da, ptr %i.cw, align 8
  br label %_ZN8v8_crdtp16DispatchResponseaSEOS0_.exit16

_ZN8v8_crdtp16DispatchResponseaSEOS0_.exit16:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i12, %bb.u, %bb.v
  %i.dr = phi ptr [ %i.cx, %bb.u ], [ %i.da, %bb.v ], [ %.pre.i.i13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i12 ]
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %i.ds, align 8
  store i8 0, ptr %i.dr, align 1
  %i.dt = load ptr, ptr %i.cw, align 8            ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %_ZN8v8_crdtp16DispatchResponseD2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17: ; preds = %_ZN8v8_crdtp16DispatchResponseaSEOS0_.exit16
  %i.dw = load i64, ptr %i.du, align 8
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dx) #20
  br label %_ZN8v8_crdtp16DispatchResponseD2Ev.exit19

_ZN8v8_crdtp16DispatchResponseD2Ev.exit19:        ; preds = %_ZN8v8_crdtp16DispatchResponseaSEOS0_.exit16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.dy = load i32, ptr %4, align 8               ; 2 uses
  %i.dz = icmp eq i32 %i.dy, 1
  br i1 %i.dz, label %bb.y, label %bb.w

bb.w:                                             ; preds = %_ZN8v8_crdtp16DispatchResponseD2Ev.exit19
  store i32 %i.dy, ptr %0, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.eb, ptr %i.ea, align 8
  %i.ec = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.x
  br i1 %i.ed, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

bb.x:                                             ; preds = %bb.w
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ef = load i64, ptr %i.ee, align 8            ; 3 uses
  %i.eg = icmp ult i64 %i.ef, 16
  call void @llvm.assume(i1 %i.eg)
  %i.eh = add nuw nsw i64 %i.ef, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.eb, ptr noundef nonnull align 8 dereferenceable(1) %i.x, i64 %i.eh, i1 false)
  br label %.thread74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.w
  store ptr %i.ec, ptr %i.ea, align 8
  %i.ei = load i64, ptr %i.x, align 8
  store i64 %i.ei, ptr %i.eb, align 8
  %.phi.trans.insert27 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.pre28 = load i64, ptr %.phi.trans.insert27, align 8
  br label %.thread74

.thread74:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3, %bb.k
  %.sink76 = phi i64 [ %.pre26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3 ], [ %i.bf, %bb.k ], [ %i.ef, %bb.x ], [ %.pre28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ]
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink76, ptr %i.ek, align 8
  store ptr %i.x, ptr %i.u, align 8
  store i64 0, ptr %i.ej, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %_ZN8v8_crdtp16DispatchResponseD2Ev.exit24

bb.y:                                             ; preds = %_ZN8v8_crdtp16DispatchResponseD2Ev.exit19
  %i.el = load ptr, ptr %i.a, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.el, ptr %i.em, align 8
  call void @_ZN8v8_crdtp16DispatchResponse7SuccessEv(ptr dead_on_unwind writable sret(%"class.v8_crdtp::DispatchResponse") align 8 %0) #19
  %.pre30.pre = load ptr, ptr %i.u, align 8       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.eo = icmp eq ptr %.pre30.pre, %i.en
  br i1 %i.eo, label %_ZN8v8_crdtp16DispatchResponseD2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22: ; preds = %bb.y
  %i.ep = load i64, ptr %i.en, align 8
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %.pre30.pre, i64 noundef %i.eq) #20
  br label %_ZN8v8_crdtp16DispatchResponseD2Ev.exit24

_ZN8v8_crdtp16DispatchResponseD2Ev.exit24:        ; preds = %bb.y, %.thread, %.thread74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.er = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i = icmp eq ptr %i.er, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN12v8_inspector14RemoteObjectIdESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN12v8_inspector14RemoteObjectIdEEclEPS1_.exit.i

_ZNKSt14default_deleteIN12v8_inspector14RemoteObjectIdEEclEPS1_.exit.i: ; preds = %_ZN8v8_crdtp16DispatchResponseD2Ev.exit24
  call void @_ZdlPvm(ptr noundef nonnull %i.er, i64 noundef 16) #20
  br label %_ZNSt10unique_ptrIN12v8_inspector14RemoteObjectIdESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN12v8_inspector14RemoteObjectIdESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN8v8_crdtp16DispatchResponseD2Ev.exit24, %_ZNKSt14default_deleteIN12v8_inspector14RemoteObjectIdEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void
}

declare void @_ZN12v8_inspector22V8InspectorSessionImpl18findInjectedScriptEPNS_18RemoteObjectIdBaseERPNS_14InjectedScriptE(ptr dead_on_unwind writable sret(%"class.v8_crdtp::DispatchResponse") align 8, ptr noundef nonnull align 8 dereferenceable(216), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector14InjectedScript14CallFrameScopeC2EPNS_22V8InspectorSessionImplERKNS_8String16E(ptr noundef nonnull align 8 dereferenceable(184) initializes((0, 48)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN12v8_inspector14InjectedScript5ScopeE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  store ptr %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
end_hunk_0
