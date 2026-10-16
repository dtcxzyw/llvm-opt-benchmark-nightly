Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/js-objects?download=true
inline.NumInlined: 7694
inline.NumDeleted: 2227
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN2v88internal8JSObject21SetNormalizedPropertyENS0_12DirectHandleIS1_EENS2_INS0_4NameEEENS2_INS0_6ObjectEEENS0_15PropertyDetailsE:bb.a
  %i.et = add i64 %i.es, 11
  %i.eu = inttoptr i64 %i.et to ptr
  %i.ev = load atomic volatile i16, ptr %i.eu monotonic, align 2
  %i.ew = icmp eq i16 %i.ev, 128
  br i1 %i.ew, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eq, i64 12
  %i.ey = load i32, ptr %i.ex, align 4
  %i.ez = and i32 %i.ey, 8
  %.not.i = icmp eq i32 %i.ez, 0
  br i1 %.not.i, label %bb.t, label %_ZN2v88internal4Name13IsInterestingEPNS0_7IsolateE.exit.thread

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 7616
  %i.fb = load i64, ptr %i.fa, align 8
  %i.fc = icmp eq i64 %i.er, %i.fb
  br i1 %i.fc, label %_ZN2v88internal4Name13IsInterestingEPNS0_7IsolateE.exit.thread, label %_ZN2v88internal4Name13IsInterestingEPNS0_7IsolateE.exit

_ZN2v88internal4Name13IsInterestingEPNS0_7IsolateE.exit: ; preds = %bb.t
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 6192
  %i.fe = load i64, ptr %i.fd, align 8
  %i.ff = icmp eq i64 %i.er, %i.fe
  br i1 %i.ff, label %_ZN2v88internal4Name13IsInterestingEPNS0_7IsolateE.exit.thread, label %_ZN2v88internal14JSGlobalObject21set_global_dictionaryENS0_6TaggedINS0_16GlobalDictionaryEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit

_ZN2v88internal4Name13IsInterestingEPNS0_7IsolateE.exit.thread: ; preds = %bb.s, %bb.t, %_ZN2v88internal4Name13IsInterestingEPNS0_7IsolateE.exit
  %i.fg = load i64, ptr %.sroa.086.0, align 8
  %i.fh = add i64 %i.fg, -1
  %i.fi = inttoptr i64 %i.fh to ptr
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 56 ; 2 uses
  %i.fk = load atomic volatile i64, ptr %i.fj monotonic, align 8
  %.mask.i = and i64 %i.fk, -8589934592
  %sext.i = or disjoint i64 %.mask.i, 4294967296
  store atomic volatile i64 %sext.i, ptr %i.fj monotonic, align 8
  br label %_ZN2v88internal14JSGlobalObject21set_global_dictionaryENS0_6TaggedINS0_16GlobalDictionaryEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit

_ZN2v88internal14JSGlobalObject21set_global_dictionaryENS0_6TaggedINS0_16GlobalDictionaryEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit: ; preds = %_ZN2v88internal4Name13IsInterestingEPNS0_7IsolateE.exit, %_ZN2v88internal4Name13IsInterestingEPNS0_7IsolateE.exit.thread, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE9FindEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEEi.exit, %.loopexit, %bb.j, %bb.k
  ret void
}

declare ptr @_ZN2v88internal7Factory15NewPropertyCellENS0_12DirectHandleINS0_4NameEEENS0_15PropertyDetailsENS2_INS0_6ObjectEEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i32, ptr, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @_ZN2v88internal18BaseNameDictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE3AddINS0_12DirectHandleEQsr3stdE16is_convertible_vITL0__IT_ENS6_IS8_EEEEET_IS2_EPNS0_7IsolateESC_NS6_INS0_4NameEEENS6_INS0_6ObjectEEENS0_15PropertyDetailsEPNS0_13InternalIndexE(ptr noundef, ptr, ptr, ptr, i32, ptr noundef) local_unnamed_addr #2

declare ptr @_ZN2v88internal12PropertyCell21PrepareForAndSetValueEPNS0_7IsolateENS0_12DirectHandleINS0_16GlobalDictionaryEEENS0_13InternalIndexENS4_INS0_6ObjectEEENS0_15PropertyDetailsE(ptr noundef, ptr, i64, ptr, i32) local_unnamed_addr #2

declare ptr @_ZN2v88internal18BaseNameDictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE3AddINS0_12DirectHandleEQsr3stdE16is_convertible_vITL0__IT_ENS6_IS8_EEEEET_IS2_EPNS0_7IsolateESC_NS6_INS0_4NameEEENS6_INS0_6ObjectEEENS0_15PropertyDetailsEPNS0_13InternalIndexE(ptr noundef, ptr, ptr, ptr, i32, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
declare void @_ZN2v88internal10DictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE8SetEntryENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEES8_NS0_15PropertyDetailsE(ptr noundef nonnull align 4 dereferenceable(16), i64, i64, i64, i32) local_unnamed_addr #3 align 2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8JSObject20SetNormalizedElementENS0_12DirectHandleIS1_EEjNS2_INS0_6ObjectEEENS0_15PropertyDetailsE(ptr %0, i32 noundef %1, ptr %2, i32 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = add i64 %i.c, 15
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 560 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %bb.b, label %_ZN2v88internal6HandleINS0_16NumberDictionaryEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.b) #21
  br label %_ZN2v88internal6HandleINS0_16NumberDictionaryEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_16NumberDictionaryEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.l, %bb.b ], [ %i.h, %bb.a ] ; 3 uses
  %i.m = ptrtoint ptr %.0.i.i to i64
  %i.n = add i64 %i.m, 8
  %i.o = inttoptr i64 %i.n to ptr
  store ptr %i.o, ptr %i.g, align 8
  store i64 %i.f, ptr %.0.i.i, align 8
  %i.p = tail call ptr @_ZN2v88internal16NumberDictionary3SetINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEES5_PNS0_7IsolateES5_jNS3_INS0_6ObjectEEENS3_INS0_8JSObjectEEENS0_15PropertyDetailsE(ptr noundef nonnull %i.b, ptr nonnull %.0.i.i, i32 noundef %1, ptr %2, ptr nonnull %0, i32 %3) #21
  %i.q = load i64, ptr %0, align 8                ; 4 uses
  %i.r = load i64, ptr %i.p, align 8              ; 5 uses
  %i.s = add i64 %i.q, 15                         ; 3 uses
  %i.t = inttoptr i64 %i.s to ptr
  store atomic volatile i64 %i.r, ptr %i.t monotonic, align 8
  %i.u = trunc i64 %i.r to i1
  br i1 %i.u, label %bb.c, label %_ZN2v88internal8JSObject12set_elementsENS0_6TaggedINS0_14FixedArrayBaseEEENS0_16WriteBarrierModeE.exit

bb.c:                                             ; preds = %_ZN2v88internal6HandleINS0_16NumberDictionaryEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.v = and i64 %i.q, -262144
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load i64, ptr %i.w, align 262144         ; 2 uses
  %i.y = and i64 %i.x, 32
  %.not.i.i.i = icmp eq i64 %i.y, 0
  %i.z = and i64 %i.x, 25
  %.not37.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not37.i.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.aa = and i64 %i.r, -262144
  %i.ab = inttoptr i64 %i.aa to ptr
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.ab, align 262144
  %i.ac = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 25
  %.not38.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not38.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.q, i64 noundef %i.s, i64 %i.r) #21
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  br i1 %.not.i.i.i, label %_ZN2v88internal8JSObject12set_elementsENS0_6TaggedINS0_14FixedArrayBaseEEENS0_16WriteBarrierModeE.exit, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.q, i64 %i.s, i64 %i.r) #21
  br label %_ZN2v88internal8JSObject12set_elementsENS0_6TaggedINS0_14FixedArrayBaseEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal8JSObject12set_elementsENS0_6TaggedINS0_14FixedArrayBaseEEENS0_16WriteBarrierModeE.exit: ; preds = %_ZN2v88internal6HandleINS0_16NumberDictionaryEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.f, %bb.g
  ret void
}

declare ptr @_ZN2v88internal16NumberDictionary3SetINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEES5_PNS0_7IsolateES5_jNS3_INS0_6ObjectEEENS3_INS0_8JSObjectEEENS0_15PropertyDetailsE(ptr noundef, ptr, i32 noundef, ptr, ptr, i32) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8JSObject18JSObjectShortPrintEPNS0_12StringStreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca [1 x %"class.v8::internal::StringStream::FmtElm"], align 8 ; 4 uses
  %3 = alloca [1 x %"class.v8::internal::StringStream::FmtElm"], align 8 ; 4 uses
  %4 = alloca [1 x %"class.v8::internal::StringStream::FmtElm"], align 8 ; 4 uses
  %5 = alloca %"class.std::unique_ptr.602", align 8 ; 6 uses
  %6 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.585", align 8 ; 4 uses
  %7 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.585", align 8 ; 4 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8 ; 4 uses
  %i.a = add i64 %.sroa.0.0.copyload.i.i.i, -1
  %i.b = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = add i64 %i.c, 11
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i16, ptr %i.e monotonic, align 2
  switch i16 %i.f, label %bb.ad [
    i16 2119, label %bb.b
    i16 2063, label %bb.g
    i16 2116, label %bb.h
    i16 2117, label %bb.i
    i16 2137, label %bb.j
    i16 2079, label %bb.m
    i16 2080, label %bb.m
    i16 2078, label %bb.m
    i16 2077, label %bb.m
    i16 2073, label %bb.m
    i16 2074, label %bb.m
    i16 2071, label %bb.m
    i16 2075, label %bb.m
    i16 2072, label %bb.m
    i16 2067, label %bb.m
    i16 2066, label %bb.m
    i16 2076, label %bb.m
    i16 2069, label %bb.m
    i16 2070, label %bb.m
    i16 2068, label %bb.m
    i16 2081, label %bb.m
    i16 2065, label %bb.m
    i16 2109, label %bb.t
    i16 2110, label %bb.u
    i16 2111, label %bb.v
    i16 2104, label %bb.w
    i16 2105, label %bb.x
    i16 2103, label %bb.y
    i16 2102, label %bb.z
    i16 2133, label %bb.aa
    i16 2129, label %bb.ab
    i16 265, label %bb.ac
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %.sroa.0.0.copyload.i.i.i, 23
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 8              ; 4 uses
  %i.j = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 10624
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp eq i64 %i.i, %i.n
  br i1 %i.o, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = and i64 %i.i, 1
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = lshr i64 %i.i, 32
  %i.s = trunc nuw i64 %i.r to i32
  %i.t = sitofp i32 %i.s to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit

bb.e:                                             ; preds = %bb.c
  %i.u = add nsw i64 %i.i, -1
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.0.copyload.i.i.i.i.i = load double, ptr %i.w, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit: ; preds = %bb.d, %bb.e
  %i.x = phi double [ %i.t, %bb.d ], [ %.0.copyload.i.i.i.i.i, %bb.e ]
  %i.y = fptoui double %i.x to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit
  %i.z = phi i32 [ %i.y, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit ], [ 0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store i32 %i.z, ptr %4, align 8
  call void @_ZN2v88internal12StringStream3AddENS_4base6VectorIKcEENS3_INS1_6FmtElmEEE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nonnull @.str.10, i64 13, ptr nonnull %4, i64 1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.ap

bb.g:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal12StringStream3AddENS_4base6VectorIKcEENS3_INS1_6FmtElmEEE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nonnull @.str.11, i64 16, ptr null, i64 0) #21
  %i.aa = add i64 %.sroa.0.0.copyload.i.i.i, 23
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = inttoptr i64 %i.ac to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr %i.ad, ptr %3, align 8
  call void @_ZN2v88internal12StringStream3AddENS_4base6VectorIKcEENS3_INS1_6FmtElmEEE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nonnull @.str.12, i64 26, ptr nonnull %3, i64 1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.ap

bb.h:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal12StringStream3AddENS_4base6VectorIKcEENS3_INS1_6FmtElmEEE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nonnull @.str.13, i64 11, ptr null, i64 0) #21
  br label %bb.ap

bb.i:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal12StringStream3AddENS_4base6VectorIKcEENS3_INS1_6FmtElmEEE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nonnull @.str.14, i64 11, ptr null, i64 0) #21
  br label %bb.ap

bb.j:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal12StringStream3AddENS_4base6VectorIKcEENS3_INS1_6FmtElmEEE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nonnull @.str.15, i64 9, ptr null, i64 0) #21
  %.sroa.032.0.copyload = load i64, ptr %0, align 8
  %i.ae = add i64 %.sroa.032.0.copyload, 31
  %i.af = inttoptr i64 %i.ae to ptr               ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = add i64 %i.ag, -1
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load atomic volatile i64, ptr %i.ai monotonic, align 8
  %i.ak = add i64 %i.aj, 11
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load atomic volatile i16, ptr %i.al monotonic, align 2
  %i.an = icmp ult i16 %i.am, 128
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN2v88internal12StringStream3AddEPKc(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.16)
  %i.ao = load i64, ptr %i.af, align 8
  %i.ap = add i64 %i.ao, -1
  %i.aq = inttoptr i64 %i.ap to ptr
  tail call void @_ZN2v88internal6String16StringShortPrintEPNS0_12StringStreamE(ptr noundef nonnull align 4 dereferenceable(16) %i.aq, ptr noundef nonnull %1) #21
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void @_ZN2v88internal12StringStream3AddENS_4base6VectorIKcEENS3_INS1_6FmtElmEEE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nonnull @.str.17, i64 1, ptr null, i64 0) #21
  br label %bb.ap

bb.m:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.ar = add i64 %.sroa.0.0.copyload.i.i.i, 31
  %i.as = inttoptr i64 %i.ar to ptr               ; 3 uses
  %i.at = load atomic volatile i64, ptr %i.as monotonic, align 8
  store i64 %i.at, ptr %6, align 8
  call void @_ZNK2v88internal18SharedFunctionInfo13DebugNameCStrEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.602") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.au = load ptr, ptr %5, align 8
  %i.av = load i8, ptr %i.au, align 1
  %.not = icmp eq i8 %i.av, 0
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZN2v88internal12StringStream3AddENS_4base6VectorIKcEENS3_INS1_6FmtElmEEE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nonnull @.str.18, i64 12, ptr null, i64 0) #21
  %i.aw = load ptr, ptr %5, align 8               ; 2 uses
  %i.ax = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #26
  call void @_ZN2v88internal12StringStream3AddENS_4base6VectorIKcEENS3_INS1_6FmtElmEEE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nonnull %i.aw, i64 %i.ax, ptr null, i64 0) #21
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  call void @_ZN2v88internal12StringStream3AddENS_4base6VectorIKcEENS3_INS1_6FmtElmEEE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nonnull @.str.19, i64 11, ptr null, i64 0) #21
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ay = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1440), align 32, !range !7, !noundef !8
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.q, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.ba = load atomic volatile i64, ptr %i.as monotonic, align 8
  %i.bb = add i64 %i.ba, 39
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = load atomic volatile i64, ptr %i.bc acquire, align 8
  %i.be = add i64 %i.bd, 15
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = load i64, ptr %i.bf, align 8            ; 3 uses
  %i.bh = trunc i64 %i.bg to i1
  br i1 %i.bh, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.q
  %i.bi = add nsw i64 %i.bg, -1
  %i.bj = inttoptr i64 %i.bi to ptr               ; 2 uses
  %i.bk = load atomic volatile i64, ptr %i.bj monotonic, align 8
  %i.bl = add i64 %i.bk, 11
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = load atomic volatile i16, ptr %i.bm monotonic, align 2
  %i.bo = icmp ult i16 %i.bn, 128
  br i1 %i.bo, label %bb.r, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.r:                                             ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %i.bq = load i32, ptr %i.bp, align 4
  %.not81 = icmp eq i32 %i.bq, 0
  br i1 %.not81, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZN2v88internal12StringStream3AddENS_4base6VectorIKcEENS3_INS1_6FmtElmEEE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nonnull @.str.20, i64 2, ptr null, i64 0) #21
  %i.br = call noundef zeroext i1 @_ZN2v88internal12StringStream3PutENS0_6TaggedINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 %i.bg) #21 ; 0 uses
  call void @_ZN2v88internal12StringStream3AddENS_4base6VectorIKcEENS3_INS1_6FmtElmEEE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nonnull @.str.17, i64 1, ptr null, i64 0) #21
  br label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.q, %bb.r, %bb.s, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit, %bb.p
  %i.bs = load atomic volatile i64, ptr %i.as monotonic, align 8
  %i.bt = inttoptr i64 %i.bs to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr %i.bt, ptr %2, align 8
  call void @_ZN2v88internal12StringStream3AddENS_4base6VectorIKcEENS3_INS1_6FmtElmEEE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nonnull @.str.21, i64 11, ptr nonnull %2, i64 1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.bu = call noundef zeroext i1 @_ZN2v88internal12StringStream3PutEc(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef signext 62) #21 ; 0 uses
  %i.bv = load ptr, ptr %5, align 8               ; 2 uses
  %.not.i = icmp eq ptr %i.bv, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread
  call void @_ZdaPv(ptr noundef nonnull %i.bv) #25
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.ap

bb.t:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal12StringStream3AddENS_4base6VectorIKcEENS3_INS1_6FmtElmEEE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nonnull @.str.22, i64 13, ptr null, i64 0) #21
  br label %bb.ap

bb.u:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal12StringStream3AddENS_4base6VectorIKcEENS3_INS1_6FmtElmEEE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nonnull @.str.23, i64 23, ptr null, i64 0) #21
  br label %bb.ap

bb.v:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal12StringStream3AddENS_4base6VectorIKcEENS3_INS1_6FmtElmEEE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nonnull @.str.24, i64 19, ptr null, i64 0) #21
  br label %bb.ap

bb.w:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal12StringStream3AddENS_4base6VectorIKcEENS3_INS1_6FmtElmEEE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nonnull @.str.25, i64 15, ptr null, i64 0) #21
  br label %bb.ap

bb.x:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal12StringStream3AddENS_4base6VectorIKcEENS3_INS1_6FmtElmEEE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nonnull @.str.26, i64 16, ptr null, i64 0) #21
  br label %bb.ap

bb.y:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal12StringStream3AddENS_4base6VectorIKcEENS3_INS1_6FmtElmEEE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nonnull @.str.27, i64 16, ptr null, i64 0) #21
  br label %bb.ap

bb.z:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal12StringStream3AddENS_4base6VectorIKcEENS3_INS1_6FmtElmEEE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nonnull @.str.28, i64 20, ptr null, i64 0) #21
  br label %bb.ap

bb.aa:                                            ; preds = %bb.a
  tail call void @_ZN2v88internal12StringStream3AddENS_4base6VectorIKcEENS3_INS1_6FmtElmEEE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nonnull @.str.29, i64 17, ptr null, i64 0) #21
  br label %bb.ap

bb.ab:                                            ; preds = %bb.a
  tail call void @_ZN2v88internal12StringStream3AddENS_4base6VectorIKcEENS3_INS1_6FmtElmEEE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nonnull @.str.30, i64 18, ptr null, i64 0) #21
  br label %bb.ap

bb.ac:                                            ; preds = %bb.a
  tail call void @_ZN2v88internal12StringStream3AddENS_4base6VectorIKcEENS3_INS1_6FmtElmEEE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nonnull @.str.31, i64 23, ptr null, i64 0) #21
  br label %bb.ap

bb.ad:                                            ; preds = %bb.a
  %i.bw = load atomic volatile i64, ptr %i.b monotonic, align 8 ; 4 uses
  %i.bx = add i64 %i.bw, 31
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = load i64, ptr %i.by, align 8            ; 3 uses
  %i.ca = add i64 %i.bw, -1
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = load atomic volatile i64, ptr %i.cb monotonic, align 8
  %i.cd = trunc i64 %i.bz to i1
  br i1 %i.cd, label %_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i, label %_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i

_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i: ; preds = %bb.ad, %bb.ae
  %.sroa.06.020.i.i.i = phi i64 [ %i.ck, %bb.ae ], [ %i.bz, %bb.ad ] ; 3 uses
  %i.ce = add nsw i64 %.sroa.06.020.i.i.i, -1
  %i.cf = inttoptr i64 %i.ce to ptr
end_hunk_0
begin_hunk_1_@_ZN2v88internal8JSObject11SetAccessorENS0_12DirectHandleIS1_EENS2_INS0_4NameEEENS2_INS0_12AccessorInfoEEENS0_18PropertyAttributesE:bb.a
; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN2v88internal8JSObject17SlowReverseLookupENS0_6TaggedINS0_6ObjectEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::Representation", align 1 ; 4 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8 ; 2 uses
  %i.a = add i64 %.sroa.0.0.copyload.i.i.i, 7
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8 ; 2 uses
  %i.d = add i64 %.sroa.0.0.copyload.i.i.i, -1
  %i.e = inttoptr i64 %i.d to ptr                 ; 3 uses
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = add i64 %i.f, 15
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i32, ptr %i.h monotonic, align 4
  %i.j = and i32 %i.i, 2097152
  %.not.i.i = icmp eq i32 %i.j, 0
  %i.k = load atomic volatile i64, ptr %i.e monotonic, align 8 ; 2 uses
  br i1 %.not.i.i, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.l = add i64 %i.k, 39
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load i64, ptr %i.m, align 8              ; 5 uses
  %i.o = and i64 %1, 1
  %i.p = icmp eq i64 %i.o, 0                      ; 2 uses
  br i1 %i.p, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = add nsw i64 %1, -1
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load atomic volatile i64, ptr %i.r monotonic, align 8
  %i.t = add i64 %i.s, 11
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load atomic volatile i16, ptr %i.u monotonic, align 2
  %i.w = icmp eq i16 %i.v, 130
  br label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i1 [ %i.w, %bb.c ], [ true, %bb.b ]
  %i.x = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.y = add i64 %i.x, 15
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load atomic volatile i32, ptr %i.z acquire, align 4
  %i.ab = lshr i32 %i.aa, 10
  %i.ac = and i32 %i.ab, 1023                     ; 2 uses
  %i.ad = zext nneg i32 %i.ac to i64
  %.not144 = icmp eq i32 %i.ac, 0
  %.pre = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8 ; 2 uses
  br i1 %.not144, label %.critedge55, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ae = add i64 %i.n, 7
  %i.af = add i64 %i.n, 15
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.pre, i64 10624
  %i.ag = add nsw i64 %1, -1
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = lshr i64 %1, 32
  %i.ak = trunc nuw i64 %i.aj to i32
  %i.al = sitofp i32 %i.ak to double
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.critedge
  %.sroa.087.0145 = phi i64 [ 0, %.lr.ph ], [ %i.ea, %.critedge ] ; 2 uses
  %i.am = mul nuw nsw i64 %.sroa.087.0145, 103079215104
  %sext.i = add nuw nsw i64 %i.am, 137438953472
  %i.an = lshr exact i64 %sext.i, 32              ; 5 uses
  %i.ao = add i64 %i.ae, %i.an
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load atomic volatile i64, ptr %i.ap monotonic, align 8 ; 2 uses
  %i.ar = lshr i64 %i.aq, 32
  %i.as = trunc nuw i64 %i.ar to i32              ; 3 uses
  %i.at = and i32 %i.as, 32
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d
  %.sroa.0.0.copyload.i.i.i59 = load i64, ptr %0, align 8 ; 2 uses
  %i.av = add i64 %.sroa.0.0.copyload.i.i.i59, -1 ; 2 uses
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = load atomic volatile i64, ptr %i.aw monotonic, align 8 ; 2 uses
  %i.ay = lshr i32 %i.as, 19
  %i.az = and i32 %i.ay, 1023                     ; 3 uses
  %i.ba = lshr i64 %i.aq, 38                      ; 2 uses
  %i.bb = trunc i64 %i.ba to i8
  %i.bc = and i8 %i.bb, 7                         ; 2 uses
  %i.bd = add i64 %i.ax, 7
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load atomic volatile i8, ptr %i.be monotonic, align 1
  %i.bg = zext i8 %i.bf to i32
  %i.bh = add i64 %i.ax, 8
  %i.bi = inttoptr i64 %i.bh to ptr               ; 3 uses
  %i.bj = load atomic volatile i8, ptr %i.bi monotonic, align 1
  %i.bk = zext i8 %i.bj to i32
  %i.bl = sub nsw i32 %i.bg, %i.bk                ; 3 uses
  %i.bm = icmp slt i32 %i.az, %i.bl               ; 2 uses
  br i1 %i.bm, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bn = load atomic volatile i8, ptr %i.bi monotonic, align 1
  %i.bo = zext i8 %i.bn to i64
  %i.bp = shl nuw nsw i64 %i.bo, 30
  %i.bq = load atomic volatile i8, ptr %i.bi monotonic, align 1
  %i.br = zext i8 %i.bq to i32
  %i.bs = add nuw nsw i32 %i.az, %i.br
  %i.bt = shl nuw nsw i32 %i.bs, 3
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bu = sub nsw i32 %i.az, %i.bl
  %i.bv = shl nuw nsw i32 %i.bu, 3
  %i.bw = add nuw nsw i32 %i.bv, 16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.013.i.i = phi i64 [ %i.bp, %bb.f ], [ 2147483648, %bb.g ]
  %.0.i.i = phi i32 [ %i.bt, %bb.f ], [ %i.bw, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i8 %i.bc, ptr %2, align 1
  %i.bx = icmp samesign ult i8 %i.bc, 5
  br i1 %i.bx, label %switch.lookup, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.by = call noundef ptr @_ZNK2v88internal14Representation8MnemonicEv(ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.84, ptr noundef %i.by) #21
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #23
  unreachable

switch.lookup:                                    ; preds = %bb.h
  %i.bz = and i64 %i.ba, 7
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN2v88internal8JSObject12WriteToFieldENS0_13InternalIndexENS0_15PropertyDetailsENS0_6TaggedINS0_6ObjectEEE, i64 %i.bz
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ca = select i1 %i.bm, i64 16384, i64 0
  %i.cb = sext i32 %.0.i.i to i64                 ; 4 uses
  %i.cc = sext i32 %i.bl to i64
  %i.cd = shl nsw i64 %i.cc, 17
  %i.ce = or disjoint i64 %i.cd, %i.ca
  %i.cf = or i64 %.013.i.i, %i.ce
  %i.cg = or i64 %i.cf, %i.cb                     ; 2 uses
  %i.ch = and i64 %i.cg, 16384
  %.not.i.i60 = icmp eq i64 %i.ch, 0
  br i1 %.not.i.i60, label %bb.k, label %bb.j

bb.j:                                             ; preds = %switch.lookup
  %i.ci = and i64 %i.cb, 16383
  %i.cj = add i64 %i.av, %i.ci
  br label %_ZNK2v88internal8JSObject17RawFastPropertyAtENS0_10FieldIndexE.exit

bb.k:                                             ; preds = %switch.lookup
  %i.ck = add i64 %.sroa.0.0.copyload.i.i.i59, 7
  %i.cl = inttoptr i64 %i.ck to ptr
  %i.cm = load i64, ptr %i.cl, align 8            ; 3 uses
  %i.cn = and i64 %i.cm, 1
  %i.co = icmp eq i64 %i.cn, 0
  %.pre11.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8 ; 2 uses
  br i1 %i.co, label %.critedge.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cp = getelementptr inbounds nuw i8, ptr %.pre11.i.i.i, i64 312
  %i.cq = load i64, ptr %i.cp, align 8
  %i.cr = icmp eq i64 %i.cm, %i.cq
  br i1 %i.cr, label %.critedge.i.i.i, label %_ZNK2v88internal10JSReceiver14property_arrayENS0_16PtrComprCageBaseE.exit.i.i

.critedge.i.i.i:                                  ; preds = %bb.l, %bb.k
  %i.cs = getelementptr inbounds nuw i8, ptr %.pre11.i.i.i, i64 304
  %i.ct = load i64, ptr %i.cs, align 8
  br label %_ZNK2v88internal10JSReceiver14property_arrayENS0_16PtrComprCageBaseE.exit.i.i

_ZNK2v88internal10JSReceiver14property_arrayENS0_16PtrComprCageBaseE.exit.i.i: ; preds = %.critedge.i.i.i, %bb.l
  %.sroa.05.0.i.i.i = phi i64 [ %i.ct, %.critedge.i.i.i ], [ %i.cm, %bb.l ]
  %sh.diff.i.i = lshr i64 %i.cg, 27
  %i.cu = and i64 %sh.diff.i.i, 120
  %.mask.i.i = and i64 %i.cb, 16376
  %i.cv = add nuw nsw i64 %.mask.i.i, 15
  %i.cw = sub nsw i64 %i.cv, %i.cu
  %i.cx = add i64 %i.cw, %.sroa.05.0.i.i.i
  br label %_ZNK2v88internal8JSObject17RawFastPropertyAtENS0_10FieldIndexE.exit

_ZNK2v88internal8JSObject17RawFastPropertyAtENS0_10FieldIndexE.exit: ; preds = %bb.j, %_ZNK2v88internal10JSReceiver14property_arrayENS0_16PtrComprCageBaseE.exit.i.i
  %.sink9.i.i = phi i64 [ %i.cx, %_ZNK2v88internal10JSReceiver14property_arrayENS0_16PtrComprCageBaseE.exit.i.i ], [ %i.cj, %bb.j ]
  %i.cy = inttoptr i64 %.sink9.i.i to ptr
  %i.cz = load atomic volatile i64, ptr %i.cy monotonic, align 8 ; 2 uses
  %.masked = and i64 %i.cb, 98304
  %i.da = or i64 %.masked, %switch.ext
  %i.db = icmp eq i64 %i.da, 32768
  br i1 %i.db, label %bb.m, label %bb.q

bb.m:                                             ; preds = %_ZNK2v88internal8JSObject17RawFastPropertyAtENS0_10FieldIndexE.exit
  br i1 %.0.i, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.dc = add i64 %i.cz, -1
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.0.copyload.i.i.i.i = load double, ptr %i.de, align 1
  br i1 %i.p, label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.0.copyload.i.i.i.i.i = load double, ptr %i.ai, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit: ; preds = %bb.n, %bb.o
  %i.df = phi double [ %.0.copyload.i.i.i.i.i, %bb.o ], [ %i.al, %bb.n ]
  %i.dg = fcmp oeq double %.0.copyload.i.i.i.i, %i.df
  br i1 %i.dg, label %bb.p, label %.critedge

bb.p:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit
  %i.dh = add i64 %i.n, -1
  %i.di = add i64 %i.dh, %i.an
  %i.dj = inttoptr i64 %i.di to ptr
  %i.dk = load atomic volatile i64, ptr %i.dj monotonic, align 8
  br label %.critedge53

bb.q:                                             ; preds = %_ZNK2v88internal8JSObject17RawFastPropertyAtENS0_10FieldIndexE.exit
  %i.dl = icmp eq i64 %i.cz, %1
  br i1 %i.dl, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.dm = add i64 %i.n, -1
  %i.dn = add i64 %i.dm, %i.an
  %i.do = inttoptr i64 %i.dn to ptr
  %i.dp = load atomic volatile i64, ptr %i.do monotonic, align 8
  br label %.critedge53

bb.s:                                             ; preds = %bb.d
  %i.dq = and i32 %i.as, 1
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.ds = add i64 %i.af, %i.an
  %i.dt = inttoptr i64 %i.ds to ptr
  %i.du = load atomic volatile i64, ptr %i.dt monotonic, align 8
  %i.dv = icmp eq i64 %i.du, %1
  br i1 %i.dv, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  %i.dw = add i64 %i.n, -1
  %i.dx = add i64 %i.dw, %i.an
  %i.dy = inttoptr i64 %i.dx to ptr
  %i.dz = load atomic volatile i64, ptr %i.dy monotonic, align 8
  br label %.critedge53

.critedge:                                        ; preds = %bb.q, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit, %bb.m, %bb.t, %bb.s
  %i.ea = add nuw nsw i64 %.sroa.087.0145, 1      ; 2 uses
  %.not = icmp eq i64 %i.ea, %i.ad
  br i1 %.not, label %.critedge55, label %bb.d

.critedge55:                                      ; preds = %.critedge, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %.pre, i64 10624
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 96
  %i.ee = load i64, ptr %i.ed, align 8
  br label %.critedge53

bb.v:                                             ; preds = %bb.a
  %i.ef = add i64 %i.k, 11
  %i.eg = inttoptr i64 %i.ef to ptr
  %i.eh = load atomic volatile i16, ptr %i.eg monotonic, align 2
  %i.ei = icmp eq i16 %i.eh, 303
  br i1 %i.ei, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ej = load atomic volatile i64, ptr %i.b acquire, align 8
  %i.ek = add i64 %i.ej, -1
  %i.el = inttoptr i64 %i.ek to ptr
  %i.em = tail call i64 @_ZN2v88internal10DictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE17SlowReverseLookupENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 4 dereferenceable(16) %i.el, i64 %1) #21
  br label %.critedge53

bb.x:                                             ; preds = %bb.v
  %i.en = and i64 %i.c, 1
  %i.eo = icmp eq i64 %i.en, 0
  br i1 %i.eo, label %bb.y, label %_ZNK2v88internal10JSReceiver19property_dictionaryEv.exit

bb.y:                                             ; preds = %bb.x
  %i.ep = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 10624
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 1336
  %i.et = load i64, ptr %i.es, align 8
  br label %_ZNK2v88internal10JSReceiver19property_dictionaryEv.exit

_ZNK2v88internal10JSReceiver19property_dictionaryEv.exit: ; preds = %bb.x, %bb.y
  %.sroa.05.0.i.i = phi i64 [ %i.et, %bb.y ], [ %i.c, %bb.x ]
  %i.eu = add i64 %.sroa.05.0.i.i, -1
  %i.ev = inttoptr i64 %i.eu to ptr
  %i.ew = tail call i64 @_ZN2v88internal10DictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE17SlowReverseLookupENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 4 dereferenceable(16) %i.ev, i64 %1) #21
  br label %.critedge53

.critedge53:                                      ; preds = %.critedge55, %bb.p, %bb.r, %bb.u, %_ZNK2v88internal10JSReceiver19property_dictionaryEv.exit, %bb.w
  %.sroa.0100.3 = phi i64 [ %i.ew, %_ZNK2v88internal10JSReceiver19property_dictionaryEv.exit ], [ %i.em, %bb.w ], [ %i.ee, %.critedge55 ], [ %i.dz, %bb.u ], [ %i.dk, %bb.p ], [ %i.dp, %bb.r ]
  ret i64 %.sroa.0100.3
}

declare i64 @_ZN2v88internal10DictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE17SlowReverseLookupENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 4 dereferenceable(16), i64) local_unnamed_addr #2

declare i64 @_ZN2v88internal10DictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE17SlowReverseLookupENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 4 dereferenceable(16), i64) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @_ZN2v88internal8JSObject35PrototypeRegistryCompactionCallbackENS0_6TaggedINS0_10HeapObjectEEEii(i64 %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = add i64 %0, 63
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = sext i32 %2 to i64
  %i.e = shl nsw i64 %i.d, 32
  %i.f = add i64 %i.c, 31
  %i.g = inttoptr i64 %i.f to ptr
  store atomic volatile i64 %i.e, ptr %i.g monotonic, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8JSObject18MakePrototypesFastENS0_12DirectHandleINS0_6ObjectEEENS0_12WhereToStartEPNS0_7IsolateE(ptr nofree readonly captures(none) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit, label %.critedge

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.a
  %i.c = add nsw i64 %i.a, -1
  %i.d = inttoptr i64 %i.c to ptr                 ; 4 uses
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.f = add i64 %i.e, 11
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i16, ptr %i.g monotonic, align 2
  %i.i = icmp ugt i16 %i.h, 299
  br i1 %i.i, label %bb.b, label %.critedge

bb.b:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit
  %i.j = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.k = add i64 %i.j, 11
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load atomic volatile i16, ptr %i.l monotonic, align 2
  %i.n = and i16 %i.m, -2
  %i.o = icmp eq i16 %i.n, 300
  %i.p = icmp eq i32 %1, 1
  %i.q = or i1 %i.p, %i.o
  br i1 %i.q, label %bb.c, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.r = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.s = add i64 %i.r, 11
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load atomic volatile i16, ptr %i.t monotonic, align 2
  %i.v = icmp eq i16 %i.u, 302
  br i1 %i.v, label %.critedge, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.c
  %i.w = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.x = add i64 %i.w, 23
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load i64, ptr %i.y, align 8              ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 664
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = icmp eq i64 %i.z, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 568
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = icmp eq ptr %i.ae, %i.ag
  br i1 %i.ah, label %bb.d, label %_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit, !prof !9

bb.d:                                             ; preds = %.thread.i.i
  %i.ai = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #21
  br label %_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit

_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit: ; preds = %.thread.i.i, %bb.d
  %.0.i.i.i.i.i = phi ptr [ %i.ai, %bb.d ], [ %i.ae, %.thread.i.i ] ; 3 uses
  %i.aj = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.ak = add i64 %i.aj, 8
  %i.al = inttoptr i64 %i.ak to ptr
  store ptr %i.al, ptr %i.ad, align 8
  store i64 %i.z, ptr %.0.i.i.i.i.i, align 8
  br i1 %i.ac, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit
  %.sroa.11.195 = phi ptr [ %.0.i.i.i.i.i, %_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit ], [ %0, %bb.b ]
  %i.am = phi i64 [ %i.z, %_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit ], [ %i.a, %bb.b ]
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 664
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZN2v88internal6HandleINS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEC2ENS0_6TaggedIS5_EEPNS0_7IsolateE.exit.i.i
  %i.aq = phi i64 [ %i.am, %.lr.ph ], [ %i.ch, %_ZN2v88internal6HandleINS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEC2ENS0_6TaggedIS5_EEPNS0_7IsolateE.exit.i.i ] ; 3 uses
  %.sroa.11.086 = phi ptr [ %.sroa.11.195, %.lr.ph ], [ %.0.i.i.i.i, %_ZN2v88internal6HandleINS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEC2ENS0_6TaggedIS5_EEPNS0_7IsolateE.exit.i.i ] ; 2 uses
  %i.ar = trunc i64 %i.aq to i1
  br i1 %i.ar, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.as = add nsw i64 %i.aq, -1
  %i.at = inttoptr i64 %i.as to ptr               ; 2 uses
  %i.au = load atomic volatile i64, ptr %i.at monotonic, align 8
  %i.av = add i64 %i.au, 11
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = load atomic volatile i16, ptr %i.aw monotonic, align 2
  %i.ay = icmp ugt i16 %i.ax, 302
  br i1 %i.ay, label %_ZN2v88internal37IsJSObjectThatCanBeTrackedAsPrototypeENS0_6TaggedINS0_6ObjectEEE.exit, label %.critedge
end_hunk_1
begin_hunk_2_@_ZN2v88internal8JSObject20GetFastElementsUsageEv:bb.a
  %i.ce = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %min.iters.check = icmp ult i64 %.in.in.i20, 17179869184
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i23
  %n.vec = and i64 %.in.i21, 2147483644           ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.cl, %vector.body ]
  %vec.phi56 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.cm, %vector.body ]
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %wide.load = load <2 x i64>, ptr %i.cf, align 1
  %wide.load57 = load <2 x i64>, ptr %i.cg, align 1
  %i.ch = icmp ne <2 x i64> %wide.load, splat (i64 -2251799814209537)
  %i.ci = icmp ne <2 x i64> %wide.load57, splat (i64 -2251799814209537)
  %i.cj = zext <2 x i1> %i.ch to <2 x i32>
  %i.ck = zext <2 x i1> %i.ci to <2 x i32>
  %i.cl = add <2 x i32> %vec.phi, %i.cj           ; 2 uses
  %i.cm = add <2 x i32> %vec.phi56, %i.ck         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !74

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.cm, %i.cl
  %i.co = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.in.i21, %n.vec
  br i1 %cmp.n, label %_ZN2v88internalL18HoleyElementsUsageINS0_10FixedArrayEEEiNS0_6TaggedINS0_8JSObjectEEENS3_IT_EE.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i23, %middle.block
  %indvars.iv.i24.ph = phi i64 [ 0, %.lr.ph.i23 ], [ %n.vec, %middle.block ]
  %.01228.i25.ph = phi i32 [ 0, %.lr.ph.i23 ], [ %i.co, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i24 = phi i64 [ %indvars.iv.next.i27, %scalar.ph ], [ %indvars.iv.i24.ph, %scalar.ph.preheader ] ; 2 uses
  %.01228.i25 = phi i32 [ %spec.select.i26, %scalar.ph ], [ %.01228.i25.ph, %scalar.ph.preheader ]
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.i24
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.cp, align 1
  %i.cq = icmp ne i64 %.0.copyload.i.i.i.i.i.i.i, -2251799814209537
  %i.cr = zext i1 %i.cq to i32
  %spec.select.i26 = add nuw nsw i32 %.01228.i25, %i.cr ; 2 uses
  %indvars.iv.next.i27 = add nuw nsw i64 %indvars.iv.i24, 1 ; 2 uses
  %exitcond.not.i28 = icmp eq i64 %indvars.iv.next.i27, %.in.i21
  br i1 %exitcond.not.i28, label %_ZN2v88internalL18HoleyElementsUsageINS0_10FixedArrayEEEiNS0_6TaggedINS0_8JSObjectEEENS3_IT_EE.exit, label %scalar.ph, !llvm.loop !75

bb.j:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #23
  unreachable

_ZN2v88internalL18HoleyElementsUsageINS0_10FixedArrayEEEiNS0_6TaggedINS0_8JSObjectEEENS3_IT_EE.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2v88internalL18HoleyElementsUsageINS0_10FixedArrayEEEiNS0_6TaggedINS0_8JSObjectEEENS3_IT_EE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN2v88internalL18HoleyElementsUsageINS0_10FixedArrayEEEiNS0_6TaggedINS0_8JSObjectEEENS3_IT_EE.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %_ZN2v88internalL18HoleyElementsUsageINS0_10FixedArrayEEEiNS0_6TaggedINS0_8JSObjectEEENS3_IT_EE.exit.loopexit.unr-lcssa ]
  %.01228.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %spec.select.i.3, %_ZN2v88internalL18HoleyElementsUsageINS0_10FixedArrayEEEiNS0_6TaggedINS0_8JSObjectEEENS3_IT_EE.exit.loopexit.unr-lcssa ]
  %lcmp.mod61 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod61)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.k ] ; 2 uses
  %.01228.i.epil = phi i32 [ %.01228.i.epil.init, %.epil.preheader ], [ %spec.select.i.epil, %bb.k ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.k ]
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.i.epil
  %i.ct = load atomic volatile i64, ptr %i.cs monotonic, align 8
  %i.cu = load i64, ptr %i.at, align 8
  %i.cv = icmp ne i64 %i.ct, %i.cu
  %i.cw = zext i1 %i.cv to i32
  %spec.select.i.epil = add nuw nsw i32 %.01228.i.epil, %i.cw ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN2v88internalL18HoleyElementsUsageINS0_10FixedArrayEEEiNS0_6TaggedINS0_8JSObjectEEENS3_IT_EE.exit, label %bb.k, !llvm.loop !76

_ZN2v88internalL18HoleyElementsUsageINS0_10FixedArrayEEEiNS0_6TaggedINS0_8JSObjectEEENS3_IT_EE.exit: ; preds = %scalar.ph, %_ZN2v88internalL18HoleyElementsUsageINS0_10FixedArrayEEEiNS0_6TaggedINS0_8JSObjectEEENS3_IT_EE.exit.loopexit.unr-lcssa, %bb.k, %middle.block, %bb.i, %bb.f, %bb.c, %bb.d, %bb.a, %bb.h
  %.0 = phi i32 [ 0, %bb.h ], [ 0, %bb.a ], [ %i.z, %bb.d ], [ %spec.select.i.epil, %bb.k ], [ %i.t, %bb.c ], [ 0, %bb.f ], [ 0, %bb.i ], [ %i.co, %middle.block ], [ %spec.select.i.3, %_ZN2v88internalL18HoleyElementsUsageINS0_10FixedArrayEEEiNS0_6TaggedINS0_8JSObjectEEENS3_IT_EE.exit.loopexit.unr-lcssa ], [ %spec.select.i26, %scalar.ph ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal8JSObject26GetPropertyWithInterceptorEPNS0_14LookupIteratorEPb(ptr noundef nonnull %0, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call ptr @_ZNK2v88internal14LookupIterator14GetInterceptorEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.b = tail call fastcc ptr @_ZN2v88internal12_GLOBAL__N_134GetPropertyWithInterceptorInternalEPNS0_14LookupIteratorENS0_12DirectHandleINS0_15InterceptorInfoEEEPb(ptr noundef nonnull %0, ptr %i.a, ptr noundef %1)
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i16 @_ZN2v88internal8JSObject20HasRealNamedPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE(ptr noundef %0, ptr %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::PropertyKey", align 8 ; 5 uses
  %4 = alloca %"class.v8::internal::LookupIterator", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZN2v88internal11PropertyKeyC2INS0_12DirectHandleEQsr3stdE16is_convertible_vIT_INS0_4NameEENS3_IS5_EEEEEPNS0_7IsolateES6_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %0, ptr %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %.sroa.0.0.copyload.i.i = load ptr, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load i64, ptr %i.a, align 8
  call void @_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef %0, ptr %1, ptr %.sroa.0.0.copyload.i.i, i64 noundef %i.b, ptr %1, i32 noundef 0)
  %i.c = call i16 @_ZN2v88internal10JSReceiver11HasPropertyEPNS0_14LookupIteratorE(ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret i16 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i16 @_ZN2v88internal8JSObject22HasRealElementPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EEj(ptr noundef %0, ptr %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::LookupIterator", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = zext i32 %2 to i64
  call void @_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef %0, ptr %1, ptr null, i64 noundef %i.a, ptr %1, i32 noundef 0)
  %i.b = call i16 @_ZN2v88internal10JSReceiver11HasPropertyEPNS0_14LookupIteratorE(ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret i16 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i16 0, 258) i16 @_ZN2v88internal8JSObject28HasRealNamedCallbackPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE(ptr noundef %0, ptr %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::PropertyKey", align 8 ; 5 uses
  %4 = alloca %"class.v8::internal::LookupIterator", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZN2v88internal11PropertyKeyC2INS0_12DirectHandleEQsr3stdE16is_convertible_vIT_INS0_4NameEENS3_IS5_EEEEEPNS0_7IsolateES6_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %0, ptr %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %.sroa.0.0.copyload.i.i = load ptr, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load i64, ptr %i.a, align 8
  call void @_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef %0, ptr %1, ptr %.sroa.0.0.copyload.i.i, i64 noundef %i.b, ptr %1, i32 noundef 0)
  %i.c = call i64 @_ZN2v88internal10JSReceiver21GetPropertyAttributesEPNS0_14LookupIteratorE(ptr noundef nonnull %4)
  %i.d = trunc i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp eq i32 %i.f, 6
  %.sroa.0.0.insert.insert.i = select i1 %i.g, i16 257, i16 1
  %.sroa.05.0 = select i1 %i.d, i16 %.sroa.0.0.insert.insert.i, i16 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret i16 %.sroa.05.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN2v88internal8JSObject31RawFastPropertyAtCompareAndSwapENS0_10FieldIndexENS0_6TaggedINS0_6ObjectEEES5_NS_15SeqCstAccessTagE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i64 %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit23.i, %bb.a
  %.sroa.011.0.i = phi i64 [ %2, %bb.a ], [ %i.a, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit23.i ] ; 7 uses
  %i.a = tail call i64 @_ZN2v88internal8JSObject39RawFastPropertyAtCompareAndSwapInternalENS0_10FieldIndexENS0_6TaggedINS0_6ObjectEEES5_NS_15SeqCstAccessTagE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i64 %.sroa.011.0.i, i64 %3) ; 9 uses
  %i.b = icmp eq i64 %i.a, %.sroa.011.0.i
  br i1 %i.b, label %"_ZN2v88internal10HeapObject26SeqCst_CompareAndSwapFieldIZNS0_8JSObject31RawFastPropertyAtCompareAndSwapENS0_10FieldIndexENS0_6TaggedINS0_6ObjectEEES7_NS_15SeqCstAccessTagEE3$_0EES7_S7_S7_T_.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = and i64 %i.a, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit19.thread.i, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit19.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit19.i: ; preds = %bb.c
  %i.e = add nsw i64 %i.a, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i64, ptr %i.f monotonic, align 8
  %i.h = add i64 %i.g, 11
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i16, ptr %i.i monotonic, align 2
  %i.k = icmp eq i16 %i.j, 130
  br i1 %i.k, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit19.thread.i, label %"_ZN2v88internal10HeapObject26SeqCst_CompareAndSwapFieldIZNS0_8JSObject31RawFastPropertyAtCompareAndSwapENS0_10FieldIndexENS0_6TaggedINS0_6ObjectEEES7_NS_15SeqCstAccessTagEE3$_0EES7_S7_S7_T_.exit"

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit19.thread.i: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit19.i, %bb.c
  %i.l = and i64 %.sroa.011.0.i, 1
  %i.m = icmp eq i64 %i.l, 0                      ; 2 uses
  br i1 %i.m, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit19.thread.i
  %i.n = add nsw i64 %.sroa.011.0.i, -1
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load atomic volatile i64, ptr %i.o monotonic, align 8
  %i.q = add i64 %i.p, 11
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load atomic volatile i16, ptr %i.r monotonic, align 2
  %i.t = icmp eq i16 %i.s, 130
  br i1 %i.t, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, label %"_ZN2v88internal10HeapObject26SeqCst_CompareAndSwapFieldIZNS0_8JSObject31RawFastPropertyAtCompareAndSwapENS0_10FieldIndexENS0_6TaggedINS0_6ObjectEEES7_NS_15SeqCstAccessTagEE3$_0EES7_S7_S7_T_.exit"

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit19.thread.i
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  %i.u = lshr i64 %i.a, 32
  %i.v = trunc nuw i64 %i.u to i32
  %i.w = sitofp i32 %i.v to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i

bb.e:                                             ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  %i.x = add nsw i64 %i.a, -1
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.0.copyload.i.i.i.i.i.i = load double, ptr %i.z, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i: ; preds = %bb.e, %bb.d
  %i.aa = phi double [ %i.w, %bb.d ], [ %.0.copyload.i.i.i.i.i.i, %bb.e ] ; 2 uses
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i
  %i.ab = lshr i64 %.sroa.011.0.i, 32
  %i.ac = trunc nuw i64 %i.ab to i32
  %i.ad = sitofp i32 %i.ac to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit23.i

bb.g:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i
  %i.ae = add nsw i64 %.sroa.011.0.i, -1
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.0.copyload.i.i.i.i.i22.i = load double, ptr %i.ag, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit23.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit23.i: ; preds = %bb.g, %bb.f
  %i.ah = phi double [ %i.ad, %bb.f ], [ %.0.copyload.i.i.i.i.i22.i, %bb.g ] ; 2 uses
  %i.ai = bitcast double %i.aa to i64
  %i.aj = bitcast double %i.ah to i64
  %i.ak = icmp eq i64 %i.ai, %i.aj
  %i.al = fcmp uno double %i.aa, 0.000000e+00
  %i.am = fcmp uno double %i.ah, 0.000000e+00
  %spec.select.i.i = and i1 %i.al, %i.am
  %.0.i24.i = or i1 %i.ak, %spec.select.i.i
  br i1 %.0.i24.i, label %bb.b, label %"_ZN2v88internal10HeapObject26SeqCst_CompareAndSwapFieldIZNS0_8JSObject31RawFastPropertyAtCompareAndSwapENS0_10FieldIndexENS0_6TaggedINS0_6ObjectEEES7_NS_15SeqCstAccessTagEE3$_0EES7_S7_S7_T_.exit", !llvm.loop !79

"_ZN2v88internal10HeapObject26SeqCst_CompareAndSwapFieldIZNS0_8JSObject31RawFastPropertyAtCompareAndSwapENS0_10FieldIndexENS0_6TaggedINS0_6ObjectEEES7_NS_15SeqCstAccessTagEE3$_0EES7_S7_S7_T_.exit": ; preds = %bb.b, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit19.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit23.i
  %.lcssa.i = phi i64 [ %i.a, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit23.i ], [ %.sroa.011.0.i, %bb.b ], [ %i.a, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit19.i ], [ %i.a, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i ]
  ret i64 %.lcssa.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal13JSGlobalProxy10IsDetachedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %0, align 8
  %i.a = add i64 %.sroa.0.0.copyload.i.i.i.i, -1
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = add i64 %i.c, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = add i64 %i.f, 31
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 8
  %i.j = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 10624
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  %i.n = load i64, ptr %i.m, align 8
  %.not = icmp eq i64 %i.i, %i.n
  ret i1 %.not
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14JSGlobalObject22InvalidatePropertyCellENS0_12DirectHandleIS1_EENS2_INS0_4NameEEE(ptr nofree readonly captures(none) %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = add i64 %i.c, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8 ; 3 uses
  %i.g = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1515), align 1, !range !7, !noundef !8
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = inttoptr i64 %i.f to ptr
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.410, ptr noundef %i.i) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = add i64 %i.f, 55
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i64, ptr %i.k monotonic, align 8 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = add i64 %i.l, 7
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %.not57.i.i = icmp eq i64 %i.o, 3
  br i1 %.not57.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store atomic volatile i64 3, ptr %i.n monotonic, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.p = add i64 %i.f, 63
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load i64, ptr %i.q, align 8              ; 4 uses
  %.not58.i.i = icmp eq i64 %i.r, 0
  br i1 %.not58.i.i, label %_ZN2v88internal8JSObject31InvalidatePrototypeValidityCellENS0_6TaggedINS0_14JSGlobalObjectEEE.exit, label %_ZN2v88internal28TorqueGeneratedPrototypeInfoINS0_13PrototypeInfoENS0_6StructEE30set_prototype_chain_enum_cacheENS0_6TaggedINS0_5UnionIJNS0_10FixedArrayENS0_3SmiENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit.i.i

_ZN2v88internal28TorqueGeneratedPrototypeInfoINS0_13PrototypeInfoENS0_6StructEE30set_prototype_chain_enum_cacheENS0_6TaggedINS0_5UnionIJNS0_10FixedArrayENS0_3SmiENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit.i.i: ; preds = %bb.f
  %i.s = add i64 %i.r, 23
  %i.t = inttoptr i64 %i.s to ptr
  store atomic volatile i64 0, ptr %i.t monotonic, align 8
  %i.u = add i64 %i.r, 55
  %i.v = inttoptr i64 %i.u to ptr
  store atomic volatile i64 0, ptr %i.v monotonic, align 8
  %i.w = add i64 %i.r, 63
  %i.x = inttoptr i64 %i.w to ptr
  store atomic volatile i64 0, ptr %i.x monotonic, align 8
  br label %_ZN2v88internal8JSObject31InvalidatePrototypeValidityCellENS0_6TaggedINS0_14JSGlobalObjectEEE.exit

_ZN2v88internal8JSObject31InvalidatePrototypeValidityCellENS0_6TaggedINS0_14JSGlobalObjectEEE.exit: ; preds = %bb.f, %_ZN2v88internal28TorqueGeneratedPrototypeInfoINS0_13PrototypeInfoENS0_6StructEE30set_prototype_chain_enum_cacheENS0_6TaggedINS0_5UnionIJNS0_10FixedArrayENS0_3SmiENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit.i.i
  %i.y = load i64, ptr %0, align 8
  %i.z = add i64 %i.y, 7
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i64, ptr %i.aa acquire, align 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 560 ; 6 uses
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 568 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = icmp eq ptr %i.ad, %i.af
  br i1 %i.ag, label %bb.g, label %_ZN2v88internal6HandleINS0_16GlobalDictionaryEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !9

bb.g:                                             ; preds = %_ZN2v88internal8JSObject31InvalidatePrototypeValidityCellENS0_6TaggedINS0_14JSGlobalObjectEEE.exit
  %i.ah = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.b) #21
  br label %_ZN2v88internal6HandleINS0_16GlobalDictionaryEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_16GlobalDictionaryEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal8JSObject31InvalidatePrototypeValidityCellENS0_6TaggedINS0_14JSGlobalObjectEEE.exit, %bb.g
  %.0.i.i = phi ptr [ %i.ah, %bb.g ], [ %i.ad, %_ZN2v88internal8JSObject31InvalidatePrototypeValidityCellENS0_6TaggedINS0_14JSGlobalObjectEEE.exit ] ; 4 uses
  %i.ai = ptrtoint ptr %.0.i.i to i64
  %i.aj = add i64 %i.ai, 8
  %i.ak = inttoptr i64 %i.aj to ptr
  store ptr %i.ak, ptr %i.ac, align 8
  store i64 %i.ab, ptr %.0.i.i, align 8
  %i.al = add i64 %i.ab, -1
  %i.am = inttoptr i64 %i.al to ptr               ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 648
  %i.ao = load i64, ptr %1, align 8
  %i.ap = add i64 %i.ao, -1
  %i.aq = inttoptr i64 %i.ap to ptr               ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load atomic i32, ptr %i.ar acquire, align 4 ; 3 uses
  %i.at = and i32 %i.as, 1
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i, label %bb.h, !prof !13

bb.h:                                             ; preds = %_ZN2v88internal6HandleINS0_16GlobalDictionaryEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.av = tail call noundef i32 @_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj(ptr noundef nonnull align 4 dereferenceable(12) %i.aq, i32 noundef %i.as)
  br label %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i

_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i: ; preds = %bb.h, %_ZN2v88internal6HandleINS0_16GlobalDictionaryEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.0.in.i.i.i = phi i32 [ %i.av, %bb.h ], [ %i.as, %_ZN2v88internal6HandleINS0_16GlobalDictionaryEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ]
  %.0.i.i.i = lshr i32 %.0.in.i.i.i, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ax = load atomic volatile i64, ptr %i.aw monotonic, align 8
  %i.ay = lshr i64 %i.ax, 32
  %i.az = trunc nuw i64 %i.ay to i32
  %i.ba = load i64, ptr %i.an, align 8            ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 656
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = add i32 %i.az, -1                       ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %.sroa.07.0.in34.i.i = and i32 %i.bd, %.0.i.i.i ; 2 uses
  %.sroa.07.035.i.i = zext nneg i32 %.sroa.07.0.in34.i.i to i64 ; 2 uses
  %i.bf = shl nuw nsw i64 %.sroa.07.035.i.i, 3
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.bi = load atomic volatile i64, ptr %i.bh monotonic, align 8 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, %i.ba
  br i1 %i.bj, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_NS0_12DirectHandleINS0_4NameEEE.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i, %bb.j
  %i.bk = phi i64 [ %i.bw, %bb.j ], [ %i.bi, %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i ] ; 2 uses
  %.sroa.07.039.i.i = phi i64 [ %.sroa.07.0.i.i, %bb.j ], [ %.sroa.07.035.i.i, %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i ] ; 2 uses
  %.sroa.07.0.in38.i.i = phi i32 [ %.sroa.07.0.in.i.i, %bb.j ], [ %.sroa.07.0.in34.i.i, %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i ]
  %.037.i.i = phi i32 [ %i.br, %bb.j ], [ 1, %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i ] ; 2 uses
  %i.bl = icmp eq i64 %i.bk, %i.bc
  br i1 %i.bl, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.bm = load i64, ptr %1, align 8
  %i.bn = add i64 %i.bk, 7
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = icmp eq i64 %i.bm, %i.bp
  br i1 %i.bq, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_NS0_12DirectHandleINS0_4NameEEE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i
  %i.br = add i32 %.037.i.i, 1
  %i.bs = add i32 %.037.i.i, %.sroa.07.0.in38.i.i
  %.sroa.07.0.in.i.i = and i32 %i.bs, %i.bd       ; 2 uses
  %.sroa.07.0.i.i = zext i32 %.sroa.07.0.in.i.i to i64 ; 2 uses
  %i.bt = shl nuw i64 %.sroa.07.0.i.i, 32
  %sext.i.i.i = add i64 %i.bt, 21474836480
  %i.bu = ashr exact i64 %sext.i.i.i, 29
  %i.bv = getelementptr inbounds i8, ptr %i.be, i64 %i.bu
  %i.bw = load atomic volatile i64, ptr %i.bv monotonic, align 8 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, %i.ba
  br i1 %i.bx, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_NS0_12DirectHandleINS0_4NameEEE.exit.thread, label %.lr.ph.i.i, !llvm.loop !1

_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_NS0_12DirectHandleINS0_4NameEEE.exit: ; preds = %bb.i
  %i.by = load i64, ptr %.0.i.i, align 8
  %i.bz = add i64 %i.by, -1
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = shl nuw i64 %.sroa.07.039.i.i, 32
  %sext.i.i.i22 = add i64 %i.cc, 21474836480
  %i.cd = ashr exact i64 %sext.i.i.i22, 29
  %i.ce = getelementptr inbounds i8, ptr %i.cb, i64 %i.cd
  %i.cf = load atomic volatile i64, ptr %i.ce monotonic, align 8 ; 2 uses
  %i.cg = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ch = load ptr, ptr %i.ae, align 8
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %bb.k, label %_ZN2v88internal6HandleINS0_12PropertyCellEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !9

bb.k:                                             ; preds = %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_NS0_12DirectHandleINS0_4NameEEE.exit
end_hunk_2
begin_hunk_3_@_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj:bb.a
  %i.n = lshr i32 %1, 4
  %.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 58472
  %i.o = load ptr, ptr %.in.i, align 8
  %i.p = tail call noundef i32 @_ZNK2v88internal21StringForwardingTable10GetRawHashENS0_16PtrComprCageBaseEi(ptr noundef nonnull align 8 dereferenceable(56) %i.o, i32 noundef %i.n) #21
  ret i32 %i.p
}

declare noundef i32 @_ZNK2v88internal21StringForwardingTable10GetRawHashENS0_16PtrComprCageBaseEi(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef) local_unnamed_addr #2

declare void @_ZN2v88internal12StringStream3AddENS_4base6VectorIKcEENS3_INS1_6FmtElmEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, ptr, i64) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK2v88internal9ScopeInfo15HasFunctionNameEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i64 @_ZNK2v88internal9ScopeInfo12FunctionNameEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK2v88internal9ScopeInfo21HasSharedFunctionNameEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #9

; Function Attrs: nounwind uwtable
define linkonce_odr hidden void @_ZTv0_n24_N2v88internal8OFStreamD1Ev(ptr noundef %0) unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 24), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 64), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.g) #21, !inline_history !16
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.e) #21, !inline_history !16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSoD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSoD0Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0 align 2

; Function Attrs: nounwind uwtable
declare void @_ZTv0_n24_NSoD1Ev(ptr noundef) unnamed_addr #17 align 2

; Function Attrs: nounwind uwtable
declare void @_ZTv0_n24_NSoD0Ev(ptr noundef) unnamed_addr #17 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8OFStreamD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 24), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 64), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #21, !inline_history !16
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #21, !inline_history !16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 344) #25
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr hidden void @_ZTv0_n24_N2v88internal8OFStreamD0Ev(ptr noundef %0) unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 24), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 64), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.g) #21, !inline_history !130
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.e) #21, !inline_history !130
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 noundef 344) #25, !inline_history !131
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

declare ptr @_ZN2v88internal7Factory24CopyPropertyArrayAndGrowENS0_12DirectHandleINS0_13PropertyArrayEEEi(ptr noundef nonnull align 1 dereferenceable(1), ptr, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK2v88internal3Map22InstancesNeedRewritingENS0_6TaggedIS1_EEiiiPiNS0_15ConcurrencyModeE(ptr noundef nonnull align 8 dereferenceable(8), i64, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @_ZN2v88internal6Object13NewStorageForEPNS0_7IsolateENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverENS0_4HoleEEEEEENS0_14RepresentationE(ptr noundef, ptr, i8) local_unnamed_addr #2

declare void @_ZN2v88internal4Heap22NotifyObjectSizeChangeENS0_6TaggedINS0_10HeapObjectEEEiiNS0_18ClearRecordedSlotsE(ptr noundef nonnull align 8 dereferenceable(2992), i64, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @_ZN2v88internal7Factory17NewNameDictionaryEi(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef) local_unnamed_addr #2

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal35IsMoreGeneralElementsKindTransitionENS0_12ElementsKindES1_(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare i64 @_ZN2v88internal19TransitionsAccessor16SearchTransitionENS0_6TaggedINS0_4NameEEENS0_12PropertyKindENS0_18PropertyAttributesE(ptr noundef nonnull align 8 dereferenceable(29), i64, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @_ZN2v88internal3Map22PrepareForDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_13InternalIndexENS0_17PropertyConstnessENS4_INS0_6ObjectEEE(ptr noundef, ptr, i64, i32 noundef, ptr) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8JSObject12WriteToFieldENS0_13InternalIndexENS0_15PropertyDetailsENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i32 %2, i64 %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::Representation", align 1 ; 4 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8 ; 2 uses
  %i.a = add i64 %.sroa.0.0.copyload.i.i.i, -1    ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8 ; 2 uses
  %i.d = lshr i32 %2, 19
  %i.e = and i32 %i.d, 1023                       ; 3 uses
  %i.f = lshr i32 %2, 6
  %i.g = trunc i32 %i.f to i8
  %i.h = and i8 %i.g, 7                           ; 4 uses
  %i.i = add i64 %i.c, 7
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load atomic volatile i8, ptr %i.j monotonic, align 1
  %i.l = zext i8 %i.k to i32
  %i.m = add i64 %i.c, 8
  %i.n = inttoptr i64 %i.m to ptr                 ; 3 uses
  %i.o = load atomic volatile i8, ptr %i.n monotonic, align 1
  %i.p = zext i8 %i.o to i32
  %i.q = sub nsw i32 %i.l, %i.p                   ; 3 uses
  %i.r = icmp slt i32 %i.e, %i.q                  ; 2 uses
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = load atomic volatile i8, ptr %i.n monotonic, align 1
  %i.t = zext i8 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 30
  %i.v = load atomic volatile i8, ptr %i.n monotonic, align 1
  %i.w = zext i8 %i.v to i32
  %i.x = add nuw nsw i32 %i.e, %i.w
  %i.y = shl nuw nsw i32 %i.x, 3
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.z = sub nsw i32 %i.e, %i.q
  %i.aa = shl nuw nsw i32 %i.z, 3
  %i.ab = add nuw nsw i32 %i.aa, 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.013.i.i = phi i64 [ %i.u, %bb.b ], [ 2147483648, %bb.c ]
  %.0.i.i = phi i32 [ %i.y, %bb.b ], [ %i.ab, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i8 %i.h, ptr %4, align 1
  %i.ac = icmp samesign ult i8 %i.h, 5
  br i1 %i.ac, label %switch.lookup, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = call noundef ptr @_ZNK2v88internal14Representation8MnemonicEv(ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.84, ptr noundef %i.ad) #21
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #23
  unreachable

switch.lookup:                                    ; preds = %bb.d
  %i.ae = zext nneg i8 %i.h to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN2v88internal8JSObject12WriteToFieldENS0_13InternalIndexENS0_15PropertyDetailsENS0_6TaggedINS0_6ObjectEEE, i64 %i.ae
  %switch.load = load i16, ptr %switch.gep, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.af = select i1 %i.r, i64 16384, i64 0
  %i.ag = sext i32 %.0.i.i to i64                 ; 3 uses
  %i.ah = sext i32 %i.q to i64
  %i.ai = shl nsw i64 %i.ah, 17
  %i.aj = or disjoint i64 %i.ai, %i.af
  %i.ak = or i64 %.013.i.i, %i.aj
  %i.al = or i64 %i.ak, %i.ag                     ; 3 uses
  %i.am = icmp eq i8 %i.h, 2
  br i1 %i.am, label %bb.f, label %bb.n

bb.f:                                             ; preds = %switch.lookup
  %i.an = and i64 %3, 1
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ap = lshr i64 %3, 32
  %i.aq = trunc nuw i64 %i.ap to i32
  %i.ar = sitofp i32 %i.aq to double
  %i.as = bitcast double %i.ar to i64
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.at = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 10624
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 416
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = icmp eq i64 %3, %i.ax
  br i1 %i.ay, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = add nsw i64 %3, -1
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.0.copyload.i.i.i.i = load i64, ptr %i.bb, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %.0 = phi i64 [ %i.as, %bb.g ], [ %.0.copyload.i.i.i.i, %bb.i ], [ -2251799814209537, %bb.h ]
  %i.bc = and i64 %i.al, 16384
  %.not.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = and i64 %i.ag, 16383
  %i.be = add i64 %i.a, %i.bd
  br label %_ZNK2v88internal8JSObject17RawFastPropertyAtENS0_10FieldIndexE.exit

bb.l:                                             ; preds = %bb.j
  %i.bf = add i64 %.sroa.0.0.copyload.i.i.i, 7
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = load i64, ptr %i.bg, align 8            ; 3 uses
  %i.bi = and i64 %i.bh, 1
  %i.bj = icmp eq i64 %i.bi, 0
  %.pre.i.i.i = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 10624
  %.pre11.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8 ; 2 uses
  br i1 %i.bj, label %.critedge.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %.pre11.i.i.i, i64 312
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = icmp eq i64 %i.bh, %i.bl
  br i1 %i.bm, label %.critedge.i.i.i, label %_ZNK2v88internal10JSReceiver14property_arrayENS0_16PtrComprCageBaseE.exit.i.i

.critedge.i.i.i:                                  ; preds = %bb.m, %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %.pre11.i.i.i, i64 304
  %i.bo = load i64, ptr %i.bn, align 8
  br label %_ZNK2v88internal10JSReceiver14property_arrayENS0_16PtrComprCageBaseE.exit.i.i

_ZNK2v88internal10JSReceiver14property_arrayENS0_16PtrComprCageBaseE.exit.i.i: ; preds = %.critedge.i.i.i, %bb.m
  %.sroa.05.0.i.i.i = phi i64 [ %i.bo, %.critedge.i.i.i ], [ %i.bh, %bb.m ]
  %sh.diff.i.i = lshr i64 %i.al, 27
  %i.bp = and i64 %sh.diff.i.i, 120
  %.mask.i.i = and i64 %i.ag, 16376
  %i.bq = add nuw nsw i64 %.mask.i.i, 15
  %i.br = sub nsw i64 %i.bq, %i.bp
  %i.bs = add i64 %i.br, %.sroa.05.0.i.i.i
  br label %_ZNK2v88internal8JSObject17RawFastPropertyAtENS0_10FieldIndexE.exit

_ZNK2v88internal8JSObject17RawFastPropertyAtENS0_10FieldIndexE.exit: ; preds = %bb.k, %_ZNK2v88internal10JSReceiver14property_arrayENS0_16PtrComprCageBaseE.exit.i.i
  %.sink9.i.i = phi i64 [ %i.bs, %_ZNK2v88internal10JSReceiver14property_arrayENS0_16PtrComprCageBaseE.exit.i.i ], [ %i.be, %bb.k ]
  %i.bt = inttoptr i64 %.sink9.i.i to ptr
  %i.bu = load atomic volatile i64, ptr %i.bt monotonic, align 8
  %i.bv = add i64 %i.bu, -1
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i64 %.0, ptr %i.bx, align 1
  br label %bb.o

bb.n:                                             ; preds = %switch.lookup
  %switch.ext = zext i16 %switch.load to i64
  %i.by = or i64 %i.al, %switch.ext
  tail call void @_ZN2v88internal8JSObject17FastPropertyAtPutENS0_10FieldIndexENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %i.by, i64 %3, i32 noundef 4)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNK2v88internal8JSObject17RawFastPropertyAtENS0_10FieldIndexE.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal15DescriptorArray3SetENS0_13InternalIndexENS0_6TaggedINS0_4NameEEENS3_INS0_9MaybeWeakINS0_6ObjectEEEEENS0_15PropertyDetailsE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i64 %2, i64 %3, i32 %4) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = trunc i64 %1 to i32
  %i.b = load i64, ptr %0, align 8                ; 2 uses
  %i.c = add i64 %i.b, 9
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load atomic volatile i16, ptr %i.d monotonic, align 2
  %i.f = sext i16 %i.e to i32
  %i.g = icmp slt i32 %i.a, %i.f
  br i1 %i.g, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.405) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = mul i64 %1, 103079215104                 ; 2 uses
  %sext.i = add i64 %i.h, 137438953472
  %i.i = ashr exact i64 %sext.i, 32               ; 2 uses
  %i.j = add nsw i64 %i.i, -1                     ; 2 uses
  %i.k = add i64 %i.b, %i.j
  %i.l = inttoptr i64 %i.k to ptr
  store atomic volatile i64 %2, ptr %i.l monotonic, align 8
  %.sroa.03.0.copyload.i = load i64, ptr %0, align 8 ; 4 uses
  %i.m = add i64 %.sroa.03.0.copyload.i, %i.j     ; 2 uses
  %i.n = trunc i64 %2 to i1
  br i1 %i.n, label %bb.d, label %_ZN2v88internal12WriteBarrier8ForValueINS0_4NameEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE.exit.i

bb.d:                                             ; preds = %bb.c
  %i.o = and i64 %.sroa.03.0.copyload.i, -262144
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 262144         ; 2 uses
  %i.r = and i64 %i.q, 32
  %.not.i.i.i = icmp eq i64 %i.r, 0
  %i.s = and i64 %i.q, 25
  %.not37.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not37.i.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.t = and i64 %2, -262144
  %i.u = inttoptr i64 %i.t to ptr
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.u, align 262144
  %i.v = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 25
  %.not38.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not38.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %.sroa.03.0.copyload.i, i64 noundef %i.m, i64 %2) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  br i1 %.not.i.i.i, label %_ZN2v88internal12WriteBarrier8ForValueINS0_4NameEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE.exit.i, label %bb.h, !prof !13

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %.sroa.03.0.copyload.i, i64 %i.m, i64 %2) #21
  br label %_ZN2v88internal12WriteBarrier8ForValueINS0_4NameEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE.exit.i

_ZN2v88internal12WriteBarrier8ForValueINS0_4NameEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE.exit.i: ; preds = %bb.h, %bb.g, %bb.c
  %i.w = load i64, ptr %0, align 8                ; 2 uses
  %i.x = add i64 %i.w, 15
  %i.y = inttoptr i64 %i.x to ptr                 ; 2 uses
  %i.z = load atomic volatile i32, ptr %i.y monotonic, align 4 ; 2 uses
  %i.aa = and i32 %i.z, 3
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.i, label %_ZN2v88internal15DescriptorArray6SetKeyENS0_13InternalIndexENS0_6TaggedINS0_4NameEEE.exit

bb.i:                                             ; preds = %_ZN2v88internal12WriteBarrier8ForValueINS0_4NameEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE.exit.i
  %i.ac = or disjoint i32 %i.z, 3
  store atomic volatile i32 %i.ac, ptr %i.y monotonic, align 4
  %.sroa.01.0.copyload.i.pre = load i64, ptr %0, align 8
  br label %_ZN2v88internal15DescriptorArray6SetKeyENS0_13InternalIndexENS0_6TaggedINS0_4NameEEE.exit

_ZN2v88internal15DescriptorArray6SetKeyENS0_13InternalIndexENS0_6TaggedINS0_4NameEEE.exit: ; preds = %_ZN2v88internal12WriteBarrier8ForValueINS0_4NameEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE.exit.i, %bb.i
  %.sroa.01.0.copyload.i = phi i64 [ %i.w, %_ZN2v88internal12WriteBarrier8ForValueINS0_4NameEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE.exit.i ], [ %.sroa.01.0.copyload.i.pre, %bb.i ]
  %i.ad = shl i32 %4, 1
  %i.ae = ashr exact i32 %i.ad, 1
  %i.af = sext i32 %i.ae to i64
  %i.ag = shl nsw i64 %i.af, 32
  %i.ah = or disjoint i64 %i.i, 7
  %i.ai = add i64 %i.ah, %.sroa.01.0.copyload.i
  %i.aj = inttoptr i64 %i.ai to ptr
  store atomic volatile i64 %i.ag, ptr %i.aj monotonic, align 8
  %.sroa.05.0.copyload.i10 = load i64, ptr %0, align 8
  %i.ak = ashr exact i64 %i.h, 32
  %i.al = add nsw i64 %i.ak, 47                   ; 2 uses
  %i.am = add i64 %.sroa.05.0.copyload.i10, %i.al
  %i.an = inttoptr i64 %i.am to ptr
  store atomic volatile i64 %3, ptr %i.an monotonic, align 8
  %.sroa.03.0.copyload.i12 = load i64, ptr %0, align 8 ; 4 uses
  %i.ao = add i64 %.sroa.03.0.copyload.i12, %i.al ; 2 uses
  %i.ap = trunc i64 %3 to i1
  %i.aq = and i64 %3, 4294967295
  %i.ar = icmp ne i64 %i.aq, 3
  %i.as = and i1 %i.ar, %i.ap
  br i1 %i.as, label %bb.j, label %_ZN2v88internal15DescriptorArray8SetValueENS0_13InternalIndexENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit

bb.j:                                             ; preds = %_ZN2v88internal15DescriptorArray6SetKeyENS0_13InternalIndexENS0_6TaggedINS0_4NameEEE.exit
  %i.at = and i64 %3, -3                          ; 2 uses
  %i.au = and i64 %.sroa.03.0.copyload.i12, -262144
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load i64, ptr %i.av, align 262144       ; 2 uses
  %i.ax = and i64 %i.aw, 32
  %.not.i.i.i13 = icmp eq i64 %i.ax, 0
  %i.ay = and i64 %i.aw, 25
  %.not37.i.i.i14 = icmp eq i64 %i.ay, 0
  br i1 %.not37.i.i.i14, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.az = and i64 %3, -262144
  %i.ba = inttoptr i64 %i.az to ptr
  %.sroa.0.0.copyload.i.i.i.i.i15 = load i64, ptr %i.ba, align 262144
  %i.bb = and i64 %.sroa.0.0.copyload.i.i.i.i.i15, 25
  %.not38.i.i.i16 = icmp eq i64 %i.bb, 0
  br i1 %.not38.i.i.i16, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %.sroa.03.0.copyload.i12, i64 noundef %i.ao, i64 %i.at) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  br i1 %.not.i.i.i13, label %_ZN2v88internal15DescriptorArray8SetValueENS0_13InternalIndexENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit, label %bb.n, !prof !13

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %.sroa.03.0.copyload.i12, i64 %i.ao, i64 %i.at) #21
  br label %_ZN2v88internal15DescriptorArray8SetValueENS0_13InternalIndexENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit

_ZN2v88internal15DescriptorArray8SetValueENS0_13InternalIndexENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit: ; preds = %_ZN2v88internal15DescriptorArray6SetKeyENS0_13InternalIndexENS0_6TaggedINS0_4NameEEE.exit, %bb.m, %bb.n
  ret void
}

declare void @_ZN2v88internal3Map22SetInstanceDescriptorsEPNS0_7IsolateENS0_6TaggedINS0_15DescriptorArrayEEEiNS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal15CustomArgumentsINS_20PropertyCallbackInfoINS_5ValueEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 comdat align 2 {
end_hunk_3
