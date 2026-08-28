Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/transpose_layer?download=true
inline.NumInlined: 721
inline.NumDeleted: 376
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi:bb.a
.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.f
  %i.ak = add i64 %i.af, -4
  %i.al = sub i64 %i.ak, %i.e                     ; 2 uses
  %i.am = lshr i64 %i.al, 2
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %min.iters.check25 = icmp ult i64 %i.al, 28
  br i1 %min.iters.check25, label %.lr.ph.i.i.i.i.preheader63, label %vector.ph26

vector.ph26:                                      ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec27 = and i64 %i.an, 9223372036854775800   ; 3 uses
  %i.ao = shl i64 %n.vec27, 2
  %i.ap = getelementptr i8, ptr %i.c, i64 %i.ao
  %broadcast.splatinsert28 = insertelement <4 x i32> poison, i32 %i.aj, i64 0
  %broadcast.splat29 = shufflevector <4 x i32> %broadcast.splatinsert28, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body30

vector.body30:                                    ; preds = %vector.body30, %vector.ph26
  %index31 = phi i64 [ 0, %vector.ph26 ], [ %index.next33, %vector.body30 ] ; 2 uses
  %i.aq = shl i64 %index31, 2
  %next.gep32 = getelementptr i8, ptr %i.c, i64 %i.aq ; 2 uses
  %i.ar = getelementptr i8, ptr %next.gep32, i64 16
  store <4 x i32> %broadcast.splat29, ptr %next.gep32, align 4, !tbaa !85
  store <4 x i32> %broadcast.splat29, ptr %i.ar, align 4, !tbaa !85
  %index.next33 = add nuw i64 %index31, 8         ; 2 uses
  %i.as = icmp eq i64 %index.next33, %n.vec27
  br i1 %i.as, label %middle.block34, label %vector.body30, !llvm.loop !252

middle.block34:                                   ; preds = %vector.body30
  %cmp.n35 = icmp eq i64 %i.an, %n.vec27
  br i1 %cmp.n35, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.loopexit, label %.lr.ph.i.i.i.i.preheader63

.lr.ph.i.i.i.i.preheader63:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block34
  %.06.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.ap, %middle.block34 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader63, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i ], [ %.06.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader63 ] ; 2 uses
  store i32 %i.aj, ptr %.06.i.i.i.i, align 4, !tbaa !85
  %i.at = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.at, %i.ae
  br i1 %.not.i.i.i.i11, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !253

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i, %middle.block34
  %.pre = load i32, ptr %2, align 4, !tbaa !85
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit: ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.loopexit, %bb.f
  %i.au = phi i32 [ %.pre, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.loopexit ], [ %i.aj, %bb.f ] ; 2 uses
  %i.av = sub nuw i64 %1, %i.ah
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.av, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx.i.i.i.i.i ; 2 uses
  %i.ax = shl i64 %1, 2
  %i.ay = add i64 %i.ax, -4
  %i.az = sub i64 %i.ay, %i.ag                    ; 2 uses
  %i.ba = lshr i64 %i.az, 2
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check38 = icmp ult i64 %i.az, 28
  br i1 %min.iters.check38, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph39

vector.ph39:                                      ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit
  %n.vec40 = and i64 %i.bb, 9223372036854775800   ; 3 uses
  %i.bc = shl i64 %n.vec40, 2
  %i.bd = getelementptr i8, ptr %i.ae, i64 %i.bc
  %broadcast.splatinsert41 = insertelement <4 x i32> poison, i32 %i.au, i64 0
  %broadcast.splat42 = shufflevector <4 x i32> %broadcast.splatinsert41, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body43

vector.body43:                                    ; preds = %vector.body43, %vector.ph39
  %index44 = phi i64 [ 0, %vector.ph39 ], [ %index.next46, %vector.body43 ] ; 2 uses
  %i.be = shl i64 %index44, 2
  %next.gep45 = getelementptr i8, ptr %i.ae, i64 %i.be ; 2 uses
  %i.bf = getelementptr i8, ptr %next.gep45, i64 16
  store <4 x i32> %broadcast.splat42, ptr %next.gep45, align 4, !tbaa !85
  store <4 x i32> %broadcast.splat42, ptr %i.bf, align 4, !tbaa !85
  %index.next46 = add nuw i64 %index44, 8         ; 2 uses
  %i.bg = icmp eq i64 %index.next46, %n.vec40
  br i1 %i.bg, label %middle.block47, label %vector.body43, !llvm.loop !254

middle.block47:                                   ; preds = %vector.body43
  %cmp.n48 = icmp eq i64 %i.bb, %n.vec40
  br i1 %cmp.n48, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit, %middle.block47
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.ae, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit ], [ %i.bd, %middle.block47 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.au, ptr %.06.i.i.i.i.i.i.i, align 4, !tbaa !85
  %i.bh = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bh, %i.aw
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !255

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block47
  store ptr %i.aw, ptr %i.ad, align 8, !tbaa !81
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.bi = icmp eq i64 %1, 0
  br i1 %i.bi, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.idx.i.i = shl nuw nsw i64 %1, 2               ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i ; 3 uses
  %i.bk = load i32, ptr %2, align 4, !tbaa !85    ; 2 uses
  %i.bl = add nsw i64 %.idx.i.i, -4               ; 2 uses
  %i.bm = lshr exact i64 %i.bl, 2
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bl, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i12.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.h
  %n.vec = and i64 %i.bn, 9223372036854775800     ; 3 uses
  %i.bo = shl i64 %n.vec, 2
  %i.bp = getelementptr i8, ptr %i.c, i64 %i.bo
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bk, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bq = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.bq ; 2 uses
  %i.br = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !85
  store <4 x i32> %broadcast.splat, ptr %i.br, align 4, !tbaa !85
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !256

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bn, %n.vec
  br i1 %cmp.n, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit, label %.lr.ph.i.i.i.i12.preheader

.lr.ph.i.i.i.i12.preheader:                       ; preds = %bb.h, %middle.block
  %.06.i.i.i.i13.ph = phi ptr [ %i.c, %bb.h ], [ %i.bp, %middle.block ]
  br label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %.lr.ph.i.i.i.i12.preheader, %.lr.ph.i.i.i.i12
  %.06.i.i.i.i13 = phi ptr [ %i.bt, %.lr.ph.i.i.i.i12 ], [ %.06.i.i.i.i13.ph, %.lr.ph.i.i.i.i12.preheader ] ; 2 uses
  store i32 %i.bk, ptr %.06.i.i.i.i13, align 4, !tbaa !85
  %i.bt = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i13, i64 4 ; 2 uses
  %.not.i.i.i.i14 = icmp eq ptr %i.bt, %i.bj
  br i1 %.not.i.i.i.i14, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit, label %.lr.ph.i.i.i.i12, !llvm.loop !257

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit:              ; preds = %.lr.ph.i.i.i.i12, %middle.block, %bb.g
  %.0.i.i = phi ptr [ %i.c, %bb.g ], [ %i.bj, %middle.block ], [ %i.bj, %.lr.ph.i.i.i.i12 ] ; 2 uses
  %.not.i = icmp eq ptr %i.ae, %.0.i.i
  br i1 %.not.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i:          ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit
  store ptr %.0.i.i, ptr %i.ad, align 8, !tbaa !81
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit, %bb.d, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12cpu_baseline16transpose2D_f32_EPKfPflllE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #15 align 2 {
bb.a:
  %.val2 = load i32, ptr %1, align 4, !tbaa !13   ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val3 = load i32, ptr %i.a, align 4            ; 2 uses
  %i.b = sext i32 %.val3 to i64
  %i.c = icmp slt i32 %.val2, %.val3
  br i1 %i.c, label %.lr.ph.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baseline16transpose2D_f32_EPKfPflllE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit"

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !21    ; 7 uses
  %i.d = sext i32 %.val2 to i64                   ; 4 uses
  %i.e = load ptr, ptr %.val, align 8, !tbaa !258, !nonnull !139, !align !142
  %i.f = load i64, ptr %i.e, align 8, !tbaa !11   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !260, !nonnull !139, !align !142
  %i.i = load i64, ptr %i.h, align 8, !tbaa !11   ; 7 uses
  %i.j = mul i64 %i.i, %i.f                       ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !261, !nonnull !139, !align !142
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !262, !nonnull !139, !align !142
  %i.p = load i64, ptr %i.o, align 8, !tbaa !11   ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !263, !nonnull !139, !align !142
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !8    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !264, !nonnull !139, !align !142
  %i.v = load i64, ptr %i.u, align 8, !tbaa !11   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !265, !nonnull !139, !align !142
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !8    ; 3 uses
  %i.z = shl nsw i64 %i.d, 7                      ; 2 uses
  %i.aa = shl i64 %i.p, 7
  %i.ab = shl i64 %i.i, 7
  %i.ac = shl i64 %i.v, 2
  %i.ad = shl nsw i64 %i.d, 5                     ; 2 uses
  %i.ae = or disjoint i64 %i.ad, 1                ; 2 uses
  %i.af = shl i64 %i.i, 5
  %i.ag = xor i64 %i.ad, -1
  %.neg = mul i64 %i.i, -32
  %i.ah = getelementptr i8, ptr %i.y, i64 %i.z
  %2 = getelementptr i8, ptr %i.ah, i64 4
  %ident.check.not = icmp eq i64 %i.m, 1
  %.mask = and i64 %i.p, 2305843009213693952
  %stride.check = icmp ne i64 %.mask, 0
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge8.split.i.i.i, %.lr.ph.i.i.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge8.split.i.i.i ], [ 0, %.lr.ph.i.i.i ] ; 6 uses
  %.0329.i.i.i = phi i64 [ %i.cr, %._crit_edge8.split.i.i.i ], [ %i.d, %.lr.ph.i.i.i ] ; 3 uses
  %i.ai = sdiv i64 %.0329.i.i.i, %i.j             ; 5 uses
  %i.aj = mul i64 %i.ai, %i.j                     ; 0 uses
  %.recomposed = srem i64 %.0329.i.i.i, %i.j      ; 2 uses
  %i.ak = sdiv i64 %.recomposed, %i.i             ; 6 uses
  %i.al = mul i64 %i.ak, %i.i                     ; 0 uses
  %.recomposed19 = srem i64 %.recomposed, %i.i
  %i.am = shl nsw i64 %i.ak, 5                    ; 4 uses
  %i.an = add i64 %i.am, 32
  %.sroa.speculated3.i.i.i = tail call i64 @llvm.smin.i64(i64 %i.m, i64 %i.an) ; 2 uses
  %i.ao = shl i64 %.recomposed19, 5               ; 5 uses
  %i.ap = add i64 %i.ao, 32
  %.sroa.speculated.i.i.i = tail call i64 @llvm.smin.i64(i64 %i.p, i64 %i.ap) ; 3 uses
  %i.aq = mul i64 %i.ai, %i.v                     ; 4 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.aq
  %i.as = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.aq
  %i.at = icmp sgt i64 %i.m, %i.am
  %i.au = icmp sgt i64 %i.p, %i.ao
  %or.cond.i.i.i = select i1 %i.at, i1 %i.au, i1 false
  br i1 %or.cond.i.i.i, label %.preheader.i.i.i.preheader, label %._crit_edge8.split.i.i.i

.preheader.i.i.i.preheader:                       ; preds = %bb.b
  %i.av = shl i64 %indvar, 7                      ; 2 uses
  %i.aw = add i64 %i.z, %i.av                     ; 2 uses
  %scevgep13 = getelementptr i8, ptr %i.s, i64 %i.aw ; 2 uses
  %i.ax = shl i64 %indvar, 5
  %i.ay = sub i64 %i.ag, %i.ax                    ; 2 uses
  %i.az = shl i64 %indvar, 5
  %i.ba = add i64 %i.ae, %i.az
  %scevgep10 = getelementptr i8, ptr %2, i64 %i.av
  %scevgep = getelementptr i8, ptr %i.y, i64 %i.aw
  %3 = add i64 %indvar, %i.d
  %4 = shl i64 %indvar, 5
  %5 = add i64 %i.ae, %4
  %i.bb = mul i64 %i.aa, %i.ak
  %i.bc = mul i64 %i.f, %i.ai
  %i.bd = add i64 %i.bc, %i.ak
  %i.be = sub i64 0, %i.bd                        ; 2 uses
  %i.bf = mul i64 %i.ab, %i.be                    ; 2 uses
  %i.bg = mul i64 %i.ac, %i.ai                    ; 2 uses
  %i.bh = getelementptr i8, ptr %scevgep, i64 %i.bb
  %i.bi = getelementptr i8, ptr %i.bh, i64 %i.bf
  %scevgep9 = getelementptr i8, ptr %i.bi, i64 %i.bg
  %i.bj = or disjoint i64 %i.am, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %.sroa.speculated3.i.i.i, i64 %i.bj) ; 2 uses
  %i.bk = shl i64 %smax, 2
  %i.bl = add i64 %i.bk, -4
  %i.bm = mul i64 %i.p, %i.bl
  %i.bn = mul i64 %i.af, %i.be
  %i.bo = add i64 %i.ba, %i.bn
  %smax11 = tail call i64 @llvm.smax.i64(i64 %.sroa.speculated.i.i.i, i64 %i.bo) ; 2 uses
  %i.bp = add i64 %smax11, %i.ay
  %i.bq = add i64 %i.bp, %i.aq
  %i.br = shl i64 %i.bq, 2
  %i.bs = getelementptr i8, ptr %scevgep10, i64 %i.bm
  %scevgep12 = getelementptr i8, ptr %i.bs, i64 %i.br
  %i.bt = shl i64 %i.ak, 7
  %i.bu = getelementptr i8, ptr %scevgep13, i64 %i.bf
  %i.bv = getelementptr i8, ptr %i.bu, i64 %i.bg
  %scevgep14 = getelementptr i8, ptr %i.bv, i64 %i.bt
  %i.bw = add i64 %smax11, %smax
  %i.bx = add i64 %i.bw, %i.ay
  %i.by = add i64 %i.bx, %i.aq
  %i.bz = shl i64 %i.by, 2
  %scevgep15 = getelementptr i8, ptr %scevgep13, i64 %i.bz
  %i.ca = mul i64 %i.f, %i.ai
  %i.cb = add i64 %i.ca, %i.ak
  %.neg18 = mul i64 %.neg, %i.cb                  ; 2 uses
  %i.cc = add i64 %5, %.neg18
  %smax16 = tail call i64 @llvm.smax.i64(i64 %.sroa.speculated.i.i.i, i64 %i.cc) ; 2 uses
  %i.cd = shl i64 %3, 5
  %i.ce = add i64 %i.cd, %.neg18
  %i.cf = sub i64 %smax16, %i.ce                  ; 2 uses
  %min.iters.check = icmp ugt i64 %i.cf, 7
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %bound0 = icmp ult ptr %scevgep9, %scevgep15
  %bound1 = icmp ult ptr %scevgep14, %scevgep12
  %found.conflict = and i1 %bound0, %bound1
  %i.cg = or i1 %found.conflict, %stride.check
  %i.ch = and i64 %smax16, 7                      ; 2 uses
  %n.vec = sub i64 %i.cf, %i.ch                   ; 2 uses
  %i.ci = add i64 %i.ao, %n.vec
  %cmp.n = icmp eq i64 %i.ch, 0
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.preheader, %._crit_edge.i.i.i
  %.0317.i.i.i = phi i64 [ %i.cs, %._crit_edge.i.i.i ], [ %i.am, %.preheader.i.i.i.preheader ] ; 3 uses
  %invariant.gep.i.i.i = getelementptr [4 x i8], ptr %i.ar, i64 %.0317.i.i.i ; 2 uses
  %i.cj = mul nsw i64 %.0317.i.i.i, %i.p
  %i.ck = getelementptr [4 x i8], ptr %i.as, i64 %i.cj ; 2 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %i.cg
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i.i.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i.i.i ] ; 2 uses
  %i.cl = add i64 %i.ao, %index                   ; 2 uses
  %i.cm = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %i.cl ; 2 uses
  %i.cn = getelementptr i8, ptr %i.cm, i64 16
  %wide.load = load <4 x float>, ptr %i.cm, align 4, !tbaa !266, !alias.scope !268
  %wide.load17 = load <4 x float>, ptr %i.cn, align 4, !tbaa !266, !alias.scope !268
  %i.co = getelementptr [4 x i8], ptr %i.ck, i64 %i.cl ; 2 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 16
  store <4 x float> %wide.load, ptr %i.co, align 4, !tbaa !266, !alias.scope !271, !noalias !268
  store <4 x float> %wide.load17, ptr %i.cp, align 4, !tbaa !266, !alias.scope !271, !noalias !268
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !273

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.i.i, %middle.block
  %.06.i.i.i.ph = phi i64 [ %i.ci, %middle.block ], [ %i.ao, %.preheader.i.i.i ]
  br label %scalar.ph

._crit_edge8.split.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.b
  %i.cr = add nsw i64 %.0329.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.cr, %i.b
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baseline16transpose2D_f32_EPKfPflllE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit", label %bb.b, !llvm.loop !274

._crit_edge.i.i.i:                                ; preds = %scalar.ph, %middle.block
  %i.cs = add nsw i64 %.0317.i.i.i, 1             ; 2 uses
  %i.ct = icmp slt i64 %i.cs, %.sroa.speculated3.i.i.i
  br i1 %i.ct, label %.preheader.i.i.i, label %._crit_edge8.split.i.i.i, !llvm.loop !275

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.06.i.i.i = phi i64 [ %i.cx, %scalar.ph ], [ %.06.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cu = mul nsw i64 %.06.i.i.i, %i.m
  %gep.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %i.cu
  %i.cv = load float, ptr %gep.i.i.i, align 4, !tbaa !266
  %i.cw = getelementptr [4 x i8], ptr %i.ck, i64 %.06.i.i.i
  store float %i.cv, ptr %i.cw, align 4, !tbaa !266
  %i.cx = add nsw i64 %.06.i.i.i, 1               ; 2 uses
  %i.cy = icmp slt i64 %i.cx, %.sroa.speculated.i.i.i
  br i1 %i.cy, label %scalar.ph, label %._crit_edge.i.i.i, !llvm.loop !276

"_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baseline16transpose2D_f32_EPKfPflllE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit": ; preds = %._crit_edge8.split.i.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12cpu_baseline16transpose2D_f32_EPKfPflllE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16transpose2D_f32_EPKfPflllE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN2cv3dnn12cpu_baseline16transpose2D_f32_EPKfPflllE3$_0", ptr %0, align 8, !tbaa !154
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16transpose2D_f32_EPKfPflllE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !21
  store ptr %.val, ptr %0, align 8, !tbaa !21
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16transpose2D_f32_EPKfPflllE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #19 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(56) %.val6, i64 56, i1 false), !tbaa.struct !277
  store ptr %i.a, ptr %0, align 8, !tbaa !21
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16transpose2D_f32_EPKfPflllE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !21 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16transpose2D_f32_EPKfPflllE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 56) #21
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16transpose2D_f32_EPKfPflllE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16transpose2D_f32_EPKfPflllE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN2cv3dnn18TransposeLayerImplEEET_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !278
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19
          to label %bb.b unwind label %bb.c       ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !279
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !281
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN2cv3dnn18TransposeLayerImplELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.d, align 8, !tbaa !282
  store ptr %i.a, ptr %0, align 8, !tbaa !278
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.f) #18 ; 0 uses
  %i.h = icmp eq ptr %1, null
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2cv3dnn14dnn5_v2026060514TransposeLayerD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %1) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 184) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  invoke void @__cxa_rethrow() #22
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.i

bb.h:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #20
  unreachable

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv3dnn18TransposeLayerImplELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv3dnn18TransposeLayerImplELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !282  ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 296) (i8, ptr @_ZTVN2cv3dnn14dnn5_v2026060514TransposeLayerE, i64 16), ptr %i.b, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !56   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZN2cv3dnn14dnn5_v2026060514TransposeLayerD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54
  %i.h = ptrtoint ptr %i.g to i64
end_hunk_0
