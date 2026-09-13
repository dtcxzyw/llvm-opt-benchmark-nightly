Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/analyze?download=true
inline.NumInlined: 983
inline.NumDeleted: 339
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj:bb.a
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !206
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69
  %i.bg = add i64 %i.f, -4
  %i.bh = sub i64 %i.bg, %i.j                     ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %i.bh, 28
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader151, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec115 = and i64 %i.bj, 9223372036854775800  ; 3 uses
  %i.bk = shl i64 %n.vec115, 2
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %broadcast.splatinsert116 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat117 = shufflevector <4 x i32> %broadcast.splatinsert116, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph114
  %index119 = phi i64 [ 0, %vector.ph114 ], [ %index.next121, %vector.body118 ] ; 2 uses
  %i.bm = shl i64 %index119, 2
  %next.gep120 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep120, i64 16
  store <4 x i32> %broadcast.splat117, ptr %next.gep120, align 4, !tbaa !200
  store <4 x i32> %broadcast.splat117, ptr %i.bn, align 4, !tbaa !200
  %index.next121 = add nuw i64 %index119, 8       ; 2 uses
  %i.bo = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.bo, label %middle.block122, label %vector.body118, !llvm.loop !360

middle.block122:                                  ; preds = %vector.body118
  %cmp.n123 = icmp eq i64 %i.bj, %n.vec115
  br i1 %cmp.n123, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader151

.lr.ph.i.i.i71.preheader151:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block122
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bl, %middle.block122 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader151, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bp, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader151 ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i72, align 4, !tbaa !200
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 4 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !361

bb.q:                                             ; preds = %bb.b
  %i.bq = load ptr, ptr %0, align 8, !tbaa !207   ; 5 uses
  %i.br = ptrtoint ptr %i.bq to i64               ; 2 uses
  %i.bs = sub i64 %i.f, %i.br
  %i.bt = ashr exact i64 %i.bs, 2                 ; 4 uses
  %i.bu = sub nsw i64 2305843009213693951, %i.bt
  %i.bv = icmp ult i64 %i.bu, %2
  br i1 %i.bv, label %bb.r, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #13
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 %2)
  %i.bw = add nsw i64 %.sroa.speculated.i, %i.bt  ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bt
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 2305843009213693951)
  %i.bz = select i1 %i.bx, i64 2305843009213693951, i64 %i.by ; 3 uses
  %i.ca = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.cb = sub i64 %i.ca, %i.br                    ; 4 uses
  %.not.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.cc = shl nuw nsw i64 %i.bz, 2
  %i.cd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #14
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ce = phi ptr [ %i.cd, %bb.s ], [ null, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 %i.cb ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 2       ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i.i.i.i.i75
  %i.ch = load i32, ptr %3, align 4, !tbaa !200   ; 2 uses
  %i.ci = add nsw i64 %.idx.i.i.i.i.i75, -4       ; 2 uses
  %i.cj = lshr exact i64 %i.ci, 2
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check139 = icmp ult i64 %i.ci, 28
  br i1 %min.iters.check139, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph140

vector.ph140:                                     ; preds = %bb.t
  %n.vec141 = and i64 %i.ck, 9223372036854775800  ; 3 uses
  %i.cl = shl i64 %n.vec141, 2
  %i.cm = getelementptr i8, ptr %i.cf, i64 %i.cl
  %broadcast.splatinsert142 = insertelement <4 x i32> poison, i32 %i.ch, i64 0
  %broadcast.splat143 = shufflevector <4 x i32> %broadcast.splatinsert142, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph140
  %index145 = phi i64 [ 0, %vector.ph140 ], [ %index.next147, %vector.body144 ] ; 2 uses
  %i.cn = shl i64 %index145, 2
  %next.gep146 = getelementptr i8, ptr %i.cf, i64 %i.cn ; 2 uses
  %i.co = getelementptr i8, ptr %next.gep146, i64 16
  store <4 x i32> %broadcast.splat143, ptr %next.gep146, align 4, !tbaa !200
  store <4 x i32> %broadcast.splat143, ptr %i.co, align 4, !tbaa !200
  %index.next147 = add nuw i64 %index145, 8       ; 2 uses
  %i.cp = icmp eq i64 %index.next147, %n.vec141
  br i1 %i.cp, label %middle.block148, label %vector.body144, !llvm.loop !362

middle.block148:                                  ; preds = %vector.body144
  %cmp.n149 = icmp eq i64 %i.ck, %n.vec141
  br i1 %cmp.n149, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block148
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cf, %bb.t ], [ %i.cm, %middle.block148 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i32 %i.ch, ptr %.06.i.i.i.i.i.i.i77, align 4, !tbaa !200
  %i.cq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cq, %i.cg
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !363

_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block148
  %i.cr = icmp sgt i64 %i.cb, 4
  br i1 %i.cr, label %bb.u, label %bb.v, !prof !250

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ce, ptr align 4 %i.bq, i64 %i.cb, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.cs = icmp eq i64 %i.cb, 4
  br i1 %i.cs, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.ct = load i32, ptr %i.bq, align 4, !tbaa !200
  store i32 %i.ct, ptr %i.ce, align 4, !tbaa !200
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %2 ; 3 uses
  %i.cv = sub i64 %i.f, %i.ca                     ; 4 uses
  %i.cw = icmp sgt i64 %i.cv, 4
  br i1 %i.cw, label %bb.x, label %bb.y, !prof !250

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cu, ptr align 4 %1, i64 %i.cv, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.cx = icmp eq i64 %i.cv, 4
  br i1 %i.cx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cy = load i32, ptr %1, align 4, !tbaa !200
  store i32 %i.cy, ptr %i.cu, align 4, !tbaa !200
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  %.not.i82 = icmp eq ptr %i.bq, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZdlPv(ptr noundef nonnull %i.bq) #15
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ce, ptr %0, align 8, !tbaa !207
  store ptr %i.cz, ptr %i.c, align 8, !tbaa !206
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.bz
  store ptr %i.da, ptr %i.a, align 8, !tbaa !364
  br label %_ZSt4fillIPjjEvT_S1_RKT0_.exit

_ZSt4fillIPjjEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block122, %middle.block135, %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_T0_T1_(ptr %0, ptr %1, i64 noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %.fr29 = freeze ptr %1                          ; 3 uses
  %.fr28 = freeze ptr %0                          ; 34 uses
  %i.a = ptrtoint ptr %.fr28 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr29 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr28, i64 4 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 784 ; 5 uses
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph56

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEET_SC_SC_T0_.exit
  %i.i = icmp eq i64 %i.do, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph56, !llvm.loop !365

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i27.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.fl, %bb.b ] ; 3 uses
  %storemerge25.lcssa = phi ptr [ %.fr29, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.j = lshr i64 %.fr.i27.lcssa, 2               ; 2 uses
  %i.k = add nsw i64 %i.j, -2                     ; 2 uses
  %i.l = lshr i64 %i.k, 1                         ; 3 uses
  %i.m = add nsw i64 %i.j, -1
  %i.n = lshr i64 %i.m, 1                         ; 2 uses
  %i.o = and i64 %.fr.i27.lcssa, 4
  %i.p = icmp eq i64 %i.o, 0
  %i.q = or disjoint i64 %i.k, 1                  ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.fr28, i64 %i.q
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.fr28, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_T0_SD_T1_T2_.exit.i.i, %._crit_edge
  %.09.i.i = phi i64 [ %i.l, %._crit_edge ], [ %i.bj, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_T0_SD_T1_T2_.exit.i.i ] ; 8 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %.fr28, i64 %.09.i.i
  %i.u = load i32, ptr %i.t, align 4, !tbaa !200  ; 2 uses
  %i.v = icmp slt i64 %.09.i.i, %i.n
  br i1 %i.v, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !191  ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.i
  %.036.i.i.i = phi i64 [ %.09.i.i, %.lr.ph.i.i.i ], [ %spec.select.i.i.i, %bb.d ] ; 2 uses
  %i.x = shl i64 %.036.i.i.i, 1                   ; 2 uses
  %i.y = add i64 %i.x, 2                          ; 2 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %.fr28, i64 %i.y
  %i.aa = or disjoint i64 %i.x, 1                 ; 2 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %.fr28, i64 %i.aa
  %i.ac = load i32, ptr %i.z, align 4, !tbaa !200
  %i.ad = tail call noundef i32 @llvm.abs.i32(i32 %i.ac, i1 true)
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !179
  %i.ah = load i32, ptr %i.ab, align 4, !tbaa !200
  %i.ai = tail call noundef i32 @llvm.abs.i32(i32 %i.ah, i1 true)
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !179
  %i.am = icmp ult i64 %i.ag, %i.al
  %spec.select.i.i.i = select i1 %i.am, i64 %i.aa, i64 %i.y ; 4 uses
  %i.an = getelementptr inbounds [4 x i8], ptr %.fr28, i64 %spec.select.i.i.i
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !200
  %i.ap = getelementptr inbounds [4 x i8], ptr %.fr28, i64 %.036.i.i.i
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !200
  %i.aq = icmp slt i64 %spec.select.i.i.i, %i.n
  br i1 %i.aq, label %bb.d, label %._crit_edge.i.i.i, !llvm.loop !366

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.09.i.i, %bb.c ], [ %spec.select.i.i.i, %bb.d ] ; 2 uses
  %i.ar = icmp eq i64 %.0.lcssa.i.i.i, %i.l
  %or.cond.i.i = select i1 %i.p, i1 %i.ar, i1 false
  br i1 %or.cond.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.as = load i32, ptr %i.r, align 4, !tbaa !200
  store i32 %i.as, ptr %i.s, align 4, !tbaa !200
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.q, %bb.e ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.at = icmp sgt i64 %.1.i.i.i, %.09.i.i
  br i1 %i.at, label %.lr.ph.i.i.i.i15, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_T0_SD_T1_T2_.exit.i.i

.lr.ph.i.i.i.i15:                                 ; preds = %bb.f
  %i.au = load ptr, ptr %i.g, align 8, !tbaa !191 ; 2 uses
  %i.av = tail call noundef i32 @llvm.abs.i32(i32 %i.u, i1 true)
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !179
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i15
  %.019.i.i.i.i = phi i64 [ %.1.i.i.i, %.lr.ph.i.i.i.i15 ], [ %.0920.i.i.i.i, %bb.h ] ; 3 uses
  %.0920.in.i.i.i.i = add nsw i64 %.019.i.i.i.i, -1
  %.0920.i.i.i.i = sdiv i64 %.0920.in.i.i.i.i, 2  ; 4 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.fr28, i64 %.0920.i.i.i.i
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !200 ; 2 uses
  %i.bb = tail call noundef i32 @llvm.abs.i32(i32 %i.ba, i1 true)
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !179
  %i.bf = icmp ult i64 %i.be, %i.ay
  br i1 %i.bf, label %bb.h, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_T0_SD_T1_T2_.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.fr28, i64 %.019.i.i.i.i
  store i32 %i.ba, ptr %i.bg, align 4, !tbaa !200
  %i.bh = icmp sgt i64 %.0920.i.i.i.i, %.09.i.i
  br i1 %i.bh, label %bb.g, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_T0_SD_T1_T2_.exit.i.i, !llvm.loop !367

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_T0_SD_T1_T2_.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f
  %.0.lcssa.i.i.i.i14 = phi i64 [ %.1.i.i.i, %bb.f ], [ %.0920.i.i.i.i, %bb.h ], [ %.019.i.i.i.i, %bb.g ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i14
  store i32 %i.u, ptr %i.bi, align 4, !tbaa !200
  %.not.i.i = icmp eq i64 %.09.i.i, 0
  %i.bj = add nsw i64 %.09.i.i, -1
  br i1 %.not.i.i, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_T0_.exit, label %bb.c, !llvm.loop !368

_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_T0_.exit: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_T0_SD_T1_T2_.exit.i.i
  %4 = icmp sgt i64 %.fr.i27.lcssa, 4
  br i1 %4, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_T0_.exit

.lr.ph.i.i:                                       ; preds = %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.bk, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_RT0_.exit.i.i ], [ %storemerge25.lcssa, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_T0_.exit ]
  %i.bk = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -4 ; 4 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !200 ; 2 uses
  %i.bm = load i32, ptr %.fr28, align 4, !tbaa !200
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !200
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = sub i64 %i.bn, %i.a                     ; 3 uses
  %i.bp = ashr exact i64 %i.bo, 2                 ; 3 uses
  %i.bq = add nsw i64 %i.bp, -1
  %i.br = lshr i64 %i.bq, 1
  %i.bs = icmp sgt i64 %i.bp, 2
  br i1 %i.bs, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i
  %i.bt = load ptr, ptr %i.g, align 8, !tbaa !191 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i
  %.036.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %spec.select.i.i.i.i, %bb.i ] ; 2 uses
  %i.bu = shl i64 %.036.i.i.i.i, 1                ; 2 uses
  %i.bv = add i64 %i.bu, 2                        ; 2 uses
  %i.bw = getelementptr inbounds [4 x i8], ptr %.fr28, i64 %i.bv
  %i.bx = or disjoint i64 %i.bu, 1                ; 2 uses
  %i.by = getelementptr inbounds [4 x i8], ptr %.fr28, i64 %i.bx
  %i.bz = load i32, ptr %i.bw, align 4, !tbaa !200
  %i.ca = tail call noundef i32 @llvm.abs.i32(i32 %i.bz, i1 true)
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !179
  %i.ce = load i32, ptr %i.by, align 4, !tbaa !200
  %i.cf = tail call noundef i32 @llvm.abs.i32(i32 %i.ce, i1 true)
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !179
  %i.cj = icmp ult i64 %i.cd, %i.ci
  %spec.select.i.i.i.i = select i1 %i.cj, i64 %i.bx, i64 %i.bv ; 4 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %.fr28, i64 %spec.select.i.i.i.i
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !200
  %i.cm = getelementptr inbounds [4 x i8], ptr %.fr28, i64 %.036.i.i.i.i
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !200
  %i.cn = icmp slt i64 %spec.select.i.i.i.i, %i.br
  br i1 %i.cn, label %bb.i, label %._crit_edge.i.i.i.i, !llvm.loop !366

._crit_edge.i.i.i.i:                              ; preds = %bb.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %bb.i ] ; 5 uses
  %i.co = and i64 %i.bo, 4
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  %i.cq = add nsw i64 %i.bp, -2
  %i.cr = ashr exact i64 %i.cq, 1
  %i.cs = icmp eq i64 %.0.lcssa.i.i.i.i, %i.cr
  br i1 %i.cs, label %.thread.i.i.i, label %bb.k

.thread.i.i.i:                                    ; preds = %bb.j
  %i.ct = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.cu = or disjoint i64 %i.ct, 1                ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.fr28, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !200
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !200
  br label %.lr.ph.i.i.i.i.i

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.k, %.thread.i.i.i
  %.1.i7.i.i.i = phi i64 [ %i.cu, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.k ]
  %i.cy = load ptr, ptr %i.g, align 8, !tbaa !191 ; 2 uses
  %i.cz = tail call noundef i32 @llvm.abs.i32(i32 %i.bl, i1 true)
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.da
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !179
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i.i.i.i.i
  %.019.i.i.i.i.i = phi i64 [ %.1.i7.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0920.i.i89.i.i.i, %bb.m ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i89.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.fr28, i64 %.0920.i.i89.i.i.i
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !200 ; 2 uses
  %i.df = tail call noundef i32 @llvm.abs.i32(i32 %i.de, i1 true)
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dg
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !179
  %i.dj = icmp ult i64 %i.di, %i.dc
  br i1 %i.dj, label %bb.m, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_RT0_.exit.i.i

bb.m:                                             ; preds = %bb.l
  %i.dk = getelementptr inbounds [4 x i8], ptr %.fr28, i64 %.019.i.i.i.i.i
  store i32 %i.de, ptr %i.dk, align 4, !tbaa !200
  %.not10.i.i.i = icmp eq i64 %.0920.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_RT0_.exit.i.i, label %bb.l, !llvm.loop !367

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_RT0_.exit.i.i: ; preds = %bb.m, %bb.l, %bb.k
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.k ], [ %.019.i.i.i.i.i, %bb.l ], [ 0, %bb.m ]
  %i.dl = getelementptr inbounds [4 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i.i
  store i32 %i.bl, ptr %i.dl, align 4, !tbaa !200
  %i.dm = icmp sgt i64 %i.bo, 4
  br i1 %i.dm, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_T0_.exit, !llvm.loop !369

.lr.ph56:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2555 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %.fr29, %.lr.ph ] ; 3 uses
  %.02654 = phi i64 [ %i.do, %bb.b ], [ %2, %.lr.ph ]
  %i.dn = phi i64 [ %i.fm, %bb.b ], [ %i.d, %.lr.ph ]
  %i.do = add nsw i64 %.02654, -1                 ; 3 uses
  %i.dp = lshr i64 %i.dn, 1
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.fr28, i64 %i.dp ; 3 uses
  %i.dr = getelementptr inbounds i8, ptr %storemerge2555, i64 -4 ; 3 uses
  %i.ds = load i32, ptr %i.f, align 4, !tbaa !200 ; 3 uses
  %i.dt = tail call noundef i32 @llvm.abs.i32(i32 %i.ds, i1 true)
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = load ptr, ptr %i.g, align 8, !tbaa !191 ; 6 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.du
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !179 ; 3 uses
  %i.dy = load i32, ptr %i.dq, align 4, !tbaa !200 ; 3 uses
  %i.dz = tail call noundef i32 @llvm.abs.i32(i32 %i.dy, i1 true)
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.ea
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !179 ; 3 uses
  %i.ed = icmp ult i64 %i.dx, %i.ec
  %i.ee = load i32, ptr %i.dr, align 4, !tbaa !200 ; 3 uses
  %i.ef = tail call noundef i32 @llvm.abs.i32(i32 %i.ee, i1 true)
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.eg
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !179 ; 4 uses
  br i1 %i.ed, label %bb.n, label %bb.s

bb.n:                                             ; preds = %.lr.ph56
  %i.ej = icmp ult i64 %i.ec, %i.ei
  br i1 %i.ej, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ek = load i32, ptr %.fr28, align 4, !tbaa !200
  store i32 %i.dy, ptr %.fr28, align 4, !tbaa !200
  store i32 %i.ek, ptr %i.dq, align 4, !tbaa !200
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.p:                                             ; preds = %bb.n
  %i.el = icmp ult i64 %i.dx, %i.ei
  %i.em = load i32, ptr %.fr28, align 4, !tbaa !200 ; 2 uses
  br i1 %i.el, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 %i.ee, ptr %.fr28, align 4, !tbaa !200
  store i32 %i.em, ptr %i.dr, align 4, !tbaa !200
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.r:                                             ; preds = %bb.p
  store i32 %i.ds, ptr %.fr28, align 4, !tbaa !200
  store i32 %i.em, ptr %i.f, align 4, !tbaa !200
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.s:                                             ; preds = %.lr.ph56
  %i.en = icmp ult i64 %i.dx, %i.ei
  br i1 %i.en, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.eo = load i32, ptr %.fr28, align 4, !tbaa !200
  store i32 %i.ds, ptr %.fr28, align 4, !tbaa !200
  store i32 %i.eo, ptr %i.f, align 4, !tbaa !200
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.u:                                             ; preds = %bb.s
  %i.ep = icmp ult i64 %i.ec, %i.ei
  %i.eq = load i32, ptr %.fr28, align 4, !tbaa !200 ; 2 uses
  br i1 %i.ep, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 %i.ee, ptr %.fr28, align 4, !tbaa !200
  store i32 %i.eq, ptr %i.dr, align 4, !tbaa !200
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.w:                                             ; preds = %bb.u
  store i32 %i.dy, ptr %.fr28, align 4, !tbaa !200
  store i32 %i.eq, ptr %i.dq, align 4, !tbaa !200
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_SC_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_SC_T0_.exit.i.preheader: ; preds = %bb.w, %bb.v, %bb.t, %bb.r, %bb.q, %bb.o
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_SC_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_SC_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_SC_T0_.exit.i.preheader, %bb.z
  %.sroa.09.0.i.i = phi ptr [ %.sroa.09.1.i.i, %bb.z ], [ %storemerge2555, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_SC_T0_.exit.i.preheader ]
  %.sroa.012.0.i.i = phi ptr [ %i.fc, %bb.z ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_SC_T0_.exit.i.preheader ]
  %i.er = load i32, ptr %.fr28, align 4, !tbaa !200
  %i.es = tail call noundef i32 @llvm.abs.i32(i32 %i.er, i1 true)
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.et
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !179 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_SC_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_SC_T0_.exit.i ], [ %i.fc, %bb.x ] ; 8 uses
  %i.ew = load i32, ptr %.sroa.012.1.i.i, align 4, !tbaa !200 ; 2 uses
  %i.ex = tail call noundef i32 @llvm.abs.i32(i32 %i.ew, i1 true)
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.ey
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !179
  %i.fb = icmp ult i64 %i.fa, %i.ev
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 4 ; 2 uses
  br i1 %i.fb, label %bb.x, label %.preheader.i.i, !llvm.loop !370

.preheader.i.i:                                   ; preds = %bb.x, %.preheader.i.i
  %.sroa.09.0.pn.i.i = phi ptr [ %.sroa.09.1.i.i, %.preheader.i.i ], [ %.sroa.09.0.i.i, %bb.x ]
  %.sroa.09.1.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -4 ; 5 uses
  %i.fd = load i32, ptr %.sroa.09.1.i.i, align 4, !tbaa !200 ; 2 uses
  %i.fe = tail call noundef i32 @llvm.abs.i32(i32 %i.fd, i1 true)
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.ff
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !179
  %i.fi = icmp ult i64 %i.ev, %i.fh
  br i1 %i.fi, label %.preheader.i.i, label %bb.y, !llvm.loop !371

bb.y:                                             ; preds = %.preheader.i.i
  %i.fj = icmp ult ptr %.sroa.012.1.i.i, %.sroa.09.1.i.i
  br i1 %i.fj, label %bb.z, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEET_SC_SC_T0_.exit

bb.z:                                             ; preds = %bb.y
  store i32 %i.fd, ptr %.sroa.012.1.i.i, align 4, !tbaa !200
  store i32 %i.ew, ptr %.sroa.09.1.i.i, align 4, !tbaa !200
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_SC_T0_.exit.i, !llvm.loop !372

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEET_SC_SC_T0_.exit: ; preds = %bb.y
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2555, i64 noundef %i.do, ptr %3)
  %i.fk = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.fl = sub i64 %i.fk, %i.a                     ; 2 uses
  %i.fm = ashr exact i64 %i.fl, 2                 ; 2 uses
  %i.fn = icmp sgt i64 %i.fm, 16
  br i1 %i.fn, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_T0_.exit, !llvm.loop !365

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEET_SC_SC_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_RT0_.exit.i.i, %bb.a, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 784 ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i, %.lr.ph.i
  %.sroa.0.021.i.idx = phi i64 [ 4, %.lr.ph.i ], [ %.sroa.0.021.i.add, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %.pn20.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.021.i.ptr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 3 uses
  %.sroa.0.021.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.021.i.idx ; 4 uses
  %i.f = load i32, ptr %.sroa.0.021.i.ptr, align 4, !tbaa !200 ; 2 uses
  %i.g = tail call noundef i32 @llvm.abs.i32(i32 %i.f, i1 true)
  %i.h = zext nneg i32 %i.g to i64
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !191  ; 4 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load i64, ptr %i.j, align 8, !tbaa !179  ; 3 uses
  %i.l = load i32, ptr %0, align 4, !tbaa !200    ; 2 uses
  %i.m = tail call noundef i32 @llvm.abs.i32(i32 %i.l, i1 true)
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.n
  %i.p = load i64, ptr %i.o, align 8, !tbaa !179
  %i.q = icmp ult i64 %i.k, %i.p
  br i1 %i.q, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.r = icmp samesign ugt i64 %.sroa.0.021.i.idx, 4
  br i1 %i.r, label %bb.d, label %bb.e, !prof !250

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.021.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 4
  store i32 %i.l, ptr %i.s, align 4, !tbaa !200
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %bb.b
  %i.t = load i32, ptr %.pn20.i, align 4, !tbaa !200 ; 2 uses
  %i.u = tail call noundef i32 @llvm.abs.i32(i32 %i.t, i1 true)
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !179
  %i.y = icmp ult i64 %i.k, %i.x
  br i1 %i.y, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.z = phi i32 [ %i.aa, %.lr.ph.i.i ], [ %i.t, %bb.f ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.f ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.021.i.ptr, %bb.f ]
  store i32 %i.z, ptr %.sroa.05.09.i.i, align 4, !tbaa !200
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.aa = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !200 ; 2 uses
  %i.ab = tail call noundef i32 @llvm.abs.i32(i32 %i.aa, i1 true)
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !179
  %i.af = icmp ult i64 %i.k, %i.ae
  br i1 %i.af, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !373

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.f, %bb.e, %bb.d
  %.sink.i = phi ptr [ %0, %bb.e ], [ %0, %bb.d ], [ %.sroa.0.021.i.ptr, %bb.f ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store i32 %i.f, ptr %.sink.i, align 4, !tbaa !200
  %.sroa.0.021.i.add = add nuw nsw i64 %.sroa.0.021.i.idx, 4 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.021.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_T0_.exit, label %bb.b, !llvm.loop !374

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not7.i = icmp eq ptr %i.ag, %1
  br i1 %.not7.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_T0_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_T0_.exit
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !191 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_T0_.exit.i, %.lr.ph.i10
  %.sroa.0.08.i = phi ptr [ %i.ag, %.lr.ph.i10 ], [ %i.ba, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_T0_.exit.i ] ; 5 uses
  %i.ai = load i32, ptr %.sroa.0.08.i, align 4, !tbaa !200 ; 2 uses
  %i.aj = tail call noundef i32 @llvm.abs.i32(i32 %i.ai, i1 true)
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !179 ; 2 uses
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.sroa.0.08.i, i64 -4 ; 2 uses
  %i.an = load i32, ptr %.sroa.0.08.i.i, align 4, !tbaa !200 ; 2 uses
  %i.ao = tail call noundef i32 @llvm.abs.i32(i32 %i.an, i1 true)
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !179
  %i.as = icmp ult i64 %i.am, %i.ar
  br i1 %i.as, label %.lr.ph.i.i12, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_T0_.exit.i

.lr.ph.i.i12:                                     ; preds = %bb.g, %.lr.ph.i.i12
  %i.at = phi i32 [ %i.au, %.lr.ph.i.i12 ], [ %i.an, %bb.g ]
  %.sroa.0.010.i.i13 = phi ptr [ %.sroa.0.0.i.i15, %.lr.ph.i.i12 ], [ %.sroa.0.08.i.i, %bb.g ] ; 3 uses
  %.sroa.05.09.i.i14 = phi ptr [ %.sroa.0.010.i.i13, %.lr.ph.i.i12 ], [ %.sroa.0.08.i, %bb.g ]
  store i32 %i.at, ptr %.sroa.05.09.i.i14, align 4, !tbaa !200
  %.sroa.0.0.i.i15 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i13, i64 -4 ; 2 uses
  %i.au = load i32, ptr %.sroa.0.0.i.i15, align 4, !tbaa !200 ; 2 uses
  %i.av = tail call noundef i32 @llvm.abs.i32(i32 %i.au, i1 true)
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !179
  %i.az = icmp ult i64 %i.am, %i.ay
  br i1 %i.az, label %.lr.ph.i.i12, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_T0_.exit.i, !llvm.loop !373

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i12, %bb.g
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.0.08.i, %bb.g ], [ %.sroa.0.010.i.i13, %.lr.ph.i.i12 ]
  store i32 %i.ai, ptr %.sroa.05.0.lcssa.i.i, align 4, !tbaa !200
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 4 ; 2 uses
  %.not.i11 = icmp eq ptr %i.ba, %1
  br i1 %.not.i11, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_T0_.exit, label %bb.g, !llvm.loop !375

bb.h:                                             ; preds = %bb.a
  %i.bb = icmp eq ptr %0, %1
  br i1 %i.bb, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_T0_.exit, label %.preheader.i16

.preheader.i16:                                   ; preds = %bb.h
  %.sroa.0.018.i17 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not19.i18 = icmp eq ptr %.sroa.0.018.i17, %1
  br i1 %.not19.i18, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_T0_.exit, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %.preheader.i16
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 784
  br label %bb.i

bb.i:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i22, %.lr.ph.i19
  %.sroa.0.021.i20 = phi ptr [ %.sroa.0.018.i17, %.lr.ph.i19 ], [ %.sroa.0.0.i24, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i22 ] ; 6 uses
  %.pn20.i21 = phi ptr [ %0, %.lr.ph.i19 ], [ %.sroa.0.021.i20, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i22 ] ; 4 uses
  %i.bd = load i32, ptr %.sroa.0.021.i20, align 4, !tbaa !200 ; 2 uses
  %i.be = tail call noundef i32 @llvm.abs.i32(i32 %i.bd, i1 true)
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = load ptr, ptr %i.bc, align 8, !tbaa !191 ; 4 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bf
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !179 ; 3 uses
  %i.bj = load i32, ptr %0, align 4, !tbaa !200   ; 2 uses
  %i.bk = tail call noundef i32 @llvm.abs.i32(i32 %i.bj, i1 true)
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !179
  %i.bo = icmp ult i64 %i.bi, %i.bn
  br i1 %i.bo, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bp = ptrtoint ptr %.sroa.0.021.i20 to i64
  %i.bq = sub i64 %i.bp, %i.b                     ; 3 uses
  %i.br = ashr exact i64 %i.bq, 2                 ; 2 uses
  %i.bs = icmp sgt i64 %i.br, 1
  br i1 %i.bs, label %bb.k, label %bb.l, !prof !250

bb.k:                                             ; preds = %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %.pn20.i21, i64 8
  %i.bu = sub nsw i64 0, %i.br
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.bu
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bv, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.bq, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i22

bb.l:                                             ; preds = %bb.j
  %i.bw = icmp eq i64 %i.bq, 4
  br i1 %i.bw, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i22

bb.m:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %.pn20.i21, i64 4
  store i32 %i.bj, ptr %i.bx, align 4, !tbaa !200
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i22

bb.n:                                             ; preds = %bb.i
  %i.by = load i32, ptr %.pn20.i21, align 4, !tbaa !200 ; 2 uses
  %i.bz = tail call noundef i32 @llvm.abs.i32(i32 %i.by, i1 true)
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !179
  %i.cd = icmp ult i64 %i.bi, %i.cc
  br i1 %i.cd, label %.lr.ph.i.i26, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i22

.lr.ph.i.i26:                                     ; preds = %bb.n, %.lr.ph.i.i26
  %i.ce = phi i32 [ %i.cf, %.lr.ph.i.i26 ], [ %i.by, %bb.n ]
  %.sroa.0.010.i.i27 = phi ptr [ %.sroa.0.0.i.i29, %.lr.ph.i.i26 ], [ %.pn20.i21, %bb.n ] ; 3 uses
  %.sroa.05.09.i.i28 = phi ptr [ %.sroa.0.010.i.i27, %.lr.ph.i.i26 ], [ %.sroa.0.021.i20, %bb.n ]
  store i32 %i.ce, ptr %.sroa.05.09.i.i28, align 4, !tbaa !200
  %.sroa.0.0.i.i29 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i27, i64 -4 ; 2 uses
  %i.cf = load i32, ptr %.sroa.0.0.i.i29, align 4, !tbaa !200 ; 2 uses
  %i.cg = tail call noundef i32 @llvm.abs.i32(i32 %i.cf, i1 true)
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.ch
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !179
  %i.ck = icmp ult i64 %i.bi, %i.cj
  br i1 %i.ck, label %.lr.ph.i.i26, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i22, !llvm.loop !373

end_hunk_0
