inline.NumInlined: 7185
inline.NumDeleted: 2643
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_12ProjectionOpEJNS2_14ShadowyOpIndexEtNS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT0_:bb.a
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 2
  %.not.i.i8 = icmp ugt i64 %i.be, %i.aw
  br i1 %.not.i.i8, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.d, !prof !11

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_12ProjectionOpEEEvRKT_.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 200 ; 2 uses
  %i.bg = lshr i64 %i.aw, 1
  %i.bh = add nuw nsw i64 %i.aw, 32
  %i.bi = add nuw nsw i64 %i.bh, %i.bg
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 noundef %i.bi)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 224
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = load ptr, ptr %i.az, align 8
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = ashr exact i64 %i.bo, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 noundef %i.bp)
  %.pre.i.i = load ptr, ptr %i.az, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_12ProjectionOpEEEvRKT_.exit, %bb.d
  %i.bq = phi ptr [ %.pre.i.i, %bb.d ], [ %i.ba, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_12ProjectionOpEEEvRKT_.exit ]
  %i.br = trunc i64 %i.i to i32
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.aw
  store i32 %.sroa.0.0.copyload.i, ptr %i.bs, align 4
  ret i32 %i.br
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_11MakeTupleOpEJNS2_27ShadowyOpIndexVectorWrapperEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !9, !align !10 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = sub i64 %i.e, %i.h                       ; 3 uses
  %i.j = add i64 %2, 2
  %i.k = lshr i64 %i.j, 1
  %.sroa.speculated.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.k, i64 2) ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.o = sub i64 %i.n, %i.e
  %i.p = ashr exact i64 %i.o, 3
  %i.q = icmp ult i64 %i.p, %.sroa.speculated.i.i.i
  br i1 %i.q, label %bb.b, label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.r = sub i64 %i.n, %i.h
  %i.s = lshr exact i64 %i.r, 3
  %i.t = and i64 %i.s, 4294967295
  %i.u = add nuw i64 %i.t, %.sroa.speculated.i.i.i
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.u)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre9 = ptrtoint ptr %.pre to i64
  %.pre10 = sub i64 %.pre10.i.i.i.i, %.pre9
  br label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i

_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i: ; preds = %bb.b, %bb.a
  %.pre-phi11 = phi i64 [ %.pre10, %bb.b ], [ %i.i, %bb.a ] ; 2 uses
  %i.v = phi ptr [ %.pre.i.i.i.i, %bb.b ], [ %i.d, %bb.a ] ; 6 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.sroa.speculated.i.i.i
  store ptr %i.w, ptr %i.c, align 8
  %i.x = trunc i64 %.pre-phi11 to i32
  %i.y = trunc i64 %.sroa.speculated.i.i.i to i16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = lshr i64 %.pre-phi11, 4
  %i.ac = and i64 %i.ab, 268435455
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ac
  store i16 %i.y, ptr %i.ad, align 2
  %i.ae = load ptr, ptr %i.z, align 8
  %.tr.i.i.i.i = trunc i64 %.sroa.speculated.i.i.i to i32
  %i.af = shl i32 %.tr.i.i.i.i, 3
  %i.ag = add i32 %i.af, %i.x
  %i.ah = lshr i32 %i.ag, 4
  %i.ai = add nsw i32 %i.ah, -1
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.aj
  store i16 %i.y, ptr %i.ak, align 2
  store i8 96, ptr %i.v, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store i8 0, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.an = trunc i64 %2 to i16                     ; 2 uses
  store i16 %i.an, ptr %i.am, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 4 uses
  %i.ap = icmp ugt i64 %2, 1
  br i1 %i.ap, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i
  %.idx.i.i.i.i.i = shl nuw nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ao, ptr align 4 %1, i64 %.idx.i.i.i.i.i, i1 false)
  br label %_ZN2v88internal8compiler10turboshaft10OperationTINS2_11MakeTupleOpEE3NewIJEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i
  %i.aq = icmp eq i64 %2, 1
  br i1 %i.aq, label %_ZN2v88internal8compiler10turboshaft10OperationTINS2_11MakeTupleOpEE3NewIJEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit.thread, label %_ZN2v88internal8compiler10turboshaft10OperationTINS2_11MakeTupleOpEE3NewIJEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit

_ZN2v88internal8compiler10turboshaft10OperationTINS2_11MakeTupleOpEE3NewIJEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit.thread: ; preds = %bb.d
  %i.ar = load i32, ptr %1, align 4
  store i32 %i.ar, ptr %i.ao, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  br label %.lr.ph.i.preheader

_ZN2v88internal8compiler10turboshaft10OperationTINS2_11MakeTupleOpEE3NewIJEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit: ; preds = %bb.c, %bb.d
  %i.at = shl i64 %2, 2
  %.idx.i = and i64 %i.at, 262140
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx.i
  %.not10.i = icmp eq i16 %i.an, 0
  br i1 %.not10.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_11MakeTupleOpEEEvRKT_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN2v88internal8compiler10turboshaft10OperationTINS2_11MakeTupleOpEE3NewIJEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit.thread, %_ZN2v88internal8compiler10turboshaft10OperationTINS2_11MakeTupleOpEE3NewIJEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit
  %i.av = phi ptr [ %i.as, %_ZN2v88internal8compiler10turboshaft10OperationTINS2_11MakeTupleOpEE3NewIJEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit.thread ], [ %i.au, %_ZN2v88internal8compiler10turboshaft10OperationTINS2_11MakeTupleOpEE3NewIJEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %.011.i = phi ptr [ %i.be, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i ], [ %i.ao, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.01.0.copyload.i = load i32, ptr %.011.i, align 4
  %i.aw = load ptr, ptr %i.f, align 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = zext i32 %.sroa.01.0.copyload.i to i64
  %i.az = add i64 %i.ax, %i.ay
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.bc, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, label %bb.e, !prof !5

bb.e:                                             ; preds = %.lr.ph.i
  %i.bd = add nuw i8 %i.bc, 1
  store i8 %i.bd, ptr %i.bb, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i: ; preds = %bb.e, %.lr.ph.i
  %i.be = getelementptr inbounds nuw i8, ptr %.011.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.be, %i.av
  br i1 %.not.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_11MakeTupleOpEEEvRKT_.exit, label %.lr.ph.i

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_11MakeTupleOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, %_ZN2v88internal8compiler10turboshaft10OperationTINS2_11MakeTupleOpEE3NewIJEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 660
  %.sroa.0.0.copyload.i = load i32, ptr %i.bf, align 4
  %i.bg = load ptr, ptr %i.a, align 8, !nonnull !9, !align !10 ; 4 uses
  %i.bh = lshr i64 %i.i, 4
  %i.bi = and i64 %i.bh, 268435455                ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 216
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 208 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = ashr exact i64 %i.bp, 2
  %.not.i.i7 = icmp ugt i64 %i.bq, %i.bi
  br i1 %.not.i.i7, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.f, !prof !11

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_11MakeTupleOpEEEvRKT_.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bg, i64 200 ; 2 uses
  %i.bs = lshr i64 %i.bi, 1
  %i.bt = add nuw nsw i64 %i.bi, 32
  %i.bu = add nuw nsw i64 %i.bt, %i.bs
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.br, i64 noundef %i.bu)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bg, i64 224
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = load ptr, ptr %i.bl, align 8
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = ashr exact i64 %i.ca, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.br, i64 noundef %i.cb)
  %.pre.i.i = load ptr, ptr %i.bl, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_11MakeTupleOpEEEvRKT_.exit, %bb.f
  %i.cc = phi ptr [ %.pre.i.i, %bb.f ], [ %i.bm, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_11MakeTupleOpEEEvRKT_.exit ]
  %i.cd = trunc i64 %i.i to i32
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.bi
  store i32 %.sroa.0.0.copyload.i, ptr %i.ce, align 4
  ret i32 %i.cd
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE15MergeFrameStateENS8_6VectorIKNS2_7OpIndexEEE(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::base::SmallVector.137", align 8 ; 11 uses
  %4 = alloca %"class.v8::base::SmallVector.139", align 8 ; 13 uses
  %5 = alloca %"class.v8::internal::ZoneVector.8", align 8 ; 7 uses
  %6 = alloca %"class.v8::internal::ZoneVector.8", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.a, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 280
  store ptr %i.d, ptr %i.c, align 8
  %.idx = shl nuw nsw i64 %2, 2
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not117 = icmp ne i64 %2, 0
  call void @llvm.assume(i1 %.not117)
  %7 = getelementptr inbounds i8, ptr %0, i64 -8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft12FrameStateOpELm32ESaIS7_EE9push_backES7_.exit
  %.pre = load ptr, ptr %3, align 8               ; 3 uses
  %.pre143 = load ptr, ptr %.pre, align 8         ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store ptr %i.f, ptr %4, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 14 uses
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 152
  store ptr %i.i, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.pre143, i64 4 ; 5 uses
  %i.k = load i8, ptr %i.j, align 4, !range !32, !noundef !9
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %bb.j

bb.b:                                             ; preds = %bb.a, %_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft12FrameStateOpELm32ESaIS7_EE9push_backES7_.exit
  %.0118 = phi ptr [ %1, %bb.a ], [ %i.y, %_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft12FrameStateOpELm32ESaIS7_EE9push_backES7_.exit ] ; 2 uses
  %.sroa.053.0.copyload = load i32, ptr %.0118, align 4
  %i.m = load ptr, ptr %7, align 8, !nonnull !9, !align !10
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = zext i32 %.sroa.053.0.copyload to i64
  %i.r = add i64 %i.p, %i.q
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.u = load ptr, ptr %i.c, align 8
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.c, label %_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft12FrameStateOpELm32ESaIS7_EE9push_backES7_.exit, !prof !5

bb.c:                                             ; preds = %bb.b
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft12FrameStateOpELm32ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(280) %3)
  %.pre.i.i = load ptr, ptr %i.b, align 8
  br label %_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft12FrameStateOpELm32ESaIS7_EE9push_backES7_.exit

_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft12FrameStateOpELm32ESaIS7_EE9push_backES7_.exit: ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %.pre.i.i, %bb.c ], [ %i.t, %bb.b ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.x, ptr %i.b, align 8
  store ptr %i.s, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.0118, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.y, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b

bb.d:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.z = getelementptr inbounds i8, ptr %0, i64 -24
  %i.aa = load ptr, ptr %i.z, align 8
  store ptr %i.aa, ptr %5, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  %i.ac = load ptr, ptr %i.b, align 8             ; 3 uses
  %.not67119 = icmp eq ptr %.pre, %i.ac
  br i1 %.not67119, label %.critedge.thread, label %.lr.ph123

.critedge.thread:                                 ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre143, i64 16
  %.sroa.0.0.copyload.i.i72164 = load i32, ptr %i.ad, align 4
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE9push_backES5_.exit

.lr.ph123:                                        ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre143, i64 16
  br label %.backedge168

._crit_edge124:                                   ; preds = %bb.f
  br i1 %i.au, label %.critedge, label %._crit_edge124.thread

.backedge168:                                     ; preds = %.backedge168.backedge, %.lr.ph123
  %.062121 = phi i1 [ true, %.lr.ph123 ], [ %.062121.be, %.backedge168.backedge ]
  %.063120 = phi ptr [ %.pre, %.lr.ph123 ], [ %.063120.be, %.backedge168.backedge ] ; 3 uses
  %i.ah = load ptr, ptr %.063120, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ai, align 4
  %i.aj = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ak = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.al = icmp ult ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backEOS4_.exit, label %bb.e, !prof !11

bb.e:                                             ; preds = %.backedge168
  %i.am = load ptr, ptr %i.ab, align 8
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 2
  %i.ar = add nsw i64 %i.aq, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.ar)
  %.pre.i.i69 = load ptr, ptr %i.ae, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backEOS4_.exit

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backEOS4_.exit: ; preds = %.backedge168, %bb.e
  %i.as = phi ptr [ %i.aj, %.backedge168 ], [ %.pre.i.i69, %bb.e ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store ptr %i.at, ptr %i.ae, align 8
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.as, align 4
  br i1 %.062121, label %bb.f, label %.thread

bb.f:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backEOS4_.exit
  %.sroa.0.0.copyload.i.i70 = load i32, ptr %i.ag, align 4
  %.sroa.0.0.copyload.i.i71 = load i32, ptr %i.ai, align 4
  %i.au = icmp eq i32 %.sroa.0.0.copyload.i.i70, %.sroa.0.0.copyload.i.i71 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.063120, i64 8 ; 2 uses
  %.not67 = icmp eq ptr %i.av, %i.ac
  br i1 %.not67, label %._crit_edge124, label %.backedge168.backedge

.backedge168.backedge:                            ; preds = %bb.f, %.thread
  %.062121.be = phi i1 [ %i.au, %bb.f ], [ false, %.thread ]
  %.063120.be = phi ptr [ %i.av, %bb.f ], [ %i.aw, %.thread ]
  br label %.backedge168

.thread:                                          ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backEOS4_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %.063120, i64 8 ; 2 uses
  %.not67163 = icmp eq ptr %i.aw, %i.ac
  br i1 %.not67163, label %._crit_edge124.thread, label %.backedge168.backedge

.critedge:                                        ; preds = %._crit_edge124
  %.pre144 = load ptr, ptr %i.g, align 8          ; 2 uses
  %.pre145 = load ptr, ptr %i.h, align 8
  %i.ax = icmp eq ptr %.pre144, %.pre145
  %i.ay = getelementptr inbounds nuw i8, ptr %.pre143, i64 16
  %.sroa.0.0.copyload.i.i72 = load i32, ptr %i.ay, align 4 ; 2 uses
  br i1 %i.ax, label %bb.g, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE9push_backES5_.exit, !prof !102

bb.g:                                             ; preds = %.critedge
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(152) %4)
  %.pre.i.i73 = load ptr, ptr %i.g, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE9push_backES5_.exit

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE9push_backES5_.exit: ; preds = %.critedge.thread, %.critedge, %bb.g
  %.sroa.0.0.copyload.i.i72165 = phi i32 [ %.sroa.0.0.copyload.i.i72, %bb.g ], [ %.sroa.0.0.copyload.i.i72, %.critedge ], [ %.sroa.0.0.copyload.i.i72164, %.critedge.thread ]
  %i.az = phi ptr [ %.pre.i.i73, %bb.g ], [ %.pre144, %.critedge ], [ %i.f, %.critedge.thread ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  store ptr %i.ba, ptr %i.g, align 8
  store i32 %.sroa.0.0.copyload.i.i72165, ptr %i.az, align 4
  br label %bb.i

._crit_edge124.thread:                            ; preds = %.thread, %._crit_edge124
  %i.bb = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.bc = load ptr, ptr %i.ae, align 8
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 2
  %i.bh = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE15MergeFrameStateENS8_6VectorIKNS2_7OpIndexEEE(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr %i.bb, i64 %i.bg)
  %i.bi = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.bj = load ptr, ptr %i.h, align 8
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %bb.h, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE9push_backES5_.exit75, !prof !5

bb.h:                                             ; preds = %._crit_edge124.thread
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(152) %4)
  %.pre.i.i74 = load ptr, ptr %i.g, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE9push_backES5_.exit75

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE9push_backES5_.exit75: ; preds = %._crit_edge124.thread, %bb.h
  %i.bl = phi ptr [ %.pre.i.i74, %bb.h ], [ %i.bi, %._crit_edge124.thread ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  store ptr %i.bm, ptr %i.g, align 8
  store i32 %i.bh, ptr %i.bl, align 4
  br label %bb.i

bb.i:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE9push_backES5_.exit75, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE9push_backES5_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %.pre146 = load i8, ptr %i.j, align 4, !range !32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %i.bn = phi i8 [ %.pre146, %bb.i ], [ 0, %._crit_edge ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.pre143, i64 2 ; 2 uses
  %i.bp = load i16, ptr %i.bo, align 2
  %i.bq = zext nneg i8 %i.bn to i16
  %.not138 = icmp eq i16 %i.bp, %i.bq
  br i1 %.not138, label %._crit_edge135, label %.lr.ph134

.lr.ph134:                                        ; preds = %bb.j
  %i.br = getelementptr inbounds i8, ptr %0, i64 -24
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bv = getelementptr inbounds nuw i8, ptr %.pre143, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 640
  br label %bb.l

._crit_edge135:                                   ; preds = %bb.ab, %bb.j
  %.lcssa = phi i8 [ %i.bn, %bb.j ], [ %i.eo, %bb.ab ]
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE10FrameStateENS5_6VectorIKNS2_7OpIndexEEEbPKNS2_14FrameStateDataE.exit, label %bb.k, !prof !5

bb.k:                                             ; preds = %._crit_edge135
  %i.ca = getelementptr inbounds nuw i8, ptr %.pre143, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = trunc nuw i8 %.lcssa to i1
  %i.cd = load ptr, ptr %i.g, align 8
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = load ptr, ptr %4, align 8               ; 2 uses
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = sub i64 %i.ce, %i.cg
  %i.ci = ashr exact i64 %i.ch, 2
  %i.cj = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_12FrameStateOpEJNS2_27ShadowyOpIndexVectorWrapperEbPKNS2_14FrameStateDataEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %i.cf, i64 %i.ci, i1 noundef zeroext %i.cc, ptr noundef %i.cb)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE10FrameStateENS5_6VectorIKNS2_7OpIndexEEEbPKNS2_14FrameStateDataE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE10FrameStateENS5_6VectorIKNS2_7OpIndexEEEbPKNS2_14FrameStateDataE.exit: ; preds = %._crit_edge135, %bb.k
  %.sroa.04.0.i.i = phi i32 [ %i.cj, %bb.k ], [ -1, %._crit_edge135 ]
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(152) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft12FrameStateOpELm32ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(280) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret i32 %.sroa.04.0.i.i

bb.l:                                             ; preds = %.lr.ph134, %bb.ab
  %i.ck = phi i8 [ %i.bn, %.lr.ph134 ], [ %i.eo, %bb.ab ]
  %indvars.iv = phi i64 [ 0, %.lr.ph134 ], [ %indvars.iv.next, %bb.ab ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.cl = load ptr, ptr %i.br, align 8
  store ptr %i.cl, ptr %6, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i8 0, i64 24, i1 false)
  %i.cm = load ptr, ptr %3, align 8               ; 2 uses
  %i.cn = load ptr, ptr %i.b, align 8             ; 3 uses
  %.not68125 = icmp eq ptr %i.cm, %i.cn
  br i1 %.not68125, label %.critedge137, label %.lr.ph129

.lr.ph129:                                        ; preds = %bb.l
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %.pre143, i64 %indvars.iv
  br label %.backedge

._crit_edge130:                                   ; preds = %bb.n
  br i1 %i.dj, label %._crit_edge130..critedge137_crit_edge, label %._crit_edge130.thread

._crit_edge130..critedge137_crit_edge:            ; preds = %._crit_edge130
  %.pre147 = load i8, ptr %i.j, align 4, !range !32
  br label %.critedge137

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph129
  %.065127 = phi i1 [ true, %.lr.ph129 ], [ %.065127.be, %.backedge.backedge ]
  %.066126 = phi ptr [ %i.cm, %.lr.ph129 ], [ %.066126.be, %.backedge.backedge ] ; 3 uses
  %i.co = load ptr, ptr %.066126, align 8         ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 4, !range !32, !noundef !9
  %i.cr = trunc nuw i8 %i.cq to i1
  %.sroa.0.0.v.i.i = select i1 %i.cr, i64 20, i64 16
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %i.co, i64 %.sroa.0.0.v.i.i
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i, i64 %indvars.iv
  %.sroa.0.0.copyload.i = load i32, ptr %i.cs, align 4
  %i.ct = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.cu = load ptr, ptr %i.bu, align 8            ; 2 uses
  %i.cv = icmp ult ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit, label %bb.m, !prof !11

bb.m:                                             ; preds = %.backedge
  %i.cw = load ptr, ptr %i.bs, align 8
  %i.cx = ptrtoint ptr %i.cu to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = ashr exact i64 %i.cz, 2
  %i.db = add nsw i64 %i.da, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.db)
  %.pre.i = load ptr, ptr %i.bt, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit: ; preds = %.backedge, %bb.m
  %i.dc = phi ptr [ %i.ct, %.backedge ], [ %.pre.i, %bb.m ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  store ptr %i.dd, ptr %i.bt, align 8
  store i32 %.sroa.0.0.copyload.i, ptr %i.dc, align 4
  br i1 %.065127, label %bb.n, label %.thread166

bb.n:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit
  %i.de = load i8, ptr %i.j, align 4, !range !32, !noundef !9
  %i.df = trunc nuw i8 %i.de to i1
  %.sroa.0.0.v.i.i80 = select i1 %i.df, i64 20, i64 16
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.sroa.0.0.v.i.i80
  %.sroa.0.0.copyload.i82 = load i32, ptr %gep, align 4
  %i.dg = load i8, ptr %i.cp, align 4, !range !32, !noundef !9
  %i.dh = trunc nuw i8 %i.dg to i1
  %.sroa.0.0.v.i.i83 = select i1 %i.dh, i64 20, i64 16
  %.sroa.0.0.i.i84 = getelementptr inbounds nuw i8, ptr %i.co, i64 %.sroa.0.0.v.i.i83
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i84, i64 %indvars.iv
  %.sroa.0.0.copyload.i85 = load i32, ptr %i.di, align 4
  %i.dj = icmp eq i32 %.sroa.0.0.copyload.i82, %.sroa.0.0.copyload.i85 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.066126, i64 8 ; 2 uses
  %.not68 = icmp eq ptr %i.dk, %i.cn
  br i1 %.not68, label %._crit_edge130, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.n, %.thread166
  %.065127.be = phi i1 [ %i.dj, %bb.n ], [ false, %.thread166 ]
  %.066126.be = phi ptr [ %i.dk, %bb.n ], [ %i.dl, %.thread166 ]
  br label %.backedge

.thread166:                                       ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %.066126, i64 8 ; 2 uses
  %.not68167 = icmp eq ptr %i.dl, %i.cn
  br i1 %.not68167, label %._crit_edge130.thread, label %.backedge.backedge

.critedge137:                                     ; preds = %._crit_edge130..critedge137_crit_edge, %bb.l
  %i.dm = phi i8 [ %.pre147, %._crit_edge130..critedge137_crit_edge ], [ %i.ck, %bb.l ]
  %i.dn = trunc nuw i8 %i.dm to i1
  %.sroa.0.0.v.i.i86 = select i1 %i.dn, i64 20, i64 16
  %.sroa.0.0.i.i87 = getelementptr inbounds nuw i8, ptr %.pre143, i64 %.sroa.0.0.v.i.i86
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i87, i64 %indvars.iv
  %.sroa.0.0.copyload.i88 = load i32, ptr %i.do, align 4
  %i.dp = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.dq = load ptr, ptr %i.h, align 8
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %bb.o, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE9push_backES5_.exit90, !prof !5

bb.o:                                             ; preds = %.critedge137
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(152) %4)
  %.pre.i.i89 = load ptr, ptr %i.g, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE9push_backES5_.exit90

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE9push_backES5_.exit90: ; preds = %.critedge137, %bb.o
  %i.ds = phi ptr [ %.pre.i.i89, %bb.o ], [ %i.dp, %.critedge137 ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store ptr %i.dt, ptr %i.g, align 8
  store i32 %.sroa.0.0.copyload.i88, ptr %i.ds, align 4
  br label %bb.ab

._crit_edge130.thread:                            ; preds = %.thread166, %._crit_edge130
  %i.du = load ptr, ptr %i.bv, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.dw, i64 %indvars.iv
  %i.dy = load i8, ptr %i.dx, align 1
  switch i8 %i.dy, label %bb.x [
    i8 1, label %bb.y
    i8 2, label %bb.y
    i8 3, label %bb.y
    i8 4, label %bb.y
    i8 5, label %bb.p
    i8 7, label %bb.q
    i8 8, label %bb.q
    i8 9, label %bb.q
    i8 12, label %bb.q
    i8 10, label %bb.r
    i8 11, label %bb.r
    i8 16, label %bb.s
    i8 17, label %bb.s
    i8 18, label %bb.t
    i8 19, label %bb.u
    i8 20, label %bb.v
    i8 6, label %bb.q
    i8 13, label %bb.p
    i8 14, label %bb.p
    i8 0, label %bb.w
    i8 15, label %bb.w
  ]

bb.p:                                             ; preds = %._crit_edge130.thread, %._crit_edge130.thread, %._crit_edge130.thread
  br label %bb.y

bb.q:                                             ; preds = %._crit_edge130.thread, %._crit_edge130.thread, %._crit_edge130.thread, %._crit_edge130.thread, %._crit_edge130.thread
  br label %bb.y

bb.r:                                             ; preds = %._crit_edge130.thread, %._crit_edge130.thread
  br label %bb.y

bb.s:                                             ; preds = %._crit_edge130.thread, %._crit_edge130.thread
  br label %bb.y

bb.t:                                             ; preds = %._crit_edge130.thread
  br label %bb.y

bb.u:                                             ; preds = %._crit_edge130.thread
  br label %bb.y

bb.v:                                             ; preds = %._crit_edge130.thread
  br label %bb.y

bb.w:                                             ; preds = %._crit_edge130.thread, %._crit_edge130.thread
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #20
  unreachable

bb.x:                                             ; preds = %._crit_edge130.thread
  unreachable

bb.y:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %._crit_edge130.thread, %._crit_edge130.thread, %._crit_edge130.thread, %._crit_edge130.thread
  %.sroa.0.0.i.i91 = phi i8 [ 0, %._crit_edge130.thread ], [ 1, %bb.p ], [ 4, %bb.q ], [ 5, %bb.r ], [ 2, %bb.s ], [ 3, %bb.t ], [ 6, %bb.u ], [ 7, %bb.v ], [ 0, %._crit_edge130.thread ], [ 0, %._crit_edge130.thread ], [ 0, %._crit_edge130.thread ]
  %i.dz = load ptr, ptr %i.bw, align 8
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE14MergeOpIndicesENS8_6VectorIKNS2_7OpIndexEEENS2_27MaybeRegisterRepresentationE.exit, label %bb.z, !prof !5

bb.z:                                             ; preds = %bb.y
  %i.eb = load ptr, ptr %i.bt, align 8
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = load ptr, ptr %i.bs, align 8            ; 2 uses
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = sub i64 %i.ec, %i.ee
  %i.eg = ashr exact i64 %i.ef, 2
  %i.eh = call i32 @_ZN2v88internal8compiler10turboshaft27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES6_EEEEEEEEEEEE9ReducePhiENS8_6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %i.ed, i64 %i.eg, i8 %.sroa.0.0.i.i91), !inline_history !83
  br label %_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE14MergeOpIndicesENS8_6VectorIKNS2_7OpIndexEEENS2_27MaybeRegisterRepresentationE.exit

_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE14MergeOpIndicesENS8_6VectorIKNS2_7OpIndexEEENS2_27MaybeRegisterRepresentationE.exit: ; preds = %bb.y, %bb.z
  %.sroa.09.0.i = phi i32 [ %i.eh, %bb.z ], [ -1, %bb.y ]
  %i.ei = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ej = load ptr, ptr %i.h, align 8
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %bb.aa, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE9push_backES5_.exit98, !prof !5

bb.aa:                                            ; preds = %_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE14MergeOpIndicesENS8_6VectorIKNS2_7OpIndexEEENS2_27MaybeRegisterRepresentationE.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(152) %4)
  %.pre.i.i97 = load ptr, ptr %i.g, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE9push_backES5_.exit98

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE9push_backES5_.exit98: ; preds = %_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE14MergeOpIndicesENS8_6VectorIKNS2_7OpIndexEEENS2_27MaybeRegisterRepresentationE.exit, %bb.aa
  %i.el = phi ptr [ %.pre.i.i97, %bb.aa ], [ %i.ei, %_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE14MergeOpIndicesENS8_6VectorIKNS2_7OpIndexEEENS2_27MaybeRegisterRepresentationE.exit ] ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  store ptr %i.em, ptr %i.g, align 8
  store i32 %.sroa.09.0.i, ptr %i.el, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE9push_backES5_.exit98, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE9push_backES5_.exit90
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.en = load i16, ptr %i.bo, align 2
  %i.eo = load i8, ptr %i.j, align 4, !range !32, !noundef !9 ; 3 uses
  %i.ep = zext nneg i8 %i.eo to i16
  %i.eq = sub i16 %i.en, %i.ep
  %i.er = zext i16 %i.eq to i64
  %i.es = icmp samesign ult i64 %indvars.iv.next, %i.er
  br i1 %i.es, label %bb.l, label %._crit_edge135, !llvm.loop !103
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES6_EEEEEEEEEEEE9ReducePhiENS8_6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, i64 %2, i8 %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %.thread162, label %bb.b

.thread162:                                       ; preds = %bb.q, %bb.o, %bb.p, %bb.h, %bb.i, %bb.j, %bb.k, %_ZNK2v88internal8compiler10turboshaft10ConstantOpeqERKS3_.exit, %bb.f, %bb.e, %bb.d, %bb.a
  %i.b = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_5PhiOpEJNS2_27ShadowyOpIndexVectorWrapperENS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, i64 %2, i8 %3)
  br label %.thread157

bb.b:                                             ; preds = %bb.a
  %.sroa.065.0.copyload = load i32, ptr %1, align 4 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %.idx = shl i64 %2, 2                           ; 2 uses
  %i.d = getelementptr i8, ptr %1, i64 %.idx      ; 3 uses
  %.not180 = icmp eq i64 %.idx, 4
  br i1 %.not180, label %.thread157, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.074181, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.e, %i.d
  br i1 %.not, label %.thread157, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.074181 = phi ptr [ %i.e, %bb.c ], [ %i.c, %bb.b ] ; 2 uses
  %i.f = load i32, ptr %.074181, align 4
  %.not169 = icmp eq i32 %i.f, %.sroa.065.0.copyload
  br i1 %.not169, label %bb.c, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds i8, ptr %0, i64 -8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !9, !align !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.l = zext i32 %.sroa.065.0.copyload to i64
  %i.m = add i64 %i.k, %i.l
  %i.n = inttoptr i64 %i.m to ptr                 ; 6 uses
  %i.o = load i8, ptr %i.n, align 4
  switch i8 %i.o, label %.thread162 [
    i8 75, label %.lr.ph185
    i8 17, label %.lr.ph188
  ]

.lr.ph185:                                        ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 5 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph185, %bb.m
  %.078184 = phi ptr [ %i.c, %.lr.ph185 ], [ %i.ao, %bb.m ] ; 2 uses
  %.sroa.032.0.copyload = load i32, ptr %.078184, align 4
  %i.r = zext i32 %.sroa.032.0.copyload to i64
  %i.s = add i64 %i.r, %i.k
  %i.t = inttoptr i64 %i.s to ptr                 ; 3 uses
  %i.u = load i8, ptr %i.t, align 4
  %.not171 = icmp eq i8 %i.u, 75
  br i1 %.not171, label %bb.f, label %.thread162

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.w = load i8, ptr %i.v, align 4               ; 3 uses
  %i.x = load i8, ptr %i.p, align 4
  %.not.i = icmp eq i8 %i.w, %i.x
  br i1 %.not.i, label %bb.g, label %.thread162

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 5 uses
  switch i8 %i.w, label %bb.l [
    i8 0, label %_ZNK2v88internal8compiler10turboshaft10ConstantOpeqERKS3_.exit
    i8 1, label %_ZNK2v88internal8compiler10turboshaft10ConstantOpeqERKS3_.exit
    i8 4, label %_ZNK2v88internal8compiler10turboshaft10ConstantOpeqERKS3_.exit
    i8 6, label %_ZNK2v88internal8compiler10turboshaft10ConstantOpeqERKS3_.exit
    i8 11, label %_ZNK2v88internal8compiler10turboshaft10ConstantOpeqERKS3_.exit
    i8 12, label %_ZNK2v88internal8compiler10turboshaft10ConstantOpeqERKS3_.exit
    i8 14, label %_ZNK2v88internal8compiler10turboshaft10ConstantOpeqERKS3_.exit
end_hunk_0
