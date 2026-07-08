inline.NumInlined: 4819
inline.NumDeleted: 2100
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN2v88internal4wasm15WasmCodeManager28EstimateNativeModuleCodeSizeEPKNS1_10WasmModuleE

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal4wasm14JSToWasmObjectEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEENS1_18CanonicalValueTypeEPPKc(ptr noundef %0, ptr %1, i32 %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.v8::internal::DirectHandle.735", align 8 ; 3 uses
  %5 = alloca %"class.v8::internal::wasm::CanonicalValueType", align 4 ; 15 uses
  %6 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.780", align 8 ; 4 uses
  %7 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.780", align 8 ; 4 uses
  %8 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.997", align 8 ; 4 uses
  store ptr %1, ptr %4, align 8
  store i32 %2, ptr %5, align 4
  %i.a = and i32 %2, 3
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %2, 268435440
  %i.d = add nsw i32 %i.c, -5648                  ; 2 uses
  %i.e = tail call i32 @llvm.fshl.i32(i32 %i.d, i32 %i.d, i32 24)
  %i.f = icmp ult i32 %i.e, 8
  br i1 %i.f, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3) #24
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.g = and i32 %2, 268435427
  switch i32 %i.g, label %bb.e [
    i32 258, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread
    i32 514, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread
    i32 2, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = and i32 %2, 5
  %i.i = icmp eq i32 %i.h, 5
  br i1 %i.i, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread

_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit: ; preds = %bb.e
  %i.j = load i64, ptr %1, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.l = load i64, ptr %i.k, align 8
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %bb.f, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread

bb.f:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit
  %i.n = call noundef i32 @_ZNK2v88internal4wasm13ValueTypeBase23raw_heap_representationEb(ptr noundef nonnull align 4 dereferenceable(4) %5, i1 noundef zeroext true)
  switch i32 %i.n, label %bb.n [
    i32 1000010, label %bb.g
    i32 1000011, label %bb.h
    i32 1000012, label %bb.i
    i32 1000008, label %bb.j
    i32 1000016, label %bb.k
    i32 1000019, label %bb.l
    i32 1000017, label %bb.m
  ]

bb.g:                                             ; preds = %bb.f
  store ptr @.str.43, ptr %3, align 8
  br label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit

bb.h:                                             ; preds = %bb.f
  store ptr @.str.44, ptr %3, align 8
  br label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit

bb.i:                                             ; preds = %bb.f
  store ptr @.str.45, ptr %3, align 8
  br label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit

bb.j:                                             ; preds = %bb.f
  store ptr @.str.46, ptr %3, align 8
  br label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit

bb.k:                                             ; preds = %bb.f
  store ptr @.str.47, ptr %3, align 8
  br label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit

bb.l:                                             ; preds = %bb.f
  store ptr @.str.48, ptr %3, align 8
  br label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit

bb.m:                                             ; preds = %bb.f
  store ptr @.str.49, ptr %3, align 8
  br label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit

bb.n:                                             ; preds = %bb.f
  %i.o = load i32, ptr %5, align 4                ; 2 uses
  %i.p = and i32 %i.o, 3
  %i.q = icmp eq i32 %i.p, 3
  br i1 %i.q, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.r = and i32 %i.o, 268435427
  switch i32 %i.r, label %bb.p [
    i32 3841, label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit
    i32 769, label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit
    i32 1537, label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit
  ]

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2104
  br label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit

_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread: ; preds = %bb.b, %bb.d, %bb.d, %bb.d, %bb.e, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit
  %i.t = call noundef i32 @_ZNK2v88internal4wasm13ValueTypeBase23raw_heap_representationEb(ptr noundef nonnull align 4 dereferenceable(4) %5, i1 noundef zeroext false)
  switch i32 %i.t, label %bb.bi [
    i32 1000000, label %bb.q
    i32 1000006, label %bb.v
    i32 1000005, label %bb.ad
    i32 1000008, label %bb.ai
    i32 1000017, label %bb.aj
    i32 1000003, label %bb.ak
    i32 1000004, label %bb.ap
    i32 1000001, label %bb.au
    i32 1000002, label %bb.ba
    i32 1000009, label %bb.bd
    i32 1000010, label %bb.be
    i32 1000011, label %bb.bf
    i32 1000012, label %bb.bg
    i32 1000014, label %bb.bh
    i32 1000015, label %bb.bh
    i32 1000016, label %bb.bh
    i32 1000019, label %bb.bh
    i32 1000013, label %bb.bh
  ]

bb.q:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread
  %i.u = load i64, ptr %1, align 8
  %i.v = call noundef zeroext i1 @_ZN2v88internal20WasmExternalFunction22IsWasmExternalFunctionENS0_6TaggedINS0_6ObjectEEE(i64 %i.u)
  br i1 %i.v, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.w = load i64, ptr %1, align 8
  %i.x = call noundef zeroext i1 @_ZN2v88internal16WasmCapiFunction18IsWasmCapiFunctionENS0_6TaggedINS0_6ObjectEEE(i64 %i.w)
  br i1 %i.x, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr @.str.50, ptr %3, align 8
  br label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit

bb.t:                                             ; preds = %bb.r, %bb.q
  %i.y = load i64, ptr %1, align 8
  %i.z = add i64 %i.y, 31
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i64, ptr %i.aa monotonic, align 8
  %i.ac = add i64 %i.ab, 7
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load atomic volatile i64, ptr %i.ad acquire, align 8
  %i.af = add i64 %i.ae, 15
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = icmp eq ptr %i.aj, %i.al
  br i1 %i.am, label %bb.u, label %_ZN2v88internal6HandleINS0_11WasmFuncRefEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit157, !prof !5

bb.u:                                             ; preds = %bb.t
  %i.an = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #22
  br label %_ZN2v88internal6HandleINS0_11WasmFuncRefEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit157

_ZN2v88internal6HandleINS0_11WasmFuncRefEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit157: ; preds = %bb.t, %bb.u
  %.0.i.i156 = phi ptr [ %i.an, %bb.u ], [ %i.aj, %bb.t ] ; 3 uses
  %i.ao = ptrtoint ptr %.0.i.i156 to i64
  %i.ap = add i64 %i.ao, 8
  %i.aq = inttoptr i64 %i.ap to ptr
  store ptr %i.aq, ptr %i.ai, align 8
  store i64 %i.ah, ptr %.0.i.i156, align 8
  br label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit

bb.v:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread
  %.sroa.084.0.copyload = load i32, ptr %5, align 4
  %i.ar = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 836), align 4, !range !21, !noundef !22
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = and i32 %.sroa.084.0.copyload, 16
  %i.au = icmp ne i32 %i.at, 0
  %or.cond.i = select i1 %i.as, i1 %i.au, i1 false
  br i1 %or.cond.i, label %bb.w, label %_ZNK2v88internal17MaybeDirectHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread23.i

bb.w:                                             ; preds = %bb.v
  %i.av = load i64, ptr %1, align 8               ; 3 uses
  %i.aw = trunc i64 %i.av to i1
  br i1 %i.aw, label %bb.x, label %_ZNK2v88internal17MaybeDirectHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread23.i

bb.x:                                             ; preds = %bb.w
  %i.ax = and i64 %i.av, -262144
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = load i64, ptr %i.ay, align 262144
  %i.ba = and i64 %i.az, 65
  %or.cond = icmp eq i64 %i.ba, 0
  br i1 %or.cond, label %bb.y, label %_ZNK2v88internal17MaybeDirectHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread23.i

bb.y:                                             ; preds = %bb.x
  %i.bb = add nsw i64 %i.av, -1
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = load atomic volatile i64, ptr %i.bc monotonic, align 8
  %i.be = add i64 %i.bd, 11
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = load atomic volatile i16, ptr %i.bf monotonic, align 2 ; 3 uses
  %i.bh = add i16 %i.bg, -2102
  %i.bi = icmp ult i16 %i.bh, 4
  br i1 %i.bi, label %_ZNK2v88internal17MaybeDirectHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread23.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %9 = call i16 @llvm.fshl.i16(i16 %i.bg, i16 %i.bg, i16 15)
  switch i16 %9, label %_ZN2v88internal6Object5ShareIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_11ShouldThrowE.exit.i [
    i16 48, label %_ZNK2v88internal17MaybeDirectHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread23.i
    i16 52, label %_ZNK2v88internal17MaybeDirectHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread23.i
    i16 49, label %_ZNK2v88internal17MaybeDirectHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread23.i
    i16 53, label %_ZNK2v88internal17MaybeDirectHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread23.i
    i16 57, label %_ZNK2v88internal17MaybeDirectHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread23.i
    i16 61, label %_ZNK2v88internal17MaybeDirectHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread23.i
    i16 13, label %bb.aa
    i16 9, label %bb.aa
    i16 0, label %bb.aa
    i16 4, label %bb.aa
    i16 1, label %bb.aa
    i16 5, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z
  %i.bj = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !21, !noundef !22
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %_ZNK2v88internal17MaybeDirectHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread23.i, label %_ZN2v88internal6Object5ShareIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_11ShouldThrowE.exit.i

_ZN2v88internal6Object5ShareIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_11ShouldThrowE.exit.i: ; preds = %bb.aa, %bb.z
  %i.bl = call ptr @_ZN2v88internal6Object9ShareSlowINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS5_9MaybeTypeEPNS0_7IsolateES4_INS0_10HeapObjectEENS0_11ShouldThrowE(ptr noundef %0, ptr nonnull %1, i32 noundef 0) #22 ; 2 uses
  %.not28.i = icmp eq ptr %i.bl, null
  br i1 %.not28.i, label %bb.ab, label %_ZNK2v88internal17MaybeDirectHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread23.i

bb.ab:                                            ; preds = %_ZN2v88internal6Object5ShareIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_11ShouldThrowE.exit.i
  store ptr @.str.116, ptr %3, align 8
  br label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit

_ZNK2v88internal17MaybeDirectHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread23.i: ; preds = %bb.y, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.aa, %_ZN2v88internal6Object5ShareIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_11ShouldThrowE.exit.i, %bb.v, %bb.w, %bb.x
  %i.bm = phi ptr [ %1, %bb.x ], [ %1, %bb.v ], [ %1, %bb.w ], [ %i.bl, %_ZN2v88internal6Object5ShareIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_11ShouldThrowE.exit.i ], [ %1, %bb.aa ], [ %1, %bb.z ], [ %1, %bb.z ], [ %1, %bb.z ], [ %1, %bb.z ], [ %1, %bb.z ], [ %1, %bb.z ], [ %1, %bb.y ] ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = icmp eq i64 %i.bn, %i.bp
  br i1 %i.bq, label %bb.ac, label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit

bb.ac:                                            ; preds = %_ZNK2v88internal17MaybeDirectHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread23.i
  store ptr @.str.51, ptr %3, align 8
  br label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit

bb.ad:                                            ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread
  %i.br = load i64, ptr %1, align 8               ; 2 uses
  %i.bs = and i64 %i.br, 1
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %bb.ae, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit147

bb.ae:                                            ; preds = %bb.ad
  %i.bu = load i32, ptr %5, align 4
  %i.bv = and i32 %i.bu, 16
  %i.bw = icmp ne i32 %i.bv, 0
  %i.bx = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_115CanonicalizeSmiENS0_12DirectHandleINS0_6ObjectEEEPNS0_7IsolateEb(ptr nonnull %1, ptr noundef %0, i1 noundef zeroext %i.bw)
  br label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit147: ; preds = %bb.ad
  %i.by = add nsw i64 %i.br, -1
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = load atomic volatile i64, ptr %i.bz monotonic, align 8
  %i.cb = add i64 %i.ca, 11
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = load atomic volatile i16, ptr %i.cc monotonic, align 2
  %i.ce = icmp eq i16 %i.cd, 130
  %i.cf = load i32, ptr %5, align 4               ; 2 uses
  br i1 %i.ce, label %bb.af, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit147.thread

bb.af:                                            ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit147
  %i.cg = and i32 %i.cf, 16
  %i.ch = icmp ne i32 %i.cg, 0
  %i.ci = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_122CanonicalizeHeapNumberENS0_12DirectHandleINS0_6ObjectEEEPNS0_7IsolateEb(ptr nonnull %1, ptr noundef %0, i1 noundef zeroext %i.ch)
  br label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit147.thread: ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit147
  %i.cj = call fastcc noundef zeroext i1 @_ZN2v88internal4wasm12_GLOBAL__N_125ConvertToSharedIfExpectedEPNS0_7IsolateEPNS0_12DirectHandleINS0_6ObjectEEENS1_18CanonicalValueTypeEPPKc(ptr noundef %0, ptr noundef %4, i32 %i.cf, ptr noundef %3)
  br i1 %i.cj, label %bb.ag, label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit

bb.ag:                                            ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit147.thread
  %i.ck = load ptr, ptr %4, align 8               ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.cn = load i64, ptr %i.cm, align 8
  %i.co = icmp eq i64 %i.cl, %i.cn
  br i1 %i.co, label %bb.ah, label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit

bb.ah:                                            ; preds = %bb.ag
  store ptr @.str.52, ptr %3, align 8
  br label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit

bb.ai:                                            ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread
  store ptr @.str.53, ptr %3, align 8
  br label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit

bb.aj:                                            ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread
  store ptr @.str.54, ptr %3, align 8
  br label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit

bb.ak:                                            ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread
  %.sroa.071.0.copyload = load i32, ptr %5, align 4
  %i.cp = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 836), align 4, !range !21, !noundef !22
  %i.cq = trunc nuw i8 %i.cp to i1
  %.pre420 = load i64, ptr %1, align 8            ; 3 uses
  %i.cr = trunc i64 %.pre420 to i1                ; 2 uses
  br i1 %i.cq, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  br i1 %i.cr, label %bb.am, label %_ZN2v88internal12IsWasmStructENS0_6TaggedINS0_6ObjectEEE.exit149.thread

bb.am:                                            ; preds = %bb.al
  %i.cs = and i32 %.sroa.071.0.copyload, 16
  %i.ct = icmp ne i32 %i.cs, 0                    ; 2 uses
  %i.cu = and i64 %.pre420, -262144
  %i.cv = inttoptr i64 %i.cu to ptr
  %i.cw = load i64, ptr %i.cv, align 262144
  %i.cx = trunc i64 %i.cw to i1
  %i.cy = xor i1 %i.ct, %i.cx
  br i1 %i.cy, label %bb.an, label %_ZN2v88internal12IsWasmStructENS0_6TaggedINS0_6ObjectEEE.exit149

bb.an:                                            ; preds = %bb.am
  %.str.116..str.117.i = select i1 %i.ct, ptr @.str.116, ptr @.str.117
  store ptr %.str.116..str.117.i, ptr %3, align 8
  br label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit

bb.ao:                                            ; preds = %bb.ak
  br i1 %i.cr, label %_ZN2v88internal12IsWasmStructENS0_6TaggedINS0_6ObjectEEE.exit149, label %_ZN2v88internal12IsWasmStructENS0_6TaggedINS0_6ObjectEEE.exit149.thread

_ZN2v88internal12IsWasmStructENS0_6TaggedINS0_6ObjectEEE.exit149: ; preds = %bb.am, %bb.ao
  %i.cz = add nsw i64 %.pre420, -1
  %i.da = inttoptr i64 %i.cz to ptr
  %i.db = load atomic volatile i64, ptr %i.da monotonic, align 8
  %i.dc = add i64 %i.db, 11
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = load atomic volatile i16, ptr %i.dd monotonic, align 2
  %i.df = icmp eq i16 %i.de, 301
  br i1 %i.df, label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit, label %_ZN2v88internal12IsWasmStructENS0_6TaggedINS0_6ObjectEEE.exit149.thread

_ZN2v88internal12IsWasmStructENS0_6TaggedINS0_6ObjectEEE.exit149.thread: ; preds = %bb.al, %bb.ao, %_ZN2v88internal12IsWasmStructENS0_6TaggedINS0_6ObjectEEE.exit149
  store ptr @.str.55, ptr %3, align 8
  br label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit

bb.ap:                                            ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread
  %.sroa.067.0.copyload = load i32, ptr %5, align 4
  %i.dg = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 836), align 4, !range !21, !noundef !22
  %i.dh = trunc nuw i8 %i.dg to i1
  %.pre = load i64, ptr %1, align 8               ; 3 uses
  %i.di = trunc i64 %.pre to i1                   ; 2 uses
  br i1 %i.dh, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.di, label %bb.ar, label %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEE.exit151.thread

bb.ar:                                            ; preds = %bb.aq
  %i.dj = and i32 %.sroa.067.0.copyload, 16
  %i.dk = icmp ne i32 %i.dj, 0                    ; 2 uses
  %i.dl = and i64 %.pre, -262144
  %i.dm = inttoptr i64 %i.dl to ptr
  %i.dn = load i64, ptr %i.dm, align 262144
  %i.do = trunc i64 %i.dn to i1
  %i.dp = xor i1 %i.dk, %i.do
  br i1 %i.dp, label %bb.as, label %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEE.exit151

bb.as:                                            ; preds = %bb.ar
  %.str.116..str.117.i163 = select i1 %i.dk, ptr @.str.116, ptr @.str.117
  store ptr %.str.116..str.117.i163, ptr %3, align 8
  br label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit

bb.at:                                            ; preds = %bb.ap
  br i1 %i.di, label %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEE.exit151, label %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEE.exit151.thread

_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEE.exit151: ; preds = %bb.ar, %bb.at
  %i.dq = add nsw i64 %.pre, -1
  %i.dr = inttoptr i64 %i.dq to ptr
  %i.ds = load atomic volatile i64, ptr %i.dr monotonic, align 8
  %i.dt = add i64 %i.ds, 11
  %i.du = inttoptr i64 %i.dt to ptr
  %i.dv = load atomic volatile i16, ptr %i.du monotonic, align 2
  %i.dw = icmp eq i16 %i.dv, 300
  br i1 %i.dw, label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit, label %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEE.exit151.thread

_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEE.exit151.thread: ; preds = %bb.aq, %bb.at, %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEE.exit151
  store ptr @.str.56, ptr %3, align 8
  br label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit

bb.au:                                            ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread
  %i.dx = load i64, ptr %1, align 8               ; 3 uses
  %i.dy = and i64 %i.dx, 1
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %bb.av, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit146

bb.av:                                            ; preds = %bb.au
  %i.ea = load i32, ptr %5, align 4
  %i.eb = and i32 %i.ea, 16
  %i.ec = icmp ne i32 %i.eb, 0
  %i.ed = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_115CanonicalizeSmiENS0_12DirectHandleINS0_6ObjectEEEPNS0_7IsolateEb(ptr nonnull %1, ptr noundef %0, i1 noundef zeroext %i.ec) ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8
  %i.ef = and i64 %i.ee, 1
  %.not419 = icmp eq i64 %i.ef, 0
  br i1 %.not419, label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit, label %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEE.exit150.thread

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit146: ; preds = %bb.au
  %i.eg = add nsw i64 %i.dx, -1
  %i.eh = inttoptr i64 %i.eg to ptr               ; 3 uses
  %i.ei = load atomic volatile i64, ptr %i.eh monotonic, align 8
  %i.ej = add i64 %i.ei, 11
  %i.ek = inttoptr i64 %i.ej to ptr
  %i.el = load atomic volatile i16, ptr %i.ek monotonic, align 2
  %i.em = icmp eq i16 %i.el, 130
  br i1 %i.em, label %bb.aw, label %_ZN2v88internal12IsWasmStructENS0_6TaggedINS0_6ObjectEEE.exit148

bb.aw:                                            ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit146
  %i.en = load i32, ptr %5, align 4
  %i.eo = and i32 %i.en, 16
  %i.ep = icmp ne i32 %i.eo, 0
  %i.eq = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_122CanonicalizeHeapNumberENS0_12DirectHandleINS0_6ObjectEEEPNS0_7IsolateEb(ptr nonnull %1, ptr noundef %0, i1 noundef zeroext %i.ep) ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm14JSToWasmObjectEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEENS1_18CanonicalValueTypeEPPKc:bb.a
  %i.jc = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #22
  br label %_ZN2v88internal6HandleINS0_11WasmFuncRefEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit155

_ZN2v88internal6HandleINS0_11WasmFuncRefEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit155: ; preds = %bb.bn, %bb.bo
  %.0.i.i154 = phi ptr [ %i.jc, %bb.bo ], [ %i.iy, %bb.bn ] ; 3 uses
  %i.jd = ptrtoint ptr %.0.i.i154 to i64
  %i.je = add i64 %i.jd, 8
  %i.jf = inttoptr i64 %i.je to ptr
  store ptr %i.jf, ptr %i.ix, align 8
  store i64 %i.iw, ptr %.0.i.i154, align 8
  br label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit

bb.bp:                                            ; preds = %bb.bl, %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.bi
  %i.jg = call noundef zeroext i1 @_ZN2v88internal14WasmJSFunction16IsWasmJSFunctionENS0_6TaggedINS0_6ObjectEEE(i64 %i.gw)
  br i1 %i.jg, label %bb.bq, label %bb.bu

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.jh = load i64, ptr %1, align 8
  %i.ji = add i64 %i.jh, 31
  %i.jj = inttoptr i64 %i.ji to ptr
  %i.jk = load atomic volatile i64, ptr %i.jj monotonic, align 8
  store i64 %i.jk, ptr %7, align 8
  %i.jl = call i64 @_ZNK2v88internal18SharedFunctionInfo21wasm_js_function_dataEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  %i.jm = add i64 %i.jl, 39
  %i.jn = inttoptr i64 %i.jm to ptr
  %i.jo = load i64, ptr %i.jn, align 8
  %i.jp = lshr i64 %i.jo, 32
  %i.jq = trunc nuw i64 %i.jp to i32
  %i.jr = icmp eq i32 %i.gt, %i.jq
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br i1 %i.jr, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  store ptr @.str.62, ptr %3, align 8
  br label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit

bb.bs:                                            ; preds = %bb.bq
  %i.js = load i64, ptr %1, align 8
  %i.jt = add i64 %i.js, 31
  %i.ju = inttoptr i64 %i.jt to ptr
  %i.jv = load atomic volatile i64, ptr %i.ju monotonic, align 8
  %i.jw = add i64 %i.jv, 7
  %i.jx = inttoptr i64 %i.jw to ptr
  %i.jy = load atomic volatile i64, ptr %i.jx acquire, align 8
  %i.jz = add i64 %i.jy, 15
  %i.ka = inttoptr i64 %i.jz to ptr
  %i.kb = load i64, ptr %i.ka, align 8
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.kd = load ptr, ptr %i.kc, align 8            ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.kf = load ptr, ptr %i.ke, align 8
  %i.kg = icmp eq ptr %i.kd, %i.kf
  br i1 %i.kg, label %bb.bt, label %_ZN2v88internal6HandleINS0_11WasmFuncRefEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit153, !prof !5

bb.bt:                                            ; preds = %bb.bs
  %i.kh = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #22
  br label %_ZN2v88internal6HandleINS0_11WasmFuncRefEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit153

_ZN2v88internal6HandleINS0_11WasmFuncRefEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit153: ; preds = %bb.bs, %bb.bt
  %.0.i.i152 = phi ptr [ %i.kh, %bb.bt ], [ %i.kd, %bb.bs ] ; 3 uses
  %i.ki = ptrtoint ptr %.0.i.i152 to i64
  %i.kj = add i64 %i.ki, 8
  %i.kk = inttoptr i64 %i.kj to ptr
  store ptr %i.kk, ptr %i.kc, align 8
  store i64 %i.kb, ptr %.0.i.i152, align 8
  br label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit

bb.bu:                                            ; preds = %bb.bp
  %i.kl = load i64, ptr %1, align 8
  %i.km = call noundef zeroext i1 @_ZN2v88internal16WasmCapiFunction18IsWasmCapiFunctionENS0_6TaggedINS0_6ObjectEEE(i64 %i.kl)
  br i1 %i.km, label %bb.bv, label %bb.bz

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.kn = load i64, ptr %1, align 8
  store i64 %i.kn, ptr %8, align 8
  %i.ko = call noundef zeroext i1 @_ZNK2v88internal16WasmCapiFunction16MatchesSignatureENS0_4wasm18CanonicalTypeIndexE(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 %i.gt)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br i1 %i.ko, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  store ptr @.str.63, ptr %3, align 8
  br label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit

bb.bx:                                            ; preds = %bb.bv
  %i.kp = load i64, ptr %1, align 8
  %i.kq = add i64 %i.kp, 31
  %i.kr = inttoptr i64 %i.kq to ptr
  %i.ks = load atomic volatile i64, ptr %i.kr monotonic, align 8
  %i.kt = add i64 %i.ks, 7
  %i.ku = inttoptr i64 %i.kt to ptr
  %i.kv = load atomic volatile i64, ptr %i.ku acquire, align 8
  %i.kw = add i64 %i.kv, 15
  %i.kx = inttoptr i64 %i.kw to ptr
  %i.ky = load i64, ptr %i.kx, align 8
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.la = load ptr, ptr %i.kz, align 8            ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.lc = load ptr, ptr %i.lb, align 8
  %i.ld = icmp eq ptr %i.la, %i.lc
  br i1 %i.ld, label %bb.by, label %_ZN2v88internal6HandleINS0_11WasmFuncRefEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.by:                                            ; preds = %bb.bx
  %i.le = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #22
  br label %_ZN2v88internal6HandleINS0_11WasmFuncRefEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_11WasmFuncRefEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.bx, %bb.by
  %.0.i.i = phi ptr [ %i.le, %bb.by ], [ %i.la, %bb.bx ] ; 3 uses
  %i.lf = ptrtoint ptr %.0.i.i to i64
  %i.lg = add i64 %i.lf, 8
  %i.lh = inttoptr i64 %i.lg to ptr
  store ptr %i.lh, ptr %i.kz, align 8
  store i64 %i.ky, ptr %.0.i.i, align 8
  br label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit

bb.bz:                                            ; preds = %bb.bu
  %i.li = load i64, ptr %1, align 8               ; 2 uses
  %i.lj = trunc i64 %i.li to i1
  br i1 %i.lj, label %_ZN2v88internal12IsWasmStructENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsWasmStructENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.bz
  %i.lk = add nsw i64 %i.li, -1
  %i.ll = inttoptr i64 %i.lk to ptr               ; 3 uses
  %i.lm = load atomic volatile i64, ptr %i.ll monotonic, align 8
  %i.ln = add i64 %i.lm, 11
  %i.lo = inttoptr i64 %i.ln to ptr
  %i.lp = load atomic volatile i16, ptr %i.lo monotonic, align 2
  %i.lq = icmp eq i16 %i.lp, 301
  br i1 %i.lq, label %bb.ca, label %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal12IsWasmStructENS0_6TaggedINS0_6ObjectEEE.exit
  %i.lr = load atomic volatile i64, ptr %i.ll monotonic, align 8
  %i.ls = add i64 %i.lr, 11
  %i.lt = inttoptr i64 %i.ls to ptr
  %i.lu = load atomic volatile i16, ptr %i.lt monotonic, align 2
  %i.lv = icmp eq i16 %i.lu, 300
  br i1 %i.lv, label %bb.ca, label %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.ca:                                            ; preds = %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal12IsWasmStructENS0_6TaggedINS0_6ObjectEEE.exit
  %i.lw = load atomic volatile i64, ptr %i.ll monotonic, align 8
  %i.lx = add i64 %i.lw, 31
  %i.ly = inttoptr i64 %i.lx to ptr
  %i.lz = load i64, ptr %i.ly, align 8
  %i.ma = add i64 %i.lz, 7
  %i.mb = inttoptr i64 %i.ma to ptr
  %i.mc = load i32, ptr %i.mb, align 4
  %i.md = lshr i32 %i.mc, 8
  %i.me = and i32 %i.md, 1048575
  %i.mf = call noundef zeroext i1 @_ZN2v88internal4wasm17TypeCanonicalizer18IsCanonicalSubtypeENS1_18CanonicalTypeIndexES3_(ptr noundef nonnull align 8 dereferenceable(8056) %i.gv, i32 %i.me, i32 %i.gt) #22
  br i1 %i.mf, label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  store ptr @.str.64, ptr %3, align 8
  br label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit

_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.bz, %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEE.exit
  store ptr @.str.65, ptr %3, align 8
  br label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit

_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit: ; preds = %bb.o, %bb.o, %bb.o, %bb.cb, %bb.ca, %bb.bm, %_ZN2v88internal6HandleINS0_11WasmFuncRefEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit155, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit, %bb.ay, %bb.ax, %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEE.exit151, %_ZN2v88internal12IsWasmStructENS0_6TaggedINS0_6ObjectEEE.exit149, %bb.ag, %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit147.thread, %_ZNK2v88internal17MaybeDirectHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread23.i, %bb.p, %bb.br, %_ZN2v88internal6HandleINS0_11WasmFuncRefEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit153, %bb.bw, %_ZN2v88internal6HandleINS0_11WasmFuncRefEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEE.exit.thread, %bb.bc, %bb.bb, %bb.aw, %bb.av, %bb.bh, %bb.bg, %bb.bf, %bb.be, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread, %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEE.exit150.thread, %bb.az, %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEE.exit151.thread, %bb.as, %_ZN2v88internal12IsWasmStructENS0_6TaggedINS0_6ObjectEEE.exit149.thread, %bb.an, %bb.aj, %bb.ai, %bb.ah, %bb.af, %bb.ae, %bb.ac, %bb.ab, %_ZN2v88internal6HandleINS0_11WasmFuncRefEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit157, %bb.s, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %.sroa.0222.6 = phi ptr [ null, %bb.bh ], [ null, %bb.g ], [ null, %bb.h ], [ null, %bb.i ], [ null, %bb.j ], [ null, %bb.k ], [ null, %bb.l ], [ null, %bb.m ], [ %1, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit ], [ %.0.i.i152, %_ZN2v88internal6HandleINS0_11WasmFuncRefEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit153 ], [ null, %bb.br ], [ %.0.i.i, %_ZN2v88internal6HandleINS0_11WasmFuncRefEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ null, %bb.bw ], [ null, %bb.bm ], [ null, %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEE.exit.thread ], [ %.0.i.i156, %_ZN2v88internal6HandleINS0_11WasmFuncRefEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit157 ], [ null, %bb.s ], [ null, %bb.ac ], [ %1, %bb.ca ], [ null, %bb.ab ], [ %i.bx, %bb.ae ], [ %i.ci, %bb.af ], [ null, %bb.ah ], [ null, %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit147.thread ], [ %i.bm, %_ZNK2v88internal17MaybeDirectHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread23.i ], [ null, %bb.ai ], [ null, %bb.aj ], [ %i.ck, %bb.ag ], [ null, %_ZN2v88internal12IsWasmStructENS0_6TaggedINS0_6ObjectEEE.exit149.thread ], [ null, %bb.an ], [ %1, %_ZN2v88internal12IsWasmStructENS0_6TaggedINS0_6ObjectEEE.exit149 ], [ null, %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEE.exit151.thread ], [ null, %bb.as ], [ null, %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEE.exit150.thread ], [ %i.ed, %bb.av ], [ %i.eq, %bb.aw ], [ %1, %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEE.exit151 ], [ null, %bb.az ], [ null, %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread ], [ %i.fs, %bb.bb ], [ %i.gf, %bb.bc ], [ %1, %bb.ay ], [ null, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread ], [ null, %bb.be ], [ null, %bb.bf ], [ null, %bb.bg ], [ %i.s, %bb.p ], [ %1, %bb.ax ], [ %.0.i.i154, %_ZN2v88internal6HandleINS0_11WasmFuncRefEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit155 ], [ null, %bb.cb ], [ %1, %bb.o ], [ %1, %bb.o ], [ %1, %bb.o ]
  ret ptr %.sroa.0222.6
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN2v88internal4wasm12_GLOBAL__N_125ConvertToSharedIfExpectedEPNS0_7IsolateEPNS0_12DirectHandleINS0_6ObjectEEENS1_18CanonicalValueTypeEPPKc(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, i32 %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 836), align 4, !range !21, !noundef !22
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = and i32 %2, 16
  %i.d = icmp ne i32 %i.c, 0
  %or.cond = select i1 %i.b, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8                ; 3 uses
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  %i.g = trunc i64 %i.f to i1
  br i1 %i.g, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.h = and i64 %i.f, -262144
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i64, ptr %i.i, align 262144         ; 2 uses
  %i.k = and i64 %i.j, 1
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.l = and i64 %i.j, 64
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.e, label %_ZNK2v88internal17MaybeDirectHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i64 %i.f, -1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.p = add i64 %i.o, 11
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i16, ptr %i.q monotonic, align 2 ; 3 uses
  %i.s = add i16 %i.r, -2102
  %i.t = icmp ult i16 %i.s, 4
  br i1 %i.t, label %_ZNK2v88internal17MaybeDirectHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %4 = tail call i16 @llvm.fshl.i16(i16 %i.r, i16 %i.r, i16 15)
  switch i16 %4, label %_ZN2v88internal6Object5ShareIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_11ShouldThrowE.exit [
    i16 48, label %_ZNK2v88internal17MaybeDirectHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit
    i16 52, label %_ZNK2v88internal17MaybeDirectHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit
    i16 49, label %_ZNK2v88internal17MaybeDirectHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit
    i16 53, label %_ZNK2v88internal17MaybeDirectHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit
    i16 57, label %_ZNK2v88internal17MaybeDirectHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit
    i16 61, label %_ZNK2v88internal17MaybeDirectHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit
    i16 13, label %bb.g
    i16 9, label %bb.g
    i16 0, label %bb.g
    i16 4, label %bb.g
    i16 1, label %bb.g
    i16 5, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.u = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !21, !noundef !22
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZNK2v88internal17MaybeDirectHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %_ZN2v88internal6Object5ShareIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_11ShouldThrowE.exit

_ZN2v88internal6Object5ShareIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_11ShouldThrowE.exit: ; preds = %bb.f, %bb.g
  %i.w = tail call ptr @_ZN2v88internal6Object9ShareSlowINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS5_9MaybeTypeEPNS0_7IsolateES4_INS0_10HeapObjectEENS0_11ShouldThrowE(ptr noundef %0, ptr nonnull %i.e, i32 noundef 0) #22 ; 2 uses
  %.not28 = icmp eq ptr %i.w, null
  br i1 %.not28, label %bb.h, label %_ZNK2v88internal17MaybeDirectHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread23

_ZNK2v88internal17MaybeDirectHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread23: ; preds = %_ZN2v88internal6Object5ShareIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_11ShouldThrowE.exit
  %i.x = ptrtoint ptr %i.w to i64
  store i64 %i.x, ptr %1, align 8
  br label %.critedge

_ZNK2v88internal17MaybeDirectHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %bb.g, %bb.d, %bb.e, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.y = ptrtoint ptr %i.e to i64
  store i64 %i.y, ptr %1, align 8
  br label %.critedge

bb.h:                                             ; preds = %_ZN2v88internal6Object5ShareIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_11ShouldThrowE.exit
  store ptr null, ptr %1, align 8
  store ptr @.str.116, ptr %3, align 8
  br label %.critedge

.critedge:                                        ; preds = %_ZNK2v88internal17MaybeDirectHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread23, %bb.c, %_ZNK2v88internal17MaybeDirectHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, %bb.b, %bb.a, %bb.h
  %.1 = phi i1 [ false, %bb.h ], [ true, %_ZNK2v88internal17MaybeDirectHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread23 ], [ true, %bb.a ], [ true, %bb.b ], [ true, %_ZNK2v88internal17MaybeDirectHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit ], [ true, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN2v88internal12_GLOBAL__N_115CanonicalizeSmiENS0_12DirectHandleINS0_6ObjectEEEPNS0_7IsolateEb(ptr nofree readonly captures(ret: address, provenance) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = lshr i64 %i.a, 32
  %i.c = trunc nuw i64 %i.b to i32                ; 2 uses
  %i.d = add i32 %i.c, 1073741824
  %or.cond = icmp sgt i32 %i.d, -1
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sitofp i32 %i.c to double
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE5EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #22
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.g = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #22
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.d
  %.sink = phi ptr [ %i.g, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.h = load i64, ptr %.sink, align 8
  %i.i = add i64 %i.h, -1
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store double %i.e, ptr %i.k, align 1
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a
  %.sroa.011.0 = phi ptr [ %0, %bb.a ], [ %.sink, %.sink.split ]
  ret ptr %.sroa.011.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN2v88internal12_GLOBAL__N_122CanonicalizeHeapNumberENS0_12DirectHandleINS0_6ObjectEEEPNS0_7IsolateEb(ptr nofree readonly captures(ret: address, provenance) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.0.copyload.i.i.i.i = load double, ptr %i.d, align 1 ; 6 uses
  %i.e = fcmp oge double %.0.copyload.i.i.i.i, f0xC1D0000000000000
  %i.f = fcmp ole double %.0.copyload.i.i.i.i, f0x41CFFFFFFF800000
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i1 @llvm.is.fpclass.f64(double %.0.copyload.i.i.i.i, i32 32)
  br i1 %i.g, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = fptosi double %.0.copyload.i.i.i.i to i32 ; 2 uses
  %i.i = sitofp i32 %i.h to double
  %i.j = fcmp oeq double %.0.copyload.i.i.i.i, %i.i
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = sext i32 %i.h to i64
  %i.l = shl nsw i64 %i.k, 32
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = icmp eq ptr %i.n, %i.p
  br i1 %i.q, label %bb.e, label %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.e:                                             ; preds = %bb.d
  %i.r = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #22
  br label %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i = phi ptr [ %i.r, %bb.e ], [ %i.n, %bb.d ] ; 3 uses
  %i.s = ptrtoint ptr %.0.i.i.i to i64
  %i.t = add i64 %i.s, 8
  %i.u = inttoptr i64 %i.t to ptr
  store ptr %i.u, ptr %i.m, align 8
  store i64 %i.l, ptr %.0.i.i.i, align 8
  br label %bb.i

bb.f:                                             ; preds = %bb.c, %bb.b, %bb.a
  br i1 %2, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.v = and i64 %i.a, -262144
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load i64, ptr %i.w, align 262144
  %i.y = and i64 %i.x, 1
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE5EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #22 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = add i64 %i.aa, -1
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store double %.0.copyload.i.i.i.i, ptr %i.ad, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h, %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.sroa.019.0 = phi ptr [ %.0.i.i.i, %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %i.z, %bb.h ], [ %0, %bb.g ], [ %0, %bb.f ]
  ret ptr %.sroa.019.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal4wasm14WasmToJSObjectEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE(ptr noundef %0, ptr nofree readonly captures(ret: address, provenance) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 3 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %_ZN2v88internal10IsWasmNullENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal10IsWasmNullENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.a
  %i.c = add nsw i64 %i.a, -1
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.f = add i64 %i.e, 11
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i16, ptr %i.g monotonic, align 2
  %i.i = icmp eq i16 %i.h, 294
  br i1 %i.i, label %bb.b, label %_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit

bb.b:                                             ; preds = %_ZN2v88internal10IsWasmNullENS0_6TaggedINS0_6ObjectEEE.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 664
  br label %_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal10IsWasmNullENS0_6TaggedINS0_6ObjectEEE.exit
  %i.k = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.l = add i64 %i.k, 11
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load atomic volatile i16, ptr %i.m monotonic, align 2
  %i.o = icmp eq i16 %i.n, 293
  br i1 %i.o, label %bb.c, label %_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.c:                                             ; preds = %_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit
  %i.p = add i64 %i.a, 7
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i64, ptr %i.q acquire, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = icmp eq ptr %i.t, %i.v
  br i1 %i.w, label %bb.d, label %_ZN2v88internal6HandleINS0_20WasmInternalFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.x = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #22
  br label %_ZN2v88internal6HandleINS0_20WasmInternalFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_20WasmInternalFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.x, %bb.d ], [ %i.t, %bb.c ] ; 3 uses
  %i.y = ptrtoint ptr %.0.i.i to i64
  %i.z = add i64 %i.y, 8
  %i.aa = inttoptr i64 %i.z to ptr
  store ptr %i.aa, ptr %i.s, align 8
  store i64 %i.r, ptr %.0.i.i, align 8
  %i.ab = tail call ptr @_ZN2v88internal20WasmInternalFunction19GetOrCreateExternalENS0_12DirectHandleIS1_EE(ptr nonnull %.0.i.i)
  br label %_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit, %bb.a, %_ZN2v88internal6HandleINS0_20WasmInternalFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.b
  %.sroa.015.0 = phi ptr [ %i.j, %bb.b ], [ %i.ab, %_ZN2v88internal6HandleINS0_20WasmInternalFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %1, %bb.a ], [ %1, %_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit ]
  ret ptr %.sroa.015.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #13 comdat align 2 {
end_hunk_1
begin_hunk_2_@_ZNSt10_HashtableIiSt4pairIKiSt10shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a
  %i.p = load ptr, ptr %i.g, align 8
  store ptr %i.p, ptr %.031, align 8
  store ptr %.031, ptr %i.g, align 8
  store ptr %i.g, ptr %i.n, align 8
  %i.q = load ptr, ptr %.031, align 8
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.r, align 8
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8
  store ptr %i.s, ptr %.031, align 8
  %i.t = load ptr, ptr %i.n, align 8
  store ptr %.031, ptr %i.t, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.02530, %bb.i ], [ %i.m, %bb.h ], [ %i.m, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !123

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableIiSt4pairIKiSt10shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIiSt4pairIKiSt10shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #25
  br label %_ZNSt10_HashtableIiSt4pairIKiSt10shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIiSt4pairIKiSt10shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8
  store ptr %.0.i, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZNSt10_HashtableIiSt4pairIKiSt10shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseEmPNSA_15_Hash_node_baseEPNSA_10_Hash_nodeIS8_Lb0EEE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %1
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq ptr %2, %i.c
  %i.e = load ptr, ptr %3, align 8                ; 4 uses
  %.not18 = icmp eq ptr %i.e, null                ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %.not18, label %.thread23, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = load i32, ptr %i.f, align 4
  %i.j = sext i32 %i.i to i64
  %i.k = urem i64 %i.j, %i.h                      ; 2 uses
  %.not9.i = icmp eq i64 %i.k, %1
  br i1 %.not9.i, label %_ZNSt10_HashtableIiSt4pairIKiSt10shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.k
  store ptr %i.c, ptr %i.l, align 8
  %.pre = load ptr, ptr %0, align 8               ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %1
  %.pre25 = load ptr, ptr %.phi.trans.insert, align 8
  br label %.thread23

.thread23:                                        ; preds = %bb.b, %bb.d
  %i.m = phi ptr [ %2, %bb.b ], [ %.pre25, %bb.d ]
  %i.n = phi ptr [ %i.a, %bb.b ], [ %.pre, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %1
  %i.q = icmp eq ptr %i.o, %i.m
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread23
  store ptr %i.e, ptr %i.o, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread23
  store ptr null, ptr %i.p, align 8
  br label %_ZNSt10_HashtableIiSt4pairIKiSt10shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEEm.exit

bb.g:                                             ; preds = %bb.a
  br i1 %.not18, label %_ZNSt10_HashtableIiSt4pairIKiSt10shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEEm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8
  %i.u = load i32, ptr %i.r, align 4
  %i.v = sext i32 %i.u to i64
  %i.w = urem i64 %i.v, %i.t                      ; 2 uses
  %.not17 = icmp eq i64 %i.w, %1
  br i1 %.not17, label %_ZNSt10_HashtableIiSt4pairIKiSt10shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEEm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.w
  store ptr %2, ptr %i.x, align 8
  br label %_ZNSt10_HashtableIiSt4pairIKiSt10shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEEm.exit

_ZNSt10_HashtableIiSt4pairIKiSt10shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEEm.exit: ; preds = %bb.f, %bb.c, %bb.h, %bb.i, %bb.g
  %i.y = load ptr, ptr %3, align 8                ; 2 uses
  store ptr %i.y, ptr %2, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aa = load ptr, ptr %i.z, align 8             ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt10shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt10shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEEm.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ab, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4
  %i.ag = load ptr, ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #22, !inline_history !124
  %i.aj = load ptr, ptr %i.aa, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #22, !inline_history !124
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt10shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit

bb.l:                                             ; preds = %bb.j
  %i.am = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i.i = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ae, %bb.m ], [ %i.ao, %bb.n ]
  %i.ap = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ap, label %bb.o, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt10shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit, !prof !5

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #22
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt10shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt10shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit: ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt10shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEEm.exit, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.o
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef 32) #25
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = add i64 %i.ar, -1
  store i64 %i.as, ptr %i.aq, align 8
  ret ptr %i.y
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fshl.i16(i16, i16, i16) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.usub.sat.i16(i16, i16) #20

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nounwind }
attributes #23 = { builtin nounwind allocsize(0) }
attributes #24 = { noreturn nounwind }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = distinct !{null, null, null}
!7 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!8 = !{!9, !11}
!9 = distinct !{!9, !10, !"_ZSt20atomic_load_explicitIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_St12memory_order: argument 0"}
!10 = distinct !{!10, !"_ZSt20atomic_load_explicitIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_St12memory_order"}
!11 = distinct !{!11, !12, !"_ZSt11atomic_loadIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_: argument 0"}
!12 = distinct !{!12, !"_ZSt11atomic_loadIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_"}
!13 = distinct !{null, null, null}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !15}
!19 = !{!"branch_weights", i32 -2861759, i32 2861758}
!20 = !{!"branch_weights", !"expected", i32 2147125795, i32 357853}
!21 = !{i8 0, i8 2}
!22 = !{}
!23 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!24 = !{!25}
!25 = distinct !{!25, !26, !"_ZNK2v88internal17WasmDispatchTable21MaybeGetWrapperHandleEi: argument 0"}
!26 = distinct !{!26, !"_ZNK2v88internal17WasmDispatchTable21MaybeGetWrapperHandleEi"}
!27 = !{!28, !25}
!28 = distinct !{!28, !29, !"_ZNK2v88internal21WasmDispatchTableData21MaybeGetWrapperHandleEi: argument 0"}
!29 = distinct !{!29, !"_ZNK2v88internal21WasmDispatchTableData21MaybeGetWrapperHandleEi"}
!30 = distinct !{!30, !15}
!31 = distinct !{!31, !15}
!32 = distinct !{null, null, null}
!33 = distinct !{null, null, null, null, null, null, null}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_ZNK2v88internal18WasmJSFunctionData11OffheapData14wrapper_handleEv: argument 0"}
!36 = distinct !{!36, !"_ZNK2v88internal18WasmJSFunctionData11OffheapData14wrapper_handleEv"}
!37 = distinct !{!37, !15}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZNK2v88internal21WasmDispatchTableData21MaybeGetWrapperHandleEi: argument 0"}
!40 = distinct !{!40, !"_ZNK2v88internal21WasmDispatchTableData21MaybeGetWrapperHandleEi"}
!41 = distinct !{!41, !15}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv: argument 0"}
!44 = distinct !{!44, !"_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv"}
!45 = !{!46, !43}
!46 = distinct !{!46, !47, !"_ZN2v88internal20ArrayBufferExtension13backing_storeEv: argument 0"}
!47 = distinct !{!47, !"_ZN2v88internal20ArrayBufferExtension13backing_storeEv"}
!48 = distinct !{ptr @_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZN2v88internal20ArrayBufferExtension13backing_storeEv: argument 0"}
!51 = distinct !{!51, !"_ZN2v88internal20ArrayBufferExtension13backing_storeEv"}
!52 = distinct !{null, null}
!53 = !{!54}
!54 = distinct !{!54, !55, !"_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv: argument 0"}
!55 = distinct !{!55, !"_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv"}
!56 = !{!57, !54}
!57 = distinct !{!57, !58, !"_ZN2v88internal20ArrayBufferExtension13backing_storeEv: argument 0"}
!58 = distinct !{!58, !"_ZN2v88internal20ArrayBufferExtension13backing_storeEv"}
!59 = distinct !{!59, !15}
!60 = distinct !{!60, !15}
!61 = !{!62}
!62 = distinct !{!62, !63, !"_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv: argument 0"}
!63 = distinct !{!63, !"_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv"}
!64 = !{!65, !62}
!65 = distinct !{!65, !66, !"_ZN2v88internal20ArrayBufferExtension13backing_storeEv: argument 0"}
!66 = distinct !{!66, !"_ZN2v88internal20ArrayBufferExtension13backing_storeEv"}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv: argument 0"}
!69 = distinct !{!69, !"_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv"}
!70 = !{!71, !68}
!71 = distinct !{!71, !72, !"_ZN2v88internal20ArrayBufferExtension13backing_storeEv: argument 0"}
!72 = distinct !{!72, !"_ZN2v88internal20ArrayBufferExtension13backing_storeEv"}
!73 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!74 = distinct !{null}
!75 = distinct !{null, null}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv: argument 0"}
!78 = distinct !{!78, !"_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv"}
!79 = !{!80, !77}
!80 = distinct !{!80, !81, !"_ZN2v88internal20ArrayBufferExtension13backing_storeEv: argument 0"}
!81 = distinct !{!81, !"_ZN2v88internal20ArrayBufferExtension13backing_storeEv"}
!82 = distinct !{null}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv: argument 0"}
!85 = distinct !{!85, !"_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv"}
!86 = !{!87, !84}
!87 = distinct !{!87, !88, !"_ZN2v88internal20ArrayBufferExtension13backing_storeEv: argument 0"}
!88 = distinct !{!88, !"_ZN2v88internal20ArrayBufferExtension13backing_storeEv"}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv: argument 0"}
!91 = distinct !{!91, !"_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv"}
!92 = !{!93, !90}
!93 = distinct !{!93, !94, !"_ZN2v88internal20ArrayBufferExtension13backing_storeEv: argument 0"}
!94 = distinct !{!94, !"_ZN2v88internal20ArrayBufferExtension13backing_storeEv"}
!95 = distinct !{!95, !15}
!96 = distinct !{!96, !15}
!97 = distinct !{!97, !15}
!98 = distinct !{!98, !15}
!99 = distinct !{!99, !15}
!100 = distinct !{!100, !15}
!101 = distinct !{!101, !15}
!102 = !{!103, !105}
!103 = distinct !{!103, !104, !"_ZSt11make_uniqueIA_cENSt8__detail9_MakeUniqIT_E7__arrayEm: argument 0"}
!104 = distinct !{!104, !"_ZSt11make_uniqueIA_cENSt8__detail9_MakeUniqIT_E7__arrayEm"}
!105 = distinct !{!105, !106, !"_ZN2v84base11OwnedVectorIcE3NewEm: argument 0"}
!106 = distinct !{!106, !"_ZN2v84base11OwnedVectorIcE3NewEm"}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_ZN2v84base11OwnedVectorIcE11ReleaseDataEv: argument 0"}
!109 = distinct !{!109, !"_ZN2v84base11OwnedVectorIcE11ReleaseDataEv"}
!110 = distinct !{null}
!111 = !{!"branch_weights", i32 2146410443, i32 1073205}
!112 = distinct !{null, null, null, null, null, null, null}
!113 = distinct !{!113, !15}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!116 = distinct !{!116, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!117 = !{!118}
!118 = distinct !{!118, !119, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!119 = distinct !{!119, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!120 = distinct !{null, null}
!121 = distinct !{!121, !15}
!122 = distinct !{null, null, null, null, null, null, null}
!123 = distinct !{!123, !15}
!124 = distinct !{null, null, null, null, null, null}
end_hunk_2
