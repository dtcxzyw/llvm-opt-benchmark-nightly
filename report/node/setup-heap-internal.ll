inline.NumInlined: 4247
inline.NumDeleted: 967
begin_hunk_0_@_ZN2v88internal4Heap32CreateLateReadOnlyJSReceiverMapsEv:bb.a
bb.h:                                             ; preds = %bb.e
  br i1 %i.ar, label %bb.i, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i.i, !prof !10

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.45) #11
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i.i: ; preds = %bb.h
  %i.au = load i64, ptr %.sroa.21.0.copyload.i.i, align 8
  br label %_ZN2v88internal15DescriptorArray3SetENS0_13InternalIndexEPNS0_10DescriptorE.exit

_ZN2v88internal15DescriptorArray3SetENS0_13InternalIndexEPNS0_10DescriptorE.exit: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i.i, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i.i
  %.sroa.05.0.i.i = phi i64 [ %i.at, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i.i ], [ %i.au, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i11.i = load i32, ptr %i.av, align 8
  call void @_ZN2v88internal15DescriptorArray3SetENS0_13InternalIndexENS0_6TaggedINS0_4NameEEENS3_INS0_9MaybeWeakINS0_6ObjectEEEEENS0_15PropertyDetailsE(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 0, i64 %i.ao, i64 %.sroa.05.0.i.i, i32 %.sroa.0.0.copyload.i11.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  store i64 %i.ai, ptr %4, align 8
  %i.aw = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.ax = add i64 %i.aw, 9
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = load atomic volatile i16, ptr %i.ay monotonic, align 2
  %i.ba = sext i16 %i.az to i32
  call void @_ZN2v88internal3Map22SetInstanceDescriptorsEPNS0_7IsolateENS0_6TaggedINS0_15DescriptorArrayEEEiNS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %i.c, i64 %i.aw, i32 noundef %i.ba, i32 noundef 4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 1800
  store i64 %i.ai, ptr %i.bb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  %i.bc = call i64 @_ZN2v88internal4Heap11AllocateMapENS0_14AllocationTypeENS0_12InstanceTypeEiNS0_12ElementsKindEi(ptr noundef nonnull align 8 dereferenceable(2992) %0, i8 noundef zeroext 4, i16 noundef zeroext 2103, i32 noundef 40, i8 noundef zeroext 13, i32 noundef 0) ; 3 uses
  %.not115 = icmp eq i64 %i.bc, 0
  br i1 %.not115, label %_ZNK2v88internal16AllocationResult2ToINS0_3MapEEEbPNS0_6TaggedIT_EE.exit45, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal15DescriptorArray3SetENS0_13InternalIndexEPNS0_10DescriptorE.exit
  call void @_ZN2v88internal25AlwaysSharedSpaceJSObject32PrepareMapNoEnumerablePropertiesENS0_6TaggedINS0_3MapEEE(i64 %i.bc) #10
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 1808
  store i64 %i.bc, ptr %i.bd, align 8
  %i.be = call i64 @_ZN2v88internal4Heap11AllocateMapENS0_14AllocationTypeENS0_12InstanceTypeEiNS0_12ElementsKindEi(ptr noundef nonnull align 8 dereferenceable(2992) %0, i8 noundef zeroext 4, i16 noundef zeroext 2102, i32 noundef 40, i8 noundef zeroext 13, i32 noundef 0) ; 3 uses
  %.not116 = icmp eq i64 %i.be, 0
  br i1 %.not116, label %_ZNK2v88internal16AllocationResult2ToINS0_3MapEEEbPNS0_6TaggedIT_EE.exit45, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN2v88internal25AlwaysSharedSpaceJSObject32PrepareMapNoEnumerablePropertiesENS0_6TaggedINS0_3MapEEE(i64 %i.be) #10
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 1816
  store i64 %i.be, ptr %i.bf, align 8
  br label %_ZNK2v88internal16AllocationResult2ToINS0_3MapEEEbPNS0_6TaggedIT_EE.exit45

_ZNK2v88internal16AllocationResult2ToINS0_3MapEEEbPNS0_6TaggedIT_EE.exit45: ; preds = %bb.j, %bb.k, %bb.a, %bb.b, %bb.c, %bb.d, %_ZN2v88internal15DescriptorArray3SetENS0_13InternalIndexEPNS0_10DescriptorE.exit
  %.6 = phi i1 [ false, %bb.d ], [ false, %bb.c ], [ true, %bb.k ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.j ], [ false, %_ZN2v88internal15DescriptorArray3SetENS0_13InternalIndexEPNS0_10DescriptorE.exit ]
  store ptr %i.e, ptr %i.d, align 8
  %i.bg = load i32, ptr %i.h, align 8
  %i.bh = add nsw i32 %i.bg, -1
  store i32 %i.bh, ptr %i.h, align 8
  %i.bi = load ptr, ptr %i.f, align 8
  %.not.i = icmp eq ptr %i.bi, %i.g
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.l, !prof !7

bb.l:                                             ; preds = %_ZNK2v88internal16AllocationResult2ToINS0_3MapEEEbPNS0_6TaggedIT_EE.exit45
  store ptr %i.g, ptr %i.f, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.c) #10
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.l, %_ZNK2v88internal16AllocationResult2ToINS0_3MapEEEbPNS0_6TaggedIT_EE.exit45
  ret i1 %.6
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4Heap24CreateReadOnlyApiObjectsEv(ptr noundef nonnull align 8 dereferenceable(2992) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = add i64 %i.a, -55464
  %i.c = inttoptr i64 %i.b to ptr                 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 560 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 568 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 576 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 8
  %i.k = tail call ptr @_ZN2v88internal7Factory18NewInterceptorInfoENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %i.c, i8 noundef zeroext 4) #10
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 1912
  store i64 %i.l, ptr %i.m, align 8
  store ptr %i.e, ptr %i.d, align 8
  %i.n = load i32, ptr %i.h, align 8
  %i.o = add nsw i32 %i.n, -1
  store i32 %i.o, ptr %i.h, align 8
  %i.p = load ptr, ptr %i.f, align 8
  %.not.i = icmp eq ptr %i.p, %i.g
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  store ptr %i.g, ptr %i.f, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.c) #10
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4Heap23CreateMutableApiObjectsEv(ptr noundef nonnull align 8 dereferenceable(2992) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = add i64 %i.a, -55464
  %i.c = inttoptr i64 %i.b to ptr                 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 560 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 568 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 576 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 8
  %i.k = tail call i64 @_ZN2v88internal11FactoryBaseINS0_7FactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE(ptr noundef nonnull align 1 dereferenceable(1) %i.c, i32 noundef 40, i8 noundef zeroext 1, i8 0, i8 noundef zeroext 0) #10 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 1016
  %i.m = load i64, ptr %i.l, align 8
  %i.n = add i64 %i.k, -1
  %i.o = inttoptr i64 %i.n to ptr                 ; 3 uses
  store atomic volatile i64 %i.m, ptr %i.o monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store atomic volatile i64 8589934592, ptr %i.p monotonic, align 8
  %i.q = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.r = load ptr, ptr %i.f, align 8
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.t = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.c) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.i.i.i.i = phi ptr [ %i.t, %bb.b ], [ %i.q, %bb.a ] ; 4 uses
  %i.u = ptrtoint ptr %.0.i.i.i.i to i64
  %i.v = add i64 %i.u, 8
  %i.w = inttoptr i64 %i.v to ptr
  store ptr %i.w, ptr %i.d, align 8
  store i64 %i.k, ptr %.0.i.i.i.i, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store atomic volatile i64 0, ptr %i.x monotonic, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 648
  %i.z = load i64, ptr %.0.i.i.i.i, align 8
  %i.aa = add i64 %i.z, -1
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load i64, ptr %i.y, align 8
  %i.ae = tail call { i64, ptr } asm sideeffect "cld;rep ; stosq", "=&{cx},=&{di},{ax},0,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %i.ad, i64 2, ptr nonnull %i.ac) #10, !srcloc !14 ; 0 uses
  %i.af = load i64, ptr %.0.i.i.i.i, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 9696
  store i64 %i.af, ptr %i.ag, align 8
  store ptr %i.e, ptr %i.d, align 8
  %i.ah = load i32, ptr %i.h, align 8
  %i.ai = add nsw i32 %i.ah, -1
  store i32 %i.ai, ptr %i.h, align 8
  %i.aj = load ptr, ptr %i.f, align 8
  %.not.i = icmp eq ptr %i.aj, %i.g
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.d, !prof !7

bb.d:                                             ; preds = %bb.c
  store ptr %i.g, ptr %i.f, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.c) #10
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4Heap27CreateInitialMutableObjectsEv(ptr noundef nonnull align 8 dereferenceable(2992) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = add i64 %i.a, -55464
  %i.c = inttoptr i64 %i.b to ptr                 ; 146 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 560 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 568 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 576 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 648 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 9704
  store i64 %i.l, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 9712
  store i64 %i.l, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 2064
  %i.p = load i64, ptr %i.o, align 8              ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 9624
  store i64 %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 9632
  store i64 %i.p, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 9640
  store i64 %i.p, ptr %i.s, align 8
  %i.t = tail call i64 @_ZN2v88internal11FactoryBaseINS0_7FactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE(ptr noundef nonnull align 1 dereferenceable(1) %i.c, i32 noundef 2064, i8 noundef zeroext 1, i8 0, i8 noundef zeroext 0) #10 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 728
  %i.v = load i64, ptr %i.u, align 8
  %i.w = add i64 %i.t, -1
  %i.x = inttoptr i64 %i.w to ptr                 ; 4 uses
  store atomic volatile i64 %i.v, ptr %i.x monotonic, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store atomic volatile i64 1099511627776, ptr %i.y monotonic, align 8
  %i.z = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.aa = load ptr, ptr %i.f, align 8
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.b, label %_ZN2v88internal14SmiStringCache3NewINS0_7IsolateEEENS0_12DirectHandleIS1_EEPT_i.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.ac = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.c) #10
  br label %_ZN2v88internal14SmiStringCache3NewINS0_7IsolateEEENS0_12DirectHandleIS1_EEPT_i.exit

_ZN2v88internal14SmiStringCache3NewINS0_7IsolateEEENS0_12DirectHandleIS1_EEPT_i.exit: ; preds = %bb.a, %bb.b
  %.0.i.i.i.i = phi ptr [ %i.ac, %bb.b ], [ %i.z, %bb.a ] ; 3 uses
  %i.ad = ptrtoint ptr %.0.i.i.i.i to i64
  %i.ae = add i64 %i.ad, 8
  %i.af = inttoptr i64 %i.ae to ptr
  store ptr %i.af, ptr %i.d, align 8
  store i64 %i.t, ptr %.0.i.i.i.i, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.shift.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %1 = load i32, ptr %.shift.i.i.i.i, align 4
  %2 = sext i32 %1 to i64
  %i.ah = tail call { i64, ptr } asm sideeffect "cld;rep ; stosq", "=&{cx},=&{di},{ax},0,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 0, i64 %2, ptr nonnull %i.ag) #10, !srcloc !14 ; 0 uses
  %i.ai = load i64, ptr %.0.i.i.i.i, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 9608
  store i64 %i.ai, ptr %i.aj, align 8
  %i.ak = tail call i64 @_ZN2v88internal11FactoryBaseINS0_7FactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE(ptr noundef nonnull align 1 dereferenceable(1) %i.c, i32 noundef 2064, i8 noundef zeroext 1, i8 0, i8 noundef zeroext 0) #10 ; 3 uses
  %i.al = add i64 %i.ak, -1
  %i.am = inttoptr i64 %i.al to ptr               ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 1088
  %i.ao = load i64, ptr %i.an, align 8
  store atomic volatile i64 %i.ao, ptr %i.am monotonic, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i32 128, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 0, ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.as = tail call { i64, ptr } asm sideeffect "cld;rep ; stosq", "=&{cx},=&{di},{ax},0,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 0, i64 256, ptr nonnull %i.ar) #10, !srcloc !14 ; 0 uses
  %i.at = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.au = load ptr, ptr %i.f, align 8
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.c, label %_ZN2v88internal17DoubleStringCache3NewINS0_7IsolateEEENS0_12DirectHandleIS1_EEPT_i.exit, !prof !10

bb.c:                                             ; preds = %_ZN2v88internal14SmiStringCache3NewINS0_7IsolateEEENS0_12DirectHandleIS1_EEPT_i.exit
  %i.aw = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.c) #10
  br label %_ZN2v88internal17DoubleStringCache3NewINS0_7IsolateEEENS0_12DirectHandleIS1_EEPT_i.exit

_ZN2v88internal17DoubleStringCache3NewINS0_7IsolateEEENS0_12DirectHandleIS1_EEPT_i.exit: ; preds = %_ZN2v88internal14SmiStringCache3NewINS0_7IsolateEEENS0_12DirectHandleIS1_EEPT_i.exit, %bb.c
  %.0.i.i.i = phi ptr [ %i.aw, %bb.c ], [ %i.at, %_ZN2v88internal14SmiStringCache3NewINS0_7IsolateEEENS0_12DirectHandleIS1_EEPT_i.exit ] ; 2 uses
  %i.ax = ptrtoint ptr %.0.i.i.i to i64
  %i.ay = add i64 %i.ax, 8
  %i.az = inttoptr i64 %i.ay to ptr
  store ptr %i.az, ptr %i.d, align 8
  store i64 %i.ak, ptr %.0.i.i.i, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 9616
  store i64 %i.ak, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 1920
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 9728
  store i64 %i.bc, ptr %i.bd, align 8
  %i.be = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %i.c, i32 noundef 256, i8 noundef zeroext 1, i8 0) #10
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 9248
  store i64 %i.bf, ptr %i.bg, align 8
  %i.bh = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %i.c, i32 noundef 256, i8 noundef zeroext 1, i8 0) #10
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 9256
  store i64 %i.bi, ptr %i.bj, align 8
  %i.bk = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %i.c, i32 noundef 4, i8 noundef zeroext 1, i8 0) #10
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 9264
  store i64 %i.bl, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 880
  %i.bo = load i64, ptr %i.bn, align 8            ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 9664
  store i64 %i.bo, ptr %i.bp, align 8
  %i.bq = load i64, ptr %i.k, align 8             ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 9672
  store i64 %i.bq, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 9720
  store i64 %i.bq, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 9736
  store i64 %i.bo, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 9744
  store i64 %i.bq, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 1928
  %i.bw = load i64, ptr %i.bv, align 8            ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 9752
  store i64 %i.bw, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 9760
  store i64 %i.bw, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 9648
  store i64 %i.bo, ptr %i.bz, align 8
  %i.ca = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %i.c, i32 noundef 0, i8 noundef zeroext 1, i8 0) #10
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 9656
  store i64 %i.cb, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 9784
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 688 ; 13 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cd, i8 0, i64 32, i1 false)
  %i.cf = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewScriptENS0_12DirectHandleINS0_5UnionIJNS0_6StringENS0_9UndefinedEEEEEENS0_15ScriptEventTypeE(ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr nonnull %i.ce, i32 noundef 1) #10 ; 3 uses
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = add i64 %i.cg, 47
  %i.ci = inttoptr i64 %i.ch to ptr
  store atomic volatile i64 0, ptr %i.ci monotonic, align 8
  %i.cj = load i64, ptr %i.cf, align 8
  %i.ck = add i64 %i.cj, 103
  %i.cl = inttoptr i64 %i.ck to ptr               ; 2 uses
  %i.cm = load atomic volatile i64, ptr %i.cl monotonic, align 8
  %i.cn = and i64 %i.cm, -519691042816
  %i.co = or disjoint i64 %i.cn, 34359738368
  store atomic volatile i64 %i.co, ptr %i.cl monotonic, align 8
  %i.cp = load i64, ptr %i.cf, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 9072
  store i64 %i.cp, ptr %i.cq, align 8
  %i.cr = tail call ptr @_ZN2v88internal7Factory12NewProtectorEv(ptr noundef nonnull align 1 dereferenceable(1) %i.c) #10
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 9176
  store i64 %i.cs, ptr %i.ct, align 8
  %i.cu = tail call ptr @_ZN2v88internal7Factory12NewProtectorEv(ptr noundef nonnull align 1 dereferenceable(1) %i.c) #10
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.c, i64 9168
  store i64 %i.cv, ptr %i.cw, align 8
  %i.cx = tail call ptr @_ZN2v88internal7Factory12NewProtectorEv(ptr noundef nonnull align 1 dereferenceable(1) %i.c) #10
  %i.cy = load i64, ptr %i.cx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 9120
  store i64 %i.cy, ptr %i.cz, align 8
  %i.da = tail call ptr @_ZN2v88internal7Factory12NewProtectorEv(ptr noundef nonnull align 1 dereferenceable(1) %i.c) #10
  %i.db = load i64, ptr %i.da, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.c, i64 9136
  store i64 %i.db, ptr %i.dc, align 8
  %i.dd = tail call ptr @_ZN2v88internal7Factory12NewProtectorEv(ptr noundef nonnull align 1 dereferenceable(1) %i.c) #10
  %i.de = load i64, ptr %i.dd, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.c, i64 9112
  store i64 %i.de, ptr %i.df, align 8
  %i.dg = tail call ptr @_ZN2v88internal7Factory12NewProtectorEv(ptr noundef nonnull align 1 dereferenceable(1) %i.c) #10
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.c, i64 9200
  store i64 %i.dh, ptr %i.di, align 8
  %i.dj = tail call ptr @_ZN2v88internal7Factory12NewProtectorEv(ptr noundef nonnull align 1 dereferenceable(1) %i.c) #10
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.c, i64 9080
  store i64 %i.dk, ptr %i.dl, align 8
  %i.dm = tail call ptr @_ZN2v88internal7Factory12NewProtectorEv(ptr noundef nonnull align 1 dereferenceable(1) %i.c) #10
  %i.dn = load i64, ptr %i.dm, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.c, i64 9088
  store i64 %i.dn, ptr %i.do, align 8
  %i.dp = tail call ptr @_ZN2v88internal7Factory12NewProtectorEv(ptr noundef nonnull align 1 dereferenceable(1) %i.c) #10
  %i.dq = load i64, ptr %i.dp, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 9096
  store i64 %i.dq, ptr %i.dr, align 8
  %i.ds = tail call ptr @_ZN2v88internal7Factory12NewProtectorEv(ptr noundef nonnull align 1 dereferenceable(1) %i.c) #10
  %i.dt = load i64, ptr %i.ds, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.c, i64 9104
  store i64 %i.dt, ptr %i.du, align 8
  %i.dv = tail call ptr @_ZN2v88internal7Factory12NewProtectorEv(ptr noundef nonnull align 1 dereferenceable(1) %i.c) #10
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.c, i64 9184
  store i64 %i.dw, ptr %i.dx, align 8
  %i.dy = tail call ptr @_ZN2v88internal7Factory12NewProtectorEv(ptr noundef nonnull align 1 dereferenceable(1) %i.c) #10
  %i.dz = load i64, ptr %i.dy, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.c, i64 9192
  store i64 %i.dz, ptr %i.ea, align 8
  %i.eb = tail call ptr @_ZN2v88internal7Factory12NewProtectorEv(ptr noundef nonnull align 1 dereferenceable(1) %i.c) #10
  %i.ec = load i64, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.c, i64 9144
  store i64 %i.ec, ptr %i.ed, align 8
  %i.ee = tail call ptr @_ZN2v88internal7Factory12NewProtectorEv(ptr noundef nonnull align 1 dereferenceable(1) %i.c) #10
  %i.ef = load i64, ptr %i.ee, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.c, i64 9208
  store i64 %i.ef, ptr %i.eg, align 8
  %i.eh = tail call ptr @_ZN2v88internal7Factory12NewProtectorEv(ptr noundef nonnull align 1 dereferenceable(1) %i.c) #10
  %i.ei = load i64, ptr %i.eh, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.c, i64 9152
  store i64 %i.ei, ptr %i.ej, align 8
  %i.ek = tail call ptr @_ZN2v88internal7Factory12NewProtectorEv(ptr noundef nonnull align 1 dereferenceable(1) %i.c) #10
  %i.el = load i64, ptr %i.ek, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.c, i64 9216
  store i64 %i.el, ptr %i.em, align 8
  %i.en = tail call ptr @_ZN2v88internal7Factory12NewProtectorEv(ptr noundef nonnull align 1 dereferenceable(1) %i.c) #10
  %i.eo = load i64, ptr %i.en, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.c, i64 9224
  store i64 %i.eo, ptr %i.ep, align 8
  %i.eq = tail call ptr @_ZN2v88internal7Factory12NewProtectorEv(ptr noundef nonnull align 1 dereferenceable(1) %i.c) #10
  %i.er = load i64, ptr %i.eq, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 9160
  store i64 %i.er, ptr %i.es, align 8
  %i.et = tail call ptr @_ZN2v88internal7Factory12NewProtectorEv(ptr noundef nonnull align 1 dereferenceable(1) %i.c) #10
  %i.eu = load i64, ptr %i.et, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.c, i64 9232
  store i64 %i.eu, ptr %i.ev, align 8
  %i.ew = tail call ptr @_ZN2v88internal7Factory12NewProtectorEv(ptr noundef nonnull align 1 dereferenceable(1) %i.c) #10
  %i.ex = load i64, ptr %i.ew, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.c, i64 9240
  store i64 %i.ex, ptr %i.ey, align 8
  %i.ez = tail call ptr @_ZN2v88internal7Factory12NewProtectorEv(ptr noundef nonnull align 1 dereferenceable(1) %i.c) #10
  %i.fa = load i64, ptr %i.ez, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.c, i64 9128
  store i64 %i.fa, ptr %i.fb, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.c, i64 864 ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8            ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.c, i64 9680
  store i64 %i.fd, ptr %i.fe, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.c, i64 9688
  store i64 %i.fd, ptr %i.ff, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.c, i64 3656
  %i.fh = load i64, ptr %i.fg, align 8
  %i.fi = add i64 %i.fh, -1
  %i.fj = inttoptr i64 %i.fi to ptr               ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load atomic i32, ptr %i.fk acquire, align 4 ; 3 uses
  %i.fm = and i32 %i.fl, 1
  %i.fn = icmp eq i32 %i.fm, 0
  br i1 %i.fn, label %_ZN2v88internal4Name10EnsureHashEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal17DoubleStringCache3NewINS0_7IsolateEEENS0_12DirectHandleIS1_EEPT_i.exit
  %i.fo = and i32 %i.fl, 3
  %i.fp = icmp eq i32 %i.fo, 1
  br i1 %i.fp, label %bb.e, label %bb.f, !prof !10

bb.e:                                             ; preds = %bb.d
  %i.fq = tail call noundef i32 @_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj(ptr noundef nonnull align 4 dereferenceable(12) %i.fj, i32 noundef %i.fl) ; 0 uses
end_hunk_0
