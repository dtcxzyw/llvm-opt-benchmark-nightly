Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/canonical-types?download=true
inline.NumInlined: 939
inline.NumDeleted: 544
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN2v88internal4wasm14StructTypeBase11BuilderImplINS1_19CanonicalStructTypeENS1_18CanonicalValueTypeEEC2EPNS0_4ZoneEjbb:bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %i.k) #12
  %.pre.i.i = load i64, ptr %i.n, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit: ; preds = %bb.a, %bb.b
  %i.r = phi i64 [ %.pre.i.i, %bb.b ], [ %i.o, %bb.a ] ; 2 uses
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = add i64 %i.r, %i.k
  store i64 %i.t, ptr %i.n, align 8
  store ptr %i.s, ptr %i.g, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = sext i32 %2 to i64                       ; 2 uses
  %i.w = icmp sgt i32 %2, -1
  br i1 %i.w, label %bb.d, label %bb.c, !prof !17

bb.c:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.10) #13
  unreachable

bb.d:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit
  %i.x = shl nuw nsw i64 %i.v, 2
  %i.y = add nuw nsw i64 %i.x, 4
  %i.z = and i64 %i.y, 17179869176                ; 3 uses
  %i.aa = load i64, ptr %i.l, align 8
  %i.ab = load i64, ptr %i.n, align 8             ; 2 uses
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = icmp ugt i64 %i.z, %i.ac
  br i1 %i.ad, label %bb.e, label %bb.f, !prof !12

bb.e:                                             ; preds = %bb.d
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %i.z) #12
  %.pre.i.i8 = load i64, ptr %i.n, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ae = phi i64 [ %.pre.i.i8, %bb.e ], [ %i.ab, %bb.d ] ; 2 uses
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = add i64 %i.ae, %i.z
  store i64 %i.ag, ptr %i.n, align 8
  store ptr %i.af, ptr %i.u, align 8
  %i.ah = add nuw nsw i64 %i.v, 7
  %i.ai = and i64 %i.ah, 4294967288               ; 3 uses
  %i.aj = load i64, ptr %i.l, align 8
  %i.ak = load i64, ptr %i.n, align 8             ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = icmp ugt i64 %i.ai, %i.al
  br i1 %i.am, label %bb.g, label %_ZN2v88internal4Zone13AllocateArrayIbA_bEEPT_m.exit, !prof !12

bb.g:                                             ; preds = %bb.f
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %i.ai) #12
  %.pre.i.i9 = load i64, ptr %i.n, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIbA_bEEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIbA_bEEPT_m.exit: ; preds = %bb.f, %bb.g
  %i.an = phi i64 [ %.pre.i.i9, %bb.g ], [ %i.ak, %bb.f ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = inttoptr i64 %i.an to ptr
  %i.aq = add i64 %i.an, %i.ai
  store i64 %i.aq, ptr %i.n, align 8
  store ptr %i.ap, ptr %i.ao, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZNK2v88internal4wasm17TypeCanonicalizer32EstimateCurrentMemoryConsumptionEv(ptr noundef nonnull align 8 dereferenceable(8056) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8048 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %0, align 8
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load i64, ptr %i.h, align 8
  %i.j = mul i64 %i.i, 160
  %i.k = udiv i64 %i.j, 3
  %i.l = add i64 %i.g, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.n = load i64, ptr %i.m, align 8
  %i.o = mul i64 %i.n, 192
  %i.p = udiv i64 %i.o, 3
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 7968
  %i.r = load atomic i64, ptr %i.q monotonic, align 8
  %i.s = add i64 %i.l, %i.r
  %i.t = add i64 %i.s, %i.p                       ; 2 uses
  %i.u = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 712), align 8, !range !15, !noundef !16
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.b, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.7, i64 noundef %i.t) #12
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %bb.b, %bb.a
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #12
  ret i64 %i.t
}

declare void @_ZN2v88internal6PrintFEPKcz(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i64 -2305843009213693952, 2305843009213693952) i64 @_ZNK2v88internal4wasm17TypeCanonicalizer23GetCurrentNumberOfTypesEv(ptr noundef nonnull align 8 dereferenceable(8056) %0) local_unnamed_addr #0 align 2 {
_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8048 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %0, align 8
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #12
  ret i64 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm17TypeCanonicalizer25PrepareForCanonicalTypeIdEPNS0_7IsolateENS1_18CanonicalTypeIndexE(ptr noundef %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.not47 = icmp eq i32 %1, -1
  br i1 %.not47, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 55464 ; 2 uses
  %i.b = icmp ult i32 %1, 1073741823
  br i1 %i.b, label %bb.d, label %bb.c, !prof !17

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.8) #13
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = add i64 %i.c, -55464
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 9760 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = add i64 %i.g, -1
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = lshr i64 %i.k, 32                        ; 2 uses
  %i.m = trunc nuw i64 %i.l to i32                ; 4 uses
  %.not.not = icmp slt i32 %1, %i.m
  br i1 %.not.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add nuw nsw i32 %1, 1
  %i.o = mul nsw i32 %i.m, 3
  %i.p = sdiv i32 %i.o, 2
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.p, i32 %i.n) ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %bb.f, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !12

bb.f:                                             ; preds = %bb.e
  %i.v = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #12
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.e, %bb.f
  %.0.i = phi ptr [ %i.v, %bb.f ], [ %i.r, %bb.e ] ; 3 uses
  %i.w = ptrtoint ptr %.0.i to i64
  %i.x = add i64 %i.w, 8
  %i.y = inttoptr i64 %i.x to ptr
  store ptr %i.y, ptr %i.q, align 8
  store i64 %i.g, ptr %.0.i, align 8
  %i.z = icmp samesign ult i32 %.sroa.speculated, 134217729
  br i1 %i.z, label %bb.h, label %bb.g, !prof !17

bb.g:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.18) #13
  unreachable

bb.h:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %i.aa = shl nuw nsw i32 %.sroa.speculated, 3
  %i.ab = add nuw nsw i32 %i.aa, 16
  %i.ac = tail call i64 @_ZN2v88internal11FactoryBaseINS0_7FactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ab, i8 noundef zeroext 1, i8 0, i8 noundef zeroext 0) #12 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = add i64 %i.ac, -1
  %i.ag = inttoptr i64 %i.af to ptr               ; 3 uses
  store atomic volatile i64 %i.ae, ptr %i.ag monotonic, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = zext nneg i32 %.sroa.speculated to i64  ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 32
  store atomic volatile i64 %i.aj, ptr %i.ah monotonic, align 8
  %i.ak = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.al = load ptr, ptr %i.s, align 8
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.i, label %_ZN2v88internal14WeakFixedArray3NewINS0_7IsolateEEENS0_6HandleIS1_EEPT_iNS0_14AllocationTypeENS0_17MaybeDirectHandleINS0_6ObjectEEE.exit, !prof !12

bb.i:                                             ; preds = %bb.h
  %i.an = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #12
  br label %_ZN2v88internal14WeakFixedArray3NewINS0_7IsolateEEENS0_6HandleIS1_EEPT_iNS0_14AllocationTypeENS0_17MaybeDirectHandleINS0_6ObjectEEE.exit

_ZN2v88internal14WeakFixedArray3NewINS0_7IsolateEEENS0_6HandleIS1_EEPT_iNS0_14AllocationTypeENS0_17MaybeDirectHandleINS0_6ObjectEEE.exit: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi ptr [ %i.an, %bb.i ], [ %i.ak, %bb.h ] ; 5 uses
  %i.ao = ptrtoint ptr %.0.i.i.i.i to i64
  %i.ap = add i64 %i.ao, 8
  %i.aq = inttoptr i64 %i.ap to ptr
  store ptr %i.aq, ptr %i.q, align 8
  store i64 %i.ac, ptr %.0.i.i.i.i, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 648
  %.sroa.014.0.i = load i64, ptr %i.as, align 8
  %i.at = tail call { i64, ptr } asm sideeffect "cld;rep ; stosq", "=&{cx},=&{di},{ax},0,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %.sroa.014.0.i, i64 %i.ai, ptr nonnull %i.ar) #12, !srcloc !28 ; 0 uses
  %i.au = icmp eq i64 %i.l, 0
  br i1 %i.au, label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE12CopyElementsEPNS0_7IsolateENS0_6TaggedIS2_EEiS9_iiNS0_16WriteBarrierModeE.exit, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal14WeakFixedArray3NewINS0_7IsolateEEENS0_6HandleIS1_EEPT_iNS0_14AllocationTypeENS0_17MaybeDirectHandleINS0_6ObjectEEE.exit
  %i.av = load i64, ptr %.0.i, align 8
  %i.aw = load i64, ptr %.0.i.i.i.i, align 8      ; 2 uses
  %i.ax = add i64 %i.aw, 15
  %i.ay = add i64 %i.av, 15
  tail call void @_ZN2v88internal4Heap9CopyRangeINS0_19FullMaybeObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S7_iNS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(2992) %i.a, i64 %i.aw, i64 %i.ax, i64 %i.ay, i32 noundef %i.m, i32 noundef 4) #12
  br label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE12CopyElementsEPNS0_7IsolateENS0_6TaggedIS2_EEiS9_iiNS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE12CopyElementsEPNS0_7IsolateENS0_6TaggedIS2_EEiS9_iiNS0_16WriteBarrierModeE.exit: ; preds = %_ZN2v88internal14WeakFixedArray3NewINS0_7IsolateEEENS0_6HandleIS1_EEPT_iNS0_14AllocationTypeENS0_17MaybeDirectHandleINS0_6ObjectEEE.exit, %bb.j
  %i.az = load i64, ptr %.0.i.i.i.i, align 8
  %i.ba = ashr i64 %i.k, 29
  %i.bb = and i64 %i.ba, -8
  %i.bc = add nsw i64 %i.bb, 15
  %i.bd = add i64 %i.bc, %i.az
  %i.be = sub nsw i32 %.sroa.speculated, %i.m
  %i.bf = sext i32 %i.be to i64
  %i.bg = inttoptr i64 %i.bd to ptr
  %i.bh = tail call { i64, ptr } asm sideeffect "cld;rep ; stosq", "=&{cx},=&{di},{ax},0,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 3, i64 %i.bf, ptr %i.bg) #12, !srcloc !28 ; 0 uses
  %i.bi = load i64, ptr %.0.i.i.i.i, align 8
  store i64 %i.bi, ptr %i.f, align 8
  br label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE12CopyElementsEPNS0_7IsolateENS0_6TaggedIS2_EEiS9_iiNS0_16WriteBarrierModeE.exit, %bb.d, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal4wasm17TypeCanonicalizer33ClearWasmCanonicalTypesForTestingEPNS0_7IsolateE(ptr noundef %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 55464
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1928
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = add i64 %i.d, -55464
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 9760
  store i64 %i.c, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 9752
  store i64 %i.c, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal4wasm17TypeCanonicalizer19IsFunctionSignatureENS1_18CanonicalTypeIndexE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8056) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ult i32 %1, 1000448
  br i1 %i.a, label %_ZNK2v88internal4wasm17TypeCanonicalizer19CanonicalTypeVectorixENS1_18CanonicalTypeIndexE.exit, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.15) #13
  unreachable

_ZNK2v88internal4wasm17TypeCanonicalizer19CanonicalTypeVectorixENS1_18CanonicalTypeIndexE.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = lshr i32 %1, 10
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.d
  %i.f = load atomic ptr, ptr %i.e monotonic, align 8
  %i.g = and i32 %1, 1023
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  %i.j = load atomic ptr, ptr %i.i monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.l = load i8, ptr %i.k, align 4
  %i.m = icmp eq i8 %i.l, 0
  ret i1 %i.m
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal4wasm17TypeCanonicalizer8IsStructENS1_18CanonicalTypeIndexE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8056) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ult i32 %1, 1000448
  br i1 %i.a, label %_ZNK2v88internal4wasm17TypeCanonicalizer19CanonicalTypeVectorixENS1_18CanonicalTypeIndexE.exit, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.15) #13
  unreachable

_ZNK2v88internal4wasm17TypeCanonicalizer19CanonicalTypeVectorixENS1_18CanonicalTypeIndexE.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = lshr i32 %1, 10
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.d
  %i.f = load atomic ptr, ptr %i.e monotonic, align 8
  %i.g = and i32 %1, 1023
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  %i.j = load atomic ptr, ptr %i.i monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.l = load i8, ptr %i.k, align 4
  %i.m = icmp eq i8 %i.l, 1
  ret i1 %i.m
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal4wasm17TypeCanonicalizer7IsArrayENS1_18CanonicalTypeIndexE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8056) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ult i32 %1, 1000448
  br i1 %i.a, label %_ZNK2v88internal4wasm17TypeCanonicalizer19CanonicalTypeVectorixENS1_18CanonicalTypeIndexE.exit, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.15) #13
  unreachable

_ZNK2v88internal4wasm17TypeCanonicalizer19CanonicalTypeVectorixENS1_18CanonicalTypeIndexE.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = lshr i32 %1, 10
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.d
  %i.f = load atomic ptr, ptr %i.e monotonic, align 8
  %i.g = and i32 %1, 1023
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  %i.j = load atomic ptr, ptr %i.i monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.l = load i8, ptr %i.k, align 4
  %i.m = icmp eq i8 %i.l, 2
  ret i1 %i.m
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal4wasm17TypeCanonicalizer8IsSharedENS1_18CanonicalTypeIndexE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8056) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ult i32 %1, 1000448
  br i1 %i.a, label %_ZNK2v88internal4wasm17TypeCanonicalizer19CanonicalTypeVectorixENS1_18CanonicalTypeIndexE.exit, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.15) #13
  unreachable

_ZNK2v88internal4wasm17TypeCanonicalizer19CanonicalTypeVectorixENS1_18CanonicalTypeIndexE.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = lshr i32 %1, 10
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.d
  %i.f = load atomic ptr, ptr %i.e monotonic, align 8
  %i.g = and i32 %1, 1023
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  %i.j = load atomic ptr, ptr %i.i monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 22
  %i.l = load i8, ptr %i.k, align 2, !range !15, !noundef !16
  %i.m = trunc nuw i8 %i.l to i1
  ret i1 %i.m
}

declare preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not23 = icmp ult i64 %i.l, %1
  br i1 %.not23, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPN2v88internal4wasm18CanonicalTypeIndexEmS3_ET_S5_T0_RSaIT1_E.exit, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
end_hunk_0
