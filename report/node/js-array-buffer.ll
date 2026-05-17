inline.NumInlined: 882
inline.NumDeleted: 481
begin_hunk_0_@_ZN2v88internal12JSTypedArray9GetBufferEPNS0_7IsolateE:bb.a
  %i.bs = load i64, ptr %.0.i.i, align 8          ; 2 uses
  %i.bt = load i64, ptr %.0.i, align 8
  %i.bu = add i64 %i.bt, 55
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = add i64 %i.bs, 71
  %i.by = inttoptr i64 %i.bx to ptr
  store i64 %i.bw, ptr %i.by, align 8
  %i.bz = add i64 %i.bs, 79
  %i.ca = inttoptr i64 %i.bz to ptr
  store atomic volatile i64 0, ptr %i.ca release, align 8
  %i.cb = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i = icmp eq ptr %i.cb, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v88internal12BackingStoreESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v88internal12BackingStoreEEclEPS2_.exit.i

_ZNKSt14default_deleteIN2v88internal12BackingStoreEEclEPS2_.exit.i: ; preds = %_ZN2v88internal8JSObject12set_elementsENS0_6TaggedINS0_14FixedArrayBaseEEENS0_16WriteBarrierModeE.exit
  call void @_ZN2v88internal12BackingStoreD1Ev(ptr noundef nonnull align 8 dereferenceable(58) %i.cb) #16
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef 64) #18
  br label %_ZNSt10unique_ptrIN2v88internal12BackingStoreESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal12BackingStoreESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN2v88internal8JSObject12set_elementsENS0_6TaggedINS0_14FixedArrayBaseEEENS0_16WriteBarrierModeE.exit, %_ZNKSt14default_deleteIN2v88internal12BackingStoreEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.t

bb.t:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, %_ZNSt10unique_ptrIN2v88internal12BackingStoreESt14default_deleteIS2_EED2Ev.exit
  ret ptr %.0.i
}

declare void @_ZN2v88internal12BackingStore8AllocateEPNS0_7IsolateEmNS0_10SharedFlagENS0_15InitializedFlagE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.466") align 8, ptr noundef, i64 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZN2v88internal4Heap23FatalProcessOutOfMemoryEPKc(ptr noundef nonnull align 8 dereferenceable(2992), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden i16 @_ZN2v88internal12JSTypedArray17DefineOwnPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6ObjectEEEPNS0_18PropertyDescriptorENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef %0, ptr %1, ptr %2, ptr noundef %3, i64 %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca [1 x %"class.v8::internal::DirectHandle.7"], align 8 ; 4 uses
  %6 = alloca [1 x %"class.v8::internal::DirectHandle.7"], align 8 ; 4 uses
  %7 = alloca %"class.v8::internal::PropertyKey", align 8 ; 6 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %8 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.465", align 8 ; 4 uses
  %9 = alloca %"class.v8::internal::LookupIterator", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @_ZN2v88internal11PropertyKeyC2INS0_6ObjectENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS4_IS6_EEEEEPNS0_7IsolateES7_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %0, ptr %2)
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8
  %.not154 = icmp eq i64 %i.c, -1
  %.pre = load i64, ptr %2, align 8               ; 3 uses
  br i1 %.not154, label %bb.b, label %_ZN2v88internal12_GLOBAL__N_127CanonicalNumericIndexStringEPNS0_7IsolateERKNS0_11PropertyKeyEPb.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %.pre, 1
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.b
  %i.f = add nsw i64 %.pre, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i64, ptr %i.g monotonic, align 8
  %i.i = add i64 %i.h, 11
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load atomic volatile i16, ptr %i.j monotonic, align 2
  %i.l = icmp ult i16 %i.k, 128
  br i1 %i.l, label %bb.c, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.c:                                             ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit, %bb.b
  %i.m = trunc i64 %.pre to i1
  br i1 %i.m, label %bb.d, label %_ZN2v88internal12_GLOBAL__N_127CanonicalNumericIndexStringEPNS0_7IsolateERKNS0_11PropertyKeyEPb.exit.thread

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i75 = load ptr, ptr %7, align 8 ; 2 uses
  %i.n = call ptr @_ZN2v88internal6String8ToNumberINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEES4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEPNS0_7IsolateES5_(ptr noundef %0, ptr %.sroa.0.0.copyload.i.i75) #16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8              ; 3 uses
  %i.p = trunc i64 %i.o to i1
  br i1 %i.p, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.d
  %i.q = add nsw i64 %i.o, -1
  %i.r = inttoptr i64 %i.q to ptr                 ; 3 uses
  %i.s = load atomic volatile i64, ptr %i.r monotonic, align 8
  %i.t = add i64 %i.s, 11
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load atomic volatile i16, ptr %i.u monotonic, align 2
  %i.w = icmp eq i16 %i.v, 130
  br i1 %i.w, label %_ZN2v88internal11IsMinusZeroENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i.i

_ZN2v88internal11IsMinusZeroENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.0.copyload.i.i.i.i.i = load double, ptr %i.x, align 1
  %i.y = call noundef i1 @llvm.is.fpclass.f64(double %.0.copyload.i.i.i.i.i, i32 32)
  br i1 %i.y, label %_ZN2v88internal12_GLOBAL__N_127CanonicalNumericIndexStringEPNS0_7IsolateERKNS0_11PropertyKeyEPb.exit.thread, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i.i

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %_ZN2v88internal11IsMinusZeroENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.z = load atomic volatile i64, ptr %i.r monotonic, align 8
  %i.aa = add i64 %i.z, 11
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load atomic volatile i16, ptr %i.ab monotonic, align 2
  %i.ad = icmp ult i16 %i.ac, 128
  br i1 %i.ad, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit.i, label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i

_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %bb.d
  %i.ae = call ptr @_ZN2v88internal6Object15ConvertToStringINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef %0, ptr nonnull %i.n) #16 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.e, label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit_crit_edge.i, !prof !23

_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit_crit_edge.i: ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i
  %.pre.i = load i64, ptr %i.ae, align 8
  br label %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit.i

bb.e:                                             ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.9) #17
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit.i: ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit_crit_edge.i, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %i.ag = phi i64 [ %.pre.i, %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit_crit_edge.i ], [ %i.o, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i.i ]
  %i.ah = load i64, ptr %.sroa.0.0.copyload.i.i75, align 8
  %i.ai = call noundef zeroext i1 @_ZN2v88internal6Object9SameValueENS0_6TaggedIS1_EES3_(i64 %i.ag, i64 %i.ah) #16
  br i1 %i.ai, label %_ZN2v88internal12_GLOBAL__N_127CanonicalNumericIndexStringEPNS0_7IsolateERKNS0_11PropertyKeyEPb.exit.thread, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12_GLOBAL__N_127CanonicalNumericIndexStringEPNS0_7IsolateERKNS0_11PropertyKeyEPb.exit.thread: ; preds = %bb.a, %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit.i, %_ZN2v88internal11IsMinusZeroENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.c
  %.0 = phi i1 [ false, %bb.c ], [ false, %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit.i ], [ true, %_ZN2v88internal11IsMinusZeroENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ false, %bb.a ]
  %i.aj = load i64, ptr %i.b, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i8 0, ptr %i.a, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.ak = load i64, ptr %1, align 8
  store i64 %i.ak, ptr %8, align 8
  %i.al = call noundef i64 @_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %i.am = load i64, ptr %1, align 8
  %i.an = add i64 %i.am, 31
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = add i64 %i.ap, 71
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load atomic volatile i32, ptr %i.ar monotonic, align 4
  %i.at = and i32 %i.as, 4
  %i.au = icmp ne i32 %i.at, 0
  %i.av = load i8, ptr %i.a, align 1, !range !24
  %i.aw = trunc nuw i8 %i.av to i1
  %or.cond = select i1 %i.au, i1 true, i1 %i.aw
  %i.ax = icmp uge i64 %i.aj, %i.al
  %i.ay = or i1 %i.ax, %or.cond
  br i1 %i.ay, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_127CanonicalNumericIndexStringEPNS0_7IsolateERKNS0_11PropertyKeyEPb.exit.thread
  %i.az = call noundef i32 @_ZN2v88internal14GetShouldThrowEPNS0_7IsolateENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef %0, i64 %4) #16
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %_ZN2v88internal12_GLOBAL__N_127CanonicalNumericIndexStringEPNS0_7IsolateERKNS0_11PropertyKeyEPb.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 256, ptr null, i64 0) #16
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.bc, ptr noundef null) #16 ; 0 uses
  br label %_ZN2v88internal12_GLOBAL__N_127CanonicalNumericIndexStringEPNS0_7IsolateERKNS0_11PropertyKeyEPb.exit

bb.h:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_127CanonicalNumericIndexStringEPNS0_7IsolateERKNS0_11PropertyKeyEPb.exit.thread
  %i.be = load i64, ptr %i.b, align 8
  %.not155 = icmp eq i64 %i.be, -1
  %or.cond4 = or i1 %.0, %.not155
  br i1 %or.cond4, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bf = call noundef i32 @_ZN2v88internal14GetShouldThrowEPNS0_7IsolateENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef %0, i64 %4) #16
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %_ZN2v88internal12_GLOBAL__N_127CanonicalNumericIndexStringEPNS0_7IsolateERKNS0_11PropertyKeyEPb.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 256, ptr null, i64 0) #16
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.bi, ptr noundef null) #16 ; 0 uses
  br label %_ZN2v88internal12_GLOBAL__N_127CanonicalNumericIndexStringEPNS0_7IsolateERKNS0_11PropertyKeyEPb.exit

bb.k:                                             ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  %.not.i79 = icmp eq ptr %i.bl, null
  br i1 %.not.i79, label %_ZN2v88internal18PropertyDescriptor20IsAccessorDescriptorEPS1_.exit, label %_ZN2v88internal18PropertyDescriptor20IsAccessorDescriptorEPS1_.exit.thread

_ZN2v88internal18PropertyDescriptor20IsAccessorDescriptorEPS1_.exit: ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  %.not = icmp eq ptr %i.bn, null
  br i1 %.not, label %bb.m, label %_ZN2v88internal18PropertyDescriptor20IsAccessorDescriptorEPS1_.exit.thread

_ZN2v88internal18PropertyDescriptor20IsAccessorDescriptorEPS1_.exit.thread: ; preds = %bb.k, %_ZN2v88internal18PropertyDescriptor20IsAccessorDescriptorEPS1_.exit
  %i.bo = call noundef i32 @_ZN2v88internal14GetShouldThrowEPNS0_7IsolateENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef %0, i64 %4) #16
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %_ZN2v88internal12_GLOBAL__N_127CanonicalNumericIndexStringEPNS0_7IsolateERKNS0_11PropertyKeyEPb.exit, label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal18PropertyDescriptor20IsAccessorDescriptorEPS1_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store ptr %2, ptr %6, align 8
  %i.bq = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 184, ptr nonnull %6, i64 1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.br, ptr noundef null) #16 ; 0 uses
  br label %_ZN2v88internal12_GLOBAL__N_127CanonicalNumericIndexStringEPNS0_7IsolateERKNS0_11PropertyKeyEPb.exit

bb.m:                                             ; preds = %_ZN2v88internal18PropertyDescriptor20IsAccessorDescriptorEPS1_.exit
  %i.bt = load i8, ptr %3, align 8                ; 6 uses
  %i.bu = and i8 %i.bt, 8
  %.not156 = icmp eq i8 %i.bu, 0                  ; 2 uses
  %10 = and i8 %i.bt, 12
  %or.cond150.not = icmp eq i8 %10, 8
  %11 = and i8 %i.bt, 3
  %or.cond151.not = icmp eq i8 %11, 2
  %or.cond160 = or i1 %or.cond150.not, %or.cond151.not
  %12 = and i8 %i.bt, 48
  %or.cond153.not = icmp eq i8 %12, 32
  %or.cond161 = or i1 %or.cond153.not, %or.cond160
  br i1 %or.cond161, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bv = call noundef i32 @_ZN2v88internal14GetShouldThrowEPNS0_7IsolateENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef %0, i64 %4) #16
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %_ZN2v88internal12_GLOBAL__N_127CanonicalNumericIndexStringEPNS0_7IsolateERKNS0_11PropertyKeyEPb.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store ptr %2, ptr %5, align 8
  %i.bx = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 184, ptr nonnull %5, i64 1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.by, ptr noundef null) #16 ; 0 uses
  br label %_ZN2v88internal12_GLOBAL__N_127CanonicalNumericIndexStringEPNS0_7IsolateERKNS0_11PropertyKeyEPb.exit

bb.p:                                             ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8            ; 2 uses
  %.not157 = icmp eq ptr %i.cb, null
  br i1 %.not157, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cc = or i8 %i.bt, 12
  %i.cd = select i1 %.not156, i8 %i.cc, i8 %i.bt  ; 3 uses
  %i.ce = and i8 %i.cd, 2
  %.not158 = icmp eq i8 %i.ce, 0                  ; 2 uses
  %i.cf = or i8 %i.cd, 3
  %i.cg = select i1 %.not158, i8 %i.cf, i8 %i.cd  ; 3 uses
  %i.ch = or i1 %.not156, %.not158
  %i.ci = and i8 %i.cg, 32
  %.not159 = icmp eq i8 %i.ci, 0                  ; 2 uses
  %i.cj = or i1 %i.ch, %.not159
  br i1 %i.cj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ck = or i8 %i.cg, 48
  %spec.select = select i1 %.not159, i8 %i.ck, i8 %i.cg
  store i8 %spec.select, ptr %3, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE(ptr noundef nonnull align 8 dereferenceable(88) %9, ptr noundef %0, ptr nonnull %1, ptr null, i64 noundef %i.aj, ptr nonnull %1, i32 noundef 1)
  %i.cl = load i8, ptr %3, align 8                ; 4 uses
  %i.cm = and i8 %i.cl, 3
  %.not.i87 = icmp eq i8 %i.cm, 2
  %i.cn = select i1 %.not.i87, i32 2, i32 0
  %i.co = and i8 %i.cl, 8
  %.not1.i = icmp eq i8 %i.co, 0
  %i.cp = and i8 %i.cl, 4
  %i.cq = xor i8 %i.cp, 4
  %narrow.i = select i1 %.not1.i, i8 0, i8 %i.cq
  %i.cr = zext nneg i8 %narrow.i to i32
  %i.cs = and i8 %i.cl, 48
  %narrow5.i = icmp eq i8 %i.cs, 32
  %i.ct = zext i1 %narrow5.i to i32
  %i.cu = or disjoint i32 %i.cn, %i.ct
  %i.cv = or disjoint i32 %i.cu, %i.cr
  %i.cw = call i16 @_ZN2v88internal8JSObject33DefineOwnPropertyIgnoreAttributesEPNS0_14LookupIteratorENS0_12DirectHandleINS0_6ObjectEEENS0_18PropertyAttributesENS_5MaybeINS0_11ShouldThrowEEENS1_20AccessorInfoHandlingENS0_22EnforceDefineSemanticsENS0_11StoreOriginENS0_17MaybeDirectHandleIS5_EE(ptr noundef nonnull %9, ptr nonnull %i.cb, i32 noundef %i.cv, i64 4294967297, i32 noundef 1, i32 noundef 0, i32 noundef 1, i64 0) #16
  %i.cx = trunc i16 %i.cw to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br i1 %i.cx, label %bb.t, label %_ZN2v88internal12_GLOBAL__N_127CanonicalNumericIndexStringEPNS0_7IsolateERKNS0_11PropertyKeyEPb.exit

bb.t:                                             ; preds = %bb.s, %bb.p
  br label %_ZN2v88internal12_GLOBAL__N_127CanonicalNumericIndexStringEPNS0_7IsolateERKNS0_11PropertyKeyEPb.exit

_ZN2v88internal12_GLOBAL__N_127CanonicalNumericIndexStringEPNS0_7IsolateERKNS0_11PropertyKeyEPb.exit: ; preds = %bb.g, %bb.j, %bb.l, %bb.o, %bb.t, %bb.s, %bb.f, %bb.i, %_ZN2v88internal18PropertyDescriptor20IsAccessorDescriptorEPS1_.exit.thread, %bb.n
  %.sroa.072.1 = phi i16 [ 0, %bb.o ], [ 0, %bb.g ], [ 1, %bb.f ], [ 0, %bb.j ], [ 1, %bb.i ], [ 0, %bb.l ], [ 257, %bb.t ], [ 0, %bb.s ], [ 1, %_ZN2v88internal18PropertyDescriptor20IsAccessorDescriptorEPS1_.exit.thread ], [ 1, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.u

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit.i, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit
  %i.cy = call i16 @_ZN2v88internal10JSReceiver25OrdinaryDefineOwnPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEERKNS0_11PropertyKeyEPNS0_18PropertyDescriptorENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %3, i64 %4) #16
  br label %bb.u

bb.u:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_127CanonicalNumericIndexStringEPNS0_7IsolateERKNS0_11PropertyKeyEPb.exit, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %.sroa.072.3 = phi i16 [ %i.cy, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread ], [ %.sroa.072.1, %_ZN2v88internal12_GLOBAL__N_127CanonicalNumericIndexStringEPNS0_7IsolateERKNS0_11PropertyKeyEPb.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  ret i16 %.sroa.072.3
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal11PropertyKeyC2INS0_6ObjectENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS4_IS6_EEEEEPNS0_7IsolateES7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr %2) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  %i.a = load i64, ptr %2, align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = and i64 %i.a, 1
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = icmp sgt i64 %i.a, -1
  br i1 %i.e, label %bb.c, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.f = lshr i64 %i.a, 32
  br label %_ZN2v88internal6Object14ToIntegerIndexENS0_6TaggedIS1_EEPm.exit

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.a
  %i.g = add nsw i64 %i.a, -1
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = load atomic volatile i64, ptr %i.h monotonic, align 8
  %i.j = add i64 %i.i, 11
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i16, ptr %i.k monotonic, align 2
  %i.m = icmp eq i16 %i.l, 130
  br i1 %i.m, label %bb.d, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit

bb.d:                                             ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.0.copyload.i.i.i.i.i = load double, ptr %i.n, align 1 ; 4 uses
  %i.o = fcmp ult double %.0.copyload.i.i.i.i.i, 0.000000e+00
  %i.p = fcmp ogt double %.0.copyload.i.i.i.i.i, f0x433FFFFFFFFFFFFF
  %or.cond.i = or i1 %i.o, %i.p
  br i1 %or.cond.i, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = fptoui double %.0.copyload.i.i.i.i.i to i64 ; 2 uses
  %i.r = uitofp i64 %i.q to double
  %i.s = fcmp oeq double %.0.copyload.i.i.i.i.i, %i.r
  br i1 %i.s, label %_ZN2v88internal6Object14ToIntegerIndexENS0_6TaggedIS1_EEPm.exit, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal6Object14ToIntegerIndexENS0_6TaggedIS1_EEPm.exit: ; preds = %bb.c, %bb.e
  %.sink.i = phi i64 [ %i.f, %bb.c ], [ %i.q, %bb.e ]
  store i64 %.sink.i, ptr %i.b, align 8
  br label %bb.p

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.e, %bb.d
  %i.t = add nsw i64 %i.a, -1
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load atomic volatile i64, ptr %i.u monotonic, align 8
  %i.w = add i64 %i.v, 11
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load atomic volatile i16, ptr %i.x monotonic, align 2
  %i.z = icmp eq i16 %i.y, 130
  br i1 %i.z, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.f

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.b, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit
  %i.aa = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE14NumberToStringENS0_12DirectHandleINS0_6ObjectEEENS0_15NumberCacheModeE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull %2, i32 noundef 2) #16
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit
  %.sroa.016.0 = phi ptr [ %i.aa, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread ], [ %2, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit ] ; 4 uses
  store ptr %.sroa.016.0, ptr %0, align 8
  %i.ab = load i64, ptr %.sroa.016.0, align 8
  %i.ac = add i64 %i.ab, -1
  %i.ad = inttoptr i64 %i.ac to ptr               ; 3 uses
  %i.ae = load atomic volatile i64, ptr %i.ad monotonic, align 8
  %i.af = add i64 %i.ae, 11
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load atomic volatile i16, ptr %i.ag monotonic, align 2
  %i.ai = icmp ult i16 %i.ah, 128
  br i1 %i.ai, label %bb.g, label %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ak = load atomic i32, ptr %i.aj monotonic, align 4 ; 4 uses
  %i.al = and i32 %i.ak, -536870909
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.an = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 10624
  %i.ap = load ptr, ptr %i.ao, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = load i8, ptr %i.ap, align 8, !range !24, !noundef !25
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  br label %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread33

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.at = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 55464
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = add i64 %i.aw, -55464
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 648
  br label %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread33

_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread33: ; preds = %bb.j, %bb.k
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.az, %bb.k ], [ %i.as, %bb.j ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 1432
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = add i64 %i.bb, -1
  %i.bd = inttoptr i64 %i.bc to ptr               ; 3 uses
  %i.be = lshr exact i32 %i.ak, 2
  %i.bf = and i32 %i.be, 16777215                 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 52
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 60
  %i.bj = load i32, ptr %i.bi, align 4
end_hunk_0
