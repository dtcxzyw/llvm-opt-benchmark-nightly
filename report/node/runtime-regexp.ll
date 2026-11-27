Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/runtime-regexp?download=true
inline.NumInlined: 3452
inline.NumDeleted: 1065
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN2v88internal12StringSearchIhtE23PopulateBoyerMooreTableEv:bb.a
bb.s:                                             ; preds = %bb.r
  %i.cq = sext i32 %.4 to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.4.1 = phi i32 [ %i.cs, %bb.s ], [ %.4, %bb.r ]
  %indvars.iv.next120.1 = add nsw i64 %indvars.iv119, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next120.1 to i32
  %exitcond122.not.1 = icmp eq i32 %i.ab, %lftr.wideiv.1
  br i1 %exitcond122.not.1, label %.loopexit, label %.lr.ph112, !llvm.loop !349

.loopexit:                                        ; preds = %.lr.ph112.prol.loopexit, %bb.t, %._crit_edge, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringSearchIhtE16BoyerMooreSearchEPS2_NS_4base6VectorIKtEEi(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) #0 comdat align 2 !guid !353 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0.copyload.fr = freeze i64 %.sroa.5.0.copyload ; 3 uses
  %i.b = icmp ult i64 %2, 2147483648
  br i1 %i.b, label %_ZNK2v84base6VectorIKtE6lengthEv.exit, label %bb.b, !prof !45

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit:            ; preds = %bb.a
  %i.c = icmp ult i64 %.sroa.5.0.copyload.fr, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorIKhE6lengthEv.exit, label %bb.c, !prof !45

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit:            ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  %i.d = trunc nuw nsw i64 %2 to i32
  %i.e = trunc nuw nsw i64 %.sroa.5.0.copyload.fr to i32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 60432 ; 4 uses
  %i.j = sext i32 %i.g to i64
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr [4 x i8], ptr %i.h, i64 %i.k
  %i.m = add nsw i32 %i.e, -1                     ; 6 uses
  %i.n = sub nsw i32 %i.d, %i.e                   ; 4 uses
  %.not83 = icmp sgt i32 %3, %i.n
  br i1 %.not83, label %.thread, label %.preheader76.lr.ph

.preheader76.lr.ph:                               ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %i.o = sext i32 %i.m to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1               ; 2 uses
  %i.r = zext i8 %i.q to i16                      ; 2 uses
  %.not = icmp eq i64 %.sroa.5.0.copyload.fr, 0
  %i.s = zext i8 %i.q to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.s
  br i1 %.not, label %.preheader76, label %.preheader76.us

.preheader76.us:                                  ; preds = %.preheader76.lr.ph, %.preheader76.us.backedge
  %.153.us = phi i32 [ %.153.us.be, %.preheader76.us.backedge ], [ %3, %.preheader76.lr.ph ] ; 5 uses
  %i.u = add nsw i32 %.153.us, %i.m
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2              ; 3 uses
  %.not64.us = icmp eq i16 %i.x, %i.r
  br i1 %.not64.us, label %.preheader.us, label %bb.d

bb.d:                                             ; preds = %.preheader76.us
  %i.y = icmp ugt i16 %i.x, 255
  br i1 %i.y, label %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = zext nneg i16 %i.x to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4
  br label %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit.us

_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit.us: ; preds = %bb.e, %bb.d
  %.0.i.us = phi i32 [ %i.ab, %bb.e ], [ -1, %bb.d ]
  %i.ac = sub nsw i32 %i.m, %.0.i.us
  %i.ad = add nsw i32 %i.ac, %.153.us             ; 2 uses
  %.not65.us = icmp sgt i32 %i.ad, %i.n
  br i1 %.not65.us, label %.thread, label %.preheader76.us.backedge

.preheader76.us.backedge:                         ; preds = %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit.us, %bb.k
  %.153.us.be = phi i32 [ %i.ad, %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit.us ], [ %.2.us, %bb.k ]
  br label %.preheader76.us

bb.f:                                             ; preds = %.preheader.us, %bb.g
  %indvars.iv = phi i64 [ %i.o, %.preheader.us ], [ %indvars.iv.next, %bb.g ] ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %indvars.iv
  %i.af = load i8, ptr %i.ae, align 1
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ag = load i16, ptr %gep, align 2             ; 3 uses
  %i.ah = zext i8 %i.af to i16
  %i.ai = icmp eq i16 %i.ag, %i.ah
  br i1 %i.ai, label %bb.g, label %.critedge.us

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.aj = icmp sgt i64 %indvars.iv, 0
  br i1 %i.aj, label %bb.f, label %.thread, !llvm.loop !351

.critedge.us:                                     ; preds = %bb.f
  %i.ak = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.al = icmp sgt i32 %i.g, %i.ak
  br i1 %i.al, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.critedge.us
  %i.am = and i64 %indvars.iv, 4294967295
  %i.an = getelementptr [4 x i8], ptr %i.l, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 61460
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = icmp ugt i16 %i.ag, 255
  br i1 %i.aq, label %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit68.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = zext nneg i16 %i.ag to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4
  br label %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit68.us

_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit68.us: ; preds = %bb.i, %bb.h
  %.0.i67.us = phi i32 [ %i.at, %bb.i ], [ -1, %bb.h ]
  %i.au = sub nsw i32 %i.ak, %.0.i67.us
  %spec.select.us = tail call i32 @llvm.smax.i32(i32 %i.ap, i32 %i.au)
  br label %bb.k

bb.j:                                             ; preds = %.critedge.us
  %i.av = load i32, ptr %i.t, align 4
  %i.aw = sub nsw i32 %i.m, %i.av
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit68.us
  %.pn.us = phi i32 [ %i.aw, %bb.j ], [ %spec.select.us, %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit68.us ]
  %.2.us = add nsw i32 %.pn.us, %.153.us          ; 2 uses
  %.not.us = icmp sgt i32 %.2.us, %i.n
  br i1 %.not.us, label %.thread, label %.preheader76.us.backedge

.preheader.us:                                    ; preds = %.preheader76.us
  %i.ax = sext i32 %.153.us to i64
  %invariant.gep = getelementptr [2 x i8], ptr %1, i64 %i.ax
  br label %bb.f

.preheader76:                                     ; preds = %.preheader76.lr.ph, %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit
  %.153 = phi i32 [ %i.bh, %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit ], [ %3, %.preheader76.lr.ph ] ; 3 uses
  %i.ay = add nsw i32 %.153, %i.m
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.az
  %i.bb = load i16, ptr %i.ba, align 2            ; 3 uses
  %.not64 = icmp eq i16 %i.bb, %i.r
  br i1 %.not64, label %.thread, label %bb.l

bb.l:                                             ; preds = %.preheader76
  %i.bc = icmp ugt i16 %i.bb, 255
  br i1 %i.bc, label %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = zext nneg i16 %i.bb to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4
  br label %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit

_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit: ; preds = %bb.l, %bb.m
  %.0.i = phi i32 [ %i.bf, %bb.m ], [ -1, %bb.l ]
  %i.bg = sub nuw nsw i32 %i.m, %.0.i
  %i.bh = add nsw i32 %i.bg, %.153                ; 2 uses
  %.not65 = icmp sgt i32 %i.bh, %i.n
  br i1 %.not65, label %.thread, label %.preheader76, !llvm.loop !352

.thread:                                          ; preds = %bb.k, %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit.us, %bb.g, %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit, %.preheader76, %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %.4 = phi i32 [ %.153.us, %bb.g ], [ -1, %_ZNK2v84base6VectorIKhE6lengthEv.exit ], [ %.153, %.preheader76 ], [ -1, %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit ], [ -1, %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit.us ], [ -1, %bb.k ]
  ret i32 %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_6BigIntENS2_6StringENS2_6SymbolENS2_7BooleanENS2_4NullENS2_9UndefinedENS2_10JSReceiverEEEEEELm8ESaISF_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #15 comdat align 2 !guid !354 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_6BigIntENS2_6StringENS2_6SymbolENS2_7BooleanENS2_4NullENS2_9UndefinedENS2_10JSReceiverEEEEEELm8ESaISF_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_6BigIntENS2_6StringENS2_6SymbolENS2_7BooleanENS2_4NullENS2_9UndefinedENS2_10JSReceiverEEEEEELm8ESaISF_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #15 comdat align 2 !guid !357 {
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
  br i1 %i.k, label %bb.b, label %bb.e, !prof !44

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 8, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #24 ; 6 uses
  %i.p = load ptr, ptr %0, align 8                ; 5 uses
  %i.q = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt18uninitialized_moveIPN2v88internal21DirectHandleUncheckedINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEESF_ET0_T_SH_SG_.exit, label %.lr.ph.i.i.i.i.preheader

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
  %wide.load = load <2 x i64>, ptr %next.gep12, align 8
  %wide.load13 = load <2 x i64>, ptr %i.ac, align 8
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8
  store <2 x i64> %wide.load13, ptr %i.ad, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !355

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal21DirectHandleUncheckedINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEESF_ET0_T_SH_SG_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.af = load i64, ptr %.sroa.04.07.i.i.i.i, align 8
  store i64 %i.af, ptr %.08.i.i.i.i, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  %i.ai = icmp eq ptr %i.ag, %i.q
  br i1 %i.ai, label %_ZSt18uninitialized_moveIPN2v88internal21DirectHandleUncheckedINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEESF_ET0_T_SH_SG_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !356

_ZSt18uninitialized_moveIPN2v88internal21DirectHandleUncheckedINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEESF_ET0_T_SH_SG_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.aj = shl nuw i64 1, %i.j
  %i.ak = ptrtoint ptr %i.m to i64
  %i.al = sub i64 %i.ak, %i.f
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_6BigIntENS2_6StringENS2_6SymbolENS2_7BooleanENS2_4NullENS2_9UndefinedENS2_10JSReceiverEEEEEELm8ESaISF_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  store ptr %i.o, ptr %0, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.al
  store ptr %i.am, ptr %i.a, align 8
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.aj
  store ptr %i.an, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_6BigIntENS2_6StringENS2_6SymbolENS2_7BooleanENS2_4NullENS2_9UndefinedENS2_10JSReceiverEEEEEELm8ESaISF_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #15 comdat align 2 !guid !358 {
_ZSt9destroy_nIPN2v88internal21DirectHandleUncheckedINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEElET_SG_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal21DirectHandleUncheckedINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEElET_SG_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #25
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal21DirectHandleUncheckedINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEElET_SG_T0_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #16

declare ptr @_ZN2v88internal6Object16ConvertToIntegerINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_6ObjectEEELm8ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #15 comdat align 2 !guid !359 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_6ObjectEEELm8ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_6ObjectEEELm8ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #15 comdat align 2 !guid !362 {
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
  br i1 %i.k, label %bb.b, label %bb.e, !prof !44

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 8, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #24 ; 6 uses
  %i.p = load ptr, ptr %0, align 8                ; 5 uses
  %i.q = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt18uninitialized_moveIPN2v88internal21DirectHandleUncheckedINS1_6ObjectEEES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

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
  %wide.load = load <2 x i64>, ptr %next.gep12, align 8
  %wide.load13 = load <2 x i64>, ptr %i.ac, align 8
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8
  store <2 x i64> %wide.load13, ptr %i.ad, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !360

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal21DirectHandleUncheckedINS1_6ObjectEEES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.af = load i64, ptr %.sroa.04.07.i.i.i.i, align 8
  store i64 %i.af, ptr %.08.i.i.i.i, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  %i.ai = icmp eq ptr %i.ag, %i.q
  br i1 %i.ai, label %_ZSt18uninitialized_moveIPN2v88internal21DirectHandleUncheckedINS1_6ObjectEEES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !361

_ZSt18uninitialized_moveIPN2v88internal21DirectHandleUncheckedINS1_6ObjectEEES5_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.aj = shl nuw i64 1, %i.j
  %i.ak = ptrtoint ptr %i.m to i64
  %i.al = sub i64 %i.ak, %i.f
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_6ObjectEEELm8ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  store ptr %i.o, ptr %0, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.al
  store ptr %i.am, ptr %i.a, align 8
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.aj
  store ptr %i.an, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_6ObjectEEELm8ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #15 comdat align 2 !guid !363 {
_ZSt9destroy_nIPN2v88internal21DirectHandleUncheckedINS1_6ObjectEEElET_S6_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal21DirectHandleUncheckedINS1_6ObjectEEElET_S6_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #25
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal21DirectHandleUncheckedINS1_6ObjectEEElET_S6_T0_.exit
  ret void
}

declare ptr @_ZN2v88internal6Object12ToObjectImplEPNS0_7IsolateENS0_12DirectHandleIS1_EEPKc(ptr noundef, ptr, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal ptr @_ZN2v88internal12_GLOBAL__N_117VectorBackedMatch8GetMatchEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #14 align 2 !guid !364 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8
  ret ptr %.sroa.0.0.copyload
}

; Function Attrs: mustprogress nounwind uwtable
define internal ptr @_ZN2v88internal12_GLOBAL__N_117VectorBackedMatch9GetPrefixEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #0 align 2 !guid !365 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8 ; 3 uses
  %i.b = load i64, ptr %.sroa.0.0.copyload.i, align 8
  %i.c = add i64 %i.b, -1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  %.not = icmp ugt i32 %i.f, %i.h
  br i1 %.not, label %.critedge.i, label %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit

.critedge.i:                                      ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call ptr @_ZN2v88internal7Factory18NewProperSubStringENS0_12DirectHandleINS0_6StringEEEjj(ptr noundef nonnull align 1 dereferenceable(1) %i.j, ptr nonnull %.sroa.0.0.copyload.i, i32 noundef 0, i32 noundef %i.h) #21
  br label %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit

_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit: ; preds = %bb.a, %.critedge.i
  %.sroa.07.0.i = phi ptr [ %i.k, %.critedge.i ], [ %.sroa.0.0.copyload.i, %bb.a ]
  ret ptr %.sroa.07.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal ptr @_ZN2v88internal12_GLOBAL__N_117VectorBackedMatch9GetSuffixEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #0 align 2 !guid !366 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i3 = load ptr, ptr %i.a, align 8 ; 3 uses
  %i.b = load i64, ptr %.sroa.0.0.copyload.i3, align 8
  %i.c = add i64 %i.b, -1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i32, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i2 = load ptr, ptr %i.i, align 8
  %i.j = load i64, ptr %.sroa.0.0.copyload.i2, align 8
  %i.k = add i64 %i.j, -1
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.n = load i32, ptr %i.m, align 4
  %i.o = add i32 %i.n, %i.h
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.o, i32 %i.f) ; 2 uses
  %i.p = icmp eq i32 %.sroa.speculated, 0
  br i1 %i.p, label %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call ptr @_ZN2v88internal7Factory18NewProperSubStringENS0_12DirectHandleINS0_6StringEEEjj(ptr noundef nonnull align 1 dereferenceable(1) %i.r, ptr nonnull %.sroa.0.0.copyload.i3, i32 noundef %.sroa.speculated, i32 noundef %i.f) #21
  br label %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit

_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit: ; preds = %bb.a, %.critedge.i
  %.sroa.07.0.i = phi ptr [ %i.s, %.critedge.i ], [ %.sroa.0.0.copyload.i3, %bb.a ]
  ret ptr %.sroa.07.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i32 0, -2147483648) i32 @_ZN2v88internal12_GLOBAL__N_117VectorBackedMatch12CaptureCountEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #0 align 2 !guid !367 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp ult i64 %i.b, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorINS_8internal12DirectHandleINS2_6ObjectEEEE6lengthEv.exit, label %bb.b, !prof !45

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorINS_8internal12DirectHandleINS2_6ObjectEEEE6lengthEv.exit: ; preds = %bb.a
  %i.d = trunc nuw nsw i64 %i.b to i32
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_117VectorBackedMatch16HasNamedCapturesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #14 align 2 !guid !368 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i8, ptr %i.a, align 8, !range !42, !noundef !43
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}
end_hunk_0
begin_hunk_1_@_ZN2v88internal12StringSearchIttE23PopulateBoyerMooreTableEv:bb.a
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4
  br label %.lr.ph112.1

.lr.ph112.1:                                      ; preds = %bb.o, %bb.p
  %.4 = phi i32 [ %i.cj, %bb.p ], [ %.3110, %bb.o ] ; 4 uses
  %indvars.iv.next120 = add nsw i64 %indvars.iv119, 1 ; 2 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv.next120 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = icmp eq i32 %i.cl, %i.i
  br i1 %i.cm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph112.1
  %i.cn = sub nsw i32 %.4, %i.h
  store i32 %i.cn, ptr %i.ck, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph112.1
  %i.co = trunc nsw i64 %indvars.iv.next120 to i32
  %i.cp = icmp eq i32 %.4, %i.co
  br i1 %i.cp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cq = sext i32 %.4 to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.4.1 = phi i32 [ %i.cs, %bb.s ], [ %.4, %bb.r ]
  %indvars.iv.next120.1 = add nsw i64 %indvars.iv119, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next120.1 to i32
  %exitcond122.not.1 = icmp eq i32 %i.ab, %lftr.wideiv.1
  br i1 %exitcond122.not.1, label %.loopexit, label %.lr.ph112, !llvm.loop !422

.loopexit:                                        ; preds = %.lr.ph112.prol.loopexit, %bb.t, %._crit_edge, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringSearchIttE16BoyerMooreSearchEPS2_NS_4base6VectorIKtEEi(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) #0 comdat align 2 !guid !426 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0.copyload.fr = freeze i64 %.sroa.5.0.copyload ; 3 uses
  %i.b = icmp ult i64 %2, 2147483648
  br i1 %i.b, label %_ZNK2v84base6VectorIKtE6lengthEv.exit, label %bb.b, !prof !45

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit:            ; preds = %bb.a
  %i.c = icmp ult i64 %.sroa.5.0.copyload.fr, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorIKtE6lengthEv.exit66, label %bb.c, !prof !45

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit66:          ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  %i.d = trunc nuw nsw i64 %2 to i32
  %i.e = trunc nuw nsw i64 %.sroa.5.0.copyload.fr to i32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 60432 ; 4 uses
  %i.j = sext i32 %i.g to i64
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr [4 x i8], ptr %i.h, i64 %i.k
  %i.m = add nsw i32 %i.e, -1                     ; 6 uses
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2              ; 3 uses
  %i.q = sub nsw i32 %i.d, %i.e                   ; 4 uses
  %.not81 = icmp sgt i32 %3, %i.q
  br i1 %.not81, label %.thread, label %.preheader74.lr.ph

.preheader74.lr.ph:                               ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit66
  %.not = icmp eq i64 %.sroa.5.0.copyload.fr, 0
  %i.r = and i16 %i.p, 255
  %i.s = zext nneg i16 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.s
  br i1 %.not, label %.preheader74, label %.preheader74.us

.preheader74.us:                                  ; preds = %.preheader74.lr.ph, %.preheader74.us.backedge
  %.153.us = phi i32 [ %.153.us.be, %.preheader74.us.backedge ], [ %3, %.preheader74.lr.ph ] ; 5 uses
  %i.u = add nsw i32 %.153.us, %i.m
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2              ; 2 uses
  %.not64.us = icmp eq i16 %i.p, %i.x
  br i1 %.not64.us, label %.preheader.us, label %bb.d

bb.d:                                             ; preds = %.preheader74.us
  %i.y = and i16 %i.x, 255
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = sub nsw i32 %i.m, %i.ab
  %i.ad = add nsw i32 %i.ac, %.153.us             ; 2 uses
  %.not65.us = icmp sgt i32 %i.ad, %i.q
  br i1 %.not65.us, label %.thread, label %.preheader74.us.backedge

.preheader74.us.backedge:                         ; preds = %bb.d, %bb.i
  %.153.us.be = phi i32 [ %i.ad, %bb.d ], [ %.2.us, %bb.i ]
  br label %.preheader74.us

bb.e:                                             ; preds = %.preheader.us, %bb.f
  %indvars.iv = phi i64 [ %i.n, %.preheader.us ], [ %indvars.iv.next, %bb.f ] ; 6 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %indvars.iv
  %i.af = load i16, ptr %i.ae, align 2
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ag = load i16, ptr %gep, align 2             ; 2 uses
  %i.ah = icmp eq i16 %i.af, %i.ag
  br i1 %i.ah, label %bb.f, label %.critedge.us

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ai = icmp sgt i64 %indvars.iv, 0
  br i1 %i.ai, label %bb.e, label %.thread, !llvm.loop !424

.critedge.us:                                     ; preds = %bb.e
  %i.aj = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.ak = icmp sgt i32 %i.g, %i.aj
  br i1 %i.ak, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.critedge.us
  %i.al = and i64 %indvars.iv, 4294967295
  %i.am = getelementptr [4 x i8], ptr %i.l, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 61460
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = and i16 %i.ag, 255
  %i.aq = zext nneg i16 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = sub nsw i32 %i.aj, %i.as
  %spec.select.us = tail call i32 @llvm.smax.i32(i32 %i.ao, i32 %i.at)
  br label %bb.i

bb.h:                                             ; preds = %.critedge.us
  %i.au = load i32, ptr %i.t, align 4
  %i.av = sub nsw i32 %i.m, %i.au
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn.us = phi i32 [ %i.av, %bb.h ], [ %spec.select.us, %bb.g ]
  %.2.us = add nsw i32 %.pn.us, %.153.us          ; 2 uses
  %.not.us = icmp sgt i32 %.2.us, %i.q
  br i1 %.not.us, label %.thread, label %.preheader74.us.backedge

.preheader.us:                                    ; preds = %.preheader74.us
  %i.aw = sext i32 %.153.us to i64
  %invariant.gep = getelementptr [2 x i8], ptr %1, i64 %i.aw
  br label %bb.e

.preheader74:                                     ; preds = %.preheader74.lr.ph, %bb.j
  %.153 = phi i32 [ %i.bg, %bb.j ], [ %3, %.preheader74.lr.ph ] ; 3 uses
  %i.ax = add nsw i32 %.153, %i.m
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2            ; 2 uses
  %.not64 = icmp eq i16 %i.p, %i.ba
  br i1 %.not64, label %.thread, label %bb.j

bb.j:                                             ; preds = %.preheader74
  %i.bb = and i16 %i.ba, 255
  %i.bc = zext nneg i16 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = sub nuw nsw i32 %i.m, %i.be
  %i.bg = add nsw i32 %i.bf, %.153                ; 2 uses
  %.not65 = icmp sgt i32 %i.bg, %i.q
  br i1 %.not65, label %.thread, label %.preheader74, !llvm.loop !425

.thread:                                          ; preds = %bb.i, %bb.d, %bb.f, %bb.j, %.preheader74, %_ZNK2v84base6VectorIKtE6lengthEv.exit66
  %.4 = phi i32 [ %.153.us, %bb.f ], [ -1, %_ZNK2v84base6VectorIKtE6lengthEv.exit66 ], [ %.153, %.preheader74 ], [ -1, %bb.j ], [ -1, %bb.d ], [ -1, %bb.i ]
  ret i32 %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal19CompiledReplacement15ReplacementPartELm8ESaIS4_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #15 comdat align 2 !guid !427 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal19CompiledReplacement15ReplacementPartELm8ESaIS4_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal19CompiledReplacement15ReplacementPartELm8ESaIS4_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #15 comdat align 2 !guid !430 {
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
  br i1 %i.k, label %bb.b, label %bb.e, !prof !44

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 8, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #24 ; 6 uses
  %i.p = load ptr, ptr %0, align 8                ; 5 uses
  %i.q = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt18uninitialized_moveIPN2v88internal19CompiledReplacement15ReplacementPartES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i.preheader

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
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !428

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal19CompiledReplacement15ReplacementPartES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i.preheader15

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
  br i1 %i.ai, label %_ZSt18uninitialized_moveIPN2v88internal19CompiledReplacement15ReplacementPartES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !429

_ZSt18uninitialized_moveIPN2v88internal19CompiledReplacement15ReplacementPartES4_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.aj = shl nuw i64 1, %i.j
  %i.ak = ptrtoint ptr %i.m to i64
  %i.al = sub i64 %i.ak, %i.f
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal19CompiledReplacement15ReplacementPartELm8ESaIS4_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  store ptr %i.o, ptr %0, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.al
  store ptr %i.am, ptr %i.a, align 8
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.aj
  store ptr %i.an, ptr %i.c, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2v88internal6String9IsEqualToILNS1_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EE(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr %1, i64 %2) local_unnamed_addr #2 comdat align 2 !guid !433 {
bb.a:
  %3 = alloca %"class.v8::internal::SharedStringAccessGuardIfNeeded", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !alias.scope !434
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4
  %i.c = zext i32 %i.b to i64
  %.not.i = icmp eq i64 %2, %i.c
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %0 to i64
  %i.e = or disjoint i64 %i.d, 1
  %.idx.i.i9 = shl nuw nsw i64 %2, 1              ; 2 uses
  %i.f = icmp eq i64 %2, 0                        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %.1, %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit ] ; 7 uses
  %.sroa.090.0 = phi i64 [ %i.e, %bb.b ], [ %i.cc, %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit ] ; 2 uses
  %i.g = add i64 %.sroa.090.0, -1
  %i.h = inttoptr i64 %i.g to ptr                 ; 9 uses
  %i.i = load atomic volatile i64, ptr %i.h acquire, align 8
  %i.j = add i64 %i.i, 11
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i16, ptr %i.k monotonic, align 2
  %i.m = and i16 %i.l, 15
  switch i16 %i.m, label %bb.p [
    i16 8, label %bb.d
    i16 0, label %bb.e
    i16 9, label %bb.f
    i16 1, label %bb.f
    i16 10, label %bb.g
    i16 2, label %bb.k
    i16 11, label %bb.o
    i16 3, label %bb.o
    i16 13, label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit
    i16 5, label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit
  ]

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = sext i32 %.0 to i64
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 %i.o
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.p, ptr %1, i64 %2)
  %i.q = icmp eq i32 %bcmp.i.i, 0
  br label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.s = sext i32 %.0 to i64
  %i.t = getelementptr inbounds [2 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i.i9
  br i1 %i.f, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.01013.i.i = phi ptr [ %i.z, %.lr.ph.i.i ], [ %1, %bb.e ] ; 2 uses
  %.01112.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %i.t, %bb.e ] ; 2 uses
  %i.v = load i16, ptr %.01112.i.i, align 2
  %i.w = load i8, ptr %.01013.i.i, align 1
  %i.x = zext i8 %i.w to i16
  %.not.i.i = icmp eq i16 %i.v, %i.x              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.01112.i.i, i64 2 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01013.i.i, i64 1
  %.not16.i.i = icmp ult ptr %i.y, %i.u
  %or.cond = select i1 %.not.i.i, i1 %.not16.i.i, i1 false
  br i1 %or.cond, label %.lr.ph.i.i, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit, !llvm.loop !11

bb.f:                                             ; preds = %bb.c, %bb.c
  %i.aa = call noundef zeroext i1 @_ZN2v88internal6String23IsConsStringEqualToImplIhEEbNS0_6TaggedINS0_10ConsStringEEENS_4base6VectorIKT_EERKNS0_31SharedStringAccessGuardIfNeededE(i64 %.sroa.090.0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.g:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = inttoptr i64 %i.ac to ptr               ; 6 uses
  %i.ae = load atomic volatile i64, ptr %i.h monotonic, align 8
  %i.af = add i64 %i.ae, 11
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load atomic volatile i16, ptr %i.ag monotonic, align 2
  %i.ai = and i16 %i.ah, 16
  %.not.i4 = icmp eq i16 %i.ai, 0
  br i1 %.not.i4, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = load ptr, ptr %i.ad, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.ad) #21, !inline_history !0
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #21
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  br label %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ap = load ptr, ptr %i.ad, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = tail call noundef ptr %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #21, !inline_history !0
  br label %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit

_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit: ; preds = %bb.i, %bb.j
  %.0.i5 = phi ptr [ %i.ao, %bb.i ], [ %i.as, %bb.j ]
  %i.at = sext i32 %.0 to i64
  %i.au = getelementptr inbounds i8, ptr %.0.i5, i64 %i.at
  %bcmp.i.i6 = tail call i32 @bcmp(ptr %i.au, ptr %1, i64 %2)
  %i.av = icmp eq i32 %bcmp.i.i6, 0
  br label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.k:                                             ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ax = load i64, ptr %i.aw, align 8
end_hunk_1
begin_hunk_2_@_ZN2v88internal6String23IsConsStringEqualToImplItEEbNS0_6TaggedINS0_10ConsStringEEENS_4base6VectorIKT_EERKNS0_31SharedStringAccessGuardIfNeededE:bb.a
  %i.o = inttoptr i64 %i.n to ptr                 ; 9 uses
  %i.p = load atomic volatile i64, ptr %i.o acquire, align 8
  %i.q = add i64 %i.p, 11
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load atomic volatile i16, ptr %i.r monotonic, align 2
  %i.t = and i16 %i.s, 15
  switch i16 %i.t, label %bb.o [
    i16 8, label %bb.c
    i16 0, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit
    i16 9, label %.split
    i16 1, label %.split
    i16 10, label %bb.e
    i16 2, label %bb.j
    i16 11, label %bb.n
    i16 3, label %bb.n
    i16 13, label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit
    i16 5, label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit
  ]

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.v = sext i32 %.0 to i64
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.speculated
  br i1 %i.m, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.01013.i.i = phi ptr [ %i.ac, %bb.d ], [ %.sroa.038.0141, %bb.c ] ; 2 uses
  %.01112.i.i = phi ptr [ %i.ab, %bb.d ], [ %i.w, %bb.c ] ; 2 uses
  %i.y = load i8, ptr %.01112.i.i, align 1
  %i.z = load i16, ptr %.01013.i.i, align 2
  %i.aa = zext i8 %i.y to i16
  %.not.i.i = icmp eq i16 %i.z, %i.aa
  br i1 %.not.i.i, label %bb.d, label %.thread133

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.01112.i.i, i64 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.01013.i.i, i64 2
  %.not16.i.i = icmp ult ptr %i.ab, %i.x
  br i1 %.not16.i.i, label %.lr.ph.i.i, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, !llvm.loop !12

.split:                                           ; preds = %bb.b, %bb.b
  %i.ad = call noundef zeroext i1 @_ZN2v88internal6String23IsConsStringEqualToImplItEEbNS0_6TaggedINS0_10ConsStringEEENS_4base6VectorIKT_EERKNS0_31SharedStringAccessGuardIfNeededE(i64 %.sroa.0118.0, ptr %.sroa.038.0141, i64 %.sroa.speculated, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br i1 %i.ad, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, label %.thread133

bb.e:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = inttoptr i64 %i.af to ptr               ; 6 uses
  %i.ah = load atomic volatile i64, ptr %i.o monotonic, align 8
  %i.ai = add i64 %i.ah, 11
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = load atomic volatile i16, ptr %i.aj monotonic, align 2
  %i.al = and i16 %i.ak, 16
  %.not.i = icmp eq i16 %i.al, 0
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = load ptr, ptr %i.ag, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call noundef zeroext i1 %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #21, !inline_history !0
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #21
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  br label %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.as = load ptr, ptr %i.ag, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call noundef ptr %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #21, !inline_history !0
  br label %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit

_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit: ; preds = %bb.g, %bb.h
  %.0.i = phi ptr [ %i.ar, %bb.g ], [ %i.av, %bb.h ]
  %i.aw = sext i32 %.0 to i64
  %i.ax = getelementptr inbounds i8, ptr %.0.i, i64 %i.aw ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sroa.speculated
  br i1 %i.m, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, label %.lr.ph.i.i19

.lr.ph.i.i19:                                     ; preds = %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit, %bb.i
  %.01013.i.i20 = phi ptr [ %i.bd, %bb.i ], [ %.sroa.038.0141, %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit ] ; 2 uses
  %.01112.i.i21 = phi ptr [ %i.bc, %bb.i ], [ %i.ax, %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit ] ; 2 uses
  %i.az = load i8, ptr %.01112.i.i21, align 1
  %i.ba = load i16, ptr %.01013.i.i20, align 2
  %i.bb = zext i8 %i.az to i16
  %.not.i.i22 = icmp eq i16 %i.ba, %i.bb
  br i1 %.not.i.i22, label %bb.i, label %.thread133

bb.i:                                             ; preds = %.lr.ph.i.i19
  %i.bc = getelementptr inbounds nuw i8, ptr %.01112.i.i21, i64 1 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.01013.i.i20, i64 2
  %.not16.i.i24 = icmp ult ptr %i.bc, %i.ay
  br i1 %.not16.i.i24, label %.lr.ph.i.i19, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, !llvm.loop !12

bb.j:                                             ; preds = %bb.b
  %i.be = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = inttoptr i64 %i.bf to ptr               ; 6 uses
  %i.bh = load atomic volatile i64, ptr %i.o monotonic, align 8
  %i.bi = add i64 %i.bh, 11
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = load atomic volatile i16, ptr %i.bj monotonic, align 2
  %i.bl = and i16 %i.bk, 16
  %.not.i26 = icmp eq i16 %i.bl, 0
  br i1 %.not.i26, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = load ptr, ptr %i.bg, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = call noundef zeroext i1 %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %i.bg) #21, !inline_history !1
  br i1 %i.bp, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #21
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.bs = load ptr, ptr %i.bg, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 72
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = call noundef ptr %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #21, !inline_history !1
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit: ; preds = %bb.l, %bb.m
  %.0.i27 = phi ptr [ %i.br, %bb.l ], [ %i.bv, %bb.m ]
  %i.bw = sext i32 %.0 to i64
  %i.bx = getelementptr inbounds [2 x i8], ptr %.0.i27, i64 %i.bw
  %bcmp.i.i28 = call i32 @bcmp(ptr %i.bx, ptr %.sroa.038.0141, i64 %i.l)
  %i.by = icmp eq i32 %bcmp.i.i28, 0
  br i1 %i.by, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, label %.thread133

bb.n:                                             ; preds = %bb.b, %bb.b
  %i.bz = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = lshr i64 %i.ca, 32
  %i.cc = trunc nuw i64 %i.cb to i32
  %i.cd = add nsw i32 %.0, %i.cc
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit

bb.o:                                             ; preds = %bb.b
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #22
  unreachable

_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit: ; preds = %bb.b, %bb.b, %bb.n
  %.1 = phi i32 [ %i.cd, %bb.n ], [ %.0, %bb.b ], [ %.0, %bb.b ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.cf = load i64, ptr %i.ce, align 8
  br label %bb.b

_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %bb.b
  %i.cg = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ch = sext i32 %.0 to i64
  %i.ci = getelementptr inbounds [2 x i8], ptr %i.cg, i64 %i.ch
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.ci, ptr %.sroa.038.0141, i64 %i.l)
  %i.cj = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.cj, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, label %.thread133

_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread: ; preds = %bb.i, %bb.d, %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit, %bb.c, %.split, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %.sroa.038.0141, i64 %.sroa.speculated
  %i.cl = sub i64 %.sroa.6.0140, %.sroa.speculated ; 2 uses
  %.not = icmp eq i64 %i.cl, 0
  br i1 %.not, label %.thread133, label %bb.p

bb.p:                                             ; preds = %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread
  store i32 0, ptr %i.a, align 4
  %i.cm = load i32, ptr %i.d, align 8
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %.thread133, label %_ZN2v88internal18ConsStringIterator4NextEPi.exit32

_ZN2v88internal18ConsStringIterator4NextEPi.exit32: ; preds = %bb.p
  %i.co = call i64 @_ZN2v88internal18ConsStringIterator8ContinueEPi(ptr noundef nonnull align 8 dereferenceable(276) %4, ptr noundef nonnull %i.a) #21 ; 2 uses
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %.thread133, label %.lr.ph, !llvm.loop !441

.thread133:                                       ; preds = %bb.p, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, %_ZN2v88internal18ConsStringIterator4NextEPi.exit32, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit, %.split, %.lr.ph.i.i19, %.lr.ph.i.i, %_ZN2v88internal18ConsStringIteratorC2ENS0_6TaggedINS0_10ConsStringEEEi.exit.thread, %_ZN2v88internal18ConsStringIteratorC2ENS0_6TaggedINS0_10ConsStringEEEi.exit, %_ZN2v88internal18ConsStringIterator4NextEPi.exit
  %.116 = phi i1 [ true, %_ZN2v88internal18ConsStringIterator4NextEPi.exit ], [ false, %.lr.ph.i.i19 ], [ true, %_ZN2v88internal18ConsStringIteratorC2ENS0_6TaggedINS0_10ConsStringEEEi.exit.thread ], [ true, %_ZN2v88internal18ConsStringIteratorC2ENS0_6TaggedINS0_10ConsStringEEEi.exit ], [ false, %.lr.ph.i.i ], [ true, %bb.p ], [ false, %.split ], [ false, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit ], [ true, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread ], [ true, %_ZN2v88internal18ConsStringIterator4NextEPi.exit32 ], [ false, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret i1 %.116
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_6StringEEELm8ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #15 comdat align 2 !guid !445 {
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
  br i1 %i.k, label %bb.b, label %bb.e, !prof !44

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 8, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #24 ; 6 uses
  %i.p = load ptr, ptr %0, align 8                ; 5 uses
  %i.q = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt18uninitialized_moveIPN2v88internal21DirectHandleUncheckedINS1_6StringEEES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

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
  %wide.load = load <2 x i64>, ptr %next.gep12, align 8
  %wide.load13 = load <2 x i64>, ptr %i.ac, align 8
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8
  store <2 x i64> %wide.load13, ptr %i.ad, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !443

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal21DirectHandleUncheckedINS1_6StringEEES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.af = load i64, ptr %.sroa.04.07.i.i.i.i, align 8
  store i64 %i.af, ptr %.08.i.i.i.i, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  %i.ai = icmp eq ptr %i.ag, %i.q
  br i1 %i.ai, label %_ZSt18uninitialized_moveIPN2v88internal21DirectHandleUncheckedINS1_6StringEEES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !444

_ZSt18uninitialized_moveIPN2v88internal21DirectHandleUncheckedINS1_6StringEEES5_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.aj = shl nuw i64 1, %i.j
  %i.ak = ptrtoint ptr %i.m to i64
  %i.al = sub i64 %i.ak, %i.f
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_6StringEEELm8ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  store ptr %i.o, ptr %0, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.al
  store ptr %i.am, ptr %i.a, align 8
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.aj
  store ptr %i.an, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_6StringEEELm8ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #15 comdat align 2 !guid !446 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_6StringEEELm8ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef 0)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #18

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nounwind }
attributes #22 = { noreturn nounwind }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { builtin nounwind allocsize(0) }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn }

!llvm.module.flags = !{!13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{!2, !46}
!3 = distinct !{!3, !46}
!4 = distinct !{!4, !46}
!5 = distinct !{!5, !46}
!6 = distinct !{!6, !46}
!7 = distinct !{!7, !46}
!8 = distinct !{!8, !46}
!9 = distinct !{!9, !46}
!10 = distinct !{!10, !46}
!11 = distinct !{!11, !46}
!12 = distinct !{!12, !46}
!13 = !{i32 8, !"PIC Level", i32 2}
!14 = !{i32 7, !"PIE Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 2}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!18 = !{i64 1352950786475702167}
!19 = !{i64 -2407439796732720643}
!20 = !{i64 -3573503485594677194}
!21 = !{i64 4795468401071882836}
!22 = !{i64 -1604084476302324589}
!23 = !{i64 7931187184755287273}
!24 = !{i64 5412187843686392606}
!25 = !{i64 2502766710017730817}
!26 = !{i64 -6590953923141778214}
!27 = !{i64 4507290152668295575}
!28 = !{i64 5167498331708156578}
!29 = !{i64 -3188056597149244108}
!30 = !{i64 7527290475270331657}
!31 = !{i64 5999263571837205747}
!32 = !{i64 1750255212236859695}
!33 = !{i64 1075151514492333926}
!34 = !{i64 3396770325236423929}
!35 = !{i64 7573404921157704423}
!36 = !{i64 -5792456612804562152}
!37 = !{i64 7212708559149052125}
!38 = !{i64 -7590004830116816538}
!39 = !{i64 1492404217687308961}
!40 = !{i64 7553076267424733516}
!41 = !{i64 -8331662072936410943}
!42 = !{i8 0, i8 2}
end_hunk_2
