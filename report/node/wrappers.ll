Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/wrappers?download=true
inline.NumInlined: 7185
inline.NumDeleted: 2643
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEm:bb.a
  %i.j = sub nuw nsw i64 64, %i.i                 ; 2 uses
  %i.k = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.k, label %bb.b, label %bb.e, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 4, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #21 ; 6 uses
  %i.p = load ptr, ptr %0, align 8                ; 5 uses
  %i.q = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.s = ptrtoaddr ptr %i.q to i64
  %i.t = ptrtoaddr ptr %i.p to i64
  %i.u = add i64 %i.s, -4
  %i.v = sub i64 %i.u, %i.t                       ; 2 uses
  %i.w = lshr i64 %i.v, 2
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.x, 9223372036854775800      ; 3 uses
  %i.y = shl i64 %n.vec, 2                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.o, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.p, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.ab ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.p, i64 %i.ab ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4
  %wide.load13 = load <4 x i32>, ptr %i.ac, align 4
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load13, ptr %i.ad, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !210

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.af = load i32, ptr %.sroa.04.07.i.i.i.i, align 4
  store i32 %i.af, ptr %.08.i.i.i.i, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  %i.ai = icmp eq ptr %i.ag, %i.q
  br i1 %i.ai, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !211

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.aj = shl nuw i64 1, %i.j
  %i.ak = ptrtoint ptr %i.m to i64
  %i.al = sub i64 %i.ak, %i.f
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  store ptr %i.o, ptr %0, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.al
  store ptr %i.am, ptr %i.a, align 8
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.aj
  store ptr %i.an, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_11ParameterOpEJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, i8 %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 !guid !213 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !33, !align !34 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = sub i64 %i.e, %i.h                       ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = sub i64 %i.l, %i.e
  %i.n = icmp ult i64 %i.m, 17
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_11ParameterOpEE3NewIJiNS2_22RegisterRepresentationEPKcEEERS4_PNS2_5GraphEDpT_.exit, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.o = sub i64 %i.l, %i.h
  %i.p = lshr exact i64 %i.o, 3
  %i.q = and i64 %i.p, 4294967295
  %i.r = add nuw nsw i64 %i.q, 3
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.r)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre8 = ptrtoint ptr %.pre to i64
  %.pre9 = sub i64 %.pre10.i.i.i.i, %.pre8
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_11ParameterOpEE3NewIJiNS2_22RegisterRepresentationEPKcEEERS4_PNS2_5GraphEDpT_.exit

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_11ParameterOpEE3NewIJiNS2_22RegisterRepresentationEPKcEEERS4_PNS2_5GraphEDpT_.exit: ; preds = %bb.a, %bb.b
  %.pre-phi10 = phi i64 [ %i.i, %bb.a ], [ %.pre9, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.t, ptr %i.c, align 8
  %i.u = trunc i64 %.pre-phi10 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.pre-phi10, 4
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
  store i8 80, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 0, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %1, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i8 %2, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %3, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 660
  %.sroa.0.0.copyload.i = load i32, ptr %i.al, align 4
  %i.am = load ptr, ptr %i.a, align 8, !nonnull !33, !align !34 ; 4 uses
  %i.an = lshr i64 %i.i, 4
  %i.ao = and i64 %i.an, 268435455                ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 216
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 208 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 2
  %.not.i.i = icmp ugt i64 %i.aw, %i.ao
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.c, !prof !35

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_11ParameterOpEE3NewIJiNS2_22RegisterRepresentationEPKcEEERS4_PNS2_5GraphEDpT_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 200 ; 2 uses
  %i.ay = lshr i64 %i.ao, 1
  %i.az = add nuw nsw i64 %i.ao, 32
  %i.ba = add nuw nsw i64 %i.az, %i.ay
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 noundef %i.ba)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 224
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = load ptr, ptr %i.ar, align 8
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 noundef %i.bh)
  %.pre.i.i = load ptr, ptr %i.ar, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_11ParameterOpEE3NewIJiNS2_22RegisterRepresentationEPKcEEERS4_PNS2_5GraphEDpT_.exit, %bb.c
  %i.bi = phi ptr [ %.pre.i.i, %bb.c ], [ %i.as, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_11ParameterOpEE3NewIJiNS2_22RegisterRepresentationEPKcEEERS4_PNS2_5GraphEDpT_.exit ]
  %i.bj = trunc i64 %i.i to i32
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.ao
  store i32 %.sroa.0.0.copyload.i, ptr %i.bk, align 4
  ret i32 %i.bj
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, i32 %2, i8 %3, i8 %4, i8 %5, i32 noundef %6, i8 noundef zeroext %7) local_unnamed_addr #0 comdat align 2 !guid !214 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !33, !align !34 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = sub i64 %i.e, %i.h                       ; 3 uses
  %.not.i = icmp eq i32 %2, -1                    ; 3 uses
  %i.j = select i1 %.not.i, i64 2, i64 3          ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.n = sub i64 %i.m, %i.e
  %i.o = ashr exact i64 %i.n, 3
  %i.p = icmp ult i64 %i.o, %i.j
  br i1 %i.p, label %bb.b, label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.q = sub i64 %i.m, %i.h
  %i.r = lshr exact i64 %i.q, 3
  %i.s = and i64 %i.r, 4294967295
  %i.t = add nuw nsw i64 %i.s, %i.j
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.t)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre18 = ptrtoint ptr %.pre to i64
  %.pre19 = sub i64 %.pre10.i.i.i.i, %.pre18
  br label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i

_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i: ; preds = %bb.b, %bb.a
  %.pre-phi20 = phi i64 [ %.pre19, %bb.b ], [ %i.i, %bb.a ] ; 2 uses
  %i.u = phi ptr [ %.pre.i.i.i.i, %bb.b ], [ %i.d, %bb.a ] ; 12 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.j
  store ptr %i.v, ptr %i.c, align 8
  %i.w = trunc i64 %.pre-phi20 to i32
  %i.x = trunc nuw nsw i64 %i.j to i16            ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = lshr i64 %.pre-phi20, 4
  %i.ab = and i64 %i.aa, 268435455
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.ab
  store i16 %i.x, ptr %i.ac, align 2
  %i.ad = load ptr, ptr %i.y, align 8
  %.tr.i.i.i.i = trunc nuw nsw i64 %i.j to i32
  %i.ae = shl nuw nsw i32 %.tr.i.i.i.i, 3
  %i.af = add i32 %i.ae, %i.w
  %i.ag = lshr i32 %i.af, 4
  %i.ah = add nsw i32 %i.ag, -1
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.ai
  store i16 %i.x, ptr %i.aj, align 2
  store i8 77, ptr %i.u, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store i8 0, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.am = select i1 %.not.i, i16 1, i16 2         ; 2 uses
  store i16 %i.am, ptr %i.al, align 2
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i8 %3, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 5
  store i8 %4, ptr %i.ao, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 6
  store i8 %5, ptr %i.ap, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 7
  store i8 %7, ptr %i.aq, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 %6, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 12 ; 4 uses
  store i32 %1, ptr %i.as, align 4
  br i1 %.not.i, label %.lr.ph.i, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i32 %2, ptr %i.at, align 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i
  %8 = shl nuw nsw i16 %i.am, 2
  %.idx.i = zext nneg i16 %8 to i64               ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx.i
  %.pre12.i = load ptr, ptr %i.f, align 8         ; 3 uses
  %10 = add nsw i64 %.idx.i, -4                   ; 2 uses
  %11 = and i64 %10, 4
  %lcmp.mod.not.not = icmp eq i64 %11, 0
  br i1 %lcmp.mod.not.not, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %.lr.ph.i
  %.sroa.01.0.copyload.i.prol = load i32, ptr %i.as, align 4
  %i.au = ptrtoint ptr %.pre12.i to i64
  %i.av = zext i32 %.sroa.01.0.copyload.i.prol to i64
  %i.aw = add i64 %i.av, %i.au
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1             ; 2 uses
  %.not.i.i.prol = icmp eq i8 %i.az, -1
  br i1 %.not.i.i.prol, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol, label %bb.d, !prof !31

bb.d:                                             ; preds = %.prol.preheader
  %i.ba = add nuw i8 %i.az, 1
  store i8 %i.ba, ptr %i.ay, align 1
  %.pre.i.prol = load ptr, ptr %i.f, align 8
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol: ; preds = %bb.d, %.prol.preheader
  %12 = phi ptr [ %.pre12.i, %.prol.preheader ], [ %.pre.i.prol, %bb.d ]
  %13 = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol, %.lr.ph.i
  %.unr = phi ptr [ %.pre12.i, %.lr.ph.i ], [ %12, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol ]
  %.011.i.unr = phi ptr [ %i.as, %.lr.ph.i ], [ %13, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol ]
  %14 = icmp eq i64 %10, 0
  br i1 %14, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_6LoadOpEEEvRKT_.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1
  %15 = phi ptr [ %25, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1 ], [ %.unr, %.prol.loopexit ] ; 2 uses
  %.011.i = phi ptr [ %26, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1 ], [ %.011.i.unr, %.prol.loopexit ] ; 3 uses
  %.sroa.01.0.copyload.i = load i32, ptr %.011.i, align 4
  %16 = ptrtoint ptr %15 to i64
  %17 = zext i32 %.sroa.01.0.copyload.i to i64
  %18 = add i64 %17, %16
  %19 = inttoptr i64 %18 to ptr
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 1 ; 2 uses
  %21 = load i8, ptr %20, align 1                 ; 2 uses
  %.not.i.i = icmp eq i8 %21, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, label %22, !prof !31

22:                                               ; preds = %.lr.ph.i.new
  %23 = add nuw i8 %21, 1
  store i8 %23, ptr %20, align 1
  %.pre.i = load ptr, ptr %i.f, align 8
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i: ; preds = %22, %.lr.ph.i.new
  %24 = phi ptr [ %15, %.lr.ph.i.new ], [ %.pre.i, %22 ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.011.i, i64 4
  %.sroa.01.0.copyload.i.1 = load i32, ptr %i.bb, align 4
  %i.bc = ptrtoint ptr %24 to i64
  %i.bd = zext i32 %.sroa.01.0.copyload.i.1 to i64
  %i.be = add i64 %i.bd, %i.bc
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1             ; 2 uses
  %.not.i.i.1 = icmp eq i8 %i.bh, -1
  br i1 %.not.i.i.1, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1, label %bb.e, !prof !31

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %i.bi = add nuw i8 %i.bh, 1
  store i8 %i.bi, ptr %i.bg, align 1
  %.pre.i.1 = load ptr, ptr %i.f, align 8
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1: ; preds = %bb.e, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %25 = phi ptr [ %24, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i ], [ %.pre.i.1, %bb.e ]
  %26 = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %.not.i15.1 = icmp eq ptr %26, %9
  br i1 %.not.i15.1, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_6LoadOpEEEvRKT_.exit, label %.lr.ph.i.new

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_6LoadOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1, %.prol.loopexit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 660
  %.sroa.0.0.copyload.i = load i32, ptr %i.bj, align 4
  %i.bk = load ptr, ptr %i.a, align 8, !nonnull !33, !align !34 ; 4 uses
  %i.bl = lshr i64 %i.i, 4
  %i.bm = and i64 %i.bl, 268435455                ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 216
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 208 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8            ; 2 uses
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = ashr exact i64 %i.bt, 2
  %.not.i.i16 = icmp ugt i64 %i.bu, %i.bm
  br i1 %.not.i.i16, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.f, !prof !35

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_6LoadOpEEEvRKT_.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 200 ; 2 uses
  %i.bw = lshr i64 %i.bm, 1
  %i.bx = add nuw nsw i64 %i.bm, 32
  %i.by = add nuw nsw i64 %i.bx, %i.bw
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, i64 noundef %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bk, i64 224
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = load ptr, ptr %i.bp, align 8
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = ashr exact i64 %i.ce, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, i64 noundef %i.cf)
  %.pre.i.i = load ptr, ptr %i.bp, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_6LoadOpEEEvRKT_.exit, %bb.f
  %i.cg = phi ptr [ %.pre.i.i, %bb.f ], [ %i.bq, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_6LoadOpEEEvRKT_.exit ]
  %i.ch = trunc i64 %i.i to i32
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.bm
  store i32 %.sroa.0.0.copyload.i, ptr %i.ci, align 4
  ret i32 %i.ch
}

declare noundef ptr @_ZN2v88internal7Runtime13FunctionForIdENS1_10FunctionIdE(i32 noundef) local_unnamed_addr #2

declare i64 @_ZN2v88internal17ExternalReference6CreateENS0_7Runtime10FunctionIdE(i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler7Linkage24GetRuntimeCallDescriptorEPNS0_4ZoneENS0_7Runtime10FunctionIdEiNS_4base5FlagsINS1_8Operator8PropertyEhhEENS8_INS1_14CallDescriptor4FlagEiiEENS1_16LazyDeoptOnThrowE(ptr noundef, i32 noundef, i32 noundef, i8, i32, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ENS2_13ZoneAllocatorIS5_EEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #6 comdat align 2 !guid !215 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ENS2_13ZoneAllocatorIS5_EEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ENS2_13ZoneAllocatorIS5_EEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !guid !218 {
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
  %i.j = ashr exact i64 %i.i, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.j)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 2 uses
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.l = sub nuw nsw i64 64, %i.k                 ; 2 uses
  %i.m = load ptr, ptr %0, align 8                ; 3 uses
  %i.n = icmp ult i64 %spec.select.i.i, 2305843009213693952
  br i1 %i.n, label %bb.c, label %bb.b, !prof !35

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.o = shl nuw i64 4, %i.l
  %i.p = add nuw i64 %i.o, 4
  %i.q = and i64 %i.p, -8                         ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = sub i64 %i.s, %i.u
  %i.w = icmp ugt i64 %i.q, %i.v
  br i1 %i.w, label %bb.d, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ENS2_13ZoneAllocatorIS5_EEE22AllocateDynamicStorageEm.exit, !prof !31

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 noundef %i.q) #19
  %.pre.i.i.i.i = load i64, ptr %i.t, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ENS2_13ZoneAllocatorIS5_EEE22AllocateDynamicStorageEm.exit

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ENS2_13ZoneAllocatorIS5_EEE22AllocateDynamicStorageEm.exit: ; preds = %bb.c, %bb.d
  %i.x = phi i64 [ %.pre.i.i.i.i, %bb.d ], [ %i.u, %bb.c ] ; 4 uses
  %i.y = inttoptr i64 %i.x to ptr                 ; 6 uses
  %i.z = add i64 %i.x, %i.q
  store i64 %i.z, ptr %i.t, align 8
  %i.aa = icmp eq i64 %i.x, 0
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ENS2_13ZoneAllocatorIS5_EEE22AllocateDynamicStorageEm.exit
  tail call void @_ZN2v84base8FatalOOMENS0_7OOMTypeEPKc(i32 noundef 1, ptr noundef nonnull @.str.10) #20
  unreachable

bb.f:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ENS2_13ZoneAllocatorIS5_EEE22AllocateDynamicStorageEm.exit
  %i.ab = load ptr, ptr %i.c, align 8             ; 5 uses
  %i.ac = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.f
  %i.ae = ptrtoaddr ptr %i.ab to i64              ; 2 uses
  %i.af = ptrtoaddr ptr %i.ac to i64
  %i.ag = add i64 %i.af, -4
  %i.ah = sub i64 %i.ag, %i.ae                    ; 2 uses
  %i.ai = lshr i64 %i.ah, 2
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ah, 44
  %i.ak = sub i64 %i.ae, %i.x
  %diff.check = icmp ugt i64 %i.ak, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aj, 9223372036854775800     ; 3 uses
  %i.al = shl i64 %n.vec, 2                       ; 2 uses
  %i.am = getelementptr i8, ptr %i.y, i64 %i.al
  %i.an = getelementptr i8, ptr %i.ab, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.ao ; 2 uses
  %next.gep13 = getelementptr i8, ptr %i.ab, i64 %i.ao ; 2 uses
  %i.ap = getelementptr i8, ptr %next.gep13, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep13, align 4
  %wide.load14 = load <4 x i32>, ptr %i.ap, align 4
  %i.aq = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load14, ptr %i.aq, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !216

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader16

.lr.ph.i.i.i.i.preheader16:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.y, %.lr.ph.i.i.i.i.preheader ], [ %i.am, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader16, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader16 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader16 ] ; 2 uses
  %i.as = load i32, ptr %.sroa.04.07.i.i.i.i, align 4
  store i32 %i.as, ptr %.08.i.i.i.i, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  %i.av = icmp eq ptr %i.at, %i.ac
  br i1 %i.av, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !217

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.f
  %i.aw = ptrtoint ptr %i.b to i64
  %i.ax = sub i64 %i.aw, %i.h
  %i.ay = shl nuw i64 1, %i.l
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ENS2_13ZoneAllocatorIS5_EEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  store ptr %i.y, ptr %i.c, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ax
  store ptr %i.az, ptr %i.a, align 8
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ay
  store ptr %i.ba, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ENS2_13ZoneAllocatorIS5_EEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #6 comdat align 2 !guid !219 {
_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindENS0_17ExternalReferenceEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, i64 %2) local_unnamed_addr #0 comdat align 2 !guid !220 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !33, !align !34 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = sub i64 %i.e, %i.h                       ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE28BuildSwitchToTheCentralStackENS4_1VINS4_12WordWithBitsILm64EEEEE:bb.a
  %.sroa.011.0.i.i.i.i44 = phi i32 [ %i.ak, %bb.d ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit42 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit41 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit38 ]
  tail call void @_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE21BuildSetNewStackLimitENS4_1VINS4_12WordWithBitsILm64EEEEESE_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 %1, i32 %.sroa.011.0.i.i.i.i44)
  %i.al = load ptr, ptr %i.a, align 8, !nonnull !33, !align !34 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 672
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15SetStackPointerENS2_1VINS2_12WordWithBitsILm64EEEEE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadStackPointerEv.exit, !prof !31

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadStackPointerEv.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit45
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.aq = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_18LoadStackPointerOpEJEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ap) ; 2 uses
  %.pre65 = load ptr, ptr %i.a, align 8           ; 2 uses
  %.phi.trans.insert66 = getelementptr inbounds nuw i8, ptr %.pre65, i64 672
  %.pre67 = load ptr, ptr %.phi.trans.insert66, align 8
  %i.ar = icmp eq ptr %.pre67, null
  br i1 %i.ar, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15SetStackPointerENS2_1VINS2_12WordWithBitsILm64EEEEE.exit, label %bb.e, !prof !36

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadStackPointerEv.exit
  %i.as = getelementptr inbounds nuw i8, ptr %.pre65, i64 32
  %i.at = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_17SetStackPointerOpEJNS2_14ShadowyOpIndexEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.as, i32 %.sroa.011.0.i.i.i.i407375) ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15SetStackPointerENS2_1VINS2_12WordWithBitsILm64EEEEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15SetStackPointerENS2_1VINS2_12WordWithBitsILm64EEEEE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit45, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadStackPointerEv.exit, %bb.e
  %.sroa.0.0.i.i4677 = phi i32 [ %i.aq, %bb.e ], [ %i.aq, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadStackPointerEv.exit ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit45 ]
  ret i32 %.sroa.0.0.i.i4677
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE21BuildSetNewStackLimitENS4_1VINS4_12WordWithBitsILm64EEEEESE_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 %1, i32 %2) local_unnamed_addr #0 comdat align 2 !guid !357 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !33, !align !34 ; 3 uses
  %i.c = tail call i64 @_ZN2v88internal17ExternalReference6CreateENS0_14IsolateFieldIdE(i8 noundef zeroext 2) #19
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 672 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE12IsolateFieldENS0_14IsolateFieldIdE.exit, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindENS0_17ExternalReferenceEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.g, i8 noundef zeroext 7, i64 %i.c)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE12IsolateFieldENS0_14IsolateFieldIdE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE12IsolateFieldENS0_14IsolateFieldIdE.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i.i.i = phi i32 [ %i.h, %bb.b ], [ -1, %bb.a ]
  %i.i = load ptr, ptr %i.a, align 8, !nonnull !33, !align !34 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 672
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15UintPtrConstantEm.exit, label %bb.c, !prof !31

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE12IsolateFieldENS0_14IsolateFieldIdE.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.n = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.m, i8 noundef zeroext 1, i64 noundef 0)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15UintPtrConstantEm.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15UintPtrConstantEm.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE12IsolateFieldENS0_14IsolateFieldIdE.exit, %bb.c
  %.sroa.04.0.i.i.i = phi i32 [ %i.n, %bb.c ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE12IsolateFieldENS0_14IsolateFieldIdE.exit ]
  %i.o = load ptr, ptr %i.d, align 8
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE21AtomicCompareExchangeENS2_1VINS2_3AnyEEENSF_INS2_12WordWithBitsILm64EEEEENS2_7OpIndexESL_NS2_22RegisterRepresentationENS2_20MemoryRepresentationENS1_16MemoryAccessKindESM_.exit, label %bb.d, !prof !31

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15UintPtrConstantEm.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.r = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_11AtomicRMWOpEJNS2_14ShadowyOpIndexESG_SG_SG_NSF_5BinOpENS2_22RegisterRepresentationENS2_20MemoryRepresentationENS1_16MemoryAccessKindESI_EEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.q, i32 %.sroa.02.0.i.i.i, i32 %.sroa.04.0.i.i.i, i32 %2, i32 %1, i8 noundef zeroext 6, i8 1, i8 7, i8 noundef zeroext 0, i8 1) ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE21AtomicCompareExchangeENS2_1VINS2_3AnyEEENSF_INS2_12WordWithBitsILm64EEEEENS2_7OpIndexESL_NS2_22RegisterRepresentationENS2_20MemoryRepresentationENS1_16MemoryAccessKindESM_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE21AtomicCompareExchangeENS2_1VINS2_3AnyEEENSF_INS2_12WordWithBitsILm64EEEEENS2_7OpIndexESL_NS2_22RegisterRepresentationENS2_20MemoryRepresentationENS1_16MemoryAccessKindESM_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15UintPtrConstantEm.exit, %bb.d
  %i.s = load ptr, ptr %i.a, align 8, !nonnull !33, !align !34 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 672 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit, !prof !31

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE21AtomicCompareExchangeENS2_1VINS2_3AnyEEENSF_INS2_12WordWithBitsILm64EEEEENS2_7OpIndexESL_NS2_22RegisterRepresentationENS2_20MemoryRepresentationENS1_16MemoryAccessKindESM_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  %i.x = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_18LoadRootRegisterOpEJEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.w)
  %.pr = load ptr, ptr %i.t, align 8
  %i.y = icmp eq ptr %.pr, null
  br i1 %i.y, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit, label %bb.e, !prof !36

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit
  %i.z = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_7StoreOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexESG_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEihbNS0_18IndirectPointerTagEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.w, i32 %i.x, i32 -1, i32 %2, i8 16, i8 7, i8 noundef zeroext 0, i32 noundef -112, i8 noundef zeroext 0, i1 noundef zeroext false, i64 noundef 0) ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE21AtomicCompareExchangeENS2_1VINS2_3AnyEEENSF_INS2_12WordWithBitsILm64EEEEENS2_7OpIndexESL_NS2_22RegisterRepresentationENS2_20MemoryRepresentationENS1_16MemoryAccessKindESM_.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_15FrameConstantOpEJNSF_4KindEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !guid !358 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !33, !align !34 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = sub i64 %i.e, %i.h                       ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = sub i64 %i.l, %i.e
  %i.n = icmp ult i64 %i.m, 9
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_15FrameConstantOpEE3NewIJNS4_4KindEEEERS4_PNS2_5GraphEDpT_.exit, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.o = sub i64 %i.l, %i.h
  %i.p = lshr exact i64 %i.o, 3
  %i.q = and i64 %i.p, 4294967295
  %i.r = add nuw nsw i64 %i.q, 2
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.r)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre5 = ptrtoint ptr %.pre to i64
  %.pre6 = sub i64 %.pre10.i.i.i.i, %.pre5
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_15FrameConstantOpEE3NewIJNS4_4KindEEEERS4_PNS2_5GraphEDpT_.exit

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_15FrameConstantOpEE3NewIJNS4_4KindEEEERS4_PNS2_5GraphEDpT_.exit: ; preds = %bb.a, %bb.b
  %.pre-phi7 = phi i64 [ %i.i, %bb.a ], [ %.pre6, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.c, align 8
  %i.u = trunc i64 %.pre-phi7 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.pre-phi7, 4
  %i.y = and i64 %i.x, 268435455
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.y
  store i16 2, ptr %i.z, align 2
  %i.aa = load ptr, ptr %i.v, align 8
  %i.ab = add i32 %i.u, 16
  %i.ac = lshr i32 %i.ab, 4
  %i.ad = add nsw i32 %i.ac, -1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ae
  store i16 2, ptr %i.af, align 2
  store i8 84, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 0, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i8 %1, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 660
  %.sroa.0.0.copyload.i = load i32, ptr %i.aj, align 4
  %i.ak = load ptr, ptr %i.a, align 8, !nonnull !33, !align !34 ; 4 uses
  %i.al = lshr i64 %i.i, 4
  %i.am = and i64 %i.al, 268435455                ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 216
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 208 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 2
  %.not.i.i = icmp ugt i64 %i.au, %i.am
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.c, !prof !35

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_15FrameConstantOpEE3NewIJNS4_4KindEEEERS4_PNS2_5GraphEDpT_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 200 ; 2 uses
  %i.aw = lshr i64 %i.am, 1
  %i.ax = add nuw nsw i64 %i.am, 32
  %i.ay = add nuw nsw i64 %i.ax, %i.aw
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.av, i64 noundef %i.ay)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 224
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = load ptr, ptr %i.ap, align 8
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.av, i64 noundef %i.bf)
  %.pre.i.i = load ptr, ptr %i.ap, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_15FrameConstantOpEE3NewIJNS4_4KindEEEERS4_PNS2_5GraphEDpT_.exit, %bb.c
  %i.bg = phi ptr [ %.pre.i.i, %bb.c ], [ %i.aq, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_15FrameConstantOpEE3NewIJNS4_4KindEEEERS4_PNS2_5GraphEDpT_.exit ]
  %i.bh = trunc i64 %i.i to i32
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.am
  store i32 %.sroa.0.0.copyload.i, ptr %i.bi, align 4
  ret i32 %i.bh
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_11AtomicRMWOpEJNS2_14ShadowyOpIndexESG_SG_SG_NSF_5BinOpENS2_22RegisterRepresentationENS2_20MemoryRepresentationENS1_16MemoryAccessKindESI_EEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, i32 %2, i32 %3, i32 %4, i8 noundef zeroext %5, i8 %6, i8 %7, i8 noundef zeroext %8, i8 %9) local_unnamed_addr #0 comdat align 2 !guid !359 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !33, !align !34 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = sub i64 %i.e, %i.h                       ; 3 uses
  %.not.i = icmp eq i32 %4, -1                    ; 3 uses
  %i.j = select i1 %.not.i, i64 3, i64 4          ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.n = sub i64 %i.m, %i.e
  %i.o = ashr exact i64 %i.n, 3
  %i.p = icmp ult i64 %i.o, %i.j
  br i1 %i.p, label %bb.b, label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.q = sub i64 %i.m, %i.h
  %i.r = lshr exact i64 %i.q, 3
  %i.s = and i64 %i.r, 4294967295
  %i.t = add nuw nsw i64 %i.s, %i.j
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.t)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre24 = ptrtoint ptr %.pre to i64
  %.pre25 = sub i64 %.pre10.i.i.i.i, %.pre24
  br label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i

_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i: ; preds = %bb.b, %bb.a
  %.pre-phi26 = phi i64 [ %.pre25, %bb.b ], [ %i.i, %bb.a ] ; 2 uses
  %i.u = phi ptr [ %.pre.i.i.i.i, %bb.b ], [ %i.d, %bb.a ] ; 14 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.j
  store ptr %i.v, ptr %i.c, align 8
  %i.w = trunc i64 %.pre-phi26 to i32
  %i.x = trunc nuw nsw i64 %i.j to i16            ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = lshr i64 %.pre-phi26, 4
  %i.ab = and i64 %i.aa, 268435455
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.ab
  store i16 %i.x, ptr %i.ac, align 2
  %i.ad = load ptr, ptr %i.y, align 8
  %.tr.i.i.i.i = trunc nuw nsw i64 %i.j to i32
  %i.ae = shl nuw nsw i32 %.tr.i.i.i.i, 3
  %i.af = add i32 %i.ae, %i.w
  %i.ag = lshr i32 %i.af, 4
  %i.ah = add nsw i32 %i.ag, -1
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.ai
  store i16 %i.x, ptr %i.aj, align 2
  store i8 100, ptr %i.u, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store i8 0, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.am = select i1 %.not.i, i16 3, i16 4         ; 2 uses
  store i16 %i.am, ptr %i.al, align 2
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i8 %5, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 5
  store i8 %6, ptr %i.ao, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 6
  store i8 %7, ptr %i.ap, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 7
  store i8 %8, ptr %i.aq, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i8 %9, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 12 ; 4 uses
  store i32 %1, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i32 %2, ptr %i.at, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  store i32 %3, ptr %i.au, align 4
  br i1 %.not.i, label %.lr.ph.i, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i32 %4, ptr %i.av, align 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i
  %10 = shl nuw nsw i16 %i.am, 2
  %.idx.i = zext nneg i16 %10 to i64              ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx.i
  %.pre12.i = load ptr, ptr %i.f, align 8         ; 3 uses
  %12 = add nsw i64 %.idx.i, -4                   ; 2 uses
  %13 = and i64 %12, 4
  %lcmp.mod.not.not = icmp eq i64 %13, 0
  br i1 %lcmp.mod.not.not, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %.lr.ph.i
  %.sroa.01.0.copyload.i.prol = load i32, ptr %i.as, align 4
  %i.aw = ptrtoint ptr %.pre12.i to i64
  %i.ax = zext i32 %.sroa.01.0.copyload.i.prol to i64
  %i.ay = add i64 %i.ax, %i.aw
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1             ; 2 uses
  %.not.i.i.prol = icmp eq i8 %i.bb, -1
  br i1 %.not.i.i.prol, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol, label %bb.d, !prof !31

bb.d:                                             ; preds = %.prol.preheader
  %i.bc = add nuw i8 %i.bb, 1
  store i8 %i.bc, ptr %i.ba, align 1
  %.pre.i.prol = load ptr, ptr %i.f, align 8
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol: ; preds = %bb.d, %.prol.preheader
  %14 = phi ptr [ %.pre12.i, %.prol.preheader ], [ %.pre.i.prol, %bb.d ]
  %15 = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol, %.lr.ph.i
  %.unr = phi ptr [ %.pre12.i, %.lr.ph.i ], [ %14, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol ]
  %.011.i.unr = phi ptr [ %i.as, %.lr.ph.i ], [ %15, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol ]
  %16 = icmp eq i64 %12, 0
  br i1 %16, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_11AtomicRMWOpEEEvRKT_.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1
  %i.bd = phi ptr [ %18, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1 ], [ %.unr, %.prol.loopexit ] ; 2 uses
  %.011.i = phi ptr [ %19, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1 ], [ %.011.i.unr, %.prol.loopexit ] ; 3 uses
  %.sroa.01.0.copyload.i.a = load i32, ptr %.011.i, align 4
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = zext i32 %.sroa.01.0.copyload.i.a to i64
  %i.bg = add i64 %i.bf, %i.be
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.bj, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, label %bb.e, !prof !31

bb.e:                                             ; preds = %.lr.ph.i.new
  %i.bk = add nuw i8 %i.bj, 1
  store i8 %i.bk, ptr %i.bi, align 1
  %.pre.i.a = load ptr, ptr %i.f, align 8
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i: ; preds = %bb.e, %.lr.ph.i.new
  %17 = phi ptr [ %i.bd, %.lr.ph.i.new ], [ %.pre.i.a, %bb.e ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.011.i, i64 4
  %.sroa.01.0.copyload.i.1 = load i32, ptr %i.bl, align 4
  %i.bm = ptrtoint ptr %17 to i64
  %i.bn = zext i32 %.sroa.01.0.copyload.i.1 to i64
  %i.bo = add i64 %i.bn, %i.bm
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1             ; 2 uses
  %.not.i.i.1 = icmp eq i8 %i.br, -1
  br i1 %.not.i.i.1, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1, label %bb.f, !prof !31

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %i.bs = add nuw i8 %i.br, 1
  store i8 %i.bs, ptr %i.bq, align 1
  %.pre.i.1 = load ptr, ptr %i.f, align 8
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1: ; preds = %bb.f, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %18 = phi ptr [ %17, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i ], [ %.pre.i.1, %bb.f ]
  %19 = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %.not.i19.1 = icmp eq ptr %19, %11
  br i1 %.not.i19.1, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_11AtomicRMWOpEEEvRKT_.exit, label %.lr.ph.i.new

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_11AtomicRMWOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1, %.prol.loopexit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 660
  %.sroa.0.0.copyload.i20 = load i32, ptr %i.bt, align 4
  %i.bu = load ptr, ptr %i.a, align 8, !nonnull !33, !align !34 ; 4 uses
  %i.bv = lshr i64 %i.i, 4
  %i.bw = and i64 %i.bv, 268435455                ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 216
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 208 ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  %i.cb = ptrtoint ptr %i.by to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = ashr exact i64 %i.cd, 2
  %.not.i.i21 = icmp ugt i64 %i.ce, %i.bw
  br i1 %.not.i.i21, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.g, !prof !35

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_11AtomicRMWOpEEEvRKT_.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bu, i64 200 ; 2 uses
  %i.cg = lshr i64 %i.bw, 1
  %i.ch = add nuw nsw i64 %i.bw, 32
  %i.ci = add nuw nsw i64 %i.ch, %i.cg
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, i64 noundef %i.ci)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bu, i64 224
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = load ptr, ptr %i.bz, align 8
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = ashr exact i64 %i.co, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, i64 noundef %i.cp)
  %.pre.i.i = load ptr, ptr %i.bz, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_11AtomicRMWOpEEEvRKT_.exit, %bb.g
  %i.cq = phi ptr [ %.pre.i.i, %bb.g ], [ %i.ca, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_11AtomicRMWOpEEEvRKT_.exit ]
  %i.cr = trunc i64 %i.i to i32
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.bw
  store i32 %.sroa.0.0.copyload.i20, ptr %i.cs, align 4
  ret i32 %i.cr
}

declare i64 @_ZN2v88internal17ExternalReference6CreateENS0_14IsolateFieldIdE(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_18LoadStackPointerOpEJEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 !guid !360 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !33, !align !34 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = sub i64 %i.e, %i.h                       ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = sub i64 %i.l, %i.e
  %i.n = icmp ult i64 %i.m, 9
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_18LoadStackPointerOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.o = sub i64 %i.l, %i.h
  %i.p = lshr exact i64 %i.o, 3
  %i.q = and i64 %i.p, 4294967295
  %i.r = add nuw nsw i64 %i.q, 2
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.r)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre5 = ptrtoint ptr %.pre to i64
  %.pre6 = sub i64 %.pre10.i.i.i.i, %.pre5
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_18LoadStackPointerOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_18LoadStackPointerOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit: ; preds = %bb.a, %bb.b
  %.pre-phi7 = phi i64 [ %i.i, %bb.a ], [ %.pre6, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.c, align 8
  %i.u = trunc i64 %.pre-phi7 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.pre-phi7, 4
  %i.y = and i64 %i.x, 268435455
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.y
  store i16 2, ptr %i.z, align 2
  %i.aa = load ptr, ptr %i.v, align 8
  %i.ab = add i32 %i.u, 16
  %i.ac = lshr i32 %i.ab, 4
  %i.ad = add nsw i32 %i.ac, -1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ae
  store i16 2, ptr %i.af, align 2
  store i32 87, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 660
  %.sroa.0.0.copyload.i = load i32, ptr %i.ag, align 4
  %i.ah = load ptr, ptr %i.a, align 8, !nonnull !33, !align !34 ; 4 uses
  %i.ai = lshr i64 %i.i, 4
  %i.aj = and i64 %i.ai, 268435455                ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 216
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 208 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2
  %.not.i.i = icmp ugt i64 %i.ar, %i.aj
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.c, !prof !35

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_18LoadStackPointerOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 200 ; 2 uses
  %i.at = lshr i64 %i.aj, 1
  %i.au = add nuw nsw i64 %i.aj, 32
  %i.av = add nuw nsw i64 %i.au, %i.at
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.as, i64 noundef %i.av)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 224
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = load ptr, ptr %i.am, align 8
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.as, i64 noundef %i.bc)
  %.pre.i.i = load ptr, ptr %i.am, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_18LoadStackPointerOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit, %bb.c
  %i.bd = phi ptr [ %.pre.i.i, %bb.c ], [ %i.an, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_18LoadStackPointerOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit ]
  %i.be = trunc i64 %i.i to i32
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.aj
  store i32 %.sroa.0.0.copyload.i, ptr %i.bf, align 4
  ret i32 %i.be
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_17SetStackPointerOpEJNS2_14ShadowyOpIndexEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1) local_unnamed_addr #0 comdat align 2 !guid !361 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !33, !align !34 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = sub i64 %i.e, %i.h                       ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = sub i64 %i.l, %i.e
  %i.n = icmp ult i64 %i.m, 9
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_17SetStackPointerOpEE3NewIJNS2_14ShadowyOpIndexEEEERS4_PNS2_5GraphEDpT_.exit, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.o = sub i64 %i.l, %i.h
  %i.p = lshr exact i64 %i.o, 3
  %i.q = and i64 %i.p, 4294967295
  %i.r = add nuw nsw i64 %i.q, 2
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.r)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre8 = ptrtoint ptr %.pre to i64
  %.pre9 = sub i64 %.pre10.i.i.i.i, %.pre8
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_17SetStackPointerOpEE3NewIJNS2_14ShadowyOpIndexEEEERS4_PNS2_5GraphEDpT_.exit

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_17SetStackPointerOpEE3NewIJNS2_14ShadowyOpIndexEEEERS4_PNS2_5GraphEDpT_.exit: ; preds = %bb.a, %bb.b
  %.pre-phi10 = phi i64 [ %i.i, %bb.a ], [ %.pre9, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.c, align 8
  %i.u = trunc i64 %.pre-phi10 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.pre-phi10, 4
  %i.y = and i64 %i.x, 268435455
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.y
  store i16 2, ptr %i.z, align 2
  %i.aa = load ptr, ptr %i.v, align 8
  %i.ab = add i32 %i.u, 16
  %i.ac = lshr i32 %i.ab, 4
  %i.ad = add nsw i32 %i.ac, -1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ae
  store i16 2, ptr %i.af, align 2
  store i8 88, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 1, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %1, ptr %i.ai, align 4
  %i.aj = load ptr, ptr %i.f, align 8
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = zext i32 %1 to i64
  %i.am = add i64 %i.ak, %i.al
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 2 uses
end_hunk_1
