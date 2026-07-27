inline.NumInlined: 1567
inline.NumDeleted: 747
begin_hunk_0_@_ZN2v88internal29ExperimentalRegExpInterpreter11FindMatchesEPNS0_7IsolateENS0_6RegExp10CallOriginENS0_6TaggedINS0_16TrustedByteArrayEEEiNS6_INS0_6StringEEEiPiiPNS0_4ZoneE:bb.a
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN2v88internal6String18SlowGetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE(ptr dead_on_unwind writable sret(%"class.v8::internal::String::FlatContent") align 8, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #3

declare void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i64 } @_ZN2v88internal12_GLOBAL__N_117ToCharacterVectorIhEENS_4base6VectorIKT_EENS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSC_2EEEE(i64 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.v8::internal::SharedStringAccessGuardIfNeeded", align 8 ; 6 uses
  %3 = alloca %"class.v8::internal::String::FlatContent", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.a = add i64 %0, -1
  %i.b = inttoptr i64 %i.a to ptr                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8, !noalias !48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !51, !noalias !48
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !noalias !54
  %i.e = load atomic volatile i64, ptr %i.b acquire, align 8, !noalias !57
  %i.f = add i64 %i.e, 11
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i16, ptr %i.g monotonic, align 2, !noalias !57
  %i.i = and i16 %i.h, 15
  switch i16 %i.i, label %bb.l [
    i16 8, label %bb.b
    i16 0, label %bb.c
    i16 9, label %bb.m
    i16 1, label %bb.m
    i16 10, label %bb.d
    i16 2, label %bb.h
    i16 11, label %bb.m
    i16 3, label %bb.m
    i16 13, label %bb.m
    i16 5, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !60
  %i.n = inttoptr i64 %i.m to ptr                 ; 6 uses
  %i.o = load atomic volatile i64, ptr %i.b monotonic, align 8, !noalias !60
  %i.p = add i64 %i.o, 11
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i16, ptr %i.q monotonic, align 2, !noalias !60
  %i.s = and i16 %i.r, 16
  %.not.i = icmp eq i16 %i.s, 0
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.n, align 8, !noalias !60
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !noalias !60
  %i.w = tail call noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.n) #8, !noalias !60, !inline_history !22
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #8, !noalias !60
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !noalias !60
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.z = load ptr, ptr %i.n, align 8, !noalias !60
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !60
  %i.ac = tail call noundef ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #8, !noalias !60, !inline_history !22
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.h:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !65
  %i.af = inttoptr i64 %i.ae to ptr               ; 6 uses
  %i.ag = load atomic volatile i64, ptr %i.b monotonic, align 8, !noalias !65
  %i.ah = add i64 %i.ag, 11
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load atomic volatile i16, ptr %i.ai monotonic, align 2, !noalias !65
  %i.ak = and i16 %i.aj, 16
  %.not.i1 = icmp eq i16 %i.ak, 0
  br i1 %.not.i1, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = load ptr, ptr %i.af, align 8, !noalias !65
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !noalias !65
  %i.ao = tail call noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.af) #8, !noalias !65, !inline_history !26
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #8, !noalias !65
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !65
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.ar = load ptr, ptr %i.af, align 8, !noalias !65
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.at = load ptr, ptr %i.as, align 8, !noalias !65
  %i.au = tail call noundef ptr %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #8, !noalias !65, !inline_history !26
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.l:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #9, !noalias !68
  unreachable

_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit: ; preds = %bb.j, %bb.f, %bb.k, %bb.g, %bb.c, %bb.b
  %.sroa.04.sroa.0.0.ph = phi ptr [ %i.aq, %bb.j ], [ %i.y, %bb.f ], [ %i.au, %bb.k ], [ %i.ac, %bb.g ], [ %i.k, %bb.c ], [ %i.j, %bb.b ]
  %.sroa.04.sroa.8.0.ph = phi i32 [ 2, %bb.j ], [ 1, %bb.f ], [ 2, %bb.k ], [ 1, %bb.g ], [ 2, %bb.c ], [ 1, %bb.b ]
  store ptr %.sroa.04.sroa.0.0.ph, ptr %3, align 8
  %.sroa.04.sroa.7.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.d, ptr %.sroa.04.sroa.7.0..sroa_idx42, align 8
  %.sroa.04.sroa.8.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %.sroa.04.sroa.8.0.ph, ptr %.sroa.04.sroa.8.0..sroa_idx48, align 4
  %.sroa.04.sroa.9.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %1, ptr %.sroa.04.sroa.9.0..sroa_idx54, align 8
  br label %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.m:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  call void @_ZN2v88internal6String18SlowGetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::String::FlatContent") align 8 %3, ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #8
  br label %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit

_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit, %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 8, !range !28, !noundef !29
  %i.ax = trunc nuw i8 %i.aw to i1
  store i8 0, ptr %i.av, align 8
  br i1 %i.ax, label %bb.n, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.n:                                             ; preds = %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit
  %i.ay = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ay) #8
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit: ; preds = %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8, !noalias !48
  %i.az = load ptr, ptr %3, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bb = load i32, ptr %i.ba, align 8
  %i.bc = zext i32 %i.bb to i64
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.az, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.bc, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal10ZoneVectorINS1_IbEEE12emplace_backIJiRPNS0_4ZoneEEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %_ZN2v88internal10ZoneVectorINS1_IbEEE21EnsureOneMoreCapacityEv.exit, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 5
  %i.l = add nsw i64 %i.k, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS1_IbEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.l)
  %.pre = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal10ZoneVectorINS1_IbEEE21EnsureOneMoreCapacityEv.exit

_ZN2v88internal10ZoneVectorINS1_IbEEE21EnsureOneMoreCapacityEv.exit: ; preds = %bb.a, %bb.b
  %i.m = phi ptr [ %i.b, %bb.a ], [ %.pre, %bb.b ] ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %i.n, ptr %i.a, align 8
  %i.o = load i32, ptr %1, align 4                ; 2 uses
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %i.q = load ptr, ptr %2, align 8                ; 4 uses
  store ptr %i.q, ptr %i.m, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  switch i32 %i.o, label %bb.d [
    i32 0, label %.thread.i
    i32 -1, label %bb.c
  ], !prof !69

.thread.i:                                        ; preds = %_ZN2v88internal10ZoneVectorINS1_IbEEE21EnsureOneMoreCapacityEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  br label %_ZN2v88internal10ZoneVectorIbEC2EmPNS0_4ZoneE.exit

bb.c:                                             ; preds = %_ZN2v88internal10ZoneVectorINS1_IbEEE21EnsureOneMoreCapacityEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9
  unreachable

bb.d:                                             ; preds = %_ZN2v88internal10ZoneVectorINS1_IbEEE21EnsureOneMoreCapacityEv.exit
  %i.u = add nsw i64 %i.p, 7
  %i.v = and i64 %i.u, -8                         ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = sub i64 %i.x, %i.z
  %i.ab = icmp ugt i64 %i.v, %i.aa
  br i1 %i.ab, label %bb.e, label %.lr.ph.preheader.i, !prof !31

bb.e:                                             ; preds = %bb.d
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.q, i64 noundef %i.v) #8
  %.pre.i.i.i = load i64, ptr %i.y, align 8
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.e, %bb.d
  %i.ac = phi i64 [ %.pre.i.i.i, %bb.e ], [ %i.z, %bb.d ] ; 2 uses
  %i.ad = inttoptr i64 %i.ac to ptr               ; 3 uses
  %i.ae = add i64 %i.ac, %i.v
  store i64 %i.ae, ptr %i.y, align 8
  store ptr %i.ad, ptr %i.r, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.p ; 2 uses
  store ptr %i.af, ptr %i.t, align 8
  store ptr %i.af, ptr %i.s, align 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.09.i = phi ptr [ %i.ag, %.lr.ph.i ], [ %i.ad, %.lr.ph.preheader.i ] ; 2 uses
  store i8 0, ptr %.09.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %.09.i, i64 1 ; 2 uses
  %i.ah = load ptr, ptr %i.s, align 8
  %i.ai = icmp ult ptr %i.ag, %i.ah
  br i1 %i.ai, label %.lr.ph.i, label %_ZN2v88internal10ZoneVectorIbEC2EmPNS0_4ZoneE.exit, !llvm.loop !70

_ZN2v88internal10ZoneVectorIbEC2EmPNS0_4ZoneE.exit: ; preds = %.lr.ph.i, %.thread.i
  ret ptr %i.m
}

declare preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8ZoneListIbE6ResizeEiPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not.i = icmp eq i32 %1, -1
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = sext i32 %1 to i64
  %i.b = add nsw i64 %i.a, 7
  %i.c = and i64 %i.b, -8                         ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = sub i64 %i.e, %i.g
  %i.i = icmp ugt i64 %i.c, %i.h
  br i1 %i.i, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayIbA_bEEPT_m.exit, !prof !31

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %i.c) #8
  %.pre.i.i = load i64, ptr %i.f, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIbA_bEEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIbA_bEEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.j = phi i64 [ %.pre.i.i, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr                 ; 18 uses
  %i.l = add i64 %i.j, %i.c
  store i64 %i.l, ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = load i32, ptr %i.m, align 4              ; 3 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %bb.e, label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIbA_bEEPT_m.exit
  %i.p = load ptr, ptr %0, align 8                ; 17 uses
  switch i32 %i.n, label %bb.v [
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 4, label %bb.i
    i32 5, label %bb.j
    i32 6, label %bb.k
    i32 7, label %bb.l
    i32 8, label %bb.m
    i32 9, label %bb.n
    i32 10, label %bb.o
    i32 11, label %bb.p
    i32 12, label %bb.q
    i32 13, label %bb.r
    i32 14, label %bb.s
    i32 15, label %bb.t
    i32 16, label %bb.u
  ]

bb.f:                                             ; preds = %bb.e
  %i.q = load i8, ptr %i.p, align 1
  store i8 %i.q, ptr %i.k, align 1
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.g:                                             ; preds = %bb.e
  %i.r = load i16, ptr %i.p, align 1
  store i16 %i.r, ptr %i.k, align 1
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.h:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.k, ptr noundef nonnull align 1 dereferenceable(3) %i.p, i64 3, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.i:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.p, align 1
  store i32 %i.s, ptr %i.k, align 1
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.j:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.k, ptr noundef nonnull align 1 dereferenceable(5) %i.p, i64 5, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.k:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.k, ptr noundef nonnull align 1 dereferenceable(6) %i.p, i64 6, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.l:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.k, ptr noundef nonnull align 1 dereferenceable(7) %i.p, i64 7, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.m:                                             ; preds = %bb.e
  %i.t = load i64, ptr %i.p, align 1
  store i64 %i.t, ptr %i.k, align 1
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.n:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.k, ptr noundef nonnull align 1 dereferenceable(9) %i.p, i64 9, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.o:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.k, ptr noundef nonnull align 1 dereferenceable(10) %i.p, i64 10, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.p:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.k, ptr noundef nonnull align 1 dereferenceable(11) %i.p, i64 11, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.q:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.k, ptr noundef nonnull align 1 dereferenceable(12) %i.p, i64 12, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.r:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.k, ptr noundef nonnull align 1 dereferenceable(13) %i.p, i64 13, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.s:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.k, ptr noundef nonnull align 1 dereferenceable(14) %i.p, i64 14, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.t:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.k, ptr noundef nonnull align 1 dereferenceable(15) %i.p, i64 15, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.u:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.k, ptr noundef nonnull align 1 dereferenceable(16) %i.p, i64 16, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.v:                                             ; preds = %bb.e
  %i.u = zext nneg i32 %i.n to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.p, i64 %i.u, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

_ZN2v88internal7MemCopyEPvPKvm.exit:              ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %_ZN2v88internal4Zone13AllocateArrayIbA_bEEPT_m.exit
  store ptr %i.k, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.v, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS1_IbEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
end_hunk_0
