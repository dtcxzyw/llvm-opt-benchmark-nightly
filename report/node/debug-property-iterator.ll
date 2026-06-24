inline.NumInlined: 557
inline.NumDeleted: 338
begin_hunk_0_@_ZN2v88internal21DebugPropertyIterator35FillKeysForCurrentPrototypeAndStageEv:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal21DebugPropertyIterator25should_move_to_next_stageEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.b = load i8, ptr %i.a, align 1, !range !6, !noundef !7
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp uge i64 %i.e, %i.g
  %not. = xor i1 %i.c, true
  %i.i = select i1 %not., i1 %i.h, i1 false
  ret i1 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal21DebugPropertyIterator15AdvanceInternalEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(104) initializes((88, 89)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %i.h = load i8, ptr %i.e, align 1, !range !6, !noundef !7
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = load i64, ptr %i.a, align 8
  %i.k = load i64, ptr %i.f, align 8
  %i.l = icmp ult i64 %i.j, %i.k
  %.not2 = select i1 %i.i, i1 true, i1 %i.l       ; 2 uses
  br i1 %.not2, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.g, align 8
  switch i32 %i.m, label %bb.g [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %i.g, align 8
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  store i32 2, ptr %i.g, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal21DebugPropertyIterator18AdvanceToPrototypeEv(ptr noundef nonnull align 8 dereferenceable(104) %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.n = tail call noundef zeroext i1 @_ZN2v88internal21DebugPropertyIterator35FillKeysForCurrentPrototypeAndStageEv(ptr noundef nonnull align 8 dereferenceable(104) %0)
  br i1 %i.n, label %bb.b, label %bb.h, !llvm.loop !8

bb.h:                                             ; preds = %bb.b, %bb.g
  ret i1 %.not2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal21DebugPropertyIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(104) initializes((0, 45), (48, 52)) %0, ptr noundef %1, ptr %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN2v88internal21DebugPropertyIteratorE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 0, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.g, align 8
  %i.h = icmp eq ptr %2, null
  br i1 %i.h, label %bb.b, label %_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #13
  unreachable

_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit: ; preds = %bb.a
  %i.i = zext i1 %3 to i8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %i.i, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 864
  store ptr %i.n, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 0, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 97
  store i8 0, ptr %i.s, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal21DebugPropertyIterator4DoneEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.b = load i8, ptr %i.a, align 1, !range !6, !noundef !7
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal21DebugPropertyIterator18is_native_accessorEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(104) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN2v88internal21DebugPropertyIterator28CalculateNativeAccessorFlagsEv(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp ne i32 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal21DebugPropertyIterator28CalculateNativeAccessorFlagsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(104) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::PropertyKey", align 8 ; 5 uses
  %2 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !6, !noundef !7
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.v, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.01.0.copyload.i = load ptr, ptr %i.g, align 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = add i64 %i.j, -1
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %sext.i = shl i64 %i.n, 32
  %i.p = ashr exact i64 %sext.i, 29
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 %i.p
  %i.r = load atomic volatile i64, ptr %i.q monotonic, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 560 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 568
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %bb.d, label %_ZNK2v88internal21DebugPropertyIterator8raw_nameEv.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.z = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.t) #15
  br label %_ZNK2v88internal21DebugPropertyIterator8raw_nameEv.exit

_ZNK2v88internal21DebugPropertyIterator8raw_nameEv.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi ptr [ %i.z, %bb.d ], [ %i.v, %bb.c ] ; 3 uses
  %i.aa = ptrtoint ptr %.0.i.i.i to i64
  %i.ab = add i64 %i.aa, 8
  %i.ac = inttoptr i64 %i.ab to ptr
  store ptr %i.ac, ptr %i.u, align 8
  store i64 %i.r, ptr %.0.i.i.i, align 8
  %i.ad = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.ae = load ptr, ptr %i.ad, align 8            ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @_ZN2v88internal11PropertyKeyC2INS0_12DirectHandleEQsr3stdE16is_convertible_vIT_INS0_4NameEENS3_IS5_EEEEEPNS0_7IsolateES6_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.ae, ptr nonnull %.0.i.i.i)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load i64, ptr %i.af, align 8
  %.not.i = icmp eq i64 %i.ag, -1
  br i1 %.not.i, label %bb.e, label %_ZN2v88internal12_GLOBAL__N_135GetNativeAccessorDescriptorInternalENS0_12DirectHandleINS0_10JSReceiverEEENS2_INS0_4NameEEE.exit

bb.e:                                             ; preds = %_ZNK2v88internal21DebugPropertyIterator8raw_nameEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %1, align 8 ; 4 uses
  %.pre.pre = load i64, ptr %.sroa.0.0.copyload.i.i.i, align 8
  %i.ah = add i64 %.pre.pre, -1
  %i.ai = inttoptr i64 %i.ah to ptr               ; 3 uses
  %i.aj = load atomic volatile i64, ptr %i.ai monotonic, align 8
  %i.ak = add i64 %i.aj, 11
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load atomic volatile i16, ptr %i.al monotonic, align 2
  %i.an = icmp eq i16 %i.am, 128
  br i1 %i.an, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i:        ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = trunc i32 %i.ap to i1
  br i1 %i.aq, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i, %bb.e
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i
  %i.ar = phi i32 [ 1, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i ]
  store i32 %i.ar, ptr %2, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  store i32 0, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 0, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.ae, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr null, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %.sroa.01.0.copyload.i, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr null, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bc = ptrtoint ptr %.sroa.01.0.copyload.i to i64
  store i64 %i.bc, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 -1, i64 16, i1 false)
  %i.be = load atomic volatile i64, ptr %i.ai monotonic, align 8
  %i.bf = add i64 %i.be, 11
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = load atomic volatile i16, ptr %i.bg monotonic, align 2
  %i.bi = and i16 %i.bh, -96
  %.not.i21.i = icmp eq i16 %i.bi, 32
  br i1 %.not.i21.i, label %bb.f, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE.exit

bb.f:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i
  %i.bj = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !6, !noundef !7
  %i.bk = trunc nuw i8 %i.bj to i1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ae, i64 55448
  %i.bm = load i8, ptr %i.bl, align 8, !range !6
  %i.bn = trunc nuw i8 %i.bm to i1
  %not..i.i.i23.i = xor i1 %i.bk, true
  %i.bo = select i1 %not..i.i.i23.i, i1 true, i1 %i.bn
  br i1 %i.bo, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ae, i64 64088
  %i.bq = load i8, ptr %i.bp, align 8, !range !6, !noundef !7
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZSt27__throw_bad_optional_accessv() #16
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i: ; preds = %bb.g
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ae, i64 64080
  %i.bt = load ptr, ptr %i.bs, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i, %bb.f
  %.pn.i.i26.i = phi ptr [ %i.bt, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i ], [ %i.ae, %bb.f ]
  %.in.i.i27.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i, i64 58464
  %i.bu = load ptr, ptr %.in.i.i27.i, align 8
  %i.bv = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 1 dereferenceable(1) %i.ae, ptr nonnull %.sroa.0.0.copyload.i.i.i) #15
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE.exit

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE.exit: ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i
  %.sroa.05.0.i22.i = phi ptr [ %i.bv, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i ], [ %.sroa.0.0.copyload.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i ]
  store ptr %.sroa.05.0.i22.i, ptr %i.ax, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %2) #15
  %i.bw = load i32, ptr %i.as, align 4
  %cond.i = icmp eq i32 %i.bw, 6
  br i1 %cond.i, label %bb.i, label %_ZN2v88internal14IsAccessorInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

bb.i:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE.exit
  %i.bx = call ptr @_ZNK2v88internal14LookupIterator12GetAccessorsEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #15
  %i.by = load i64, ptr %i.bx, align 8            ; 15 uses
  %i.bz = trunc i64 %i.by to i1
  br i1 %i.bz, label %_ZN2v88internal14IsAccessorInfoENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal14IsAccessorInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal14IsAccessorInfoENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.i
  %i.ca = add nsw i64 %i.by, -1
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = load atomic volatile i64, ptr %i.cb monotonic, align 8
  %i.cd = add i64 %i.cc, 11
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = load atomic volatile i16, ptr %i.ce monotonic, align 2
  %i.cg = icmp eq i16 %i.cf, 203
  br i1 %i.cg, label %bb.j, label %_ZN2v88internal14IsAccessorInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

bb.j:                                             ; preds = %_ZN2v88internal14IsAccessorInfoENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ae, i64 9048
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = icmp eq i64 %i.by, %i.ci
  br i1 %i.cj, label %_ZN2v88internal14IsAccessorInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ae, i64 8984
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = icmp eq i64 %i.by, %i.cl
  br i1 %i.cm, label %_ZN2v88internal14IsAccessorInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ae, i64 8992
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = icmp eq i64 %i.by, %i.co
  br i1 %i.cp, label %_ZN2v88internal14IsAccessorInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ae, i64 9000
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = icmp eq i64 %i.by, %i.cr
  br i1 %i.cs, label %_ZN2v88internal14IsAccessorInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ae, i64 9008
  %i.cu = load i64, ptr %i.ct, align 8
  %i.cv = icmp eq i64 %i.by, %i.cu
  br i1 %i.cv, label %_ZN2v88internal14IsAccessorInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ae, i64 9016
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = icmp eq i64 %i.by, %i.cx
  br i1 %i.cy, label %_ZN2v88internal14IsAccessorInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ae, i64 9024
  %i.da = load i64, ptr %i.cz, align 8
  %i.db = icmp eq i64 %i.by, %i.da
  br i1 %i.db, label %_ZN2v88internal14IsAccessorInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ae, i64 9032
  %i.dd = load i64, ptr %i.dc, align 8
  %i.de = icmp eq i64 %i.by, %i.dd
  br i1 %i.de, label %_ZN2v88internal14IsAccessorInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.df = getelementptr inbounds nuw i8, ptr %i.ae, i64 9040
  %i.dg = load i64, ptr %i.df, align 8
  %i.dh = icmp eq i64 %i.by, %i.dg
  br i1 %i.dh, label %_ZN2v88internal14IsAccessorInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.di = getelementptr inbounds nuw i8, ptr %i.ae, i64 9056
  %i.dj = load i64, ptr %i.di, align 8
  %i.dk = icmp eq i64 %i.by, %i.dj
  br i1 %i.dk, label %_ZN2v88internal14IsAccessorInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ae, i64 9064
  %i.dm = load i64, ptr %i.dl, align 8
  %i.dn = icmp eq i64 %i.by, %i.dm
  br i1 %i.dn, label %_ZN2v88internal14IsAccessorInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.do = add i64 %i.by, 23
  %i.dp = inttoptr i64 %i.do to ptr
  %i.dq = load i64, ptr %i.dp, align 8
  %.not137.i = icmp ne i64 %i.dq, 0
  %spec.select.i = zext i1 %.not137.i to i32      ; 2 uses
  %i.dr = add i64 %i.by, 31
  %i.ds = inttoptr i64 %i.dr to ptr
  %i.dt = load i64, ptr %i.ds, align 8
  %.not138.i = icmp eq i64 %i.dt, 0
  %i.du = or disjoint i32 %spec.select.i, 2
  %spec.select136.i = select i1 %.not138.i, i32 %spec.select.i, i32 %i.du
  br label %_ZN2v88internal14IsAccessorInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal14IsAccessorInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %_ZN2v88internal14IsAccessorInfoENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.i, %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE.exit
  %.sroa.095.2.i = phi i32 [ 0, %bb.i ], [ 0, %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE.exit ], [ 0, %_ZN2v88internal14IsAccessorInfoENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ %spec.select136.i, %bb.u ], [ 0, %bb.t ], [ 4, %bb.j ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.m ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %_ZN2v88internal12_GLOBAL__N_135GetNativeAccessorDescriptorInternalENS0_12DirectHandleINS0_10JSReceiverEEENS2_INS0_4NameEEE.exit

_ZN2v88internal12_GLOBAL__N_135GetNativeAccessorDescriptorInternalENS0_12DirectHandleINS0_10JSReceiverEEENS2_INS0_4NameEEE.exit: ; preds = %_ZNK2v88internal21DebugPropertyIterator8raw_nameEv.exit, %_ZN2v88internal14IsAccessorInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  %.sroa.095.3.i = phi i32 [ %.sroa.095.2.i, %_ZN2v88internal14IsAccessorInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread.i ], [ 0, %_ZNK2v88internal21DebugPropertyIterator8raw_nameEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br label %bb.v

bb.v:                                             ; preds = %bb.b, %_ZN2v88internal12_GLOBAL__N_135GetNativeAccessorDescriptorInternalENS0_12DirectHandleINS0_10JSReceiverEEENS2_INS0_4NameEEE.exit
  %.sroa.095.3.i.sink = phi i32 [ %.sroa.095.3.i, %_ZN2v88internal12_GLOBAL__N_135GetNativeAccessorDescriptorInternalENS0_12DirectHandleINS0_10JSReceiverEEENS2_INS0_4NameEEE.exit ], [ 0, %bb.b ]
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %.sroa.095.3.i.sink, ptr %i.dv, align 4
  store i8 1, ptr %i.a, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.a, %bb.v
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal21DebugPropertyIterator17has_native_getterEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(104) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN2v88internal21DebugPropertyIterator28CalculateNativeAccessorFlagsEv(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.b = load i32, ptr %i.a, align 4
  %i.c = trunc i32 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal21DebugPropertyIterator17has_native_setterEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(104) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN2v88internal21DebugPropertyIterator28CalculateNativeAccessorFlagsEv(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 2
  %i.d = icmp ne i32 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZNK2v88internal21DebugPropertyIterator8raw_nameEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) local_unnamed_addr #0 align 2 {
bb.a:
end_hunk_0
