Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/transpose_layer?download=true
inline.NumInlined: 721
inline.NumDeleted: 376
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi:bb.a
  %broadcast.splatinsert28 = insertelement <4 x i32> poison, i32 %i.aj, i64 0
  %broadcast.splat29 = shufflevector <4 x i32> %broadcast.splatinsert28, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body30

vector.body30:                                    ; preds = %vector.body30, %vector.ph26
  %index31 = phi i64 [ 0, %vector.ph26 ], [ %index.next33, %vector.body30 ] ; 2 uses
  %i.aq = shl i64 %index31, 2
  %next.gep32 = getelementptr i8, ptr %i.c, i64 %i.aq ; 2 uses
  %i.ar = getelementptr i8, ptr %next.gep32, i64 16
  store <4 x i32> %broadcast.splat29, ptr %next.gep32, align 4, !tbaa !66
  store <4 x i32> %broadcast.splat29, ptr %i.ar, align 4, !tbaa !66
  %index.next33 = add nuw i64 %index31, 8         ; 2 uses
  %i.as = icmp eq i64 %index.next33, %n.vec27
  br i1 %i.as, label %middle.block34, label %vector.body30, !llvm.loop !256

middle.block34:                                   ; preds = %vector.body30
  %cmp.n35 = icmp eq i64 %i.an, %n.vec27
  br i1 %cmp.n35, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.loopexit, label %.lr.ph.i.i.i.i.preheader63

.lr.ph.i.i.i.i.preheader63:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block34
  %.06.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.ap, %middle.block34 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader63, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i ], [ %.06.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader63 ] ; 2 uses
  store i32 %i.aj, ptr %.06.i.i.i.i, align 4, !tbaa !66
  %i.at = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.at, %i.ae
  br i1 %.not.i.i.i.i11, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !257

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i, %middle.block34
  %.pre = load i32, ptr %2, align 4, !tbaa !66
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
  store <4 x i32> %broadcast.splat42, ptr %next.gep45, align 4, !tbaa !66
  store <4 x i32> %broadcast.splat42, ptr %i.bf, align 4, !tbaa !66
  %index.next46 = add nuw i64 %index44, 8         ; 2 uses
  %i.bg = icmp eq i64 %index.next46, %n.vec40
  br i1 %i.bg, label %middle.block47, label %vector.body43, !llvm.loop !258

middle.block47:                                   ; preds = %vector.body43
  %cmp.n48 = icmp eq i64 %i.bb, %n.vec40
  br i1 %cmp.n48, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit, %middle.block47
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.ae, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit ], [ %i.bd, %middle.block47 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.au, ptr %.06.i.i.i.i.i.i.i, align 4, !tbaa !66
  %i.bh = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bh, %i.aw
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !259

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block47
  store ptr %i.aw, ptr %i.ad, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.bi = icmp eq i64 %1, 0
  br i1 %i.bi, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.idx.i.i = shl nuw nsw i64 %1, 2               ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i ; 3 uses
  %i.bk = load i32, ptr %2, align 4, !tbaa !66    ; 2 uses
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
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !66
  store <4 x i32> %broadcast.splat, ptr %i.br, align 4, !tbaa !66
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !260

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bn, %n.vec
  br i1 %cmp.n, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit, label %.lr.ph.i.i.i.i12.preheader

.lr.ph.i.i.i.i12.preheader:                       ; preds = %bb.h, %middle.block
  %.06.i.i.i.i13.ph = phi ptr [ %i.c, %bb.h ], [ %i.bp, %middle.block ]
  br label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %.lr.ph.i.i.i.i12.preheader, %.lr.ph.i.i.i.i12
  %.06.i.i.i.i13 = phi ptr [ %i.bt, %.lr.ph.i.i.i.i12 ], [ %.06.i.i.i.i13.ph, %.lr.ph.i.i.i.i12.preheader ] ; 2 uses
  store i32 %i.bk, ptr %.06.i.i.i.i13, align 4, !tbaa !66
  %i.bt = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i13, i64 4 ; 2 uses
  %.not.i.i.i.i14 = icmp eq ptr %i.bt, %i.bj
  br i1 %.not.i.i.i.i14, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit, label %.lr.ph.i.i.i.i12, !llvm.loop !261

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit:              ; preds = %.lr.ph.i.i.i.i12, %middle.block, %bb.g
  %.0.i.i = phi ptr [ %i.c, %bb.g ], [ %i.bj, %middle.block ], [ %i.bj, %.lr.ph.i.i.i.i12 ] ; 2 uses
  %.not.i = icmp eq ptr %i.ae, %.0.i.i
  br i1 %.not.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i:          ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit
  store ptr %.0.i.i, ptr %i.ad, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit, %bb.d, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12cpu_baseline16transpose2D_f32_EPKfPflllE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #15 align 2 {
bb.a:
  %.val2 = load i32, ptr %1, align 4, !tbaa !16   ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val3 = load i32, ptr %i.a, align 4            ; 2 uses
  %i.b = sext i32 %.val3 to i64
  %i.c = icmp slt i32 %.val2, %.val3
  br i1 %i.c, label %.lr.ph.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baseline16transpose2D_f32_EPKfPflllE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit"

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !23    ; 7 uses
  %i.d = sext i32 %.val2 to i64                   ; 4 uses
  %i.e = load ptr, ptr %.val, align 8, !tbaa !270, !nonnull !88, !align !90
  %i.f = load i64, ptr %i.e, align 8, !tbaa !14   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !271, !nonnull !88, !align !90
  %i.i = load i64, ptr %i.h, align 8, !tbaa !14   ; 7 uses
  %i.j = mul i64 %i.i, %i.f                       ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !272, !nonnull !88, !align !90
  %i.m = load i64, ptr %i.l, align 8, !tbaa !14   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !273, !nonnull !88, !align !90
  %i.p = load i64, ptr %i.o, align 8, !tbaa !14   ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !274, !nonnull !88, !align !90
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !12   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !275, !nonnull !88, !align !90
  %i.v = load i64, ptr %i.u, align 8, !tbaa !14   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !276, !nonnull !88, !align !90
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !12   ; 3 uses
  %i.z = shl nsw i64 %i.d, 7                      ; 2 uses
  %i.aa = shl i64 %i.p, 7
  %i.ab = shl i64 %i.i, 7
  %i.ac = shl i64 %i.v, 2
  %i.ad = shl nsw i64 %i.d, 5                     ; 2 uses
  %i.ae = or disjoint i64 %i.ad, 1                ; 2 uses
  %i.af = shl i64 %i.i, 5
  %i.ag = xor i64 %i.ad, -1
  %i.ah = getelementptr i8, ptr %i.y, i64 %i.z
  %i.ai = getelementptr i8, ptr %i.ah, i64 4
  %factor.op.mul = mul i64 %i.i, -32
  %ident.check.not = icmp eq i64 %i.m, 1
  %.mask = and i64 %i.p, 2305843009213693952
  %stride.check = icmp ne i64 %.mask, 0
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge8.split.i.i.i, %.lr.ph.i.i.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge8.split.i.i.i ], [ 0, %.lr.ph.i.i.i ] ; 6 uses
  %.0329.i.i.i = phi i64 [ %i.cw, %._crit_edge8.split.i.i.i ], [ %i.d, %.lr.ph.i.i.i ] ; 3 uses
  %i.aj = add i64 %indvar, %i.d
  %i.ak = shl i64 %indvar, 5
  %i.al = add i64 %i.ae, %i.ak
  %i.am = sdiv i64 %.0329.i.i.i, %i.j             ; 5 uses
  %i.an = mul i64 %i.am, %i.j                     ; 0 uses
  %.recomposed = srem i64 %.0329.i.i.i, %i.j      ; 2 uses
  %i.ao = sdiv i64 %.recomposed, %i.i             ; 6 uses
  %i.ap = mul i64 %i.ao, %i.i                     ; 0 uses
  %.recomposed17 = srem i64 %.recomposed, %i.i
  %i.aq = shl nsw i64 %i.ao, 5                    ; 4 uses
  %i.ar = add i64 %i.aq, 32
  %.sroa.speculated3.i.i.i = tail call i64 @llvm.smin.i64(i64 %i.m, i64 %i.ar) ; 2 uses
  %i.as = shl i64 %.recomposed17, 5               ; 5 uses
  %i.at = add i64 %i.as, 32
  %.sroa.speculated.i.i.i = tail call i64 @llvm.smin.i64(i64 %i.p, i64 %i.at) ; 3 uses
  %i.au = mul i64 %i.am, %i.v                     ; 4 uses
  %i.av = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.au
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.au
  %i.ax = icmp sgt i64 %i.m, %i.aq
  %i.ay = icmp sgt i64 %i.p, %i.as
  %or.cond.i.i.i = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %or.cond.i.i.i, label %.preheader.i.i.i.preheader, label %._crit_edge8.split.i.i.i

.preheader.i.i.i.preheader:                       ; preds = %bb.b
  %i.az = shl i64 %indvar, 7                      ; 2 uses
  %i.ba = add i64 %i.z, %i.az                     ; 2 uses
  %scevgep13 = getelementptr i8, ptr %i.s, i64 %i.ba ; 2 uses
  %i.bb = shl i64 %indvar, 5
  %i.bc = sub i64 %i.ag, %i.bb                    ; 2 uses
  %i.bd = shl i64 %indvar, 5
  %i.be = add i64 %i.ae, %i.bd
  %scevgep10 = getelementptr i8, ptr %i.ai, i64 %i.az
  %scevgep = getelementptr i8, ptr %i.y, i64 %i.ba
  %i.bf = mul i64 %i.aa, %i.ao
  %i.bg = mul i64 %i.f, %i.am
  %i.bh = add i64 %i.bg, %i.ao
  %i.bi = sub i64 0, %i.bh                        ; 2 uses
  %i.bj = mul i64 %i.ab, %i.bi                    ; 2 uses
  %i.bk = mul i64 %i.ac, %i.am                    ; 2 uses
  %i.bl = getelementptr i8, ptr %scevgep, i64 %i.bf
  %i.bm = getelementptr i8, ptr %i.bl, i64 %i.bj
  %scevgep9 = getelementptr i8, ptr %i.bm, i64 %i.bk
  %i.bn = or disjoint i64 %i.aq, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %.sroa.speculated3.i.i.i, i64 %i.bn) ; 2 uses
  %i.bo = shl i64 %smax, 2
  %i.bp = add i64 %i.bo, -4
  %i.bq = mul i64 %i.p, %i.bp
  %i.br = mul i64 %i.af, %i.bi
  %i.bs = add i64 %i.be, %i.br
  %smax11 = tail call i64 @llvm.smax.i64(i64 %.sroa.speculated.i.i.i, i64 %i.bs) ; 2 uses
  %i.bt = add i64 %smax11, %i.bc
  %i.bu = add i64 %i.bt, %i.au
  %i.bv = shl i64 %i.bu, 2
  %i.bw = getelementptr i8, ptr %scevgep10, i64 %i.bq
  %scevgep12 = getelementptr i8, ptr %i.bw, i64 %i.bv
  %i.bx = shl i64 %i.ao, 7
  %i.by = getelementptr i8, ptr %scevgep13, i64 %i.bj
  %i.bz = getelementptr i8, ptr %i.by, i64 %i.bk
  %scevgep14 = getelementptr i8, ptr %i.bz, i64 %i.bx
  %i.ca = add i64 %smax11, %smax
  %i.cb = add i64 %i.ca, %i.bc
  %i.cc = add i64 %i.cb, %i.au
  %i.cd = shl i64 %i.cc, 2
  %scevgep15 = getelementptr i8, ptr %scevgep13, i64 %i.cd
  %i.ce = mul i64 %i.f, %i.am
  %i.cf = add i64 %i.ce, %i.ao
  %.reass = mul i64 %i.cf, %factor.op.mul         ; 2 uses
  %i.cg = add i64 %i.al, %.reass
  %i.ch = tail call i64 @llvm.smax.i64(i64 %.sroa.speculated.i.i.i, i64 %i.cg) ; 2 uses
  %i.ci = shl i64 %i.aj, 5
  %i.cj = add i64 %i.ci, %.reass
  %i.ck = sub i64 %i.ch, %i.cj                    ; 2 uses
  %min.iters.check = icmp ugt i64 %i.ck, 7
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %bound0 = icmp ult ptr %scevgep9, %scevgep15
  %bound1 = icmp ult ptr %scevgep14, %scevgep12
  %found.conflict = and i1 %bound0, %bound1
  %i.cl = or i1 %found.conflict, %stride.check
  %i.cm = and i64 %i.ch, 7                        ; 2 uses
  %n.vec = sub i64 %i.ck, %i.cm                   ; 2 uses
  %i.cn = add i64 %i.as, %n.vec
  %cmp.n = icmp eq i64 %i.cm, 0
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.preheader, %._crit_edge.i.i.i
  %.0317.i.i.i = phi i64 [ %i.cx, %._crit_edge.i.i.i ], [ %i.aq, %.preheader.i.i.i.preheader ] ; 3 uses
  %invariant.gep.i.i.i = getelementptr [4 x i8], ptr %i.av, i64 %.0317.i.i.i ; 2 uses
  %i.co = mul nsw i64 %.0317.i.i.i, %i.p
  %i.cp = getelementptr [4 x i8], ptr %i.aw, i64 %i.co ; 2 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %i.cl
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i.i.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i.i.i ] ; 2 uses
  %i.cq = add i64 %i.as, %index                   ; 2 uses
  %i.cr = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %i.cq ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cr, i64 16
  %wide.load = load <4 x float>, ptr %i.cr, align 4, !tbaa !278, !alias.scope !279
  %wide.load16 = load <4 x float>, ptr %i.cs, align 4, !tbaa !278, !alias.scope !279
  %i.ct = getelementptr [4 x i8], ptr %i.cp, i64 %i.cq ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 16
  store <4 x float> %wide.load, ptr %i.ct, align 4, !tbaa !278, !alias.scope !280, !noalias !279
  store <4 x float> %wide.load16, ptr %i.cu, align 4, !tbaa !278, !alias.scope !280, !noalias !279
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !265

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.i.i, %middle.block
  %.06.i.i.i.ph = phi i64 [ %i.cn, %middle.block ], [ %i.as, %.preheader.i.i.i ]
  br label %scalar.ph

._crit_edge8.split.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.b
  %i.cw = add nsw i64 %.0329.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.cw, %i.b
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baseline16transpose2D_f32_EPKfPflllE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit", label %bb.b, !llvm.loop !266

._crit_edge.i.i.i:                                ; preds = %scalar.ph, %middle.block
  %i.cx = add nsw i64 %.0317.i.i.i, 1             ; 2 uses
  %i.cy = icmp slt i64 %i.cx, %.sroa.speculated3.i.i.i
  br i1 %i.cy, label %.preheader.i.i.i, label %._crit_edge8.split.i.i.i, !llvm.loop !267

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.06.i.i.i = phi i64 [ %i.dc, %scalar.ph ], [ %.06.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cz = mul nsw i64 %.06.i.i.i, %i.m
  %gep.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %i.cz
  %i.da = load float, ptr %gep.i.i.i, align 4, !tbaa !278
  %i.db = getelementptr [4 x i8], ptr %i.cp, i64 %.06.i.i.i
  store float %i.da, ptr %i.db, align 4, !tbaa !278
  %i.dc = add nsw i64 %.06.i.i.i, 1               ; 2 uses
  %i.dd = icmp slt i64 %i.dc, %.sroa.speculated.i.i.i
  br i1 %i.dd, label %scalar.ph, label %._crit_edge.i.i.i, !llvm.loop !268

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
  store ptr @"_ZTIZN2cv3dnn12cpu_baseline16transpose2D_f32_EPKfPflllE3$_0", ptr %0, align 8, !tbaa !92
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16transpose2D_f32_EPKfPflllE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !23
  store ptr %.val, ptr %0, align 8, !tbaa !23
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16transpose2D_f32_EPKfPflllE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #19 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(56) %.val6, i64 56, i1 false), !tbaa.struct !281
  store ptr %i.a, ptr %0, align 8, !tbaa !23
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16transpose2D_f32_EPKfPflllE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !23 ; 2 uses
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
  store ptr null, ptr %0, align 8, !tbaa !282
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19
          to label %bb.b unwind label %bb.c       ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !283
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !284
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN2cv3dnn18TransposeLayerImplELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.d, align 8, !tbaa !98
  store ptr %i.a, ptr %0, align 8, !tbaa !282
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
end_hunk_0
