Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/NNDescent?download=true
inline.NumInlined: 1107
inline.NumDeleted: 428
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_:bb.a
  %i.ah = icmp eq i64 %i.ab, 4
  br i1 %i.ah, label %bb.l, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i17

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %.pn18.i16, i64 4
  store i32 %i.y, ptr %i.ai, align 4, !tbaa !37
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i17

bb.m:                                             ; preds = %.lr.ph.i14
  %i.aj = load i32, ptr %.pn18.i16, align 4, !tbaa !37 ; 2 uses
  %i.ak = icmp slt i32 %i.x, %i.aj
  br i1 %i.ak, label %.lr.ph.i.i21, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i17

.lr.ph.i.i21:                                     ; preds = %bb.m, %.lr.ph.i.i21
  %i.al = phi i32 [ %i.am, %.lr.ph.i.i21 ], [ %i.aj, %bb.m ]
  %.013.i.i22 = phi ptr [ %.0.i.i24, %.lr.ph.i.i21 ], [ %.pn18.i16, %bb.m ] ; 3 uses
  %.0912.i.i23 = phi ptr [ %.013.i.i22, %.lr.ph.i.i21 ], [ %.019.i15, %bb.m ]
  store i32 %i.al, ptr %.0912.i.i23, align 4, !tbaa !37
  %.0.i.i24 = getelementptr inbounds i8, ptr %.013.i.i22, i64 -4 ; 2 uses
  %i.am = load i32, ptr %.0.i.i24, align 4, !tbaa !37 ; 2 uses
  %i.an = icmp slt i32 %i.x, %i.am
  br i1 %i.an, label %.lr.ph.i.i21, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i17, !llvm.loop !77

_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i17:   ; preds = %.lr.ph.i.i21, %bb.m, %bb.l, %bb.k, %bb.j
  %.sink.i18 = phi ptr [ %0, %bb.l ], [ %0, %bb.j ], [ %0, %bb.k ], [ %.019.i15, %bb.m ], [ %.013.i.i22, %.lr.ph.i.i21 ]
  store i32 %i.x, ptr %.sink.i18, align 4, !tbaa !37
  %.0.i19 = getelementptr inbounds nuw i8, ptr %.019.i15, i64 4 ; 2 uses
  %.not.i20 = icmp eq ptr %.0.i19, %1
  br i1 %.not.i20, label %_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %.lr.ph.i14, !llvm.loop !78

_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit: ; preds = %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i17, %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i, %bb.h, %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us
  %.013.us = phi i64 [ %i.am, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.us
  %i.q = load i32, ptr %i.p, align 4, !tbaa !37   ; 2 uses
  %i.r = icmp slt i64 %.013.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.029.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.013.us, %.split.us ] ; 2 uses
  %i.s = shl i64 %.029.i.us, 1                    ; 3 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr [4 x i8], ptr %0, i64 %i.s
  %i.w = getelementptr i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.u, align 4, !tbaa !37
  %i.y = load i32, ptr %i.w, align 4, !tbaa !37
  %i.z = icmp slt i32 %i.x, %i.y
  %i.aa = or disjoint i64 %i.s, 1
  %spec.select.i.us = select i1 %i.z, i64 %i.aa, i64 %i.t ; 6 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.us
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !37
  %i.ad = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i.us
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !37
  %i.ae = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ae, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !71

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.af = icmp sgt i64 %spec.select.i.us, %.013.us
  br i1 %i.af, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.01317.i.i.us = phi i64 [ %.018.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.018.in.i.i.us = add nsw i64 %.01317.i.i.us, -1
  %.018.i.i.us = sdiv i64 %.018.in.i.i.us, 2      ; 4 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i.us
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !37 ; 2 uses
  %i.ai = icmp slt i32 %i.ah, %i.q
  br i1 %i.ai, label %bb.c, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01317.i.i.us
  store i32 %i.ah, ptr %i.aj, align 4, !tbaa !37
  %i.ak = icmp sgt i64 %.018.i.i.us, %.013.us
  br i1 %i.ak, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us, !llvm.loop !72

_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.013.us, %.split.us ], [ %.01317.i.i.us, %.lr.ph.i.i.us ], [ %.018.i.i.us, %bb.c ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store i32 %i.q, ptr %i.al, align 4, !tbaa !37
  %.not.us = icmp eq i64 %.013.us, 0
  %i.am = add nsw i64 %.013.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !80

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit
  %.013 = phi i64 [ %i.bm, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !37 ; 2 uses
  %i.ap = icmp slt i64 %.013, %i.i
  br i1 %i.ap, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.029.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.013, %.split ] ; 2 uses
  %i.aq = shl i64 %.029.i, 1                      ; 3 uses
  %i.ar = add i64 %i.aq, 2                        ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ar
  %i.at = getelementptr [4 x i8], ptr %0, i64 %i.aq
  %i.au = getelementptr i8, ptr %i.at, i64 4
  %i.av = load i32, ptr %i.as, align 4, !tbaa !37
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !37
  %i.ax = icmp slt i32 %i.av, %i.aw
  %i.ay = or disjoint i64 %i.aq, 1
  %spec.select.i = select i1 %i.ax, i64 %i.ay, i64 %i.ar ; 4 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !37
  %i.bb = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !37
  %i.bc = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.bc, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !71

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.013, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bd = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.be = load i32, ptr %i.n, align 4, !tbaa !37
  store i32 %i.be, ptr %i.o, align 4, !tbaa !37
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.128.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bf = icmp sgt i64 %.128.i, %.013
  br i1 %i.bf, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.01317.i.i = phi i64 [ %.018.i.i, %bb.f ], [ %.128.i, %bb.e ] ; 3 uses
  %.018.in.i.i = add nsw i64 %.01317.i.i, -1
  %.018.i.i = sdiv i64 %.018.in.i.i, 2            ; 4 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !37 ; 2 uses
  %i.bi = icmp slt i32 %i.bh, %i.ao
  br i1 %i.bi, label %bb.f, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01317.i.i
  store i32 %i.bh, ptr %i.bj, align 4, !tbaa !37
  %i.bk = icmp sgt i64 %.018.i.i, %.013
  br i1 %i.bk, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit, !llvm.loop !72

_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.013.lcssa.i.i = phi i64 [ %.128.i, %bb.e ], [ %.018.i.i, %bb.f ], [ %.01317.i.i, %.lr.ph.i.i ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i.i
  store i32 %i.ao, ptr %i.bl, align 4, !tbaa !37
  %.not = icmp eq i64 %.013, 0
  %i.bm = add nsw i64 %.013, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !80

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i32 @_ZN5faiss9nndescent16insert_into_poolEPNS0_8NeighborEiS1_(ptr nofree noundef captures(none) %0, i32 noundef %1, i64 %2, i8 %3) local_unnamed_addr #16 {
bb.a:
  %.sroa.0.sroa.0.0.extract.trunc = trunc i64 %2 to i32 ; 3 uses
  %.sroa.0.sroa.2.0.extract.shift = lshr i64 %2, 32
  %.sroa.0.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.0.sroa.2.0.extract.shift to i32
  %i.a = bitcast i32 %.sroa.0.sroa.2.0.extract.trunc to float ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !57
  %i.d = fcmp ogt float %i.c, %i.a
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = sext i32 %1 to i64
  %i.g = mul nsw i64 %i.f, 12
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.e, ptr nonnull align 4 %0, i64 %i.g, i1 false)
  store i64 %2, ptr %0, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %3, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !53
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.h = add nsw i32 %1, -1                       ; 3 uses
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [12 x i8], ptr %0, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load float, ptr %i.k, align 4, !tbaa !57
  %i.m = fcmp olt float %i.l, %i.a
  br i1 %i.m, label %bb.d, label %.preheader68

.preheader68:                                     ; preds = %bb.c
  %i.n = icmp sgt i32 %1, 2
  br i1 %i.n, label %.lr.ph, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.o = sext i32 %1 to i64
  %i.p = getelementptr inbounds [12 x i8], ptr %0, i64 %i.o ; 2 uses
  store i64 %2, ptr %i.p, align 4
  %.sroa.12.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i8 %3, ptr %.sroa.12.0..sroa_idx58, align 4, !tbaa !53
  br label %bb.k

.preheader:                                       ; preds = %.lr.ph
  %i.q = icmp sgt i32 %.063., 0
  br i1 %i.q, label %.lr.ph74.preheader, label %._crit_edge

.lr.ph74.preheader:                               ; preds = %.preheader
  %4 = zext nneg i32 %.063. to i64
  br label %.lr.ph74

.lr.ph:                                           ; preds = %.preheader68, %.lr.ph
  %.071 = phi i32 [ %..0, %.lr.ph ], [ %i.h, %.preheader68 ] ; 2 uses
  %.06370 = phi i32 [ %.063., %.lr.ph ], [ 0, %.preheader68 ] ; 2 uses
  %i.r = add nsw i32 %.071, %.06370
  %i.s = sdiv i32 %i.r, 2                         ; 3 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [12 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load float, ptr %i.v, align 4, !tbaa !57
  %i.x = fcmp ogt float %i.w, %i.a                ; 2 uses
  %.063. = select i1 %i.x, i32 %.06370, i32 %i.s  ; 5 uses
  %..0 = select i1 %i.x, i32 %i.s, i32 %.071      ; 5 uses
  %i.y = add nsw i32 %..0, -1
  %i.z = icmp slt i32 %.063., %i.y
  br i1 %i.z, label %.lr.ph, label %.preheader, !llvm.loop !81

.lr.ph74:                                         ; preds = %.lr.ph74.preheader, %bb.g
  %indvars.iv = phi i64 [ %4, %.lr.ph74.preheader ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %i.aa = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !57
  %i.ad = fcmp olt float %i.ac, %i.a
  br i1 %i.ad, label %._crit_edge.loopexit.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph74
  %i.ae = load i32, ptr %i.aa, align 4, !tbaa !60
  %i.af = icmp eq i32 %i.ae, %.sroa.0.sroa.0.0.extract.trunc
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = add nuw nsw i32 %1, 1
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ah = icmp sgt i64 %indvars.iv, 1
  br i1 %i.ah, label %.lr.ph74, label %._crit_edge, !llvm.loop !82

._crit_edge.loopexit.split.loop.exit:             ; preds = %.lr.ph74
  %5 = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.g, %._crit_edge.loopexit.split.loop.exit, %.preheader68, %.preheader
  %.0.lcssa80 = phi i32 [ %..0, %.preheader ], [ %i.h, %.preheader68 ], [ %..0, %._crit_edge.loopexit.split.loop.exit ], [ %..0, %bb.g ] ; 3 uses
  %.2.lcssa = phi i32 [ %.063., %.preheader ], [ 0, %.preheader68 ], [ %5, %._crit_edge.loopexit.split.loop.exit ], [ 0, %bb.g ]
  %i.ai = sext i32 %.2.lcssa to i64
  %i.aj = getelementptr inbounds [12 x i8], ptr %0, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !60
  %i.al = icmp eq i32 %i.ak, %.sroa.0.sroa.0.0.extract.trunc
  br i1 %i.al, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.am = sext i32 %.0.lcssa80 to i64
  %i.an = getelementptr inbounds [12 x i8], ptr %0, i64 %i.am ; 5 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !60
  %i.ap = icmp eq i32 %i.ao, %.sroa.0.sroa.0.0.extract.trunc
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %i.aq = add nsw i32 %1, 1
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ar = getelementptr i8, ptr %i.an, i64 12
  %i.as = sub nsw i32 %1, %.0.lcssa80
  %i.at = sext i32 %i.as to i64
  %i.au = mul nsw i64 %i.at, 12
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ar, ptr nonnull align 4 %i.an, i64 %i.au, i1 false)
  store i64 %2, ptr %i.an, align 4
  %.sroa.12.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i8 %3, ptr %.sroa.12.0..sroa_idx60, align 4, !tbaa !53
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.f, %bb.d, %bb.b
  %.065 = phi i32 [ 0, %bb.b ], [ %1, %bb.d ], [ %i.aq, %bb.i ], [ %.0.lcssa80, %bb.j ], [ %i.ag, %bb.f ]
  ret i32 %.065
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5faiss9NNDescentC2Eii(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(88) initializes((0, 1), (4, 88)) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #17 align 2 {
bb.a:
  store i8 0, ptr %0, align 8, !tbaa !83
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store <4 x i32> <i32 10, i32 100, i32 10, i32 0>, ptr %i.a, align 4, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 2021, ptr %i.b, align 4, !tbaa !90
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %2, ptr %i.c, align 8, !tbaa !91
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %1, ptr %i.d, align 4, !tbaa !92
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.f = add nsw i32 %2, 50
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.e, i8 0, i64 52, i1 false)
  store i32 %i.f, ptr %i.g, align 8, !tbaa !93
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5faiss9NNDescentD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(88) dereferenceable(88) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !94
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !95
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5faiss9nndescent5NhoodEEEvT_S6_(ptr noundef %i.i, ptr noundef %i.k)
          to label %_ZSt8_DestroyIPN5faiss9nndescent5NhoodES2_EvT_S4_RSaIT0_E.exit.i unwind label %bb.d

_ZSt8_DestroyIPN5faiss9nndescent5NhoodES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !94   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN5faiss9nndescent5NhoodESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN5faiss9nndescent5NhoodES2_EvT_S4_RSaIT0_E.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !96
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #25
  br label %_ZNSt6vectorIN5faiss9nndescent5NhoodESaIS2_EED2Ev.exit

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #28
  unreachable

_ZNSt6vectorIN5faiss9nndescent5NhoodESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5faiss9nndescent5NhoodES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5faiss9nndescent5NhoodEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4 = icmp eq ptr %0, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyIN5faiss9nndescent5NhoodEEvPT_.exit
  %.05 = phi ptr [ %i.aj, %_ZSt8_DestroyIN5faiss9nndescent5NhoodEEvPT_.exit ], [ %0, %bb.a ] ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %.05, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i:              ; preds = %bb.b, %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.05, i64 120
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !24   ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05, i64 136
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit2.i.i.i:             ; preds = %bb.c, %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05, i64 96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !24   ; 3 uses
  %.not.i.i.i3.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i3.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit4.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !26
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit4.i.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit4.i.i.i:             ; preds = %bb.d, %_ZNSt6vectorIiSaIiEED2Ev.exit2.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !24   ; 3 uses
  %.not.i.i.i5.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i5.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit6.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit4.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05, i64 88
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !26
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit6.i.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit6.i.i.i:             ; preds = %bb.e, %_ZNSt6vectorIiSaIiEED2Ev.exit4.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.05, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !27 ; 3 uses
  %.not.i.i.i7.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i7.i.i.i, label %_ZSt8_DestroyIN5faiss9nndescent5NhoodEEvPT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit6.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.05, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !28
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #25
  br label %_ZSt8_DestroyIN5faiss9nndescent5NhoodEEvPT_.exit

_ZSt8_DestroyIN5faiss9nndescent5NhoodEEvPT_.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit6.i.i.i, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %.05, i64 168 ; 2 uses
  %.not = icmp eq ptr %i.aj, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !97

._crit_edge:                                      ; preds = %_ZSt8_DestroyIN5faiss9nndescent5NhoodEEvPT_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss9nndescent5NhoodD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !24   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIiSaIiEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
end_hunk_0
begin_hunk_1_@_ZNK5faiss9NNDescent6searchERNS_16DistanceComputerEiPlPfRNS_12VisitedTableE:bb.a

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc96, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.0 = phi ptr [ %i.ah, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ah, %.noexc96 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0108.0 = phi ptr [ %i.ag, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ag, %.noexc96 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.am = load i32, ptr %i.al, align 4, !tbaa !90
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  store i64 %i.an, ptr %7, align 8, !tbaa !67
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %store_forwarded = phi i64 [ %i.an, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ], [ %i.ba, %bb.n ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ], [ %i.bb, %bb.n ] ; 4 uses
  %i.ao = getelementptr [8 x i8], ptr %7, i64 %.011.i.i
  %i.ap = lshr i64 %store_forwarded, 30
  %i.aq = xor i64 %i.ap, %store_forwarded
  %i.ar = mul nuw nsw i64 %i.aq, 1812433253
  %i.as = add nuw i64 %i.ar, %.011.i.i            ; 2 uses
  %i.at = and i64 %i.as, 4294967295               ; 2 uses
  store i64 %i.at, ptr %i.ao, align 8, !tbaa !67
  %i.au = add nuw nsw i64 %.011.i.i, 1            ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.au, 624
  br i1 %exitcond.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr [8 x i8], ptr %7, i64 %i.au
  %i.aw = lshr i64 %i.at, 30
  %i.ax = xor i64 %i.aw, %i.as
  %i.ay = mul i64 %i.ax, 1812433253
  %i.az = add i64 %i.ay, %i.au
  %i.ba = and i64 %i.az, 4294967295               ; 2 uses
  store i64 %i.ba, ptr %i.av, align 8, !tbaa !67
  %i.bb = add nuw nsw i64 %.011.i.i, 2
  br label %bb.m

bb.o:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 4992
  store i64 624, ptr %i.bc, align 8, !tbaa !65
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !99
  invoke void @_ZN5faiss9nndescent10gen_randomERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEPiii(ptr noundef nonnull align 8 dereferenceable(5000) %7, ptr noundef %.sroa.0108.0, i32 noundef %.sroa.speculated, i32 noundef %i.be)
          to label %.preheader134 unwind label %bb.p

.preheader134:                                    ; preds = %bb.o
  br i1 %.not.i.i.i.i92, label %.preheader, label %.lr.ph

._crit_edge:                                      ; preds = %bb.q
  %.idx = mul nuw nsw i64 %i.ae, 12               ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx ; 2 uses
  %i.bg = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ae, i1 true)
  %i.bh = shl nuw nsw i64 %i.bg, 1
  %i.bi = xor i64 %i.bh, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr nonnull %i.y, ptr nonnull %i.bf, i64 noundef %i.bi)
          to label %.noexc97 unwind label %.thread180

.noexc97:                                         ; preds = %._crit_edge
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr nonnull %i.y, ptr nonnull %i.bf)
          to label %.lr.ph143.a unwind label %.thread180

bb.p:                                             ; preds = %bb.o
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.lr.ph:                                           ; preds = %.preheader134, %bb.q
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.q ], [ 0, %.preheader134 ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0108.0, i64 %indvars.iv
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !37 ; 2 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = load ptr, ptr %1, align 8, !tbaa !63
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = invoke noundef float %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.bm)
          to label %bb.q unwind label %.thread

bb.q:                                             ; preds = %.lr.ph
  %i.br = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %indvars.iv ; 3 uses
  store i32 %i.bl, ptr %i.br, align 4, !tbaa !37
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store float %i.bq, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !51
  %.sroa.5105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i8 1, ptr %.sroa.5105.0..sroa_idx, align 4, !tbaa !53
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bs = icmp samesign ult i64 %indvars.iv.next, %i.ae
  br i1 %i.bs, label %.lr.ph, label %._crit_edge, !llvm.loop !154

.thread:                                          ; preds = %.lr.ph
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.lr.ph143.a:                                      ; preds = %.noexc97
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bw = add nsw i32 %.sroa.speculated, -1       ; 3 uses
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.cb = icmp sgt i32 %.sroa.speculated, 2
  %i.cc = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  br label %bb.r

.preheader:                                       ; preds = %.loopexit, %.preheader134
  %i.cd = icmp sgt i32 %2, 0
  br i1 %i.cd, label %.lr.ph145.preheader, label %._crit_edge146

.lr.ph145.preheader:                              ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ce = icmp eq i32 %2, 1
  br i1 %i.ce, label %.lr.ph145.epil.preheader, label %.lr.ph145.preheader.new

.lr.ph145.preheader.new:                          ; preds = %.lr.ph145.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph145

bb.r:                                             ; preds = %.lr.ph143.a, %.loopexit
  %.074142 = phi i32 [ 0, %.lr.ph143.a ], [ %.175, %.loopexit ] ; 3 uses
  %i.cf = sext i32 %.074142 to i64
  %i.cg = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %i.cf ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 4, !tbaa !108, !range !109, !noundef !110
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %bb.r
  store i8 0, ptr %i.ch, align 4, !tbaa !108
  %i.ck = load i32, ptr %i.cg, align 4, !tbaa !60
  %i.cl = load i32, ptr %i.bu, align 8, !tbaa !91 ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.lr.ph141, label %.loopexit

.thread180:                                       ; preds = %._crit_edge, %.noexc97
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.lr.ph141:                                        ; preds = %bb.s, %bb.af
  %i.co = phi i32 [ %i.es, %bb.af ], [ %i.cl, %bb.s ]
  %.068139 = phi i32 [ %i.er, %bb.af ], [ 0, %bb.s ] ; 2 uses
  %.069138 = phi i32 [ %.372, %bb.af ], [ %.sroa.speculated, %bb.s ] ; 3 uses
  %i.cp = mul nsw i32 %i.co, %i.ck
  %i.cq = add nsw i32 %i.cp, %.068139
  %i.cr = sext i32 %i.cq to i64
  %i.cs = load ptr, ptr %i.bv, align 8, !tbaa !24
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.cr
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !37 ; 5 uses
  %i.cv = sext i32 %i.cu to i64                   ; 3 uses
  %i.cw = load ptr, ptr %5, align 8, !tbaa !63
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = invoke noundef zeroext i1 %i.cy(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %i.cv)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %.lr.ph141
  br i1 %i.cz, label %bb.af, label %bb.v

bb.u:                                             ; preds = %bb.v, %.lr.ph141
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.v:                                             ; preds = %bb.t
  %i.db = load ptr, ptr %5, align 8, !tbaa !63
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = invoke noundef zeroext i1 %i.dd(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %i.cv)
          to label %bb.w unwind label %bb.u       ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.df = load ptr, ptr %1, align 8, !tbaa !63
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = invoke noundef float %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.cv)
          to label %bb.x unwind label %bb.y       ; 5 uses

bb.x:                                             ; preds = %bb.w
  %i.dj = load float, ptr %i.bz, align 4, !tbaa !57
  %i.dk = fcmp ult float %i.di, %i.dj
  br i1 %i.dk, label %bb.z, label %bb.af

bb.y:                                             ; preds = %bb.w
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.z:                                             ; preds = %bb.x
  %i.dm = bitcast float %i.di to i32
  %.sroa.0.sroa.4.0.insert.ext = zext i32 %i.dm to i64
  %.sroa.0.sroa.4.0.insert.shift = shl nuw i64 %.sroa.0.sroa.4.0.insert.ext, 32
  %.sroa.0.sroa.0.0.insert.ext = zext i32 %i.cu to i64
  %.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.sroa.4.0.insert.shift, %.sroa.0.sroa.0.0.insert.ext ; 2 uses
  %i.dn = load float, ptr %i.ca, align 4, !tbaa !57
  %i.do = fcmp ogt float %i.dn, %i.di
  br i1 %i.do, label %bb.aa, label %.preheader68.i

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cc, ptr nonnull align 4 %i.y, i64 %.idx, i1 false)
  store i64 %.sroa.0.sroa.0.0.insert.insert, ptr %i.y, align 4
  store i8 1, ptr %.sroa.12.0..sroa_idx.i, align 4, !tbaa !53
  br label %_ZN5faiss9nndescent16insert_into_poolEPNS0_8NeighborEiS1_.exit

.preheader68.i:                                   ; preds = %bb.z
  br i1 %i.cb, label %.lr.ph.i, label %._crit_edge.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %.not168 = icmp eq i32 %.063..i, 0
  br i1 %.not168, label %._crit_edge.i, label %.lr.ph74.i.preheader

.lr.ph74.i.preheader:                             ; preds = %.preheader.i
  %i.dp = zext nneg i32 %.063..i to i64
  br label %.lr.ph74.i

.lr.ph.i:                                         ; preds = %.preheader68.i, %.lr.ph.i
  %.071.i = phi i32 [ %..0.i, %.lr.ph.i ], [ %i.bw, %.preheader68.i ] ; 2 uses
  %.06370.i = phi i32 [ %.063..i, %.lr.ph.i ], [ 0, %.preheader68.i ] ; 2 uses
  %i.dq = add nuw nsw i32 %.06370.i, %.071.i
  %i.dr = lshr i32 %i.dq, 1                       ; 3 uses
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %i.dv = load float, ptr %i.du, align 4, !tbaa !57
  %i.dw = fcmp ogt float %i.dv, %i.di             ; 2 uses
  %.063..i = select i1 %i.dw, i32 %.06370.i, i32 %i.dr ; 4 uses
  %..0.i = select i1 %i.dw, i32 %i.dr, i32 %.071.i ; 5 uses
  %i.dx = add nsw i32 %..0.i, -1
  %i.dy = icmp slt i32 %.063..i, %i.dx
  br i1 %i.dy, label %.lr.ph.i, label %.preheader.i, !llvm.loop !81

.lr.ph74.i:                                       ; preds = %bb.ac, %.lr.ph74.i.preheader
  %indvars.iv151 = phi i64 [ %i.dp, %.lr.ph74.i.preheader ], [ %indvars.iv.next152, %bb.ac ] ; 4 uses
  %i.dz = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %indvars.iv151 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !57
  %i.ec = fcmp olt float %i.eb, %i.di
  br i1 %i.ec, label %._crit_edge.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph74.i
  %i.ed = load i32, ptr %i.dz, align 4, !tbaa !60
  %i.ee = icmp eq i32 %i.ed, %i.cu
  br i1 %i.ee, label %_ZN5faiss9nndescent16insert_into_poolEPNS0_8NeighborEiS1_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %indvars.iv.next152 = add nsw i64 %indvars.iv151, -1
  %i.ef = icmp sgt i64 %indvars.iv151, 1
  br i1 %i.ef, label %.lr.ph74.i, label %._crit_edge.i, !llvm.loop !82

._crit_edge.i:                                    ; preds = %bb.ac, %.lr.ph74.i, %.preheader.i, %.preheader68.i
  %.0.lcssa80.i = phi i32 [ %..0.i, %.preheader.i ], [ %i.bw, %.preheader68.i ], [ %..0.i, %.lr.ph74.i ], [ %..0.i, %bb.ac ] ; 3 uses
  %.2.lcssa.i = phi i64 [ 0, %.preheader.i ], [ 0, %.preheader68.i ], [ 0, %bb.ac ], [ %indvars.iv151, %.lr.ph74.i ]
  %i.eg = getelementptr inbounds [12 x i8], ptr %i.y, i64 %.2.lcssa.i
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !60
  %i.ei = icmp eq i32 %i.eh, %i.cu
  br i1 %i.ei, label %_ZN5faiss9nndescent16insert_into_poolEPNS0_8NeighborEiS1_.exit, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge.i
  %i.ej = zext nneg i32 %.0.lcssa80.i to i64
  %i.ek = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %i.ej ; 5 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !60
  %i.em = icmp eq i32 %i.el, %i.cu
  br i1 %i.em, label %_ZN5faiss9nndescent16insert_into_poolEPNS0_8NeighborEiS1_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.en = getelementptr i8, ptr %i.ek, i64 12
  %i.eo = sub nsw i32 %.sroa.speculated, %.0.lcssa80.i
  %i.ep = sext i32 %i.eo to i64
  %i.eq = mul nsw i64 %i.ep, 12
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.en, ptr nonnull align 4 %i.ek, i64 %i.eq, i1 false)
  store i64 %.sroa.0.sroa.0.0.insert.insert, ptr %i.ek, align 4
  %.sroa.12.0..sroa_idx60.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store i8 1, ptr %.sroa.12.0..sroa_idx60.i, align 4, !tbaa !53
  br label %_ZN5faiss9nndescent16insert_into_poolEPNS0_8NeighborEiS1_.exit

_ZN5faiss9nndescent16insert_into_poolEPNS0_8NeighborEiS1_.exit: ; preds = %bb.ab, %._crit_edge.i, %bb.ad, %bb.aa, %bb.ae
  %.065.i = phi i32 [ 0, %bb.aa ], [ %i.u, %bb.ad ], [ %i.u, %._crit_edge.i ], [ %.0.lcssa80.i, %bb.ae ], [ %i.u, %bb.ab ]
  %spec.select = call i32 @llvm.smin.i32(i32 %.065.i, i32 %.069138)
  br label %bb.af

bb.af:                                            ; preds = %_ZN5faiss9nndescent16insert_into_poolEPNS0_8NeighborEiS1_.exit, %bb.x, %bb.t
  %.372 = phi i32 [ %.069138, %bb.t ], [ %spec.select, %_ZN5faiss9nndescent16insert_into_poolEPNS0_8NeighborEiS1_.exit ], [ %.069138, %bb.x ] ; 2 uses
  %i.er = add nuw nsw i32 %.068139, 1             ; 2 uses
  %i.es = load i32, ptr %i.bu, align 8, !tbaa !91 ; 2 uses
  %i.et = icmp slt i32 %i.er, %i.es
  br i1 %i.et, label %.lr.ph141, label %.loopexit, !llvm.loop !155

.loopexit:                                        ; preds = %bb.af, %bb.s, %bb.r
  %.473 = phi i32 [ %.sroa.speculated, %bb.r ], [ %.sroa.speculated, %bb.s ], [ %.372, %bb.af ] ; 2 uses
  %.not = icmp sgt i32 %.473, %.074142
  %i.eu = add nsw i32 %.074142, 1
  %.175 = select i1 %.not, i32 %i.eu, i32 %.473   ; 2 uses
  %i.ev = icmp slt i32 %.175, %.sroa.speculated
  br i1 %i.ev, label %bb.r, label %.preheader, !llvm.loop !156

._crit_edge146.loopexit.unr-lcssa:                ; preds = %.lr.ph145
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge146, label %.lr.ph145.epil.preheader

.lr.ph145.epil.preheader:                         ; preds = %._crit_edge146.loopexit.unr-lcssa, %.lr.ph145.preheader
  %indvars.iv154.epil.init = phi i64 [ 0, %.lr.ph145.preheader ], [ %indvars.iv.next155.1, %._crit_edge146.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod196 = trunc i32 %2 to i1
  call void @llvm.assume(i1 %lcmp.mod196)
  %i.ew = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %indvars.iv154.epil.init ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !60
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv154.epil.init
  store i64 %i.ey, ptr %i.ez, align 8, !tbaa !67
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !57
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv154.epil.init
  store float %i.fb, ptr %i.fc, align 4, !tbaa !51
  br label %._crit_edge146

._crit_edge146:                                   ; preds = %.lr.ph145.epil.preheader, %._crit_edge146.loopexit.unr-lcssa, %.preheader
  %i.fd = load ptr, ptr %5, align 8, !tbaa !63
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 48
  %i.ff = load ptr, ptr %i.fe, align 8
  invoke void %i.ff(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.ag unwind label %bb.ai

.lr.ph145:                                        ; preds = %.lr.ph145, %.lr.ph145.preheader.new
  %indvars.iv154 = phi i64 [ 0, %.lr.ph145.preheader.new ], [ %indvars.iv.next155.1, %.lr.ph145 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph145.preheader.new ], [ %niter.next.1, %.lr.ph145 ]
  %i.fg = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %indvars.iv154 ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !60
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv154
  store i64 %i.fi, ptr %i.fj, align 8, !tbaa !67
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !57
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv154
  store float %i.fl, ptr %i.fm, align 4, !tbaa !51
  %indvars.iv.next155 = or disjoint i64 %indvars.iv154, 1 ; 3 uses
  %i.fn = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %indvars.iv.next155 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !60
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next155
  store i64 %i.fp, ptr %i.fq, align 8, !tbaa !67
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !57
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next155
  store float %i.fs, ptr %i.ft, align 4, !tbaa !51
  %indvars.iv.next155.1 = add nuw nsw i64 %indvars.iv154, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge146.loopexit.unr-lcssa, label %.lr.ph145, !llvm.loop !157

bb.ag:                                            ; preds = %._crit_edge146
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %.not.i.i.i = icmp eq ptr %.sroa.0108.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fu = ptrtoint ptr %.sroa.11.0 to i64
  %i.fv = ptrtoint ptr %.sroa.0108.0 to i64
  %i.fw = sub i64 %i.fu, %i.fv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0108.0, i64 noundef %i.fw) #25
  br label %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EED2Ev.exit

_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EED2Ev.exit: ; preds = %bb.ag, %bb.ah
  %.idx195 = mul nuw nsw i64 %i.v, 12
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %.idx195) #25
  ret void

bb.ai:                                            ; preds = %._crit_edge146
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.y, %bb.u, %bb.p
  %.pn86 = phi { ptr, i32 } [ %i.da, %bb.u ], [ %i.bj, %bb.p ], [ %i.dl, %bb.y ], [ %i.fx, %bb.ai ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %.not.i.i.i100 = icmp eq ptr %.sroa.0108.0, null
  br i1 %.not.i.i.i100, label %_ZNSt6vectorIiSaIiEED2Ev.exit101.thread, label %bb.ak

.sink.split:                                      ; preds = %.thread, %.thread180
  %.pn86132.ph = phi { ptr, i32 } [ %i.cn, %.thread180 ], [ %i.bt, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.ak

bb.ak:                                            ; preds = %.sink.split, %bb.aj
  %.pn86132 = phi { ptr, i32 } [ %.pn86, %bb.aj ], [ %.pn86132.ph, %.sink.split ]
  %i.fy = ptrtoint ptr %.sroa.11.0 to i64
  %i.fz = ptrtoint ptr %.sroa.0108.0 to i64
  %i.ga = sub i64 %i.fy, %i.fz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0108.0, i64 noundef %i.ga) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit101.thread

_ZNSt6vectorIiSaIiEED2Ev.exit101:                 ; preds = %bb.l
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit101.thread

_ZNSt6vectorIiSaIiEED2Ev.exit101.thread:          ; preds = %bb.ak, %bb.aj, %_ZNSt6vectorIiSaIiEED2Ev.exit101
  %.pn86.pn189 = phi { ptr, i32 } [ %i.gb, %_ZNSt6vectorIiSaIiEED2Ev.exit101 ], [ %.pn86132, %bb.ak ], [ %.pn86, %bb.aj ]
  %.idx194 = mul nuw nsw i64 %i.v, 12
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %.idx194) #25
  br label %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EED2Ev.exit103

_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EED2Ev.exit103: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit101.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn86.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn86.pn189, %_ZNSt6vectorIiSaIiEED2Ev.exit101.thread ]
  resume { ptr, i32 } %.pn86.pn.pn.pn

bb.al:                                            ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5faiss9NNDescent5resetEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) initializes((0, 1), (36, 40)) %0) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 0, ptr %0, align 8, !tbaa !83
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.a, align 4, !tbaa !99
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.e, ptr %i.c, align 8, !tbaa !25
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.a, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind }
attributes #20 = { convergent nounwind }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_1
