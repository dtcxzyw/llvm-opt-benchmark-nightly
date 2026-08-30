Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/bigint?download=true
inline.NumInlined: 962
inline.NumDeleted: 281
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN2v88internal6BigInt21NoSideEffectsToStringEPNS0_7IsolateENS0_12DirectHandleIS1_EE:bb.a

bb.f:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.p = load atomic i32, ptr %i.e monotonic, align 4
  %i.q = lshr i32 %i.p, 1
  %i.r = and i32 %i.q, 1073741823
  %i.s = load atomic i32, ptr %i.e monotonic, align 4
  %i.t = trunc i32 %i.s to i1
  %i.u = tail call noundef i32 @_ZN2v86bigint20ToStringResultLengthENS0_6DigitsEib(ptr nonnull %i.o, i32 %i.r, i32 noundef 10, i1 noundef zeroext %i.t) #18 ; 4 uses
  %i.v = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawOneByteStringEjNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.u, i8 noundef zeroext 0, i8 0) #18 ; 5 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.g, label %_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE5CheckEv.exit, !prof !7

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #19
  unreachable

_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE5CheckEv.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 %i.u, ptr %i.a, align 4
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, -1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2v86bigint8PlatformE, i64 16), ptr %i.ab, align 8
  %i.ac = tail call noundef ptr @_ZN2v86bigint9Processor3NewEPNS0_8PlatformE(ptr noundef nonnull %i.ab) #18 ; 2 uses
  %i.ad = load i64, ptr %1, align 8
  %i.ae = add i64 %i.ad, -1
  %i.af = inttoptr i64 %i.ae to ptr               ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ai = load atomic i32, ptr %i.ah monotonic, align 4
  %i.aj = lshr i32 %i.ai, 1
  %i.ak = and i32 %i.aj, 1073741823
  %i.al = load atomic i32, ptr %i.ah monotonic, align 4
  %i.am = trunc i32 %i.al to i1
  %i.an = call noundef i32 @_ZN2v86bigint9Processor8ToStringEPcPjNS0_6DigitsEib(ptr noundef nonnull align 1 dereferenceable(1) %i.ac, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.a, ptr nonnull %i.ag, i32 %i.ak, i32 noundef 10, i1 noundef zeroext %i.am) #18 ; 0 uses
  %i.ao = load i32, ptr %i.a, align 4             ; 3 uses
  %i.ap = icmp eq i32 %i.ao, %i.u
  br i1 %i.ap, label %_ZNSt10unique_ptrIN2v86bigint9ProcessorENS2_9DestroyerEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE5CheckEv.exit
  %i.aq = add i32 %i.u, 23
  %i.ar = and i32 %i.aq, -8                       ; 2 uses
  %i.as = add i32 %i.ao, 23
  %i.at = and i32 %i.as, -8                       ; 2 uses
  %i.au = icmp slt i32 %i.at, %i.ar
  %.pre22.i = load i64, ptr %i.v, align 8         ; 4 uses
  br i1 %i.au, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.av = and i64 %.pre22.i, -262144
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = load i64, ptr %i.aw, align 262144
  %i.ay = and i64 %i.ax, 256
  %.not.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 55464
  call void @_ZN2v88internal4Heap22NotifyObjectSizeChangeENS0_6TaggedINS0_10HeapObjectEEEiiNS0_18ClearRecordedSlotsE(ptr noundef nonnull align 8 dereferenceable(2992) %i.az, i64 %.pre22.i, i32 noundef %i.ar, i32 noundef %i.at, i32 noundef 1) #18
  %.pre.i = load i64, ptr %i.v, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.ba = phi i64 [ %.pre.i, %bb.j ], [ %.pre22.i, %bb.i ], [ %.pre22.i, %bb.h ]
  %i.bb = add i64 %i.ba, -1
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  store atomic volatile i32 %i.ao, ptr %i.bd release, align 4
  br label %_ZNSt10unique_ptrIN2v86bigint9ProcessorENS2_9DestroyerEED2Ev.exit

_ZNSt10unique_ptrIN2v86bigint9ProcessorENS2_9DestroyerEED2Ev.exit: ; preds = %_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE5CheckEv.exit, %bb.k
  call void @_ZN2v86bigint9Processor7DestroyEv(ptr noundef nonnull align 1 dereferenceable(1) %i.ac) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %_ZN2v88internal7Factory24NewStringFromStaticCharsILm22EEENS0_6HandleINS0_6StringEEERAT__KcNS0_14AllocationTypeE.exit

_ZN2v88internal7Factory24NewStringFromStaticCharsILm22EEENS0_6HandleINS0_6StringEEERAT__KcNS0_14AllocationTypeE.exit: ; preds = %bb.d, %_ZNSt10unique_ptrIN2v86bigint9ProcessorENS2_9DestroyerEED2Ev.exit, %bb.b
  %.sroa.050.0 = phi ptr [ %i.i, %bb.b ], [ %i.v, %_ZNSt10unique_ptrIN2v86bigint9ProcessorENS2_9DestroyerEED2Ev.exit ], [ %i.m, %bb.d ]
  ret ptr %.sroa.050.0
}

declare noundef ptr @_ZN2v86bigint9Processor3NewEPNS0_8PlatformE(ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal6BigInt10FromNumberEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE(ptr noundef %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %i.a = load i64, ptr %1, align 8                ; 3 uses
  %i.b = and i64 %i.a, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.a, 32
  %i.e = trunc nuw i64 %i.d to i32
  %i.f = tail call ptr @_ZN2v88internal13MutableBigInt10NewFromIntEPNS0_7IsolateEi(ptr noundef %0, i32 noundef %i.e)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.a, -1
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.0.copyload.i.i.i.i = load double, ptr %i.i, align 1 ; 7 uses
  %i.j = tail call double @llvm.fabs.f64(double %.0.copyload.i.i.i.i)
  %i.k = fcmp ueq double %i.j, +inf
  br i1 %i.k, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %or.cond.i = fcmp ueq double %.0.copyload.i.i.i.i, 0.000000e+00
  br i1 %or.cond.i, label %_ZN2v88internal15DoubleToIntegerEd.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = fcmp ogt double %.0.copyload.i.i.i.i, 0.000000e+00
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = tail call double @llvm.floor.f64(double %.0.copyload.i.i.i.i)
  br label %_ZN2v88internal15DoubleToIntegerEd.exit

bb.g:                                             ; preds = %bb.e
  %i.n = tail call double @llvm.ceil.f64(double %.0.copyload.i.i.i.i)
  %i.o = fadd double %i.n, 0.000000e+00
  br label %_ZN2v88internal15DoubleToIntegerEd.exit

_ZN2v88internal15DoubleToIntegerEd.exit:          ; preds = %bb.d, %bb.f, %bb.g
  %.0.i = phi double [ 0.000000e+00, %bb.d ], [ %i.o, %bb.g ], [ %i.m, %bb.f ]
  %i.p = fcmp une double %.0.i, %.0.copyload.i.i.i.i
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.c, %_ZN2v88internal15DoubleToIntegerEd.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store ptr %1, ptr %2, align 8
  %i.q = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 26, ptr nonnull %2, i64 1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.r = load i64, ptr %i.q, align 8
  %i.s = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.r, ptr noundef null) #18 ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %_ZN2v88internal15DoubleToIntegerEd.exit
  %i.t = tail call ptr @_ZN2v88internal13MutableBigInt13NewFromDoubleEPNS0_7IsolateEd(ptr noundef %0, double noundef %.0.copyload.i.i.i.i)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.b
  %.sroa.023.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.h ], [ %i.t, %bb.i ]
  ret ptr %.sroa.023.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal6BigInt8ToNumberEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4
  %i.f = and i32 %i.e, 2147483646
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %bb.c, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit15, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #18
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit15

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit15: ; preds = %bb.b, %bb.c
  %.0.i14 = phi ptr [ %i.m, %bb.c ], [ %i.i, %bb.b ] ; 3 uses
  %i.n = ptrtoint ptr %.0.i14 to i64
  %i.o = add i64 %i.n, 8
  %i.p = inttoptr i64 %i.o to ptr
  store ptr %i.p, ptr %i.h, align 8
  store i64 0, ptr %.0.i14, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.q = load atomic i32, ptr %i.d monotonic, align 4
  %i.r = and i32 %i.q, 2147483646
  %i.s = icmp eq i32 %i.r, 2
  br i1 %i.s, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.0.copyload.i.i.i.i = load i64, ptr %i.t, align 4 ; 3 uses
  %i.u = icmp ult i64 %.0.copyload.i.i.i.i, 2147483647
  br i1 %i.u, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.v = load atomic i32, ptr %i.d monotonic, align 4
  %i.w = trunc i32 %i.v to i1
  %2 = sub nsw i64 0, %.0.copyload.i.i.i.i
  %spec.select = select i1 %i.w, i64 %2, i64 %.0.copyload.i.i.i.i
  %sext = shl nsw i64 %spec.select, 32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = icmp eq ptr %i.y, %i.aa
  br i1 %i.ab, label %bb.g, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !7

bb.g:                                             ; preds = %bb.f
  %i.ac = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #18
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.f, %bb.g
  %.0.i = phi ptr [ %i.ac, %bb.g ], [ %i.y, %bb.f ] ; 3 uses
  %i.ad = ptrtoint ptr %.0.i to i64
  %i.ae = add i64 %i.ad, 8
  %i.af = inttoptr i64 %i.ae to ptr
  store ptr %i.af, ptr %i.x, align 8
  store i64 %sext, ptr %.0.i, align 8
  br label %bb.h

.critedge:                                        ; preds = %bb.d, %bb.e
  %i.ag = tail call noundef double @_ZN2v88internal13MutableBigInt8ToDoubleENS0_12DirectHandleINS0_10BigIntBaseEEE(ptr nonnull %1)
  %i.ah = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #18 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = add i64 %i.ai, -1
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store double %i.ag, ptr %i.al, align 1
  br label %bb.h

bb.h:                                             ; preds = %.critedge, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit15
  %.sroa.028.0 = phi ptr [ %.0.i14, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit15 ], [ %.0.i, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ], [ %i.ah, %.critedge ]
  ret ptr %.sroa.028.0
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef double @_ZN2v88internal13MutableBigInt8ToDoubleENS0_12DirectHandleINS0_10BigIntBaseEEE(ptr nofree readonly captures(none) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4
  %i.f = and i32 %i.e, 2147483646
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load atomic i32, ptr %i.d monotonic, align 4
  %i.i = lshr i32 %i.h, 1                         ; 2 uses
  %i.j = and i32 %i.i, 1073741823                 ; 3 uses
  %i.k = add nsw i32 %i.j, -1                     ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %.0.copyload.i.i.i.i = load i64, ptr %i.n, align 1 ; 5 uses
  %i.o = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.copyload.i.i.i.i, i1 false) ; 4 uses
  %i.p = trunc nuw nsw i64 %i.o to i32            ; 2 uses
  %i.q = shl i32 %i.i, 6
  %i.r = sub i32 %i.q, %i.p                       ; 2 uses
  %i.s = icmp ugt i32 %i.r, 1024
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = load atomic i32, ptr %i.d monotonic, align 4
  %i.u = trunc i32 %i.t to i1
  %i.v = select i1 %i.u, double -inf, double +inf
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  %i.w = add nsw i32 %i.r, -1                     ; 2 uses
  %i.x = zext i32 %i.w to i64                     ; 6 uses
  %i.y = add nuw nsw i32 %i.p, 1                  ; 2 uses
  %i.z = icmp eq i32 %i.y, 64
  %i.aa = zext nneg i32 %i.y to i64
  %i.ab = shl i64 %.0.copyload.i.i.i.i, %i.aa
  %i.ac = lshr i64 %i.ab, 12
  %i.ad = select i1 %i.z, i64 0, i64 %i.ac        ; 5 uses
  %i.ae = add nuw nsw i64 %i.o, 4294967285
  %i.af = icmp ult i64 %.0.copyload.i.i.i.i, 4503599627370496 ; 2 uses
  %i.ag = icmp ne i32 %i.k, 0
  %or.cond3 = and i1 %i.af, %i.ag
  br i1 %or.cond3, label %.thread105, label %bb.e

.thread105:                                       ; preds = %bb.d
  %i.ah = add nsw i32 %i.j, -2                    ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ai
  %.0.copyload.i.i.i.i71 = load i64, ptr %i.aj, align 1 ; 2 uses
  %i.ak = sub nuw nsw i64 75, %i.o
  %i.al = lshr i64 %.0.copyload.i.i.i.i71, %i.ak
  %i.am = or i64 %i.al, %i.ad
  %i.an = add nuw nsw i64 %i.o, 4294967221
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  br i1 %i.af, label %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = icmp ugt i64 %.0.copyload.i.i.i.i, 9007199254740991
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.thread105, %bb.f
  %.155100114 = phi i64 [ %.0.copyload.i.i.i.i71, %.thread105 ], [ %.0.copyload.i.i.i.i, %bb.f ]
  %.153101113 = phi i32 [ %i.ah, %.thread105 ], [ %i.k, %bb.f ]
  %.150102112 = phi i64 [ %i.am, %.thread105 ], [ %i.ad, %bb.f ]
  %.148104110 = phi i64 [ %i.an, %.thread105 ], [ %i.ae, %bb.f ]
  %i.ap = and i64 %.148104110, 4294967295
  %i.aq = xor i64 %i.ap, 4294967295
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.ar = icmp eq i32 %i.k, 0
  br i1 %i.ar, label %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = add nsw i32 %i.j, -2                    ; 2 uses
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.at
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.au, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %.150102111 = phi i64 [ %.150102112, %bb.g ], [ %i.ad, %bb.i ] ; 5 uses
  %.017.i = phi i32 [ %.153101113, %bb.g ], [ %i.as, %bb.i ] ; 2 uses
  %.016.i = phi i64 [ %.155100114, %bb.g ], [ %.0.copyload.i.i.i.i.i, %bb.i ] ; 2 uses
  %.0.i = phi i64 [ %i.aq, %bb.g ], [ 63, %bb.i ]
  %i.av = shl nuw i64 1, %.0.i                    ; 2 uses
  %i.aw = and i64 %i.av, %.016.i
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = add i64 %i.av, -1
  %i.az = and i64 %i.ay, %.016.i
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %.preheader.preheader.i, label %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread118

.preheader.preheader.i:                           ; preds = %bb.k
  %i.ba = icmp sgt i32 %.017.i, 0
  br i1 %i.ba, label %.lr.ph, label %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit

.lr.ph:                                           ; preds = %.preheader.preheader.i
  %i.bb = zext nneg i32 %.017.i to i64
  br label %bb.l

.preheader.i:                                     ; preds = %bb.l
  %i.bc = trunc nuw i64 %i.be to i32
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %bb.l, label %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit, !llvm.loop !18

bb.l:                                             ; preds = %.lr.ph, %.preheader.i
  %indvars.iv.i123 = phi i64 [ %i.bb, %.lr.ph ], [ %i.be, %.preheader.i ]
  %i.be = add nsw i64 %indvars.iv.i123, -1        ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.be
  %.0.copyload.i.i.i.i24.i = load i64, ptr %i.bf, align 1
  %.not22.i = icmp eq i64 %.0.copyload.i.i.i.i24.i, 0
  br i1 %.not22.i, label %.preheader.i, label %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread118, !llvm.loop !18

_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit: ; preds = %.preheader.i, %.preheader.preheader.i
  %i.bg = and i64 %.150102111, 1
  %.not = icmp eq i64 %i.bg, 0
  br i1 %.not, label %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread, label %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread118

_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread118: ; preds = %bb.l, %bb.k, %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit
  %i.bh = add nuw nsw i64 %.150102111, 1
  %.not62 = icmp ult i64 %.150102111, 4503599627370495
  br i1 %.not62, label %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread, label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread118
  %i.bi = add nuw nsw i64 %i.x, 1
  %i.bj = icmp ugt i32 %i.w, 1022
  br i1 %i.bj, label %bb.n, label %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.bk = load atomic i32, ptr %i.d monotonic, align 4
  %i.bl = trunc i32 %i.bk to i1
  %i.bm = select i1 %i.bl, double -inf, double +inf
  br label %bb.o

_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread: ; preds = %bb.j, %bb.h, %bb.e, %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread118, %bb.m, %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit
  %.056 = phi i64 [ %i.bi, %bb.m ], [ %i.x, %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread118 ], [ %i.x, %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit ], [ %i.x, %bb.e ], [ %i.x, %bb.h ], [ %i.x, %bb.j ]
  %.251 = phi i64 [ 0, %bb.m ], [ %i.bh, %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread118 ], [ %.150102111, %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit ], [ %i.ad, %bb.e ], [ %i.ad, %bb.h ], [ %.150102111, %bb.j ]
  %i.bn = load atomic i32, ptr %i.d monotonic, align 4
  %i.bo = trunc i32 %i.bn to i1
  %i.bp = select i1 %i.bo, i64 -9223372036854775808, i64 0
  %i.bq = shl i64 %.056, 52
  %i.br = add i64 %i.bq, 4607182418800017408
  %i.bs = or i64 %i.br, %.251
  %i.bt = or i64 %i.bs, %i.bp
  %i.bu = bitcast i64 %i.bt to double
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread, %bb.n, %bb.a
  %.2 = phi double [ 0.000000e+00, %bb.a ], [ %i.v, %bb.c ], [ %i.bm, %bb.n ], [ %i.bu, %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread ]
  ret double %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 0, 3) i32 @_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim(ptr nofree readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = xor i32 %1, -1
  %i.d = zext nneg i32 %i.c to i64
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.e = icmp eq i32 %2, 0
  br i1 %i.e, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
end_hunk_0
