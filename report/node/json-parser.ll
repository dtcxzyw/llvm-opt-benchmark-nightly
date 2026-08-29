Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/json-parser?download=true
inline.NumInlined: 4577
inline.NumDeleted: 1231
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 73
begin_hunk_0_@_ZN2v88internal10JsonParserItE21CalculateFileLocationERNS0_12DirectHandleINS0_6ObjectEEES6_:bb.a
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = icmp eq ptr %i.az, %i.bb
  br i1 %i.bc, label %bb.h, label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.h:                                             ; preds = %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit35
  %i.bd = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.ax) #18
  br label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit35, %bb.h
  %.0.i.i33 = phi ptr [ %i.bd, %bb.h ], [ %i.az, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit35 ] ; 2 uses
  %i.be = ptrtoint ptr %.028.lcssa to i64
  %i.bf = ptrtoint ptr %.026.lcssa to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = shl i64 %i.bg, 31
  %i.bi = and i64 %i.bh, -4294967296
  %i.bj = add i64 %i.bi, 4294967296
  %i.bk = ptrtoint ptr %.0.i.i33 to i64           ; 2 uses
  %i.bl = add i64 %i.bk, 8
  %i.bm = inttoptr i64 %i.bl to ptr
  store ptr %i.bm, ptr %i.ay, align 8
  store i64 %i.bj, ptr %.0.i.i33, align 8
  store i64 %i.bk, ptr %2, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal10JsonParserItE5rootsEv(ptr noundef nonnull align 8 dereferenceable(928) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 648
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal10JsonParserItE18object_constructorEv(ptr noundef nonnull align 8 dereferenceable(928) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8
  ret ptr %.sroa.0.0.copyload
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal10JsonParserItE14UpdatePointersEv(ptr noundef nonnull align 8 dereferenceable(928) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.02.0.copyload = load ptr, ptr %i.a, align 8
  %i.b = load i64, ptr %.sroa.02.0.copyload, align 8
  %i.c = add i64 %i.b, -1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not = icmp eq ptr %i.g, %i.e
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.k
  store ptr %i.e, ptr %i.f, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  store ptr %i.q, ptr %i.h, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.p
  store ptr %i.r, ptr %i.m, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @_ZN2v88internal8JSObject11AddPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEENS4_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr noundef, ptr, ptr, ptr, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal21JsonParseInternalizer23InternalizeJsonPropertyILNS1_19WithOrWithoutSourceE1EEENS0_11MaybeHandleINS0_6ObjectEEENS0_12DirectHandleINS0_10JSReceiverEEENS7_INS0_6StringEEENS0_6HandleIS5_EENS7_IS5_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3, ptr %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::LookupIterator", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::PropertyKey", align 8 ; 5 uses
  %7 = alloca [3 x %"class.v8::internal::DirectHandle"], align 16 ; 6 uses
  %i.a = load ptr, ptr %0, align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 560 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 16 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 576 ; 8 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 8
  %i.i = load ptr, ptr %0, align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @_ZN2v88internal11PropertyKeyC2INS0_12DirectHandleEQsr3stdE16is_convertible_vIT_INS0_4NameEENS3_IS5_EEEEEPNS0_7IsolateES6_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.i, ptr %2)
  %i.j = load ptr, ptr %6, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.l = load i64, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef %i.i, ptr %1, ptr %i.j, i64 noundef %i.l, ptr %1, i32 noundef 3)
  %i.m = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %5, i1 noundef zeroext false) #18 ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread422, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.m, align 8
  %i.p = load i64, ptr %4, align 8
  %i.q = call noundef zeroext i1 @_ZN2v88internal6Object9SameValueENS0_6TaggedIS1_EES3_(i64 %i.o, i64 %i.p) #18 ; 3 uses
  %i.r = load i64, ptr %i.m, align 8              ; 2 uses
  %i.s = trunc i64 %i.r to i1
  br i1 %i.s, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.b
  %i.t = add nsw i64 %i.r, -1
  %i.u = inttoptr i64 %i.t to ptr                 ; 3 uses
  %i.v = load atomic volatile i64, ptr %i.u monotonic, align 8
  %i.w = add i64 %i.v, 11
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load atomic volatile i16, ptr %i.x monotonic, align 2
  %i.z = icmp ugt i16 %i.y, 299
  br i1 %i.z, label %bb.c, label %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.c:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit
  %i.aa = load atomic volatile i64, ptr %i.u monotonic, align 8
  %i.ab = add i64 %i.aa, 11
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load atomic volatile i16, ptr %i.ac monotonic, align 2
  %i.ae = icmp eq i16 %i.ad, 2119
  br i1 %i.ae, label %.critedge437, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = load atomic volatile i64, ptr %i.u monotonic, align 8
  %i.ag = add i64 %i.af, 11
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load atomic volatile i16, ptr %i.ah monotonic, align 2
  %i.aj = icmp eq i16 %i.ai, 302
  br i1 %i.aj, label %_ZN2v88internal6Object7IsArrayENS0_12DirectHandleIS1_EE.exit, label %.critedge436

_ZN2v88internal6Object7IsArrayENS0_12DirectHandleIS1_EE.exit: ; preds = %bb.d
  %i.ak = call i16 @_ZN2v88internal7JSProxy7IsArrayENS0_12DirectHandleIS1_EE(ptr nonnull %i.m) #18 ; 2 uses
  %i.al = trunc i16 %i.ak to i1
  br i1 %i.al, label %_ZNKR2v85MaybeIbE8FromJustEv.exit, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread422

_ZNKR2v85MaybeIbE8FromJustEv.exit:                ; preds = %_ZN2v88internal6Object7IsArrayENS0_12DirectHandleIS1_EE.exit
  %i.am = and i16 %i.ak, 256
  %.sroa.6279.0.extract.trunc.not = icmp eq i16 %i.am, 0
  br i1 %.sroa.6279.0.extract.trunc.not, label %.critedge436, label %.critedge437

.critedge437:                                     ; preds = %bb.c, %_ZNKR2v85MaybeIbE8FromJustEv.exit
  %i.an = load ptr, ptr %0, align 8
  %i.ao = call ptr @_ZN2v88internal6Object22GetLengthFromArrayLikeEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEE(ptr noundef %i.an, ptr nonnull %i.m) #18 ; 2 uses
  %.not435 = icmp eq ptr %i.ao, null
  br i1 %.not435, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread422, label %bb.e

bb.e:                                             ; preds = %.critedge437
  %i.ap = load i64, ptr %i.ao, align 8            ; 3 uses
  %i.aq = and i64 %i.ap, 1
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.as = lshr i64 %i.ap, 32
  %i.at = trunc nuw i64 %i.as to i32
  %i.au = sitofp i32 %i.at to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit

bb.g:                                             ; preds = %bb.e
  %i.av = add nsw i64 %i.ap, -1
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.0.copyload.i.i.i.i.i.i = load double, ptr %i.ax, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit: ; preds = %bb.f, %bb.g
  %i.ay = phi double [ %i.au, %bb.f ], [ %.0.copyload.i.i.i.i.i.i, %bb.g ] ; 3 uses
  %i.az = fcmp ule double %i.ay, 0.000000e+00     ; 2 uses
  br i1 %i.q, label %bb.h, label %.preheader

.preheader:                                       ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit
  br i1 %i.az, label %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %_ZN2v88internal11IsSmiDoubleEd.exit.i.i193

bb.h:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit
  br i1 %i.az, label %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %_ZN2v88internal11IsSmiDoubleEd.exit.i.i.preheader

_ZN2v88internal11IsSmiDoubleEd.exit.i.i.preheader: ; preds = %bb.h
  %i.ba = load i64, ptr %3, align 8
  %i.bb = add i64 %i.ba, -1
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = lshr i64 %i.be, 32
  %i.bg = trunc nuw i64 %i.bf to i32
  %i.bh = sdiv i32 %i.bg, 2
  %i.bi = sext i32 %i.bh to i64
  br label %_ZN2v88internal11IsSmiDoubleEd.exit.i.i

_ZN2v88internal11IsSmiDoubleEd.exit.i.i:          ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i.i.preheader, %_ZN2v88internal11HandleScopeD2Ev.exit140
  %indvars.iv530 = phi i64 [ 0, %_ZN2v88internal11IsSmiDoubleEd.exit.i.i.preheader ], [ %indvars.iv.next531, %_ZN2v88internal11HandleScopeD2Ev.exit140 ] ; 5 uses
  %8 = phi double [ 0.000000e+00, %_ZN2v88internal11IsSmiDoubleEd.exit.i.i.preheader ], [ %i.dm, %_ZN2v88internal11HandleScopeD2Ev.exit140 ] ; 2 uses
  %i.bj = load ptr, ptr %0, align 8               ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 560 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8            ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 568 ; 5 uses
  %i.bn = load ptr, ptr %i.bm, align 8            ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 576 ; 6 uses
  %i.bp = load i32, ptr %i.bo, align 8
  %i.bq = add nsw i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bo, align 8
  %i.br = load ptr, ptr %0, align 8               ; 4 uses
  %9 = trunc nuw nsw i64 %indvars.iv530 to i32
  %10 = uitofp nneg i32 %9 to double
  %11 = fcmp oeq double %8, %10
  br i1 %11, label %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i, label %18

_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i:   ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i.i
  %12 = shl nuw nsw i64 %indvars.iv530, 32
  %13 = getelementptr inbounds nuw i8, ptr %i.br, i64 560 ; 2 uses
  %14 = load ptr, ptr %13, align 8                ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %i.br, i64 568
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %14, %16
  br i1 %17, label %bb.i, label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !5

bb.i:                                             ; preds = %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i
  %i.bs = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %i.br) #18
  br label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.i, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i
  %.0.i.i.i = phi ptr [ %i.bs, %bb.i ], [ %14, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i ] ; 3 uses
  %i.bt = ptrtoint ptr %.0.i.i.i to i64
  %i.bu = add i64 %i.bt, 8
  %i.bv = inttoptr i64 %i.bu to ptr
  store ptr %i.bv, ptr %13, align 8
  store i64 %12, ptr %.0.i.i.i, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit

18:                                               ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i.i
  %19 = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %i.br) #18 ; 2 uses
  %20 = load i64, ptr %19, align 8
  %21 = add i64 %20, -1
  %22 = inttoptr i64 %21 to ptr
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 8
  store double %8, ptr %23, align 1
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit

_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit: ; preds = %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %18
  %.sroa.0.0.i = phi ptr [ %.0.i.i.i, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %19, %18 ]
  %24 = load ptr, ptr %0, align 8
  %25 = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE14NumberToStringENS0_12DirectHandleINS0_6ObjectEEENS0_15NumberCacheModeE(ptr noundef nonnull align 1 dereferenceable(1) %24, ptr nonnull %.sroa.0.0.i, i32 noundef 2) #18 ; 2 uses
  %26 = icmp slt i64 %indvars.iv530, %i.bi
  br i1 %26, label %bb.j, label %bb.m

bb.j:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit
  %i.bw = load i64, ptr %3, align 8
  %i.bx = add i64 %i.bw, -1
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = shl nuw nsw i64 %indvars.iv530, 1       ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bz
  %i.cc = load atomic volatile i64, ptr %i.cb monotonic, align 8
  %i.cd = load ptr, ptr %0, align 8               ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 560 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8            ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 568
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = icmp eq ptr %i.cf, %i.ch
  br i1 %i.ci, label %bb.k, label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.k:                                             ; preds = %bb.j
  %i.cj = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.cd) #18
  br label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.j, %bb.k
  %.0.i.i176 = phi ptr [ %i.cj, %bb.k ], [ %i.cf, %bb.j ] ; 3 uses
  %i.ck = ptrtoint ptr %.0.i.i176 to i64
  %i.cl = add i64 %i.ck, 8
  %i.cm = inttoptr i64 %i.cl to ptr
  store ptr %i.cm, ptr %i.ce, align 8
  store i64 %i.cc, ptr %.0.i.i176, align 8
  %i.cn = load i64, ptr %3, align 8
  %i.co = add i64 %i.cn, -1
  %i.cp = inttoptr i64 %i.co to ptr
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.bz
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load atomic volatile i64, ptr %i.cr monotonic, align 8
  %i.ct = load ptr, ptr %0, align 8               ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 560 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8            ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 568
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = icmp eq ptr %i.cv, %i.cx
  br i1 %i.cy, label %bb.l, label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit178, !prof !5

bb.l:                                             ; preds = %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.cz = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.ct) #18
  br label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit178

_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit178: ; preds = %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.l
  %.0.i.i177 = phi ptr [ %i.cz, %bb.l ], [ %i.cv, %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ] ; 3 uses
  %i.da = ptrtoint ptr %.0.i.i177 to i64
  %i.db = add i64 %i.da, 8
  %i.dc = inttoptr i64 %i.db to ptr
  store ptr %i.dc, ptr %i.cu, align 8
  store i64 %i.cs, ptr %.0.i.i177, align 8
  %i.dd = call noundef zeroext i1 @_ZN2v88internal21JsonParseInternalizer15RecurseAndApplyILNS1_19WithOrWithoutSourceE1EEEbNS0_6HandleINS0_10JSReceiverEEENS4_INS0_6StringEEENS4_INS0_6ObjectEEESA_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %i.m, ptr %25, ptr nonnull %.0.i.i176, ptr nonnull %.0.i.i177)
  br i1 %i.dd, label %.critedge, label %bb.n

bb.m:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit
  %i.de = call noundef zeroext i1 @_ZN2v88internal21JsonParseInternalizer15RecurseAndApplyILNS1_19WithOrWithoutSourceE0EEEbNS0_6HandleINS0_10JSReceiverEEENS4_INS0_6StringEEENS4_INS0_6ObjectEEESA_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %i.m, ptr %25, ptr null, ptr null)
  br i1 %i.de, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit178
  store ptr %i.bl, ptr %i.bk, align 8
  %i.df = load i32, ptr %i.bo, align 8
  %i.dg = add nsw i32 %i.df, -1
  store i32 %i.dg, ptr %i.bo, align 8
  %i.dh = load ptr, ptr %i.bm, align 8
  %.not.i = icmp eq ptr %i.dh, %i.bn
  br i1 %.not.i, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit, label %bb.o, !prof !6

bb.o:                                             ; preds = %bb.n
  store ptr %i.bn, ptr %i.bm, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.bj) #18
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit

.critedge:                                        ; preds = %bb.m, %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit178
  store ptr %i.bl, ptr %i.bk, align 8
  %i.di = load i32, ptr %i.bo, align 8
  %i.dj = add nsw i32 %i.di, -1
  store i32 %i.dj, ptr %i.bo, align 8
  %i.dk = load ptr, ptr %i.bm, align 8
  %.not.i159 = icmp eq ptr %i.dk, %i.bn
  br i1 %.not.i159, label %_ZN2v88internal11HandleScopeD2Ev.exit140, label %bb.p, !prof !6

bb.p:                                             ; preds = %.critedge
  store ptr %i.bn, ptr %i.bm, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.bj) #18
  br label %_ZN2v88internal11HandleScopeD2Ev.exit140

_ZN2v88internal11HandleScopeD2Ev.exit140:         ; preds = %bb.p, %.critedge
  %indvars.iv.next531 = add nuw nsw i64 %indvars.iv530, 1 ; 2 uses
  %i.dl = trunc nuw i64 %indvars.iv.next531 to i32
  %i.dm = uitofp nneg i32 %i.dl to double         ; 2 uses
  %i.dn = fcmp ule double %i.ay, %i.dm
  br i1 %i.dn, label %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %_ZN2v88internal11IsSmiDoubleEd.exit.i.i, !llvm.loop !146

_ZN2v88internal11IsSmiDoubleEd.exit.i.i193:       ; preds = %.preheader, %_ZN2v88internal11HandleScopeD2Ev.exit139
  %indvars.iv527 = phi i64 [ %indvars.iv.next528, %_ZN2v88internal11HandleScopeD2Ev.exit139 ], [ 0, %.preheader ] ; 3 uses
  %27 = phi double [ %i.ef, %_ZN2v88internal11HandleScopeD2Ev.exit139 ], [ 0.000000e+00, %.preheader ] ; 2 uses
  %i.do = load ptr, ptr %0, align 8               ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 560 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 568 ; 4 uses
  %i.ds = load ptr, ptr %i.dr, align 8            ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 576 ; 4 uses
  %i.du = load i32, ptr %i.dt, align 8
  %i.dv = add nsw i32 %i.du, 1
  store i32 %i.dv, ptr %i.dt, align 8
  %i.dw = load ptr, ptr %0, align 8               ; 4 uses
  %28 = trunc nuw nsw i64 %indvars.iv527 to i32
  %29 = uitofp nneg i32 %28 to double
  %30 = fcmp oeq double %27, %29
  br i1 %30, label %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i194, label %bb.q

_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i194: ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i.i193
  %31 = shl nuw nsw i64 %indvars.iv527, 32
  %32 = getelementptr inbounds nuw i8, ptr %i.dw, i64 560 ; 2 uses
  %33 = load ptr, ptr %32, align 8                ; 2 uses
  %34 = getelementptr inbounds nuw i8, ptr %i.dw, i64 568
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %33, %35
  br i1 %36, label %37, label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i195, !prof !5

37:                                               ; preds = %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i194
  %38 = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %i.dw) #18
  br label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i195

_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i195: ; preds = %37, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i194
  %.0.i.i.i196 = phi ptr [ %38, %37 ], [ %33, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i194 ] ; 3 uses
  %39 = ptrtoint ptr %.0.i.i.i196 to i64
  %40 = add i64 %39, 8
  %41 = inttoptr i64 %40 to ptr
  store ptr %41, ptr %32, align 8
  store i64 %31, ptr %.0.i.i.i196, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit197

bb.q:                                             ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i.i193
  %i.dx = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %i.dw) #18 ; 2 uses
  %42 = load i64, ptr %i.dx, align 8
  %43 = add i64 %42, -1
  %44 = inttoptr i64 %43 to ptr
  %45 = getelementptr inbounds nuw i8, ptr %44, i64 8
  store double %27, ptr %45, align 1
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit197

_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit197: ; preds = %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i195, %bb.q
  %.sroa.0.0.i192 = phi ptr [ %.0.i.i.i196, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i195 ], [ %i.dx, %bb.q ]
  %i.dy = load ptr, ptr %0, align 8
  %i.dz = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE14NumberToStringENS0_12DirectHandleINS0_6ObjectEEENS0_15NumberCacheModeE(ptr noundef nonnull align 1 dereferenceable(1) %i.dy, ptr nonnull %.sroa.0.0.i192, i32 noundef 2) #18
  %i.ea = call noundef zeroext i1 @_ZN2v88internal21JsonParseInternalizer15RecurseAndApplyILNS1_19WithOrWithoutSourceE0EEEbNS0_6HandleINS0_10JSReceiverEEENS4_INS0_6StringEEENS4_INS0_6ObjectEEESA_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %i.m, ptr %i.dz, ptr null, ptr null)
  store ptr %i.dq, ptr %i.dp, align 8
  %i.eb = load i32, ptr %i.dt, align 8
  %i.ec = add nsw i32 %i.eb, -1
  store i32 %i.ec, ptr %i.dt, align 8
  %i.ed = load ptr, ptr %i.dr, align 8
  %.not.i162 = icmp eq ptr %i.ed, %i.ds           ; 2 uses
  br i1 %i.ea, label %.critedge123, label %bb.r

bb.r:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit197
  br i1 %.not.i162, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit, label %bb.s, !prof !6

bb.s:                                             ; preds = %bb.r
  store ptr %i.ds, ptr %i.dr, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.do) #18
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit

.critedge123:                                     ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit197
  br i1 %.not.i162, label %_ZN2v88internal11HandleScopeD2Ev.exit139, label %bb.t, !prof !6

bb.t:                                             ; preds = %.critedge123
  store ptr %i.ds, ptr %i.dr, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.do) #18
  br label %_ZN2v88internal11HandleScopeD2Ev.exit139

_ZN2v88internal11HandleScopeD2Ev.exit139:         ; preds = %bb.t, %.critedge123
  %indvars.iv.next528 = add nuw nsw i64 %indvars.iv527, 1 ; 2 uses
  %i.ee = trunc nuw i64 %indvars.iv.next528 to i32
  %i.ef = uitofp nneg i32 %i.ee to double         ; 2 uses
  %i.eg = fcmp ule double %i.ay, %i.ef
  br i1 %i.eg, label %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %_ZN2v88internal11IsSmiDoubleEd.exit.i.i193, !llvm.loop !147

.critedge436:                                     ; preds = %bb.d, %_ZNKR2v85MaybeIbE8FromJustEv.exit
  %i.eh = load ptr, ptr %0, align 8
  %i.ei = call ptr @_ZN2v88internal14KeyAccumulator7GetKeysEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_17KeyCollectionModeENS0_14PropertyFilterENS0_17GetKeysConversionEbb(ptr noundef %i.eh, ptr nonnull %i.m, i32 noundef 0, i32 noundef 18, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #18 ; 6 uses
  %.not434 = icmp eq ptr %i.ei, null
  br i1 %.not434, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread422, label %bb.u

bb.u:                                             ; preds = %.critedge436
  %i.ej = load i64, ptr %i.ei, align 8
  %i.ek = add i64 %i.ej, -1
  %i.el = inttoptr i64 %i.ek to ptr
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load i64, ptr %i.em, align 8
  %i.eo = lshr i64 %i.en, 32
  %i.ep = trunc nuw i64 %i.eo to i32
  %.not121468 = icmp sgt i32 %i.ep, 0             ; 2 uses
  br i1 %i.q, label %.preheader439, label %.preheader441

.preheader441:                                    ; preds = %bb.u
  br i1 %.not121468, label %.lr.ph, label %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

.preheader439:                                    ; preds = %bb.u
  br i1 %.not121468, label %.lr.ph470, label %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

.lr.ph470:                                        ; preds = %.preheader439, %_ZN2v88internal11HandleScopeD2Ev.exit138
  %indvars.iv524 = phi i64 [ %indvars.iv.next525, %_ZN2v88internal11HandleScopeD2Ev.exit138 ], [ 0, %.preheader439 ] ; 2 uses
  %i.eq = load ptr, ptr %0, align 8               ; 5 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 560 ; 3 uses
  %i.es = load ptr, ptr %i.er, align 8            ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 568 ; 5 uses
  %i.eu = load ptr, ptr %i.et, align 8            ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 576 ; 6 uses
  %i.ew = load i32, ptr %i.ev, align 8
  %i.ex = add nsw i32 %i.ew, 1
  store i32 %i.ex, ptr %i.ev, align 8
  %i.ey = load i64, ptr %i.ei, align 8
  %i.ez = add i64 %i.ey, -1
  %i.fa = inttoptr i64 %i.ez to ptr
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv524
  %i.fd = load atomic volatile i64, ptr %i.fc monotonic, align 8
  %i.fe = load ptr, ptr %0, align 8               ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 560 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8            ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 568
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = icmp eq ptr %i.fg, %i.fi
  br i1 %i.fj, label %bb.v, label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit172, !prof !5

bb.v:                                             ; preds = %.lr.ph470
  %i.fk = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.fe) #18
  br label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit172

_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit172: ; preds = %.lr.ph470, %bb.v
  %.0.i.i171 = phi ptr [ %i.fk, %bb.v ], [ %i.fg, %.lr.ph470 ] ; 5 uses
  %i.fl = ptrtoint ptr %.0.i.i171 to i64
  %i.fm = add i64 %i.fl, 8
  %i.fn = inttoptr i64 %i.fm to ptr
  store ptr %i.fn, ptr %i.ff, align 8
  store i64 %i.fd, ptr %.0.i.i171, align 8
  %i.fo = load i64, ptr %3, align 8
  %i.fp = add i64 %i.fo, -1
  %i.fq = inttoptr i64 %i.fp to ptr
  %i.fr = call { i64, i64 } @_ZN2v88internal24ObjectMultiHashTableBaseINS0_18ObjectTwoHashTableELi2EE6LookupENS0_16PtrComprCageBaseENS0_12DirectHandleINS0_6ObjectEEE(ptr noundef nonnull align 4 dereferenceable(16) %i.fq, ptr nonnull %.0.i.i171) #18 ; 2 uses
  %i.fs = extractvalue { i64, i64 } %i.fr, 0
  %i.ft = extractvalue { i64, i64 } %i.fr, 1      ; 2 uses
  %i.fu = load ptr, ptr %0, align 8               ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 560 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8            ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 568
  %i.fy = load ptr, ptr %i.fx, align 8
  %i.fz = icmp eq ptr %i.fw, %i.fy
  br i1 %i.fz, label %bb.w, label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit182, !prof !5

bb.w:                                             ; preds = %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit172
  %i.ga = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.fu) #18
  br label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit182

_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit182: ; preds = %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit172, %bb.w
  %.0.i.i181 = phi ptr [ %i.ga, %bb.w ], [ %i.fw, %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit172 ] ; 3 uses
  %i.gb = ptrtoint ptr %.0.i.i181 to i64
  %i.gc = add i64 %i.gb, 8
  %i.gd = inttoptr i64 %i.gc to ptr
  store ptr %i.gd, ptr %i.fv, align 8
  store i64 %i.fs, ptr %.0.i.i181, align 8
  %i.ge = load ptr, ptr %0, align 8               ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 560 ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8            ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 568
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = icmp eq ptr %i.gg, %i.gi
  br i1 %i.gj, label %bb.x, label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit180, !prof !5

bb.x:                                             ; preds = %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit182
  %i.gk = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.ge) #18
  br label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit180

_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit180: ; preds = %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit182, %bb.x
  %.0.i.i179 = phi ptr [ %i.gk, %bb.x ], [ %i.gg, %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit182 ] ; 3 uses
  %i.gl = ptrtoint ptr %.0.i.i179 to i64
  %i.gm = add i64 %i.gl, 8
  %i.gn = inttoptr i64 %i.gm to ptr
  store ptr %i.gn, ptr %i.gf, align 8
  store i64 %i.ft, ptr %.0.i.i179, align 8
  %i.go = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 10624
  %i.gq = load ptr, ptr %i.gp, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 104
  %i.gs = load i64, ptr %i.gr, align 8
  %i.gt = icmp eq i64 %i.ft, %i.gs
  br i1 %i.gt, label %bb.y, label %.split

.split:                                           ; preds = %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit180
  %i.gu = call noundef zeroext i1 @_ZN2v88internal21JsonParseInternalizer15RecurseAndApplyILNS1_19WithOrWithoutSourceE1EEEbNS0_6HandleINS0_10JSReceiverEEENS4_INS0_6StringEEENS4_INS0_6ObjectEEESA_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %i.m, ptr nonnull %.0.i.i171, ptr nonnull %.0.i.i181, ptr nonnull %.0.i.i179)
  br i1 %i.gu, label %.critedge129, label %bb.z

bb.y:                                             ; preds = %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit180
  %i.gv = call noundef zeroext i1 @_ZN2v88internal21JsonParseInternalizer15RecurseAndApplyILNS1_19WithOrWithoutSourceE0EEEbNS0_6HandleINS0_10JSReceiverEEENS4_INS0_6StringEEENS4_INS0_6ObjectEEESA_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %i.m, ptr nonnull %.0.i.i171, ptr null, ptr null)
  br i1 %i.gv, label %.critedge129, label %bb.z

bb.z:                                             ; preds = %bb.y, %.split
  store ptr %i.es, ptr %i.er, align 8
  %i.gw = load i32, ptr %i.ev, align 8
  %i.gx = add nsw i32 %i.gw, -1
  store i32 %i.gx, ptr %i.ev, align 8
  %i.gy = load ptr, ptr %i.et, align 8
  %.not.i150 = icmp eq ptr %i.gy, %i.eu
  br i1 %.not.i150, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit, label %bb.aa, !prof !6

bb.aa:                                            ; preds = %bb.z
  store ptr %i.eu, ptr %i.et, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.eq) #18
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit

.critedge129:                                     ; preds = %bb.y, %.split
  store ptr %i.es, ptr %i.er, align 8
  %i.gz = load i32, ptr %i.ev, align 8
  %i.ha = add nsw i32 %i.gz, -1
  store i32 %i.ha, ptr %i.ev, align 8
  %i.hb = load ptr, ptr %i.et, align 8
  %.not.i165 = icmp eq ptr %i.hb, %i.eu
  br i1 %.not.i165, label %_ZN2v88internal11HandleScopeD2Ev.exit138, label %bb.ab, !prof !6

bb.ab:                                            ; preds = %.critedge129
  store ptr %i.eu, ptr %i.et, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.eq) #18
  br label %_ZN2v88internal11HandleScopeD2Ev.exit138

_ZN2v88internal11HandleScopeD2Ev.exit138:         ; preds = %bb.ab, %.critedge129
  %indvars.iv.next525 = add nuw nsw i64 %indvars.iv524, 1 ; 2 uses
  %i.hc = load i64, ptr %i.ei, align 8
  %i.hd = add i64 %i.hc, -1
  %i.he = inttoptr i64 %i.hd to ptr
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hg = load i64, ptr %i.hf, align 8
  %i.hh = ashr i64 %i.hg, 32
  %.not121 = icmp slt i64 %indvars.iv.next525, %i.hh
  br i1 %.not121, label %.lr.ph470, label %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, !llvm.loop !148

.lr.ph:                                           ; preds = %.preheader441, %_ZN2v88internal11HandleScopeD2Ev.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN2v88internal11HandleScopeD2Ev.exit ], [ 0, %.preheader441 ] ; 2 uses
  %i.hi = load ptr, ptr %0, align 8               ; 5 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 560 ; 2 uses
  %i.hk = load ptr, ptr %i.hj, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 568 ; 4 uses
  %i.hm = load ptr, ptr %i.hl, align 8            ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hi, i64 576 ; 4 uses
  %i.ho = load i32, ptr %i.hn, align 8
  %i.hp = add nsw i32 %i.ho, 1
  store i32 %i.hp, ptr %i.hn, align 8
  %i.hq = load i64, ptr %i.ei, align 8
  %i.hr = add i64 %i.hq, -1
  %i.hs = inttoptr i64 %i.hr to ptr
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %indvars.iv
  %i.hv = load atomic volatile i64, ptr %i.hu monotonic, align 8
  %i.hw = load ptr, ptr %0, align 8               ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 560 ; 2 uses
  %i.hy = load ptr, ptr %i.hx, align 8            ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 568
  %i.ia = load ptr, ptr %i.hz, align 8
  %i.ib = icmp eq ptr %i.hy, %i.ia
  br i1 %i.ib, label %bb.ac, label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.ac:                                            ; preds = %.lr.ph
  %i.ic = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.hw) #18
  br label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %.lr.ph, %bb.ac
  %.0.i.i = phi ptr [ %i.ic, %bb.ac ], [ %i.hy, %.lr.ph ] ; 3 uses
  %i.id = ptrtoint ptr %.0.i.i to i64
  %i.ie = add i64 %i.id, 8
  %i.if = inttoptr i64 %i.ie to ptr
  store ptr %i.if, ptr %i.hx, align 8
  store i64 %i.hv, ptr %.0.i.i, align 8
  %i.ig = call noundef zeroext i1 @_ZN2v88internal21JsonParseInternalizer15RecurseAndApplyILNS1_19WithOrWithoutSourceE0EEEbNS0_6HandleINS0_10JSReceiverEEENS4_INS0_6StringEEENS4_INS0_6ObjectEEESA_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %i.m, ptr nonnull %.0.i.i, ptr null, ptr null)
  store ptr %i.hk, ptr %i.hj, align 8
  %i.ih = load i32, ptr %i.hn, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE:bb.a
  br i1 %i.a, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.critedge
  %i.bm = load i64, ptr %3, align 8
  %i.bn = add i64 %i.bm, -1
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = load atomic volatile i64, ptr %i.bo monotonic, align 8
  %i.bq = add i64 %i.bp, 11
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = load atomic volatile i16, ptr %i.br monotonic, align 2
  %i.bt = and i16 %i.bs, -96
  %i.bu = icmp eq i16 %i.bt, 0
  br i1 %i.bu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 0, ptr %i.s, align 8
  br label %bb.l

bb.l:                                             ; preds = %.critedge, %bb.j, %bb.k, %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit
  tail call void @_ZN2v88internal14LookupIterator5StartILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %0) #18
  br label %bb.q

bb.m:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit
  %i.bv = load i64, ptr %3, align 8
  %i.bw = add i64 %i.bv, -1
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = load atomic volatile i64, ptr %i.bx monotonic, align 8
  %i.bz = add i64 %i.by, 11
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = load atomic volatile i16, ptr %i.ca monotonic, align 2
  %i.cc = and i16 %i.cb, -96
  %.not.i21 = icmp eq i16 %i.cc, 32
  br i1 %.not.i21, label %bb.n, label %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit28

bb.n:                                             ; preds = %bb.m
  %i.cd = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !19, !noundef !17
  %i.ce = trunc nuw i8 %i.cd to i1
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 55448
  %i.cg = load i8, ptr %i.cf, align 8, !range !19
  %i.ch = trunc nuw i8 %i.cg to i1
  %not..i.i.i23 = xor i1 %i.ce, true
  %i.ci = select i1 %not..i.i.i23, i1 true, i1 %i.ch
  br i1 %i.ci, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 64088
  %i.ck = load i8, ptr %i.cj, align 8, !range !19, !noundef !17
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt27__throw_bad_optional_accessv() #22
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24: ; preds = %bb.o
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 64080
  %i.cn = load ptr, ptr %i.cm, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25

_ZNK2v88internal7Isolate12string_tableEv.exit.i25: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24, %bb.n
  %.pn.i.i26 = phi ptr [ %i.cn, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24 ], [ %1, %bb.n ]
  %.in.i.i27 = getelementptr inbounds nuw i8, ptr %.pn.i.i26, i64 58464
  %i.co = load ptr, ptr %.in.i.i27, align 8
  %i.cp = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.co, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull %3) #18
  br label %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit28

_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit28: ; preds = %bb.m, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25
  %.sroa.05.0.i22 = phi ptr [ %i.cp, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25 ], [ %3, %bb.m ]
  store ptr %.sroa.05.0.i22, ptr %i.s, align 8
  tail call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %0) #18
  br label %bb.q

bb.q:                                             ; preds = %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit28, %bb.l
  ret void
}

declare ptr @_ZN2v88internal7Factory12SizeToStringEmb(ptr noundef nonnull align 1 dereferenceable(1), i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN2v88internal14LookupIterator5StartILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal6String18SlowAsIntegerIndexEPm(ptr noundef nonnull align 4 dereferenceable(16), ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #11

declare i16 @_ZN2v88internal7JSProxy7IsArrayENS0_12DirectHandleIS1_EE(ptr) local_unnamed_addr #2

declare void @_ZN2v812api_internal17FromJustIsNothingEv() local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal15StackLimitCheck40HandleStackOverflowAndTerminationRequestEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i16 @_ZN2v88internal10JSReceiver23DeletePropertyOrElementEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEENS0_12LanguageModeE(ptr noundef, ptr, ptr, i1 noundef zeroext) local_unnamed_addr #2

declare i16 @_ZN2v88internal10JSReceiver17DefineOwnPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6ObjectEEEPNS0_18PropertyDescriptorENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef, ptr, ptr, ptr noundef, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal21JsonParseInternalizer23InternalizeJsonPropertyILNS1_19WithOrWithoutSourceE0EEENS0_11MaybeHandleINS0_6ObjectEEENS0_12DirectHandleINS0_10JSReceiverEEENS7_INS0_6StringEEENS0_6HandleIS5_EENS7_IS5_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3, ptr %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::LookupIterator", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::PropertyKey", align 8 ; 5 uses
  %7 = alloca [3 x %"class.v8::internal::DirectHandle"], align 16 ; 6 uses
  %i.a = load ptr, ptr %0, align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 560 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 576 ; 8 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 8
  %i.i = load ptr, ptr %0, align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @_ZN2v88internal11PropertyKeyC2INS0_12DirectHandleEQsr3stdE16is_convertible_vIT_INS0_4NameEENS3_IS5_EEEEEPNS0_7IsolateES6_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.i, ptr %2)
  %i.j = load ptr, ptr %6, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.l = load i64, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef %i.i, ptr %1, ptr %i.j, i64 noundef %i.l, ptr %1, i32 noundef 3)
  %i.m = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %5, i1 noundef zeroext false) #18 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.m, align 8              ; 2 uses
  %i.p = trunc i64 %i.o to i1
  br i1 %i.p, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit, label %.critedge130

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.b
  %i.q = add nsw i64 %i.o, -1
  %i.r = inttoptr i64 %i.q to ptr                 ; 3 uses
  %i.s = load atomic volatile i64, ptr %i.r monotonic, align 8
  %i.t = add i64 %i.s, 11
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load atomic volatile i16, ptr %i.u monotonic, align 2
  %i.w = icmp ugt i16 %i.v, 299
  br i1 %i.w, label %bb.c, label %.critedge130

bb.c:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit
  %i.x = load atomic volatile i64, ptr %i.r monotonic, align 8
  %i.y = add i64 %i.x, 11
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load atomic volatile i16, ptr %i.z monotonic, align 2
  %i.ab = icmp eq i16 %i.aa, 2119
  br i1 %i.ab, label %.critedge298, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = load atomic volatile i64, ptr %i.r monotonic, align 8
  %i.ad = add i64 %i.ac, 11
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load atomic volatile i16, ptr %i.ae monotonic, align 2
  %i.ag = icmp eq i16 %i.af, 302
  br i1 %i.ag, label %_ZN2v88internal6Object7IsArrayENS0_12DirectHandleIS1_EE.exit, label %.critedge297

_ZN2v88internal6Object7IsArrayENS0_12DirectHandleIS1_EE.exit: ; preds = %bb.d
  %i.ah = call i16 @_ZN2v88internal7JSProxy7IsArrayENS0_12DirectHandleIS1_EE(ptr nonnull %i.m) #18 ; 2 uses
  %i.ai = trunc i16 %i.ah to i1
  br i1 %i.ai, label %_ZNKR2v85MaybeIbE8FromJustEv.exit, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread

_ZNKR2v85MaybeIbE8FromJustEv.exit:                ; preds = %_ZN2v88internal6Object7IsArrayENS0_12DirectHandleIS1_EE.exit
  %i.aj = and i16 %i.ah, 256
  %.sroa.6199.0.extract.trunc.not = icmp eq i16 %i.aj, 0
  br i1 %.sroa.6199.0.extract.trunc.not, label %.critedge297, label %.critedge298

.critedge298:                                     ; preds = %bb.c, %_ZNKR2v85MaybeIbE8FromJustEv.exit
  %i.ak = load ptr, ptr %0, align 8
  %i.al = call ptr @_ZN2v88internal6Object22GetLengthFromArrayLikeEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEE(ptr noundef %i.ak, ptr nonnull %i.m) #18 ; 2 uses
  %.not296 = icmp eq ptr %i.al, null
  br i1 %.not296, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread, label %bb.e

bb.e:                                             ; preds = %.critedge298
  %i.am = load i64, ptr %i.al, align 8            ; 3 uses
  %i.an = and i64 %i.am, 1
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ap = lshr i64 %i.am, 32
  %i.aq = trunc nuw i64 %i.ap to i32
  %i.ar = sitofp i32 %i.aq to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit

bb.g:                                             ; preds = %bb.e
  %i.as = add nsw i64 %i.am, -1
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.0.copyload.i.i.i.i.i.i = load double, ptr %i.au, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit: ; preds = %bb.f, %bb.g
  %i.av = phi double [ %i.ar, %bb.f ], [ %.0.copyload.i.i.i.i.i.i, %bb.g ] ; 2 uses
  %i.aw = fcmp ule double %i.av, 0.000000e+00
  br i1 %i.aw, label %.critedge130, label %_ZN2v88internal11IsSmiDoubleEd.exit.i.i

_ZN2v88internal11IsSmiDoubleEd.exit.i.i:          ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit, %_ZN2v88internal11HandleScopeD2Ev.exit133
  %indvars.iv339 = phi i64 [ %indvars.iv.next340, %_ZN2v88internal11HandleScopeD2Ev.exit133 ], [ 0, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit ] ; 3 uses
  %8 = phi double [ %i.bo, %_ZN2v88internal11HandleScopeD2Ev.exit133 ], [ 0.000000e+00, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit ] ; 2 uses
  %i.ax = load ptr, ptr %0, align 8               ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 560 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 568 ; 4 uses
  %i.bb = load ptr, ptr %i.ba, align 8            ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 576 ; 4 uses
  %i.bd = load i32, ptr %i.bc, align 8
  %i.be = add nsw i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 8
  %i.bf = load ptr, ptr %0, align 8               ; 4 uses
  %9 = trunc nuw nsw i64 %indvars.iv339 to i32
  %10 = uitofp nneg i32 %9 to double
  %11 = fcmp oeq double %8, %10
  br i1 %11, label %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i, label %bb.h

_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i:   ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i.i
  %12 = shl nuw nsw i64 %indvars.iv339, 32
  %13 = getelementptr inbounds nuw i8, ptr %i.bf, i64 560 ; 2 uses
  %14 = load ptr, ptr %13, align 8                ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %i.bf, i64 568
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %14, %16
  br i1 %17, label %18, label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !5

18:                                               ; preds = %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i
  %19 = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %i.bf) #18
  br label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %18, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i
  %.0.i.i.i = phi ptr [ %19, %18 ], [ %14, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i ] ; 3 uses
  %20 = ptrtoint ptr %.0.i.i.i to i64
  %21 = add i64 %20, 8
  %22 = inttoptr i64 %21 to ptr
  store ptr %22, ptr %13, align 8
  store i64 %12, ptr %.0.i.i.i, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit

bb.h:                                             ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i.i
  %i.bg = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %i.bf) #18 ; 2 uses
  %23 = load i64, ptr %i.bg, align 8
  %24 = add i64 %23, -1
  %25 = inttoptr i64 %24 to ptr
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 8
  store double %8, ptr %26, align 1
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit

_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit: ; preds = %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %bb.h
  %.sroa.0.0.i = phi ptr [ %.0.i.i.i, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %i.bg, %bb.h ]
  %i.bh = load ptr, ptr %0, align 8
  %i.bi = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE14NumberToStringENS0_12DirectHandleINS0_6ObjectEEENS0_15NumberCacheModeE(ptr noundef nonnull align 1 dereferenceable(1) %i.bh, ptr nonnull %.sroa.0.0.i, i32 noundef 2) #18
  %i.bj = call noundef zeroext i1 @_ZN2v88internal21JsonParseInternalizer15RecurseAndApplyILNS1_19WithOrWithoutSourceE0EEEbNS0_6HandleINS0_10JSReceiverEEENS4_INS0_6StringEEENS4_INS0_6ObjectEEESA_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %i.m, ptr %i.bi, ptr null, ptr null)
  store ptr %i.az, ptr %i.ay, align 8
  %i.bk = load i32, ptr %i.bc, align 8
  %i.bl = add nsw i32 %i.bk, -1
  store i32 %i.bl, ptr %i.bc, align 8
  %i.bm = load ptr, ptr %i.ba, align 8
  %.not.i144 = icmp eq ptr %i.bm, %i.bb           ; 2 uses
  br i1 %i.bj, label %.critedge, label %.critedge121

.critedge121:                                     ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit
  br i1 %.not.i144, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit, label %bb.i, !prof !6

bb.i:                                             ; preds = %.critedge121
  store ptr %i.bb, ptr %i.ba, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.ax) #18
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit

.critedge:                                        ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit
  br i1 %.not.i144, label %_ZN2v88internal11HandleScopeD2Ev.exit133, label %bb.j, !prof !6

bb.j:                                             ; preds = %.critedge
  store ptr %i.bb, ptr %i.ba, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.ax) #18
  br label %_ZN2v88internal11HandleScopeD2Ev.exit133

_ZN2v88internal11HandleScopeD2Ev.exit133:         ; preds = %bb.j, %.critedge
  %indvars.iv.next340 = add nuw nsw i64 %indvars.iv339, 1 ; 2 uses
  %i.bn = trunc nuw i64 %indvars.iv.next340 to i32
  %i.bo = uitofp nneg i32 %i.bn to double         ; 2 uses
  %i.bp = fcmp ule double %i.av, %i.bo
  br i1 %i.bp, label %.critedge130, label %_ZN2v88internal11IsSmiDoubleEd.exit.i.i, !llvm.loop !156

.critedge297:                                     ; preds = %bb.d, %_ZNKR2v85MaybeIbE8FromJustEv.exit
  %i.bq = load ptr, ptr %0, align 8
  %i.br = call ptr @_ZN2v88internal14KeyAccumulator7GetKeysEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_17KeyCollectionModeENS0_14PropertyFilterENS0_17GetKeysConversionEbb(ptr noundef %i.bq, ptr nonnull %i.m, i32 noundef 0, i32 noundef 18, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #18 ; 4 uses
  %.not295 = icmp eq ptr %i.br, null
  br i1 %.not295, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread, label %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.preheader

_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.preheader: ; preds = %.critedge297
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = add i64 %i.bs, -1
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = lshr i64 %i.bw, 32
  %i.by = trunc nuw i64 %i.bx to i32
  %.not311 = icmp sgt i32 %i.by, 0
  br i1 %.not311, label %.lr.ph, label %.critedge130

.lr.ph:                                           ; preds = %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.preheader, %_ZN2v88internal11HandleScopeD2Ev.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN2v88internal11HandleScopeD2Ev.exit ], [ 0, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.preheader ] ; 2 uses
  %i.bz = load ptr, ptr %0, align 8               ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 560 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 568 ; 4 uses
  %i.cd = load ptr, ptr %i.cc, align 8            ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 576 ; 4 uses
  %i.cf = load i32, ptr %i.ce, align 8
  %i.cg = add nsw i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ce, align 8
  %i.ch = load i64, ptr %i.br, align 8
  %i.ci = add i64 %i.ch, -1
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv
  %i.cm = load atomic volatile i64, ptr %i.cl monotonic, align 8
  %i.cn = load ptr, ptr %0, align 8               ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 560 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8            ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 568
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = icmp eq ptr %i.cp, %i.cr
  br i1 %i.cs, label %bb.k, label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.k:                                             ; preds = %.lr.ph
  %i.ct = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.cn) #18
  br label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %.lr.ph, %bb.k
  %.0.i.i = phi ptr [ %i.ct, %bb.k ], [ %i.cp, %.lr.ph ] ; 3 uses
  %i.cu = ptrtoint ptr %.0.i.i to i64
  %i.cv = add i64 %i.cu, 8
  %i.cw = inttoptr i64 %i.cv to ptr
  store ptr %i.cw, ptr %i.co, align 8
  store i64 %i.cm, ptr %.0.i.i, align 8
  %i.cx = call noundef zeroext i1 @_ZN2v88internal21JsonParseInternalizer15RecurseAndApplyILNS1_19WithOrWithoutSourceE0EEEbNS0_6HandleINS0_10JSReceiverEEENS4_INS0_6StringEEENS4_INS0_6ObjectEEESA_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %i.m, ptr nonnull %.0.i.i, ptr null, ptr null)
  store ptr %i.cb, ptr %i.ca, align 8
  %i.cy = load i32, ptr %i.ce, align 8
  %i.cz = add nsw i32 %i.cy, -1
  store i32 %i.cz, ptr %i.ce, align 8
  %i.da = load ptr, ptr %i.cc, align 8
  %.not.i147 = icmp eq ptr %i.da, %i.cd           ; 2 uses
  br i1 %i.cx, label %.critedge125, label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  br i1 %.not.i147, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit, label %bb.m, !prof !6

bb.m:                                             ; preds = %bb.l
  store ptr %i.cd, ptr %i.cc, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.bz) #18
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit

.critedge125:                                     ; preds = %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  br i1 %.not.i147, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.n, !prof !6

bb.n:                                             ; preds = %.critedge125
  store ptr %i.cd, ptr %i.cc, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.bz) #18
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.n, %.critedge125
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.db = load i64, ptr %i.br, align 8
  %i.dc = add i64 %i.db, -1
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load i64, ptr %i.de, align 8
  %i.dg = ashr i64 %i.df, 32
  %.not = icmp slt i64 %indvars.iv.next, %i.dg
  br i1 %.not, label %.lr.ph, label %.critedge130, !llvm.loop !157

.critedge130:                                     ; preds = %_ZN2v88internal11HandleScopeD2Ev.exit, %_ZN2v88internal11HandleScopeD2Ev.exit133, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.preheader, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit, %bb.b, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit
  %i.dh = load ptr, ptr %0, align 8               ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 344
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.di, align 8
  %i.dj = add i64 %.sroa.0.0.copyload.i.i.i, -1
  %i.dk = inttoptr i64 %i.dj to ptr
  %i.dl = load atomic volatile i64, ptr %i.dk monotonic, align 8
  %i.dm = add i64 %i.dl, 31
  %i.dn = inttoptr i64 %i.dm to ptr
  %i.do = load i64, ptr %i.dn, align 8
  %i.dp = add i64 %i.do, 1375
  %i.dq = inttoptr i64 %i.dp to ptr
  %i.dr = load atomic volatile i64, ptr %i.dq monotonic, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dh, i64 560 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8            ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dh, i64 568
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = icmp eq ptr %i.dt, %i.dv
  br i1 %i.dw, label %bb.o, label %_ZN2v88internal7Isolate15object_functionEv.exit, !prof !5

bb.o:                                             ; preds = %.critedge130
  %i.dx = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %i.dh) #18
  br label %_ZN2v88internal7Isolate15object_functionEv.exit

_ZN2v88internal7Isolate15object_functionEv.exit:  ; preds = %.critedge130, %bb.o
  %.0.i.i159 = phi ptr [ %i.dx, %bb.o ], [ %i.dt, %.critedge130 ] ; 3 uses
  %i.dy = ptrtoint ptr %.0.i.i159 to i64
  %i.dz = add i64 %i.dy, 8
  %i.ea = inttoptr i64 %i.dz to ptr
  store ptr %i.ea, ptr %i.ds, align 8
  store i64 %i.dr, ptr %.0.i.i159, align 8
  %i.eb = call ptr @_ZN2v88internal7Factory11NewJSObjectENS0_12DirectHandleINS0_10JSFunctionEEENS0_14AllocationTypeENS0_15NewJSObjectTypeE(ptr noundef nonnull align 1 dereferenceable(1) %i.dh, ptr nonnull %.0.i.i159, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store ptr %2, ptr %7, align 16
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.m, ptr %i.ec, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.eb, ptr %i.ed, align 16
  %i.ee = load ptr, ptr %0, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.017.0.copyload = load ptr, ptr %i.ef, align 8
  %i.eg = call ptr @_ZN2v88internal9Execution4CallEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEES6_NS_4base6VectorIKS6_EE(ptr noundef %i.ee, ptr %.sroa.017.0.copyload, ptr %1, ptr nonnull %7, i64 3) #18 ; 2 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit132, label %bb.p

bb.p:                                             ; preds = %_ZN2v88internal7Isolate15object_functionEv.exit
  %i.ei = load i64, ptr %i.eg, align 8
  store ptr %i.c, ptr %i.b, align 8
  %i.ej = load i32, ptr %i.f, align 8
  %i.ek = add nsw i32 %i.ej, -1
  store i32 %i.ek, ptr %i.f, align 8
  %i.el = load ptr, ptr %i.d, align 8
  %.not.i.i = icmp eq ptr %i.el, %i.e
  br i1 %.not.i.i, label %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i, label %bb.q, !prof !6

bb.q:                                             ; preds = %bb.p
  store ptr %i.e, ptr %i.d, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.a) #18
  %.pre = load ptr, ptr %i.b, align 8
  %.pre342 = load ptr, ptr %i.d, align 8
  br label %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i

_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i: ; preds = %bb.q, %bb.p
  %i.em = phi ptr [ %.pre342, %bb.q ], [ %i.e, %bb.p ]
  %i.en = phi ptr [ %.pre, %bb.q ], [ %i.c, %bb.p ] ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.em
  br i1 %i.eo, label %bb.r, label %_ZN2v88internal11HandleScope14CloseAndEscapeINS0_6ObjectENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS6_EEEEES7_S7_.exit, !prof !5

bb.r:                                             ; preds = %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i
  %i.ep = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.a) #18
  br label %_ZN2v88internal11HandleScope14CloseAndEscapeINS0_6ObjectENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS6_EEEEES7_S7_.exit

_ZN2v88internal11HandleScope14CloseAndEscapeINS0_6ObjectENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS6_EEEEES7_S7_.exit: ; preds = %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i, %bb.r
  %.0.i.i.i160 = phi ptr [ %i.ep, %bb.r ], [ %i.en, %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i ] ; 3 uses
  %i.eq = ptrtoint ptr %.0.i.i.i160 to i64
  %i.er = add i64 %i.eq, 8
  %i.es = inttoptr i64 %i.er to ptr
  store ptr %i.es, ptr %i.b, align 8
  store i64 %i.ei, ptr %.0.i.i.i160, align 8
  %i.et = load ptr, ptr %i.b, align 8
  %i.eu = load ptr, ptr %i.d, align 8
  %i.ev = load i32, ptr %i.f, align 8
  %i.ew = add nsw i32 %i.ev, 1
  store i32 %i.ew, ptr %i.f, align 8
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit132

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit132: ; preds = %_ZN2v88internal7Isolate15object_functionEv.exit, %_ZN2v88internal11HandleScope14CloseAndEscapeINS0_6ObjectENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS6_EEEEES7_S7_.exit
  %.sroa.6208.0 = phi ptr [ %i.et, %_ZN2v88internal11HandleScope14CloseAndEscapeINS0_6ObjectENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS6_EEEEES7_S7_.exit ], [ %i.c, %_ZN2v88internal7Isolate15object_functionEv.exit ]
  %.sroa.10.0 = phi ptr [ %i.eu, %_ZN2v88internal11HandleScope14CloseAndEscapeINS0_6ObjectENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS6_EEEEES7_S7_.exit ], [ %i.e, %_ZN2v88internal7Isolate15object_functionEv.exit ]
  %.sroa.0211.1 = phi ptr [ %.0.i.i.i160, %_ZN2v88internal11HandleScope14CloseAndEscapeINS0_6ObjectENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS6_EEEEES7_S7_.exit ], [ null, %_ZN2v88internal7Isolate15object_functionEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit: ; preds = %bb.m, %bb.l, %.critedge121, %bb.i, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit132
  %.sroa.6208.1 = phi ptr [ %i.c, %.critedge121 ], [ %.sroa.6208.0, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit132 ], [ %i.c, %bb.i ], [ %i.c, %bb.l ], [ %i.c, %bb.m ]
  %.sroa.10.1 = phi ptr [ %i.e, %.critedge121 ], [ %.sroa.10.0, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit132 ], [ %i.e, %bb.i ], [ %i.e, %bb.l ], [ %i.e, %bb.m ]
  %.sroa.0211.3 = phi ptr [ null, %.critedge121 ], [ %.sroa.0211.1, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit132 ], [ null, %bb.i ], [ null, %bb.l ], [ null, %bb.m ] ; 2 uses
  %i.ex = icmp eq ptr %i.a, null
  br i1 %i.ex, label %_ZN2v88internal11HandleScopeD2Ev.exit134, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread, !prof !158

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread: ; preds = %bb.a, %.critedge297, %.critedge298, %_ZN2v88internal6Object7IsArrayENS0_12DirectHandleIS1_EE.exit, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit
  %.sroa.0211.3293 = phi ptr [ %.sroa.0211.3, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit ], [ null, %_ZN2v88internal6Object7IsArrayENS0_12DirectHandleIS1_EE.exit ], [ null, %.critedge298 ], [ null, %.critedge297 ], [ null, %bb.a ] ; 2 uses
  %.sroa.10.1292 = phi ptr [ %.sroa.10.1, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit ], [ %i.e, %_ZN2v88internal6Object7IsArrayENS0_12DirectHandleIS1_EE.exit ], [ %i.e, %.critedge298 ], [ %i.e, %.critedge297 ], [ %i.e, %bb.a ] ; 2 uses
  %.sroa.6208.1291 = phi ptr [ %.sroa.6208.1, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit ], [ %i.c, %_ZN2v88internal6Object7IsArrayENS0_12DirectHandleIS1_EE.exit ], [ %i.c, %.critedge298 ], [ %i.c, %.critedge297 ], [ %i.c, %bb.a ]
  store ptr %.sroa.6208.1291, ptr %i.b, align 8
  %i.ey = load i32, ptr %i.f, align 8
  %i.ez = add nsw i32 %i.ey, -1
  store i32 %i.ez, ptr %i.f, align 8
end_hunk_1
