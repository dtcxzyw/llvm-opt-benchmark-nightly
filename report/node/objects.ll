inline.NumInlined: 13178
inline.NumDeleted: 2935
begin_hunk_0_@_ZN2v88internal6Object23SetPropertyWithAccessorEPNS0_14LookupIteratorENS0_12DirectHandleIS1_EENS_5MaybeINS0_11ShouldThrowEEE:bb.a
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load i64, ptr %i.at, align 8
  %.not237 = icmp eq i64 %i.au, 0
  br i1 %.not237, label %.thread255, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal14LookupIterator7GetNameEv.exit
  %i.av = add i64 %i.ar, 39
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = trunc i32 %i.ax to i1
  br i1 %i.ay, label %bb.g, label %9

bb.g:                                             ; preds = %bb.f
  %i.az = load i64, ptr %.sroa.0131.0, align 8    ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal6Object23SetPropertyWithAccessorEPNS0_14LookupIteratorENS0_12DirectHandleIS1_EENS_5MaybeINS0_11ShouldThrowEEE:bb.a
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = load atomic volatile i16, ptr %i.bf monotonic, align 2
  %i.bh = icmp ugt i16 %i.bg, 299
  br i1 %i.bh, label %9, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit
  %i.bi = load atomic volatile i64, ptr %i.bc monotonic, align 8
end_hunk_1
begin_hunk_2_@_ZN2v88internal6Object23SetPropertyWithAccessorEPNS0_14LookupIteratorENS0_12DirectHandleIS1_EENS_5MaybeINS0_11ShouldThrowEEE:bb.a
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = load atomic volatile i16, ptr %i.bk monotonic, align 2
  %i.bm = icmp ugt i16 %i.bl, 299
  br i1 %i.bm, label %9, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %bb.g, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 664
end_hunk_2
begin_hunk_3_@_ZN2v88internal6Object23SetPropertyWithAccessorEPNS0_14LookupIteratorENS0_12DirectHandleIS1_EENS_5MaybeINS0_11ShouldThrowEEE:bb.a
  store ptr %i.cd, ptr %i.bv, align 8
  store i64 %i.bu, ptr %.0.i.i.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %9

bb.i:                                             ; preds = %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit.i
  br i1 %i.ba, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i, label %_ZN2v88internal6Object15ConvertReceiverEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit, !prof !18
end_hunk_3
begin_hunk_4_@_ZN2v88internal6Object23SetPropertyWithAccessorEPNS0_14LookupIteratorENS0_12DirectHandleIS1_EENS_5MaybeINS0_11ShouldThrowEEE:bb.a
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = load atomic volatile i16, ptr %i.ci monotonic, align 2
  %i.ck = icmp ugt i16 %i.cj, 299
  br i1 %i.ck, label %9, label %_ZN2v88internal6Object15ConvertReceiverEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit, !prof !19

_ZN2v88internal6Object15ConvertReceiverEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit: ; preds = %bb.i, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %i.cl = tail call ptr @_ZN2v88internal6Object12ToObjectImplEPNS0_7IsolateENS0_12DirectHandleIS1_EEPKc(ptr noundef nonnull %i.b, ptr nonnull readonly %.sroa.0131.0, ptr noundef null) ; 2 uses
  %.not238 = icmp eq ptr %i.cl, null
  br i1 %.not238, label %bb.p, label %9

_ZN2v88internal14IsAccessorInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal16IsJSGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread, %_ZN2v88internal14IsAccessorInfoENS0_6TaggedINS0_6ObjectEEE.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
end_hunk_4
begin_hunk_5_@_ZN2v88internal6Object23SetPropertyWithAccessorEPNS0_14LookupIteratorENS0_12DirectHandleIS1_EENS_5MaybeINS0_11ShouldThrowEEE:bb.a
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 648
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = call ptr @_ZN2v88internal8Builtins17InvokeApiFunctionEPNS0_7IsolateEbNS0_12DirectHandleINS0_20FunctionTemplateInfoEEENS4_INS0_6ObjectEEENS_4base6VectorIKS8_EENS4_INS0_10HeapObjectEEE(ptr noundef nonnull %i.b, i1 noundef zeroext false, ptr nonnull %.0.i, ptr nonnull %.sroa.0131.0, ptr nonnull %8, i64 1, i64 %i.dv) #27
  %.fr263 = freeze ptr %i.dw
  %.not264 = icmp eq ptr %.fr263, null
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @_ZN2v88internal11SaveContextD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br i1 %.not264, label %bb.p, label %.thread255

_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal22IsFunctionTemplateInfoENS0_6TaggedINS0_6ObjectEEE.exit
  %i.dx = load atomic volatile i64, ptr %i.cz monotonic, align 8
end_hunk_5
begin_hunk_6_@_ZN2v88internal6Object23SetPropertyWithAccessorEPNS0_14LookupIteratorENS0_12DirectHandleIS1_EENS_5MaybeINS0_11ShouldThrowEEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %1, ptr %4, align 8
  %i.ee = call ptr @_ZN2v88internal9Execution4CallEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEES6_NS_4base6VectorIKS6_EE(ptr noundef %i.ed, ptr nonnull %.0.i, ptr nonnull %.sroa.0131.0, ptr nonnull %4, i64 1) #27
  %.fr = freeze ptr %i.ee
  %.not262 = icmp eq ptr %.fr, null
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br i1 %.not262, label %bb.p, label %.thread255

_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ef = tail call noundef i32 @_ZN2v88internal14GetShouldThrowEPNS0_7IsolateENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef nonnull %i.b, i64 %2)
end_hunk_6
begin_hunk_7_@_ZN2v88internal6Object23SetPropertyWithAccessorEPNS0_14LookupIteratorENS0_12DirectHandleIS1_EENS_5MaybeINS0_11ShouldThrowEEE:bb.a
  %i.es = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %i.b, i64 %i.er, ptr noundef null) #27 ; 0 uses
  br label %bb.p

9:                                                ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit, %bb.f, %_ZN2v88internal6Object15ConvertReceiverEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZN2v88internal7Isolate12global_proxyEv.exit.i, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %.sroa.0131.1 = phi ptr [ %.sroa.0131.0, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit ], [ %i.cl, %_ZN2v88internal6Object15ConvertReceiverEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit ], [ %.sroa.0131.0, %bb.f ], [ %.sroa.0131.0, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i ], [ %.0.i.i.i.i, %_ZN2v88internal7Isolate12global_proxyEv.exit.i ], [ %.sroa.0131.0, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %10 = load i64, ptr %i.c, align 8
  %11 = add i64 %10, 15
  %12 = inttoptr i64 %11 to ptr
  %13 = load i64, ptr %12, align 8
  %14 = load i64, ptr %.sroa.0131.1, align 8
  %15 = load i64, ptr %.sroa.01.0.copyload.i, align 8
  call void @_ZN2v88internal25PropertyCallbackArgumentsC1EPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEES6_NS4_INS0_8JSObjectEEENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef nonnull align 8 dereferenceable(96) %6, ptr noundef %i.b, i64 %13, i64 %14, i64 %15, i64 %2) #27
  %16 = call noundef zeroext i1 @_ZN2v88internal25PropertyCallbackArguments18CallAccessorSetterENS0_12DirectHandleINS0_12AccessorInfoEEENS2_INS0_4NameEEENS2_INS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(96) %6, ptr nonnull %i.c, ptr %.sroa.01.0.copyload.i76, ptr %1)
  %17 = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %.sroa.0.0.copyload.i79 = load i64, ptr %17, align 8
  %18 = getelementptr inbounds nuw i8, ptr %i.b, i64 656
  %19 = load i64, ptr %18, align 8
  %.not239 = icmp eq i64 %.sroa.0.0.copyload.i79, %19
  %.not239.fr = freeze i1 %.not239                ; 3 uses
  %narrow = and i1 %16, %.not239.fr
  %20 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds nuw i8, ptr %21, i64 59768
  store ptr %23, ptr %24, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br i1 %narrow, label %.thread255, label %bb.p

.thread255:                                       ; preds = %_ZN2v88internal14LookupIterator7GetNameEv.exit, %_ZNOSt8optionalIN2v88internal6TaggedINS1_13NativeContextEEEE5valueEv.exit, %bb.m, %9
  %.sroa.0137.4.shrunk259 = phi i1 [ true, %_ZNOSt8optionalIN2v88internal6TaggedINS1_13NativeContextEEEE5valueEv.exit ], [ %.not239.fr, %9 ], [ true, %bb.m ], [ true, %_ZN2v88internal14LookupIterator7GetNameEv.exit ]
  br label %bb.p

bb.p:                                             ; preds = %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread, %_ZN2v88internal14LookupIterator7GetNameEv.exit95, %_ZN2v88internal6Object15ConvertReceiverEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit, %_ZNOSt8optionalIN2v88internal6TaggedINS1_13NativeContextEEEE5valueEv.exit, %bb.m, %9, %.thread255
  %.sroa.0137.4.shrunk254 = phi i1 [ %.sroa.0137.4.shrunk259, %.thread255 ], [ %.not239.fr, %9 ], [ false, %_ZNOSt8optionalIN2v88internal6TaggedINS1_13NativeContextEEEE5valueEv.exit ], [ false, %bb.m ], [ true, %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread ], [ false, %_ZN2v88internal14LookupIterator7GetNameEv.exit95 ], [ false, %_ZN2v88internal6Object15ConvertReceiverEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit ]
  %.sroa.10.4 = phi i16 [ 256, %.thread255 ], [ 0, %9 ], [ 0, %_ZNOSt8optionalIN2v88internal6TaggedINS1_13NativeContextEEEE5valueEv.exit ], [ 0, %bb.m ], [ 0, %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread ], [ 0, %_ZN2v88internal14LookupIterator7GetNameEv.exit95 ], [ 0, %_ZN2v88internal6Object15ConvertReceiverEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit ]
  %.sroa.0137.0.insert.ext = zext i1 %.sroa.0137.4.shrunk254 to i16
  %.sroa.0137.0.insert.insert = or disjoint i16 %.sroa.10.4, %.sroa.0137.0.insert.ext
  ret i16 %.sroa.0137.0.insert.insert
}

end_hunk_7
