inline.NumInlined: 2597
inline.NumDeleted: 1169
begin_hunk_0_@_ZN4node6crypto15X509Certificate8toObjectEPNS_11EnvironmentERKN7ncrypto8X509ViewE:bb.a
  %i.fv = sub i64 %i.ft, %i.fu
  call void @_ZdlPvm(ptr noundef nonnull %i.fq, i64 noundef %i.fv) #28
  br label %_ZN4node6crypto12_GLOBAL__N_111GetKeyUsageEPNS_11EnvironmentERKN7ncrypto8X509ViewE.exit.i

_ZN4node6crypto12_GLOBAL__N_111GetKeyUsageEPNS_11EnvironmentERKN7ncrypto8X509ViewE.exit.i: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store ptr %.sroa.02.0.i.i, ptr %i.ew, align 16
  %i.fw = getelementptr inbounds nuw i8, ptr %12, i64 120
  %i.fx = call fastcc ptr @_ZN4node6crypto12_GLOBAL__N_115GetSerialNumberEPNS_11EnvironmentERKN7ncrypto8X509ViewE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  store ptr %i.fx, ptr %i.fw, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %12, i64 128 ; 2 uses
  %i.fz = call fastcc ptr @_ZN4node6crypto12_GLOBAL__N_16GetDerEPNS_11EnvironmentERKN7ncrypto8X509ViewE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  store ptr %i.fz, ptr %i.fy, align 16
  %i.ga = getelementptr inbounds nuw i8, ptr %12, i64 136 ; 2 uses
  %i.gb = load ptr, ptr %i.h, align 8
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = add i64 %i.gc, 648                      ; 2 uses
  store i64 %i.gd, ptr %i.ga, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %12, i64 144 ; 2 uses
  store i64 %i.gd, ptr %i.ge, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.gf = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %15, i64 24
  store ptr %12, ptr %15, align 8
  %.sroa.464.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.f, ptr %.sroa.464.0..sroa_idx.i, align 8
  store ptr @"_ZNSt17_Function_handlerIFbRKN7ncrypto3RsaEEZN4node6crypto12_GLOBAL__N_112X509ToObjectEPNS5_11EnvironmentERKNS0_8X509ViewEE3$_0E9_M_invokeERKSt9_Any_dataS3_", ptr %i.gg, align 8
  store ptr @"_ZNSt17_Function_handlerIFbRKN7ncrypto3RsaEEZN4node6crypto12_GLOBAL__N_112X509ToObjectEPNS5_11EnvironmentERKNS0_8X509ViewEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation", ptr %i.gf, align 8
  %i.gh = call noundef zeroext i1 @_ZNK7ncrypto8X509View5ifRsaESt8functionIFbRKNS_3RsaEEE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %15) #25 ; 0 uses
  %i.gi = load ptr, ptr %i.gf, align 8            ; 2 uses
  %.not.i59.i = icmp eq ptr %i.gi, null
  br i1 %.not.i59.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZN4node6crypto12_GLOBAL__N_111GetKeyUsageEPNS_11EnvironmentERKN7ncrypto8X509ViewE.exit.i
  %i.gj = call noundef zeroext i1 %i.gi(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef 3) #25, !inline_history !43 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.x, %_ZN4node6crypto12_GLOBAL__N_111GetKeyUsageEPNS_11EnvironmentERKN7ncrypto8X509ViewE.exit.i
  %i.gk = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %16, i64 24
  store ptr %12, ptr %16, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx.i, align 8
  store ptr @"_ZNSt17_Function_handlerIFbRKN7ncrypto2EcEEZN4node6crypto12_GLOBAL__N_112X509ToObjectEPNS5_11EnvironmentERKNS0_8X509ViewEE3$_1E9_M_invokeERKSt9_Any_dataS3_", ptr %i.gl, align 8
  store ptr @"_ZNSt17_Function_handlerIFbRKN7ncrypto2EcEEZN4node6crypto12_GLOBAL__N_112X509ToObjectEPNS5_11EnvironmentERKNS0_8X509ViewEE3$_1E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation", ptr %i.gk, align 8
  %i.gm = call noundef zeroext i1 @_ZNK7ncrypto8X509View4ifEcESt8functionIFbRKNS_2EcEEE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %16) #25 ; 0 uses
  %i.gn = load ptr, ptr %i.gk, align 8            ; 2 uses
  %.not.i60.i = icmp eq ptr %i.gn, null
  br i1 %.not.i60.i, label %_ZNSt14_Function_baseD2Ev.exit61.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.go = call noundef zeroext i1 %i.gn(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %16, i32 noundef 3) #25, !inline_history !43 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit61.i

_ZNSt14_Function_baseD2Ev.exit61.i:               ; preds = %bb.y, %_ZNSt14_Function_baseD2Ev.exit.i
  %i.gp = load <16 x ptr>, ptr %12, align 16
  %.fr = freeze <16 x ptr> %i.gp
  %i.gq = icmp eq <16 x ptr> %.fr, splat (ptr null)
  %i.gr = load ptr, ptr %i.fy, align 16
  %.fr31 = freeze ptr %i.gr
  %i.gs = icmp eq ptr %.fr31, null
  %i.gt = load ptr, ptr %i.ga, align 8
  %.fr29 = freeze ptr %i.gt
  %i.gu = icmp eq ptr %.fr29, null
  %i.gv = load ptr, ptr %i.ge, align 16
  %i.gw = icmp eq ptr %i.gv, null
  %i.gx = bitcast <16 x i1> %i.gq to i16
  %i.gy = icmp ne i16 %i.gx, 0
  %op.rdx = or i1 %i.gy, %i.gs
  %i.gz = or i1 %op.rdx, %i.gu
  %op.rdx28 = select i1 %i.gz, i1 true, i1 %i.gw
  br i1 %op.rdx28, label %_ZN2v820EscapableHandleScope11EscapeMaybeINS_6ObjectEEENS_10MaybeLocalIT_EES5_.exit.i, label %_ZN4node21NewDictionaryInstanceEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit.i

_ZN4node21NewDictionaryInstanceEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit61.i
  %i.ha = load ptr, ptr %i.f, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 3008
  %i.hc = load ptr, ptr %i.hb, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 192
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.hd, align 8
  %i.he = call ptr @_ZN2v818DictionaryTemplate11NewInstanceENS_5LocalINS_7ContextEEENS_10MemorySpanINS_10MaybeLocalINS_5ValueEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.067.0.i, ptr %.sroa.0.0.copyload.i.i.i.i, ptr nonnull %12, i64 19) #25 ; 2 uses
  %i.hf = icmp eq ptr %i.he, null
  br i1 %i.hf, label %_ZN2v820EscapableHandleScope11EscapeMaybeINS_6ObjectEEENS_10MaybeLocalIT_EES5_.exit.i, label %bb.z

bb.z:                                             ; preds = %_ZN4node21NewDictionaryInstanceEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit.i
  %i.hg = call noundef ptr @_ZN2v824EscapableHandleScopeBase10EscapeSlotEPm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull %i.he) #25
  br label %_ZN2v820EscapableHandleScope11EscapeMaybeINS_6ObjectEEENS_10MaybeLocalIT_EES5_.exit.i

_ZN2v820EscapableHandleScope11EscapeMaybeINS_6ObjectEEENS_10MaybeLocalIT_EES5_.exit.i: ; preds = %bb.z, %_ZN4node21NewDictionaryInstanceEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit.i, %_ZNSt14_Function_baseD2Ev.exit61.i
  %.sroa.0.0.i.i.i = phi ptr [ %i.hg, %bb.z ], [ null, %_ZN4node21NewDictionaryInstanceEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit.i ], [ null, %_ZNSt14_Function_baseD2Ev.exit61.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.hh = load ptr, ptr %11, align 8              ; 2 uses
  %i.hi = icmp eq ptr %i.hh, null
  br i1 %i.hi, label %_ZN4node6crypto12_GLOBAL__N_112X509ToObjectEPNS_11EnvironmentERKN7ncrypto8X509ViewE.exit, label %bb.aa, !prof !5

bb.aa:                                            ; preds = %_ZN2v820EscapableHandleScope11EscapeMaybeINS_6ObjectEEENS_10MaybeLocalIT_EES5_.exit.i
  %i.hj = ptrtoint ptr %i.hh to i64
  %i.hk = add i64 %i.hj, 560
  %i.hl = inttoptr i64 %i.hk to ptr               ; 4 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.hn = load ptr, ptr %i.hl, align 8
  %i.ho = load ptr, ptr %i.hm, align 8
  store ptr %i.ho, ptr %i.hl, align 8
  store ptr %i.hn, ptr %i.hm, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 16 ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 8
  %i.hr = add nsw i32 %i.hq, -1
  store i32 %i.hr, ptr %i.hp, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hl, i64 8 ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.hv = load ptr, ptr %i.hu, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.ht, %i.hv
  br i1 %.not.i.i, label %_ZN4node6crypto12_GLOBAL__N_112X509ToObjectEPNS_11EnvironmentERKN7ncrypto8X509ViewE.exit, label %bb.ab, !prof !28

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.hv, ptr %i.hs, align 8
  %i.hw = load ptr, ptr %11, align 8
  call void @_ZN2v811HandleScope16DeleteExtensionsEPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %i.hw) #25
  br label %_ZN4node6crypto12_GLOBAL__N_112X509ToObjectEPNS_11EnvironmentERKN7ncrypto8X509ViewE.exit

_ZN4node6crypto12_GLOBAL__N_112X509ToObjectEPNS_11EnvironmentERKN7ncrypto8X509ViewE.exit: ; preds = %_ZN2v820EscapableHandleScope11EscapeMaybeINS_6ObjectEEENS_10MaybeLocalIT_EES5_.exit.i, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  br label %_ZNK2v810MaybeLocalINS_6ObjectEE9FromMaybeINS_5ValueEEENS_5LocalIT_EES7_.exit

_ZNK2v810MaybeLocalINS_6ObjectEE9FromMaybeINS_5ValueEEENS_5LocalIT_EES7_.exit: ; preds = %_ZN4node6crypto12_GLOBAL__N_112X509ToObjectEPNS_11EnvironmentERKN7ncrypto8X509ViewE.exit, %bb.a
  %.sroa.04.0 = phi ptr [ null, %bb.a ], [ %.sroa.0.0.i.i.i, %_ZN4node6crypto12_GLOBAL__N_112X509ToObjectEPNS_11EnvironmentERKN7ncrypto8X509ViewE.exit ]
  ret ptr %.sroa.04.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node6crypto15X509CertificateC2EPNS_11EnvironmentEN2v85LocalINS4_6ObjectEEESt10shared_ptrINS0_11ManagedX509EES7_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef readonly captures(none) %1, ptr %2, ptr nofree noundef captures(none) %3, ptr %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 3008
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZN4node10BaseObjectC2EPNS_5RealmEN2v85LocalINS3_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b, ptr %2) #25
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN4node6crypto15X509CertificateE, i64 16), ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %3, align 8
  store ptr %i.d, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr null, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  store ptr null, ptr %i.f, align 8
  store ptr %i.g, ptr %i.e, align 8
  store ptr null, ptr %3, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  store ptr null, ptr %i.h, align 8
  tail call void @_ZN4node10BaseObject8MakeWeakEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #25
  %i.i = icmp eq ptr %4, null
  br i1 %i.i, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %4, align 8                ; 2 uses
  %i.k = add i64 %i.j, -1
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i64, ptr %i.l, align 8
  %i.n = add i64 %i.m, 11
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i16, ptr %i.o, align 2              ; 2 uses
  %i.q = icmp eq i16 %i.p, 1040
  %i.r = add i16 %i.p, -1057
  %i.s = icmp ult i16 %i.r, 1002
  %i.t = or i1 %i.q, %i.s
  br i1 %i.t, label %bb.c, label %bb.d, !prof !28

bb.c:                                             ; preds = %bb.b
  %i.u = add i64 %i.j, 39
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load i64, ptr %i.v, align 8
  %i.x = inttoptr i64 %i.w to ptr
  br label %_ZN4node10BaseObject6UnwrapINS_6crypto15X509CertificateEEEPT_N2v85LocalINS6_5ValueEEE.exit

bb.d:                                             ; preds = %bb.b
  %i.y = tail call noundef ptr @_ZN2v86Object38SlowGetAlignedPointerFromInternalFieldEi(ptr noundef nonnull align 1 dereferenceable(1) %4, i32 noundef 1) #25
  br label %_ZN4node10BaseObject6UnwrapINS_6crypto15X509CertificateEEEPT_N2v85LocalINS6_5ValueEEE.exit

_ZN4node10BaseObject6UnwrapINS_6crypto15X509CertificateEEEPT_N2v85LocalINS6_5ValueEEE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i.i = phi ptr [ %i.x, %bb.c ], [ %i.y, %bb.d ] ; 4 uses
  %i.z = icmp eq ptr %.0.i.i.i.i, null
  br i1 %i.z, label %_ZN4node17BaseObjectPtrImplINS_6crypto15X509CertificateELb0EEC2EPS2_.exit.i, label %_ZNK4node17BaseObjectPtrImplINS_6crypto15X509CertificateELb0EE12pointer_dataEv.exit.i.i

_ZNK4node17BaseObjectPtrImplINS_6crypto15X509CertificateELb0EE12pointer_dataEv.exit.i.i: ; preds = %_ZN4node10BaseObject6UnwrapINS_6crypto15X509CertificateEEEPT_N2v85LocalINS6_5ValueEEE.exit
  %i.aa = tail call noundef ptr @_ZN4node10BaseObject12pointer_dataEv(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i.i) #25
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %bb.e, label %bb.f, !prof !5

bb.e:                                             ; preds = %_ZNK4node17BaseObjectPtrImplINS_6crypto15X509CertificateELb0EE12pointer_dataEv.exit.i.i
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node17BaseObjectPtrImplINS_6crypto15X509CertificateELb0EEC1EPS2_E20error_and_abort_args_0) #25
  tail call void @abort() #26
  unreachable

bb.f:                                             ; preds = %_ZNK4node17BaseObjectPtrImplINS_6crypto15X509CertificateELb0EE12pointer_dataEv.exit.i.i
  tail call void @_ZN4node10BaseObject17increase_refcountEv(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i.i) #25
  %5 = ptrtoint ptr %.0.i.i.i.i to i64
  br label %_ZN4node17BaseObjectPtrImplINS_6crypto15X509CertificateELb0EEC2EPS2_.exit.i

_ZN4node17BaseObjectPtrImplINS_6crypto15X509CertificateELb0EEC2EPS2_.exit.i: ; preds = %bb.f, %_ZN4node10BaseObject6UnwrapINS_6crypto15X509CertificateEEEPT_N2v85LocalINS6_5ValueEEE.exit
  %.sroa.0.0.i = phi i64 [ 0, %_ZN4node10BaseObject6UnwrapINS_6crypto15X509CertificateEEEPT_N2v85LocalINS6_5ValueEEE.exit ], [ %5, %bb.f ]
  %i.ab = load ptr, ptr %i.h, align 8             ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %_ZN4node17BaseObjectPtrImplINS_6crypto15X509CertificateELb0EE5resetEPS2_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4node17BaseObjectPtrImplINS_6crypto15X509CertificateELb0EEC2EPS2_.exit.i
  tail call void @_ZN4node10BaseObject17decrease_refcountEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ab) #25
  br label %_ZN4node17BaseObjectPtrImplINS_6crypto15X509CertificateELb0EE5resetEPS2_.exit

_ZN4node17BaseObjectPtrImplINS_6crypto15X509CertificateELb0EE5resetEPS2_.exit: ; preds = %_ZN4node17BaseObjectPtrImplINS_6crypto15X509CertificateELb0EEC2EPS2_.exit.i, %bb.g
  store i64 %.sroa.0.0.i, ptr %i.h, align 8
  br label %bb.h

bb.h:                                             ; preds = %_ZN4node17BaseObjectPtrImplINS_6crypto15X509CertificateELb0EE5resetEPS2_.exit, %bb.a
  ret void
}

declare void @_ZN4node10BaseObject8MakeWeakEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4node6crypto15X509Certificate10MemoryInfoEPNS_13MemoryTrackerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN4node13MemoryTracker10TrackFieldINS_6crypto11ManagedX509EEEvPKcRKSt10shared_ptrIT_ES5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.e = load i64, ptr %i.d, align 8
  %.not.not.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.not.i.i.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 112
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.06.0.in.i.i.i.i = phi ptr [ %i.f, %bb.c ], [ %.sroa.06.0.i.i.i.i, %bb.e ]
  %.sroa.06.0.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i, align 8 ; 4 uses
  %i.g = icmp eq ptr %.sroa.06.0.i.i.i.i, null
  br i1 %i.g, label %.loopexit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp eq ptr %i.b, %i.i
  br i1 %i.j, label %_ZNSt13unordered_mapIPKN4node14MemoryRetainerEPNS0_18MemoryRetainerNodeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S5_EEE4findERSB_.exit.i.i, label %bb.d, !llvm.loop !44

bb.f:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.l = ptrtoint ptr %i.b to i64
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = urem i64 %i.l, %i.n                      ; 2 uses
  %i.p = load ptr, ptr %i.k, align 8
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i, label %.loopexit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = icmp eq ptr %i.b, %i.u
  br i1 %i.v, label %_ZNSt13unordered_mapIPKN4node14MemoryRetainerEPNS0_18MemoryRetainerNodeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S5_EEE4findERSB_.exit.i.i, label %.lr.ph.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.w = icmp eq ptr %i.b, %i.z
  br i1 %i.w, label %_ZNSt13unordered_mapIPKN4node14MemoryRetainerEPNS0_18MemoryRetainerNodeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S5_EEE4findERSB_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !45

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.g, %bb.h
  %.020.i.i.i.i.i.i = phi ptr [ %i.x, %bb.h ], [ %i.s, %bb.g ]
  %i.x = load ptr, ptr %.020.i.i.i.i.i.i, align 8 ; 4 uses
  %.not18.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not18.i.i.i.i.i.i, label %.loopexit.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = urem i64 %i.aa, %i.n
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.ab, %i.o
  br i1 %.not19.i.i.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i.i.i, !llvm.loop !45

..loopexit_crit_edge21.i.i.i.i.i.i:               ; preds = %bb.i
  br label %.loopexit.i.i, !llvm.loop !45

_ZNSt13unordered_mapIPKN4node14MemoryRetainerEPNS0_18MemoryRetainerNodeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S5_EEE4findERSB_.exit.i.i: ; preds = %bb.h, %bb.e, %bb.g
  %.sroa.06.1.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.e ], [ %i.s, %bb.g ], [ %i.x, %bb.h ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ag = load ptr, ptr %i.ae, align 8            ; 3 uses
  %i.ah = load ptr, ptr %i.af, align 8
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNK4node13MemoryTracker11CurrentNodeEv.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt13unordered_mapIPKN4node14MemoryRetainerEPNS0_18MemoryRetainerNodeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S5_EEE4findERSB_.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !46
  %i.al = icmp eq ptr %i.ag, %i.ak
  br i1 %i.al, label %bb.k, label %_ZNKSt5stackIPN4node18MemoryRetainerNodeESt5dequeIS2_SaIS2_EEE3topEv.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.an = load ptr, ptr %i.am, align 8, !noalias !46
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -8
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 512
  br label %_ZNKSt5stackIPN4node18MemoryRetainerNodeESt5dequeIS2_SaIS2_EEE3topEv.exit.i.i.i

_ZNKSt5stackIPN4node18MemoryRetainerNodeESt5dequeIS2_SaIS2_EEE3topEv.exit.i.i.i: ; preds = %bb.k, %bb.j
  %i.ar = phi ptr [ %i.aq, %bb.k ], [ %i.ag, %bb.j ]
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -8
  %i.at = load ptr, ptr %i.as, align 8            ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i, label %_ZNK4node13MemoryTracker11CurrentNodeEv.exit.i.i, label %_ZNK4node18MemoryRetainerNode14IsCppgcWrapperEv.exit.i.i.i

_ZNK4node18MemoryRetainerNode14IsCppgcWrapperEv.exit.i.i.i: ; preds = %_ZNKSt5stackIPN4node18MemoryRetainerNodeESt5dequeIS2_SaIS2_EEE3topEv.exit.i.i.i
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = tail call noundef zeroext i1 %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.av) #25, !inline_history !49
  br i1 %i.az, label %bb.l, label %_ZNK4node13MemoryTracker11CurrentNodeEv.exit.i.i

bb.l:                                             ; preds = %_ZNK4node18MemoryRetainerNode14IsCppgcWrapperEv.exit.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  br label %_ZNK4node13MemoryTracker11CurrentNodeEv.exit.i.i

_ZNK4node13MemoryTracker11CurrentNodeEv.exit.i.i: ; preds = %bb.l, %_ZNK4node18MemoryRetainerNode14IsCppgcWrapperEv.exit.i.i.i, %_ZNKSt5stackIPN4node18MemoryRetainerNodeESt5dequeIS2_SaIS2_EEE3topEv.exit.i.i.i, %_ZNSt13unordered_mapIPKN4node14MemoryRetainerEPNS0_18MemoryRetainerNodeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S5_EEE4findERSB_.exit.i.i
  %.1.i.i.i = phi ptr [ null, %_ZNSt13unordered_mapIPKN4node14MemoryRetainerEPNS0_18MemoryRetainerNodeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S5_EEE4findERSB_.exit.i.i ], [ %i.bb, %bb.l ], [ %i.at, %_ZNK4node18MemoryRetainerNode14IsCppgcWrapperEv.exit.i.i.i ], [ %i.at, %_ZNKSt5stackIPN4node18MemoryRetainerNodeESt5dequeIS2_SaIS2_EEE3topEv.exit.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = load ptr, ptr %i.ad, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  tail call void %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef %.1.i.i.i, ptr noundef %i.bd, ptr noundef nonnull @.str.10) #25, !inline_history !50
  br label %_ZN4node13MemoryTracker10TrackFieldINS_6crypto11ManagedX509EEEvPKcRKSt10shared_ptrIT_ES5_.exit

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i, %bb.d, %..loopexit_crit_edge21.i.i.i.i.i.i, %bb.f
  tail call void @_ZN4node13MemoryTracker5TrackEPKNS_14MemoryRetainerEPKc(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.10)
  br label %_ZN4node13MemoryTracker10TrackFieldINS_6crypto11ManagedX509EEEvPKcRKSt10shared_ptrIT_ES5_.exit

_ZN4node13MemoryTracker10TrackFieldINS_6crypto11ManagedX509EEEvPKcRKSt10shared_ptrIT_ES5_.exit: ; preds = %bb.a, %_ZNK4node13MemoryTracker11CurrentNodeEv.exit.i.i, %.loopexit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node6crypto15X509Certificate27X509CertificateTransferData11DeserializeEPNS_11EnvironmentEN2v85LocalINS5_7ContextEEESt10unique_ptrINS_6worker12TransferDataESt14default_deleteISB_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.node::BaseObjectPtrImpl.424") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef %2, ptr nofree readonly captures(address_is_null) %3, ptr nofree readnone captures(none) %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.std::shared_ptr.403", align 16 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 3008
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.c, align 8 ; 2 uses
  %i.d = icmp eq ptr %3, null
  %i.e = icmp eq ptr %.sroa.0.0.copyload.i.i.i, null ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.d, label %_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_7ContextEEES5_EEbRKT_RKT0_.exit.thread, !prof !29

bb.c:                                             ; preds = %bb.a
  br i1 %i.e, label %_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_7ContextEEES5_EEbRKT_RKT0_.exit.thread, label %_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_7ContextEEES5_EEbRKT_RKT0_.exit

_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_7ContextEEES5_EEbRKT_RKT0_.exit: ; preds = %bb.c
  %i.f = load i64, ptr %3, align 8
  %i.g = load i64, ptr %.sroa.0.0.copyload.i.i.i, align 8
  %i.h = icmp eq i64 %i.f, %i.g
  br i1 %i.h, label %bb.d, label %_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_7ContextEEES5_EEbRKT_RKT0_.exit.thread, !prof !29

_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_7ContextEEES5_EEbRKT_RKT0_.exit.thread: ; preds = %bb.b, %bb.c, %_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_7ContextEEES5_EEbRKT_RKT0_.exit
  tail call void @_ZN4node44THROW_ERR_MESSAGE_TARGET_CONTEXT_UNAVAILABLEEPNS_11EnvironmentE(ptr noundef nonnull %2)
  store ptr null, ptr %0, align 8
  br label %_ZN4node17BaseObjectPtrImplINS_10BaseObjectELb0EEC2EPS1_.exit

bb.d:                                             ; preds = %bb.b, %_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_7ContextEEES5_EEbRKT_RKT0_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.i, align 8
  store <2 x ptr> %i.m, ptr %5, align 16
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN4node6crypto11ManagedX509EEC2ERKS3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.n, align 4
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4
  br label %_ZNSt10shared_ptrIN4node6crypto11ManagedX509EEC2ERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN4node6crypto11ManagedX509EEC2ERKS3_.exit

_ZNSt10shared_ptrIN4node6crypto11ManagedX509EEC2ERKS3_.exit: ; preds = %bb.d, %bb.f, %bb.g
  %i.s = call ptr @_ZN4node6crypto15X509Certificate3NewEPNS_11EnvironmentESt10shared_ptrINS0_11ManagedX509EEP13stack_st_X509(ptr noundef nonnull %2, ptr noundef nonnull %5, ptr noundef null) ; 3 uses
  %.not = icmp eq ptr %i.s, null
end_hunk_0
