inline.NumInlined: 3394
inline.NumDeleted: 1222
begin_hunk_0_@_ZN2v88internal17ValueDeserializer16ReadSharedObjectEv:bb.a
  %.sroa.0.0.insert.insert.i21 = or disjoint i64 %.sroa.21.0.insert.shift.i20, 1
  br label %_ZN2v88internal17ValueDeserializer10ReadVarintIjEENS_5MaybeIT_EEv.exit

bb.l:                                             ; preds = %bb.j
  %i.af = and i32 %i.ad, 2080768
  %i.ag = or disjoint i32 %i.af, %i.y             ; 2 uses
  %i.ah = load i8, ptr %i.aa, align 1             ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  store ptr %i.ai, ptr %i.g, align 8
  %i.aj = zext i8 %i.ah to i32
  %i.ak = icmp slt i8 %i.ah, 0
  %i.al = shl nuw nsw i32 %i.aj, 21               ; 2 uses
  br i1 %i.ak, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = or disjoint i32 %i.al, %i.ag
  %.sroa.21.0.insert.ext.i22 = zext nneg i32 %i.am to i64
  %.sroa.21.0.insert.shift.i23 = shl nuw nsw i64 %.sroa.21.0.insert.ext.i22, 32
  %.sroa.0.0.insert.insert.i24 = or disjoint i64 %.sroa.21.0.insert.shift.i23, 1
  br label %_ZN2v88internal17ValueDeserializer10ReadVarintIjEENS_5MaybeIT_EEv.exit

bb.n:                                             ; preds = %bb.l
  %i.an = and i32 %i.al, 266338304
  %i.ao = load i8, ptr %i.ai, align 1
  store ptr %i.i, ptr %i.g, align 8
  %i.ap = zext i8 %i.ao to i32
  %i.aq = shl i32 %i.ap, 28
  %i.ar = or disjoint i32 %i.an, %i.aq
  %i.as = or disjoint i32 %i.ar, %i.ag
  %.sroa.21.0.insert.ext.i28 = zext i32 %i.as to i64
  %.sroa.21.0.insert.shift.i29 = shl nuw i64 %.sroa.21.0.insert.ext.i28, 32
  %.sroa.0.0.insert.insert.i30 = or disjoint i64 %.sroa.21.0.insert.shift.i29, 1
  br label %_ZN2v88internal17ValueDeserializer10ReadVarintIjEENS_5MaybeIT_EEv.exit

_ZN2v88internal17ValueDeserializer10ReadVarintIjEENS_5MaybeIT_EEv.exit: ; preds = %bb.n, %bb.g, %bb.i, %bb.k, %bb.m, %bb.e
  %.sroa.0.6.i = phi i64 [ %i.l, %bb.e ], [ %.sroa.0.0.insert.insert.i, %bb.g ], [ %.sroa.0.0.insert.insert.i30, %bb.n ], [ %.sroa.0.0.insert.insert.i24, %bb.m ], [ %.sroa.0.0.insert.insert.i21, %bb.k ], [ %.sroa.0.0.insert.insert.i18, %bb.i ] ; 2 uses
  %.sroa.535.0.extract.shift = lshr i64 %.sroa.0.6.i, 32
  %i.at = trunc i64 %.sroa.0.6.i to i1
  br i1 %i.at, label %bb.o, label %.critedge

bb.o:                                             ; preds = %_ZN2v88internal17ValueDeserializer10ReadVarintIjEENS_5MaybeIT_EEv.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = load ptr, ptr %i.au, align 8            ; 3 uses
  %.not = icmp eq ptr %i.av, null
  br i1 %.not, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.aw = load ptr, ptr %0, align 8               ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 368
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 656
  %i.az = load i64, ptr %i.ay, align 8
  %.not.i31 = icmp eq i64 %.sroa.0.0.copyload.i.i, %i.az
  br i1 %.not.i31, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.ba = call ptr @_ZN2v88internal7Factory8NewErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.aw, i32 noundef 467, ptr null, i64 0) #26
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %i.aw, i64 %i.bb, ptr noundef null) #26 ; 0 uses
  br label %.critedge

bb.r:                                             ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bg = load ptr, ptr %0, align 8
  %i.bh = load ptr, ptr %i.av, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = call noundef ptr %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef %i.bg) #26 ; 2 uses
  %.not13.not = icmp eq ptr %i.bk, null
  br i1 %.not13.not, label %.critedge, label %.critedge15

.critedge15:                                      ; preds = %bb.s
  %i.bl = load ptr, ptr %i.bk, align 8            ; 2 uses
  store ptr %i.bl, ptr %i.bd, align 8
  br label %bb.t

bb.t:                                             ; preds = %.critedge15, %bb.r
  %i.bm = phi ptr [ %i.bl, %.critedge15 ], [ %i.be, %bb.r ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %.sroa.535.0.extract.shift
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = load ptr, ptr %0, align 8               ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 560 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 568
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = icmp eq ptr %i.bu, %i.bw
  br i1 %i.bx, label %bb.u, label %_ZN2v88internal6HandleINS0_10HeapObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !7

bb.u:                                             ; preds = %bb.t
  %i.by = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.bs) #26
  br label %_ZN2v88internal6HandleINS0_10HeapObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_10HeapObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.t, %bb.u
  %.0.i.i = phi ptr [ %i.by, %bb.u ], [ %i.bu, %bb.t ] ; 3 uses
  %i.bz = ptrtoint ptr %.0.i.i to i64
  %i.ca = add i64 %i.bz, 8
  %i.cb = inttoptr i64 %i.ca to ptr
  store ptr %i.cb, ptr %i.bt, align 8
  store i64 %i.br, ptr %.0.i.i, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.s, %_ZN2v88internal17ValueDeserializer10ReadVarintIjEENS_5MaybeIT_EEv.exit, %_ZN2v88internal6HandleINS0_10HeapObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.p, %bb.q, %bb.c
  %.sroa.036.3 = phi ptr [ null, %bb.c ], [ null, %_ZN2v88internal17ValueDeserializer10ReadVarintIjEENS_5MaybeIT_EEv.exit ], [ null, %bb.q ], [ %.0.i.i, %_ZN2v88internal6HandleINS0_10HeapObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ null, %bb.p ], [ null, %bb.s ]
  ret ptr %.sroa.036.3
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal17ValueDeserializer10ReadStringEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp ult i32 %i.b, 12
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @_ZN2v88internal17ValueDeserializer14ReadUtf8StringENS0_14AllocationTypeE(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 noundef zeroext 0)
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @_ZN2v88internal17ValueDeserializer10ReadObjectEv(ptr noundef nonnull align 8 dereferenceable(72) %0) ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = trunc i64 %i.f to i1
  br i1 %i.g, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit, label %.critedge

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit: ; preds = %bb.d
  %i.h = add nsw i64 %i.f, -1
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8
  %i.k = add i64 %i.j, 11
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load atomic volatile i16, ptr %i.l monotonic, align 2
  %i.n = icmp ult i16 %i.m, 128
  %spec.select = select i1 %i.n, ptr %i.e, ptr null
  br label %.critedge

.critedge:                                        ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit, %bb.d, %bb.c, %bb.b
  %.sroa.06.1 = phi ptr [ %i.d, %bb.b ], [ null, %bb.d ], [ null, %bb.c ], [ %spec.select, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit ]
  ret ptr %.sroa.06.1
}

declare ptr @_ZN2v88internal6BigInt20FromSerializedDigitsEPNS0_7IsolateEjNS_4base6VectorIKhEE(ptr noundef, i32 noundef, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN2v88internal7Factory17NewStringFromUtf8ENS_4base6VectorIKcEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i64, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i64, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawTwoByteStringEjNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i8 noundef zeroext, i8) local_unnamed_addr #2

declare ptr @_ZN2v88internal7Factory11NewJSObjectENS0_12DirectHandleINS0_10JSFunctionEEENS0_14AllocationTypeENS0_15NewJSObjectTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal17ValueDeserializer15AddObjectWithIDEjNS0_12DirectHandleINS0_10JSReceiverEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, i32 noundef %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %.sroa.04.0.copyload = load ptr, ptr %i.b, align 8
  %i.c = tail call ptr @_ZN2v88internal10FixedArray10SetAndGrowINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEES5_PNS0_7IsolateES5_iNS6_INS0_6ObjectEEE(ptr noundef %i.a, ptr %.sroa.04.0.copyload, i32 noundef %1, ptr %2) #26 ; 4 uses
  %.sroa.02.0.copyload = load ptr, ptr %i.b, align 8 ; 4 uses
  %i.d = icmp eq ptr %i.c, %.sroa.02.0.copyload
  br i1 %i.d, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %i.c, null
  %i.f = icmp eq ptr %.sroa.02.0.copyload, null
  %or.cond.i = or i1 %i.e, %i.f
  br i1 %or.cond.i, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread16, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit

_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit: ; preds = %bb.b
  %i.g = load i64, ptr %i.c, align 8
  %i.h = load i64, ptr %.sroa.02.0.copyload, align 8
  %i.i = icmp eq i64 %i.g, %i.h
  br i1 %i.i, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread16

_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread16: ; preds = %bb.b, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit
  tail call void @_ZN2v88internal13GlobalHandles7DestroyEPm(ptr noundef %.sroa.02.0.copyload) #26
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 58848
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load i64, ptr %i.c, align 8
  %i.n = tail call ptr @_ZN2v88internal13GlobalHandles6CreateENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(104) %i.l, i64 %i.m) #26
  store ptr %i.n, ptr %i.b, align 8
  br label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread

_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread: ; preds = %bb.a, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread16, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i64 0, -4294967294) i64 @_ZN2v88internal17ValueDeserializer22ReadJSObjectPropertiesENS0_12DirectHandleINS0_8JSObjectEEENS0_16SerializationTagEb(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr %1, i8 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.503", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.503", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::TransitionsAccessor", align 8 ; 11 uses
  %7 = alloca %"class.v8::internal::TransitionsAccessor", align 8 ; 8 uses
  %8 = alloca %"class.v8::internal::PropertyKey", align 8 ; 6 uses
  %9 = alloca %"class.v8::internal::LookupIterator", align 8 ; 6 uses
  %10 = alloca %"class.v8::internal::PropertyKey", align 8 ; 6 uses
  %11 = alloca %"class.v8::internal::LookupIterator", align 8 ; 6 uses
  br i1 %3, label %bb.b, label %bb.bf

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = load ptr, ptr %0, align 8                ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 560 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 568
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_ZN2v88internal18DirectHandleVectorINS0_6ObjectEE7reserveEm.exit, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.e) #26
  br label %_ZN2v88internal18DirectHandleVectorINS0_6ObjectEE7reserveEm.exit

_ZN2v88internal18DirectHandleVectorINS0_6ObjectEE7reserveEm.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.k, %bb.c ], [ %i.g, %bb.b ] ; 3 uses
  %i.l = ptrtoint ptr %.0.i.i to i64
  %i.m = add i64 %i.l, 8
  %i.n = inttoptr i64 %i.m to ptr
  store ptr %i.n, ptr %i.f, align 8
  store i64 %i.d, ptr %.0.i.i, align 8
  %i.o = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #31 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 15 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 4
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal18DirectHandleVectorINS0_6ObjectEE7reserveEm.exit, %.backedge
  %.0379636 = phi i32 [ 0, %_ZN2v88internal18DirectHandleVectorINS0_6ObjectEE7reserveEm.exit ], [ %.5384.jt2, %.backedge ]
  %.sroa.0301.0635 = phi ptr [ %.0.i.i, %_ZN2v88internal18DirectHandleVectorINS0_6ObjectEE7reserveEm.exit ], [ %.sroa.0301.6.jt2, %.backedge ] ; 6 uses
  %.sroa.0277.0634 = phi ptr [ %i.o, %_ZN2v88internal18DirectHandleVectorINS0_6ObjectEE7reserveEm.exit ], [ %.sroa.0277.6.jt2, %.backedge ] ; 18 uses
  %.sroa.15.0633 = phi ptr [ %i.o, %_ZN2v88internal18DirectHandleVectorINS0_6ObjectEE7reserveEm.exit ], [ %.sroa.15.6.jt2, %.backedge ] ; 11 uses
  %.sroa.28.0632 = phi ptr [ %i.p, %_ZN2v88internal18DirectHandleVectorINS0_6ObjectEE7reserveEm.exit ], [ %.sroa.28.6.jt2, %.backedge ] ; 5 uses
  %i.ac = load ptr, ptr %i.q, align 8             ; 6 uses
  %i.ad = load ptr, ptr %i.r, align 8             ; 6 uses
  %.not.i101973 = icmp ult ptr %i.ac, %i.ad
  br i1 %.not.i101973, label %.lr.ph, label %_ZN2v88internal18DirectHandleVectorINS0_6ObjectEED2Ev.exit.thread

bb.e:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i974, i64 1 ; 2 uses
  %.not.i101 = icmp ult ptr %i.ae, %i.ad
  br i1 %.not.i101, label %.lr.ph, label %_ZN2v88internal18DirectHandleVectorINS0_6ObjectEED2Ev.exit.thread, !llvm.loop !67

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.0.i974 = phi ptr [ %i.ae, %bb.e ], [ %i.ac, %bb.d ] ; 2 uses
  %i.af = load i8, ptr %.0.i974, align 1          ; 2 uses
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.e, label %_ZNK2v85MaybeINS_8internal16SerializationTagEE2ToEPS2_.exit99, !llvm.loop !67

_ZNK2v85MaybeINS_8internal16SerializationTagEE2ToEPS2_.exit99: ; preds = %.lr.ph
  %i.ah = icmp eq i8 %i.af, %2
  %.not.i.i993 = icmp ult ptr %i.ac, %i.ad        ; 2 uses
  br i1 %i.ah, label %.preheader530, label %.preheader531.preheader

.preheader531.preheader:                          ; preds = %_ZNK2v85MaybeINS_8internal16SerializationTagEE2ToEPS2_.exit99
  br i1 %.not.i.i993, label %.lr.ph980, label %_ZN2v88internal18DirectHandleVectorINS0_6ObjectEED2Ev.exit.thread

.preheader530:                                    ; preds = %_ZNK2v85MaybeINS_8internal16SerializationTagEE2ToEPS2_.exit99
  br i1 %.not.i.i993, label %.lr.ph994, label %_ZN2v88internal17ValueDeserializer7ReadTagEv.exit.thread.i

bb.f:                                             ; preds = %.lr.ph994
  %.not.i.i = icmp ult ptr %i.ak, %i.ad
  br i1 %.not.i.i, label %.lr.ph994, label %_ZN2v88internal17ValueDeserializer7ReadTagEv.exit.thread.i, !llvm.loop !66

.lr.ph994:                                        ; preds = %.preheader530, %bb.f
  %i.ai = phi ptr [ %i.ak, %bb.f ], [ %i.ac, %.preheader530 ] ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 3 uses
  store ptr %i.ak, ptr %i.q, align 8
  %i.al = icmp eq i8 %i.aj, 0
  br i1 %i.al, label %bb.f, label %_ZN2v88internal17ValueDeserializer10ConsumeTagENS0_16SerializationTagE.exit, !llvm.loop !66

_ZN2v88internal17ValueDeserializer7ReadTagEv.exit.thread.i: ; preds = %bb.f, %.preheader530
  call void @_ZN2v812api_internal17FromJustIsNothingEv() #26
  br label %_ZN2v88internal17ValueDeserializer10ConsumeTagENS0_16SerializationTagE.exit

_ZN2v88internal17ValueDeserializer10ConsumeTagENS0_16SerializationTagE.exit: ; preds = %.lr.ph994, %_ZN2v88internal17ValueDeserializer7ReadTagEv.exit.thread.i
  %i.am = load ptr, ptr %0, align 8
  %i.an = ptrtoint ptr %.sroa.15.0633 to i64
  %i.ao = ptrtoint ptr %.sroa.0277.0634 to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 2 uses
  %i.aq = ashr exact i64 %i.ap, 3                 ; 2 uses
  call void @_ZN2v88internal8JSObject21AllocateStorageForMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEE(ptr noundef %i.am, ptr nonnull %1, ptr %.sroa.0301.0635) #26
  %i.ar = load i64, ptr %1, align 8
  %i.as = add i64 %i.ar, -1
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load atomic volatile i64, ptr %i.at monotonic, align 8
  %.not41.i = icmp eq ptr %.sroa.15.0633, %.sroa.0277.0634
  br i1 %.not41.i, label %_ZN2v88internalL16CommitPropertiesEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS3_INS0_3MapEEENS_4base6VectorIKNS3_INS0_6ObjectEEEEE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN2v88internal17ValueDeserializer10ConsumeTagENS0_16SerializationTagE.exit
  %i.av = add i64 %i.au, 39
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = add i64 %i.ax, 7
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i
  %.sroa.017.042.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bk, %bb.g ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.az = load i64, ptr %1, align 8
  store i64 %i.az, ptr %5, align 8
  %i.ba = mul i64 %.sroa.017.042.i, 103079215104
  %sext.i.i = add i64 %i.ba, 137438953472
  %i.bb = ashr exact i64 %sext.i.i, 32
  %i.bc = add i64 %i.ay, %i.bb
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = load atomic volatile i64, ptr %i.bd monotonic, align 8
  %i.bf = lshr i64 %i.be, 32
  %i.bg = trunc nuw i64 %i.bf to i32
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0277.0634, i64 %.sroa.017.042.i
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = load i64, ptr %i.bi, align 8
  call void @_ZN2v88internal8JSObject12WriteToFieldENS0_13InternalIndexENS0_15PropertyDetailsENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 %.sroa.017.042.i, i32 %i.bg, i64 %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.bk = add nuw i64 %.sroa.017.042.i, 1         ; 2 uses
  %.not.i103 = icmp eq i64 %i.bk, %i.aq
  br i1 %.not.i103, label %_ZN2v88internalL16CommitPropertiesEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS3_INS0_3MapEEENS_4base6VectorIKNS3_INS0_6ObjectEEEEE.exit, label %bb.g

_ZN2v88internalL16CommitPropertiesEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS3_INS0_3MapEEENS_4base6VectorIKNS3_INS0_6ObjectEEEEE.exit: ; preds = %bb.g
  %i.bl = icmp ult i64 %i.aq, 4294967295
  br i1 %i.bl, label %_ZN2v88internalL16CommitPropertiesEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS3_INS0_3MapEEENS_4base6VectorIKNS3_INS0_6ObjectEEEEE.exit.thread, label %bb.h, !prof !110

bb.h:                                             ; preds = %_ZN2v88internalL16CommitPropertiesEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS3_INS0_3MapEEENS_4base6VectorIKNS3_INS0_6ObjectEEEEE.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14) #27
  unreachable

_ZN2v88internalL16CommitPropertiesEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS3_INS0_3MapEEENS_4base6VectorIKNS3_INS0_6ObjectEEEEE.exit.thread: ; preds = %_ZN2v88internal17ValueDeserializer10ConsumeTagENS0_16SerializationTagE.exit, %_ZN2v88internalL16CommitPropertiesEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS3_INS0_3MapEEENS_4base6VectorIKNS3_INS0_6ObjectEEEEE.exit
  %.sroa.21.0.insert.ext.i = shl i64 %i.ap, 29
  %.sroa.21.0.insert.shift.i = and i64 %.sroa.21.0.insert.ext.i, -4294967296
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.21.0.insert.shift.i, 1
  br label %_ZN2v88internal18DirectHandleVectorINS0_6ObjectEED2Ev.exit.thread

.preheader531:                                    ; preds = %.lr.ph980
  %.not.i104 = icmp ult ptr %i.bo, %i.ad
  br i1 %.not.i104, label %.lr.ph980, label %_ZN2v88internal18DirectHandleVectorINS0_6ObjectEED2Ev.exit.thread, !llvm.loop !66

.lr.ph980:                                        ; preds = %.preheader531.preheader, %.preheader531
  %i.bm = phi ptr [ %i.bo, %.preheader531 ], [ %i.ac, %.preheader531.preheader ] ; 7 uses
  %i.bn = load i8, ptr %i.bm, align 1             ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 1 ; 4 uses
  store ptr %i.bo, ptr %i.q, align 8
  %i.bp = icmp eq i8 %i.bn, 0
  br i1 %i.bp, label %.preheader531, label %_ZNK2v85MaybeINS_8internal16SerializationTagEE2ToEPS2_.exit98, !llvm.loop !66

_ZNK2v85MaybeINS_8internal16SerializationTagEE2ToEPS2_.exit98: ; preds = %.lr.ph980
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 6 ; 2 uses
  %.not.i = icmp ult ptr %i.bq, %i.ad
  br i1 %.not.i, label %bb.j, label %bb.i, !prof !8

bb.i:                                             ; preds = %_ZNK2v85MaybeINS_8internal16SerializationTagEE2ToEPS2_.exit98
  %i.br = call i64 @_ZN2v88internal17ValueDeserializer14ReadVarintLoopIjEENS_5MaybeIT_EEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  br label %_ZN2v88internal17ValueDeserializer10ReadVarintIjEENS_5MaybeIT_EEv.exit

bb.j:                                             ; preds = %_ZNK2v85MaybeINS_8internal16SerializationTagEE2ToEPS2_.exit98
  %i.bs = load i8, ptr %i.bo, align 1             ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 2 ; 2 uses
  store ptr %i.bt, ptr %i.q, align 8
  %i.bu = icmp slt i8 %i.bs, 0
  br i1 %i.bu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.21.0.insert.ext.i109 = zext nneg i8 %i.bs to i64
  %.sroa.21.0.insert.shift.i110 = shl nuw nsw i64 %.sroa.21.0.insert.ext.i109, 32
  %.sroa.0.0.insert.insert.i111 = or disjoint i64 %.sroa.21.0.insert.shift.i110, 1
  br label %_ZN2v88internal17ValueDeserializer10ReadVarintIjEENS_5MaybeIT_EEv.exit

bb.l:                                             ; preds = %bb.j
  %i.bv = and i8 %i.bs, 127
  %i.bw = zext nneg i8 %i.bv to i32               ; 2 uses
  %i.bx = load i8, ptr %i.bt, align 1             ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bm, i64 3 ; 2 uses
  store ptr %i.by, ptr %i.q, align 8
  %i.bz = zext i8 %i.bx to i32
  %i.ca = icmp slt i8 %i.bx, 0
  %i.cb = shl nuw nsw i32 %i.bz, 7                ; 2 uses
  br i1 %i.ca, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = or disjoint i32 %i.cb, %i.bw
  %.sroa.21.0.insert.ext.i112 = zext nneg i32 %i.cc to i64
  %.sroa.21.0.insert.shift.i113 = shl nuw nsw i64 %.sroa.21.0.insert.ext.i112, 32
  %.sroa.0.0.insert.insert.i114 = or disjoint i64 %.sroa.21.0.insert.shift.i113, 1
  br label %_ZN2v88internal17ValueDeserializer10ReadVarintIjEENS_5MaybeIT_EEv.exit

bb.n:                                             ; preds = %bb.l
  %i.cd = and i32 %i.cb, 16256
  %i.ce = or disjoint i32 %i.cd, %i.bw            ; 2 uses
  %i.cf = load i8, ptr %i.by, align 1             ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bm, i64 4 ; 2 uses
  store ptr %i.cg, ptr %i.q, align 8
  %i.ch = zext i8 %i.cf to i32
  %i.ci = icmp slt i8 %i.cf, 0
  %i.cj = shl nuw nsw i32 %i.ch, 14               ; 2 uses
  br i1 %i.ci, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ck = or disjoint i32 %i.cj, %i.ce
  %.sroa.21.0.insert.ext.i115 = zext nneg i32 %i.ck to i64
  %.sroa.21.0.insert.shift.i116 = shl nuw nsw i64 %.sroa.21.0.insert.ext.i115, 32
  %.sroa.0.0.insert.insert.i117 = or disjoint i64 %.sroa.21.0.insert.shift.i116, 1
  br label %_ZN2v88internal17ValueDeserializer10ReadVarintIjEENS_5MaybeIT_EEv.exit

bb.p:                                             ; preds = %bb.n
  %i.cl = and i32 %i.cj, 2080768
  %i.cm = or disjoint i32 %i.cl, %i.ce            ; 2 uses
  %i.cn = load i8, ptr %i.cg, align 1             ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bm, i64 5 ; 2 uses
  store ptr %i.co, ptr %i.q, align 8
  %i.cp = zext i8 %i.cn to i32
  %i.cq = icmp slt i8 %i.cn, 0
  %i.cr = shl nuw nsw i32 %i.cp, 21               ; 2 uses
  br i1 %i.cq, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cs = or disjoint i32 %i.cr, %i.cm
  %.sroa.21.0.insert.ext.i118 = zext nneg i32 %i.cs to i64
  %.sroa.21.0.insert.shift.i119 = shl nuw nsw i64 %.sroa.21.0.insert.ext.i118, 32
  %.sroa.0.0.insert.insert.i120 = or disjoint i64 %.sroa.21.0.insert.shift.i119, 1
  br label %_ZN2v88internal17ValueDeserializer10ReadVarintIjEENS_5MaybeIT_EEv.exit

bb.r:                                             ; preds = %bb.p
  %i.ct = and i32 %i.cr, 266338304
  %i.cu = load i8, ptr %i.co, align 1
  store ptr %i.bq, ptr %i.q, align 8
  %i.cv = zext i8 %i.cu to i32
  %i.cw = shl i32 %i.cv, 28
  %i.cx = or disjoint i32 %i.ct, %i.cw
  %i.cy = or disjoint i32 %i.cx, %i.cm
  %.sroa.21.0.insert.ext.i124 = zext i32 %i.cy to i64
  %.sroa.21.0.insert.shift.i125 = shl nuw i64 %.sroa.21.0.insert.ext.i124, 32
  %.sroa.0.0.insert.insert.i126 = or disjoint i64 %.sroa.21.0.insert.shift.i125, 1
  br label %_ZN2v88internal17ValueDeserializer10ReadVarintIjEENS_5MaybeIT_EEv.exit

_ZN2v88internal17ValueDeserializer10ReadVarintIjEENS_5MaybeIT_EEv.exit: ; preds = %bb.r, %bb.k, %bb.m, %bb.o, %bb.q, %bb.i
  %.sroa.0.6.i = phi i64 [ %i.br, %bb.i ], [ %.sroa.0.0.insert.insert.i111, %bb.k ], [ %.sroa.0.0.insert.insert.i126, %bb.r ], [ %.sroa.0.0.insert.insert.i120, %bb.q ], [ %.sroa.0.0.insert.insert.i117, %bb.o ], [ %.sroa.0.0.insert.insert.i114, %bb.m ] ; 5 uses
  %.sroa.6259.0.extract.shift = lshr i64 %.sroa.0.6.i, 32 ; 9 uses
  %i.cz = trunc i64 %.sroa.0.6.i to i1
  br i1 %i.cz, label %bb.s, label %_ZN2v88internal18DirectHandleVectorINS0_6ObjectEED2Ev.exit.thread764, !prof !8

bb.s:                                             ; preds = %_ZN2v88internal17ValueDeserializer10ReadVarintIjEENS_5MaybeIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.da = load ptr, ptr %0, align 8
  %i.db = load i64, ptr %.sroa.0301.0635, align 8 ; 2 uses
  store ptr %i.da, ptr %6, align 8
  store i64 %i.db, ptr %i.s, align 8
  %i.dc = add i64 %i.db, 63
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = load atomic volatile i64, ptr %i.dd acquire, align 8 ; 5 uses
  store i64 %i.de, ptr %i.t, align 8
  %i.df = and i64 %i.de, 1
  %i.dg = icmp eq i64 %i.df, 0
  %i.dh = and i64 %i.de, 4294967295
  %i.di = icmp eq i64 %i.dh, 3
  %or.cond.i.i = or i1 %i.dg, %i.di
  br i1 %or.cond.i.i, label %_ZN2v88internal19TransitionsAccessorC2EPNS0_7IsolateENS0_6TaggedINS0_3MapEEEb.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dj = and i64 %i.de, 3
  switch i64 %i.dj, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_7IsolateEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i [
    i64 3, label %_ZN2v88internal19TransitionsAccessorC2EPNS0_7IsolateENS0_6TaggedINS0_3MapEEEb.exit
    i64 1, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t
  %i.dk = add nsw i64 %i.de, -1
  %i.dl = inttoptr i64 %i.dk to ptr               ; 2 uses
  %i.dm = load atomic volatile i64, ptr %i.dl monotonic, align 8
  %i.dn = add i64 %i.dm, 11
  %i.do = inttoptr i64 %i.dn to ptr
  %i.dp = load atomic volatile i16, ptr %i.do monotonic, align 2
  %i.dq = icmp eq i16 %i.dp, 258
  br i1 %i.dq, label %_ZN2v88internal19TransitionsAccessorC2EPNS0_7IsolateENS0_6TaggedINS0_3MapEEEb.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dr = load atomic volatile i64, ptr %i.dl monotonic, align 8
  %i.ds = add i64 %i.dr, 11
  %i.dt = inttoptr i64 %i.ds to ptr
  %i.du = load atomic volatile i16, ptr %i.dt monotonic, align 2
  %i.dv = icmp eq i16 %i.du, 162
  %..i.i = select i1 %i.dv, i32 0, i32 2
  br label %_ZN2v88internal19TransitionsAccessorC2EPNS0_7IsolateENS0_6TaggedINS0_3MapEEEb.exit

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_7IsolateEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i: ; preds = %bb.t
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #27
  unreachable

_ZN2v88internal19TransitionsAccessorC2EPNS0_7IsolateENS0_6TaggedINS0_3MapEEEb.exit: ; preds = %bb.s, %bb.t, %bb.u, %bb.v
  %.0.i.i127 = phi i32 [ 4, %bb.u ], [ 1, %bb.s ], [ 3, %bb.t ], [ %..i.i, %bb.v ]
  store i32 %.0.i.i127, ptr %i.u, align 8
  store i8 0, ptr %i.v, align 4
  switch i8 %i.bn, label %.critedge90 [
    i8 34, label %bb.w
    i8 99, label %bb.y
    i8 83, label %bb.ab
  ]

bb.w:                                             ; preds = %_ZN2v88internal19TransitionsAccessorC2EPNS0_7IsolateENS0_6TaggedINS0_3MapEEEb.exit
  %i.dw = load ptr, ptr %i.r, align 8, !noalias !111
  %i.dx = load ptr, ptr %i.q, align 8, !noalias !111 ; 3 uses
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = icmp ugt i64 %.sroa.6259.0.extract.shift, %i.ea
  br i1 %i.eb, label %.critedge90, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 %.sroa.6259.0.extract.shift
  store ptr %i.ec, ptr %i.q, align 8, !noalias !111
  %i.ed = call { ptr, ptr } @_ZN2v88internal19TransitionsAccessor18ExpectedTransitionIhEESt4pairINS0_6HandleINS0_6StringEEENS4_INS0_3MapEEEENS_4base6VectorIKT_EE(ptr noundef nonnull align 8 dereferenceable(29) %6, ptr %i.dx, i64 %.sroa.6259.0.extract.shift)
  br label %bb.af

bb.y:                                             ; preds = %_ZN2v88internal19TransitionsAccessorC2EPNS0_7IsolateENS0_6TaggedINS0_3MapEEEb.exit
  %i.ee = load ptr, ptr %i.q, align 8, !noalias !114 ; 3 uses
  %i.ef = ptrtoint ptr %i.ee to i64               ; 2 uses
  %i.eg = and i64 %i.ef, 1
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %bb.z, label %.critedge90

bb.z:                                             ; preds = %bb.y
  %i.ei = load ptr, ptr %i.r, align 8, !noalias !114
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = sub i64 %i.ej, %i.ef
  %i.el = icmp ule i64 %.sroa.6259.0.extract.shift, %i.ek
  %i.em = and i64 %.sroa.0.6.i, 4294967296
  %.not.i129 = icmp eq i64 %i.em, 0
  %or.cond.i = and i1 %.not.i129, %i.el
  br i1 %or.cond.i, label %bb.aa, label %.critedge90

bb.aa:                                            ; preds = %bb.z
  %i.en = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.sroa.6259.0.extract.shift
end_hunk_0
