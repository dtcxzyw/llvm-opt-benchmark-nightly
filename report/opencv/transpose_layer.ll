Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/transpose_layer?download=true
inline.NumInlined: 721
inline.NumDeleted: 376
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi:bb.a
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, %i.l
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !250

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block59
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %0, align 8, !tbaa !56
  store ptr %i.l, ptr %i.x, align 8, !tbaa !81
  store ptr %i.w, ptr %i.a, align 8, !tbaa !54
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.f) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !81   ; 8 uses
  %i.aa = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ab = sub i64 %i.aa, %i.e                     ; 2 uses
  %i.ac = ashr exact i64 %i.ab, 2                 ; 2 uses
  %i.ad = icmp ugt i64 %1, %i.ac
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = load i32, ptr %2, align 4, !tbaa !85    ; 3 uses
  %.not5.i.i.i.i = icmp eq ptr %i.c, %i.z
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.f
  %i.af = add i64 %i.aa, -4
  %i.ag = sub i64 %i.af, %i.e                     ; 2 uses
  %i.ah = lshr i64 %i.ag, 2
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %min.iters.check24 = icmp ult i64 %i.ag, 28
  br i1 %min.iters.check24, label %.lr.ph.i.i.i.i.preheader62, label %vector.ph25

vector.ph25:                                      ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec26 = and i64 %i.ai, 9223372036854775800   ; 3 uses
  %i.aj = shl i64 %n.vec26, 2
  %i.ak = getelementptr i8, ptr %i.c, i64 %i.aj
  %broadcast.splatinsert27 = insertelement <4 x i32> poison, i32 %i.ae, i64 0
  %broadcast.splat28 = shufflevector <4 x i32> %broadcast.splatinsert27, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body29

vector.body29:                                    ; preds = %vector.body29, %vector.ph25
  %index30 = phi i64 [ 0, %vector.ph25 ], [ %index.next32, %vector.body29 ] ; 2 uses
  %i.al = shl i64 %index30, 2
  %next.gep31 = getelementptr i8, ptr %i.c, i64 %i.al ; 2 uses
  %i.am = getelementptr i8, ptr %next.gep31, i64 16
  store <4 x i32> %broadcast.splat28, ptr %next.gep31, align 4, !tbaa !85
  store <4 x i32> %broadcast.splat28, ptr %i.am, align 4, !tbaa !85
  %index.next32 = add nuw i64 %index30, 8         ; 2 uses
  %i.an = icmp eq i64 %index.next32, %n.vec26
  br i1 %i.an, label %middle.block33, label %vector.body29, !llvm.loop !251

middle.block33:                                   ; preds = %vector.body29
  %cmp.n34 = icmp eq i64 %i.ai, %n.vec26
  br i1 %cmp.n34, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.loopexit, label %.lr.ph.i.i.i.i.preheader62

.lr.ph.i.i.i.i.preheader62:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block33
  %.06.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.ak, %middle.block33 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader62, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %.06.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader62 ] ; 2 uses
  store i32 %i.ae, ptr %.06.i.i.i.i, align 4, !tbaa !85
  %i.ao = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.ao, %i.z
  br i1 %.not.i.i.i.i11, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !252

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i, %middle.block33
  %.pre = load i32, ptr %2, align 4, !tbaa !85
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit: ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.loopexit, %bb.f
  %i.ap = phi i32 [ %.pre, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.loopexit ], [ %i.ae, %bb.f ] ; 2 uses
  %i.aq = sub i64 %1, %i.ac
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.aq, 2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx.i.i.i.i.i ; 2 uses
  %i.as = shl i64 %1, 2
  %i.at = add i64 %i.as, -4
  %i.au = sub i64 %i.at, %i.ab                    ; 2 uses
  %i.av = lshr i64 %i.au, 2
  %i.aw = add nuw nsw i64 %i.av, 1                ; 2 uses
  %min.iters.check37 = icmp ult i64 %i.au, 28
  br i1 %min.iters.check37, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph38

vector.ph38:                                      ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit
  %n.vec39 = and i64 %i.aw, 9223372036854775800   ; 3 uses
  %i.ax = shl i64 %n.vec39, 2
  %i.ay = getelementptr i8, ptr %i.z, i64 %i.ax
  %broadcast.splatinsert40 = insertelement <4 x i32> poison, i32 %i.ap, i64 0
  %broadcast.splat41 = shufflevector <4 x i32> %broadcast.splatinsert40, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body42

vector.body42:                                    ; preds = %vector.body42, %vector.ph38
  %index43 = phi i64 [ 0, %vector.ph38 ], [ %index.next45, %vector.body42 ] ; 2 uses
  %i.az = shl i64 %index43, 2
  %next.gep44 = getelementptr i8, ptr %i.z, i64 %i.az ; 2 uses
  %i.ba = getelementptr i8, ptr %next.gep44, i64 16
  store <4 x i32> %broadcast.splat41, ptr %next.gep44, align 4, !tbaa !85
  store <4 x i32> %broadcast.splat41, ptr %i.ba, align 4, !tbaa !85
  %index.next45 = add nuw i64 %index43, 8         ; 2 uses
  %i.bb = icmp eq i64 %index.next45, %n.vec39
  br i1 %i.bb, label %middle.block46, label %vector.body42, !llvm.loop !253

middle.block46:                                   ; preds = %vector.body42
  %cmp.n47 = icmp eq i64 %i.aw, %n.vec39
  br i1 %cmp.n47, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit, %middle.block46
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.z, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit ], [ %i.ay, %middle.block46 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.ap, ptr %.06.i.i.i.i.i.i.i, align 4, !tbaa !85
  %i.bc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bc, %i.ar
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !254

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block46
  store ptr %i.ar, ptr %i.y, align 8, !tbaa !81
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.bd = icmp eq i64 %1, 0
  br i1 %i.bd, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.idx.i.i = shl nuw nsw i64 %1, 2               ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i ; 3 uses
  %i.bf = load i32, ptr %2, align 4, !tbaa !85    ; 2 uses
  %i.bg = add nsw i64 %.idx.i.i, -4               ; 2 uses
  %i.bh = lshr exact i64 %i.bg, 2
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bg, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i12.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.h
  %n.vec = and i64 %i.bi, 9223372036854775800     ; 3 uses
  %i.bj = shl i64 %n.vec, 2
  %i.bk = getelementptr i8, ptr %i.c, i64 %i.bj
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bf, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bl = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.bl ; 2 uses
  %i.bm = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !85
  store <4 x i32> %broadcast.splat, ptr %i.bm, align 4, !tbaa !85
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !255

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit, label %.lr.ph.i.i.i.i12.preheader

.lr.ph.i.i.i.i12.preheader:                       ; preds = %bb.h, %middle.block
  %.06.i.i.i.i13.ph = phi ptr [ %i.c, %bb.h ], [ %i.bk, %middle.block ]
  br label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %.lr.ph.i.i.i.i12.preheader, %.lr.ph.i.i.i.i12
  %.06.i.i.i.i13 = phi ptr [ %i.bo, %.lr.ph.i.i.i.i12 ], [ %.06.i.i.i.i13.ph, %.lr.ph.i.i.i.i12.preheader ] ; 2 uses
  store i32 %i.bf, ptr %.06.i.i.i.i13, align 4, !tbaa !85
  %i.bo = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i13, i64 4 ; 2 uses
  %.not.i.i.i.i14 = icmp eq ptr %i.bo, %i.be
  br i1 %.not.i.i.i.i14, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit, label %.lr.ph.i.i.i.i12, !llvm.loop !256

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit:              ; preds = %.lr.ph.i.i.i.i12, %middle.block, %bb.g
  %.0.i.i = phi ptr [ %i.c, %bb.g ], [ %i.be, %middle.block ], [ %i.be, %.lr.ph.i.i.i.i12 ] ; 2 uses
  %.not.i = icmp eq ptr %i.z, %.0.i.i
  br i1 %.not.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i:          ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit
  store ptr %.0.i.i, ptr %i.y, align 8, !tbaa !81
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
  %i.e = load ptr, ptr %.val, align 8, !tbaa !257, !nonnull !138, !align !141
  %i.f = load i64, ptr %i.e, align 8, !tbaa !11   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !259, !nonnull !138, !align !141
  %i.i = load i64, ptr %i.h, align 8, !tbaa !11   ; 7 uses
  %i.j = mul i64 %i.i, %i.f                       ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !260, !nonnull !138, !align !141
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !261, !nonnull !138, !align !141
  %i.p = load i64, ptr %i.o, align 8, !tbaa !11   ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !262, !nonnull !138, !align !141
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !8    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !263, !nonnull !138, !align !141
  %i.v = load i64, ptr %i.u, align 8, !tbaa !11   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !264, !nonnull !138, !align !141
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !8    ; 3 uses
  %2 = shl nsw i64 %i.d, 7                        ; 2 uses
  %i.z = shl i64 %i.p, 7
  %i.aa = shl i64 %i.i, 7
  %i.ab = shl i64 %i.v, 2
  %i.ac = shl nsw i64 %i.d, 5                     ; 2 uses
  %3 = or disjoint i64 %i.ac, 1                   ; 2 uses
  %i.ad = shl i64 %i.i, 5
  %i.ae = xor i64 %i.ac, -1
  %.neg = mul i64 %i.i, -32
  %4 = getelementptr i8, ptr %i.y, i64 %2
  %5 = getelementptr i8, ptr %4, i64 4
  %ident.check.not = icmp eq i64 %i.m, 1
  %.mask = and i64 %i.p, 2305843009213693952
  %stride.check = icmp ne i64 %.mask, 0
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge8.split.i.i.i, %.lr.ph.i.i.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge8.split.i.i.i ], [ 0, %.lr.ph.i.i.i ] ; 6 uses
  %.0329.i.i.i = phi i64 [ %i.co, %._crit_edge8.split.i.i.i ], [ %i.d, %.lr.ph.i.i.i ] ; 3 uses
  %i.af = sdiv i64 %.0329.i.i.i, %i.j             ; 5 uses
  %i.ag = mul i64 %i.af, %i.j                     ; 0 uses
  %.recomposed = srem i64 %.0329.i.i.i, %i.j      ; 2 uses
  %i.ah = sdiv i64 %.recomposed, %i.i             ; 6 uses
  %i.ai = mul i64 %i.ah, %i.i                     ; 0 uses
  %.recomposed19 = srem i64 %.recomposed, %i.i
  %i.aj = shl nsw i64 %i.ah, 5                    ; 4 uses
  %i.ak = add i64 %i.aj, 32
  %.sroa.speculated3.i.i.i = tail call i64 @llvm.smin.i64(i64 %i.m, i64 %i.ak) ; 2 uses
  %i.al = shl i64 %.recomposed19, 5               ; 5 uses
  %i.am = add i64 %i.al, 32
  %.sroa.speculated.i.i.i = tail call i64 @llvm.smin.i64(i64 %i.p, i64 %i.am) ; 3 uses
  %i.an = mul i64 %i.af, %i.v                     ; 4 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.an
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.an
  %i.aq = icmp sgt i64 %i.m, %i.aj
  %i.ar = icmp sgt i64 %i.p, %i.al
  %or.cond.i.i.i = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %or.cond.i.i.i, label %.preheader.i.i.i.preheader, label %._crit_edge8.split.i.i.i

.preheader.i.i.i.preheader:                       ; preds = %bb.b
  %i.as = shl i64 %indvar, 7                      ; 2 uses
  %6 = add i64 %2, %i.as                          ; 2 uses
  %scevgep13 = getelementptr i8, ptr %i.s, i64 %6 ; 2 uses
  %i.at = shl i64 %indvar, 5
  %i.au = sub i64 %i.ae, %i.at                    ; 2 uses
  %i.av = shl i64 %indvar, 5
  %7 = add i64 %3, %i.av
  %scevgep10 = getelementptr i8, ptr %5, i64 %i.as
  %scevgep = getelementptr i8, ptr %i.y, i64 %6
  %i.aw = add i64 %indvar, %i.d
  %i.ax = shl i64 %indvar, 5
  %8 = add i64 %3, %i.ax
  %i.ay = mul i64 %i.z, %i.ah
  %i.az = mul i64 %i.f, %i.af
  %i.ba = add i64 %i.az, %i.ah
  %i.bb = sub i64 0, %i.ba                        ; 2 uses
  %i.bc = mul i64 %i.aa, %i.bb                    ; 2 uses
  %i.bd = mul i64 %i.ab, %i.af                    ; 2 uses
  %i.be = getelementptr i8, ptr %scevgep, i64 %i.ay
  %i.bf = getelementptr i8, ptr %i.be, i64 %i.bc
  %scevgep9 = getelementptr i8, ptr %i.bf, i64 %i.bd
  %i.bg = or disjoint i64 %i.aj, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %.sroa.speculated3.i.i.i, i64 %i.bg) ; 2 uses
  %i.bh = shl i64 %smax, 2
  %i.bi = add i64 %i.bh, -4
  %i.bj = mul i64 %i.p, %i.bi
  %i.bk = mul i64 %i.ad, %i.bb
  %i.bl = add i64 %7, %i.bk
  %smax11 = tail call i64 @llvm.smax.i64(i64 %.sroa.speculated.i.i.i, i64 %i.bl) ; 2 uses
  %i.bm = add i64 %smax11, %i.au
  %i.bn = add i64 %i.bm, %i.an
  %i.bo = shl i64 %i.bn, 2
  %i.bp = getelementptr i8, ptr %scevgep10, i64 %i.bj
  %scevgep12 = getelementptr i8, ptr %i.bp, i64 %i.bo
  %i.bq = shl i64 %i.ah, 7
  %i.br = getelementptr i8, ptr %scevgep13, i64 %i.bc
  %i.bs = getelementptr i8, ptr %i.br, i64 %i.bd
  %scevgep14 = getelementptr i8, ptr %i.bs, i64 %i.bq
  %i.bt = add i64 %smax11, %smax
  %i.bu = add i64 %i.bt, %i.au
  %i.bv = add i64 %i.bu, %i.an
  %i.bw = shl i64 %i.bv, 2
  %scevgep15 = getelementptr i8, ptr %scevgep13, i64 %i.bw
  %i.bx = mul i64 %i.f, %i.af
  %i.by = add i64 %i.bx, %i.ah
  %.neg18 = mul i64 %.neg, %i.by                  ; 2 uses
  %i.bz = add i64 %8, %.neg18
  %smax16 = tail call i64 @llvm.smax.i64(i64 %.sroa.speculated.i.i.i, i64 %i.bz) ; 2 uses
  %i.ca = shl i64 %i.aw, 5
  %i.cb = add i64 %i.ca, %.neg18
  %i.cc = sub i64 %smax16, %i.cb                  ; 2 uses
  %min.iters.check = icmp ugt i64 %i.cc, 7
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %bound0 = icmp ult ptr %scevgep9, %scevgep15
  %bound1 = icmp ult ptr %scevgep14, %scevgep12
  %found.conflict = and i1 %bound0, %bound1
  %i.cd = or i1 %found.conflict, %stride.check
  %i.ce = and i64 %smax16, 7                      ; 2 uses
  %n.vec = sub i64 %i.cc, %i.ce                   ; 2 uses
  %i.cf = add i64 %i.al, %n.vec
  %cmp.n = icmp eq i64 %i.ce, 0
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.preheader, %._crit_edge.i.i.i
  %.0317.i.i.i = phi i64 [ %i.cp, %._crit_edge.i.i.i ], [ %i.aj, %.preheader.i.i.i.preheader ] ; 3 uses
  %invariant.gep.i.i.i = getelementptr [4 x i8], ptr %i.ao, i64 %.0317.i.i.i ; 2 uses
  %i.cg = mul nsw i64 %.0317.i.i.i, %i.p
  %i.ch = getelementptr [4 x i8], ptr %i.ap, i64 %i.cg ; 2 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %i.cd
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i.i.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i.i.i ] ; 2 uses
  %i.ci = add i64 %i.al, %index                   ; 2 uses
  %i.cj = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %i.ci ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 16
  %wide.load = load <4 x float>, ptr %i.cj, align 4, !tbaa !265, !alias.scope !267
  %wide.load17 = load <4 x float>, ptr %i.ck, align 4, !tbaa !265, !alias.scope !267
  %i.cl = getelementptr [4 x i8], ptr %i.ch, i64 %i.ci ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 16
  store <4 x float> %wide.load, ptr %i.cl, align 4, !tbaa !265, !alias.scope !270, !noalias !267
  store <4 x float> %wide.load17, ptr %i.cm, align 4, !tbaa !265, !alias.scope !270, !noalias !267
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !272

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.i.i, %middle.block
  %.06.i.i.i.ph = phi i64 [ %i.cf, %middle.block ], [ %i.al, %.preheader.i.i.i ]
  br label %scalar.ph

._crit_edge8.split.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.b
  %i.co = add nsw i64 %.0329.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.co, %i.b
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baseline16transpose2D_f32_EPKfPflllE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit", label %bb.b, !llvm.loop !273

._crit_edge.i.i.i:                                ; preds = %scalar.ph, %middle.block
  %i.cp = add nsw i64 %.0317.i.i.i, 1             ; 2 uses
  %i.cq = icmp slt i64 %i.cp, %.sroa.speculated3.i.i.i
  br i1 %i.cq, label %.preheader.i.i.i, label %._crit_edge8.split.i.i.i, !llvm.loop !274

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.06.i.i.i = phi i64 [ %i.cu, %scalar.ph ], [ %.06.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cr = mul nsw i64 %.06.i.i.i, %i.m
  %gep.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %i.cr
  %i.cs = load float, ptr %gep.i.i.i, align 4, !tbaa !265
  %i.ct = getelementptr [4 x i8], ptr %i.ch, i64 %.06.i.i.i
  store float %i.cs, ptr %i.ct, align 4, !tbaa !265
  %i.cu = add nsw i64 %.06.i.i.i, 1               ; 2 uses
  %i.cv = icmp slt i64 %i.cu, %.sroa.speculated.i.i.i
  br i1 %i.cv, label %scalar.ph, label %._crit_edge.i.i.i, !llvm.loop !275

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
  store ptr @"_ZTIZN2cv3dnn12cpu_baseline16transpose2D_f32_EPKfPflllE3$_0", ptr %0, align 8, !tbaa !153
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16transpose2D_f32_EPKfPflllE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !21
  store ptr %.val, ptr %0, align 8, !tbaa !21
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16transpose2D_f32_EPKfPflllE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #19 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(56) %.val6, i64 56, i1 false), !tbaa.struct !276
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
  store ptr null, ptr %0, align 8, !tbaa !277
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19
          to label %bb.b unwind label %bb.c       ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !278
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !280
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN2cv3dnn18TransposeLayerImplELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.d, align 8, !tbaa !281
  store ptr %i.a, ptr %0, align 8, !tbaa !277
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !281  ; 6 uses
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
  %i.i = ptrtoint ptr %i.e to i64
end_hunk_0
