Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/type-assertions-phase?download=true
inline.NumInlined: 47242
inline.NumDeleted: 15222
loop-unroll.NumCompletelyUnrolled: 210
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 222
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE15ReduceOperationILNS2_6OpcodeE45ENS2_21UniformReducerAdapterIS3_SG_E35ReduceSimd128LaneMemoryContinuationEJNS2_7OpIndexESN_SN_NS2_19Simd128LaneMemoryOp4ModeENS2_6LoadOp4KindENSO_8LaneKindEhiEEESN_DpT1_:bb.a
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = tail call { ptr, i64 } @_ZNK2v88internal8compiler10turboshaft9Operation11outputs_repEv(ptr noundef nonnull align 4 dereferenceable(4) %i.n)
  %i.p = extractvalue { ptr, i64 } %i.o, 1
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.q = load ptr, ptr %i.g, align 8, !nonnull !87, !align !88
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = add i64 %i.t, %i.l
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = tail call { ptr, i64 } @_ZNK2v88internal8compiler10turboshaft9Operation11outputs_repEv(ptr noundef nonnull align 4 dereferenceable(4) %i.v) ; 2 uses
  %i.x = extractvalue { ptr, i64 } %i.w, 0
  %i.y = extractvalue { ptr, i64 } %i.w, 1
  %i.z = load ptr, ptr %i.g, align 8, !nonnull !87, !align !88
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 160
  %i.ab = load ptr, ptr %i.aa, align 8
  call void @_ZN2v88internal8compiler10turboshaft5Typer21TypeForRepresentationENS_4base6VectorIKNS2_22RegisterRepresentationEEEPNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8 %9, ptr %i.x, i64 %i.y, ptr noundef %i.ab)
  call void @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE7SetTypeENS2_7OpIndexERKNS2_4TypeEb(ptr noundef nonnull align 8 dereferenceable(992) %0, i32 %i.a, ptr noundef nonnull align 8 dereferenceable(24) %9, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerES3_EEEEEE4EmitINS2_19Simd128LaneMemoryOpEJNS2_14ShadowyOpIndexESH_SH_NSG_4ModeENS2_6LoadOp4KindENSG_8LaneKindEhiEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, i32 %2, i32 %3, i1 noundef zeroext %4, i8 %5, i8 noundef zeroext %6, i8 noundef zeroext %7, i32 noundef %8) local_unnamed_addr #0 comdat align 2 !guid !2199 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !87, !align !88 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = sub i64 %i.e, %i.h                       ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = sub i64 %i.l, %i.e
  %i.n = icmp ult i64 %i.m, 17
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm3ENS2_19Simd128LaneMemoryOpEE3NewIJNS2_14ShadowyOpIndexES7_S7_NS4_4ModeENS2_6LoadOp4KindENS4_8LaneKindEhiEEERS4_PNS2_5GraphEDpT_.exit, !prof !86

bb.b:                                             ; preds = %bb.a
  %i.o = sub i64 %i.l, %i.h
  %i.p = lshr exact i64 %i.o, 3
  %i.q = and i64 %i.p, 4294967295
  %i.r = add nuw nsw i64 %i.q, 3
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.r)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre18 = ptrtoint ptr %.pre to i64
  %.pre19 = sub i64 %.pre10.i.i.i.i, %.pre18
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm3ENS2_19Simd128LaneMemoryOpEE3NewIJNS2_14ShadowyOpIndexES7_S7_NS4_4ModeENS2_6LoadOp4KindENS4_8LaneKindEhiEEERS4_PNS2_5GraphEDpT_.exit

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm3ENS2_19Simd128LaneMemoryOpEE3NewIJNS2_14ShadowyOpIndexES7_S7_NS4_4ModeENS2_6LoadOp4KindENS4_8LaneKindEhiEEERS4_PNS2_5GraphEDpT_.exit: ; preds = %bb.a, %bb.b
  %.pre-phi20 = phi i64 [ %i.i, %bb.a ], [ %.pre19, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 12 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.t, ptr %i.c, align 8
  %i.u = trunc i64 %.pre-phi20 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.pre-phi20, 4
  %i.y = and i64 %i.x, 268435455
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.y
  store i16 3, ptr %i.z, align 2
  %i.aa = load ptr, ptr %i.v, align 8
  %i.ab = add i32 %i.u, 24
  %i.ac = lshr i32 %i.ab, 4
  %i.ad = add nsw i32 %i.ac, -1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ae
  store i16 3, ptr %i.af, align 2
  %i.ag = zext i1 %4 to i8
  store i8 45, ptr %i.s, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 3, ptr %i.ai, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 %1, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  store i32 %2, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 20 ; 2 uses
  store i32 %3, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i8 %i.ag, ptr %i.am, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  store i8 %5, ptr %i.an, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  store i8 %6, ptr %i.ao, align 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 7
  store i8 %7, ptr %i.ap, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %8, ptr %i.aq, align 4
  %i.ar = load ptr, ptr %i.f, align 8
  %i.as = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.at = zext i32 %1 to i64
  %i.au = add i64 %i.as, %i.at
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.ax, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, label %bb.c, !prof !86

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm3ENS2_19Simd128LaneMemoryOpEE3NewIJNS2_14ShadowyOpIndexES7_S7_NS4_4ModeENS2_6LoadOp4KindENS4_8LaneKindEhiEEERS4_PNS2_5GraphEDpT_.exit
  %i.ay = add nuw i8 %i.ax, 1
  store i8 %i.ay, ptr %i.aw, align 1
  %.pre.i = load ptr, ptr %i.f, align 8
  %.pre13.i = ptrtoint ptr %.pre.i to i64
  %.sroa.01.0.copyload.1.i.pre = load i32, ptr %i.ak, align 4
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i: ; preds = %bb.c, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm3ENS2_19Simd128LaneMemoryOpEE3NewIJNS2_14ShadowyOpIndexES7_S7_NS4_4ModeENS2_6LoadOp4KindENS4_8LaneKindEhiEEERS4_PNS2_5GraphEDpT_.exit
  %.sroa.01.0.copyload.1.i = phi i32 [ %2, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm3ENS2_19Simd128LaneMemoryOpEE3NewIJNS2_14ShadowyOpIndexES7_S7_NS4_4ModeENS2_6LoadOp4KindENS4_8LaneKindEhiEEERS4_PNS2_5GraphEDpT_.exit ], [ %.sroa.01.0.copyload.1.i.pre, %bb.c ]
  %.pre-phi.i = phi i64 [ %i.as, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm3ENS2_19Simd128LaneMemoryOpEE3NewIJNS2_14ShadowyOpIndexES7_S7_NS4_4ModeENS2_6LoadOp4KindENS4_8LaneKindEhiEEERS4_PNS2_5GraphEDpT_.exit ], [ %.pre13.i, %bb.c ] ; 2 uses
  %i.az = zext i32 %.sroa.01.0.copyload.1.i to i64
  %i.ba = add i64 %.pre-phi.i, %i.az
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1             ; 2 uses
  %.not.i.1.i = icmp eq i8 %i.bd, -1
  br i1 %.not.i.1.i, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.1.i, label %bb.d, !prof !86

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %i.be = add nuw i8 %i.bd, 1
  store i8 %i.be, ptr %i.bc, align 1
  %.pre12.i = load ptr, ptr %i.f, align 8
  %.pre14.i = ptrtoint ptr %.pre12.i to i64
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.1.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.1.i: ; preds = %bb.d, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %.pre-phi15.i = phi i64 [ %.pre14.i, %bb.d ], [ %.pre-phi.i, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i ]
  %.sroa.01.0.copyload.2.i = load i32, ptr %i.al, align 4
  %i.bf = zext i32 %.sroa.01.0.copyload.2.i to i64
  %i.bg = add i64 %.pre-phi15.i, %i.bf
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1             ; 2 uses
  %.not.i.2.i = icmp eq i8 %i.bj, -1
  br i1 %.not.i.2.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_19Simd128LaneMemoryOpEEEvRKT_.exit, label %bb.e, !prof !86

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.1.i
  %i.bk = add nuw i8 %i.bj, 1
  store i8 %i.bk, ptr %i.bi, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_19Simd128LaneMemoryOpEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_19Simd128LaneMemoryOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.1.i, %bb.e
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 2020
  %.sroa.0.0.copyload.i = load i32, ptr %i.bl, align 4
  %i.bm = load ptr, ptr %i.a, align 8, !nonnull !87, !align !88 ; 4 uses
  %i.bn = lshr i64 %i.i, 4
  %i.bo = and i64 %i.bn, 268435455                ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 216
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 208 ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8            ; 2 uses
  %i.bt = ptrtoint ptr %i.bq to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = ashr exact i64 %i.bv, 2
  %.not.i.i15 = icmp ugt i64 %i.bw, %i.bo
  br i1 %.not.i.i15, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.f, !prof !89

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_19Simd128LaneMemoryOpEEEvRKT_.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 200 ; 2 uses
  %i.by = lshr i64 %i.bo, 1
  %i.bz = add nuw nsw i64 %i.bo, 32
  %i.ca = add nuw nsw i64 %i.bz, %i.by
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, i64 noundef %i.ca)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bm, i64 224
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = load ptr, ptr %i.br, align 8
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = ashr exact i64 %i.cg, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, i64 noundef %i.ch)
  %.pre.i.i = load ptr, ptr %i.br, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_19Simd128LaneMemoryOpEEEvRKT_.exit, %bb.f
  %i.ci = phi ptr [ %.pre.i.i, %bb.f ], [ %i.bs, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_19Simd128LaneMemoryOpEEEvRKT_.exit ]
  %i.cj = trunc i64 %i.i to i32
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.bo
  store i32 %.sroa.0.0.copyload.i, ptr %i.ck, align 4
  ret i32 %i.cj
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerES3_S4_S6_EEEEEEEEEEEE4FindINS2_19Simd128LaneMemoryOpEEEPNSI_5EntryERKT_Pm(ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !guid !2205 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 5
  %3 = load <2 x i8>, ptr %i.a, align 4
  %4 = and <2 x i8> %3, <i8 1, i8 4>
  %.scalar = bitcast <2 x i8> %4 to i16
  %5 = icmp ne i16 %.scalar, 1                    ; 2 uses
  %i.c = tail call noundef i64 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerES3_S4_S6_EEEEEEEEEEEE11ComputeHashILb0ENS2_19Simd128LaneMemoryOpEEEmRKT0_b(ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i1 noundef zeroext %5) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = and i64 %i.e, %i.c                       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.f ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds i8, ptr %0, i64 -8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1092
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 6
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.thread, %bb.a
  %.lcssa = phi ptr [ %i.i, %bb.a ], [ %i.bp, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.thread ] ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  store i64 %i.c, ptr %2, align 8
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.thread
  %i.u = phi i64 [ %i.k, %.lr.ph ], [ %i.br, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.thread ]
  %i.v = phi ptr [ %i.i, %.lr.ph ], [ %i.bp, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.thread ] ; 3 uses
  %.02733 = phi i64 [ %i.f, %.lr.ph ], [ %i.bo, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.thread ]
  %i.w = icmp eq i64 %i.u, %i.c
  br i1 %i.w, label %bb.d, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.m, align 8, !nonnull !87, !align !88
  %.sroa.0.0.copyload = load i32, ptr %i.v, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = zext i32 %.sroa.0.0.copyload to i64
  %i.ac = add i64 %i.aa, %i.ab
  %i.ad = inttoptr i64 %i.ac to ptr               ; 9 uses
  %i.ae = load i8, ptr %i.ad, align 4
  %i.af = icmp eq i8 %i.ae, 45
  br i1 %i.af, label %bb.e, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.thread

bb.e:                                             ; preds = %bb.d
  br i1 %5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = load i32, ptr %i.n, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = icmp eq i32 %i.ag, %i.ai
  br i1 %i.aj, label %bb.g, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.thread

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0810.i.i.i.i.i.i.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i32, ptr %i.o, align 4
  %i.ak = load i32, ptr %.0810.i.i.i.i.i.i.i.ptr.i.i, align 4
  %i.al = icmp eq i32 %i.ak, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %i.al, label %.lr.ph.i.i.i.i.i.i.i.1.i.i, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.thread

.lr.ph.i.i.i.i.i.i.i.1.i.i:                       ; preds = %bb.g
  %.0810.i.i.i.i.i.i.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.1.i.i = load i32, ptr %i.p, align 4
  %i.am = load i32, ptr %.0810.i.i.i.i.i.i.i.ptr.1.i.i, align 4
  %i.an = icmp eq i32 %i.am, %.sroa.0.0.copyload.i.i.i.i.i.i.i.1.i.i
  br i1 %i.an, label %.lr.ph.i.i.i.i.i.i.i.2.i.i, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.thread

.lr.ph.i.i.i.i.i.i.i.2.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.1.i.i
  %.0810.i.i.i.i.i.i.i.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.2.i.i = load i32, ptr %i.q, align 4
  %i.ao = load i32, ptr %.0810.i.i.i.i.i.i.i.ptr.2.i.i, align 4
  %i.ap = icmp eq i32 %i.ao, %.sroa.0.0.copyload.i.i.i.i.i.i.i.2.i.i
  br i1 %i.ap, label %bb.h, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.thread

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.2.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 7
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.at = load i32, ptr %i.as, align 4, !noalias !2206
  %i.au = load i8, ptr %i.ar, align 1, !noalias !2206
  %i.av = load i8, ptr %i.aq, align 4, !range !92, !noalias !2206, !noundef !87
  %i.aw = load i32, ptr %i.s, align 4, !noalias !2207
  %i.ax = load i8, ptr %i.r, align 1, !noalias !2207
  %i.ay = load i8, ptr %i.a, align 4, !range !92, !noalias !2207, !noundef !87
  %i.az = icmp eq i8 %i.av, %i.ay
  br i1 %i.az, label %bb.i, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ba = load i8, ptr %i.b, align 1, !noalias !2207
  %i.bb = load i8, ptr %i.t, align 2, !noalias !2207
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ad, i64 5
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !2206
  %i.be = getelementptr inbounds nuw i8, ptr %i.ad, i64 6
  %i.bf = load i8, ptr %i.be, align 2, !noalias !2206
  %i.bg = xor i8 %i.bd, %i.ba
  %i.bh = and i8 %i.bg, 127
  %i.bi = icmp eq i8 %i.bh, 0
  %i.bj = icmp eq i8 %i.bf, %i.bb
  %or.cond.i.i = select i1 %i.bi, i1 %i.bj, i1 false
  br i1 %or.cond.i.i, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.thread

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit: ; preds = %bb.i
  %i.bk = icmp eq i8 %i.au, %i.ax
  %i.bl = icmp eq i32 %i.at, %i.aw
  %i.bm = select i1 %i.bk, i1 %i.bl, i1 false
  br i1 %i.bm, label %.loopexit, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.thread

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.thread: ; preds = %bb.d, %bb.f, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit, %bb.h, %bb.i, %.lr.ph.i.i.i.i.i.i.i.2.i.i, %.lr.ph.i.i.i.i.i.i.i.1.i.i, %bb.g, %bb.c
  %i.bn = add i64 %.02733, 1
  %i.bo = and i64 %i.e, %i.bn                     ; 2 uses
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.bo ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load i64, ptr %i.bq, align 8            ; 2 uses
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %._crit_edge, label %bb.c, !llvm.loop !2204

.loopexit:                                        ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit, %._crit_edge, %bb.b
  %i.bt = phi ptr [ %.lcssa, %bb.b ], [ %.lcssa, %._crit_edge ], [ %i.v, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit ]
  ret ptr %i.bt
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerES3_S4_S6_EEEEEEEEEEEE11ComputeHashILb0ENS2_19Simd128LaneMemoryOpEEEmRKT0_b(ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 !guid !2210 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 4, !noalias !2211 ; 2 uses
  %i.g = load i8, ptr %i.d, align 1, !noalias !2211
  %i.h = load i8, ptr %i.c, align 2, !noalias !2211
  %i.i = load i8, ptr %i.b, align 1, !noalias !2211 ; 4 uses
  %i.j = load i8, ptr %i.a, align 4, !range !92, !noalias !2211, !noundef !87
  %.0.i.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %.0.i.i.ptr.i.i, align 4
  %i.k = lshr i32 %.sroa.0.0.copyload.i.i.i.i, 4
  %i.l = zext nneg i32 %i.k to i64
  %.0.i.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i.1.i.i = load i32, ptr %.0.i.i.ptr.1.i.i, align 4
  %i.m = lshr i32 %.sroa.0.0.copyload.i.i.1.i.i, 4
  %i.n = zext nneg i32 %i.m to i64
  %i.o = mul nuw nsw i64 %i.l, 35651567
  %i.p = add nuw nsw i64 %i.o, -4175292557550144145 ; 2 uses
  %i.q = lshr i64 %i.p, 24
  %i.r = xor i64 %i.q, %i.p
  %i.s = mul i64 %i.r, 265                        ; 2 uses
  %i.t = lshr i64 %i.s, 14
  %i.u = xor i64 %i.t, %i.s
  %i.v = mul i64 %i.u, 21                         ; 2 uses
  %i.w = lshr i64 %i.v, 28
  %i.x = xor i64 %i.w, %i.v
  %i.y = mul i64 %i.x, 2147483649
  %i.z = mul nuw nsw i64 %i.n, 17
  %i.aa = add i64 %i.y, %i.z                      ; 2 uses
  %.0.i.i.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i.i.2.i.i = load i32, ptr %.0.i.i.ptr.2.i.i, align 4
  %i.ab = lshr i32 %.sroa.0.0.copyload.i.i.2.i.i, 4
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = xor i64 %i.aa, -1
  %i.ae = shl i64 %i.aa, 21
  %i.af = add i64 %i.ae, %i.ad                    ; 2 uses
  %i.ag = lshr i64 %i.af, 24
  %i.ah = xor i64 %i.ag, %i.af
  %i.ai = mul i64 %i.ah, 265                      ; 2 uses
  %i.aj = lshr i64 %i.ai, 14
  %i.ak = xor i64 %i.aj, %i.ai
  %i.al = mul i64 %i.ak, 21                       ; 2 uses
  %i.am = lshr i64 %i.al, 28
  %i.an = xor i64 %i.am, %i.al
  %i.ao = mul i64 %i.an, 2147483649
  %i.ap = shl i32 %i.f, 15
  %i.aq = xor i32 %i.f, -1
  %i.ar = add i32 %i.ap, %i.aq                    ; 2 uses
  %i.as = lshr i32 %i.ar, 12
  %i.at = xor i32 %i.as, %i.ar
  %i.au = mul i32 %i.at, 5                        ; 2 uses
  %i.av = lshr i32 %i.au, 4
  %i.aw = xor i32 %i.av, %i.au
  %i.ax = mul i32 %i.aw, 2057                     ; 2 uses
  %i.ay = lshr i32 %i.ax, 16
  %i.az = xor i32 %i.ay, %i.ax
  %i.ba = zext i32 %i.az to i64
  %i.bb = mul nuw nsw i64 %i.ba, 17
  %i.bc = zext i8 %i.g to i64
  %i.bd = add nuw nsw i64 %i.bb, %i.bc
  %i.be = mul nuw nsw i64 %i.bd, 17
  %i.bf = zext i8 %i.h to i64
  %i.bg = add nuw nsw i64 %i.be, %i.bf
  %i.bh = mul nuw nsw i64 %i.bg, 17
  %i.bi = lshr i8 %i.i, 2
  %i.bj = and i8 %i.bi, 12
  %i.bk = and i8 %i.i, 3
  %i.bl = or disjoint i8 %i.bj, %i.bk
  %i.bm = shl i8 %i.i, 2
  %i.bn = and i8 %i.bm, 16
  %i.bo = or disjoint i8 %i.bl, %i.bn
  %i.bp = lshr i8 %i.i, 1
  %i.bq = and i8 %i.bp, 32
  %i.br = or disjoint i8 %i.bo, %i.bq
  %i.bs = zext nneg i8 %i.br to i32               ; 2 uses
  %i.bt = shl nuw nsw i32 %i.bs, 15
  %i.bu = xor i32 %i.bs, -1
  %i.bv = add nsw i32 %i.bt, %i.bu                ; 2 uses
  %i.bw = lshr i32 %i.bv, 12
  %i.bx = xor i32 %i.bw, %i.bv
  %i.by = mul nsw i32 %i.bx, 5                    ; 2 uses
  %i.bz = lshr i32 %i.by, 4
  %i.ca = xor i32 %i.bz, %i.by
  %i.cb = mul i32 %i.ca, 2057                     ; 2 uses
  %i.cc = lshr i32 %i.cb, 16
  %i.cd = xor i32 %i.cc, %i.cb
  %i.ce = zext i32 %i.cd to i64
  %i.cf = add nuw nsw i64 %i.bh, %i.ce
  %i.cg = mul nuw nsw i64 %i.cf, 17
  %i.ch = zext nneg i8 %i.j to i64
  %i.ci = add nuw nsw i64 %i.ac, %i.ch
  %reass.add.i = add nuw nsw i64 %i.ci, %i.cg
  %reass.mul.i = mul nuw nsw i64 %reass.add.i, 17
  %i.cj = add i64 %i.ao, %reass.mul.i
  %i.ck = mul i64 %i.cj, 17
  %i.cl = add i64 %i.ck, 45                       ; 2 uses
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1092
  %i.cn = load i32, ptr %i.cm, align 4            ; 2 uses
  %i.co = xor i32 %i.cn, -1
  %i.cp = shl i32 %i.cn, 15
  %i.cq = add i32 %i.cp, %i.co                    ; 2 uses
  %i.cr = lshr i32 %i.cq, 12
  %i.cs = xor i32 %i.cr, %i.cq
  %i.ct = mul i32 %i.cs, 5                        ; 2 uses
  %i.cu = lshr i32 %i.ct, 4
  %i.cv = xor i32 %i.cu, %i.ct
  %i.cw = mul i32 %i.cv, 2057                     ; 2 uses
  %i.cx = lshr i32 %i.cw, 16
  %i.cy = xor i32 %i.cx, %i.cw
  %i.cz = zext i32 %i.cy to i64
  %i.da = mul i64 %i.cl, 17
  %i.db = add i64 %i.da, %i.cz
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.db, %bb.b ], [ %i.cl, %bb.a ]
end_hunk_0
