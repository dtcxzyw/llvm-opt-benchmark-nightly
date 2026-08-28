Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImfDeepCompositing?download=true
inline.NumInlined: 123
inline.NumDeleted: 73
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEEEvT_S7_T0_:bb.a
  br i1 %or.cond.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7Imf_3_411sort_helperEEclIiPiEEbRT_T0_.exit.thread.i.i, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7Imf_3_411sort_helperEEclIiPiEEbRT_T0_.exit.thread.i.i: ; preds = %bb.k, %bb.j, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit.thread19.i
  store i32 %i.aa, ptr %.09.i.i, align 4, !tbaa !12
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit.thread19.i, !llvm.loop !30

_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i:     ; preds = %bb.k, %bb.i, %bb.h, %bb.g
  %.sink.i = phi ptr [ %0, %bb.h ], [ %0, %bb.g ], [ %.09.i.i, %bb.i ], [ %.09.i.i, %bb.k ]
  store i32 %i.f, ptr %.sink.i, align 4, !tbaa !12
  %.024.i.add = add nuw nsw i64 %.024.i.idx, 4    ; 2 uses
  %.not.i = icmp eq i64 %.024.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEEEvT_S7_T0_.exit, label %bb.c, !llvm.loop !31

_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEEEvT_S7_T0_.exit: ; preds = %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not7.i = icmp eq ptr %i.ao, %1
  br i1 %.not7.i, label %_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEEEvT_S7_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEEEvT_S7_T0_.exit
  %i.ap = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN7Imf_3_411sort_helperEEEEvT_T0_.exit.i, %.lr.ph.i
  %.08.i = phi ptr [ %i.ao, %.lr.ph.i ], [ %i.bi, %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN7Imf_3_411sort_helperEEEEvT_T0_.exit.i ] ; 3 uses
  %i.aq = load i32, ptr %.08.i, align 4, !tbaa !12 ; 3 uses
  %i.ar = sext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.ar
  %i.at = load float, ptr %i.as, align 4, !tbaa !10 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7Imf_3_411sort_helperEEclIiPiEEbRT_T0_.exit.thread.i.i15, %bb.l
  %.09.i.i11 = phi ptr [ %.08.i, %bb.l ], [ %.0.i.i12, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7Imf_3_411sort_helperEEclIiPiEEbRT_T0_.exit.thread.i.i15 ] ; 3 uses
  %.0.i.i12 = getelementptr inbounds i8, ptr %.09.i.i11, i64 -4 ; 2 uses
  %i.au = load i32, ptr %.0.i.i12, align 4, !tbaa !12 ; 3 uses
  %i.av = sext i32 %i.au to i64                   ; 2 uses
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.av
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !10 ; 2 uses
  %i.ay = fcmp olt float %i.at, %i.ax
  br i1 %i.ay, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7Imf_3_411sort_helperEEclIiPiEEbRT_T0_.exit.thread.i.i15, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = fcmp ogt float %i.at, %i.ax
  br i1 %i.az, label %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN7Imf_3_411sort_helperEEEEvT_T0_.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = load ptr, ptr %i.e, align 8, !tbaa !18  ; 2 uses
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.ar
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !10 ; 2 uses
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.av
  %i.be = load float, ptr %i.bd, align 4, !tbaa !10 ; 2 uses
  %i.bf = fcmp olt float %i.bc, %i.be
  br i1 %i.bf, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7Imf_3_411sort_helperEEclIiPiEEbRT_T0_.exit.thread.i.i15, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = fcmp ule float %i.bc, %i.be
  %i.bh = icmp slt i32 %i.aq, %i.au
  %or.cond.i.i13 = and i1 %i.bh, %i.bg
  br i1 %or.cond.i.i13, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7Imf_3_411sort_helperEEclIiPiEEbRT_T0_.exit.thread.i.i15, label %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN7Imf_3_411sort_helperEEEEvT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7Imf_3_411sort_helperEEclIiPiEEbRT_T0_.exit.thread.i.i15: ; preds = %bb.p, %bb.o, %bb.m
  store i32 %i.au, ptr %.09.i.i11, align 4, !tbaa !12
  br label %bb.m, !llvm.loop !30

_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN7Imf_3_411sort_helperEEEEvT_T0_.exit.i: ; preds = %bb.p, %bb.n
  store i32 %i.aq, ptr %.09.i.i11, align 4, !tbaa !12
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i, i64 4 ; 2 uses
  %.not.i14 = icmp eq ptr %i.bi, %1
  br i1 %.not.i14, label %_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEEEvT_S7_T0_.exit, label %bb.l, !llvm.loop !32

bb.q:                                             ; preds = %bb.a
  %i.bj = icmp eq ptr %0, %1
  br i1 %i.bj, label %_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEEEvT_S7_T0_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.q
  %.021.i16 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not22.i = icmp eq ptr %.021.i16, %1
  br i1 %.not22.i, label %_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEEEvT_S7_T0_.exit, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %.preheader.i
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i25, %.lr.ph.i17
  %.024.i18 = phi ptr [ %.021.i16, %.lr.ph.i17 ], [ %.0.i27, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i25 ] ; 5 uses
  %.pn23.i19 = phi ptr [ %0, %.lr.ph.i17 ], [ %.024.i18, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i25 ] ; 2 uses
  %i.bl = load i32, ptr %.024.i18, align 4, !tbaa !12 ; 4 uses
  %i.bm = load i32, ptr %0, align 4, !tbaa !12    ; 3 uses
  %i.bn = load ptr, ptr %2, align 8, !tbaa !18    ; 3 uses
  %i.bo = sext i32 %i.bl to i64                   ; 3 uses
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !10 ; 4 uses
  %i.br = sext i32 %i.bm to i64                   ; 2 uses
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.br
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !10 ; 2 uses
  %i.bu = fcmp olt float %i.bq, %i.bt
  br i1 %i.bu, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit.thread.i30, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bv = fcmp ogt float %i.bq, %i.bt
  br i1 %i.bv, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit.thread19.i21.preheader, label %bb.t

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit.thread19.i21.preheader: ; preds = %bb.u, %bb.s
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit.thread19.i21

bb.t:                                             ; preds = %bb.s
  %i.bw = load ptr, ptr %i.bk, align 8, !tbaa !18 ; 2 uses
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.bo
  %i.by = load float, ptr %i.bx, align 4, !tbaa !10 ; 2 uses
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.br
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !10 ; 2 uses
  %i.cb = fcmp olt float %i.by, %i.ca
  br i1 %i.cb, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit.thread.i30, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cc = fcmp ule float %i.by, %i.ca
  %i.cd = icmp slt i32 %i.bl, %i.bm
  %or.cond.i20 = and i1 %i.cd, %i.cc
  br i1 %or.cond.i20, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit.thread.i30, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit.thread19.i21.preheader

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit.thread.i30: ; preds = %bb.u, %bb.t, %bb.r
  %i.ce = ptrtoint ptr %.024.i18 to i64
  %i.cf = sub i64 %i.ce, %i.b                     ; 3 uses
  %i.cg = ashr exact i64 %i.cf, 2                 ; 2 uses
  %i.ch = icmp sgt i64 %i.cg, 1
  br i1 %i.ch, label %bb.v, label %bb.w, !prof !29

bb.v:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit.thread.i30
  %i.ci = getelementptr inbounds nuw i8, ptr %.pn23.i19, i64 8
  %i.cj = sub nsw i64 0, %i.cg
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.cj
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ck, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.cf, i1 false)
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i25

bb.w:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit.thread.i30
  %i.cl = icmp eq i64 %i.cf, 4
  br i1 %i.cl, label %bb.x, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i25

bb.x:                                             ; preds = %bb.w
  %i.cm = getelementptr inbounds nuw i8, ptr %.pn23.i19, i64 4
  store i32 %i.bm, ptr %i.cm, align 4, !tbaa !12
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i25

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit.thread19.i21: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit.thread19.i21.preheader, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7Imf_3_411sort_helperEEclIiPiEEbRT_T0_.exit.thread.i.i29
  %.09.i.i22 = phi ptr [ %.0.i.i23, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7Imf_3_411sort_helperEEclIiPiEEbRT_T0_.exit.thread.i.i29 ], [ %.024.i18, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit.thread19.i21.preheader ] ; 4 uses
  %.0.i.i23 = getelementptr inbounds i8, ptr %.09.i.i22, i64 -4 ; 2 uses
  %i.cn = load i32, ptr %.0.i.i23, align 4, !tbaa !12 ; 3 uses
  %i.co = sext i32 %i.cn to i64                   ; 2 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.co
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !10 ; 2 uses
  %i.cr = fcmp olt float %i.bq, %i.cq
  br i1 %i.cr, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7Imf_3_411sort_helperEEclIiPiEEbRT_T0_.exit.thread.i.i29, label %bb.y

bb.y:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit.thread19.i21
  %i.cs = fcmp ogt float %i.bq, %i.cq
  br i1 %i.cs, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i25, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ct = load ptr, ptr %i.bk, align 8, !tbaa !18 ; 2 uses
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.bo
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !10 ; 2 uses
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.co
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !10 ; 2 uses
  %i.cy = fcmp olt float %i.cv, %i.cx
  br i1 %i.cy, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7Imf_3_411sort_helperEEclIiPiEEbRT_T0_.exit.thread.i.i29, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cz = fcmp ule float %i.cv, %i.cx
  %i.da = icmp slt i32 %i.bl, %i.cn
  %or.cond.i.i24 = and i1 %i.da, %i.cz
  br i1 %or.cond.i.i24, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7Imf_3_411sort_helperEEclIiPiEEbRT_T0_.exit.thread.i.i29, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i25

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7Imf_3_411sort_helperEEclIiPiEEbRT_T0_.exit.thread.i.i29: ; preds = %bb.aa, %bb.z, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit.thread19.i21
  store i32 %i.cn, ptr %.09.i.i22, align 4, !tbaa !12
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit.thread19.i21, !llvm.loop !30

_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i25:   ; preds = %bb.aa, %bb.y, %bb.x, %bb.w, %bb.v
  %.sink.i26 = phi ptr [ %0, %bb.x ], [ %0, %bb.v ], [ %0, %bb.w ], [ %.09.i.i22, %bb.y ], [ %.09.i.i22, %bb.aa ]
  store i32 %i.bl, ptr %.sink.i26, align 4, !tbaa !12
  %.0.i27 = getelementptr inbounds nuw i8, ptr %.024.i18, i64 4 ; 2 uses
  %.not.i28 = icmp eq ptr %.0.i27, %1
  br i1 %.not.i28, label %_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEEEvT_S7_T0_.exit, label %bb.r, !llvm.loop !31

_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEEEvT_S7_T0_.exit: ; preds = %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i25, %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN7Imf_3_411sort_helperEEEEvT_T0_.exit.i, %.preheader.i, %bb.q, %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEEEvT_S7_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr %4) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %4, align 8, !tbaa !18     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit.thread33
  %.036 = phi i64 [ %1, %.lr.ph ], [ %7, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit.thread33 ] ; 2 uses
  %i.f = shl i64 %.036, 1                         ; 4 uses
  %i.g = add i64 %i.f, 2                          ; 4 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %0, i64 %i.g
  %i.i = getelementptr [4 x i8], ptr %0, i64 %i.f
  %i.j = getelementptr i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.h, align 4, !tbaa !12   ; 2 uses
  %i.l = load i32, ptr %i.j, align 4, !tbaa !12   ; 2 uses
  %i.m = sext i32 %i.k to i64                     ; 2 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.m
  %i.o = load float, ptr %i.n, align 4, !tbaa !10 ; 2 uses
  %i.p = sext i32 %i.l to i64                     ; 2 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.p
  %i.r = load float, ptr %i.q, align 4, !tbaa !10 ; 2 uses
  %i.s = fcmp olt float %i.o, %i.r
  br i1 %i.s, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = fcmp ogt float %i.o, %i.r
  br i1 %i.t, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit.thread33, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !18   ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.m
  %i.w = load float, ptr %i.v, align 4, !tbaa !10 ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.p
  %i.y = load float, ptr %i.x, align 4, !tbaa !10 ; 2 uses
  %i.z = fcmp olt float %i.w, %i.y
  br i1 %i.z, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit.thread, label %5

5:                                                ; preds = %bb.d
  %6 = fcmp ogt float %i.w, %i.y
  br i1 %6, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit.thread33, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit.thread: ; preds = %bb.b, %bb.d
  %i.aa = or disjoint i64 %i.f, 1
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit.thread33

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit: ; preds = %5
  %i.ab = icmp slt i32 %i.k, %i.l
  %i.ac = or disjoint i64 %i.f, 1
  %cond.fr = freeze i1 %i.ab
  %spec.select = select i1 %cond.fr, i64 %i.ac, i64 %i.g
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit.thread33

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit.thread33: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit, %bb.c, %5, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit.thread
  %7 = phi i64 [ %i.g, %bb.c ], [ %spec.select, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit ], [ %i.aa, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit.thread ], [ %i.g, %5 ] ; 4 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %0, i64 %7
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !12
  %i.af = getelementptr inbounds [4 x i8], ptr %0, i64 %.036
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !12
  %i.ag = icmp slt i64 %7, %i.b
  br i1 %i.ag, label %bb.b, label %._crit_edge, !llvm.loop !33

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit.thread33, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %7, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit.thread33 ] ; 5 uses
  %i.ah = and i64 %2, 1
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.e, label %bb.g

bb.e:                                             ; preds = %._crit_edge
  %i.aj = add nsw i64 %2, -2
  %i.ak = ashr exact i64 %i.aj, 1
  %i.al = icmp eq i64 %.0.lcssa, %i.ak
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.am = shl nsw i64 %.0.lcssa, 1
  %i.an = or disjoint i64 %i.am, 1                ; 2 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %0, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !12
  %i.aq = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge
  %.128 = phi i64 [ %i.an, %bb.f ], [ %.0.lcssa, %bb.e ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.ar = icmp sgt i64 %.128, %1
  br i1 %i.ar, label %.lr.ph.i, label %_ZSt11__push_heapIPiliN9__gnu_cxx5__ops14_Iter_comp_valIN7Imf_3_411sort_helperEEEEvT_T0_S8_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.as = load ptr, ptr %4, align 8, !tbaa !18    ; 2 uses
  %i.at = sext i32 %3 to i64                      ; 2 uses
  %i.au = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.at
  %i.av = load float, ptr %i.au, align 4, !tbaa !10 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.h

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7Imf_3_411sort_helperEEclIPiiEEbT_RT0_.exit.thread.i, %.lr.ph.i
  %.01321.i = phi i64 [ %.128, %.lr.ph.i ], [ %.022.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7Imf_3_411sort_helperEEclIPiiEEbT_RT0_.exit.thread.i ] ; 4 uses
  %.022.in.i = add nsw i64 %.01321.i, -1
  %.022.i = sdiv i64 %.022.in.i, 2                ; 4 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %0, i64 %.022.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !12 ; 3 uses
  %i.az = sext i32 %i.ay to i64                   ; 2 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.az
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !10 ; 2 uses
  %i.bc = fcmp olt float %i.bb, %i.av
  br i1 %i.bc, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7Imf_3_411sort_helperEEclIPiiEEbT_RT0_.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = fcmp ogt float %i.bb, %i.av
  br i1 %i.bd, label %_ZSt11__push_heapIPiliN9__gnu_cxx5__ops14_Iter_comp_valIN7Imf_3_411sort_helperEEEEvT_T0_S8_T1_RT2_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !18 ; 2 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.az
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !10 ; 2 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.at
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !10 ; 2 uses
  %i.bj = fcmp olt float %i.bg, %i.bi
  br i1 %i.bj, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7Imf_3_411sort_helperEEclIPiiEEbT_RT0_.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = fcmp ule float %i.bg, %i.bi
  %i.bl = icmp slt i32 %i.ay, %3
  %or.cond.i = and i1 %i.bl, %i.bk
  br i1 %or.cond.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7Imf_3_411sort_helperEEclIPiiEEbT_RT0_.exit.thread.i, label %_ZSt11__push_heapIPiliN9__gnu_cxx5__ops14_Iter_comp_valIN7Imf_3_411sort_helperEEEEvT_T0_S8_T1_RT2_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7Imf_3_411sort_helperEEclIPiiEEbT_RT0_.exit.thread.i: ; preds = %bb.k, %bb.j, %bb.h
  %i.bm = getelementptr inbounds [4 x i8], ptr %0, i64 %.01321.i
  store i32 %i.ay, ptr %i.bm, align 4, !tbaa !12
  %i.bn = icmp sgt i64 %.022.i, %1
  br i1 %i.bn, label %bb.h, label %_ZSt11__push_heapIPiliN9__gnu_cxx5__ops14_Iter_comp_valIN7Imf_3_411sort_helperEEEEvT_T0_S8_T1_RT2_.exit, !llvm.loop !34

_ZSt11__push_heapIPiliN9__gnu_cxx5__ops14_Iter_comp_valIN7Imf_3_411sort_helperEEEEvT_T0_S8_T1_RT2_.exit: ; preds = %bb.i, %bb.k, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7Imf_3_411sort_helperEEclIPiiEEbT_RT0_.exit.thread.i, %bb.g
  %.013.lcssa.i = phi i64 [ %.128, %bb.g ], [ %.022.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7Imf_3_411sort_helperEEclIPiiEEbT_RT0_.exit.thread.i ], [ %.01321.i, %bb.k ], [ %.01321.i, %bb.i ]
  %i.bo = getelementptr inbounds [4 x i8], ptr %0, i64 %.013.lcssa.i
  store i32 %3, ptr %i.bo, align 4, !tbaa !12
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEEEvT_S7_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr %4) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !12     ; 8 uses
  %i.b = load i32, ptr %2, align 4, !tbaa !12     ; 8 uses
  %i.c = load ptr, ptr %4, align 8, !tbaa !18     ; 4 uses
  %i.d = sext i32 %i.a to i64                     ; 4 uses
  %i.e = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.d
  %i.f = load float, ptr %i.e, align 4, !tbaa !10 ; 6 uses
  %i.g = sext i32 %i.b to i64                     ; 4 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.g
  %i.i = load float, ptr %i.h, align 4, !tbaa !10 ; 6 uses
  %i.j = fcmp olt float %i.f, %i.i
  br i1 %i.j, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = fcmp ogt float %i.f, %i.i
  br i1 %i.k, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit.thread36, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18   ; 2 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.d
  %i.o = load float, ptr %i.n, align 4, !tbaa !10 ; 2 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.g
  %i.q = load float, ptr %i.p, align 4, !tbaa !10 ; 2 uses
  %i.r = fcmp olt float %i.o, %i.q
  br i1 %i.r, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = fcmp ule float %i.o, %i.q
  %i.t = icmp slt i32 %i.a, %i.b
  %or.cond = and i1 %i.t, %i.s
  br i1 %or.cond, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit.thread36

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit.thread: ; preds = %bb.d, %bb.c, %bb.a
  %i.u = load i32, ptr %3, align 4, !tbaa !12     ; 6 uses
  %i.v = sext i32 %i.u to i64                     ; 3 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.v
  %i.x = load float, ptr %i.w, align 4, !tbaa !10 ; 4 uses
  %i.y = fcmp olt float %i.i, %i.x
  br i1 %i.y, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit23.thread, label %bb.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit.thread
  %i.z = fcmp ogt float %i.i, %i.x
  br i1 %i.z, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit23.thread40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !18 ; 2 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.g
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !10 ; 2 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.v
  %i.af = load float, ptr %i.ae, align 4, !tbaa !10 ; 2 uses
  %i.ag = fcmp olt float %i.ad, %i.af
  br i1 %i.ag, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit23.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = fcmp ule float %i.ad, %i.af
  %i.ai = icmp slt i32 %i.b, %i.u
  %or.cond54 = and i1 %i.ai, %i.ah
  br i1 %or.cond54, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit23.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit23.thread40

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit23.thread40: ; preds = %bb.e, %bb.g
  %i.aj = fcmp olt float %i.f, %i.x
  br i1 %i.aj, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit23.thread, label %bb.h

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit23.thread40
  %i.ak = fcmp ogt float %i.f, %i.x
  br i1 %i.ak, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit25.thread44, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !18 ; 2 uses
  %i.an = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.d
  %i.ao = load float, ptr %i.an, align 4, !tbaa !10 ; 2 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.v
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !10 ; 2 uses
  %i.ar = fcmp olt float %i.ao, %i.aq
  br i1 %i.ar, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit23.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = fcmp ule float %i.ao, %i.aq
  %i.at = icmp slt i32 %i.a, %i.u
  %or.cond55 = and i1 %i.at, %i.as
  br i1 %or.cond55, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit23.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit25.thread44

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit25.thread44: ; preds = %bb.h, %bb.j
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit23.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit.thread36: ; preds = %bb.b, %bb.d
  %i.au = load i32, ptr %3, align 4, !tbaa !12    ; 6 uses
  %i.av = sext i32 %i.au to i64                   ; 3 uses
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.av
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !10 ; 4 uses
  %i.ay = fcmp olt float %i.f, %i.ax
  br i1 %i.ay, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit23.thread, label %bb.k

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit.thread36
  %i.az = fcmp ogt float %i.f, %i.ax
  br i1 %i.az, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit27.thread48, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !18 ; 2 uses
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.d
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !10 ; 2 uses
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.av
  %i.bf = load float, ptr %i.be, align 4, !tbaa !10 ; 2 uses
  %i.bg = fcmp olt float %i.bd, %i.bf
  br i1 %i.bg, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit23.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = fcmp ule float %i.bd, %i.bf
  %i.bi = icmp slt i32 %i.a, %i.au
  %or.cond56 = and i1 %i.bi, %i.bh
  br i1 %or.cond56, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit23.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit27.thread48

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit27.thread48: ; preds = %bb.k, %bb.m
  %i.bj = fcmp olt float %i.i, %i.ax
  br i1 %i.bj, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit23.thread, label %bb.n

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit27.thread48
  %i.bk = fcmp ogt float %i.i, %i.ax
  br i1 %i.bk, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit29.thread52, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !18 ; 2 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.g
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !10 ; 2 uses
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.av
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !10 ; 2 uses
  %i.br = fcmp olt float %i.bo, %i.bq
  br i1 %i.br, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit23.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = fcmp ule float %i.bo, %i.bq
  %i.bt = icmp slt i32 %i.b, %i.au
  %or.cond57 = and i1 %i.bt, %i.bs
  br i1 %or.cond57, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit23.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit29.thread52

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit29.thread52: ; preds = %bb.n, %bb.p
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit23.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit23.thread: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit27.thread48, %bb.o, %bb.p, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit.thread36, %bb.l, %bb.m, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit23.thread40, %bb.i, %bb.j, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit.thread, %bb.f, %bb.g, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit29.thread52, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit25.thread44
  %.sink73 = phi i32 [ %i.u, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit23.thread40 ], [ %i.b, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit29.thread52 ], [ %i.a, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit.thread36 ], [ %i.b, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit.thread ], [ %i.a, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit25.thread44 ], [ %i.b, %bb.g ], [ %i.b, %bb.f ], [ %i.u, %bb.j ], [ %i.u, %bb.i ], [ %i.a, %bb.m ], [ %i.a, %bb.l ], [ %i.au, %bb.p ], [ %i.au, %bb.o ], [ %i.au, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit27.thread48 ]
  %.sink72 = phi ptr [ %3, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit23.thread40 ], [ %2, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit29.thread52 ], [ %1, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit.thread36 ], [ %2, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit.thread ], [ %1, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit25.thread44 ], [ %2, %bb.g ], [ %2, %bb.f ], [ %3, %bb.j ], [ %3, %bb.i ], [ %1, %bb.m ], [ %1, %bb.l ], [ %3, %bb.p ], [ %3, %bb.o ], [ %3, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEclIPiS6_EEbT_T0_.exit27.thread48 ]
  %i.bu = load i32, ptr %0, align 4, !tbaa !12
  store i32 %.sink73, ptr %0, align 4, !tbaa !12
  store i32 %i.bu, ptr %.sink72, align 4, !tbaa !12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }
attributes #14 = { noreturn }
attributes #15 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"float", !6, i64 0}
!12 = !{!5, !5, i64 0}
!13 = distinct !{!13, !14, !15, !16}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !14, !16, !15}
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 float", !20, i64 0}
!20 = !{!"any pointer", !6, i64 0}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
!24 = distinct !{!24, !14}
!25 = distinct !{!25, !14}
!26 = distinct !{!26, !14}
!27 = distinct !{!27, !14}
!28 = distinct !{!28, !14}
!29 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!30 = distinct !{!30, !14}
!31 = distinct !{!31, !14}
!32 = distinct !{!32, !14}
!33 = distinct !{!33, !14}
!34 = distinct !{!34, !14}
end_hunk_0
