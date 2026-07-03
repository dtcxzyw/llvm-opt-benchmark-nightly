inline.NumInlined: 28862
inline.NumDeleted: 9814
loop-unroll.NumCompletelyUnrolled: 68
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 98
begin_hunk_0_@_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEEE4GrowEm:bb.a
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 2
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 2305843009213693951
  br i1 %i.q, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 3                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS4_7OpIndexENS4_12VariableDataEEEA_S9_EEPT_m.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #22
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS4_7OpIndexENS4_12VariableDataEEEA_S9_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS4_7OpIndexENS4_12VariableDataEEEA_S9_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS4_7OpIndexENS4_12VariableDataEEEA_S9_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS4_7OpIndexENS4_12VariableDataEEEA_S9_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS4_7OpIndexENS4_12VariableDataEEEA_S9_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_18LoadRootRegisterOpEJEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7 ; 5 uses
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
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_18LoadRootRegisterOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit, !prof !5

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
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_18LoadRootRegisterOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_18LoadRootRegisterOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit: ; preds = %bb.a, %bb.b
  %.pre-phi7 = phi i64 [ %i.i, %bb.a ], [ %.pre6, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 4 uses
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
  store i8 76, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 0, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 884
  %.sroa.0.0.copyload.i = load i32, ptr %i.ai, align 4
  %i.aj = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7 ; 4 uses
  %i.ak = lshr i64 %i.i, 4
  %i.al = and i64 %i.ak, 268435455                ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 216
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 208 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 2
  %.not.i.i = icmp ugt i64 %i.at, %i.al
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.c, !prof !8

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_18LoadRootRegisterOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 200 ; 2 uses
  %i.av = lshr i64 %i.al, 1
  %i.aw = add nuw nsw i64 %i.al, 32
  %i.ax = add nuw nsw i64 %i.aw, %i.av
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 noundef %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 224
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = load ptr, ptr %i.ao, align 8
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 noundef %i.be)
  %.pre.i.i = load ptr, ptr %i.ao, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_18LoadRootRegisterOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit, %bb.c
  %i.bf = phi ptr [ %.pre.i.i, %bb.c ], [ %i.ap, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_18LoadRootRegisterOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit ]
  %i.bg = trunc i64 %i.i to i32
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.al
  store i32 %.sroa.0.0.copyload.i, ptr %i.bh, align 4
  ret i32 %i.bg
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = load ptr, ptr %0, align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.j)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.l = sub nuw nsw i64 64, %i.k                 ; 2 uses
  %i.m = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.m, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.o = shl nuw i64 4, %i.l
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 7 uses
  %i.q = icmp eq ptr %i.d, %i.b
  br i1 %i.q, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS3_3AnyEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.r = ptrtoaddr ptr %i.p to i64
  %i.s = add i64 %i.c, -4
  %i.t = sub i64 %i.s, %i.h                       ; 2 uses
  %i.u = lshr i64 %i.t, 2
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 28
  %i.w = sub i64 %i.r, %i.h
  %diff.check = icmp ult i64 %i.w, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.v, 9223372036854775800      ; 3 uses
  %i.x = shl i64 %n.vec, 2                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.p, i64 %i.x
  %i.z = getelementptr i8, ptr %i.d, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.aa ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.d, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4
  %wide.load13 = load <4 x i32>, ptr %i.ab, align 4
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load13, ptr %i.ac, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !98

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS3_3AnyEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ae = load i32, ptr %.sroa.04.07.i.i.i.i, align 4
  store i32 %i.ae, ptr %.08.i.i.i.i, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  %i.ah = icmp eq ptr %i.af, %i.b
  br i1 %i.ah, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS3_3AnyEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !99

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS3_3AnyEEES7_ET0_T_S9_S8_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ai = shl nuw i64 1, %i.l
  %i.aj = ptrtoint ptr %i.b to i64
  %i.ak = sub i64 %i.aj, %i.h
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  store ptr %i.p, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ak
  store ptr %i.al, ptr %i.a, align 8
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ai
  store ptr %i.am, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 comdat align 2 {
_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS3_3AnyEEElET_S8_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS3_3AnyEEElET_S8_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #25
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS3_3AnyEEElET_S8_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12ProjectionOpEJNS2_14ShadowyOpIndexEtNS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, i16 noundef zeroext %2, i8 %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7 ; 5 uses
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
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_12ProjectionOpEE3NewIJNS2_14ShadowyOpIndexEtNS2_22RegisterRepresentationEEEERS4_PNS2_5GraphEDpT_.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.o = sub i64 %i.l, %i.h
  %i.p = lshr exact i64 %i.o, 3
  %i.q = and i64 %i.p, 4294967295
  %i.r = add nuw nsw i64 %i.q, 2
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.r)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre10 = ptrtoint ptr %.pre to i64
  %.pre11 = sub i64 %.pre10.i.i.i.i, %.pre10
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_12ProjectionOpEE3NewIJNS2_14ShadowyOpIndexEtNS2_22RegisterRepresentationEEEERS4_PNS2_5GraphEDpT_.exit

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_12ProjectionOpEE3NewIJNS2_14ShadowyOpIndexEtNS2_22RegisterRepresentationEEEERS4_PNS2_5GraphEDpT_.exit: ; preds = %bb.a, %bb.b
  %.pre-phi12 = phi i64 [ %i.i, %bb.a ], [ %.pre11, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.c, align 8
  %i.u = trunc i64 %.pre-phi12 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.pre-phi12, 4
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
  store i8 97, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 1, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %1, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i16 %2, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  store i8 %3, ptr %i.ak, align 2
  %i.al = load ptr, ptr %i.f, align 8
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = zext i32 %1 to i64
  %i.ao = add i64 %i.am, %i.an
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.ar, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_12ProjectionOpEEEvRKT_.exit, label %bb.c, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_12ProjectionOpEE3NewIJNS2_14ShadowyOpIndexEtNS2_22RegisterRepresentationEEEERS4_PNS2_5GraphEDpT_.exit
  %i.as = add nuw i8 %i.ar, 1
  store i8 %i.as, ptr %i.aq, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_12ProjectionOpEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_12ProjectionOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_12ProjectionOpEE3NewIJNS2_14ShadowyOpIndexEtNS2_22RegisterRepresentationEEEERS4_PNS2_5GraphEDpT_.exit, %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 884
  %.sroa.0.0.copyload.i = load i32, ptr %i.at, align 4
  %i.au = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7 ; 4 uses
  %i.av = lshr i64 %i.i, 4
  %i.aw = and i64 %i.av, 268435455                ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 216
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 208 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 2
  %.not.i.i8 = icmp ugt i64 %i.be, %i.aw
  br i1 %.not.i.i8, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.d, !prof !8

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
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_11MakeTupleOpEJNS2_27ShadowyOpIndexVectorWrapperEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_:bb.a
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1             ; 2 uses
  %.not.i.i.1 = icmp eq i8 %i.bx, -1
  br i1 %.not.i.i.1, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1, label %bb.f, !prof !5

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %i.by = add nuw i8 %i.bx, 1
  store i8 %i.by, ptr %i.bw, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1: ; preds = %bb.f, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %.not.i15.1 = icmp eq ptr %i.bz, %i.av
  br i1 %.not.i15.1, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_6LoadOpEEEvRKT_.exit, label %.lr.ph.i

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_6LoadOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1, %.lr.ph.i.prol.loopexit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 884
  %.sroa.0.0.copyload.i = load i32, ptr %i.ca, align 4
  %i.cb = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7 ; 4 uses
  %i.cc = lshr i64 %i.i, 4
  %i.cd = and i64 %i.cc, 268435455                ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 216
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 208 ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8            ; 2 uses
  %i.ci = ptrtoint ptr %i.cf to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = ashr exact i64 %i.ck, 2
  %.not.i.i16 = icmp ugt i64 %i.cl, %i.cd
  br i1 %.not.i.i16, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.g, !prof !8

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_6LoadOpEEEvRKT_.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cb, i64 200 ; 2 uses
  %i.cn = lshr i64 %i.cd, 1
  %i.co = add nuw nsw i64 %i.cd, 32
  %i.cp = add nuw nsw i64 %i.co, %i.cn
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.cm, i64 noundef %i.cp)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cb, i64 224
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = load ptr, ptr %i.cg, align 8
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = ashr exact i64 %i.cv, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.cm, i64 noundef %i.cw)
  %.pre.i.i = load ptr, ptr %i.cg, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_6LoadOpEEEvRKT_.exit, %bb.g
  %i.cx = phi ptr [ %.pre.i.i, %bb.g ], [ %i.ch, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_6LoadOpEEEvRKT_.exit ]
  %i.cy = trunc i64 %i.i to i32
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cd
  store i32 %.sroa.0.0.copyload.i, ptr %i.cz, align 4
  ret i32 %i.cy
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft12FrameStateOpELm32ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft12FrameStateOpELm32ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft12FrameStateOpELm32ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
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
  br i1 %i.k, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 8, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #24 ; 5 uses
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.f                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 8
  br i1 %i.r, label %bb.f, label %bb.g, !prof !8

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.b, i64 %i.q, i1 false)
  br label %_ZSt18uninitialized_moveIPPKN2v88internal8compiler10turboshaft12FrameStateOpES7_ET0_T_S9_S8_.exit

bb.g:                                             ; preds = %bb.e
  %i.s = icmp eq i64 %i.q, 8
  br i1 %i.s, label %bb.h, label %_ZSt18uninitialized_moveIPPKN2v88internal8compiler10turboshaft12FrameStateOpES7_ET0_T_S9_S8_.exit

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.b, align 8
  store ptr %i.t, ptr %i.o, align 8
  br label %_ZSt18uninitialized_moveIPPKN2v88internal8compiler10turboshaft12FrameStateOpES7_ET0_T_S9_S8_.exit

_ZSt18uninitialized_moveIPPKN2v88internal8compiler10turboshaft12FrameStateOpES7_ET0_T_S9_S8_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.u = shl nuw i64 1, %i.j
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft12FrameStateOpELm32ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(280) %0)
  store ptr %i.o, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q
  store ptr %i.v, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.u
  store ptr %i.w, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft12FrameStateOpELm32ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #4 comdat align 2 {
_ZSt9destroy_nIPPKN2v88internal8compiler10turboshaft12FrameStateOpElET_S8_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPPKN2v88internal8compiler10turboshaft12FrameStateOpElET_S8_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #25
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPPKN2v88internal8compiler10turboshaft12FrameStateOpElET_S8_T0_.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = load ptr, ptr %0, align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.j)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.l = sub nuw nsw i64 64, %i.k                 ; 2 uses
  %i.m = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.m, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.o = shl nuw i64 4, %i.l
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 7 uses
  %i.q = icmp eq ptr %i.d, %i.b
  br i1 %i.q, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.r = ptrtoaddr ptr %i.p to i64
  %i.s = add i64 %i.c, -4
  %i.t = sub i64 %i.s, %i.h                       ; 2 uses
  %i.u = lshr i64 %i.t, 2
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 28
  %i.w = sub i64 %i.r, %i.h
  %diff.check = icmp ult i64 %i.w, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.v, 9223372036854775800      ; 3 uses
  %i.x = shl i64 %n.vec, 2                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.p, i64 %i.x
  %i.z = getelementptr i8, ptr %i.d, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.aa ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.d, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4
  %wide.load13 = load <4 x i32>, ptr %i.ab, align 4
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load13, ptr %i.ac, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !102

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ae = load i32, ptr %.sroa.04.07.i.i.i.i, align 4
  store i32 %i.ae, ptr %.08.i.i.i.i, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  %i.ah = icmp eq ptr %i.af, %i.b
  br i1 %i.ah, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !103

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ai = shl nuw i64 1, %i.l
  %i.aj = ptrtoint ptr %i.b to i64
  %i.ak = sub i64 %i.aj, %i.h
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(152) %0)
  store ptr %i.p, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ak
  store ptr %i.al, ptr %i.a, align 8
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ai
  store ptr %i.am, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #4 comdat align 2 {
_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #25
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12FrameStateOpEJNS2_27ShadowyOpIndexVectorWrapperEbPKNS2_14FrameStateDataEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, i64 %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = sub i64 %i.e, %i.h                       ; 3 uses
  %i.j = add i64 %2, 5
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
  %.pre10 = ptrtoint ptr %.pre to i64
  %.pre11 = sub i64 %.pre10.i.i.i.i, %.pre10
  br label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i

_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i: ; preds = %bb.b, %bb.a
  %.pre-phi12 = phi i64 [ %.pre11, %bb.b ], [ %i.i, %bb.a ] ; 2 uses
  %i.v = phi ptr [ %.pre.i.i.i.i, %bb.b ], [ %i.d, %bb.a ] ; 10 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.sroa.speculated.i.i.i
  store ptr %i.w, ptr %i.c, align 8
  %i.x = trunc i64 %.pre-phi12 to i32
  %i.y = trunc i64 %.sroa.speculated.i.i.i to i16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = lshr i64 %.pre-phi12, 4
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
  store i8 92, ptr %i.v, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store i8 0, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.an = trunc i64 %2 to i16                     ; 2 uses
  store i16 %i.an, ptr %i.am, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 4 uses
  %i.ap = icmp ugt i64 %2, 1
  br i1 %i.ap, label %bb.c, label %bb.d, !prof !8

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i
  %.idx.i.i.i.i.i = shl nuw nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr align 4 %1, i64 %.idx.i.i.i.i.i, i1 false)
  br label %_ZN2v88internal8compiler10turboshaft10OperationTINS2_12FrameStateOpEE3NewIJbPKNS2_14FrameStateDataEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i
  %i.aq = icmp eq i64 %2, 1
  br i1 %i.aq, label %_ZN2v88internal8compiler10turboshaft10OperationTINS2_12FrameStateOpEE3NewIJbPKNS2_14FrameStateDataEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit.thread, label %_ZN2v88internal8compiler10turboshaft10OperationTINS2_12FrameStateOpEE3NewIJbPKNS2_14FrameStateDataEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit

_ZN2v88internal8compiler10turboshaft10OperationTINS2_12FrameStateOpEE3NewIJbPKNS2_14FrameStateDataEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit.thread: ; preds = %bb.d
  %i.ar = load i32, ptr %1, align 4
  store i32 %i.ar, ptr %i.ao, align 4
  %i.as = zext i1 %3 to i8
  %i.at = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i8 %i.as, ptr %i.at, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %4, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  br label %.lr.ph.i.preheader

_ZN2v88internal8compiler10turboshaft10OperationTINS2_12FrameStateOpEE3NewIJbPKNS2_14FrameStateDataEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit: ; preds = %bb.c, %bb.d
  %i.aw = zext i1 %3 to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i8 %i.aw, ptr %i.ax, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %4, ptr %i.ay, align 8
  %i.az = shl i64 %2, 2
  %.idx.i = and i64 %i.az, 262140
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx.i
  %.not10.i = icmp eq i16 %i.an, 0
  br i1 %.not10.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_12FrameStateOpEEEvRKT_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN2v88internal8compiler10turboshaft10OperationTINS2_12FrameStateOpEE3NewIJbPKNS2_14FrameStateDataEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit.thread, %_ZN2v88internal8compiler10turboshaft10OperationTINS2_12FrameStateOpEE3NewIJbPKNS2_14FrameStateDataEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit
  %i.bb = phi ptr [ %i.av, %_ZN2v88internal8compiler10turboshaft10OperationTINS2_12FrameStateOpEE3NewIJbPKNS2_14FrameStateDataEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit.thread ], [ %i.ba, %_ZN2v88internal8compiler10turboshaft10OperationTINS2_12FrameStateOpEE3NewIJbPKNS2_14FrameStateDataEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %.011.i = phi ptr [ %i.bk, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i ], [ %i.ao, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.01.0.copyload.i = load i32, ptr %.011.i, align 4
  %i.bc = load ptr, ptr %i.f, align 8
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = zext i32 %.sroa.01.0.copyload.i to i64
  %i.bf = add i64 %i.bd, %i.be
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.bi, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, label %bb.e, !prof !5

bb.e:                                             ; preds = %.lr.ph.i
  %i.bj = add nuw i8 %i.bi, 1
  store i8 %i.bj, ptr %i.bh, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i

end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_17CatchBlockBeginOpEJEEENS2_7OpIndexEDpT0_:bb.a
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
  store i8 94, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 0, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 884
  %.sroa.0.0.copyload.i = load i32, ptr %i.ai, align 4
  %i.aj = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7 ; 4 uses
  %i.ak = lshr i64 %i.i, 4
  %i.al = and i64 %i.ak, 268435455                ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 216
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 208 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 2
  %.not.i.i = icmp ugt i64 %i.at, %i.al
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.c, !prof !8

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_17CatchBlockBeginOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 200 ; 2 uses
  %i.av = lshr i64 %i.al, 1
  %i.aw = add nuw nsw i64 %i.al, 32
  %i.ax = add nuw nsw i64 %i.aw, %i.av
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 noundef %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 224
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = load ptr, ptr %i.ao, align 8
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 noundef %i.be)
  %.pre.i.i = load ptr, ptr %i.ao, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_17CatchBlockBeginOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit, %bb.c
  %i.bf = phi ptr [ %.pre.i.i, %bb.c ], [ %i.ap, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_17CatchBlockBeginOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit ]
  %i.bg = trunc i64 %i.i to i32
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.al
  store i32 %.sroa.0.0.copyload.i, ptr %i.bh, align 4
  ret i32 %i.bg
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
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
  br i1 %i.k, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 8, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #24 ; 5 uses
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.f                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 8
  br i1 %i.r, label %bb.f, label %bb.g, !prof !8

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.b, i64 %i.q, i1 false)
  br label %_ZSt18uninitialized_moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.e
  %i.s = icmp eq i64 %i.q, 8
  br i1 %i.s, label %bb.h, label %_ZSt18uninitialized_moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.b, align 8
  store ptr %i.t, ptr %i.o, align 8
  br label %_ZSt18uninitialized_moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit

_ZSt18uninitialized_moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.u = shl nuw i64 1, %i.j
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  store ptr %i.o, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q
  store ptr %i.v, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.u
  store ptr %i.w, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #4 comdat align 2 {
_ZSt9destroy_nIPPN2v88internal8compiler10turboshaft5BlockElET_S7_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPPN2v88internal8compiler10turboshaft5BlockElET_S7_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #25
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPPN2v88internal8compiler10turboshaft5BlockElET_S7_T0_.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = load ptr, ptr %0, align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.j)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.l = sub nuw nsw i64 64, %i.k                 ; 2 uses
  %i.m = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.m, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.o = shl nuw i64 4, %i.l
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 7 uses
  %i.q = icmp eq ptr %i.d, %i.b
  br i1 %i.q, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.r = ptrtoaddr ptr %i.p to i64
  %i.s = add i64 %i.c, -4
  %i.t = sub i64 %i.s, %i.h                       ; 2 uses
  %i.u = lshr i64 %i.t, 2
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 28
  %i.w = sub i64 %i.r, %i.h
  %diff.check = icmp ult i64 %i.w, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.v, 9223372036854775800      ; 3 uses
  %i.x = shl i64 %n.vec, 2                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.p, i64 %i.x
  %i.z = getelementptr i8, ptr %i.d, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.aa ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.d, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4
  %wide.load13 = load <4 x i32>, ptr %i.ab, align 4
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load13, ptr %i.ac, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !385

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ae = load i32, ptr %.sroa.04.07.i.i.i.i, align 4
  store i32 %i.ae, ptr %.08.i.i.i.i, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  %i.ah = icmp eq ptr %i.af, %i.b
  br i1 %i.ah, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !386

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ai = shl nuw i64 1, %i.l
  %i.aj = ptrtoint ptr %i.b to i64
  %i.ak = sub i64 %i.aj, %i.h
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  store ptr %i.p, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ak
  store ptr %i.al, ptr %i.a, align 8
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ai
  store ptr %i.am, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 comdat align 2 {
_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #25
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE27AssembleOutputGraphTailCallERKNS2_10TailCallOpE(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.v8::base::SmallVector.282", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.a, align 8
  %i.b = lshr i32 %.sroa.0.0.copyload.i.i, 4
  %i.c = zext nneg i32 %i.b to i64                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, -1
  br i1 %.not.i.i, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_7OpIndexE.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.c ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.k = trunc nuw i8 %.sroa.2.0.copyload.i.i.i to i1
  br i1 %i.k, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt27__throw_bad_optional_accessv() #26
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i: ; preds = %bb.b
  %.sroa.02.0.copyload.i.i.i = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i = load i32, ptr %i.l, align 4
  br label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_7OpIndexE.exit

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_7OpIndexE.exit: ; preds = %bb.a, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i
  %.sroa.014.0.i.i = phi i32 [ %i.g, %bb.a ], [ %.sroa.02.0.copyload.i10.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.n = load i16, ptr %i.m, align 2
  %i.o = zext i16 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.q = add nsw i64 %i.o, -1                     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  store ptr %i.r, ptr %2, align 8, !alias.scope !393
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store ptr %i.r, ptr %i.s, align 8, !alias.scope !393
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 88
  store ptr %i.u, ptr %i.t, align 8, !alias.scope !393
  %.idx.i.i = shl nuw nsw i64 %i.q, 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i
  %.not11.i.i = icmp eq i64 %i.q, 0
  br i1 %.not11.i.i, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapILm16EEENSB_11SmallVectorINS2_7OpIndexEXT_ESaISR_EEENSB_6VectorIKSR_EE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_7OpIndexE.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 664
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE9push_backES5_.exit.i.i, %.lr.ph.i.i
  %.012.i.i = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.al, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE9push_backES5_.exit.i.i ] ; 2 uses
  %.sroa.02.0.copyload.i.i = load i32, ptr %.012.i.i, align 4, !noalias !393
  %i.x = lshr i32 %.sroa.02.0.copyload.i.i, 4
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = load ptr, ptr %i.d, align 8, !noalias !393
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.y
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ab, -1
  br i1 %.not.i.i.i, label %bb.e, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESM_i.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.w, align 8, !noalias !393
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.y ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  %i.ae = trunc nuw i8 %.sroa.2.0.copyload.i.i.i.i to i1
  br i1 %i.ae, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZSt27__throw_bad_optional_accessv() #26
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i: ; preds = %bb.e
  %.sroa.02.0.copyload.i.i.i.i = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i.i = load i32, ptr %i.af, align 4
  br label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESM_i.exit.i.i

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESM_i.exit.i.i: ; preds = %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i, %bb.d
  %.sroa.014.0.i.i.i = phi i32 [ %i.ab, %bb.d ], [ %.sroa.02.0.copyload.i10.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i ]
  %i.ag = load ptr, ptr %i.s, align 8, !alias.scope !393 ; 2 uses
  %i.ah = load ptr, ptr %i.t, align 8, !alias.scope !393
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.g, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE9push_backES5_.exit.i.i, !prof !5

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESM_i.exit.i.i
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %2)
  %.pre.i.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !393
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE9push_backES5_.exit.i.i

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE9push_backES5_.exit.i.i: ; preds = %bb.g, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESM_i.exit.i.i
  %i.aj = phi ptr [ %.pre.i.i.i.i, %bb.g ], [ %i.ag, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESM_i.exit.i.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store ptr %i.ak, ptr %i.s, align 8, !alias.scope !393
  store i32 %.sroa.014.0.i.i.i, ptr %i.aj, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 4 ; 2 uses
  %.not.i.i3 = icmp eq ptr %i.al, %i.v
  br i1 %.not.i.i3, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapILm16EEENSB_11SmallVectorINS2_7OpIndexEXT_ESaISR_EEENSB_6VectorIKSR_EE.exit.loopexit, label %bb.d

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapILm16EEENSB_11SmallVectorINS2_7OpIndexEXT_ESaISR_EEENSB_6VectorIKSR_EE.exit.loopexit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE9push_backES5_.exit.i.i
  %.pre = load ptr, ptr %2, align 8
  %.pre4 = load ptr, ptr %i.s, align 8
  br label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapILm16EEENSB_11SmallVectorINS2_7OpIndexEXT_ESaISR_EEENSB_6VectorIKSR_EE.exit

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapILm16EEENSB_11SmallVectorINS2_7OpIndexEXT_ESaISR_EEENSB_6VectorIKSR_EE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapILm16EEENSB_11SmallVectorINS2_7OpIndexEXT_ESaISR_EEENSB_6VectorIKSR_EE.exit.loopexit, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_7OpIndexE.exit
  %i.am = phi ptr [ %.pre4, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapILm16EEENSB_11SmallVectorINS2_7OpIndexEXT_ESaISR_EEENSB_6VectorIKSR_EE.exit.loopexit ], [ %i.r, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_7OpIndexE.exit ]
  %i.an = phi ptr [ %.pre, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapILm16EEENSB_11SmallVectorINS2_7OpIndexEXT_ESaISR_EEENSB_6VectorIKSR_EE.exit.loopexit ], [ %i.r, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_7OpIndexE.exit ] ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_10TailCallOpEJNS2_14ShadowyOpIndexENS5_6VectorINS2_7OpIndexEEEPKNS2_16TSCallDescriptorEEEESI_DpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %.sroa.014.0.i.i, ptr %i.an, i64 %i.ar, ptr noundef %i.at)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i32 %i.au
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = load ptr, ptr %0, align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.j)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.l = sub nuw nsw i64 64, %i.k                 ; 2 uses
  %i.m = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.m, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.o = shl nuw i64 4, %i.l
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 7 uses
  %i.q = icmp eq ptr %i.d, %i.b
  br i1 %i.q, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.r = ptrtoaddr ptr %i.p to i64
  %i.s = add i64 %i.c, -4
  %i.t = sub i64 %i.s, %i.h                       ; 2 uses
  %i.u = lshr i64 %i.t, 2
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 28
  %i.w = sub i64 %i.r, %i.h
  %diff.check = icmp ult i64 %i.w, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.v, 9223372036854775800      ; 3 uses
  %i.x = shl i64 %n.vec, 2                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.p, i64 %i.x
  %i.z = getelementptr i8, ptr %i.d, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.aa ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.d, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4
  %wide.load13 = load <4 x i32>, ptr %i.ab, align 4
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load13, ptr %i.ac, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !394

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ae = load i32, ptr %.sroa.04.07.i.i.i.i, align 4
  store i32 %i.ae, ptr %.08.i.i.i.i, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  %i.ah = icmp eq ptr %i.af, %i.b
  br i1 %i.ah, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !395

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ai = shl nuw i64 1, %i.l
  %i.aj = ptrtoint ptr %i.b to i64
  %i.ak = sub i64 %i.aj, %i.h
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  store ptr %i.p, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ak
  store ptr %i.al, ptr %i.a, align 8
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ai
  store ptr %i.am, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #4 comdat align 2 {
_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #25
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_10TailCallOpEJNS2_14ShadowyOpIndexENS5_6VectorINS2_7OpIndexEEEPKNS2_16TSCallDescriptorEEEESI_DpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, ptr %2, i64 %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = sub i64 %i.e, %i.h                       ; 3 uses
  %i.j = add i64 %3, 6
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
  %.pre12 = ptrtoint ptr %.pre to i64
  %.pre13 = sub i64 %.pre10.i.i.i.i, %.pre12
  br label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i

_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i: ; preds = %bb.b, %bb.a
  %.pre-phi14 = phi i64 [ %.pre13, %bb.b ], [ %i.i, %bb.a ] ; 2 uses
  %i.v = phi ptr [ %.pre.i.i.i.i, %bb.b ], [ %i.d, %bb.a ] ; 8 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.sroa.speculated.i.i.i
  store ptr %i.w, ptr %i.c, align 8
  %i.x = trunc i64 %.pre-phi14 to i32
  %i.y = trunc i64 %.sroa.speculated.i.i.i to i16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = lshr i64 %.pre-phi14, 4
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
  store i8 2, ptr %i.v, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store i8 0, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.an = trunc i64 %3 to i16
  %i.ao = add i16 %i.an, 1                        ; 3 uses
  store i16 %i.ao, ptr %i.am, align 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %4, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 4 uses
  store i32 %1, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 20 ; 2 uses
  %i.as = icmp ugt i64 %3, 1
  br i1 %i.as, label %bb.c, label %bb.d, !prof !8

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i
  %.idx.i.i.i.i = shl nuw nsw i64 %3, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ar, ptr align 4 %2, i64 %.idx.i.i.i.i, i1 false)
  br label %_ZN2v88internal8compiler10turboshaft10TailCallOp3NewEPNS2_5GraphENS2_7OpIndexENS_4base6VectorIKS6_EEPKNS2_16TSCallDescriptorE.exit

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i
  %i.at = icmp eq i64 %3, 1
  br i1 %i.at, label %bb.e, label %_ZN2v88internal8compiler10turboshaft10TailCallOp3NewEPNS2_5GraphENS2_7OpIndexENS_4base6VectorIKS6_EEPKNS2_16TSCallDescriptorE.exit

bb.e:                                             ; preds = %bb.d
  %i.au = load i32, ptr %2, align 4
  store i32 %i.au, ptr %i.ar, align 4
  br label %_ZN2v88internal8compiler10turboshaft10TailCallOp3NewEPNS2_5GraphENS2_7OpIndexENS_4base6VectorIKS6_EEPKNS2_16TSCallDescriptorE.exit

_ZN2v88internal8compiler10turboshaft10TailCallOp3NewEPNS2_5GraphENS2_7OpIndexENS_4base6VectorIKS6_EEPKNS2_16TSCallDescriptorE.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.av = zext i16 %i.ao to i64
  %.idx.i = shl nuw nsw i64 %i.av, 2              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i
  %.not10.i = icmp eq i16 %i.ao, 0
  br i1 %.not10.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10TailCallOpEEEvRKT_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN2v88internal8compiler10turboshaft10TailCallOp3NewEPNS2_5GraphENS2_7OpIndexENS_4base6VectorIKS6_EEPKNS2_16TSCallDescriptorE.exit
  %i.ax = add nsw i64 %.idx.i, -4                 ; 2 uses
  %i.ay = and i64 %i.ax, 4
  %lcmp.mod.not.not = icmp eq i64 %i.ay, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %.sroa.01.0.copyload.i.prol = load i32, ptr %i.aq, align 8
  %i.az = load ptr, ptr %i.f, align 8
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = zext i32 %.sroa.01.0.copyload.i.prol to i64
  %i.bc = add i64 %i.ba, %i.bb
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1             ; 2 uses
  %.not.i.i.prol = icmp eq i8 %i.bf, -1
  br i1 %.not.i.i.prol, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol, label %bb.f, !prof !5

bb.f:                                             ; preds = %.lr.ph.i.prol
  %i.bg = add nuw i8 %i.bf, 1
  store i8 %i.bg, ptr %i.be, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol: ; preds = %bb.f, %.lr.ph.i.prol
  %i.bh = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol, %.lr.ph.i.preheader
end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_13UnreachableOpEJEEENS2_7OpIndexEDpT0_:bb.a
  %i.cr = phi ptr [ %.pre.i.i.i.i.i, %bb.f ], [ %i.cd, %bb.e ]
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.cb
  store i32 %.sroa.0.0.copyload.i19.i.i, ptr %i.cs, align 4
  %i.ct = load ptr, ptr %i.bz, align 8
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %i.cb
  %i.cv = load i16, ptr %i.cu, align 2
  %i.cw = zext i16 %i.cv to i32
  %i.cx = shl nuw nsw i32 %i.cw, 3
  %i.cy = add i32 %i.cx, %.sroa.0.029.i.i         ; 2 uses
  %.not.i.i4 = icmp eq i32 %i.cy, %i.br
  br i1 %.not.i.i4, label %.loopexit, label %bb.e

.loopexit:                                        ; preds = %_ZN2v88internal8compiler10turboshaft5Graph10SetBlockOfENS2_10BlockIndexENS2_7OpIndexE.exit.i.i, %bb.d
  %i.cz = trunc i64 %i.i to i32
  store ptr null, ptr %i.bi, align 8
  ret i32 %i.cz
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE25AssembleOutputGraphReturnERKNS2_8ReturnOpE(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr noundef nonnull align 4 dereferenceable(5) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.v8::base::SmallVector.744", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.a, align 4
  %i.b = lshr i32 %.sroa.0.0.copyload.i.i, 4
  %i.c = zext nneg i32 %i.b to i64                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, -1
  br i1 %.not.i.i, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_7OpIndexE.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.c ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.k = trunc nuw i8 %.sroa.2.0.copyload.i.i.i to i1
  br i1 %i.k, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt27__throw_bad_optional_accessv() #26
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i: ; preds = %bb.b
  %.sroa.02.0.copyload.i.i.i = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i = load i32, ptr %i.l, align 4
  br label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_7OpIndexE.exit

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_7OpIndexE.exit: ; preds = %bb.a, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i
  %.sroa.014.0.i.i = phi i32 [ %i.g, %bb.a ], [ %.sroa.02.0.copyload.i10.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.n = load i16, ptr %i.m, align 2
  %i.o = zext i16 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.q = add nsw i64 %i.o, -1                     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  store ptr %i.r, ptr %2, align 8, !alias.scope !408
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store ptr %i.r, ptr %i.s, align 8, !alias.scope !408
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.u, ptr %i.t, align 8, !alias.scope !408
  %.idx.i.i = shl nuw nsw i64 %i.q, 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i
  %.not11.i.i = icmp eq i64 %i.q, 0
  br i1 %.not11.i.i, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapILm4EEENSB_11SmallVectorINS2_7OpIndexEXT_ESaISR_EEENSB_6VectorIKSR_EE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_7OpIndexE.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 664
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit.i.i, %.lr.ph.i.i
  %.012.i.i = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.al, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit.i.i ] ; 2 uses
  %.sroa.02.0.copyload.i.i = load i32, ptr %.012.i.i, align 4, !noalias !408
  %i.x = lshr i32 %.sroa.02.0.copyload.i.i, 4
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = load ptr, ptr %i.d, align 8, !noalias !408
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.y
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ab, -1
  br i1 %.not.i.i.i, label %bb.e, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESM_i.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.w, align 8, !noalias !408
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.y ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  %i.ae = trunc nuw i8 %.sroa.2.0.copyload.i.i.i.i to i1
  br i1 %i.ae, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZSt27__throw_bad_optional_accessv() #26
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i: ; preds = %bb.e
  %.sroa.02.0.copyload.i.i.i.i = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i.i = load i32, ptr %i.af, align 4
  br label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESM_i.exit.i.i

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESM_i.exit.i.i: ; preds = %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i, %bb.d
  %.sroa.014.0.i.i.i = phi i32 [ %i.ab, %bb.d ], [ %.sroa.02.0.copyload.i10.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i ]
  %i.ag = load ptr, ptr %i.s, align 8, !alias.scope !408 ; 2 uses
  %i.ah = load ptr, ptr %i.t, align 8, !alias.scope !408
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.g, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit.i.i, !prof !5

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESM_i.exit.i.i
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(40) %2)
  %.pre.i.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !408
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit.i.i

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit.i.i: ; preds = %bb.g, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESM_i.exit.i.i
  %i.aj = phi ptr [ %.pre.i.i.i.i, %bb.g ], [ %i.ag, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESM_i.exit.i.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store ptr %i.ak, ptr %i.s, align 8, !alias.scope !408
  store i32 %.sroa.014.0.i.i.i, ptr %i.aj, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 4 ; 2 uses
  %.not.i.i3 = icmp eq ptr %i.al, %i.v
  br i1 %.not.i.i3, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapILm4EEENSB_11SmallVectorINS2_7OpIndexEXT_ESaISR_EEENSB_6VectorIKSR_EE.exit.loopexit, label %bb.d

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapILm4EEENSB_11SmallVectorINS2_7OpIndexEXT_ESaISR_EEENSB_6VectorIKSR_EE.exit.loopexit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit.i.i
  %.pre = load ptr, ptr %2, align 8
  %.pre4 = load ptr, ptr %i.s, align 8
  br label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapILm4EEENSB_11SmallVectorINS2_7OpIndexEXT_ESaISR_EEENSB_6VectorIKSR_EE.exit

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapILm4EEENSB_11SmallVectorINS2_7OpIndexEXT_ESaISR_EEENSB_6VectorIKSR_EE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapILm4EEENSB_11SmallVectorINS2_7OpIndexEXT_ESaISR_EEENSB_6VectorIKSR_EE.exit.loopexit, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_7OpIndexE.exit
  %i.am = phi ptr [ %.pre4, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapILm4EEENSB_11SmallVectorINS2_7OpIndexEXT_ESaISR_EEENSB_6VectorIKSR_EE.exit.loopexit ], [ %i.r, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_7OpIndexE.exit ]
  %i.an = phi ptr [ %.pre, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapILm4EEENSB_11SmallVectorINS2_7OpIndexEXT_ESaISR_EEENSB_6VectorIKSR_EE.exit.loopexit ], [ %i.r, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_7OpIndexE.exit ] ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.at = load i8, ptr %i.as, align 4, !range !11, !noundef !6
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_8ReturnOpEJNS2_14ShadowyOpIndexENS5_6VectorINS2_7OpIndexEEEbEEESI_DpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %.sroa.014.0.i.i, ptr %i.an, i64 %i.ar, i1 noundef zeroext %i.au)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(40) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i32 %i.av
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = load ptr, ptr %0, align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.j)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.l = sub nuw nsw i64 64, %i.k                 ; 2 uses
  %i.m = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.m, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.o = shl nuw i64 4, %i.l
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 7 uses
  %i.q = icmp eq ptr %i.d, %i.b
  br i1 %i.q, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.r = ptrtoaddr ptr %i.p to i64
  %i.s = add i64 %i.c, -4
  %i.t = sub i64 %i.s, %i.h                       ; 2 uses
  %i.u = lshr i64 %i.t, 2
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 28
  %i.w = sub i64 %i.r, %i.h
  %diff.check = icmp ult i64 %i.w, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.v, 9223372036854775800      ; 3 uses
  %i.x = shl i64 %n.vec, 2                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.p, i64 %i.x
  %i.z = getelementptr i8, ptr %i.d, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.aa ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.d, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4
  %wide.load13 = load <4 x i32>, ptr %i.ab, align 4
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load13, ptr %i.ac, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !409

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ae = load i32, ptr %.sroa.04.07.i.i.i.i, align 4
  store i32 %i.ae, ptr %.08.i.i.i.i, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  %i.ah = icmp eq ptr %i.af, %i.b
  br i1 %i.ah, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !410

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ai = shl nuw i64 1, %i.l
  %i.aj = ptrtoint ptr %i.b to i64
  %i.ak = sub i64 %i.aj, %i.h
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  store ptr %i.p, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ak
  store ptr %i.al, ptr %i.a, align 8
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ai
  store ptr %i.am, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 comdat align 2 {
_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #25
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_8ReturnOpEJNS2_14ShadowyOpIndexENS5_6VectorINS2_7OpIndexEEEbEEESI_DpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, ptr %2, i64 %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = sub i64 %i.e, %i.h                       ; 3 uses
  %i.j = add i64 %3, 4
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
  %.pre13 = ptrtoint ptr %.pre to i64
  %.pre14 = sub i64 %.pre10.i.i.i.i, %.pre13
  br label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i

_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i: ; preds = %bb.b, %bb.a
  %.pre-phi15 = phi i64 [ %.pre14, %bb.b ], [ %i.i, %bb.a ] ; 2 uses
  %i.v = phi ptr [ %.pre.i.i.i.i, %bb.b ], [ %i.d, %bb.a ] ; 8 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.sroa.speculated.i.i.i
  store ptr %i.w, ptr %i.c, align 8
  %i.x = trunc i64 %.pre-phi15 to i32
  %i.y = trunc i64 %.sroa.speculated.i.i.i to i16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = lshr i64 %.pre-phi15, 4
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
  %i.al = zext i1 %4 to i8
  store i8 4, ptr %i.v, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store i8 0, ptr %i.am, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.ao = trunc i64 %3 to i16
  %i.ap = add i16 %i.ao, 1                        ; 3 uses
  store i16 %i.ap, ptr %i.an, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i8 %i.al, ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  store i32 %1, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.v, i64 12 ; 2 uses
  %i.at = icmp ugt i64 %3, 1
  br i1 %i.at, label %bb.c, label %bb.d, !prof !8

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i
  %.idx.i.i.i.i = shl nuw nsw i64 %3, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.as, ptr align 4 %2, i64 %.idx.i.i.i.i, i1 false)
  br label %_ZN2v88internal8compiler10turboshaft8ReturnOp3NewEPNS2_5GraphENS2_1VINS2_12WordWithBitsILm32EEEEENS_4base6VectorIKNS2_7OpIndexEEEb.exit

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i
  %i.au = icmp eq i64 %3, 1
  br i1 %i.au, label %bb.e, label %_ZN2v88internal8compiler10turboshaft8ReturnOp3NewEPNS2_5GraphENS2_1VINS2_12WordWithBitsILm32EEEEENS_4base6VectorIKNS2_7OpIndexEEEb.exit

bb.e:                                             ; preds = %bb.d
  %i.av = load i32, ptr %2, align 4
  store i32 %i.av, ptr %i.as, align 4
  br label %_ZN2v88internal8compiler10turboshaft8ReturnOp3NewEPNS2_5GraphENS2_1VINS2_12WordWithBitsILm32EEEEENS_4base6VectorIKNS2_7OpIndexEEEb.exit

_ZN2v88internal8compiler10turboshaft8ReturnOp3NewEPNS2_5GraphENS2_1VINS2_12WordWithBitsILm32EEEEENS_4base6VectorIKNS2_7OpIndexEEEb.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.aw = zext i16 %i.ap to i64
  %.idx.i = shl nuw nsw i64 %i.aw, 2              ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.idx.i
  %.not10.i = icmp eq i16 %i.ap, 0
  br i1 %.not10.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_8ReturnOpEEEvRKT_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN2v88internal8compiler10turboshaft8ReturnOp3NewEPNS2_5GraphENS2_1VINS2_12WordWithBitsILm32EEEEENS_4base6VectorIKNS2_7OpIndexEEEb.exit
  %i.ay = add nsw i64 %.idx.i, -4                 ; 2 uses
  %i.az = and i64 %i.ay, 4
  %lcmp.mod.not.not = icmp eq i64 %i.az, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %.sroa.01.0.copyload.i.prol = load i32, ptr %i.ar, align 4
  %i.ba = load ptr, ptr %i.f, align 8
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = zext i32 %.sroa.01.0.copyload.i.prol to i64
  %i.bd = add i64 %i.bb, %i.bc
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1             ; 2 uses
  %.not.i.i.prol = icmp eq i8 %i.bg, -1
  br i1 %.not.i.i.prol, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol, label %bb.f, !prof !5

bb.f:                                             ; preds = %.lr.ph.i.prol
  %i.bh = add nuw i8 %i.bg, 1
  store i8 %i.bh, ptr %i.bf, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol: ; preds = %bb.f, %.lr.ph.i.prol
  %i.bi = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  br label %.lr.ph.i.prol.loopexit

end_hunk_3
begin_hunk_4_@_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE13BranchAndBindENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockESK_NS0_10BranchHintESK_:bb.a
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit: ; preds = %bb.g, %bb.h
  %i.bi = phi ptr [ %i.ay, %bb.g ], [ %.pre.i, %bb.h ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bj, ptr %i.ab, align 8
  store ptr %5, ptr %i.bi, align 8
  %i.bk = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.i, label %.preheader.i, !prof !5

.preheader.i:                                     ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit
  %.0.in8.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  %.09.i = load ptr, ptr %.0.in8.i, align 8       ; 2 uses
  %.not10.i = icmp eq ptr %.09.i, null
  br i1 %.not10.i, label %._crit_edge.i, label %.lr.ph.i

bb.i:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %5, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i8 0, i64 16, i1 false)
  br label %bb.m

._crit_edge.i:                                    ; preds = %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i, %.preheader.i
  %.07.lcssa.i = phi ptr [ %i.bk, %.preheader.i ], [ %.2.lcssa.i.i, %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i ] ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8            ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 20 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 20
  %i.bt = load i32, ptr %i.bs, align 4            ; 2 uses
  %i.bu = sub nsw i32 %i.br, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bw = load i32, ptr %i.bv, align 8
  %i.bx = sub nsw i32 %i.bt, %i.bw
  %i.by = icmp eq i32 %i.bu, %i.bx
  br i1 %i.by, label %bb.j, label %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i

bb.j:                                             ; preds = %._crit_edge.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8
  br label %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i

_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i: ; preds = %bb.j, %._crit_edge.i
  %.0.i.i = phi ptr [ %i.ca, %bb.j ], [ %.07.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %.07.lcssa.i, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %.0.i.i, ptr %i.cc, align 8
  %i.cd = load i32, ptr %i.bq, align 4
  %i.ce = add nsw i32 %i.cd, 1
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  store i32 %i.ce, ptr %i.cf, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 20
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %i.ch, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 8 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8
  store ptr %i.ck, ptr %5, align 8
  store ptr %5, ptr %i.cj, align 8
  %.pre.i21 = load i32, ptr %i.cf, align 4
  br label %bb.m

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i
  %.012.i = phi ptr [ %.0.i19, %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i ], [ %.09.i, %.preheader.i ] ; 4 uses
  %.0711.i = phi ptr [ %.2.lcssa.i.i, %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i ], [ %i.bk, %.preheader.i ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i, i64 20
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %.0711.i, i64 20
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = icmp sgt i32 %i.cm, %i.co               ; 2 uses
  %spec.select.i.i = select i1 %i.cp, ptr %.012.i, ptr %.0711.i ; 3 uses
  %spec.select17.i.i = select i1 %i.cp, ptr %.0711.i, ptr %.012.i ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %spec.select17.i.i, i64 20
  %i.cr = load i32, ptr %i.cq, align 4            ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 20
  %i.ct = load i32, ptr %i.cs, align 4
  %.not18.i.i = icmp eq i32 %i.ct, %i.cr
  br i1 %.not18.i.i, label %.preheader.i.i, label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i
  %.116.lcssa.i.i = phi ptr [ %spec.select.i.i, %.lr.ph.i ], [ %storemerge7.i.i, %.lr.ph.i.i ] ; 3 uses
  %.not520.i.i = icmp eq ptr %.116.lcssa.i.i, %spec.select17.i.i
  br i1 %.not520.i.i, label %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i, label %.lr.ph23.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i, %.lr.ph.i.i
  %.11619.i.i = phi ptr [ %storemerge7.i.i, %.lr.ph.i.i ], [ %spec.select.i.i, %.lr.ph.i ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.11619.i.i, i64 16
  %i.cv = load i32, ptr %i.cu, align 8
  %.not6.i.i = icmp slt i32 %i.cv, %i.cr
  %storemerge7.in.v.i.i = select i1 %.not6.i.i, i64 24, i64 32
  %storemerge7.in.i.i = getelementptr inbounds nuw i8, ptr %.11619.i.i, i64 %storemerge7.in.v.i.i
  %storemerge7.i.i = load ptr, ptr %storemerge7.in.i.i, align 8 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %storemerge7.i.i, i64 20
  %i.cx = load i32, ptr %i.cw, align 4
  %.not.i.i = icmp eq i32 %i.cx, %i.cr
  br i1 %.not.i.i, label %.preheader.i.i, label %.lr.ph.i.i, !llvm.loop !36

.lr.ph23.i.i:                                     ; preds = %.preheader.i.i, %bb.l
  %.122.i.i = phi ptr [ %storemerge.i.i, %bb.l ], [ %spec.select17.i.i, %.preheader.i.i ] ; 2 uses
  %.221.i.i = phi ptr [ %.3.i.i, %bb.l ], [ %.116.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.221.i.i, i64 32
  %i.cz = load ptr, ptr %i.cy, align 8            ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.122.i.i, i64 32
  %i.db = load ptr, ptr %i.da, align 8            ; 2 uses
  %i.dc = icmp eq ptr %i.cz, %i.db
  br i1 %i.dc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph23.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %.221.i.i, i64 24
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %.122.i.i, i64 24
  %storemerge.pre.i.i = load ptr, ptr %i.df, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph23.i.i
  %storemerge.i.i = phi ptr [ %storemerge.pre.i.i, %bb.k ], [ %i.db, %.lr.ph23.i.i ] ; 2 uses
  %.3.i.i = phi ptr [ %i.de, %bb.k ], [ %i.cz, %.lr.ph23.i.i ] ; 3 uses
  %.not5.i.i = icmp eq ptr %.3.i.i, %storemerge.i.i
  br i1 %.not5.i.i, label %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i, label %.lr.ph23.i.i, !llvm.loop !37

_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i: ; preds = %bb.l, %.preheader.i.i
  %.2.lcssa.i.i = phi ptr [ %.116.lcssa.i.i, %.preheader.i.i ], [ %.3.i.i, %bb.l ] ; 2 uses
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.012.i, i64 64
  %.0.i19 = load ptr, ptr %.0.in.i, align 8       ; 2 uses
  %.not.i20 = icmp eq ptr %.0.i19, null
  br i1 %.not.i20, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !38

bb.m:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i, %bb.i
  %i.dg = phi i32 [ %.pre.i21, %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i ], [ 0, %bb.i ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.z, i64 232 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 8
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.di, i32 %i.dg)
  store i32 %.sroa.speculated, ptr %i.dh, align 8
  store ptr %5, ptr %i.c, align 8
  %i.dj = getelementptr inbounds i8, ptr %0, i64 -728
  tail call void @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S8_EEEEEEEEEEEEEEEE4BindEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(728) %i.dj, ptr noundef nonnull %5)
  %i.dk = getelementptr inbounds i8, ptr %0, i64 -184
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 88
  store ptr %i.dl, ptr %i.dm, align 8
  br label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit

_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit: ; preds = %bb.f, %bb.m
  ret i32 %.not
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEELm2ESaIS8_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEELm2ESaIS8_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEELm2ESaIS8_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = load ptr, ptr %0, align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.j)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.l = sub nuw nsw i64 64, %i.k                 ; 2 uses
  %i.m = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.m, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.o = shl nuw i64 4, %i.l
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 7 uses
  %i.q = icmp eq ptr %i.d, %i.b
  br i1 %i.q, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS3_12WordWithBitsILm32EEEEES8_ET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.r = ptrtoaddr ptr %i.p to i64
  %i.s = add i64 %i.c, -4
  %i.t = sub i64 %i.s, %i.h                       ; 2 uses
  %i.u = lshr i64 %i.t, 2
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 28
  %i.w = sub i64 %i.r, %i.h
  %diff.check = icmp ult i64 %i.w, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.v, 9223372036854775800      ; 3 uses
  %i.x = shl i64 %n.vec, 2                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.p, i64 %i.x
  %i.z = getelementptr i8, ptr %i.d, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.aa ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.d, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4
  %wide.load13 = load <4 x i32>, ptr %i.ab, align 4
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load13, ptr %i.ac, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !583

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS3_12WordWithBitsILm32EEEEES8_ET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ae = load i32, ptr %.sroa.04.07.i.i.i.i, align 4
  store i32 %i.ae, ptr %.08.i.i.i.i, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  %i.ah = icmp eq ptr %i.af, %i.b
  br i1 %i.ah, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS3_12WordWithBitsILm32EEEEES8_ET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !584

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS3_12WordWithBitsILm32EEEEES8_ET0_T_SA_S9_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ai = shl nuw i64 1, %i.l
  %i.aj = ptrtoint ptr %i.b to i64
  %i.ak = sub i64 %i.aj, %i.h
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEELm2ESaIS8_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  store ptr %i.p, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ak
  store ptr %i.al, ptr %i.a, align 8
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ai
  store ptr %i.am, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEELm2ESaIS8_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 {
_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS3_12WordWithBitsILm32EEEEElET_S9_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS3_12WordWithBitsILm32EEEEElET_S9_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #25
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS3_12WordWithBitsILm32EEEEElET_S9_T0_.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
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
  br i1 %i.k, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 8, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #24 ; 5 uses
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.f                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 8
  br i1 %i.r, label %bb.f, label %bb.g, !prof !8

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.b, i64 %i.q, i1 false)
  br label %_ZSt18uninitialized_moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.e
  %i.s = icmp eq i64 %i.q, 8
  br i1 %i.s, label %bb.h, label %_ZSt18uninitialized_moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.b, align 8
  store ptr %i.t, ptr %i.o, align 8
  br label %_ZSt18uninitialized_moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit

_ZSt18uninitialized_moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.u = shl nuw i64 1, %i.j
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  store ptr %i.o, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q
  store ptr %i.v, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.u
  store ptr %i.w, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 comdat align 2 {
_ZSt9destroy_nIPPN2v88internal8compiler10turboshaft5BlockElET_S7_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPPN2v88internal8compiler10turboshaft5BlockElET_S7_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #25
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPPN2v88internal8compiler10turboshaft5BlockElET_S7_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, i32 %2, i8 noundef zeroext %3, i8 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = sub i64 %i.e, %i.h                       ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = sub i64 %i.l, %i.e
  %i.n = icmp ult i64 %i.m, 9
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_12ComparisonOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_4KindENS2_18WordRepresentationEEEERS4_PNS2_5GraphEDpT_.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.o = sub i64 %i.l, %i.h
  %i.p = lshr exact i64 %i.o, 3
  %i.q = and i64 %i.p, 4294967295
  %i.r = add nuw nsw i64 %i.q, 2
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.r)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre13 = ptrtoint ptr %.pre to i64
  %.pre14 = sub i64 %.pre10.i.i.i.i, %.pre13
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_12ComparisonOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_4KindENS2_18WordRepresentationEEEERS4_PNS2_5GraphEDpT_.exit
end_hunk_4
begin_hunk_5_@_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE31WasmCallBuiltinThroughJumptableINS2_21BuiltinCallDescriptor27WasmInt32ToSharedHeapNumberEEENS2_6detail12IndexTypeForINT_9results_tEE4typeERKNSK_11arguments_tEQntsrTL0__13kNeedsContext:bb.a
  %i.t = call noundef ptr @_ZN2v88internal8compiler7Linkage21GetStubCallDescriptorEPNS0_4ZoneERKNS0_23CallInterfaceDescriptorEiNS_4base5FlagsINS1_14CallDescriptor4FlagEiiEENS9_INS1_8Operator8PropertyEhhEENS0_12StubCallModeE(ptr noundef %i.n, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.s, i32 0, i8 124, i32 noundef 1) #22
  %i.u = call noundef ptr @_ZN2v88internal8compiler10turboshaft16TSCallDescriptor6CreateEPKNS1_14CallDescriptorENS1_8CanThrowENS1_16LazyDeoptOnThrowEPNS0_4ZoneEPKNS1_20JSWasmCallParametersE(ptr noundef %i.t, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef %i.n, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.v = load ptr, ptr %i.a, align 8
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSK_INSG_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit, label %bb.b, !prof !5

bb.b:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE32RelocatableWasmBuiltinCallTargetENS0_7BuiltinE.exit
  %i.x = ptrtoint ptr %.pre10 to i64
  %i.y = ptrtoint ptr %.pre to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 2
  %i.ab = getelementptr inbounds i8, ptr %0, i64 -728
  %i.ac = call i32 @_ZN2v88internal8compiler10turboshaft23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S7_EEEEEEEEEEEEEE10ReduceCallENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSM_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS9_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i32 %i.j, i32 -1, ptr %.pre, i64 %i.aa, ptr noundef %i.u, i32 155664)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSK_INSG_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSK_INSG_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE32RelocatableWasmBuiltinCallTargetENS0_7BuiltinE.exit, %bb.b
  %.sroa.011.0.i.i = phi i32 [ %i.ac, %bb.b ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE32RelocatableWasmBuiltinCallTargetENS0_7BuiltinE.exit ]
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm1ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(28) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSK_INSG_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit
  %.sroa.07.0 = phi i32 [ %.sroa.011.0.i.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSK_INSG_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit ], [ -1, %bb.a ]
  ret i32 %.sroa.07.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE31WasmCallBuiltinThroughJumptableINS2_21BuiltinCallDescriptor21WasmInt32ToHeapNumberEEENS2_6detail12IndexTypeForINT_9results_tEE4typeERKNSK_11arguments_tEQntsrTL0__13kNeedsContext(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::CallInterfaceDescriptor", align 8 ; 4 uses
  %3 = alloca %"class.v8::base::SmallVector.889", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE32RelocatableWasmBuiltinCallTargetENS0_7BuiltinE.exit, !prof !5

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE32RelocatableWasmBuiltinCallTargetENS0_7BuiltinE.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !663)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !666)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !669)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !672)
  %i.d = load i32, ptr %1, align 4, !noalias !675
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.e, ptr %3, align 8, !alias.scope !675
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !alias.scope !675
  store i32 %i.d, ptr %i.e, align 8, !alias.scope !675
  store ptr %i.h, ptr %i.f, align 8, !alias.scope !675
  %i.i = getelementptr inbounds i8, ptr %0, i64 -728
  %i.j = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.i, i8 noundef zeroext 12, i64 noundef 1317)
  %.pre = load ptr, ptr %3, align 8               ; 2 uses
  %.pre10 = load ptr, ptr %i.f, align 8
  %i.k = getelementptr inbounds i8, ptr %0, i64 -736
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !6, !align !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.o = call ptr @_ZN2v88internal8Builtins26CallInterfaceDescriptorForENS0_7BuiltinE(i32 noundef 1317) #22 ; 3 uses
  store ptr %i.o, ptr %2, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 8
  %i.r = load i32, ptr %i.o, align 8
  %i.s = sub nsw i32 %i.q, %i.r
  %i.t = call noundef ptr @_ZN2v88internal8compiler7Linkage21GetStubCallDescriptorEPNS0_4ZoneERKNS0_23CallInterfaceDescriptorEiNS_4base5FlagsINS1_14CallDescriptor4FlagEiiEENS9_INS1_8Operator8PropertyEhhEENS0_12StubCallModeE(ptr noundef %i.n, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.s, i32 0, i8 124, i32 noundef 1) #22
  %i.u = call noundef ptr @_ZN2v88internal8compiler10turboshaft16TSCallDescriptor6CreateEPKNS1_14CallDescriptorENS1_8CanThrowENS1_16LazyDeoptOnThrowEPNS0_4ZoneEPKNS1_20JSWasmCallParametersE(ptr noundef %i.t, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef %i.n, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.v = load ptr, ptr %i.a, align 8
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSK_INSG_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit, label %bb.b, !prof !5

bb.b:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE32RelocatableWasmBuiltinCallTargetENS0_7BuiltinE.exit
  %i.x = ptrtoint ptr %.pre10 to i64
  %i.y = ptrtoint ptr %.pre to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 2
  %i.ab = getelementptr inbounds i8, ptr %0, i64 -728
  %i.ac = call i32 @_ZN2v88internal8compiler10turboshaft23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S7_EEEEEEEEEEEEEE10ReduceCallENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSM_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS9_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i32 %i.j, i32 -1, ptr %.pre, i64 %i.aa, ptr noundef %i.u, i32 155664)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSK_INSG_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSK_INSG_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE32RelocatableWasmBuiltinCallTargetENS0_7BuiltinE.exit, %bb.b
  %.sroa.011.0.i.i = phi i32 [ %i.ac, %bb.b ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE32RelocatableWasmBuiltinCallTargetENS0_7BuiltinE.exit ]
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm1ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(28) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSK_INSG_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit
  %.sroa.07.0 = phi i32 [ %.sroa.011.0.i.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSK_INSG_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit ], [ -1, %bb.a ]
  ret i32 %.sroa.07.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6TagSmiENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE(ptr noundef nonnull align 8 dereferenceable(136) %0, i64 %1, i32 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i64 %1, 4294967296
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit, label %bb.c, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.e = and i64 %1, 4294967295
  %i.f = getelementptr inbounds i8, ptr %0, i64 -728
  %i.g = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.f, i8 noundef zeroext 0, i64 noundef %i.e)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi i32 [ -1, %bb.b ], [ %i.g, %bb.c ], [ %2, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE19BitcastWordPtrToSmiENS2_1VINS2_12WordWithBitsILm64EEEEE.exit, label %bb.d, !prof !5

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit
  %i.k = getelementptr inbounds i8, ptr %0, i64 -728 ; 4 uses
  %i.l = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_8ChangeOpEJNS2_14ShadowyOpIndexENSF_4KindENSF_10AssumptionENS2_18WordRepresentationESJ_EEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.k, i32 %.sroa.0.0.i, i8 noundef zeroext 11, i8 noundef zeroext 0, i8 0, i8 1)
  %.pr = load ptr, ptr %i.h, align 8
  %i.m = icmp eq ptr %.pr, null
  br i1 %i.m, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE19BitcastWordPtrToSmiENS2_1VINS2_12WordWithBitsILm64EEEEE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i, !prof !61

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i: ; preds = %bb.d
  %i.n = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.k, i8 noundef zeroext 0, i64 noundef 32)
  %.pr17 = load ptr, ptr %i.h, align 8
  %i.o = icmp eq ptr %.pr17, null
  br i1 %i.o, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE19BitcastWordPtrToSmiENS2_1VINS2_12WordWithBitsILm64EEEEE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE16WordPtrShiftLeftENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEENSF_INSG_ILm32EEEjEE.exit, !prof !61

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE16WordPtrShiftLeftENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEENSF_INSG_ILm32EEEjEE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i
  %i.p = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_7ShiftOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.k, i32 %i.l, i32 %i.n, i8 noundef zeroext 3, i8 1)
  %.pr20.pr = load ptr, ptr %i.h, align 8
  %i.q = icmp eq ptr %.pr20.pr, null
  br i1 %i.q, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE19BitcastWordPtrToSmiENS2_1VINS2_12WordWithBitsILm64EEEEE.exit, label %bb.e, !prof !61

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE16WordPtrShiftLeftENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEENSF_INSG_ILm32EEEjEE.exit
  %i.r = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_15TaggedBitcastOpEJNS2_14ShadowyOpIndexENS2_22RegisterRepresentationESH_NSF_4KindEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.k, i32 %i.p, i8 1, i8 4, i8 noundef zeroext 0)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE19BitcastWordPtrToSmiENS2_1VINS2_12WordWithBitsILm64EEEEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE19BitcastWordPtrToSmiENS2_1VINS2_12WordWithBitsILm64EEEEE.exit: ; preds = %bb.d, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE16WordPtrShiftLeftENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEENSF_INSG_ILm32EEEjEE.exit, %bb.e
  %.sroa.06.0.i.i.i = phi i32 [ %i.r, %bb.e ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE16WordPtrShiftLeftENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEENSF_INSG_ILm32EEEjEE.exit ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit ], [ -1, %bb.d ]
  ret i32 %.sroa.06.0.i.i.i
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = load ptr, ptr %0, align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.j)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.l = sub nuw nsw i64 64, %i.k                 ; 2 uses
  %i.m = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.m, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.o = shl nuw i64 4, %i.l
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 7 uses
  %i.q = icmp eq ptr %i.d, %i.b
  br i1 %i.q, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_6ObjectEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.r = ptrtoaddr ptr %i.p to i64
  %i.s = add i64 %i.c, -4
  %i.t = sub i64 %i.s, %i.h                       ; 2 uses
  %i.u = lshr i64 %i.t, 2
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 28
  %i.w = sub i64 %i.r, %i.h
  %diff.check = icmp ult i64 %i.w, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.v, 9223372036854775800      ; 3 uses
  %i.x = shl i64 %n.vec, 2                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.p, i64 %i.x
  %i.z = getelementptr i8, ptr %i.d, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.aa ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.d, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4
  %wide.load13 = load <4 x i32>, ptr %i.ab, align 4
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load13, ptr %i.ac, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !676

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_6ObjectEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ae = load i32, ptr %.sroa.04.07.i.i.i.i, align 4
  store i32 %i.ae, ptr %.08.i.i.i.i, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  %i.ah = icmp eq ptr %i.af, %i.b
  br i1 %i.ah, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_6ObjectEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !677

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_6ObjectEEES7_ET0_T_S9_S8_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ai = shl nuw i64 1, %i.l
  %i.aj = ptrtoint ptr %i.b to i64
  %i.ak = sub i64 %i.aj, %i.h
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  store ptr %i.p, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ak
  store ptr %i.al, ptr %i.a, align 8
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ai
  store ptr %i.am, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 {
_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS1_6ObjectEEElET_S8_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS1_6ObjectEEElET_S8_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #25
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS1_6ObjectEEElET_S8_T0_.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm1ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(28) %0) local_unnamed_addr #4 comdat align 2 {
_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #25
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S7_EEEEEEEEEEEEEE10ReduceCallENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSM_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS9_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 %1, i32 %2, ptr %3, i64 %4, ptr noundef %5, i32 %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_6CallOpEJNS2_14ShadowyOpIndexENS2_9OptionalVINS2_10FrameStateEEENS2_27ShadowyOpIndexVectorWrapperEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, i32 %2, ptr %3, i64 %4, ptr noundef nonnull %5, i32 %6) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.e = load i8, ptr %i.d, align 8
  %i.f = icmp eq i8 %i.e, 1
  br i1 %i.f, label %bb.c, label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES6_EEEEEEEEEE10ReduceCallIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSM_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS8_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit

bb.c:                                             ; preds = %bb.b
  %.sroa.4.0.extract.trunc21.i.i.i.i = or i32 %6, 262144
  %i.g = tail call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES4_EEEEEEEE19CatchIfInCatchScopeENS2_7OpIndexE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %i.c)
  br label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES6_EEEEEEEEEE10ReduceCallIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSM_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS8_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit

_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES6_EEEEEEEEEE10ReduceCallIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSM_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS8_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit: ; preds = %bb.b, %bb.c
  %.sroa.4.0.i.i.i.i = phi i32 [ %.sroa.4.0.extract.trunc21.i.i.i.i, %bb.c ], [ %6, %bb.b ]
  %.0.i.i.i.i = phi i1 [ %i.g, %bb.c ], [ false, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.4.0.insert.ext.i.i.i.i = and i32 %.sroa.4.0.i.i.i.i, 16711680
  %i.i = and i32 %6, -16711681
  %.sroa.018.0.insert.insert.i.i.i.i = or disjoint i32 %.sroa.4.0.insert.ext.i.i.i.i, %i.i
  %i.j = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12DidntThrowOpEJNS2_14ShadowyOpIndexEbPKNS5_6VectorIKNS2_22RegisterRepresentationEEENS2_9OpEffectsEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %i.c, i1 noundef zeroext %.0.i.i.i.i, ptr noundef nonnull %i.h, i32 %.sroa.018.0.insert.insert.i.i.i.i)
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.k = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 681), align 1, !range !11, !noundef !6
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.f, label %bb.e, !prof !8

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.19) #23
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.b, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = load i32, ptr %i.n, align 8
  %i.p = tail call i32 @_ZN2v88internal8compiler10turboshaft23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S7_EEEEEEEEEEEEEE17TryInlineWasmCallEPNS0_4wasm12NativeModuleEjNS9_6VectorIKNS2_7OpIndexEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.m, i32 noundef %i.o, ptr %3, i64 %4) ; 2 uses
  %.not36 = icmp eq i32 %i.p, -1
  br i1 %.not36, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.q = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_6CallOpEJNS2_14ShadowyOpIndexENS2_9OptionalVINS2_10FrameStateEEENS2_27ShadowyOpIndexVectorWrapperEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, i32 %2, ptr %3, i64 %4, ptr noundef nonnull %5, i32 %6) ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.s = load i8, ptr %i.r, align 8
  %i.t = icmp eq i8 %i.s, 1
  br i1 %i.t, label %bb.h, label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES6_EEEEEEEEEE10ReduceCallIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSM_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS8_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit33

bb.h:                                             ; preds = %bb.g
  %.sroa.4.0.extract.trunc21.i.i.i.i32 = or i32 %6, 262144
  %i.u = tail call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES4_EEEEEEEE19CatchIfInCatchScopeENS2_7OpIndexE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %i.q)
  br label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES6_EEEEEEEEEE10ReduceCallIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSM_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS8_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit33

_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES6_EEEEEEEEEE10ReduceCallIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSM_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS8_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit33: ; preds = %bb.g, %bb.h
  %.sroa.4.0.i.i.i.i28 = phi i32 [ %.sroa.4.0.extract.trunc21.i.i.i.i32, %bb.h ], [ %6, %bb.g ]
  %.0.i.i.i.i29 = phi i1 [ %i.u, %bb.h ], [ false, %bb.g ]
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.4.0.insert.ext.i.i.i.i30 = and i32 %.sroa.4.0.i.i.i.i28, 16711680
  %i.w = and i32 %6, -16711681
  %.sroa.018.0.insert.insert.i.i.i.i31 = or disjoint i32 %.sroa.4.0.insert.ext.i.i.i.i30, %i.w
  %i.x = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12DidntThrowOpEJNS2_14ShadowyOpIndexEbPKNS5_6VectorIKNS2_22RegisterRepresentationEEENS2_9OpEffectsEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %i.q, i1 noundef zeroext %.0.i.i.i.i29, ptr noundef nonnull %i.v, i32 %.sroa.018.0.insert.insert.i.i.i.i31)
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES6_EEEEEEEEEE10ReduceCallIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSM_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS8_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit, %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES6_EEEEEEEEEE10ReduceCallIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSM_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS8_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit33
  %.sink41 = phi i32 [ %i.x, %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES6_EEEEEEEEEE10ReduceCallIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSM_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS8_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit33 ], [ %i.j, %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES6_EEEEEEEEEE10ReduceCallIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSM_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS8_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit ] ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %0, i64 -8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !6, !align !7
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = zext i32 %.sink41 to i64
  %i.ae = add i64 %i.ac, %i.ad
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = tail call i32 @_ZN2v88internal8compiler10turboshaft21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES5_EEEEEEEEEE19WrapInTupleIfNeededINS2_12DidntThrowOpEEENS2_1VINS2_3AnyEEERKT_SM_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i32 %.sink41)
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.f
  %.sroa.034.0 = phi i32 [ %i.p, %bb.f ], [ %i.ag, %.sink.split ]
  ret i32 %.sroa.034.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S7_EEEEEEEEEEEEEE17TryInlineWasmCallEPNS0_4wasm12NativeModuleEjNS9_6VectorIKNS2_7OpIndexEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, ptr %3, i64 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::StdoutStream", align 8 ; 24 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.v8::internal::StdoutStream", align 8 ; 18 uses
  %8 = alloca %"class.v8::internal::StdoutStream", align 8 ; 18 uses
  %9 = alloca %"class.v8::internal::StdoutStream", align 8 ; 18 uses
  %10 = alloca %"struct.v8::internal::wasm::FunctionBody", align 8 ; 9 uses
  %11 = alloca %"class.v8::internal::wasm::WasmDetectedFeatures", align 8 ; 5 uses
  %12 = alloca %"class.v8::base::Vector.342", align 8 ; 6 uses
  %13 = alloca %"class.v8::internal::compiler::turboshaft::V.768", align 4 ; 5 uses
  %14 = alloca %"class.v8::internal::wasm::WasmFullDecoder", align 8 ; 13 uses
  %15 = alloca %"class.v8::internal::StdoutStream", align 8 ; 19 uses
end_hunk_5
begin_hunk_6_@_ZN2v88internal4wasm7Decoder7verrorfEjPKcz:bb.a
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
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #25
  br label %_ZN2v88internal4wasm9WasmErrorD2Ev.exit

_ZN2v88internal4wasm9WasmErrorD2Ev.exit:          ; preds = %_ZN2v88internal4wasm9WasmErroraSEOS2_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ay = load ptr, ptr %6, align 8               ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.i
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %_ZN2v88internal4wasm9WasmErrorD2Ev.exit
  %i.ba = load i64, ptr %i.i, align 8
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN2v88internal4wasm9WasmErrorD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bc = load ptr, ptr %0, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(80) %0) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #19

declare noundef i32 @_ZN2v84base9VSNPrintFENS0_6VectorIcEEPKcP13__va_list_tag(ptr, i64, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #19

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIZNS_8internal4wasm11WasmDecoderINS3_7Decoder15NoValidationTagELNS3_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntryLm8ESaISB_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = load ptr, ptr %0, align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.j)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.l = sub nuw nsw i64 64, %i.k                 ; 2 uses
  %i.m = icmp ugt i64 %spec.select.i.i, 576460752303423487
  br i1 %i.m, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.o = shl nuw i64 8, %i.l
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 7 uses
  %i.q = icmp eq ptr %i.d, %i.b
  br i1 %i.q, label %_ZSt18uninitialized_moveIPZN2v88internal4wasm11WasmDecoderINS2_7Decoder15NoValidationTagELNS2_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntrySB_ET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.r = ptrtoaddr ptr %i.p to i64
  %i.s = add i64 %i.c, -8
  %i.t = sub i64 %i.s, %i.h                       ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 56
  %i.w = sub i64 %i.r, %i.h
  %diff.check = icmp ult i64 %i.w, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.x = shl i64 %n.vec, 3                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.p, i64 %i.x
  %i.z = getelementptr i8, ptr %i.d, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.aa ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.d, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 4
  %wide.load13 = load <2 x i64>, ptr %i.ab, align 4
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load13, ptr %i.ac, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !717

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPZN2v88internal4wasm11WasmDecoderINS2_7Decoder15NoValidationTagELNS2_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntrySB_ET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ae = load i64, ptr %.sroa.04.07.i.i.i.i, align 4
  store i64 %i.ae, ptr %.08.i.i.i.i, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  %i.ah = icmp eq ptr %i.af, %i.b
  br i1 %i.ah, label %_ZSt18uninitialized_moveIPZN2v88internal4wasm11WasmDecoderINS2_7Decoder15NoValidationTagELNS2_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntrySB_ET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !718

_ZSt18uninitialized_moveIPZN2v88internal4wasm11WasmDecoderINS2_7Decoder15NoValidationTagELNS2_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntrySB_ET0_T_SD_SC_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ai = shl nuw i64 1, %i.l
  %i.aj = ptrtoint ptr %i.b to i64
  %i.ak = sub i64 %i.aj, %i.h
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIZNS_8internal4wasm11WasmDecoderINS3_7Decoder15NoValidationTagELNS3_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntryLm8ESaISB_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  store ptr %i.p, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ak
  store ptr %i.al, ptr %i.a, align 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ai
  store ptr %i.am, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIZNS_8internal4wasm11WasmDecoderINS3_7Decoder15NoValidationTagELNS3_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntryLm8ESaISB_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #4 comdat align 2 {
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
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #25
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPZN2v88internal4wasm11WasmDecoderINS2_7Decoder15NoValidationTagELNS2_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntrylET_SC_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN2v88internal4wasm17value_type_reader14read_heap_typeINS1_7Decoder15NoValidationTagEEESt4pairINS1_8HeapTypeEjEPS4_PKhNS1_19WasmEnabledFeaturesEPNS1_20WasmDetectedFeaturesE(ptr noundef %0, ptr noundef %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i8, ptr %1, align 1                 ; 2 uses
  %.not.i.i = icmp sgt i8 %i.a, -1
  br i1 %.not.i.i, label %bb.b, label %bb.c, !prof !8

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
  %.043 = phi i8 [ %.0.copyload.i.i.i.i, %bb.e ], [ %i.k, %bb.d ] ; 5 uses
  switch i8 %.043, label %bb.j [
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
  %i.p = and i8 %.043, 31
  %i.q = zext nneg i8 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4
  %i.t = select i1 %i.l, i32 20, i32 4
  %i.u = or i32 %i.s, %i.t
  br label %.critedge

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit50: ; preds = %bb.f, %bb.f
  %i.v = load i64, ptr %3, align 8
  %i.w = or i64 %i.v, 65536
  store i64 %i.w, ptr %3, align 8
  %i.x = and i8 %.043, 31
  %i.y = zext nneg i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = select i1 %i.l, i32 20, i32 4
  %i.ac = or i32 %i.aa, %i.ab
  br label %.critedge

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit53: ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.ad = and i8 %.043, 31
  %i.ae = zext nneg i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = select i1 %i.l, i32 20, i32 4
  %i.ai = or i32 %i.ag, %i.ah
  br label %.critedge

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit56: ; preds = %bb.f, %bb.f
  %i.aj = and i8 %.043, 31
  %i.ak = zext nneg i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4
  %i.an = select i1 %i.l, i32 20, i32 4
  %i.ao = or i32 %i.am, %i.an
  br label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1             ; 2 uses
  %.not.i.i57 = icmp sgt i8 %i.aq, -1
  br i1 %.not.i.i57, label %bb.h, label %bb.i, !prof !8

bb.h:                                             ; preds = %bb.g
  %i.ar = zext nneg i8 %i.aq to i64
  br label %_ZN2v88internal4wasm7Decoder9read_u32vINS2_15NoValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit

bb.i:                                             ; preds = %bb.g
  %i.as = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_15NoValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.ap) ; 4 uses
  %i.at = icmp ult i64 %i.as, 25769803776
  tail call void @llvm.assume(i1 %i.at)
  %i.au = icmp samesign ugt i64 %i.as, 4294967295
  tail call void @llvm.assume(i1 %i.au)
end_hunk_6
begin_hunk_7_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateE:bb.a
  %indvars.iv56 = phi i64 [ 0, %.lr.ph45.preheader.new ], [ %indvars.iv.next57.3, %.lr.ph45 ] ; 6 uses
  %niter82 = phi i64 [ 0, %.lr.ph45.preheader.new ], [ %niter82.next.3, %.lr.ph45 ]
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv56
  %.sroa.0.0.copyload.i33 = load i64, ptr %i.em, align 4
  %i.en = load ptr, ptr %i.ej, align 8
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv56
  store i64 %.sroa.0.0.copyload.i33, ptr %i.eo, align 4
  %indvars.iv.next57 = or disjoint i64 %indvars.iv56, 1 ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.next57
  %.sroa.0.0.copyload.i33.1 = load i64, ptr %i.ep, align 4
  %i.eq = load ptr, ptr %i.ej, align 8
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.next57
  store i64 %.sroa.0.0.copyload.i33.1, ptr %i.er, align 4
  %indvars.iv.next57.1 = or disjoint i64 %indvars.iv56, 2 ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.next57.1
  %.sroa.0.0.copyload.i33.2 = load i64, ptr %i.es, align 4
  %i.et = load ptr, ptr %i.ej, align 8
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %indvars.iv.next57.1
  store i64 %.sroa.0.0.copyload.i33.2, ptr %i.eu, align 4
  %indvars.iv.next57.2 = or disjoint i64 %indvars.iv56, 3 ; 2 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.next57.2
  %.sroa.0.0.copyload.i33.3 = load i64, ptr %i.ev, align 4
  %i.ew = load ptr, ptr %i.ej, align 8
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.next57.2
  store i64 %.sroa.0.0.copyload.i33.3, ptr %i.ex, align 4
  %indvars.iv.next57.3 = add nuw nsw i64 %indvars.iv56, 4 ; 2 uses
  %niter82.next.3 = add i64 %niter82, 4           ; 2 uses
  %niter82.ncmp.3 = icmp eq i64 %niter82.next.3, %unroll_iter81
  br i1 %niter82.ncmp.3, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE9InitMergeIZNSK_11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateEEUljE0_EEvPNS1_5MergeINSI_5ValueEEEjT_.exit.loopexit.unr-lcssa, label %.lr.ph45, !llvm.loop !759

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE9InitMergeIZNSK_11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateEEUljE0_EEvPNS1_5MergeINSI_5ValueEEEjT_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph45
  %lcmp.mod79.not = icmp eq i64 %xtraiter78, 0
  br i1 %lcmp.mod79.not, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE9InitMergeIZNSK_11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateEEUljE0_EEvPNS1_5MergeINSI_5ValueEEEjT_.exit, label %.lr.ph45.epil.preheader

.lr.ph45.epil.preheader:                          ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE9InitMergeIZNSK_11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateEEUljE0_EEvPNS1_5MergeINSI_5ValueEEEjT_.exit.loopexit.unr-lcssa, %.lr.ph45.preheader
  %indvars.iv56.epil.init = phi i64 [ 0, %.lr.ph45.preheader ], [ %indvars.iv.next57.3, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE9InitMergeIZNSK_11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateEEUljE0_EEvPNS1_5MergeINSI_5ValueEEEjT_.exit.loopexit.unr-lcssa ]
  %lcmp.mod80 = icmp ne i64 %xtraiter78, 0
  tail call void @llvm.assume(i1 %lcmp.mod80)
  br label %.lr.ph45.epil

.lr.ph45.epil:                                    ; preds = %.lr.ph45.epil, %.lr.ph45.epil.preheader
  %indvars.iv56.epil = phi i64 [ %indvars.iv56.epil.init, %.lr.ph45.epil.preheader ], [ %indvars.iv.next57.epil, %.lr.ph45.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph45.epil.preheader ], [ %epil.iter.next, %.lr.ph45.epil ]
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv56.epil
  %.sroa.0.0.copyload.i33.epil = load i64, ptr %i.ey, align 4
  %i.ez = load ptr, ptr %i.ej, align 8
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv56.epil
  store i64 %.sroa.0.0.copyload.i33.epil, ptr %i.fa, align 4
  %indvars.iv.next57.epil = add nuw nsw i64 %indvars.iv56.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter78
  br i1 %epil.iter.cmp.not, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE9InitMergeIZNSK_11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateEEUljE0_EEvPNS1_5MergeINSI_5ValueEEEjT_.exit, label %.lr.ph45.epil, !llvm.loop !760

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE9InitMergeIZNSK_11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateEEUljE0_EEvPNS1_5MergeINSI_5ValueEEEjT_.exit: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE9InitMergeIZNSK_11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateEEUljE0_EEvPNS1_5MergeINSI_5ValueEEEjT_.exit.loopexit.unr-lcssa, %.lr.ph45.epil, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE9InitMergeIZNSK_11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateEEUljE_EEvPNS1_5MergeINSI_5ValueEEEjT_.exit, %bb.j
  ret ptr %i.bq

bb.m:                                             ; preds = %_ZNK2v88internal4wasm18BlockTypeImmediate7in_typeEj.exit.1, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %_ZNK2v88internal4wasm18BlockTypeImmediate7in_typeEj.exit.1 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %_ZNK2v88internal4wasm18BlockTypeImmediate7in_typeEj.exit.1 ]
  %i.fb = load i64, ptr %i.b, align 8
  %i.fc = icmp ugt i64 %i.fb, %indvars.iv
  br i1 %i.fc, label %_ZNK2v88internal4wasm18BlockTypeImmediate7in_typeEj.exit, label %.loopexit, !prof !8

.loopexit:                                        ; preds = %bb.m, %_ZNK2v88internal4wasm18BlockTypeImmediate7in_typeEj.exit, %.epil.preheader
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.803) #23
  unreachable

_ZNK2v88internal4wasm18BlockTypeImmediate7in_typeEj.exit: ; preds = %bb.m
  %i.fd = load ptr, ptr %i.bw, align 8
  %i.fe = load i64, ptr %i.a, align 8
  %i.ff = getelementptr [4 x i8], ptr %i.fd, i64 %i.fe
  %i.fg = getelementptr [4 x i8], ptr %i.ff, i64 %indvars.iv
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.fg, align 4
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.fh, align 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.fi = load i64, ptr %i.b, align 8
  %i.fj = icmp ugt i64 %i.fi, %indvars.iv.next
  br i1 %i.fj, label %_ZNK2v88internal4wasm18BlockTypeImmediate7in_typeEj.exit.1, label %.loopexit, !prof !8

_ZNK2v88internal4wasm18BlockTypeImmediate7in_typeEj.exit.1: ; preds = %_ZNK2v88internal4wasm18BlockTypeImmediate7in_typeEj.exit
  %i.fk = load ptr, ptr %i.bw, align 8
  %i.fl = load i64, ptr %i.a, align 8
  %i.fm = getelementptr [4 x i8], ptr %i.fk, i64 %i.fl
  %i.fn = getelementptr [4 x i8], ptr %i.fm, i64 %indvars.iv.next
  %.sroa.0.0.copyload.i.i.1 = load i32, ptr %i.fn, align 4
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.next
  store i32 %.sroa.0.0.copyload.i.i.1, ptr %i.fo, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.m, !llvm.loop !761
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -72
  %i.d = load i32, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 13 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load ptr, ptr %i.e, align 8
  %i.i = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %i.l = lshr exact i64 %i.k, 3
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %i.n = sub i32 %i.m, %i.d                       ; 4 uses
  %i.o = sub nsw i32 %1, %i.n                     ; 8 uses
  %i.p = add nsw i32 %i.o, 1                      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.s, %i.i
  %i.u = ashr exact i64 %i.t, 3
  %i.v = sext i32 %i.p to i64
  %.not.i = icmp slt i64 %i.u, %i.v
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal4wasm14FastZoneVectorINS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS4_9AssemblerINS_4base3tmp5list1IJNS4_12GraphVisitorENS4_23WasmInJSInliningReducerENS4_19WasmLoweringReducerENS4_13TSReducerBaseEEEEEEE5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.x = load ptr, ptr %i.w, align 8
  tail call preserve_mostcc void @_ZN2v88internal4wasm14FastZoneVectorINS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS4_9AssemblerINS_4base3tmp5list1IJNS4_12GraphVisitorENS4_23WasmInJSInliningReducerENS4_19WasmLoweringReducerENS4_13TSReducerBaseEEEEEEE5ValueEE4GrowEiPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i32 noundef %i.p, ptr noundef %i.x)
  br label %_ZN2v88internal4wasm14FastZoneVectorINS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS4_9AssemblerINS_4base3tmp5list1IJNS4_12GraphVisitorENS4_23WasmInJSInliningReducerENS4_19WasmLoweringReducerENS4_13TSReducerBaseEEEEEEE5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit

_ZN2v88internal4wasm14FastZoneVectorINS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS4_9AssemblerINS_4base3tmp5list1IJNS4_12GraphVisitorENS4_23WasmInJSInliningReducerENS4_19WasmLoweringReducerENS4_13TSReducerBaseEEEEEEE5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit: ; preds = %bb.a, %bb.b
  %i.y = icmp sgt i32 %i.o, 0                     ; 2 uses
  br i1 %i.y, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN2v88internal4wasm14FastZoneVectorINS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS4_9AssemblerINS_4base3tmp5list1IJNS4_12GraphVisitorENS4_23WasmInJSInliningReducerENS4_19WasmLoweringReducerENS4_13TSReducerBaseEEEEEEE5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit
  %.pre = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.z = add i32 %i.d, %1
  %xtraiter = and i32 %i.o, 3                     ; 3 uses
  %i.aa = sub i32 %i.m, %i.z
  %i.ab = icmp ugt i32 %i.aa, -4
  br i1 %i.ab, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.o, 2147483644
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi ptr [ %.pre, %.lr.ph.preheader ], [ %i.ao, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod53 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod53)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %i.ac = phi ptr [ %i.ae, %.lr.ph.epil ], [ %.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  store i64 -4294966782, ptr %i.ac, align 4
  %i.ad = load ptr, ptr %i.f, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  store ptr %i.ae, ptr %i.f, align 8
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !762

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %_ZN2v88internal4wasm14FastZoneVectorINS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS4_9AssemblerINS_4base3tmp5list1IJNS4_12GraphVisitorENS4_23WasmInJSInliningReducerENS4_19WasmLoweringReducerENS4_13TSReducerBaseEEEEEEE5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit
  %i.af = icmp sgt i32 %i.n, 0
  br i1 %i.af, label %bb.c, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %i.ag = phi ptr [ %.pre, %.lr.ph.preheader.new ], [ %i.ao, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  store i64 -4294966782, ptr %i.ag, align 4
  %i.ah = load ptr, ptr %i.f, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  store ptr %i.ai, ptr %i.f, align 8
  store i64 -4294966782, ptr %i.ai, align 4
  %i.aj = load ptr, ptr %i.f, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  store ptr %i.ak, ptr %i.f, align 8
  store i64 -4294966782, ptr %i.ak, align 4
  %i.al = load ptr, ptr %i.f, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.f, align 8
  store i64 -4294966782, ptr %i.am, align 4
  %i.an = load ptr, ptr %i.f, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 3 uses
  store ptr %i.ao, ptr %i.f, align 8
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !763

bb.c:                                             ; preds = %._crit_edge
  %i.ap = load ptr, ptr %i.f, align 8
  %i.aq = zext i32 %1 to i64
  %i.ar = sub nsw i64 0, %i.aq
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.ar ; 5 uses
  %i.at = zext nneg i32 %i.n to i64               ; 6 uses
  %i.au = sext i32 %i.o to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.as, i64 %i.au ; 2 uses
  %min.iters.check = icmp ult i32 %i.n, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.c
  %i.av = sub i64 %i.i, %i.j
  %i.aw = lshr i64 %i.av, 3
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = sub i32 %i.ax, %i.d
  %i.az = sext i32 %i.ay to i64
  %i.ba = sext i32 %1 to i64
  %i.bb = sub nsw i64 %i.az, %i.ba
  %2 = and i64 %i.bb, 2305843009213693948
  %diff.check = icmp eq i64 %2, 0
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.at, 2147483644              ; 2 uses
  %i.bc = and i64 %i.at, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bd = xor i64 %index, -1
  %i.be = add i64 %i.bd, %i.at                    ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.be ; 2 uses
  %i.bg = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.be ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bf, i64 -8
  %i.bi = getelementptr inbounds i8, ptr %i.bf, i64 -24
  %wide.load = load <2 x i64>, ptr %i.bh, align 4
  %wide.load40 = load <2 x i64>, ptr %i.bi, align 4
  %i.bj = getelementptr i8, ptr %i.bg, i64 -8
  %i.bk = getelementptr i8, ptr %i.bg, i64 -24
  store <2 x i64> %wide.load, ptr %i.bj, align 4
  store <2 x i64> %wide.load40, ptr %i.bk, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !764

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.at
  br i1 %cmp.n, label %.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.c, %middle.block
  %indvars.iv.ph = phi i64 [ %i.at, %vector.memcheck ], [ %i.at, %bb.c ], [ %i.bc, %middle.block ]
  br label %scalar.ph

.preheader:                                       ; preds = %scalar.ph, %middle.block
  br i1 %i.y, label %.lr.ph33.preheader, label %.loopexit

.lr.ph33.preheader:                               ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 3 uses
  %min.iters.check42 = icmp ult i32 %i.o, 4
  br i1 %min.iters.check42, label %.lr.ph33.preheader52, label %vector.ph43

vector.ph43:                                      ; preds = %.lr.ph33.preheader
  %n.vec45 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vector.body46

vector.body46:                                    ; preds = %vector.body46, %vector.ph43
  %index47 = phi i64 [ 0, %vector.ph43 ], [ %index.next48, %vector.body46 ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index47 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store <2 x i64> splat (i64 -4294966782), ptr %i.bm, align 4
  store <2 x i64> splat (i64 -4294966782), ptr %i.bn, align 4
  %index.next48 = add nuw i64 %index47, 4         ; 2 uses
  %i.bo = icmp eq i64 %index.next48, %n.vec45
  br i1 %i.bo, label %middle.block49, label %vector.body46, !llvm.loop !765

middle.block49:                                   ; preds = %vector.body46
  %cmp.n50 = icmp eq i64 %n.vec45, %wide.trip.count
  br i1 %cmp.n50, label %.loopexit, label %.lr.ph33.preheader52

.lr.ph33.preheader52:                             ; preds = %.lr.ph33.preheader, %middle.block49
  %indvars.iv35.ph = phi i64 [ 0, %.lr.ph33.preheader ], [ %n.vec45, %middle.block49 ]
  br label %.lr.ph33

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.next
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.bq = load i64, ptr %i.bp, align 4
  store i64 %i.bq, ptr %gep, align 4
  %i.br = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.br, label %scalar.ph, label %.preheader, !llvm.loop !766

.lr.ph33:                                         ; preds = %.lr.ph33.preheader52, %.lr.ph33
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %.lr.ph33 ], [ %indvars.iv35.ph, %.lr.ph33.preheader52 ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv35
  store i64 -4294966782, ptr %i.bs, align 4
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %exitcond38.not = icmp eq i64 %indvars.iv.next36, %wide.trip.count
  br i1 %exitcond38.not, label %.loopexit, label %.lr.ph33, !llvm.loop !767

.loopexit:                                        ; preds = %.lr.ph33, %middle.block49, %.preheader, %._crit_edge
  ret i32 %i.o
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE10PopControlEv(ptr noundef nonnull align 8 dereferenceable(312) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 11 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -96 ; 2 uses
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 96
  %i.j = and i64 %i.i, 4294967295
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds i8, ptr %i.c, i64 -191
  %i.m = load i8, ptr %i.l, align 1
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7BailoutEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEE(ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr noundef nonnull %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = load i8, ptr %i.d, align 8
  %i.q = icmp eq i8 %i.p, 3
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds i8, ptr %i.c, i64 -95
  %i.s = load i8, ptr %i.r, align 1
  %i.t = icmp eq i8 %i.s, 2
  br i1 %i.t, label %bb.f, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE15PushMergeValuesEPNS1_11ControlBaseINSI_5ValueES4_EEPNS1_5MergeISM_EE.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = getelementptr inbounds i8, ptr %i.c, i64 -32 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.c, i64 -72
  %i.x = load i32, ptr %i.w, align 8
  %i.y = load ptr, ptr %i.v, align 8
  %i.z = zext i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.z ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 6 uses
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = load i32, ptr %i.u, align 8             ; 4 uses
  %i.ad = icmp eq i32 %i.ac, 1
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds i8, ptr %i.c, i64 -24
  %.sroa.03.0.copyload.i = load i64, ptr %i.ae, align 8
  store i64 %.sroa.03.0.copyload.i, ptr %i.aa, align 4
  %i.af = load ptr, ptr %i.ab, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ag, ptr %i.ab, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE15PushMergeValuesEPNS1_11ControlBaseINSI_5ValueES4_EEPNS1_5MergeISM_EE.exit

bb.h:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.aa to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 3
  %i.an = sext i32 %i.ac to i64
  %.not.i.i = icmp slt i64 %i.am, %i.an
  br i1 %.not.i.i, label %bb.i, label %_ZN2v88internal4wasm14FastZoneVectorINS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS4_9AssemblerINS_4base3tmp5list1IJNS4_12GraphVisitorENS4_23WasmInJSInliningReducerENS4_19WasmLoweringReducerENS4_13TSReducerBaseEEEEEEE5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit.i, !prof !5

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call preserve_mostcc void @_ZN2v88internal4wasm14FastZoneVectorINS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS4_9AssemblerINS_4base3tmp5list1IJNS4_12GraphVisitorENS4_23WasmInJSInliningReducerENS4_19WasmLoweringReducerENS4_13TSReducerBaseEEEEEEE5ValueEE4GrowEiPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i32 noundef %i.ac, ptr noundef %i.ap)
  %.pre.i = load i32, ptr %i.u, align 8
  br label %_ZN2v88internal4wasm14FastZoneVectorINS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS4_9AssemblerINS_4base3tmp5list1IJNS4_12GraphVisitorENS4_23WasmInJSInliningReducerENS4_19WasmLoweringReducerENS4_13TSReducerBaseEEEEEEE5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit.i

_ZN2v88internal4wasm14FastZoneVectorINS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS4_9AssemblerINS_4base3tmp5list1IJNS4_12GraphVisitorENS4_23WasmInJSInliningReducerENS4_19WasmLoweringReducerENS4_13TSReducerBaseEEEEEEE5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit.i: ; preds = %bb.i, %bb.h
  %i.aq = phi i32 [ %i.ac, %bb.h ], [ %.pre.i, %bb.i ]
  %.not.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE15PushMergeValuesEPNS1_11ControlBaseINSI_5ValueES4_EEPNS1_5MergeISM_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN2v88internal4wasm14FastZoneVectorINS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS4_9AssemblerINS_4base3tmp5list1IJNS4_12GraphVisitorENS4_23WasmInJSInliningReducerENS4_19WasmLoweringReducerENS4_13TSReducerBaseEEEEEEE5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit.i
  %i.ar = getelementptr inbounds i8, ptr %i.c, i64 -24
  %.pre13.i = load ptr, ptr %i.ab, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %i.as = phi ptr [ %.pre13.i, %.lr.ph.i ], [ %i.aw, %bb.j ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.j ] ; 2 uses
  %i.at = load ptr, ptr %i.ar, align 8
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.i
  %.sroa.0.0.copyload.i = load i64, ptr %i.au, align 4
  store i64 %.sroa.0.0.copyload.i, ptr %i.as, align 4
  %i.av = load ptr, ptr %i.ab, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  store ptr %i.aw, ptr %i.ab, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ax = load i32, ptr %i.u, align 8
  %i.ay = zext i32 %i.ax to i64
  %i.az = icmp samesign ult i64 %indvars.iv.next.i, %i.ay
  br i1 %i.az, label %bb.j, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE15PushMergeValuesEPNS1_11ControlBaseINSI_5ValueES4_EEPNS1_5MergeISM_EE.exit, !llvm.loop !720

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE15PushMergeValuesEPNS1_11ControlBaseINSI_5ValueES4_EEPNS1_5MergeISM_EE.exit: ; preds = %bb.j, %_ZN2v88internal4wasm14FastZoneVectorINS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS4_9AssemblerINS_4base3tmp5list1IJNS4_12GraphVisitorENS4_23WasmInJSInliningReducerENS4_19WasmLoweringReducerENS4_13TSReducerBaseEEEEEEE5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit.i, %bb.g, %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 305
  %i.bb = load i8, ptr %i.ba, align 1, !range !11, !noundef !6
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.k, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE28RollbackLocalsInitializationEPNS1_11ControlBaseINSI_5ValueES4_EE.exit

bb.k:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE15PushMergeValuesEPNS1_11ControlBaseINSI_5ValueES4_EEPNS1_5MergeISM_EE.exit
  %i.bd = getelementptr inbounds i8, ptr %i.c, i64 -68
  %i.be = load i32, ptr %i.bd, align 4            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE26ControlFlowHelper_BindElseEPNSE_25ControlFlowHelper_IfStateE:bb.a

._crit_edge.i:                                    ; preds = %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i, %.preheader.i
  %.07.lcssa.i = phi ptr [ %i.ax, %.preheader.i ], [ %.2.lcssa.i.i, %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i ] ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8            ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 20 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 20
  %i.bg = load i32, ptr %i.bf, align 4            ; 2 uses
  %i.bh = sub nsw i32 %i.be, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bj = load i32, ptr %i.bi, align 8
  %i.bk = sub nsw i32 %i.bg, %i.bj
  %i.bl = icmp eq i32 %i.bh, %i.bk
  br i1 %i.bl, label %bb.i, label %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i

bb.i:                                             ; preds = %._crit_edge.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8
  br label %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i

_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i: ; preds = %bb.i, %._crit_edge.i
  %.0.i.i = phi ptr [ %i.bn, %bb.i ], [ %.07.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.07.lcssa.i, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.0.i.i, ptr %i.bp, align 8
  %i.bq = load i32, ptr %i.bd, align 4
  %i.br = add nsw i32 %i.bq, 1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  store i32 %i.br, ptr %i.bs, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 20
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %i.bu, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 8 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8
  store ptr %i.bx, ptr %i.a, align 8
  store ptr %i.a, ptr %i.bw, align 8
  %.pre.i6 = load i32, ptr %i.bs, align 4
  br label %bb.l

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i
  %.012.i = phi ptr [ %.0.i4, %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i ], [ %.09.i, %.preheader.i ] ; 4 uses
  %.0711.i = phi ptr [ %.2.lcssa.i.i, %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i ], [ %i.ax, %.preheader.i ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i, i64 20
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %.0711.i, i64 20
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = icmp sgt i32 %i.bz, %i.cb               ; 2 uses
  %spec.select.i.i = select i1 %i.cc, ptr %.012.i, ptr %.0711.i ; 3 uses
  %spec.select17.i.i = select i1 %i.cc, ptr %.0711.i, ptr %.012.i ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %spec.select17.i.i, i64 20
  %i.ce = load i32, ptr %i.cd, align 4            ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 20
  %i.cg = load i32, ptr %i.cf, align 4
  %.not18.i.i = icmp eq i32 %i.cg, %i.ce
  br i1 %.not18.i.i, label %.preheader.i.i, label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i
  %.116.lcssa.i.i = phi ptr [ %spec.select.i.i, %.lr.ph.i ], [ %storemerge7.i.i, %.lr.ph.i.i ] ; 3 uses
  %.not520.i.i = icmp eq ptr %.116.lcssa.i.i, %spec.select17.i.i
  br i1 %.not520.i.i, label %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i, label %.lr.ph23.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i, %.lr.ph.i.i
  %.11619.i.i = phi ptr [ %storemerge7.i.i, %.lr.ph.i.i ], [ %spec.select.i.i, %.lr.ph.i ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.11619.i.i, i64 16
  %i.ci = load i32, ptr %i.ch, align 8
  %.not6.i.i = icmp slt i32 %i.ci, %i.ce
  %storemerge7.in.v.i.i = select i1 %.not6.i.i, i64 24, i64 32
  %storemerge7.in.i.i = getelementptr inbounds nuw i8, ptr %.11619.i.i, i64 %storemerge7.in.v.i.i
  %storemerge7.i.i = load ptr, ptr %storemerge7.in.i.i, align 8 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %storemerge7.i.i, i64 20
  %i.ck = load i32, ptr %i.cj, align 4
  %.not.i.i = icmp eq i32 %i.ck, %i.ce
  br i1 %.not.i.i, label %.preheader.i.i, label %.lr.ph.i.i, !llvm.loop !36

.lr.ph23.i.i:                                     ; preds = %.preheader.i.i, %bb.k
  %.122.i.i = phi ptr [ %storemerge.i.i, %bb.k ], [ %spec.select17.i.i, %.preheader.i.i ] ; 2 uses
  %.221.i.i = phi ptr [ %.3.i.i, %bb.k ], [ %.116.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.221.i.i, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8            ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.122.i.i, i64 32
  %i.co = load ptr, ptr %i.cn, align 8            ; 2 uses
  %i.cp = icmp eq ptr %i.cm, %i.co
  br i1 %i.cp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph23.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.221.i.i, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %.122.i.i, i64 24
  %storemerge.pre.i.i = load ptr, ptr %i.cs, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph23.i.i
  %storemerge.i.i = phi ptr [ %storemerge.pre.i.i, %bb.j ], [ %i.co, %.lr.ph23.i.i ] ; 2 uses
  %.3.i.i = phi ptr [ %i.cr, %bb.j ], [ %i.cm, %.lr.ph23.i.i ] ; 3 uses
  %.not5.i.i = icmp eq ptr %.3.i.i, %storemerge.i.i
  br i1 %.not5.i.i, label %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i, label %.lr.ph23.i.i, !llvm.loop !37

_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i: ; preds = %bb.k, %.preheader.i.i
  %.2.lcssa.i.i = phi ptr [ %.116.lcssa.i.i, %.preheader.i.i ], [ %.3.i.i, %bb.k ] ; 2 uses
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.012.i, i64 64
  %.0.i4 = load ptr, ptr %.0.in.i, align 8        ; 2 uses
  %.not.i5 = icmp eq ptr %.0.i4, null
  br i1 %.not.i5, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !38

bb.l:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i, %bb.h
  %i.ct = phi i32 [ %.pre.i6, %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i ], [ 0, %bb.h ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.k, i64 232 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 8
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.cv, i32 %i.ct)
  store i32 %.sroa.speculated, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.a, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds i8, ptr %0, i64 -728
  tail call void @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S8_EEEEEEEEEEEEEEEE4BindEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(728) %i.cx, ptr noundef nonnull %i.a)
  %i.cy = getelementptr inbounds i8, ptr %0, i64 -184
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %i.cz, ptr %i.da, align 8
  br label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit

_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit: ; preds = %bb.e, %bb.l
  %.0.i13 = phi i1 [ true, %bb.l ], [ false, %bb.e ]
  ret i1 %.0.i13
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm2ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 {
_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #25
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_11WasmFuncRefEEELm2ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_11WasmFuncRefEEELm2ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_11WasmFuncRefEEELm2ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = load ptr, ptr %0, align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.j)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.l = sub nuw nsw i64 64, %i.k                 ; 2 uses
  %i.m = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.m, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.o = shl nuw i64 4, %i.l
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 7 uses
  %i.q = icmp eq ptr %i.d, %i.b
  br i1 %i.q, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_11WasmFuncRefEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.r = ptrtoaddr ptr %i.p to i64
  %i.s = add i64 %i.c, -4
  %i.t = sub i64 %i.s, %i.h                       ; 2 uses
  %i.u = lshr i64 %i.t, 2
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 28
  %i.w = sub i64 %i.r, %i.h
  %diff.check = icmp ult i64 %i.w, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.v, 9223372036854775800      ; 3 uses
  %i.x = shl i64 %n.vec, 2                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.p, i64 %i.x
  %i.z = getelementptr i8, ptr %i.d, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.aa ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.d, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4
  %wide.load13 = load <4 x i32>, ptr %i.ab, align 4
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load13, ptr %i.ac, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !895

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_11WasmFuncRefEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ae = load i32, ptr %.sroa.04.07.i.i.i.i, align 4
  store i32 %i.ae, ptr %.08.i.i.i.i, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  %i.ah = icmp eq ptr %i.af, %i.b
  br i1 %i.ah, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_11WasmFuncRefEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !896

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_11WasmFuncRefEEES7_ET0_T_S9_S8_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ai = shl nuw i64 1, %i.l
  %i.aj = ptrtoint ptr %i.b to i64
  %i.ak = sub i64 %i.aj, %i.h
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_11WasmFuncRefEEELm2ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  store ptr %i.p, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ak
  store ptr %i.al, ptr %i.a, align 8
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ai
  store ptr %i.am, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_11WasmFuncRefEEELm2ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 {
_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS1_11WasmFuncRefEEElET_S8_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS1_11WasmFuncRefEEElET_S8_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #25
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS1_11WasmFuncRefEEElET_S8_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_11WasmFuncRefEEE4BindINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEEESt5tupleIJbNS2_1VIS4_EEEERT_NS_14SourceLocationE(ptr dead_on_unwind noalias writable sret(%"class.std::tuple.1928") align 4 %0, ptr noundef nonnull align 8 dereferenceable(105) %1, ptr noundef nonnull align 8 dereferenceable(920) %2, ptr %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 20 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i8, ptr %i.b, align 8
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEE13BindReachableEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(920) %2, ptr noundef nonnull %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_6GotoOpEJPNS2_5BlockEbEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull %i.a, i1 noundef zeroext false) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !6, !align !7 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.r = load ptr, ptr %i.q, align 8
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.u, %i.x
  %i.z = trunc i64 %i.y to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i32 %i.z, ptr %i.aa, align 4
  %i.ab = load ptr, ptr %i.l, align 8
  %i.ac = load ptr, ptr %i.n, align 8
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = lshr exact i64 %i.af, 3
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i32 %i.ah, ptr %i.ai, align 4
  %i.aj = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = icmp ult ptr %i.aj, %i.al
  br i1 %i.am, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit, label %bb.g, !prof !8

bb.g:                                             ; preds = %bb.f
  %i.an = load ptr, ptr %i.n, align 8
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3
  %i.as = add nsw i64 %i.ar, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 noundef %i.as)
  %.pre.i = load ptr, ptr %i.l, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit: ; preds = %bb.f, %bb.g
  %i.at = phi ptr [ %i.aj, %bb.f ], [ %.pre.i, %bb.g ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.au, ptr %i.l, align 8
  store ptr %i.a, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.aw = load ptr, ptr %i.av, align 8            ; 4 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.h, label %.preheader.i, !prof !5

.preheader.i:                                     ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit
  %.0.in8.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %.09.i = load ptr, ptr %.0.in8.i, align 8       ; 2 uses
  %.not10.i = icmp eq ptr %.09.i, null
  br i1 %.not10.i, label %._crit_edge.i, label %.lr.ph.i

bb.h:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.a, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  br label %bb.l

._crit_edge.i:                                    ; preds = %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i, %.preheader.i
  %.07.lcssa.i = phi ptr [ %i.aw, %.preheader.i ], [ %.2.lcssa.i.i, %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i ] ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8            ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 20 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 20
  %i.bf = load i32, ptr %i.be, align 4            ; 2 uses
  %i.bg = sub nsw i32 %i.bd, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = sub nsw i32 %i.bf, %i.bi
  %i.bk = icmp eq i32 %i.bg, %i.bj
  br i1 %i.bk, label %bb.i, label %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i

bb.i:                                             ; preds = %._crit_edge.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8
  br label %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i

_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i: ; preds = %bb.i, %._crit_edge.i
  %.0.i.i = phi ptr [ %i.bm, %bb.i ], [ %.07.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.07.lcssa.i, ptr %i.bn, align 8
end_hunk_8
begin_hunk_9_@_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE31WasmCallBuiltinThroughJumptableINS2_21BuiltinCallDescriptor17WasmStringAsWtf16EEENS2_6detail12IndexTypeForINT_9results_tEE4typeERKNSK_11arguments_tEQntsrTL0__13kNeedsContext:bb.a
  store ptr %i.o, ptr %2, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 8
  %i.r = load i32, ptr %i.o, align 8
  %i.s = sub nsw i32 %i.q, %i.r
  %i.t = call noundef ptr @_ZN2v88internal8compiler7Linkage21GetStubCallDescriptorEPNS0_4ZoneERKNS0_23CallInterfaceDescriptorEiNS_4base5FlagsINS1_14CallDescriptor4FlagEiiEENS9_INS1_8Operator8PropertyEhhEENS0_12StubCallModeE(ptr noundef %i.n, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.s, i32 0, i8 112, i32 noundef 1) #22
  %i.u = call noundef ptr @_ZN2v88internal8compiler10turboshaft16TSCallDescriptor6CreateEPKNS1_14CallDescriptorENS1_8CanThrowENS1_16LazyDeoptOnThrowEPNS0_4ZoneEPKNS1_20JSWasmCallParametersE(ptr noundef %i.t, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef %i.n, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.v = load ptr, ptr %i.a, align 8
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSK_INSG_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit, label %bb.b, !prof !5

bb.b:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE32RelocatableWasmBuiltinCallTargetENS0_7BuiltinE.exit
  %i.x = ptrtoint ptr %.pre10 to i64
  %i.y = ptrtoint ptr %.pre to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 2
  %i.ab = getelementptr inbounds i8, ptr %0, i64 -728
  %i.ac = call i32 @_ZN2v88internal8compiler10turboshaft23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S7_EEEEEEEEEEEEEE10ReduceCallENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSM_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS9_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i32 %i.j, i32 -1, ptr %.pre, i64 %i.aa, ptr noundef %i.u, i32 158739)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSK_INSG_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSK_INSG_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE32RelocatableWasmBuiltinCallTargetENS0_7BuiltinE.exit, %bb.b
  %.sroa.011.0.i.i = phi i32 [ %i.ac, %bb.b ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE32RelocatableWasmBuiltinCallTargetENS0_7BuiltinE.exit ]
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm1ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(28) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSK_INSG_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit
  %.sroa.07.0 = phi i32 [ %.sroa.011.0.i.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSK_INSG_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit ], [ -1, %bb.a ]
  ret i32 %.sroa.07.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6StringEEE6GotoIfINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEEEvRT_NS2_7OpIndexENS0_10BranchHintERKSt5tupleIJNS2_1VIS4_EEEE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(920) %1, i32 %2, i8 noundef zeroext %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 896 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 1, ptr %i.d, align 8
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 760
  %i.g = load ptr, ptr %0, align 8                ; 2 uses
  %i.h = icmp eq ptr %i.e, null
  br i1 %i.h, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread, label %bb.c, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !6, !align !7 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 88 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp eq i64 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal8compiler10turboshaft5Graph17AllocateNewBlocksEv(ptr noundef nonnull align 8 dereferenceable(328) %i.j)
  %.pre.i.i = load i64, ptr %i.k, align 8
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit: ; preds = %bb.c, %bb.d
  %i.p = phi i64 [ %i.l, %bb.c ], [ %.pre.i.i, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.r = add i64 %i.p, 1
  store i64 %i.r, ptr %i.k, align 8
  %i.s = load ptr, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.p
  %i.u = load ptr, ptr %i.t, align 8              ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.u, i8 0, i64 41, i1 false)
  store i32 -1, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store i32 -1, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 52
  store i32 -1, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  store i32 0, ptr %i.aa, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.y, i8 0, i64 28, i1 false)
  store ptr null, ptr %i.z, align 8
  %i.ab = tail call noundef i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE13BranchAndBindENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockESK_NS0_10BranchHintESK_(ptr noundef nonnull align 8 dereferenceable(136) %i.f, i32 %2, ptr noundef %i.g, ptr noundef nonnull %i.u, i8 noundef zeroext %3, ptr noundef nonnull %i.u)
  %i.ac = and i32 %i.ab, 1
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %bb.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit._ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread_crit_edge

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit._ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread_crit_edge: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit
  %.pre = load ptr, ptr %0, align 8
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit._ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread_crit_edge, %bb.b
  %i.ad = phi ptr [ %.pre, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit._ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread_crit_edge ], [ %i.g, %bb.b ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 52
  %i.af = load i32, ptr %i.ae, align 4
  %.not.i = icmp eq i32 %i.af, -1
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9) #23
  unreachable

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread
  %.sroa.0.0.copyload.i.i = load i32, ptr %4, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = icmp eq ptr %i.ah, %i.aj
  br i1 %i.ak, label %bb.g, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6StringEEELm2ESaIS7_EE9push_backES7_.exit.i.i, !prof !5

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6StringEEELm2ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %i.al)
  %.pre.i.i.i.i = load ptr, ptr %i.ag, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6StringEEELm2ESaIS7_EE9push_backES7_.exit.i.i

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6StringEEELm2ESaIS7_EE9push_backES7_.exit.i.i: ; preds = %bb.g, %bb.f
  %i.am = phi ptr [ %.pre.i.i.i.i, %bb.g ], [ %i.ah, %bb.f ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store ptr %i.an, ptr %i.ag, align 8
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.am, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = icmp eq ptr %i.ap, %i.ar
  br i1 %i.as, label %bb.h, label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6StringEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit, !prof !5

bb.h:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6StringEEELm2ESaIS7_EE9push_backES7_.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %i.at)
  %.pre.i.i4.i.i = load ptr, ptr %i.ao, align 8
  br label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6StringEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit

_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6StringEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6StringEEELm2ESaIS7_EE9push_backES7_.exit.i.i, %bb.h
  %i.au = phi ptr [ %.pre.i.i4.i.i, %bb.h ], [ %i.ap, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6StringEEELm2ESaIS7_EE9push_backES7_.exit.i.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.av, ptr %i.ao, align 8
  store ptr %i.e, ptr %i.au, align 8
  br label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit, %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6StringEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6StringEEELm2ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6StringEEELm2ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6StringEEELm2ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = load ptr, ptr %0, align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.j)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.l = sub nuw nsw i64 64, %i.k                 ; 2 uses
  %i.m = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.m, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.o = shl nuw i64 4, %i.l
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 7 uses
  %i.q = icmp eq ptr %i.d, %i.b
  br i1 %i.q, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_6StringEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.r = ptrtoaddr ptr %i.p to i64
  %i.s = add i64 %i.c, -4
  %i.t = sub i64 %i.s, %i.h                       ; 2 uses
  %i.u = lshr i64 %i.t, 2
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 28
  %i.w = sub i64 %i.r, %i.h
  %diff.check = icmp ult i64 %i.w, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.v, 9223372036854775800      ; 3 uses
  %i.x = shl i64 %n.vec, 2                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.p, i64 %i.x
  %i.z = getelementptr i8, ptr %i.d, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.aa ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.d, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4
  %wide.load13 = load <4 x i32>, ptr %i.ab, align 4
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load13, ptr %i.ac, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !931

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_6StringEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ae = load i32, ptr %.sroa.04.07.i.i.i.i, align 4
  store i32 %i.ae, ptr %.08.i.i.i.i, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  %i.ah = icmp eq ptr %i.af, %i.b
  br i1 %i.ah, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_6StringEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !932

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_6StringEEES7_ET0_T_S9_S8_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ai = shl nuw i64 1, %i.l
  %i.aj = ptrtoint ptr %i.b to i64
  %i.ak = sub i64 %i.aj, %i.h
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6StringEEELm2ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  store ptr %i.p, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ak
  store ptr %i.al, ptr %i.a, align 8
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ai
  store ptr %i.am, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6StringEEELm2ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 {
_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS1_6StringEEElET_S8_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS1_6StringEEElET_S8_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #25
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS1_6StringEEElET_S8_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6StringEEE4BindINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEEESt5tupleIJbNS2_1VIS4_EEEERT_NS_14SourceLocationE(ptr dead_on_unwind noalias writable sret(%"class.std::tuple.1957") align 4 %0, ptr noundef nonnull align 8 dereferenceable(105) %1, ptr noundef nonnull align 8 dereferenceable(920) %2, ptr %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 20 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i8, ptr %i.b, align 8
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEE13BindReachableEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(920) %2, ptr noundef nonnull %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_6GotoOpEJPNS2_5BlockEbEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull %i.a, i1 noundef zeroext false) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !6, !align !7 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.r = load ptr, ptr %i.q, align 8
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.u, %i.x
  %i.z = trunc i64 %i.y to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i32 %i.z, ptr %i.aa, align 4
  %i.ab = load ptr, ptr %i.l, align 8
  %i.ac = load ptr, ptr %i.n, align 8
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = lshr exact i64 %i.af, 3
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i32 %i.ah, ptr %i.ai, align 4
  %i.aj = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = icmp ult ptr %i.aj, %i.al
  br i1 %i.am, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit, label %bb.g, !prof !8

bb.g:                                             ; preds = %bb.f
  %i.an = load ptr, ptr %i.n, align 8
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3
  %i.as = add nsw i64 %i.ar, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 noundef %i.as)
  %.pre.i = load ptr, ptr %i.l, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit: ; preds = %bb.f, %bb.g
  %i.at = phi ptr [ %i.aj, %bb.f ], [ %.pre.i, %bb.g ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.au, ptr %i.l, align 8
  store ptr %i.a, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.aw = load ptr, ptr %i.av, align 8            ; 4 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.h, label %.preheader.i, !prof !5

.preheader.i:                                     ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit
  %.0.in8.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %.09.i = load ptr, ptr %.0.in8.i, align 8       ; 2 uses
  %.not10.i = icmp eq ptr %.09.i, null
  br i1 %.not10.i, label %._crit_edge.i, label %.lr.ph.i

bb.h:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.a, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  br label %bb.l

._crit_edge.i:                                    ; preds = %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i, %.preheader.i
  %.07.lcssa.i = phi ptr [ %i.aw, %.preheader.i ], [ %.2.lcssa.i.i, %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i ] ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8            ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 20 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 20
  %i.bf = load i32, ptr %i.be, align 4            ; 2 uses
  %i.bg = sub nsw i32 %i.bd, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = sub nsw i32 %i.bf, %i.bi
  %i.bk = icmp eq i32 %i.bg, %i.bj
  br i1 %i.bk, label %bb.i, label %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i

bb.i:                                             ; preds = %._crit_edge.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8
  br label %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i

_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i: ; preds = %bb.i, %._crit_edge.i
  %.0.i.i = phi ptr [ %i.bm, %bb.i ], [ %.07.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.07.lcssa.i, ptr %i.bn, align 8
end_hunk_9
begin_hunk_10_@_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectENS2_12WordWithBitsILm32EEES6_EE19MaterializePhisImplINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEJLm0ELm1ELm2EEEESt5tupleIJNS2_1VIS4_EENSK_IS6_EESM_EERT_RNS7_9BlockDataESt16integer_sequenceImJXspT0_EEE:bb.a

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE3PhiINS0_6ObjectEEENS2_1VIT_EERKNS5_6VectorISJ_EE.exit: ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = tail call i32 @_ZN2v88internal8compiler10turboshaft27RequiredOptimizationReducerINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S8_EEEEEEEEEEEEEEEE9ReducePhiENSA_6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr %i.g, i64 %i.u, i8 4) ; 3 uses
  %.pre = load ptr, ptr %i.v, align 8
  %i.ab = icmp eq ptr %.pre, null
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 2                 ; 2 uses
  br i1 %i.ab, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE3PhiINS2_12WordWithBitsILm32EEEEENS2_1VIT_EERKNS5_6VectorISK_EE.exit17, label %bb.f, !prof !61

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE3PhiINS0_6ObjectEEENS2_1VIT_EERKNS5_6VectorISJ_EE.exit
  %i.ak = icmp ult i64 %i.aj, 2147483648
  br i1 %i.ak, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE3PhiINS2_12WordWithBitsILm32EEEEENS2_1VIT_EERKNS5_6VectorISK_EE.exit, label %bb.g, !prof !8

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #23
  unreachable

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE3PhiINS2_12WordWithBitsILm32EEEEENS2_1VIT_EERKNS5_6VectorISK_EE.exit: ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.am = tail call i32 @_ZN2v88internal8compiler10turboshaft27RequiredOptimizationReducerINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S8_EEEEEEEEEEEEEEEE9ReducePhiENSA_6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr %i.ad, i64 %i.aj, i8 0) ; 2 uses
  %.pre25 = load ptr, ptr %i.v, align 8
  %i.an = icmp eq ptr %.pre25, null
  %i.ao = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 2                 ; 2 uses
  br i1 %i.an, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE3PhiINS2_12WordWithBitsILm32EEEEENS2_1VIT_EERKNS5_6VectorISK_EE.exit17, label %bb.h, !prof !61

bb.h:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE3PhiINS2_12WordWithBitsILm32EEEEENS2_1VIT_EERKNS5_6VectorISK_EE.exit
  %i.av = icmp ult i64 %i.au, 2147483648
  br i1 %i.av, label %_ZNK2v84base6VectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEEE6lengthEv.exit.i15, label %bb.i, !prof !8

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #23
  unreachable

_ZNK2v84base6VectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEEE6lengthEv.exit.i15: ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ax = tail call i32 @_ZN2v88internal8compiler10turboshaft27RequiredOptimizationReducerINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S8_EEEEEEEEEEEEEEEE9ReducePhiENSA_6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr %i.ao, i64 %i.au, i8 0)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE3PhiINS2_12WordWithBitsILm32EEEEENS2_1VIT_EERKNS5_6VectorISK_EE.exit17

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE3PhiINS2_12WordWithBitsILm32EEEEENS2_1VIT_EERKNS5_6VectorISK_EE.exit17: ; preds = %bb.c, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE3PhiINS0_6ObjectEEENS2_1VIT_EERKNS5_6VectorISJ_EE.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE3PhiINS2_12WordWithBitsILm32EEEEENS2_1VIT_EERKNS5_6VectorISK_EE.exit, %_ZNK2v84base6VectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEEE6lengthEv.exit.i15
  %.sroa.09.0.i1233 = phi i32 [ %i.am, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE3PhiINS2_12WordWithBitsILm32EEEEENS2_1VIT_EERKNS5_6VectorISK_EE.exit ], [ %i.am, %_ZNK2v84base6VectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEEE6lengthEv.exit.i15 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE3PhiINS0_6ObjectEEENS2_1VIT_EERKNS5_6VectorISJ_EE.exit ], [ -1, %bb.c ]
  %.sroa.09.0.i2932 = phi i32 [ %i.aa, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE3PhiINS2_12WordWithBitsILm32EEEEENS2_1VIT_EERKNS5_6VectorISK_EE.exit ], [ %i.aa, %_ZNK2v84base6VectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEEE6lengthEv.exit.i15 ], [ %i.aa, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE3PhiINS0_6ObjectEEENS2_1VIT_EERKNS5_6VectorISJ_EE.exit ], [ -1, %bb.c ]
  %.sroa.09.0.i16 = phi i32 [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE3PhiINS2_12WordWithBitsILm32EEEEENS2_1VIT_EERKNS5_6VectorISK_EE.exit ], [ %i.ax, %_ZNK2v84base6VectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEEE6lengthEv.exit.i15 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE3PhiINS0_6ObjectEEENS2_1VIT_EERKNS5_6VectorISJ_EE.exit ], [ -1, %bb.c ]
  store i32 %.sroa.09.0.i16, ptr %0, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.09.0.i1233, ptr %i.ay, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.09.0.i2932, ptr %i.az, align 4
  br label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE3PhiINS2_12WordWithBitsILm32EEEEENS2_1VIT_EERKNS5_6VectorISK_EE.exit17, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectENS2_12WordWithBitsILm64EEENS5_ILm32EEEEE16RecordValuesImplIJLm0ELm1ELm2EEEEvRNS8_9BlockDataEPNS2_5BlockERKSt5tupleIJNS2_1VIS4_EENSF_IS6_EENSF_IS7_EEEESt16integer_sequenceImJXspT_EEE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.02.0.copyload = load i32, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.b, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %i.h)
  %.pre.i.i = load ptr, ptr %i.c, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit: ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %.pre.i.i, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store ptr %i.j, ptr %i.c, align 8
  store i32 %.sroa.02.0.copyload, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.01.0.copyload = load i32, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %bb.c, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm64EEEEELm2ESaIS8_EE9push_backES8_.exit, !prof !5

bb.c:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm64EEEEELm2ESaIS8_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %i.q)
  %.pre.i.i10 = load ptr, ptr %i.l, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm64EEEEELm2ESaIS8_EE9push_backES8_.exit

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm64EEEEELm2ESaIS8_EE9push_backES8_.exit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit, %bb.c
  %i.r = phi ptr [ %.pre.i.i10, %bb.c ], [ %i.m, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store ptr %i.s, ptr %i.l, align 8
  store i32 %.sroa.01.0.copyload, ptr %i.r, align 4
  %.sroa.0.0.copyload = load i32, ptr %2, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = icmp eq ptr %i.u, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEELm2ESaIS8_EE9push_backES8_.exit, !prof !5

bb.d:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm64EEEEELm2ESaIS8_EE9push_backES8_.exit
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEELm2ESaIS8_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  %.pre.i.i11 = load ptr, ptr %i.t, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEELm2ESaIS8_EE9push_backES8_.exit

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEELm2ESaIS8_EE9push_backES8_.exit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm64EEEEELm2ESaIS8_EE9push_backES8_.exit, %bb.d
  %i.y = phi ptr [ %.pre.i.i11, %bb.d ], [ %i.u, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm64EEEEELm2ESaIS8_EE9push_backES8_.exit ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store ptr %i.z, ptr %i.t, align 8
  store i32 %.sroa.0.0.copyload, ptr %i.y, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = icmp eq ptr %i.ab, %i.ad
  br i1 %i.ae, label %bb.e, label %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE9push_backES6_.exit, !prof !5

bb.e:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEELm2ESaIS8_EE9push_backES8_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %i.af)
  %.pre.i.i12 = load ptr, ptr %i.aa, align 8
  br label %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE9push_backES6_.exit

_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE9push_backES6_.exit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEELm2ESaIS8_EE9push_backES8_.exit, %bb.e
  %i.ag = phi ptr [ %.pre.i.i12, %bb.e ], [ %i.ab, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEELm2ESaIS8_EE9push_backES8_.exit ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.ah, ptr %i.aa, align 8
  store ptr %1, ptr %i.ag, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm64EEEEELm2ESaIS8_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm64EEEEELm2ESaIS8_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm64EEEEELm2ESaIS8_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = load ptr, ptr %0, align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.j)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.l = sub nuw nsw i64 64, %i.k                 ; 2 uses
  %i.m = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.m, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.o = shl nuw i64 4, %i.l
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 7 uses
  %i.q = icmp eq ptr %i.d, %i.b
  br i1 %i.q, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS3_12WordWithBitsILm64EEEEES8_ET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.r = ptrtoaddr ptr %i.p to i64
  %i.s = add i64 %i.c, -4
  %i.t = sub i64 %i.s, %i.h                       ; 2 uses
  %i.u = lshr i64 %i.t, 2
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 28
  %i.w = sub i64 %i.r, %i.h
  %diff.check = icmp ult i64 %i.w, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.v, 9223372036854775800      ; 3 uses
  %i.x = shl i64 %n.vec, 2                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.p, i64 %i.x
  %i.z = getelementptr i8, ptr %i.d, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.aa ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.d, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4
  %wide.load13 = load <4 x i32>, ptr %i.ab, align 4
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load13, ptr %i.ac, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !1093

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS3_12WordWithBitsILm64EEEEES8_ET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ae = load i32, ptr %.sroa.04.07.i.i.i.i, align 4
  store i32 %i.ae, ptr %.08.i.i.i.i, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  %i.ah = icmp eq ptr %i.af, %i.b
  br i1 %i.ah, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS3_12WordWithBitsILm64EEEEES8_ET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1094

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS3_12WordWithBitsILm64EEEEES8_ET0_T_SA_S9_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ai = shl nuw i64 1, %i.l
  %i.aj = ptrtoint ptr %i.b to i64
  %i.ak = sub i64 %i.aj, %i.h
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm64EEEEELm2ESaIS8_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  store ptr %i.p, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ak
  store ptr %i.al, ptr %i.a, align 8
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ai
  store ptr %i.am, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm64EEEEELm2ESaIS8_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 {
_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS3_12WordWithBitsILm64EEEEElET_S9_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS3_12WordWithBitsILm64EEEEElET_S9_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #25
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS3_12WordWithBitsILm64EEEEElET_S9_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectENS2_12WordWithBitsILm64EEENS5_ILm32EEEEE6GotoIfINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEEEvRT_NS2_7OpIndexENS0_10BranchHintERKSt5tupleIJNS2_1VIS4_EENSP_IS6_EENSP_IS7_EEEE(ptr noundef nonnull align 8 dereferenceable(169) %0, ptr noundef nonnull align 8 dereferenceable(920) %1, i32 %2, i8 noundef zeroext %3, ptr noundef nonnull align 4 dereferenceable(12) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 896 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 1, ptr %i.d, align 8
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 760
  %i.g = load ptr, ptr %0, align 8                ; 2 uses
  %i.h = icmp eq ptr %i.e, null
  br i1 %i.h, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread, label %bb.c, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !6, !align !7 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 88 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp eq i64 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal8compiler10turboshaft5Graph17AllocateNewBlocksEv(ptr noundef nonnull align 8 dereferenceable(328) %i.j)
  %.pre.i.i = load i64, ptr %i.k, align 8
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit: ; preds = %bb.c, %bb.d
  %i.p = phi i64 [ %i.l, %bb.c ], [ %.pre.i.i, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.r = add i64 %i.p, 1
  store i64 %i.r, ptr %i.k, align 8
  %i.s = load ptr, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.p
  %i.u = load ptr, ptr %i.t, align 8              ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.u, i8 0, i64 41, i1 false)
  store i32 -1, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store i32 -1, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 52
  store i32 -1, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  store i32 0, ptr %i.aa, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.y, i8 0, i64 28, i1 false)
  store ptr null, ptr %i.z, align 8
  %i.ab = tail call noundef i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE13BranchAndBindENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockESK_NS0_10BranchHintESK_(ptr noundef nonnull align 8 dereferenceable(136) %i.f, i32 %2, ptr noundef %i.g, ptr noundef nonnull %i.u, i8 noundef zeroext %3, ptr noundef nonnull %i.u)
  %i.ac = and i32 %i.ab, 1
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %bb.f, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit._ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread_crit_edge

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit._ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread_crit_edge: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit
  %.pre = load ptr, ptr %0, align 8
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit._ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread_crit_edge, %bb.b
  %i.ad = phi ptr [ %.pre, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit._ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread_crit_edge ], [ %i.g, %bb.b ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 52
  %i.af = load i32, ptr %i.ae, align 4
  %.not.i = icmp eq i32 %i.af, -1
  br i1 %.not.i, label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectENS2_12WordWithBitsILm64EEENS5_ILm32EEEEE12RecordValuesEPNS2_5BlockERNS8_9BlockDataERKSt5tupleIJNS2_1VIS4_EENSE_IS6_EENSE_IS7_EEEE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9) #23
  unreachable

_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectENS2_12WordWithBitsILm64EEENS5_ILm32EEEEE12RecordValuesEPNS2_5BlockERNS8_9BlockDataERKSt5tupleIJNS2_1VIS4_EENSE_IS6_EENSE_IS7_EEEE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread
  tail call void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectENS2_12WordWithBitsILm64EEENS5_ILm32EEEEE16RecordValuesImplIJLm0ELm1ELm2EEEEvRNS8_9BlockDataEPNS2_5BlockERKSt5tupleIJNS2_1VIS4_EENSF_IS6_EENSF_IS7_EEEESt16integer_sequenceImJXspT_EEE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %i.e, ptr noundef nonnull align 4 dereferenceable(12) %4)
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit, %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectENS2_12WordWithBitsILm64EEENS5_ILm32EEEEE12RecordValuesEPNS2_5BlockERNS8_9BlockDataERKSt5tupleIJNS2_1VIS4_EENSE_IS6_EENSE_IS7_EEEE.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindENS0_6TaggedINS0_3SmiEEEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7 ; 5 uses
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
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.o = sub i64 %i.l, %i.h
  %i.p = lshr exact i64 %i.o, 3
  %i.q = and i64 %i.p, 4294967295
  %i.r = add nuw nsw i64 %i.q, 2
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.r)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre7 = ptrtoint ptr %.pre to i64
  %.pre8 = sub i64 %.pre10.i.i.i.i, %.pre7
  br label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i

_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i: ; preds = %bb.b, %bb.a
  %.pre-phi9 = phi i64 [ %.pre8, %bb.b ], [ %i.i, %bb.a ] ; 2 uses
  %i.s = phi ptr [ %.pre.i.i.i.i, %bb.b ], [ %i.d, %bb.a ] ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.c, align 8
  %i.u = trunc i64 %.pre-phi9 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.pre-phi9, 4
end_hunk_10
begin_hunk_11_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_23DecodeExternalPointerOpEJNS2_14ShadowyOpIndexENS0_8TagRangeINS0_18ExternalPointerTagEEEEEENS2_7OpIndexEDpT0_:bb.a
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_23DecodeExternalPointerOpEEEvRKT_.exit, %bb.d
  %i.bp = phi ptr [ %.pre.i.i, %bb.d ], [ %i.az, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_23DecodeExternalPointerOpEEEvRKT_.exit ]
  %i.bq = trunc i64 %i.i to i32
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.av
  store i32 %.sroa.0.0.copyload.i, ptr %i.br, align 4
  ret i32 %i.bq
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_14JSStackCheckOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, i32 %2, i8 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7 ; 5 uses
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
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.o = sub i64 %i.l, %i.h
  %i.p = lshr exact i64 %i.o, 3
  %i.q = and i64 %i.p, 4294967295
  %i.r = add nuw nsw i64 %i.q, 2
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.r)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre14 = ptrtoint ptr %.pre to i64
  %.pre15 = sub i64 %.pre10.i.i.i.i, %.pre14
  br label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i

_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i: ; preds = %bb.b, %bb.a
  %.pre-phi16 = phi i64 [ %.pre15, %bb.b ], [ %i.i, %bb.a ] ; 2 uses
  %i.s = phi ptr [ %.pre.i.i.i.i, %bb.b ], [ %i.d, %bb.a ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.c, align 8
  %i.u = trunc i64 %.pre-phi16 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.pre-phi16, 4
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
  %.not.i.i.i = icmp eq i32 %2, -1                ; 2 uses
  store i8 -85, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.ai = select i1 %.not.i.i.i, i16 1, i16 2
  store i16 %i.ai, ptr %i.ah, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i8 %3, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store i32 %1, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 2 uses
  br i1 %.not.i.i.i, label %.lr.ph.i, label %_ZN2v88internal8compiler10turboshaft14JSStackCheckOp3NewEPNS2_5GraphENS2_1VINS0_7ContextEEENS2_9OptionalVINS2_10FrameStateEEENS3_4KindE.exit

_ZN2v88internal8compiler10turboshaft14JSStackCheckOp3NewEPNS2_5GraphENS2_1VINS0_7ContextEEENS2_9OptionalVINS2_10FrameStateEEENS3_4KindE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i
  store i32 %2, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i, %_ZN2v88internal8compiler10turboshaft14JSStackCheckOp3NewEPNS2_5GraphENS2_1VINS0_7ContextEEENS2_9OptionalVINS2_10FrameStateEEENS3_4KindE.exit
  %i.an = phi ptr [ %i.am, %_ZN2v88internal8compiler10turboshaft14JSStackCheckOp3NewEPNS2_5GraphENS2_1VINS0_7ContextEEENS2_9OptionalVINS2_10FrameStateEEENS3_4KindE.exit ], [ %i.al, %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i ]
  br label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, %.lr.ph.i
  %.011.i = phi ptr [ %i.ak, %.lr.ph.i ], [ %i.aw, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i ] ; 2 uses
  %.sroa.01.0.copyload.i = load i32, ptr %.011.i, align 4
  %i.ao = load ptr, ptr %i.f, align 8
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = zext i32 %.sroa.01.0.copyload.i to i64
  %i.ar = add i64 %i.ap, %i.aq
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 2 uses
  %i.au = load i8, ptr %i.at, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.au, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.av = add nuw i8 %i.au, 1
  store i8 %i.av, ptr %i.at, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i: ; preds = %bb.d, %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %.011.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.aw, %i.an
  br i1 %.not.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_14JSStackCheckOpEEEvRKT_.exit, label %bb.c

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_14JSStackCheckOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 884
  %.sroa.0.0.copyload.i8 = load i32, ptr %i.ax, align 4
  %i.ay = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7 ; 4 uses
  %i.az = lshr i64 %i.i, 4
  %i.ba = and i64 %i.az, 268435455                ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 216
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 208 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 2
  %.not.i.i9 = icmp ugt i64 %i.bi, %i.ba
  br i1 %.not.i.i9, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.e, !prof !8

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_14JSStackCheckOpEEEvRKT_.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 200 ; 2 uses
  %i.bk = lshr i64 %i.ba, 1
  %i.bl = add nuw nsw i64 %i.ba, 32
  %i.bm = add nuw nsw i64 %i.bl, %i.bk
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i64 noundef %i.bm)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 224
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = load ptr, ptr %i.bd, align 8
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = ashr exact i64 %i.bs, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i64 noundef %i.bt)
  %.pre.i.i = load ptr, ptr %i.bd, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_14JSStackCheckOpEEEvRKT_.exit, %bb.e
  %i.bu = phi ptr [ %.pre.i.i, %bb.e ], [ %i.be, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_14JSStackCheckOpEEEvRKT_.exit ]
  %i.bv = trunc i64 %i.i to i32
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.ba
  store i32 %.sroa.0.0.copyload.i8, ptr %i.bw, align 4
  ret i32 %i.bv
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = load ptr, ptr %0, align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.j)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.l = sub nuw nsw i64 64, %i.k                 ; 2 uses
  %i.m = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.m, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.o = shl nuw i64 4, %i.l
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 7 uses
  %i.q = icmp eq ptr %i.d, %i.b
  br i1 %i.q, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.r = ptrtoaddr ptr %i.p to i64
  %i.s = add i64 %i.c, -4
  %i.t = sub i64 %i.s, %i.h                       ; 2 uses
  %i.u = lshr i64 %i.t, 2
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 28
  %i.w = sub i64 %i.r, %i.h
  %diff.check = icmp ult i64 %i.w, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.v, 9223372036854775800      ; 3 uses
  %i.x = shl i64 %n.vec, 2                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.p, i64 %i.x
  %i.z = getelementptr i8, ptr %i.d, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.aa ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.d, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4
  %wide.load13 = load <4 x i32>, ptr %i.ab, align 4
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load13, ptr %i.ac, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !1201

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ae = load i32, ptr %.sroa.04.07.i.i.i.i, align 4
  store i32 %i.ae, ptr %.08.i.i.i.i, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  %i.ah = icmp eq ptr %i.af, %i.b
  br i1 %i.ah, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1202

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ai = shl nuw i64 1, %i.l
  %i.aj = ptrtoint ptr %i.b to i64
  %i.ak = sub i64 %i.aj, %i.h
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(280) %0)
  store ptr %i.p, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ak
  store ptr %i.al, ptr %i.a, align 8
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ai
  store ptr %i.am, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #4 comdat align 2 {
_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #25
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK2v88internal8compiler10turboshaft9Operation11outputs_repEv(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 4
  switch i8 %i.a, label %bb.ay [
    i8 0, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 1, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 2, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 3, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 4, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 5, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 6, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 7, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 8, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 9, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 10, label %bb.b
    i8 11, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 12, label %bb.c
    i8 13, label %bb.d
    i8 14, label %bb.c
    i8 15, label %bb.d
    i8 16, label %bb.c
    i8 17, label %bb.c
    i8 18, label %bb.d
    i8 19, label %bb.c
    i8 20, label %bb.c
    i8 21, label %bb.c
    i8 22, label %bb.c
    i8 23, label %bb.e
    i8 24, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 25, label %bb.f
    i8 26, label %bb.g
    i8 27, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 28, label %bb.h
    i8 29, label %bb.d
    i8 30, label %bb.c
    i8 31, label %bb.c
    i8 32, label %bb.c
    i8 33, label %bb.c
    i8 34, label %bb.i
    i8 35, label %bb.j
    i8 36, label %bb.j
    i8 37, label %bb.j
    i8 38, label %bb.j
    i8 39, label %bb.j
    i8 40, label %bb.d
    i8 41, label %bb.j
    i8 42, label %bb.j
    i8 43, label %bb.k
    i8 44, label %bb.j
    i8 45, label %bb.n
    i8 46, label %bb.j
    i8 47, label %bb.j
    i8 48, label %bb.o
    i8 49, label %bb.j
    i8 50, label %bb.o
    i8 51, label %bb.o
    i8 52, label %bb.o
    i8 53, label %bb.o
    i8 54, label %bb.o
    i8 55, label %bb.o
    i8 56, label %bb.o
    i8 57, label %bb.o
    i8 58, label %bb.o
    i8 59, label %bb.o
    i8 60, label %bb.p
    i8 61, label %bb.q
    i8 62, label %bb.r
    i8 63, label %bb.s
    i8 64, label %bb.t
    i8 65, label %bb.u
    i8 66, label %bb.v
    i8 67, label %bb.w
    i8 68, label %bb.d
    i8 69, label %bb.x
    i8 70, label %bb.y
    i8 71, label %bb.as
    i8 72, label %bb.z
    i8 73, label %bb.aa
    i8 74, label %bb.ab
    i8 75, label %bb.ac
    i8 76, label %bb.ar
    i8 77, label %bb.ad
    i8 78, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 79, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 80, label %bb.ae
    i8 81, label %bb.c
    i8 82, label %bb.d
    i8 83, label %bb.ar
    i8 84, label %bb.af
    i8 85, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 86, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 87, label %bb.ar
    i8 88, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 89, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 90, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 91, label %bb.ag
    i8 92, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 93, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 94, label %bb.c
    i8 95, label %bb.ah
    i8 96, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 97, label %bb.ai
    i8 98, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 99, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 100, label %bb.aj
    i8 101, label %bb.ak
    i8 102, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 103, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 104, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 105, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 106, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 107, label %bb.c
    i8 108, label %bb.c
    i8 109, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
    i8 110, label %bb.c
    i8 111, label %bb.c
    i8 112, label %bb.c
    i8 113, label %bb.c
    i8 114, label %bb.c
    i8 115, label %bb.al
    i8 116, label %_ZNK2v88internal8compiler10turboshaft20Simd128ExtractLaneOp11outputs_repEv.exit
end_hunk_11
