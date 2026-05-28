inline.NumInlined: 8933
inline.NumDeleted: 4075
begin_hunk_0_@_ZN2v88internal7Isolate38RunHostImportModuleDynamicallyCallbackENS0_17MaybeDirectHandleINS0_6ScriptEEENS0_6HandleINS0_6ObjectEEENS_17ModuleImportPhaseENS2_IS6_EE:bb.a

bb.u:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8
  %.not.i81 = icmp eq i64 %i.cy, %i.db
  br i1 %.not.i81, label %bb.v, label %_ZN2v88internal7Isolate9exceptionEv.exit82, !prof !7

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.123) #45
  unreachable

_ZN2v88internal7Isolate9exceptionEv.exit82:       ; preds = %bb.u
  %i.dc = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.dd = load ptr, ptr %i.j, align 8
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %bb.w, label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit63, !prof !7

bb.w:                                             ; preds = %_ZN2v88internal7Isolate9exceptionEv.exit82
  %i.df = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #46
  br label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit63

_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit63: ; preds = %_ZN2v88internal7Isolate9exceptionEv.exit82, %bb.w
  %.0.i.i62 = phi ptr [ %i.df, %bb.w ], [ %i.dc, %_ZN2v88internal7Isolate9exceptionEv.exit82 ] ; 3 uses
  %i.dg = ptrtoint ptr %.0.i.i62 to i64
  %i.dh = add i64 %i.dg, 8
  %i.di = inttoptr i64 %i.dh to ptr
  store ptr %i.di, ptr %i.h, align 8
  store i64 %i.cy, ptr %.0.i.i62, align 8
  %i.dj = load i64, ptr %i.da, align 8
  store i64 %i.dj, ptr %i.cv, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.dl = load ptr, ptr %i.dk, align 8            ; 2 uses
  %.not.i83 = icmp eq ptr %i.dl, null
  br i1 %.not.i83, label %_ZN2v88internal7Isolate15clear_exceptionEv.exit84, label %bb.x

bb.x:                                             ; preds = %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit63
  tail call void @_ZN2v88TryCatch5ResetEv(ptr noundef nonnull align 8 dereferenceable(41) %i.dl) #46
  br label %_ZN2v88internal7Isolate15clear_exceptionEv.exit84

_ZN2v88internal7Isolate15clear_exceptionEv.exit84: ; preds = %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit63, %bb.x
  %i.dm = tail call ptr @_ZN2v87Promise8Resolver3NewENS_5LocalINS_7ContextEEE(ptr nonnull %.0.i.i.i66) #46 ; 3 uses
  %.not.i85 = icmp eq ptr %i.dm, null
  br i1 %.not.i85, label %_ZN2v88internal12_GLOBAL__N_118NewRejectedPromiseEPNS0_7IsolateENS_5LocalINS_7ContextEEENS0_12DirectHandleINS0_6ObjectEEE.exit, label %bb.y

bb.y:                                             ; preds = %_ZN2v88internal7Isolate15clear_exceptionEv.exit84
  %i.dn = tail call i16 @_ZN2v87Promise8Resolver6RejectENS_5LocalINS_7ContextEEENS2_INS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.dm, ptr nonnull %.0.i.i.i66, ptr nonnull %.0.i.i62) #46
  %i.do = trunc i16 %i.dn to i1
  br i1 %i.do, label %bb.z, label %_ZN2v88internal12_GLOBAL__N_118NewRejectedPromiseEPNS0_7IsolateENS_5LocalINS_7ContextEEENS0_12DirectHandleINS0_6ObjectEEE.exit

bb.z:                                             ; preds = %bb.y
  %i.dp = tail call ptr @_ZN2v87Promise8Resolver10GetPromiseEv(ptr noundef nonnull align 1 dereferenceable(1) %i.dm) #46
  br label %_ZN2v88internal12_GLOBAL__N_118NewRejectedPromiseEPNS0_7IsolateENS_5LocalINS_7ContextEEENS0_12DirectHandleINS0_6ObjectEEE.exit

bb.aa:                                            ; preds = %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread155
  %i.dq = icmp eq ptr %1, null
  br i1 %i.dq, label %bb.ab, label %_ZNK2v88internal11MaybeHandleINS0_6ScriptEE5CheckEv.exit

bb.ab:                                            ; preds = %bb.aa
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 664
  br label %bb.ae

_ZNK2v88internal11MaybeHandleINS0_6ScriptEE5CheckEv.exit: ; preds = %bb.aa
  %i.dt = load i64, ptr %1, align 8
  %i.du = add i64 %i.dt, 135
  %i.dv = inttoptr i64 %i.du to ptr
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.dy = load ptr, ptr %i.j, align 8
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %bb.ac, label %_ZN2v88internal12DirectHandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !7

bb.ac:                                            ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ScriptEE5CheckEv.exit
  %i.ea = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #46
  br label %_ZN2v88internal12DirectHandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal12DirectHandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ScriptEE5CheckEv.exit, %bb.ac
  %.0.i.i.i = phi ptr [ %i.ea, %bb.ac ], [ %i.dx, %_ZNK2v88internal11MaybeHandleINS0_6ScriptEE5CheckEv.exit ] ; 3 uses
  %i.eb = ptrtoint ptr %.0.i.i.i to i64
  %i.ec = add i64 %i.eb, 8
  %i.ed = inttoptr i64 %i.ec to ptr
  store ptr %i.ed, ptr %i.h, align 8
  store i64 %i.dw, ptr %.0.i.i.i, align 8
  %i.ee = load i64, ptr %1, align 8
  %i.ef = add i64 %i.ee, 15
  %i.eg = inttoptr i64 %i.ef to ptr
  %i.eh = load i64, ptr %i.eg, align 8
  %i.ei = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.ej = load ptr, ptr %i.j, align 8
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %bb.ad, label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit65, !prof !7

bb.ad:                                            ; preds = %_ZN2v88internal12DirectHandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.el = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #46
  br label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit65

_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit65: ; preds = %_ZN2v88internal12DirectHandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.ad
  %.0.i.i64 = phi ptr [ %i.el, %bb.ad ], [ %i.ei, %_ZN2v88internal12DirectHandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ] ; 3 uses
  %i.em = ptrtoint ptr %.0.i.i64 to i64
  %i.en = add i64 %i.em, 8
  %i.eo = inttoptr i64 %i.en to ptr
  store ptr %i.eo, ptr %i.h, align 8
  store i64 %i.eh, ptr %.0.i.i64, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit65, %bb.ab
  %.sroa.0110.0 = phi ptr [ %i.ds, %bb.ab ], [ %.0.i.i64, %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit65 ] ; 3 uses
  %.sroa.0111.0 = phi ptr [ %i.dr, %bb.ab ], [ %.0.i.i.i, %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit65 ] ; 3 uses
  switch i32 %3, label %bb.an [
    i32 1, label %bb.af
    i32 0, label %bb.ai
  ]

bb.af:                                            ; preds = %bb.ae
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 59168
  %i.eq = load ptr, ptr %i.ep, align 8            ; 2 uses
  %.not58 = icmp eq ptr %i.eq, null
  br i1 %.not58, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.er = tail call ptr %i.eq(ptr nonnull %.0.i.i.i66, ptr nonnull %.sroa.0111.0, ptr nonnull %.sroa.0110.0, ptr nonnull %.sroa.07.0.i153157, i32 noundef 1, ptr nonnull %i.cu) #46 ; 2 uses
  %.not163 = icmp eq ptr %i.er, null
  br i1 %.not163, label %_ZN2v88internal12_GLOBAL__N_118NewRejectedPromiseEPNS0_7IsolateENS_5LocalINS_7ContextEEENS0_12DirectHandleINS0_6ObjectEEE.exit, label %bb.ao

bb.ah:                                            ; preds = %bb.af
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 59160
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = tail call ptr %i.et(ptr nonnull %.0.i.i.i66, ptr nonnull %.sroa.0111.0, ptr nonnull %.sroa.0110.0, ptr nonnull %.sroa.07.0.i153157, ptr nonnull %i.cu) #46 ; 2 uses
  %.not164 = icmp eq ptr %i.eu, null
  br i1 %.not164, label %_ZN2v88internal12_GLOBAL__N_118NewRejectedPromiseEPNS0_7IsolateENS_5LocalINS_7ContextEEENS0_12DirectHandleINS0_6ObjectEEE.exit, label %bb.ao

bb.ai:                                            ; preds = %bb.ae
  %i.ev = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 14), align 2, !range !13, !noundef !14
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %bb.ak, label %bb.aj, !prof !5

bb.aj:                                            ; preds = %bb.ai
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.73) #45
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 59168
  %i.ey = load ptr, ptr %i.ex, align 8            ; 2 uses
  %.not = icmp eq ptr %i.ey, null
  br i1 %.not, label %bb.al, label %bb.am, !prof !7

bb.al:                                            ; preds = %bb.ak
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.74) #45
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.ez = tail call ptr %i.ey(ptr nonnull %.0.i.i.i66, ptr nonnull %.sroa.0111.0, ptr nonnull %.sroa.0110.0, ptr nonnull %.sroa.07.0.i153157, i32 noundef 0, ptr nonnull %i.cu) #46 ; 2 uses
  %.not162 = icmp eq ptr %i.ez, null
  br i1 %.not162, label %_ZN2v88internal12_GLOBAL__N_118NewRejectedPromiseEPNS0_7IsolateENS_5LocalINS_7ContextEEENS0_12DirectHandleINS0_6ObjectEEE.exit, label %bb.ao

bb.an:                                            ; preds = %bb.ae
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.36) #45
  unreachable

bb.ao:                                            ; preds = %bb.am, %bb.ag, %bb.ah
  %.sroa.0116.0 = phi ptr [ %i.eu, %bb.ah ], [ %i.er, %bb.ag ], [ %i.ez, %bb.am ]
  br label %_ZN2v88internal12_GLOBAL__N_118NewRejectedPromiseEPNS0_7IsolateENS_5LocalINS_7ContextEEENS0_12DirectHandleINS0_6ObjectEEE.exit

_ZN2v88internal12_GLOBAL__N_118NewRejectedPromiseEPNS0_7IsolateENS_5LocalINS_7ContextEEENS0_12DirectHandleINS0_6ObjectEEE.exit: ; preds = %bb.n, %_ZN2v88internal7Isolate15clear_exceptionEv.exit, %bb.s, %bb.t, %bb.ao, %bb.ag, %bb.ah, %bb.am, %bb.z, %bb.y, %_ZN2v88internal7Isolate15clear_exceptionEv.exit84, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, %bb.l, %bb.k, %_ZN2v88internal7Isolate14error_functionEv.exit70, %bb.g, %bb.f, %_ZN2v88internal7Isolate14error_functionEv.exit
  %.sroa.0128.3 = phi ptr [ null, %bb.k ], [ null, %bb.f ], [ null, %_ZN2v88internal7Isolate14error_functionEv.exit ], [ %i.aq, %bb.g ], [ null, %_ZN2v88internal7Isolate14error_functionEv.exit70 ], [ %i.bo, %bb.l ], [ null, %bb.s ], [ null, %bb.n ], [ null, %_ZN2v88internal7Isolate15clear_exceptionEv.exit ], [ %i.ct, %bb.t ], [ null, %bb.y ], [ null, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit ], [ null, %_ZN2v88internal7Isolate15clear_exceptionEv.exit84 ], [ %i.dp, %bb.z ], [ %.sroa.0116.0, %bb.ao ], [ null, %bb.ag ], [ null, %bb.ah ], [ null, %bb.am ]
  ret ptr %.sroa.0128.3
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal7Isolate31GetImportAttributesFromArgumentENS0_17MaybeDirectHandleINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(64320) %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::LookupIterator", align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::PropertyKey", align 8 ; 5 uses
  %4 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 3 uses
  %.not188 = icmp eq ptr %1, null
  br i1 %.not188, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8                ; 3 uses
  %i.c = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 10624
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp eq i64 %i.b, %i.g
  br i1 %i.h, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = trunc i64 %i.b to i1
  br i1 %i.i, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit55, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit55.thread

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit55: ; preds = %bb.c
  %i.j = add nsw i64 %i.b, -1
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i64, ptr %i.k monotonic, align 8
  %i.m = add i64 %i.l, 11
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i16, ptr %i.n monotonic, align 2
  %i.p = icmp ugt i16 %i.o, 299
  br i1 %i.p, label %bb.d, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit55.thread

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit55.thread: ; preds = %bb.c, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit55
  %i.q = tail call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 116, ptr null, i64 0) #46
  %i.r = load i64, ptr %i.q, align 8
  %i.s = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.r, ptr noundef null) ; 0 uses
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.d:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit55
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 7800 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  %.pre.pre.i = load i64, ptr %i.t, align 8
  %i.u = add i64 %.pre.pre.i, -1
  %i.v = inttoptr i64 %i.u to ptr                 ; 3 uses
  %i.w = load atomic volatile i64, ptr %i.v monotonic, align 8
  %i.x = add i64 %i.w, 11
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load atomic volatile i16, ptr %i.y monotonic, align 2
  %i.aa = icmp eq i16 %i.z, 128
  br i1 %i.aa, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = trunc i32 %i.ac to i1
  br i1 %i.ad, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %bb.d
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.ae = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.ae, ptr %4, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store i32 0, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.ah, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %0, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %i.t, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr null, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %1, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr null, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ap = ptrtoint ptr %1 to i64
  store i64 %i.ap, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 -1, i64 16, i1 false)
  %i.ar = load atomic volatile i64, ptr %i.v monotonic, align 8
  %i.as = add i64 %i.ar, 11
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load atomic volatile i16, ptr %i.at monotonic, align 2
  %i.av = and i16 %i.au, -96
  %.not.i21.i.i.i = icmp eq i16 %i.av, 32
  br i1 %.not.i21.i.i.i, label %bb.e, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

bb.e:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.aw = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !13, !noundef !14
  %i.ax = trunc nuw i8 %i.aw to i1
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.az = load i8, ptr %i.ay, align 8, !range !13
  %i.ba = trunc nuw i8 %i.az to i1
  %not..i.i.i23.i.i.i = xor i1 %i.ax, true
  %i.bb = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.ba
  br i1 %i.bb, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.bd = load i8, ptr %i.bc, align 8, !range !13, !noundef !14
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt27__throw_bad_optional_accessv() #49
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.bg = load ptr, ptr %i.bf, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.e
  %.pn.i.i26.i.i.i = phi ptr [ %i.bg, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %0, %bb.e ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.bh = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.bi = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.t) #46
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.bi, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.t, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.ak, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %4) #46
  %i.bj = load i32, ptr %i.af, align 4
  %.not.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.bk = load ptr, ptr %i.aj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  br label %.critedge

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.bm = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %4, i1 noundef zeroext false) #46 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  %.not189 = icmp eq ptr %i.bm, null
  br i1 %.not189, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %.critedge

.critedge:                                        ; preds = %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread
  %.sroa.07.0.i172 = phi ptr [ %i.bl, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread ], [ %i.bm, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit ] ; 4 uses
  %i.bn = load i64, ptr %.sroa.07.0.i172, align 8 ; 3 uses
  %i.bo = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 10624
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 96
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = icmp eq i64 %i.bn, %i.bs
  br i1 %i.bt, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.h

bb.h:                                             ; preds = %.critedge
  %i.bu = trunc i64 %i.bn to i1
  br i1 %i.bu, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.h
  %i.bv = add nsw i64 %i.bn, -1
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = load atomic volatile i64, ptr %i.bw monotonic, align 8
  %i.by = add i64 %i.bx, 11
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = load atomic volatile i16, ptr %i.bz monotonic, align 2
  %i.cb = icmp ugt i16 %i.ca, 299
  br i1 %i.cb, label %bb.i, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.h, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit
  %i.cc = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 109, ptr null, i64 0) #46
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.cd, ptr noundef null) ; 0 uses
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.i:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit
  %i.cf = call ptr @_ZN2v88internal14KeyAccumulator7GetKeysEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_17KeyCollectionModeENS0_14PropertyFilterENS0_17GetKeysConversionEbb(ptr noundef nonnull %0, ptr nonnull %.sroa.07.0.i172, i32 noundef 0, i32 noundef 18, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #46 ; 4 uses
  %.not190 = icmp eq ptr %i.cf, null
  br i1 %.not190, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = add i64 %i.cg, -1
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load i64, ptr %i.cj, align 8
  %sh.diff = lshr i64 %i.ck, 31
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %i.cl = and i32 %tr.sh.diff, -2
  %i.cm = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.cl, i8 noundef zeroext 0, i8 0) #46 ; 4 uses
  %i.cn = load i64, ptr %i.cf, align 8
  %i.co = add i64 %i.cn, -1
  %i.cp = inttoptr i64 %i.co to ptr               ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = lshr i64 %i.cr, 32
  %i.ct = trunc nuw i64 %i.cs to i32
  %.not193 = icmp sgt i32 %i.ct, 0
  br i1 %.not193, label %.lr.ph, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

.lr.ph:                                           ; preds = %bb.j
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.x
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.x ] ; 3 uses
  %i.cx = phi ptr [ %i.cp, %.lr.ph ], [ %i.fh, %bb.x ]
  %.047195 = phi i1 [ false, %.lr.ph ], [ %i.du, %bb.x ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv
  %i.da = load atomic volatile i64, ptr %i.cz monotonic, align 8
  %i.db = load ptr, ptr %i.cu, align 8            ; 2 uses
  %i.dc = load ptr, ptr %i.cv, align 8
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %bb.l, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !7

bb.l:                                             ; preds = %bb.k
  %i.de = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #46
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.k, %bb.l
  %.0.i = phi ptr [ %i.de, %bb.l ], [ %i.db, %bb.k ] ; 4 uses
  %i.df = ptrtoint ptr %.0.i to i64
  %i.dg = add i64 %i.df, 8
  %i.dh = inttoptr i64 %i.dg to ptr
  store ptr %i.dh, ptr %i.cu, align 8
  store i64 %i.da, ptr %.0.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZN2v88internal11PropertyKeyC2INS0_12DirectHandleEQsr3stdE16is_convertible_vIT_INS0_4NameEENS3_IS5_EEEEEPNS0_7IsolateES6_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %0, ptr nonnull %.0.i)
  %i.di = load ptr, ptr %3, align 8
  %i.dj = load i64, ptr %i.cw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  call void @_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull %0, ptr nonnull %.sroa.07.0.i172, ptr %i.di, i64 noundef %i.dj, ptr nonnull %.sroa.07.0.i172, i32 noundef 3)
  %i.dk = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %2, i1 noundef zeroext false) #46 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not191 = icmp eq ptr %i.dk, null
  br i1 %.not191, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %i.dl = load i64, ptr %i.dk, align 8            ; 2 uses
  %i.dm = trunc i64 %i.dl to i1
  br i1 %i.dm, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.m
  %i.dn = add nsw i64 %i.dl, -1
  %i.do = inttoptr i64 %i.dn to ptr
  %i.dp = load atomic volatile i64, ptr %i.do monotonic, align 8
  %i.dq = add i64 %i.dp, 11
  %i.dr = inttoptr i64 %i.dq to ptr
  %i.ds = load atomic volatile i16, ptr %i.dr monotonic, align 2
  %.fr = freeze i16 %i.ds
  %i.dt = icmp ugt i16 %.fr, 127
  %spec.select = select i1 %i.dt, i1 true, i1 %.047195
  br label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit, %bb.m
  %i.du = phi i1 [ true, %bb.m ], [ %spec.select, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit ] ; 2 uses
  %i.dv = load i64, ptr %i.cm, align 8
  %i.dw = add i64 %i.dv, -1                       ; 3 uses
  %i.dx = inttoptr i64 %i.dw to ptr
  %i.dy = load i64, ptr %.0.i, align 8            ; 5 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ea = shl i32 %indvars.iv.tr, 1
  %i.eb = sext i32 %i.ea to i64                   ; 2 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %i.eb ; 2 uses
  store atomic volatile i64 %i.dy, ptr %i.ec monotonic, align 8
  %i.ed = trunc i64 %i.dy to i1
  br i1 %i.ed, label %bb.n, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.n:                                             ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.ee = or disjoint i64 %i.dw, 1                ; 2 uses
  %i.ef = ptrtoint ptr %i.ec to i64               ; 2 uses
  %i.eg = and i64 %i.dw, -262144
  %i.eh = inttoptr i64 %i.eg to ptr
  %i.ei = load i64, ptr %i.eh, align 262144       ; 2 uses
  %i.ej = and i64 %i.ei, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.ej, 0
  %i.ek = and i64 %i.ei, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.ek, 0
  br i1 %.not38.i.i.i.i.i, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.el = and i64 %i.dy, -262144
  %i.em = inttoptr i64 %i.el to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i = load i64, ptr %i.em, align 262144
  %i.en = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i, 25
  %.not39.i.i.i.i.i = icmp eq i64 %i.en, 0
  br i1 %.not39.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.ee, i64 noundef %i.ef, i64 %i.dy) #46
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.r, !prof !5

bb.r:                                             ; preds = %bb.q
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ee, i64 %i.ef, i64 %i.dy) #46
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread, %bb.q, %bb.r
  %i.eo = load i64, ptr %i.cm, align 8
  %i.ep = add i64 %i.eo, -1                       ; 3 uses
  %i.eq = inttoptr i64 %i.ep to ptr
  %i.er = load i64, ptr %i.dk, align 8            ; 5 uses
  %i.es = getelementptr [8 x i8], ptr %i.eq, i64 %i.eb
  %i.et = getelementptr i8, ptr %i.es, i64 24     ; 2 uses
  store atomic volatile i64 %i.er, ptr %i.et monotonic, align 8
  %i.eu = trunc i64 %i.er to i1
  br i1 %i.eu, label %bb.s, label %bb.x

bb.s:                                             ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %i.ev = or disjoint i64 %i.ep, 1                ; 2 uses
  %i.ew = ptrtoint ptr %i.et to i64               ; 2 uses
  %i.ex = and i64 %i.ep, -262144
  %i.ey = inttoptr i64 %i.ex to ptr
  %i.ez = load i64, ptr %i.ey, align 262144       ; 2 uses
  %i.fa = and i64 %i.ez, 32
  %.not.i.i.i.i.i60 = icmp eq i64 %i.fa, 0
  %i.fb = and i64 %i.ez, 25
  %.not38.i.i.i.i.i61 = icmp eq i64 %i.fb, 0
  br i1 %.not38.i.i.i.i.i61, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.fc = and i64 %i.er, -262144
  %i.fd = inttoptr i64 %i.fc to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i62 = load i64, ptr %i.fd, align 262144
  %i.fe = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i62, 25
  %.not39.i.i.i.i.i63 = icmp eq i64 %i.fe, 0
  br i1 %.not39.i.i.i.i.i63, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.ev, i64 noundef %i.ew, i64 %i.er) #46
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  br i1 %.not.i.i.i.i.i60, label %bb.x, label %bb.w, !prof !5

bb.w:                                             ; preds = %bb.v
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ev, i64 %i.ew, i64 %i.er) #46
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ff = load i64, ptr %i.cf, align 8
  %i.fg = add i64 %i.ff, -1
  %i.fh = inttoptr i64 %i.fg to ptr               ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load i64, ptr %i.fi, align 8
  %i.fk = ashr i64 %i.fj, 32
  %.not = icmp slt i64 %indvars.iv.next, %i.fk
  br i1 %.not, label %bb.k, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit56, !llvm.loop !267

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit56: ; preds = %bb.x
  br i1 %i.du, label %bb.y, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.y:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit56
  %i.fl = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 117, ptr null, i64 0) #46
  %i.fm = load i64, ptr %i.fl, align 8
  %i.fn = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.fm, ptr noundef null) ; 0 uses
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, %bb.j, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit, %.critedge, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit56, %bb.i, %bb.y, %bb.b, %bb.a, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit55.thread
  %.sroa.0103.5 = phi ptr [ null, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit55.thread ], [ %i.a, %bb.b ], [ %i.a, %bb.a ], [ null, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit ], [ %i.a, %.critedge ], [ null, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread ], [ %i.cm, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit56 ], [ null, %bb.y ], [ null, %bb.i ], [ %i.cm, %bb.j ], [ null, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ]
  ret ptr %.sroa.0103.5
}

declare ptr @_ZN2v88internal14KeyAccumulator7GetKeysEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_17KeyCollectionModeENS0_14PropertyFilterENS0_17GetKeysConversionEbb(ptr noundef, ptr, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i8 noundef zeroext, i8) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal7Isolate16ClearKeptObjectsEv(ptr noundef nonnull align 8 dereferenceable(64320) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 55464
  tail call void @_ZN2v88internal4Heap16ClearKeptObjectsEv(ptr noundef nonnull align 8 dereferenceable(2992) %i.a) #46
  ret void
}

declare void @_ZN2v88internal4Heap16ClearKeptObjectsEv(ptr noundef nonnull align 8 dereferenceable(2992)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2v88internal7Isolate38SetHostImportModuleDynamicallyCallbackEPFNS_10MaybeLocalINS_7PromiseEEENS_5LocalINS_7ContextEEENS5_INS_4DataEEENS5_INS_5ValueEEENS5_INS_6StringEEENS5_INS_10FixedArrayEEEE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(64320) initializes((59160, 59168)) %0, ptr noundef %1) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 59160
  store ptr %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2v88internal7Isolate47SetHostImportModuleWithPhaseDynamicallyCallbackEPFNS_10MaybeLocalINS_7PromiseEEENS_5LocalINS_7ContextEEENS5_INS_4DataEEENS5_INS_5ValueEEENS5_INS_6StringEEENS_17ModuleImportPhaseENS5_INS_10FixedArrayEEEE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(64320) initializes((59168, 59176)) %0, ptr noundef %1) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 59168
  store ptr %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal7Isolate41RunHostInitializeImportMetaObjectCallbackENS0_12DirectHandleINS0_16SourceTextModuleEEE(ptr noundef nonnull align 8 dereferenceable(64320) %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, 87
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c acquire, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = icmp eq i64 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.75) #45
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = tail call ptr @_ZN2v88internal7Factory24NewJSObjectWithNullProtoEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #46 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 59184 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.sroa.0.0.copyload.i.i14 = load i64, ptr %i.k, align 8
  %i.l = add i64 %.sroa.0.0.copyload.i.i14, -1
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load atomic volatile i64, ptr %i.m monotonic, align 8
  %i.o = add i64 %i.n, 31
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
end_hunk_0
