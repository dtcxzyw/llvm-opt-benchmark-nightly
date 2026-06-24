inline.NumInlined: 14197
inline.NumDeleted: 4685
begin_hunk_0_@_ZN2v88TryCatchdlEPvm:bb.a
bb.a:
  tail call void @_ZN2v84base2OS5AbortEv() #45
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define dso_local void @_ZN2v88TryCatchdaEPvm(ptr nofree noundef readnone captures(none) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN2v84base2OS5AbortEv() #45
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK2v88TryCatch11CanContinueEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(41) %0) local_unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8
  %i.c = and i8 %i.b, 2
  %i.d = icmp ne i8 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @_ZN2v88TryCatch7ReThrowEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(41) %0) local_unnamed_addr #21 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = load ptr, ptr %0, align 8                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 656
  %i.f = load i64, ptr %i.e, align 8
  %.not = icmp eq i64 %i.f, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8
  %i.i = or i8 %i.h, 8
  store i8 %i.i, ptr %i.g, align 8
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = add i64 %i.j, 648
  %i.l = inttoptr i64 %i.k to ptr
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZNK2v88TryCatch9ExceptionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(41) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.d = load ptr, ptr %0, align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 656
  %i.f = load i64, ptr %i.e, align 8
  %.not = icmp eq i64 %i.f, %i.c
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 960
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp eq i64 %i.h, %i.c
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 664
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 560 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 568
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.e, label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !11

bb.e:                                             ; preds = %bb.d
  %i.p = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.d) #44
  br label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.p, %bb.e ], [ %i.l, %bb.d ] ; 3 uses
  %i.q = ptrtoint ptr %.0.i.i to i64
  %i.r = add i64 %i.q, 8
  %i.s = inttoptr i64 %i.r to ptr
  store ptr %i.s, ptr %i.k, align 8
  store i64 %i.c, ptr %.0.i.i, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.c
  %.sroa.0.0 = phi ptr [ %i.j, %bb.c ], [ %.0.i.i, %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN2v88TryCatch10StackTraceENS_5LocalINS_7ContextEEENS1_INS_5ValueEEE(ptr nofree readonly captures(none) %0, ptr %1) local_unnamed_addr #6 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %3 = alloca %"class.v8::internal::LookupIterator", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::PropertyKey", align 8 ; 5 uses
  %5 = alloca %"class.v8::PrepareForExecutionScope", align 8 ; 14 uses
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.a
  %i.c = add nsw i64 %i.a, -1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.f = add i64 %i.e, 11
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i16, ptr %i.g monotonic, align 2
  %i.i = icmp ugt i16 %i.h, 302
  br i1 %i.i, label %bb.b, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.b:                                             ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  %i.j = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.k = load ptr, ptr %i.j, align 8              ; 23 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 656
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 368
  store i64 %i.m, ptr %i.n, align 8
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = add i64 %i.o, 560
  %i.q = inttoptr i64 %i.p to ptr                 ; 5 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %bb.c, label %_ZN2v822InternalEscapableScopeC2EPNS_8internal7IsolateE.exit.i.i.i, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.v = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.k) #44
  br label %_ZN2v822InternalEscapableScopeC2EPNS_8internal7IsolateE.exit.i.i.i

_ZN2v822InternalEscapableScopeC2EPNS_8internal7IsolateE.exit.i.i.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i.i.i.i = phi ptr [ %i.v, %bb.c ], [ %i.r, %bb.b ] ; 3 uses
  %i.w = ptrtoint ptr %.0.i.i.i.i.i.i to i64
  %i.x = add i64 %i.w, 8
  %i.y = inttoptr i64 %i.x to ptr
  store ptr %i.y, ptr %i.q, align 8
  store i64 %i.m, ptr %.0.i.i.i.i.i.i, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store ptr %.0.i.i.i.i.i.i, ptr %i.z, align 8
  store ptr %i.k, ptr %5, align 8
  %i.aa = load ptr, ptr %i.q, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = load ptr, ptr %i.s, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.ac, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  store ptr %i.k, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 344 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 560 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 568
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = icmp eq ptr %i.ak, %i.am
  br i1 %i.an, label %bb.d, label %_ZN2v824PrepareForExecutionScopeC2ENS_5LocalINS_7ContextEEENS_8internal20RuntimeCallCounterIdE.exit, !prof !11

bb.d:                                             ; preds = %_ZN2v822InternalEscapableScopeC2EPNS_8internal7IsolateE.exit.i.i.i
  %i.ao = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.k) #44
  br label %_ZN2v824PrepareForExecutionScopeC2ENS_5LocalINS_7ContextEEENS_8internal20RuntimeCallCounterIdE.exit

_ZN2v824PrepareForExecutionScopeC2ENS_5LocalINS_7ContextEEENS_8internal20RuntimeCallCounterIdE.exit: ; preds = %_ZN2v822InternalEscapableScopeC2EPNS_8internal7IsolateE.exit.i.i.i, %bb.d
  %.0.i.i.i5.i.i.i = phi ptr [ %i.ao, %bb.d ], [ %i.ak, %_ZN2v822InternalEscapableScopeC2EPNS_8internal7IsolateE.exit.i.i.i ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.aq = ptrtoint ptr %.0.i.i.i5.i.i.i to i64
  %i.ar = add i64 %i.aq, 8
  %i.as = inttoptr i64 %i.ar to ptr
  store ptr %i.as, ptr %i.aj, align 8
  store i64 %.sroa.0.0.copyload.i.i.i.i.i, ptr %.0.i.i.i5.i.i.i, align 8
  store ptr %.0.i.i.i5.i.i.i, ptr %i.ap, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 360 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store i64 %i.au, ptr %i.av, align 8
  %i.aw = ptrtoint ptr %i.ah to i64
  store i64 %i.aw, ptr %i.at, align 8
  %i.ax = load i64, ptr %0, align 8
  store i64 %i.ax, ptr %i.ai, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  store ptr %i.k, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.k, i64 496 ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 8
  store i16 %i.bb, ptr %i.az, align 8
  store i16 5, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 72
  store ptr %i.k, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.k, i64 7400 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @_ZN2v88internal11PropertyKeyC2INS0_12DirectHandleEQsr3stdE16is_convertible_vIT_INS0_4NameEENS3_IS5_EEEEEPNS0_7IsolateES6_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.k, ptr nonnull %i.bd)
  %i.be = load ptr, ptr %4, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bg = load i64, ptr %i.bf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  call void @_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull %i.k, ptr nonnull %1, ptr %i.be, i64 noundef %i.bg, ptr nonnull %1, i32 noundef 3)
  %i.bh = call i16 @_ZN2v88internal10JSReceiver11HasPropertyEPNS0_14LookupIteratorE(ptr noundef nonnull %3) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.bi = and i16 %i.bh, 257
  %or.cond.not = icmp eq i16 %i.bi, 257
  br i1 %or.cond.not, label %bb.e, label %_ZN2v822InternalEscapableScope11EscapeMaybeINS_5ValueEEENS_10MaybeLocalIT_EES5_.exit

bb.e:                                             ; preds = %_ZN2v824PrepareForExecutionScopeC2ENS_5LocalINS_7ContextEEENS_8internal20RuntimeCallCounterIdE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  %.pre.pre.i = load i64, ptr %i.bd, align 8
  %i.bj = add i64 %.pre.pre.i, -1
  %i.bk = inttoptr i64 %i.bj to ptr               ; 3 uses
  %i.bl = load atomic volatile i64, ptr %i.bk monotonic, align 8
  %i.bm = add i64 %i.bl, 11
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = load atomic volatile i16, ptr %i.bn monotonic, align 2
  %i.bp = icmp eq i16 %i.bo, 128
  br i1 %i.bp, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %bb.e
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = trunc i32 %i.br to i1
  br i1 %i.bs, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %bb.e
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.bt = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.bt, ptr %2, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  store i32 0, ptr %i.bu, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 0, ptr %i.bw, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.k, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr null, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %1, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr null, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ce = ptrtoint ptr %1 to i64
  store i64 %i.ce, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, i8 -1, i64 16, i1 false)
  %i.cg = load atomic volatile i64, ptr %i.bk monotonic, align 8
  %i.ch = add i64 %i.cg, 11
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = load atomic volatile i16, ptr %i.ci monotonic, align 2
  %i.ck = and i16 %i.cj, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ck, 32
  br i1 %.not.i21.i.i.i, label %bb.f, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

bb.f:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.cl = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !5, !noundef !6
  %i.cm = trunc nuw i8 %i.cl to i1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.k, i64 55448
  %i.co = load i8, ptr %i.cn, align 8, !range !5
  %i.cp = trunc nuw i8 %i.co to i1
  %not..i.i.i23.i.i.i = xor i1 %i.cm, true
  %i.cq = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.cp
  br i1 %i.cq, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cr = getelementptr inbounds nuw i8, ptr %i.k, i64 64088
  %i.cs = load i8, ptr %i.cr, align 8, !range !5, !noundef !6
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZSt27__throw_bad_optional_accessv() #47
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.g
  %i.cu = getelementptr inbounds nuw i8, ptr %i.k, i64 64080
  %i.cv = load ptr, ptr %i.cu, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.f
  %.pn.i.i26.i.i.i = phi ptr [ %i.cv, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %i.k, %bb.f ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.cw = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.cx = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr nonnull %i.bd) #44
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.cx, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.bd, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.bz, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %2) #44
  %i.cy = load i32, ptr %i.bu, align 4
  %.not.i = icmp eq i32 %i.cy, 0
  br i1 %.not.i, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.cz = load ptr, ptr %i.by, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  br label %bb.i

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.db = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %2, i1 noundef zeroext false) #44 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  %.not = icmp eq ptr %i.db, null
  br i1 %.not, label %_ZN2v822InternalEscapableScope11EscapeMaybeINS_5ValueEEENS_10MaybeLocalIT_EES5_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit
  %.sroa.07.0.i45 = phi ptr [ %i.da, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread ], [ %i.db, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit ]
  %i.dc = load i64, ptr %.sroa.07.0.i45, align 8
  %i.dd = load ptr, ptr %i.z, align 8
  store i64 %i.dc, ptr %i.dd, align 8
  %i.de = load ptr, ptr %i.z, align 8
  br label %_ZN2v822InternalEscapableScope11EscapeMaybeINS_5ValueEEENS_10MaybeLocalIT_EES5_.exit

_ZN2v822InternalEscapableScope11EscapeMaybeINS_5ValueEEENS_10MaybeLocalIT_EES5_.exit: ; preds = %_ZN2v824PrepareForExecutionScopeC2ENS_5LocalINS_7ContextEEENS_8internal20RuntimeCallCounterIdE.exit, %bb.i, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit
  %.sroa.025.0 = phi ptr [ null, %_ZN2v824PrepareForExecutionScopeC2ENS_5LocalINS_7ContextEEENS_8internal20RuntimeCallCounterIdE.exit ], [ null, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit ], [ %i.de, %bb.i ]
  %i.df = load ptr, ptr %i.ay, align 8
  %i.dg = load i16, ptr %i.az, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 496
  store i16 %i.dg, ptr %i.dh, align 8
  %i.di = load ptr, ptr %i.ah, align 8            ; 7 uses
  %i.dj = load i64, ptr %i.av, align 8            ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 360
  store i64 %i.dj, ptr %i.dk, align 8
  %i.dl = icmp eq i64 %i.dj, 0
  br i1 %i.dl, label %bb.j, label %bb.m

bb.j:                                             ; preds = %_ZN2v822InternalEscapableScope11EscapeMaybeINS_5ValueEEENS_10MaybeLocalIT_EES5_.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 416
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 368
  %i.dq = getelementptr inbounds nuw i8, ptr %i.di, i64 960
  %i.dr = load i64, ptr %i.dq, align 8
  %i.ds = load i64, ptr %i.dp, align 8
  %i.dt = icmp eq i64 %i.ds, %i.dr
  br i1 %i.dt, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.du = getelementptr inbounds nuw i8, ptr %i.di, i64 656
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.di, i64 368
  store i64 %i.dv, ptr %i.dw, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %_ZN2v822InternalEscapableScope11EscapeMaybeINS_5ValueEEENS_10MaybeLocalIT_EES5_.exit
  %i.dx = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %_ZN2v814CallDepthScopeILb0EED2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dz = load i64, ptr %i.dx, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.di, i64 344
  store i64 %i.dz, ptr %i.ea, align 8
  br label %_ZN2v814CallDepthScopeILb0EED2Ev.exit.i

_ZN2v814CallDepthScopeILb0EED2Ev.exit.i:          ; preds = %bb.n, %bb.m
  %i.eb = load ptr, ptr %5, align 8               ; 2 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %_ZN2v820EnterV8InternalScopeINS_22InternalEscapableScopeELb0EED2Ev.exit, label %bb.o, !prof !11

bb.o:                                             ; preds = %_ZN2v814CallDepthScopeILb0EED2Ev.exit.i
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = add i64 %i.ed, 560
  %i.ef = inttoptr i64 %i.ee to ptr               ; 4 uses
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = load ptr, ptr %i.ab, align 8
  store ptr %i.eh, ptr %i.ef, align 8
  store ptr %i.eg, ptr %i.ab, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 8
  %i.ek = add nsw i32 %i.ej, -1
  store i32 %i.ek, ptr %i.ei, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.em, %i.en
  br i1 %.not.i.i, label %_ZN2v820EnterV8InternalScopeINS_22InternalEscapableScopeELb0EED2Ev.exit, label %bb.p, !prof !13

bb.p:                                             ; preds = %bb.o
  store ptr %i.en, ptr %i.el, align 8
  %i.eo = load ptr, ptr %5, align 8
  call void @_ZN2v811HandleScope16DeleteExtensionsEPNS_7IsolateE(ptr nonnull align 8 poison, ptr noundef %i.eo)
  br label %_ZN2v820EnterV8InternalScopeINS_22InternalEscapableScopeELb0EED2Ev.exit

_ZN2v820EnterV8InternalScopeINS_22InternalEscapableScopeELb0EED2Ev.exit: ; preds = %_ZN2v814CallDepthScopeILb0EED2Ev.exit.i, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  br label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.a, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v820EnterV8InternalScopeINS_22InternalEscapableScopeELb0EED2Ev.exit
  %.sroa.025.1 = phi ptr [ %.sroa.025.0, %_ZN2v820EnterV8InternalScopeINS_22InternalEscapableScopeELb0EED2Ev.exit ], [ null, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit ], [ null, %bb.a ]
  ret ptr %.sroa.025.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZNK2v88TryCatch10StackTraceENS_5LocalINS_7ContextEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(41) %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.d = load ptr, ptr %0, align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 656
  %i.f = load i64, ptr %i.e, align 8
  %.not = icmp eq i64 %i.f, %i.c
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 960
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp eq i64 %i.h, %i.c
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 664
  br label %_ZNK2v88TryCatch9ExceptionEv.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 560 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 568
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.e, label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !11

bb.e:                                             ; preds = %bb.d
  %i.p = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.d) #44
  br label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi ptr [ %i.p, %bb.e ], [ %i.l, %bb.d ] ; 3 uses
  %i.q = ptrtoint ptr %.0.i.i.i to i64
  %i.r = add i64 %i.q, 8
end_hunk_0
begin_hunk_1_@_ZN2v86Object14DefinePropertyENS_5LocalINS_7ContextEEENS1_INS_4NameEEERNS_18PropertyDescriptorE:bb.a
  br i1 %i.bc, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 368
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 960
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = load i64, ptr %i.bd, align 8
  %i.bh = icmp eq i64 %i.bg, %i.bf
  br i1 %i.bh, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 656
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aw, i64 368
  store i64 %i.bj, ptr %i.bk, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %_ZN2v812EnterV8ScopeINS_8internal11HandleScopeEEC2IJPNS1_7IsolateENS_5LocalINS_7ContextEEENS1_20RuntimeCallCounterIdEEEEDpT_.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aw, i64 344
  %.sroa.0.0.copyload.i.i.i.i11 = load i64, ptr %i.bl, align 8
  %i.bm = add i64 %.sroa.0.0.copyload.i.i.i.i11, -1
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = load atomic volatile i64, ptr %i.bn monotonic, align 8
  %i.bp = add i64 %i.bo, 31
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = load i64, ptr %i.bq, align 8            ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aw, i64 560 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8            ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aw, i64 568
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = icmp eq ptr %i.bt, %i.bv
  br i1 %i.bw, label %bb.g, label %_ZN2v88internal7Isolate14native_contextEv.exit.i.i, !prof !11

bb.g:                                             ; preds = %bb.f
  %i.bx = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %i.aw) #44
  br label %_ZN2v88internal7Isolate14native_contextEv.exit.i.i

_ZN2v88internal7Isolate14native_contextEv.exit.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i12 = phi ptr [ %i.bx, %bb.g ], [ %i.bt, %bb.f ] ; 2 uses
  %i.by = ptrtoint ptr %.0.i.i.i.i.i12 to i64
  %i.bz = add i64 %i.by, 8
  %i.ca = inttoptr i64 %i.bz to ptr
  store ptr %i.ca, ptr %i.bs, align 8
  store i64 %i.br, ptr %.0.i.i.i.i.i12, align 8
  %i.cb = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 360
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %bb.h, label %_ZN2v88internal7Isolate25FireCallCompletedCallbackEPNS0_14MicrotaskQueueE.exit.i.i

bb.h:                                             ; preds = %_ZN2v88internal7Isolate14native_contextEv.exit.i.i
  %i.cf = add i64 %i.br, 2423
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = inttoptr i64 %i.ch to ptr
  call void @_ZN2v88internal7Isolate33FireCallCompletedCallbackInternalEPNS0_14MicrotaskQueueE(ptr noundef nonnull align 8 dereferenceable(64320) %i.cb, ptr noundef %i.ci) #44
  br label %_ZN2v88internal7Isolate25FireCallCompletedCallbackEPNS0_14MicrotaskQueueE.exit.i.i

_ZN2v88internal7Isolate25FireCallCompletedCallbackEPNS0_14MicrotaskQueueE.exit.i.i: ; preds = %bb.h, %_ZN2v88internal7Isolate14native_contextEv.exit.i.i
  %i.cj = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %_ZN2v814CallDepthScopeILb1EED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal7Isolate25FireCallCompletedCallbackEPNS0_14MicrotaskQueueE.exit.i.i
  %i.cl = load ptr, ptr %i.l, align 8
  %i.cm = load i64, ptr %i.cj, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 344
  store i64 %i.cm, ptr %i.cn, align 8
  br label %_ZN2v814CallDepthScopeILb1EED2Ev.exit.i

_ZN2v814CallDepthScopeILb1EED2Ev.exit.i:          ; preds = %bb.i, %_ZN2v88internal7Isolate25FireCallCompletedCallbackEPNS0_14MicrotaskQueueE.exit.i.i
  %i.co = load ptr, ptr %4, align 8               ; 5 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %_ZN2v820EnterV8InternalScopeINS_8internal11HandleScopeELb1EED2Ev.exit, label %bb.j, !prof !11

bb.j:                                             ; preds = %_ZN2v814CallDepthScopeILb1EED2Ev.exit.i
  %i.cq = load ptr, ptr %i.e, align 8
  %i.cr = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 560
  store ptr %i.cq, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 576 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8
  %i.cv = add nsw i32 %i.cu, -1
  store i32 %i.cv, ptr %i.ct, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.co, i64 568 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8
  %.not.i.i = icmp eq ptr %i.cx, %i.cr
  br i1 %.not.i.i, label %_ZN2v820EnterV8InternalScopeINS_8internal11HandleScopeELb1EED2Ev.exit, label %bb.k, !prof !13

bb.k:                                             ; preds = %bb.j
  store ptr %i.cr, ptr %i.cw, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.co) #44
  br label %_ZN2v820EnterV8InternalScopeINS_8internal11HandleScopeELb1EED2Ev.exit

_ZN2v820EnterV8InternalScopeINS_8internal11HandleScopeELb1EED2Ev.exit: ; preds = %_ZN2v814CallDepthScopeILb1EED2Ev.exit.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  ret i16 %i.as
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i16 @_ZN2v86Object10SetPrivateENS_5LocalINS_7ContextEEENS1_INS_7PrivateEEENS1_INS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree readonly captures(none) %1, ptr %2, ptr %3) local_unnamed_addr #6 align 2 {
bb.a:
  %4 = alloca %"class.v8::EnterV8NoScriptScope", align 8 ; 11 uses
  %5 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  %6 = alloca %"class.v8::internal::PropertyDescriptor", align 8 ; 6 uses
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.b = load ptr, ptr %i.a, align 8              ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 560 ; 2 uses
  store ptr %i.b, ptr %4, align 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 576 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store ptr %i.b, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 344 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.m, align 8
  %i.n = icmp eq ptr %i.d, %i.g
  br i1 %i.n, label %bb.b, label %_ZN2v820EnterV8NoScriptScopeINS_8internal11HandleScopeEEC2IJNS_5LocalINS_7ContextEEENS1_20RuntimeCallCounterIdEEEEPNS1_7IsolateEDpT_.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.o = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.b) #44
  br label %_ZN2v820EnterV8NoScriptScopeINS_8internal11HandleScopeEEC2IJNS_5LocalINS_7ContextEEENS1_20RuntimeCallCounterIdEEEEPNS1_7IsolateEDpT_.exit

_ZN2v820EnterV8NoScriptScopeINS_8internal11HandleScopeEEC2IJNS_5LocalINS_7ContextEEENS1_20RuntimeCallCounterIdEEEEPNS1_7IsolateEDpT_.exit: ; preds = %bb.a, %bb.b
  %.0.i.i.i.i.i = phi ptr [ %i.o, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.q = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.r = add i64 %i.q, 8
  %i.s = inttoptr i64 %i.r to ptr
  store ptr %i.s, ptr %i.c, align 8
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %.0.i.i.i.i.i, align 8
  store ptr %.0.i.i.i.i.i, ptr %i.p, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 360 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  store i64 %i.u, ptr %i.v, align 8
  %i.w = ptrtoint ptr %i.l to i64
  store i64 %i.w, ptr %i.t, align 8
  %i.x = load i64, ptr %1, align 8
  store i64 %i.x, ptr %i.m, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store ptr %i.b, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 496 ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 8
  store i16 %i.ab, ptr %i.z, align 8
  store i16 5, ptr %i.aa, align 8
  %i.ac = load i64, ptr %0, align 8
  %i.ad = add i64 %i.ac, -1
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.ag = add i64 %i.af, 11
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load atomic volatile i16, ptr %i.ah monotonic, align 2
  %i.aj = icmp ugt i16 %i.ai, 302
  br i1 %i.aj, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZN2v820EnterV8NoScriptScopeINS_8internal11HandleScopeEEC2IJNS_5LocalINS_7ContextEEENS1_20RuntimeCallCounterIdEEEEPNS1_7IsolateEDpT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  %.pre.pre = load i64, ptr %2, align 8
  %i.ak = add i64 %.pre.pre, -1
  %i.al = inttoptr i64 %i.ak to ptr               ; 3 uses
  %i.am = load atomic volatile i64, ptr %i.al monotonic, align 8
  %i.an = add i64 %i.am, 11
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = load atomic volatile i16, ptr %i.ao monotonic, align 2
  %i.aq = icmp eq i16 %i.ap, 128
  br i1 %i.aq, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i:      ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = trunc i32 %i.as to i1
  br i1 %i.at, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, %bb.c
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i
  %i.au = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i ]
  store i32 %i.au, ptr %5, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.av, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 0, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.ax, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.b, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr null, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %0, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr null, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.bf = ptrtoint ptr %0 to i64
  store i64 %i.bf, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 -1, i64 16, i1 false)
  %i.bh = load atomic volatile i64, ptr %i.al monotonic, align 8
  %i.bi = add i64 %i.bh, 11
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = load atomic volatile i16, ptr %i.bj monotonic, align 2
  %i.bl = and i16 %i.bk, -96
  %.not.i21.i.i = icmp eq i16 %i.bl, 32
  br i1 %.not.i21.i.i, label %bb.d, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit

bb.d:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i
  %i.bm = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !5, !noundef !6
  %i.bn = trunc nuw i8 %i.bm to i1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 55448
  %i.bp = load i8, ptr %i.bo, align 8, !range !5
  %i.bq = trunc nuw i8 %i.bp to i1
  %not..i.i.i23.i.i = xor i1 %i.bn, true
  %i.br = select i1 %not..i.i.i23.i.i, i1 true, i1 %i.bq
  br i1 %i.br, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 64088
  %i.bt = load i8, ptr %i.bs, align 8, !range !5, !noundef !6
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZSt27__throw_bad_optional_accessv() #47
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i: ; preds = %bb.e
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 64080
  %i.bw = load ptr, ptr %i.bv, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, %bb.d
  %.pn.i.i26.i.i = phi ptr [ %i.bw, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i ], [ %i.b, %bb.d ]
  %.in.i.i27.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i, i64 58464
  %i.bx = load ptr, ptr %.in.i.i27.i.i, align 8
  %i.by = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr nonnull %2) #44
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit: ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i
  %.sroa.05.0.i22.i.i = phi ptr [ %i.by, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i ], [ %2, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i ]
  store ptr %.sroa.05.0.i22.i.i, ptr %i.ba, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %5) #44
  %i.bz = call i16 @_ZN2v88internal8JSObject33DefineOwnPropertyIgnoreAttributesEPNS0_14LookupIteratorENS0_12DirectHandleINS0_6ObjectEEENS0_18PropertyAttributesENS_5MaybeINS0_11ShouldThrowEEENS1_20AccessorInfoHandlingENS0_22EnforceDefineSemanticsENS0_11StoreOriginENS0_17MaybeDirectHandleIS5_EE(ptr noundef nonnull %5, ptr %3, i32 noundef 2, i64 4294967297, i32 noundef 1, i32 noundef 0, i32 noundef 1, i64 0) #44
  %i.ca = trunc i16 %i.bz to i1
  %i.cb = icmp ne ptr %3, null
  %.not67 = select i1 %i.ca, i1 %i.cb, i1 false
  %spec.select = zext i1 %.not67 to i16           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  br label %bb.i

bb.g:                                             ; preds = %_ZN2v820EnterV8NoScriptScopeINS_8internal11HandleScopeEEC2IJNS_5LocalINS_7ContextEEENS1_20RuntimeCallCounterIdEEEEPNS1_7IsolateEDpT_.exit
  %i.cc = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.cd = add i64 %i.cc, 11
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = load atomic volatile i16, ptr %i.ce monotonic, align 2
  %i.cg = icmp eq i16 %i.cf, 302
  br i1 %i.cg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #44
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i8 0, i64 24, i1 false)
  store i8 62, ptr %6, align 8
  store ptr %3, ptr %i.ch, align 8
  %i.cj = call i16 @_ZN2v88internal7JSProxy16SetPrivateSymbolEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6SymbolEEEPNS0_18PropertyDescriptorENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef nonnull %i.b, ptr nonnull %0, ptr %2, ptr noundef nonnull %6, i64 1) #44 ; 2 uses
  %.sroa.6.0.extract.shift44 = lshr i16 %i.cj, 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit
  %.sroa.041.1 = phi i16 [ %spec.select, %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit ], [ %i.cj, %bb.h ], [ 1, %bb.g ]
  %.sroa.6.1 = phi i16 [ %spec.select, %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit ], [ %.sroa.6.0.extract.shift44, %bb.h ], [ 0, %bb.g ]
  %i.ck = load ptr, ptr %i.y, align 8
  %i.cl = load i16, ptr %i.z, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 496
  store i16 %i.cl, ptr %i.cm, align 8
  %i.cn = load ptr, ptr %i.l, align 8             ; 7 uses
  %i.co = load i64, ptr %i.v, align 8             ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 360
  store i64 %i.co, ptr %i.cp, align 8
  %i.cq = icmp eq i64 %i.co, 0
  br i1 %i.cq, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 416
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 368
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 960
  %i.cw = load i64, ptr %i.cv, align 8
  %i.cx = load i64, ptr %i.cu, align 8
  %i.cy = icmp eq i64 %i.cx, %i.cw
  br i1 %i.cy, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cn, i64 656
  %i.da = load i64, ptr %i.cz, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cn, i64 368
  store i64 %i.da, ptr %i.db, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.i
  %i.dc = load ptr, ptr %i.p, align 8             ; 2 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %_ZN2v814CallDepthScopeILb0EED2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.de = load i64, ptr %i.dc, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.cn, i64 344
  store i64 %i.de, ptr %i.df, align 8
  br label %_ZN2v814CallDepthScopeILb0EED2Ev.exit.i

_ZN2v814CallDepthScopeILb0EED2Ev.exit.i:          ; preds = %bb.n, %bb.m
  %i.dg = load ptr, ptr %4, align 8               ; 5 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %_ZN2v820EnterV8InternalScopeINS_8internal11HandleScopeELb0EED2Ev.exit, label %bb.o, !prof !11

bb.o:                                             ; preds = %_ZN2v814CallDepthScopeILb0EED2Ev.exit.i
  %i.di = load ptr, ptr %i.e, align 8
  %i.dj = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 560
  store ptr %i.di, ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 576 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 8
  %i.dn = add nsw i32 %i.dm, -1
  store i32 %i.dn, ptr %i.dl, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 568 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8
  %.not.i.i = icmp eq ptr %i.dp, %i.dj
  br i1 %.not.i.i, label %_ZN2v820EnterV8InternalScopeINS_8internal11HandleScopeELb0EED2Ev.exit, label %bb.p, !prof !13

bb.p:                                             ; preds = %bb.o
  store ptr %i.dj, ptr %i.do, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.dg) #44
  br label %_ZN2v820EnterV8InternalScopeINS_8internal11HandleScopeELb0EED2Ev.exit

_ZN2v820EnterV8InternalScopeINS_8internal11HandleScopeELb0EED2Ev.exit: ; preds = %_ZN2v814CallDepthScopeILb0EED2Ev.exit.i, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  %.sroa.6.0.insert.shift = shl nuw i16 %.sroa.6.1, 8
  %.sroa.041.0.insert.ext = and i16 %.sroa.041.1, 255
  %.sroa.041.0.insert.insert = or disjoint i16 %.sroa.6.0.insert.shift, %.sroa.041.0.insert.ext
  ret i16 %.sroa.041.0.insert.insert
}

declare i16 @_ZN2v88internal7JSProxy16SetPrivateSymbolEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6SymbolEEEPNS0_18PropertyDescriptorENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef, ptr, ptr, ptr noundef, i64) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN2v86Object3GetENS_5LocalINS_7ContextEEENS1_INS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree readonly captures(none) %1, ptr %2) local_unnamed_addr #6 align 2 {
bb.a:
  %3 = alloca %"class.v8::PrepareForExecutionScope", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.b = load ptr, ptr %i.a, align 8              ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 656
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store i64 %i.d, ptr %i.e, align 8
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = add i64 %i.f, 560
  %i.h = inttoptr i64 %i.g to ptr                 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %bb.b, label %_ZN2v822InternalEscapableScopeC2EPNS_8internal7IsolateE.exit.i.i.i, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.m = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.b) #44
  br label %_ZN2v822InternalEscapableScopeC2EPNS_8internal7IsolateE.exit.i.i.i

_ZN2v822InternalEscapableScopeC2EPNS_8internal7IsolateE.exit.i.i.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i.i.i.i = phi ptr [ %i.m, %bb.b ], [ %i.i, %bb.a ] ; 3 uses
  %i.n = ptrtoint ptr %.0.i.i.i.i.i.i to i64
  %i.o = add i64 %i.n, 8
  %i.p = inttoptr i64 %i.o to ptr
  store ptr %i.p, ptr %i.h, align 8
  store i64 %i.d, ptr %.0.i.i.i.i.i.i, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr %.0.i.i.i.i.i.i, ptr %i.q, align 8
  store ptr %i.b, ptr %3, align 8
  %i.r = load ptr, ptr %i.h, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store ptr %i.r, ptr %i.s, align 8
end_hunk_1
