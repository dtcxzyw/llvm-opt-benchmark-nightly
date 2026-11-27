Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/liftoff-compiler?download=true
inline.NumInlined: 20842
inline.NumDeleted: 3929
loop-unroll.NumCompletelyUnrolled: 69
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_ZN2v88internal26SourcePositionTableBuilderC1EPNS0_4ZoneENS1_13RecordingModeE
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt11_Deque_baseIN2v88internal21SafepointTableBuilder12EntryBuilderENS1_22RecyclingZoneAllocatorIS3_EEE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !guid !1133 {
bb.a:
  %i.a = lshr i64 %1, 4                           ; 2 uses
  %i.b = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.c, 3     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i64 %.sroa.speculated, ptr %i.e, align 8
  %i.f = load ptr, ptr %0, align 8                ; 3 uses
  %i.g = shl nuw i64 %.sroa.speculated, 3         ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = sub i64 %i.i, %i.k
  %i.m = icmp ugt i64 %i.g, %i.l
  br i1 %i.m, label %bb.b, label %_ZNSt11_Deque_baseIN2v88internal21SafepointTableBuilder12EntryBuilderENS1_22RecyclingZoneAllocatorIS3_EEE15_M_allocate_mapEm.exit, !prof !962

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 noundef %i.g) #24
  %.pre.i.i.i.i.i.i = load i64, ptr %i.j, align 8
  br label %_ZNSt11_Deque_baseIN2v88internal21SafepointTableBuilder12EntryBuilderENS1_22RecyclingZoneAllocatorIS3_EEE15_M_allocate_mapEm.exit

_ZNSt11_Deque_baseIN2v88internal21SafepointTableBuilder12EntryBuilderENS1_22RecyclingZoneAllocatorIS3_EEE15_M_allocate_mapEm.exit: ; preds = %bb.a, %bb.b
  %i.n = phi i64 [ %.pre.i.i.i.i.i.i, %bb.b ], [ %i.k, %bb.a ] ; 2 uses
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = add i64 %i.n, %i.g
  store i64 %i.p, ptr %i.j, align 8
  store ptr %i.o, ptr %i.d, align 8
  %i.q = load i64, ptr %i.e, align 8
  %i.r = sub i64 %i.q, %i.b
  %i.s = lshr i64 %i.r, 1
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.s ; 4 uses
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt11_Deque_baseIN2v88internal21SafepointTableBuilder12EntryBuilderENS1_22RecyclingZoneAllocatorIS3_EEE16_M_allocate_nodeEv.exit.i, %_ZNSt11_Deque_baseIN2v88internal21SafepointTableBuilder12EntryBuilderENS1_22RecyclingZoneAllocatorIS3_EEE15_M_allocate_mapEm.exit
  %.06.i = phi ptr [ %i.t, %_ZNSt11_Deque_baseIN2v88internal21SafepointTableBuilder12EntryBuilderENS1_22RecyclingZoneAllocatorIS3_EEE15_M_allocate_mapEm.exit ], [ %i.ak, %_ZNSt11_Deque_baseIN2v88internal21SafepointTableBuilder12EntryBuilderENS1_22RecyclingZoneAllocatorIS3_EEE16_M_allocate_nodeEv.exit.i ] ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8
  %.not5.i.i.i.i = icmp ult i64 %i.y, 16
  br i1 %.not5.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.w, align 8
  store ptr %i.z, ptr %i.v, align 8
  br label %_ZNSt11_Deque_baseIN2v88internal21SafepointTableBuilder12EntryBuilderENS1_22RecyclingZoneAllocatorIS3_EEE16_M_allocate_nodeEv.exit.i

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.aa = load ptr, ptr %0, align 8               ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 3 uses
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.af = sub i64 %i.ac, %i.ae
  %i.ag = icmp ult i64 %i.af, 512
  br i1 %i.ag, label %bb.g, label %_ZN2v88internal13ZoneAllocatorINS0_21SafepointTableBuilder12EntryBuilderEE8allocateEm.exit.i.i.i.i, !prof !962

bb.g:                                             ; preds = %bb.f
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.aa, i64 noundef 512) #24
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.ad, align 8
  br label %_ZN2v88internal13ZoneAllocatorINS0_21SafepointTableBuilder12EntryBuilderEE8allocateEm.exit.i.i.i.i

_ZN2v88internal13ZoneAllocatorINS0_21SafepointTableBuilder12EntryBuilderEE8allocateEm.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %i.ah = phi i64 [ %.pre.i.i.i.i.i.i.i, %bb.g ], [ %i.ae, %bb.f ] ; 2 uses
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = add i64 %i.ah, 512
  store i64 %i.aj, ptr %i.ad, align 8
  br label %_ZNSt11_Deque_baseIN2v88internal21SafepointTableBuilder12EntryBuilderENS1_22RecyclingZoneAllocatorIS3_EEE16_M_allocate_nodeEv.exit.i

_ZNSt11_Deque_baseIN2v88internal21SafepointTableBuilder12EntryBuilderENS1_22RecyclingZoneAllocatorIS3_EEE16_M_allocate_nodeEv.exit.i: ; preds = %_ZN2v88internal13ZoneAllocatorINS0_21SafepointTableBuilder12EntryBuilderEE8allocateEm.exit.i.i.i.i, %bb.e
  %.0.i.i.i.i = phi ptr [ %i.w, %bb.e ], [ %i.ai, %_ZN2v88internal13ZoneAllocatorINS0_21SafepointTableBuilder12EntryBuilderEE8allocateEm.exit.i.i.i.i ]
  store ptr %.0.i.i.i.i, ptr %.06.i, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.06.i, i64 8 ; 2 uses
  %i.al = icmp ult ptr %i.ak, %i.u
  br i1 %i.al, label %bb.c, label %_ZNSt11_Deque_baseIN2v88internal21SafepointTableBuilder12EntryBuilderENS1_22RecyclingZoneAllocatorIS3_EEE15_M_create_nodesEPPS3_S8_.exit, !llvm.loop !1132

_ZNSt11_Deque_baseIN2v88internal21SafepointTableBuilder12EntryBuilderENS1_22RecyclingZoneAllocatorIS3_EEE15_M_create_nodesEPPS3_S8_.exit: ; preds = %_ZNSt11_Deque_baseIN2v88internal21SafepointTableBuilder12EntryBuilderENS1_22RecyclingZoneAllocatorIS3_EEE16_M_allocate_nodeEv.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.t, ptr %i.an, align 8
  %i.ao = load ptr, ptr %i.t, align 8             ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ao, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 512
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.aq, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.at = getelementptr inbounds i8, ptr %i.u, i64 -8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.at, ptr %i.au, align 8
  %i.av = load ptr, ptr %i.at, align 8            ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.av, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 512
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.ax, ptr %i.ay, align 8
  store ptr %i.ao, ptr %i.am, align 8
  %i.az = and i64 %1, 15
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %i.av, i64 %i.az
  store ptr %i.ba, ptr %i.as, align 8
  ret void
}

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #9

declare preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define internal preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_4wasm12_GLOBAL__N_115LiftoffCompiler13OutOfLineCodeEE4GrowEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef range(i64 -164703072086692424, 164703072086692427) %1) unnamed_addr #12 align 2 !guid !1134 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.val11 = load ptr, ptr %i.h, align 8           ; 2 uses
  %i.i = icmp eq ptr %i.b, %.val11
  br i1 %i.i, label %_ZN2v88internal10ZoneVectorINS0_4wasm12_GLOBAL__N_115LiftoffCompiler13OutOfLineCodeEE11NewCapacityEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = ptrtoint ptr %.val11 to i64
  %i.k = sub i64 %i.j, %i.f
  %i.l = sdiv exact i64 %i.k, 56
  %i.m = shl nsw i64 %i.l, 1
  br label %_ZN2v88internal10ZoneVectorINS0_4wasm12_GLOBAL__N_115LiftoffCompiler13OutOfLineCodeEE11NewCapacityEm.exit

_ZN2v88internal10ZoneVectorINS0_4wasm12_GLOBAL__N_115LiftoffCompiler13OutOfLineCodeEE11NewCapacityEm.exit: ; preds = %bb.a, %bb.b
  %i.n = phi i64 [ %i.m, %bb.b ], [ 2, %bb.a ]
  %i.o = tail call noundef range(i64 -329406144173384850, 329406144173384851) i64 @llvm.umax.i64(i64 %i.n, i64 range(i64 -164703072086692424, 164703072086692427) %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 329406144173384850
  br i1 %i.q, label %bb.d, label %bb.c, !prof !963

bb.c:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_4wasm12_GLOBAL__N_115LiftoffCompiler13OutOfLineCodeEE11NewCapacityEm.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #27
  unreachable

bb.d:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_4wasm12_GLOBAL__N_115LiftoffCompiler13OutOfLineCodeEE11NewCapacityEm.exit
  %i.r = mul nuw i64 %i.o, 56                     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.e, label %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm12_GLOBAL__N_115LiftoffCompiler13OutOfLineCodeEA_S6_EEPT_m.exit, !prof !962

bb.e:                                             ; preds = %bb.d
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #24
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm12_GLOBAL__N_115LiftoffCompiler13OutOfLineCodeEA_S6_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_4wasm12_GLOBAL__N_115LiftoffCompiler13OutOfLineCodeEA_S6_EEPT_m.exit: ; preds = %bb.d, %bb.e
  %i.y = phi i64 [ %.pre.i.i, %bb.e ], [ %i.v, %bb.d ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm12_GLOBAL__N_115LiftoffCompiler13OutOfLineCodeEA_S6_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm12_GLOBAL__N_115LiftoffCompiler13OutOfLineCodeEA_S6_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.f ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm12_GLOBAL__N_115LiftoffCompiler13OutOfLineCodeEA_S6_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [56 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm14FastZoneVectorINS1_9ValueBaseINS1_7Decoder15NoValidationTagEEEE4GrowEiPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #12 comdat align 2 !guid !1136 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 2
  %i.h = trunc i64 %i.g to i32
  %i.i = add i32 %1, %i.h
  %i.j = zext i32 %i.i to i64
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.j, i64 1) ; 2 uses
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.l = sub nuw nsw i64 64, %i.k
  %i.m = shl nuw nsw i64 1, %i.l
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.m, i64 8) ; 2 uses
  %i.n = icmp samesign ult i64 %spec.select.i.i, 2147483648
  br i1 %i.n, label %bb.c, label %bb.b, !prof !963

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.o = shl nuw nsw i64 %.sroa.speculated, 2
  %i.p = add nuw nsw i64 %i.o, 4
  %i.q = and i64 %i.p, 9223372036854775800        ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = sub i64 %i.s, %i.u
  %i.w = icmp ugt i64 %i.q, %i.v
  br i1 %i.w, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm9ValueBaseINS3_7Decoder15NoValidationTagEEEA_S7_EEPT_m.exit, !prof !962

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %i.q) #24
  %.pre.i.i = load i64, ptr %i.t, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm9ValueBaseINS3_7Decoder15NoValidationTagEEEA_S7_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_4wasm9ValueBaseINS3_7Decoder15NoValidationTagEEEA_S7_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.x = phi i64 [ %.pre.i.i, %bb.d ], [ %i.u, %bb.c ] ; 2 uses
  %i.y = inttoptr i64 %i.x to ptr                 ; 4 uses
  %i.z = add i64 %i.x, %i.q
  store i64 %i.z, ptr %i.t, align 8
  %i.aa = load ptr, ptr %0, align 8               ; 5 uses
  %.not = icmp eq ptr %i.aa, null
  %.pre = load ptr, ptr %i.a, align 8             ; 2 uses
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm9ValueBaseINS3_7Decoder15NoValidationTagEEEA_S7_EEPT_m.exit
  %.not1822 = icmp eq ptr %i.aa, %.pre
  br i1 %.not1822, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.024 = phi ptr [ %i.ad, %.lr.ph ], [ %i.y, %.preheader ] ; 2 uses
  %.01623 = phi ptr [ %i.ac, %.lr.ph ], [ %i.aa, %.preheader ] ; 2 uses
  %i.ab = load i32, ptr %.01623, align 4
  store i32 %i.ab, ptr %.024, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %.01623, i64 4 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.024, i64 4
  %i.ae = load ptr, ptr %i.a, align 8
  %.not18 = icmp eq ptr %i.ac, %i.ae
  br i1 %.not18, label %.loopexit.loopexit, label %.lr.ph, !llvm.loop !1135

.loopexit.loopexit:                               ; preds = %.lr.ph
  %.pre25 = load ptr, ptr %0, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm9ValueBaseINS3_7Decoder15NoValidationTagEEEA_S7_EEPT_m.exit
  %i.af = phi ptr [ %.pre25, %.loopexit.loopexit ], [ %i.aa, %.preheader ], [ null, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm9ValueBaseINS3_7Decoder15NoValidationTagEEEA_S7_EEPT_m.exit ]
  %i.ag = phi ptr [ %i.ac, %.loopexit.loopexit ], [ %i.aa, %.preheader ], [ %.pre, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm9ValueBaseINS3_7Decoder15NoValidationTagEEEA_S7_EEPT_m.exit ]
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds i8, ptr %i.y, i64 %i.aj
  store ptr %i.ak, ptr %i.a, align 8
  store ptr %i.y, ptr %0, align 8
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.sroa.speculated
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.al, ptr %i.am, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #15

; Function Attrs: mustprogress noinline nounwind uwtable
define internal preserve_mostcc void @_ZN2v88internal4wasm14FastZoneVectorINS1_12_GLOBAL__N_115LiftoffCompiler7ControlEE4GrowEiPNS0_4ZoneE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 1, 17) %1, ptr noundef %2) unnamed_addr #12 align 2 !guid !1138 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val20 = load ptr, ptr %i.a, align 8
  %i.b = ptrtoint ptr %.val20 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = sdiv exact i64 %i.d, 472
  %i.f = trunc i64 %i.e to i32
  %i.g = add i32 %1, %i.f
  %i.h = zext i32 %i.g to i64
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.h, i64 1) ; 2 uses
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.j = sub nuw nsw i64 64, %i.i
  %i.k = shl nuw nsw i64 1, %i.j
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.k, i64 8) ; 2 uses
  %i.l = icmp samesign ult i64 %spec.select.i.i, 2147483648
  br i1 %i.l, label %bb.c, label %bb.b, !prof !963

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = mul nuw nsw i64 %.sroa.speculated, 472   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %i.r = sub i64 %i.o, %i.q
  %i.s = icmp ugt i64 %i.m, %i.r
  br i1 %i.s, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm12_GLOBAL__N_115LiftoffCompiler7ControlEA_S6_EEPT_m.exit, !prof !962

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %i.m) #24
  %.pre.i.i = load i64, ptr %i.p, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm12_GLOBAL__N_115LiftoffCompiler7ControlEA_S6_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_4wasm12_GLOBAL__N_115LiftoffCompiler7ControlEA_S6_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.t = phi i64 [ %.pre.i.i, %bb.d ], [ %i.q, %bb.c ] ; 2 uses
  %i.u = inttoptr i64 %i.t to ptr                 ; 4 uses
  %i.v = add i64 %i.t, %i.m
  store i64 %i.v, ptr %i.p, align 8
  %i.w = load ptr, ptr %0, align 8                ; 5 uses
  %.not = icmp eq ptr %i.w, null
  %.pre = load ptr, ptr %i.a, align 8             ; 2 uses
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm12_GLOBAL__N_115LiftoffCompiler7ControlEA_S6_EEPT_m.exit
  %.not1924 = icmp eq ptr %i.w, %.pre
  br i1 %.not1924, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler7ControlC2EOS4_.exit
  %.027 = phi ptr [ %i.bh, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler7ControlC2EOS4_.exit ], [ %i.u, %.preheader ] ; 11 uses
  %.01725 = phi ptr [ %i.bg, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler7ControlC2EOS4_.exit ], [ %i.w, %.preheader ] ; 15 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(468) %.027, ptr noundef nonnull align 8 dereferenceable(468) %.01725, i64 96, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %.027, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %.01725, i64 96
  %i.z = load ptr, ptr %i.y, align 8
  store ptr %i.z, ptr %i.x, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.027, i64 104 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01725, i64 104 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8
  store i64 %i.ac, ptr %i.aa, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.027, i64 112 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.027, i64 136 ; 5 uses
  store ptr %i.ae, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.027, i64 120 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.027, i64 128
  %i.ah = getelementptr inbounds nuw i8, ptr %.027, i64 328 ; 2 uses
  store ptr %i.ah, ptr %i.ag, align 8
  %i.ai = icmp eq ptr %.027, %.01725
  br i1 %i.ai, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler7ControlC2EOS4_.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.aj = getelementptr inbounds nuw i8, ptr %.01725, i64 112 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.01725, i64 136 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(337) %i.aa)
  %i.am = load ptr, ptr %i.aj, align 8
  store ptr %i.am, ptr %i.ad, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %.01725, i64 120
  %i.ao = load ptr, ptr %i.an, align 8
  store ptr %i.ao, ptr %i.af, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.01725, i64 128
  %i.aq = load ptr, ptr %i.ap, align 8
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %.01725, i64 120
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ak to i64
  %i.av = sub i64 %i.at, %i.au                    ; 4 uses
  %i.aw = icmp sgt i64 %i.av, 12
  br i1 %i.aw, label %bb.h, label %bb.i, !prof !963

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr align 4 %i.ak, i64 %i.av, i1 false)
  br label %_ZSt4moveIPN2v88internal4wasm15LiftoffVarStateES4_ET0_T_S6_S5_.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ax = icmp eq i64 %i.av, 12
  br i1 %i.ax, label %bb.j, label %_ZSt4moveIPN2v88internal4wasm15LiftoffVarStateES4_ET0_T_S6_S5_.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ae, ptr noundef nonnull align 4 dereferenceable(12) %i.ak, i64 12, i1 false)
  br label %_ZSt4moveIPN2v88internal4wasm15LiftoffVarStateES4_ET0_T_S6_S5_.exit.i.i.i.i.i

_ZSt4moveIPN2v88internal4wasm15LiftoffVarStateES4_ET0_T_S6_S5_.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.av
  br label %bb.k

bb.k:                                             ; preds = %_ZSt4moveIPN2v88internal4wasm15LiftoffVarStateES4_ET0_T_S6_S5_.exit.i.i.i.i.i, %bb.f
  %.sink16.i.i.i.i.i = phi i64 [ 16, %_ZSt4moveIPN2v88internal4wasm15LiftoffVarStateES4_ET0_T_S6_S5_.exit.i.i.i.i.i ], [ 24, %bb.f ]
  %.sink.i.i.i.i.i = phi ptr [ %i.ay, %_ZSt4moveIPN2v88internal4wasm15LiftoffVarStateES4_ET0_T_S6_S5_.exit.i.i.i.i.i ], [ %i.aq, %bb.f ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sink16.i.i.i.i.i
  store ptr %.sink.i.i.i.i.i, ptr %i.az, align 8
  store ptr %i.al, ptr %i.aj, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.01725, i64 120
  store ptr %i.al, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.01725, i64 328
  %i.bc = getelementptr inbounds nuw i8, ptr %.01725, i64 128
  store ptr %i.bb, ptr %i.bc, align 8
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler7ControlC2EOS4_.exit

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler7ControlC2EOS4_.exit: ; preds = %.lr.ph, %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %.01725, i64 328
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(113) %i.ah, ptr noundef nonnull align 8 dereferenceable(113) %i.bd, i64 113, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %.027, i64 448
  %i.bf = getelementptr inbounds nuw i8, ptr %.01725, i64 448
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.be, ptr noundef nonnull align 8 dereferenceable(20) %i.bf, i64 20, i1 false)
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(337) %i.ab)
  %i.bg = getelementptr inbounds nuw i8, ptr %.01725, i64 472 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.027, i64 472
  %i.bi = load ptr, ptr %i.a, align 8
  %.not19 = icmp eq ptr %i.bg, %i.bi
  br i1 %.not19, label %.loopexit.loopexit, label %.lr.ph, !llvm.loop !1137

.loopexit.loopexit:                               ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler7ControlC2EOS4_.exit
  %.pre28 = load ptr, ptr %0, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm12_GLOBAL__N_115LiftoffCompiler7ControlEA_S6_EEPT_m.exit
  %i.bj = phi ptr [ %.pre28, %.loopexit.loopexit ], [ %i.w, %.preheader ], [ null, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm12_GLOBAL__N_115LiftoffCompiler7ControlEA_S6_EEPT_m.exit ]
  %i.bk = phi ptr [ %i.bg, %.loopexit.loopexit ], [ %i.w, %.preheader ], [ %.pre, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm12_GLOBAL__N_115LiftoffCompiler7ControlEA_S6_EEPT_m.exit ]
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bj to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = getelementptr inbounds i8, ptr %i.u, i64 %i.bn
  store ptr %i.bo, ptr %i.a, align 8
  store ptr %i.u, ptr %0, align 8
  %i.bp = getelementptr inbounds nuw [472 x i8], ptr %i.u, i64 %.sroa.speculated
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bp, ptr %i.bq, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #12 comdat align 2 !guid !1139 {
_ZSt9destroy_nIPN2v88internal4wasm15LiftoffVarStateElET_S5_T0_.exit:
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2v88internal4wasm16LiftoffAssemblerD1Ev(ptr noundef nonnull align 8 dereferenceable(824)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder15NoValidationTagELNS1_12DecodingModeE0EE12DecodeLocalsEPKh(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !guid !1143 {
bb.a:
  %2 = alloca %"class.v8::base::SmallVector.697", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = trunc i64 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  store i32 %i.e, ptr %i.f, align 8
  %i.g = load i8, ptr %1, align 1                 ; 2 uses
  %.not.i.i = icmp sgt i8 %i.g, -1
  br i1 %.not.i.i, label %bb.b, label %bb.c, !prof !963

bb.b:                                             ; preds = %bb.a
  %i.h = zext nneg i8 %i.g to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_15NoValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1) ; 4 uses
  %i.j = icmp ult i64 %i.i, 25769803776
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp samesign ugt i64 %i.i, 4294967295
  tail call void @llvm.assume(i1 %i.k)
  %i.l = lshr i64 %i.i, 32
  %i.m = trunc nuw nsw i64 %i.l to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.04.0.i = phi i64 [ %i.h, %bb.b ], [ %i.i, %bb.c ] ; 3 uses
  %.sroa.5.0.i = phi i32 [ 1, %bb.b ], [ %i.m, %bb.c ] ; 2 uses
  %.sroa.065.0.extract.trunc = trunc i64 %.sroa.04.0.i to i32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = trunc i64 %i.t to i32
  %i.v = lshr i32 %i.u, 1
  %i.w = icmp uge i32 %i.v, %.sroa.065.0.extract.trunc
  tail call void @llvm.assume(i1 %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm7Decoder7verrorfEjPKcz:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 12 uses
  store ptr %i.i, ptr %6, align 8
  %i.j = icmp eq ptr %i.g, null
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.30) #27
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i32 %i.e, 15
  br i1 %i.k, label %._crit_edge.i.i.thread, label %._crit_edge.i.i

._crit_edge.i.i.thread:                           ; preds = %bb.f
  %i.l = add nuw nsw i64 %i.h, 1
  %i.m = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #25 ; 2 uses
  store ptr %i.m, ptr %6, align 8
  store i64 %i.h, ptr %i.i, align 8
  br label %bb.h

._crit_edge.i.i:                                  ; preds = %bb.f
  %cond = icmp eq i32 %i.e, 1
  br i1 %cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.g, align 1
  store i8 %i.n, ptr %i.i, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit

bb.h:                                             ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i
  %i.o = phi ptr [ %i.m, %._crit_edge.i.i.thread ], [ %i.i, %._crit_edge.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %i.g, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit: ; preds = %bb.g, %bb.h
  %i.p = phi ptr [ %i.i, %bb.g ], [ %i.o, %bb.h ]
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i64 %i.h, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.h
  store i8 0, ptr %i.r, align 1
  store i32 %1, ptr %5, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 12 uses
  store ptr %i.t, ptr %i.s, align 8
  %i.u = load ptr, ptr %6, align 8                ; 3 uses
  %i.v = icmp eq ptr %i.u, %i.i
  br i1 %i.v, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit
  %i.w = load i64, ptr %i.q, align 8              ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.y, i1 false)
  br label %_ZN2v88internal4wasm9WasmErrorC2EjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit
  store ptr %i.u, ptr %i.s, align 8
  %i.z = load i64, ptr %i.i, align 8
  store i64 %i.z, ptr %i.t, align 8
  %.pr = load i64, ptr %i.q, align 8
  br label %_ZN2v88internal4wasm9WasmErrorC2EjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN2v88internal4wasm9WasmErrorC2EjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aa = phi ptr [ %i.t, %bb.i ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 5 uses
  %i.ab = phi i64 [ %i.w, %bb.i ], [ %.pr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store i64 %i.ab, ptr %i.ac, align 8
  store ptr %i.i, ptr %6, align 8
  store i64 0, ptr %i.q, align 8
  store i8 0, ptr %i.i, align 8
  store i32 %1, ptr %i.a, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  %i.ah = icmp eq ptr %i.aa, %i.t                 ; 2 uses
  br i1 %i.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %_ZN2v88internal4wasm9WasmErrorC2EjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  br i1 %i.ah, label %bb.j, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN2v88internal4wasm9WasmErrorC2EjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  br i1 %i.ah, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  %i.ai = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ai)
  switch i64 %i.ab, label %bb.l [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.aj = load i8, ptr %i.aa, align 1
  store i8 %i.aj, ptr %i.ae, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr align 1 %i.aa, i64 %i.ab, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.l, %bb.k, %bb.j
  %i.ak = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.ak, ptr %i.al, align 8
  %i.am = load ptr, ptr %i.ad, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak
  store i8 0, ptr %i.an, align 1
  %.pre.i.i = load ptr, ptr %i.s, align 8
  br label %_ZN2v88internal4wasm9WasmErroraSEOS2_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.aa, ptr %i.ad, align 8
  store i64 %i.ab, ptr %i.ao, align 8
  %i.ap = load i64, ptr %i.t, align 8
  store i64 %i.ap, ptr %i.af, align 8
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.aq = load i64, ptr %i.af, align 8
  store ptr %i.aa, ptr %i.ad, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.ab, ptr %i.ar, align 8
  %i.as = load i64, ptr %i.t, align 8
  store i64 %i.as, ptr %i.af, align 8
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.ae, ptr %i.s, align 8
  store i64 %i.aq, ptr %i.t, align 8
  br label %_ZN2v88internal4wasm9WasmErroraSEOS2_.exit

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.t, ptr %i.s, align 8
  br label %_ZN2v88internal4wasm9WasmErroraSEOS2_.exit

_ZN2v88internal4wasm9WasmErroraSEOS2_.exit:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.m, %bb.n
  %i.at = phi ptr [ %i.ae, %bb.m ], [ %i.t, %bb.n ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  store i64 0, ptr %i.ac, align 8
  store i8 0, ptr %i.at, align 1
  %i.au = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.t
  br i1 %i.av, label %_ZN2v88internal4wasm9WasmErrorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN2v88internal4wasm9WasmErroraSEOS2_.exit
  %i.aw = load i64, ptr %i.t, align 8
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #26
  br label %_ZN2v88internal4wasm9WasmErrorD2Ev.exit

_ZN2v88internal4wasm9WasmErrorD2Ev.exit:          ; preds = %_ZN2v88internal4wasm9WasmErroraSEOS2_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ay = load ptr, ptr %6, align 8               ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.i
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %_ZN2v88internal4wasm9WasmErrorD2Ev.exit
  %i.ba = load i64, ptr %i.i, align 8
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN2v88internal4wasm9WasmErrorD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.bc = load ptr, ptr %0, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(80) %0) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #16

declare noundef i32 @_ZN2v84base9VSNPrintFENS0_6VectorIcEEPKcP13__va_list_tag(ptr, i64, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #16

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIZNS_8internal4wasm11WasmDecoderINS3_7Decoder15NoValidationTagELNS3_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntryLm8ESaISB_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #12 comdat align 2 !guid !1151 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.h)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.j = sub nuw nsw i64 64, %i.i                 ; 2 uses
  %i.k = icmp ugt i64 %spec.select.i.i, 576460752303423487
  br i1 %i.k, label %bb.b, label %bb.e, !prof !962

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 8, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #25 ; 6 uses
  %i.p = load ptr, ptr %0, align 8                ; 5 uses
  %i.q = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt18uninitialized_moveIPZN2v88internal4wasm11WasmDecoderINS2_7Decoder15NoValidationTagELNS2_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntrySB_ET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.s = ptrtoaddr ptr %i.q to i64
  %i.t = ptrtoaddr ptr %i.p to i64
  %i.u = add i64 %i.s, -8
  %i.v = sub i64 %i.u, %i.t                       ; 2 uses
  %i.w = lshr i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.x, 4611686018427387900      ; 3 uses
  %i.y = shl i64 %n.vec, 3                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.o, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.p, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.ab ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.p, i64 %i.ab ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 4
  %wide.load13 = load <2 x i64>, ptr %i.ac, align 4
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load13, ptr %i.ad, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !1149

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPZN2v88internal4wasm11WasmDecoderINS2_7Decoder15NoValidationTagELNS2_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntrySB_ET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.af = load i64, ptr %.sroa.04.07.i.i.i.i, align 4
  store i64 %i.af, ptr %.08.i.i.i.i, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  %i.ai = icmp eq ptr %i.ag, %i.q
  br i1 %i.ai, label %_ZSt18uninitialized_moveIPZN2v88internal4wasm11WasmDecoderINS2_7Decoder15NoValidationTagELNS2_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntrySB_ET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1150

_ZSt18uninitialized_moveIPZN2v88internal4wasm11WasmDecoderINS2_7Decoder15NoValidationTagELNS2_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntrySB_ET0_T_SD_SC_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.aj = shl nuw i64 1, %i.j
  %i.ak = ptrtoint ptr %i.m to i64
  %i.al = sub i64 %i.ak, %i.f
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIZNS_8internal4wasm11WasmDecoderINS3_7Decoder15NoValidationTagELNS3_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntryLm8ESaISB_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  store ptr %i.o, ptr %0, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.al
  store ptr %i.am, ptr %i.a, align 8
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.aj
  store ptr %i.an, ptr %i.c, align 8
  ret void
}

; Function Attrs: noreturn
declare void @_ZN2v84base8FatalOOMENS0_7OOMTypeEPKc(i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIZNS_8internal4wasm11WasmDecoderINS3_7Decoder15NoValidationTagELNS3_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntryLm8ESaISB_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #12 comdat align 2 !guid !1152 {
_ZSt9destroy_nIPZN2v88internal4wasm11WasmDecoderINS2_7Decoder15NoValidationTagELNS2_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntrylET_SC_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPZN2v88internal4wasm11WasmDecoderINS2_7Decoder15NoValidationTagELNS2_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntrylET_SC_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #26
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPZN2v88internal4wasm11WasmDecoderINS2_7Decoder15NoValidationTagELNS2_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntrylET_SC_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN2v88internal4wasm17value_type_reader14read_heap_typeINS1_7Decoder15NoValidationTagEEESt4pairINS1_8HeapTypeEjEPS4_PKhNS1_19WasmEnabledFeaturesEPNS1_20WasmDetectedFeaturesE(ptr noundef %0, ptr noundef %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat !guid !1153 {
bb.a:
  %i.a = load i8, ptr %1, align 1                 ; 2 uses
  %.not.i.i = icmp sgt i8 %i.a, -1
  br i1 %.not.i.i, label %bb.b, label %bb.c, !prof !963

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i8 %i.a to i64
  %i.c = shl nuw i64 %i.b, 57
  %i.d = ashr exact i64 %i.c, 57
  br label %_ZN2v88internal4wasm7Decoder9read_i33vINS2_15NoValidationTagEEESt4pairIljEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call preserve_mostcc { i64, i32 } @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIlNS2_15NoValidationTagELNS2_9TraceFlagE0ELm33EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1) ; 2 uses
  %.fca.1.extract.i.i = extractvalue { i64, i32 } %i.e, 1 ; 3 uses
  %i.f = icmp ult i32 %.fca.1.extract.i.i, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp ne i32 %.fca.1.extract.i.i, 0
  tail call void @llvm.assume(i1 %i.g)
  %i.h = extractvalue { i64, i32 } %i.e, 0
  br label %_ZN2v88internal4wasm7Decoder9read_i33vINS2_15NoValidationTagEEESt4pairIljEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit

_ZN2v88internal4wasm7Decoder9read_i33vINS2_15NoValidationTagEEESt4pairIljEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit: ; preds = %bb.b, %bb.c
  %.fca.1.extract.pre-phi = phi i32 [ 1, %bb.b ], [ %.fca.1.extract.i.i, %bb.c ] ; 4 uses
  %.fca.1.insert.i.merged.i = phi i64 [ %i.d, %bb.b ], [ %i.h, %bb.c ] ; 3 uses
  %i.i = icmp slt i64 %.fca.1.insert.i.merged.i, 0 ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.k

bb.d:                                             ; preds = %_ZN2v88internal4wasm7Decoder9read_i33vINS2_15NoValidationTagEEESt4pairIljEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit
  %i.j = trunc i64 %.fca.1.insert.i.merged.i to i8
  %i.k = and i8 %i.j, 127                         ; 2 uses
  %i.l = icmp eq i8 %i.k, 101                     ; 5 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = zext nneg i32 %.fca.1.extract.pre-phi to i64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.m
  %.0.copyload.i.i.i.i = load i8, ptr %i.n, align 1
  %i.o = add nuw nsw i32 %.fca.1.extract.pre-phi, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.464.0 = phi i32 [ %i.o, %bb.e ], [ %.fca.1.extract.pre-phi, %bb.d ] ; 5 uses
  %.045 = phi i8 [ %.0.copyload.i.i.i.i, %bb.e ], [ %i.k, %bb.d ] ; 5 uses
  switch i8 %.045, label %bb.j [
    i8 115, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 112, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 109, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 108, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 107, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 106, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 110, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 113, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 114, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 111, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 116, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit50
    i8 105, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit50
    i8 103, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit53
    i8 102, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit53
    i8 96, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit53
    i8 97, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit53
    i8 117, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit56
    i8 104, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit56
    i8 98, label %bb.g
  ]

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit:  ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.p = zext nneg i8 %.045 to i64
  %i.q = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 -384
  %i.s = load i32, ptr %i.r, align 4
  %i.t = select i1 %i.l, i32 20, i32 4
  %i.u = or i32 %i.s, %i.t
  br label %.critedge

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit50: ; preds = %bb.f, %bb.f
  %i.v = load i64, ptr %3, align 8
  %i.w = or i64 %i.v, 65536
  store i64 %i.w, ptr %3, align 8
  %i.x = zext nneg i8 %.045 to i64
  %i.y = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 -384
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = select i1 %i.l, i32 20, i32 4
  %i.ac = or i32 %i.aa, %i.ab
  br label %.critedge

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit53: ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.ad = zext nneg i8 %.045 to i64
  %i.ae = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ae, i64 -384
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = select i1 %i.l, i32 20, i32 4
  %i.ai = or i32 %i.ag, %i.ah
  br label %.critedge

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit56: ; preds = %bb.f, %bb.f
  %i.aj = zext nneg i8 %.045 to i64
  %i.ak = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 -384
  %i.am = load i32, ptr %i.al, align 4
  %i.an = select i1 %i.l, i32 20, i32 4
  %i.ao = or i32 %i.am, %i.an
  br label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1             ; 2 uses
  %.not.i.i57 = icmp sgt i8 %i.aq, -1
  br i1 %.not.i.i57, label %bb.h, label %bb.i, !prof !963

bb.h:                                             ; preds = %bb.g
  %i.ar = zext nneg i8 %i.aq to i64
  br label %_ZN2v88internal4wasm7Decoder9read_u32vINS2_15NoValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit

bb.i:                                             ; preds = %bb.g
  %i.as = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_15NoValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.ap) ; 4 uses
  %i.at = icmp ult i64 %i.as, 25769803776
  tail call void @llvm.assume(i1 %i.at)
  %i.au = icmp samesign ugt i64 %i.as, 4294967295
  tail call void @llvm.assume(i1 %i.au)
  %i.av = lshr i64 %i.as, 32
  %i.aw = trunc nuw nsw i64 %i.av to i32
  br label %_ZN2v88internal4wasm7Decoder9read_u32vINS2_15NoValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit

_ZN2v88internal4wasm7Decoder9read_u32vINS2_15NoValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit: ; preds = %bb.h, %bb.i
  %.sroa.04.0.i = phi i64 [ %i.ar, %bb.h ], [ %i.as, %bb.i ]
  %.sroa.5.0.i = phi i32 [ 1, %bb.h ], [ %i.aw, %bb.i ]
  %i.ax = add nuw nsw i32 %.sroa.5.0.i, %.sroa.464.0
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  unreachable

bb.k:                                             ; preds = %_ZN2v88internal4wasm7Decoder9read_i33vINS2_15NoValidationTagEEESt4pairIljEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit, %_ZN2v88internal4wasm7Decoder9read_u32vINS2_15NoValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit
  %.sroa.464.1 = phi i32 [ %i.ax, %_ZN2v88internal4wasm7Decoder9read_u32vINS2_15NoValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit ], [ %.fca.1.extract.pre-phi, %_ZN2v88internal4wasm7Decoder9read_i33vINS2_15NoValidationTagEEESt4pairIljEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit ]
  %.142.in = phi i64 [ %.sroa.04.0.i, %_ZN2v88internal4wasm7Decoder9read_u32vINS2_15NoValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit ], [ %.fca.1.insert.i.merged.i, %_ZN2v88internal4wasm7Decoder9read_i33vINS2_15NoValidationTagEEESt4pairIljEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit ]
  %.142 = trunc i64 %.142.in to i32               ; 2 uses
  %i.ay = icmp ult i32 %.142, 1048576
  br i1 %i.ay, label %_ZN2v88internal4wasm8HeapType5IndexENS1_15ModuleTypeIndexEbNS1_11RefTypeKindENS1_9ExactnessE.exit, label %bb.l, !prof !963

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.47) #27
  unreachable

_ZN2v88internal4wasm8HeapType5IndexENS1_15ModuleTypeIndexEbNS1_11RefTypeKindENS1_9ExactnessE.exit: ; preds = %bb.k
  %i.az = select i1 %i.i, i32 15, i32 7
  %i.ba = shl nuw nsw i32 %.142, 8
  %i.bb = or disjoint i32 %i.ba, %i.az
  br label %.critedge

.critedge:                                        ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit50, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit53, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit56, %_ZN2v88internal4wasm8HeapType5IndexENS1_15ModuleTypeIndexEbNS1_11RefTypeKindENS1_9ExactnessE.exit
  %.sroa.073.0 = phi i32 [ %i.u, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit ], [ %i.ac, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit50 ], [ %i.ai, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit53 ], [ %i.ao, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit56 ], [ %i.bb, %_ZN2v88internal4wasm8HeapType5IndexENS1_15ModuleTypeIndexEbNS1_11RefTypeKindENS1_9ExactnessE.exit ]
  %.sroa.7.0 = phi i32 [ %.sroa.464.0, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit ], [ %.sroa.464.0, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit50 ], [ %.sroa.464.0, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit53 ], [ %.sroa.464.0, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit56 ], [ %.sroa.464.1, %_ZN2v88internal4wasm8HeapType5IndexENS1_15ModuleTypeIndexEbNS1_11RefTypeKindENS1_9ExactnessE.exit ]
  %.sroa.7.0.insert.ext = zext nneg i32 %.sroa.7.0 to i64
  %.sroa.7.0.insert.shift = shl nuw nsw i64 %.sroa.7.0.insert.ext, 32
  %.sroa.073.0.insert.ext = zext i32 %.sroa.073.0 to i64
  %.sroa.073.0.insert.insert = or disjoint i64 %.sroa.7.0.insert.shift, %.sroa.073.0.insert.ext
  ret i64 %.sroa.073.0.insert.insert
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc { i64, i32 } @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIlNS2_15NoValidationTagELNS2_9TraceFlagE0ELm33EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #12 comdat align 2 !guid !1154 {
bb.a:
  %i.a = load i8, ptr %1, align 1                 ; 2 uses
  %i.b = and i8 %i.a, 127
  %i.c = zext nneg i8 %i.b to i64                 ; 2 uses
  %.not.i = icmp sgt i8 %i.a, -1
  br i1 %.not.i, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  %i.f = and i8 %i.e, 127
  %i.g = zext nneg i8 %i.f to i64
  %i.h = shl nuw nsw i64 %i.g, 7
  %i.i = or disjoint i64 %i.h, %i.c               ; 2 uses
  %.not.i4 = icmp sgt i8 %i.e, -1
  br i1 %.not.i4, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.k = load i8, ptr %i.j, align 1               ; 2 uses
  %i.l = and i8 %i.k, 127
  %i.m = zext nneg i8 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 14
  %i.o = or disjoint i64 %i.n, %i.i               ; 2 uses
  %.not.i13 = icmp sgt i8 %i.k, -1
  br i1 %.not.i13, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.q = load i8, ptr %i.p, align 1               ; 2 uses
  %i.r = and i8 %i.q, 127
  %i.s = zext nneg i8 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 21
  %i.u = or disjoint i64 %i.t, %i.o               ; 2 uses
  %.not.i22 = icmp sgt i8 %i.q, -1
  br i1 %.not.i22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i64
  %i.y = shl i64 %i.x, 57
  %i.z = shl nuw nsw i64 %i.u, 29
  %i.aa = or disjoint i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 29
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIlNS2_15NoValidationTagELNS2_9TraceFlagE0ELm33ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

bb.f:                                             ; preds = %bb.d
  %i.ac = shl nuw i64 %i.u, 36
  %i.ad = ashr exact i64 %i.ac, 36
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIlNS2_15NoValidationTagELNS2_9TraceFlagE0ELm33ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

bb.g:                                             ; preds = %bb.c
  %i.ae = shl nuw i64 %i.o, 43
  %i.af = ashr exact i64 %i.ae, 43
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIlNS2_15NoValidationTagELNS2_9TraceFlagE0ELm33ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

bb.h:                                             ; preds = %bb.b
  %i.ag = shl nuw i64 %i.i, 50
  %i.ah = ashr exact i64 %i.ag, 50
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIlNS2_15NoValidationTagELNS2_9TraceFlagE0ELm33ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

bb.i:                                             ; preds = %bb.a
  %i.ai = shl nuw i64 %i.c, 57
  %i.aj = ashr exact i64 %i.ai, 57
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIlNS2_15NoValidationTagELNS2_9TraceFlagE0ELm33ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

_ZN2v88internal4wasm7Decoder13read_leb_tailIlNS2_15NoValidationTagELNS2_9TraceFlagE0ELm33ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit: ; preds = %bb.h, %bb.f, %bb.e, %bb.g, %bb.i
  %.sroa.5.0 = phi i32 [ 1, %bb.i ], [ 2, %bb.h ], [ 3, %bb.g ], [ 4, %bb.f ], [ 5, %bb.e ]
  %.sroa.0.0 = phi i64 [ %i.aj, %bb.i ], [ %i.ah, %bb.h ], [ %i.af, %bb.g ], [ %i.ad, %bb.f ], [ %i.ab, %bb.e ]
  %.fca.0.insert.i = insertvalue { i64, i32 } poison, i64 %.sroa.0.0, 0
  %.fca.1.insert.i = insertvalue { i64, i32 } %.fca.0.insert.i, i32 %.sroa.5.0, 1
  ret { i64, i32 } %.fca.1.insert.i
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #12 comdat align 2 !guid !1155 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = trunc i64 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i32, ptr %i.g, align 8
  %i.i = add i32 %i.h, %i.f
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvjPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %i.i, ptr noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvjPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #12 comdat align 2 !guid !1156 {
bb.a:
  tail call void (ptr, i32, ptr, ...) @_ZN2v88internal4wasm7Decoder7verrorfEjPKcz(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm14FastZoneVectorIjE4GrowEiPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #12 comdat align 2 !guid !1158 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 2
  %i.h = trunc i64 %i.g to i32
  %i.i = add i32 %1, %i.h
  %i.j = zext i32 %i.i to i64
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.j, i64 1) ; 2 uses
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.l = sub nuw nsw i64 64, %i.k
  %i.m = shl nuw nsw i64 1, %i.l
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.m, i64 8) ; 2 uses
  %i.n = icmp samesign ult i64 %spec.select.i.i, 2147483648
  br i1 %i.n, label %bb.c, label %bb.b, !prof !963

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.o = shl nuw nsw i64 %.sroa.speculated, 2
  %i.p = add nuw nsw i64 %i.o, 4
  %i.q = and i64 %i.p, 9223372036854775800        ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = sub i64 %i.s, %i.u
  %i.w = icmp ugt i64 %i.q, %i.v
  br i1 %i.w, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit, !prof !962

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %i.q) #24
  %.pre.i.i = load i64, ptr %i.t, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.x = phi i64 [ %.pre.i.i, %bb.d ], [ %i.u, %bb.c ] ; 2 uses
  %i.y = inttoptr i64 %i.x to ptr                 ; 4 uses
  %i.z = add i64 %i.x, %i.q
  store i64 %i.z, ptr %i.t, align 8
  %i.aa = load ptr, ptr %0, align 8               ; 5 uses
  %.not = icmp eq ptr %i.aa, null
  %.pre = load ptr, ptr %i.a, align 8             ; 2 uses
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit
  %.not1822 = icmp eq ptr %i.aa, %.pre
  br i1 %.not1822, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.024 = phi ptr [ %i.ad, %.lr.ph ], [ %i.y, %.preheader ] ; 2 uses
  %.01623 = phi ptr [ %i.ac, %.lr.ph ], [ %i.aa, %.preheader ] ; 2 uses
  %i.ab = load i32, ptr %.01623, align 4
  store i32 %i.ab, ptr %.024, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %.01623, i64 4 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.024, i64 4
  %i.ae = load ptr, ptr %i.a, align 8
  %.not18 = icmp eq ptr %i.ac, %i.ae
  br i1 %.not18, label %.loopexit.loopexit, label %.lr.ph, !llvm.loop !1157

.loopexit.loopexit:                               ; preds = %.lr.ph
  %.pre25 = load ptr, ptr %0, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit
  %i.af = phi ptr [ %.pre25, %.loopexit.loopexit ], [ %i.aa, %.preheader ], [ null, %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit ]
  %i.ag = phi ptr [ %i.ac, %.loopexit.loopexit ], [ %i.aa, %.preheader ], [ %.pre, %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit ]
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds i8, ptr %i.y, i64 %i.aj
  store ptr %i.ak, ptr %i.a, align 8
  store ptr %i.y, ptr %0, align 8
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.sroa.speculated
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.al, ptr %i.am, align 8
  ret void
}

declare void @_ZN2v88internal4wasm16LiftoffAssembler14set_num_localsEj(ptr noundef nonnull align 8 dereferenceable(824), i32 noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal noundef range(i32 2, 7) i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE14DecodeLocalGetEPS8_NS1_10WasmOpcodeE(ptr noundef %0, i32 %1) #17 align 2 !guid !1159 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1               ; 2 uses
  %.not.i.i.i = icmp sgt i8 %i.d, -1
  br i1 %.not.i.i.i, label %bb.b, label %bb.c, !prof !963

bb.b:                                             ; preds = %bb.a
  %i.e = zext nneg i8 %i.d to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_15NoValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(1536) %0, ptr noundef nonnull %i.c) ; 4 uses
  %i.g = icmp ult i64 %i.f, 25769803776
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp samesign ugt i64 %i.f, 4294967295
  tail call void @llvm.assume(i1 %i.h)
  %i.i = lshr i64 %i.f, 32
  %i.j = trunc nuw nsw i64 %i.i to i32
  %i.k = add nuw nsw i32 %i.j, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.04.0.i.i = phi i64 [ %i.e, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %.sroa.5.0.i.i = phi i32 [ 2, %bb.b ], [ %i.k, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = and i64 %.sroa.04.0.i.i, 4294967295
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.n
  %.sroa.0.0.copyload.i = load i32, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8
  store i32 %.sroa.0.0.copyload.i, ptr %i.q, align 4
  %i.r = load ptr, ptr %i.p, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store ptr %i.s, ptr %i.p, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.u = load i8, ptr %i.t, align 8, !range !960, !noundef !961
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.e, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE18DecodeLocalGetImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit, !prof !963

bb.e:                                             ; preds = %bb.d
  %.sroa.04.0.extract.trunc.i = trunc i64 %.sroa.04.0.i.i to i32
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler8LocalGetEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS1_9ValueBaseIS6_EERKNS1_14IndexImmediateE(ptr noundef nonnull align 8 dereferenceable(1284) %i.w, i32 %.sroa.04.0.extract.trunc.i)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE18DecodeLocalGetImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE18DecodeLocalGetImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit: ; preds = %bb.d, %bb.e
  ret i32 %.sroa.5.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i32 2, 7) i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE14DecodeI32ConstEPS8_NS1_10WasmOpcodeE(ptr noundef %0, i32 %1) #0 align 2 !guid !1160 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1               ; 2 uses
  %.not.i.i.i = icmp sgt i8 %i.d, -1
  br i1 %.not.i.i.i, label %bb.b, label %bb.c, !prof !963

bb.b:                                             ; preds = %bb.a
  %i.e = zext nneg i8 %i.d to i32
  %i.f = shl nuw i32 %i.e, 25
  %i.g = ashr exact i32 %i.f, 25
  br label %_ZN2v88internal4wasm15ImmI32ImmediateC2INS1_7Decoder15NoValidationTagEEEPS4_PKhT_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIiNS2_15NoValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(1536) %0, ptr noundef nonnull %i.c) ; 4 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.h to i32
  %i.i = icmp ult i64 %i.h, 25769803776
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp samesign ugt i64 %i.h, 4294967295
  tail call void @llvm.assume(i1 %i.j)
  %i.k = lshr i64 %i.h, 32
  %i.l = trunc nuw nsw i64 %i.k to i32
  %i.m = add nuw nsw i32 %i.l, 1
  br label %_ZN2v88internal4wasm15ImmI32ImmediateC2INS1_7Decoder15NoValidationTagEEEPS4_PKhT_.exit

_ZN2v88internal4wasm15ImmI32ImmediateC2INS1_7Decoder15NoValidationTagEEEPS4_PKhT_.exit: ; preds = %bb.b, %bb.c
  %.sroa.04.0.i.i = phi i32 [ %i.g, %bb.b ], [ %.sroa.0.0.extract.trunc.i.i, %bb.c ]
  %.sroa.5.0.i.i = phi i32 [ 2, %bb.b ], [ %i.m, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8
  store i32 5648, ptr %i.o, align 4
  %i.p = load ptr, ptr %i.n, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store ptr %i.q, ptr %i.n, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.s = load i8, ptr %i.r, align 8, !range !960, !noundef !961
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.d, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE18DecodeI32ConstImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit, !prof !963

bb.d:                                             ; preds = %_ZN2v88internal4wasm15ImmI32ImmediateC2INS1_7Decoder15NoValidationTagEEEPS4_PKhT_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 -4
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, -1
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i32 %i.ab, 4
  br label %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit.i.i

_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit.i.i: ; preds = %bb.e, %bb.d
  %i.ae = phi i32 [ %i.ad, %bb.e ], [ 36, %bb.d ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = icmp eq ptr %i.w, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler8I32ConstEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS1_9ValueBaseIS6_EEi.exit, !prof !962

bb.f:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit.i.i
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(224) %i.u)
  %.pre.i.i.i = load ptr, ptr %i.v, align 8
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler8I32ConstEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS1_9ValueBaseIS6_EEi.exit

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler8I32ConstEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS1_9ValueBaseIS6_EEi.exit: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit.i.i, %bb.f
  %i.ai = phi ptr [ %.pre.i.i.i, %bb.f ], [ %i.w, %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit.i.i ] ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store ptr %i.aj, ptr %i.v, align 8
  store i8 2, ptr %i.ai, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
end_hunk_1
begin_hunk_2_@_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE:bb.a
  %i.c = zext nneg i8 %2 to i32
  %i.d = shl nuw i32 1, %i.c
  %i.e = load i32, ptr %i.b, align 8
  %i.f = or i32 %i.e, %i.d
  store i32 %i.f, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.h = zext i8 %2 to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 4
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 -4
  %i.r = load i32, ptr %i.q, align 4              ; 2 uses
  %i.s = icmp sgt i32 %i.r, -1
  tail call void @llvm.assume(i1 %i.s)
  br label %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit

_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit: ; preds = %bb.a, %bb.b
  %i.t = phi i32 [ %i.r, %bb.b ], [ 32, %bb.a ]   ; 2 uses
  %i.u = add i8 %1, -9
  %i.v = icmp ult i8 %i.u, 2
  br i1 %i.v, label %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit2, label %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit

_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit: ; preds = %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit
  %i.w = zext i8 %1 to i64
  %i.x = getelementptr inbounds nuw i8, ptr @__const._ZN2v88internal4wasm15value_kind_sizeENS1_9ValueKindE.kElementSize, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1
  %i.z = sext i8 %i.y to i32
  %i.aa = add nsw i32 %i.t, %i.z
  br label %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit

_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit2: ; preds = %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit
  %i.ab = add nuw i32 %i.t, 15
  %i.ac = and i32 %i.ab, -8
  br label %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit

_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit, %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit2
  %.0.i = phi i32 [ %i.ac, %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit2 ], [ %i.aa, %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = icmp eq ptr %i.m, %i.ae
  br i1 %i.af, label %bb.c, label %_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE12emplace_backIJRNS3_9ValueKindERNS3_15LiftoffRegisterEiEEEvDpOT_.exit, !prof !962

bb.c:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(224) %i.a)
  %.pre.i = load ptr, ptr %i.l, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE12emplace_backIJRNS3_9ValueKindERNS3_15LiftoffRegisterEiEEEvDpOT_.exit

_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE12emplace_backIJRNS3_9ValueKindERNS3_15LiftoffRegisterEiEEEvDpOT_.exit: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit, %bb.c
  %i.ag = phi ptr [ %.pre.i, %bb.c ], [ %i.m, %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit ] ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store ptr %i.ah, ptr %i.l, align 8
  store i8 1, ptr %i.ag, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  store i8 %1, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store i8 %2, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i32 %.0.i, ptr %i.ak, align 4
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm7liftoff13LoadFromStackEPNS1_16LiftoffAssemblerENS1_15LiftoffRegisterENS0_7OperandENS1_9ValueKindE(ptr noundef %0, i8 %1, i64 %2, ptr %3, i8 noundef zeroext %4) local_unnamed_addr #4 comdat !guid !1180 {
bb.a:
  switch i8 %4, label %bb.n [
    i8 7, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 10, label %bb.d
    i8 9, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.h
    i8 5, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.a)
  tail call void @_ZN2v88internal9Assembler4movwENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %1, i64 %2, ptr %3) #24
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit

bb.c:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.b)
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %1, i64 %2, ptr %3, i32 noundef 4) #24
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.c = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.c)
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %1, i64 %2, ptr %3, i32 noundef 8) #24
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit

bb.e:                                             ; preds = %bb.a
  %i.d = add nsw i8 %1, -16                       ; 2 uses
  %i.e = icmp slt i8 %1, 32
  tail call void @llvm.assume(i1 %i.e)
  %i.f = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.g = and i32 %i.f, 32
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal9Assembler3vssEhNS0_11XMMRegisterES2_NS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 16, i8 %i.d, i8 0, i64 %2, ptr %3) #24
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal9Assembler5movssENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %i.d, i64 %2, ptr %3) #24
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit

bb.h:                                             ; preds = %bb.a
  %i.h = add nsw i8 %1, -16                       ; 2 uses
  %i.i = icmp slt i8 %1, 32
  tail call void @llvm.assume(i1 %i.i)
  %i.j = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.k = and i32 %i.j, 32
  %.not.i.i28 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i28, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal9Assembler6vinstrEhNS0_11XMMRegisterES2_NS0_7OperandENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 16, i8 %i.h, i8 0, i64 %2, ptr %3, i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 5) #24
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit

bb.j:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal9Assembler5movsdENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %i.h, i64 %2, ptr %3) #24
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit

bb.k:                                             ; preds = %bb.a
  %i.l = add nsw i8 %1, -16                       ; 2 uses
  %i.m = icmp slt i8 %1, 32
  tail call void @llvm.assume(i1 %i.m)
  %i.n = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.o = and i32 %i.n, 32
  %.not.i.i29 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i29, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN2v88internal9Assembler7vmovdquENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %i.l, i64 %2, ptr %3) #24
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit

bb.m:                                             ; preds = %bb.k
  tail call void @_ZN2v88internal9Assembler6movupsENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %i.l, i64 %2, ptr %3) #24
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit

bb.n:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27) #27
  unreachable

_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit: ; preds = %bb.m, %bb.l, %bb.j, %bb.i, %bb.g, %bb.f, %bb.d, %bb.c, %bb.b
  ret void
}

declare void @_ZN2v88internal9Assembler4movwENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408), i8, i64, ptr) local_unnamed_addr #2

declare void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408), i8, i64, ptr, i32 noundef) local_unnamed_addr #2

declare void @_ZN2v88internal9Assembler5movssENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408), i8, i64, ptr) local_unnamed_addr #2

declare void @_ZN2v88internal9Assembler3vssEhNS0_11XMMRegisterES2_NS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408), i8 noundef zeroext, i8, i8, i64, ptr) local_unnamed_addr #2

declare void @_ZN2v88internal9Assembler5movsdENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408), i8, i64, ptr) local_unnamed_addr #2

declare void @_ZN2v88internal9Assembler6vinstrEhNS0_11XMMRegisterES2_NS0_7OperandENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(408), i8 noundef zeroext, i8, i8, i64, ptr, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN2v88internal9Assembler7vmovdquENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408), i8, i64, ptr) local_unnamed_addr #2

declare void @_ZN2v88internal9Assembler6movupsENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408), i8, i64, ptr) local_unnamed_addr #2

declare void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408), i8, i8, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #12 comdat align 2 !guid !1181 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef %1) local_unnamed_addr #12 comdat align 2 !guid !1183 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 12
  %i.k = shl nsw i64 %i.j, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.k)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 2 uses
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = load ptr, ptr %0, align 8                ; 3 uses
  %i.o = icmp ult i64 %spec.select.i.i, 1152921504606846976
  br i1 %i.o, label %bb.c, label %bb.b, !prof !963

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.p = shl nuw i64 12, %i.m
  %i.q = add nuw i64 %i.p, 4
  %i.r = and i64 %i.q, -8                         ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE22AllocateDynamicStorageEm.exit, !prof !962

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.n, i64 noundef %i.r) #24
  %.pre.i.i.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE22AllocateDynamicStorageEm.exit

_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE22AllocateDynamicStorageEm.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i.i.i, %bb.d ], [ %i.v, %bb.c ] ; 3 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  %i.ab = icmp eq i64 %i.y, 0
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE22AllocateDynamicStorageEm.exit
  tail call void @_ZN2v84base8FatalOOMENS0_7OOMTypeEPKc(i32 noundef 1, ptr noundef nonnull @.str.32) #27
  unreachable

bb.f:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE22AllocateDynamicStorageEm.exit
  %i.ac = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.ad = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZSt18uninitialized_moveIPN2v88internal4wasm15LiftoffVarStateES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %i.z, %bb.f ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %i.ac, %bb.f ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.08.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.04.07.i.i.i.i, i64 12, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 12 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 12
  %i.ah = icmp eq ptr %i.af, %i.ad
  br i1 %i.ah, label %_ZSt18uninitialized_moveIPN2v88internal4wasm15LiftoffVarStateES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1182

_ZSt18uninitialized_moveIPN2v88internal4wasm15LiftoffVarStateES4_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i, %bb.f
  %i.ai = ptrtoint ptr %i.b to i64
  %i.aj = sub i64 %i.ai, %i.h
  %i.ak = shl nuw i64 1, %i.m
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(224) %0)
  store ptr %i.z, ptr %i.c, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aj
  store ptr %i.al, ptr %i.a, align 8
  %i.am = getelementptr inbounds nuw [12 x i8], ptr %i.z, i64 %i.ak
  store ptr %i.am, ptr %i.e, align 8
  ret void
}

declare void @_ZN2v88internal9Assembler5pushqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408), i8) local_unnamed_addr #2

declare void @_ZN2v88internal9Assembler8repstoslEv(ptr noundef nonnull align 8 dereferenceable(408)) local_unnamed_addr #2

declare void @_ZN2v88internal9Assembler4popqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408), i8) local_unnamed_addr #2

declare void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408), i64, ptr, i64, i32 noundef) local_unnamed_addr #2

declare void @_ZN2v88internal9Assembler8emit_leaENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408), i8, i64, ptr, i32 noundef) local_unnamed_addr #2

declare preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler16SpillOneRegisterENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824), i32) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #15

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { i64, ptr } @_ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE(ptr noundef %0, i8 %1, i8 %2, i64 noundef %3, i8 noundef signext %4) local_unnamed_addr #4 comdat !guid !1184 {
bb.a:
  %5 = alloca %"class.v8::internal::Operand", align 8 ; 13 uses
  %.not.i.i = icmp ult i64 %3, 2147483648
  br i1 %.not.i.i, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.a = trunc nuw nsw i64 %3 to i32              ; 2 uses
  %i.b = icmp eq i8 %2, -1
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 8 uses
  %scevgep83 = getelementptr inbounds nuw i8, ptr %5, i64 3 ; 2 uses
  br i1 %i.b, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %5, align 8
  store i64 1, ptr %i.e, align 8
  switch i8 %1, label %bb.e [
    i8 4, label %bb.d
    i8 12, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.f = and i8 %1, 7
  %i.g = or disjoint i8 %i.f, 32
  store i8 %i.g, ptr %scevgep83, align 1
  %i.h = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.h)
  %i.i = lshr i8 %1, 3
  store i64 2, ptr %i.e, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.fca.1.load85 = phi ptr [ inttoptr (i64 1 to ptr), %bb.c ], [ inttoptr (i64 2 to ptr), %bb.d ]
  %i.j = phi i64 [ 1, %bb.c ], [ 2, %bb.d ]       ; 3 uses
  %i.k = phi i8 [ 0, %bb.c ], [ %i.i, %bb.d ]     ; 3 uses
  %i.l = icmp eq i64 %3, 0
  br i1 %i.l, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  switch i8 %1, label %bb.g [
    i8 5, label %.thread
    i8 13, label %.thread
  ]

bb.g:                                             ; preds = %bb.f
  %i.m = and i8 %1, 7
  store i8 %i.m, ptr %i.d, align 2
  %i.n = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.n)
  %i.o = lshr i8 %1, 3
  %i.p = or i8 %i.k, %i.o
  store i8 %i.p, ptr %i.c, align 1
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

bb.h:                                             ; preds = %bb.e
  %i.q = icmp samesign ult i64 %3, 128
  br i1 %i.q, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.f, %bb.f, %bb.h
  %i.r = and i8 %1, 7
  %i.s = or disjoint i8 %i.r, 64
  store i8 %i.s, ptr %i.d, align 2
  %i.t = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.t)
  %i.u = lshr i8 %1, 3
  %i.v = or i8 %i.k, %i.u
  store i8 %i.v, ptr %i.c, align 1
  %i.w = trunc nuw nsw i64 %3 to i8
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.j
  store i8 %i.w, ptr %i.x, align 1
  %i.y = add nuw nsw i64 %i.j, 1
  %i.z = inttoptr i64 %i.y to ptr
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

bb.i:                                             ; preds = %bb.h
  %i.aa = and i8 %1, 7
  %i.ab = or disjoint i8 %i.aa, -128
  store i8 %i.ab, ptr %i.d, align 2
  %i.ac = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = lshr i8 %1, 3
  %i.ae = or i8 %i.k, %i.ad
  store i8 %i.ae, ptr %i.c, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.j
  store i32 %i.a, ptr %i.af, align 1
  %i.ag = load i64, ptr %i.e, align 8
  %i.ah = add i64 %i.ag, 4
  %i.ai = inttoptr i64 %i.ah to ptr
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

bb.j:                                             ; preds = %bb.b
  store i64 0, ptr %5, align 8
  %i.aj = shl i8 %4, 6
  %i.ak = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = shl nuw nsw i8 %2, 3
  %i.am = and i8 %i.al, 56
  %i.an = or disjoint i8 %i.aj, %i.am
  %i.ao = and i8 %1, 7
  %i.ap = or disjoint i8 %i.an, %i.ao
  store i8 %i.ap, ptr %scevgep83, align 1
  %i.aq = lshr i8 %2, 2
  %i.ar = and i8 %i.aq, 2
  %i.as = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.as)
  %i.at = lshr i8 %1, 3
  %i.au = or disjoint i8 %i.ar, %i.at             ; 3 uses
  %i.av = icmp eq i64 %3, 0
  br i1 %i.av, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  switch i8 %1, label %bb.l [
    i8 5, label %.thread81
    i8 13, label %.thread81
  ]

bb.l:                                             ; preds = %bb.k
  store i8 4, ptr %i.d, align 2
  store i8 %i.au, ptr %i.c, align 1
end_hunk_2
