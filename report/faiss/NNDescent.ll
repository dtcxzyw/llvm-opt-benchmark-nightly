Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/NNDescent?download=true
inline.NumInlined: 1107
inline.NumDeleted: 428
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_:bb.a

_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit: ; preds = %bb.p, %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i8, %.preheader.i, %bb.i, %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit
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
  %i.q = load i32, ptr %i.p, align 4, !tbaa !50   ; 2 uses
  %i.r = icmp slt i64 %.013.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.029.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.013.us, %.split.us ] ; 2 uses
  %i.s = shl i64 %.029.i.us, 1                    ; 3 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr [4 x i8], ptr %0, i64 %i.s
  %i.w = getelementptr i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.u, align 4, !tbaa !50
  %i.y = load i32, ptr %i.w, align 4, !tbaa !50
  %i.z = icmp slt i32 %i.x, %i.y
  %i.aa = or disjoint i64 %i.s, 1
  %spec.select.i.us = select i1 %i.z, i64 %i.aa, i64 %i.t ; 6 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.us
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !50
  %i.ad = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i.us
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !50
  %i.ae = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ae, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !2

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.af = icmp sgt i64 %spec.select.i.us, %.013.us
  br i1 %i.af, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.01317.i.i.us = phi i64 [ %.018.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.018.in.i.i.us = add nsw i64 %.01317.i.i.us, -1
  %.018.i.i.us = sdiv i64 %.018.in.i.i.us, 2      ; 4 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i.us
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !50 ; 2 uses
  %i.ai = icmp slt i32 %i.ah, %i.q
  br i1 %i.ai, label %bb.c, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01317.i.i.us
  store i32 %i.ah, ptr %i.aj, align 4, !tbaa !50
  %i.ak = icmp sgt i64 %.018.i.i.us, %.013.us
  br i1 %i.ak, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us, !llvm.loop !3

_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.013.us, %.split.us ], [ %.01317.i.i.us, %.lr.ph.i.i.us ], [ %.018.i.i.us, %bb.c ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store i32 %i.q, ptr %i.al, align 4, !tbaa !50
  %.not.us = icmp eq i64 %.013.us, 0
  %i.am = add nsw i64 %.013.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !119

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit
  %.013 = phi i64 [ %i.bm, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !50 ; 2 uses
  %i.ap = icmp slt i64 %.013, %i.i
  br i1 %i.ap, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.029.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.013, %.split ] ; 2 uses
  %i.aq = shl i64 %.029.i, 1                      ; 3 uses
  %i.ar = add i64 %i.aq, 2                        ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ar
  %i.at = getelementptr [4 x i8], ptr %0, i64 %i.aq
  %i.au = getelementptr i8, ptr %i.at, i64 4
  %i.av = load i32, ptr %i.as, align 4, !tbaa !50
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !50
  %i.ax = icmp slt i32 %i.av, %i.aw
  %i.ay = or disjoint i64 %i.aq, 1
  %spec.select.i = select i1 %i.ax, i64 %i.ay, i64 %i.ar ; 4 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !50
  %i.bb = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !50
  %i.bc = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.bc, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !2

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.013, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bd = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.be = load i32, ptr %i.n, align 4, !tbaa !50
  store i32 %i.be, ptr %i.o, align 4, !tbaa !50
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
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !50 ; 2 uses
  %i.bi = icmp slt i32 %i.bh, %i.ao
  br i1 %i.bi, label %bb.f, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01317.i.i
  store i32 %i.bh, ptr %i.bj, align 4, !tbaa !50
  %i.bk = icmp sgt i64 %.018.i.i, %.013
  br i1 %i.bk, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit, !llvm.loop !3

_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.013.lcssa.i.i = phi i64 [ %.128.i, %bb.e ], [ %.018.i.i, %bb.f ], [ %.01317.i.i, %.lr.ph.i.i ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i.i
  store i32 %i.ao, ptr %i.bl, align 4, !tbaa !50
  %.not = icmp eq i64 %.013, 0
  %i.bm = add nsw i64 %.013, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !119

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
  %i.c = load float, ptr %i.b, align 4, !tbaa !65
  %i.d = fcmp ogt float %i.c, %i.a
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = sext i32 %1 to i64
  %i.g = mul nsw i64 %i.f, 12
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.e, ptr nonnull align 4 %0, i64 %i.g, i1 false)
  store i64 %2, ptr %0, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %3, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !60
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.h = add nsw i32 %1, -1                       ; 3 uses
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [12 x i8], ptr %0, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load float, ptr %i.k, align 4, !tbaa !65
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
  store i8 %3, ptr %.sroa.12.0..sroa_idx58, align 4, !tbaa !60
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
  %i.w = load float, ptr %i.v, align 4, !tbaa !65
  %i.x = fcmp ogt float %i.w, %i.a                ; 2 uses
  %.063. = select i1 %i.x, i32 %.06370, i32 %i.s  ; 5 uses
  %..0 = select i1 %i.x, i32 %i.s, i32 %.071      ; 5 uses
  %i.y = add nsw i32 %..0, -1
  %i.z = icmp slt i32 %.063., %i.y
  br i1 %i.z, label %.lr.ph, label %.preheader, !llvm.loop !4

.lr.ph74:                                         ; preds = %.lr.ph74.preheader, %bb.g
  %indvars.iv = phi i64 [ %4, %.lr.ph74.preheader ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %i.aa = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !65
  %i.ad = fcmp olt float %i.ac, %i.a
  br i1 %i.ad, label %._crit_edge.loopexit.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph74
  %i.ae = load i32, ptr %i.aa, align 4, !tbaa !66
  %i.af = icmp eq i32 %i.ae, %.sroa.0.sroa.0.0.extract.trunc
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = add nuw nsw i32 %1, 1
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ah = icmp sgt i64 %indvars.iv, 1
  br i1 %i.ah, label %.lr.ph74, label %._crit_edge, !llvm.loop !5

._crit_edge.loopexit.split.loop.exit:             ; preds = %.lr.ph74
  %5 = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.g, %._crit_edge.loopexit.split.loop.exit, %.preheader68, %.preheader
  %.0.lcssa80 = phi i32 [ %..0, %.preheader ], [ %i.h, %.preheader68 ], [ %..0, %._crit_edge.loopexit.split.loop.exit ], [ %..0, %bb.g ] ; 3 uses
  %.2.lcssa = phi i32 [ %.063., %.preheader ], [ 0, %.preheader68 ], [ %5, %._crit_edge.loopexit.split.loop.exit ], [ 0, %bb.g ]
  %i.ai = sext i32 %.2.lcssa to i64
  %i.aj = getelementptr inbounds [12 x i8], ptr %0, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !66
  %i.al = icmp eq i32 %i.ak, %.sroa.0.sroa.0.0.extract.trunc
  br i1 %i.al, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.am = sext i32 %.0.lcssa80 to i64
  %i.an = getelementptr inbounds [12 x i8], ptr %0, i64 %i.am ; 5 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !66
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
  store i8 %3, ptr %.sroa.12.0..sroa_idx60, align 4, !tbaa !60
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.f, %bb.d, %bb.b
  %.065 = phi i32 [ 0, %bb.b ], [ %1, %bb.d ], [ %i.aq, %bb.i ], [ %.0.lcssa80, %bb.j ], [ %i.ag, %bb.f ]
  ret i32 %.065
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5faiss9NNDescentC2Eii(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(88) initializes((0, 1), (4, 88)) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #17 align 2 {
bb.a:
  store i8 0, ptr %0, align 8, !tbaa !78
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store <4 x i32> <i32 10, i32 100, i32 10, i32 0>, ptr %i.a, align 4, !tbaa !50
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 2021, ptr %i.b, align 4, !tbaa !79
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %2, ptr %i.c, align 8, !tbaa !80
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %1, ptr %i.d, align 4, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.f = add nsw i32 %2, 50
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.e, i8 0, i64 52, i1 false)
  store i32 %i.f, ptr %i.g, align 8, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5faiss9NNDescentD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(88) dereferenceable(88) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !83
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !84
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5faiss9nndescent5NhoodEEEvT_S6_(ptr noundef %i.i, ptr noundef %i.k)
          to label %_ZSt8_DestroyIPN5faiss9nndescent5NhoodES2_EvT_S4_RSaIT0_E.exit.i unwind label %bb.d

_ZSt8_DestroyIPN5faiss9nndescent5NhoodES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !83   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN5faiss9nndescent5NhoodESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN5faiss9nndescent5NhoodES2_EvT_S4_RSaIT0_E.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !85
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %.05, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i:              ; preds = %bb.b, %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.05, i64 120
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !37   ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05, i64 136
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit2.i.i.i:             ; preds = %bb.c, %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05, i64 96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !37   ; 3 uses
  %.not.i.i.i3.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i3.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit4.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !39
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit4.i.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit4.i.i.i:             ; preds = %bb.d, %_ZNSt6vectorIiSaIiEED2Ev.exit2.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !37   ; 3 uses
  %.not.i.i.i5.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i5.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit6.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit4.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05, i64 88
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !39
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit6.i.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit6.i.i.i:             ; preds = %bb.e, %_ZNSt6vectorIiSaIiEED2Ev.exit4.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.05, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !40 ; 3 uses
  %.not.i.i.i7.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i7.i.i.i, label %_ZSt8_DestroyIN5faiss9nndescent5NhoodEEvPT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit6.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.05, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !41
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #25
  br label %_ZSt8_DestroyIN5faiss9nndescent5NhoodEEvPT_.exit

_ZSt8_DestroyIN5faiss9nndescent5NhoodEEvPT_.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit6.i.i.i, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %.05, i64 168 ; 2 uses
  %.not = icmp eq ptr %i.aj, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !120

._crit_edge:                                      ; preds = %_ZSt8_DestroyIN5faiss9nndescent5NhoodEEvPT_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss9nndescent5NhoodD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
end_hunk_0
begin_hunk_1_@_ZNK5faiss9NNDescent6searchERNS_16DistanceComputerEiPlPfRNS_12VisitedTableE:bb.a
  store i64 %i.at, ptr %i.ao, align 8, !tbaa !71
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
  store i64 %i.ba, ptr %i.av, align 8, !tbaa !71
  %i.bb = add nuw nsw i64 %.011.i.i, 2
  br label %bb.m

bb.o:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 4992
  store i64 624, ptr %i.bc, align 8, !tbaa !70
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !87
  invoke void @_ZN5faiss9nndescent10gen_randomERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEPiii(ptr noundef nonnull align 8 dereferenceable(5000) %7, ptr noundef %.sroa.0108.0, i32 noundef %.sroa.speculated, i32 noundef %i.be)
          to label %.preheader131 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader131:                                    ; preds = %bb.o
  br i1 %.not.i.i.i.i92, label %.preheader, label %.lr.ph

._crit_edge:                                      ; preds = %bb.p
  %.idx = mul nuw nsw i64 %i.ae, 12               ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx ; 2 uses
  %i.bg = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ae, i1 true)
  %i.bh = shl nuw nsw i64 %i.bg, 1
  %i.bi = xor i64 %i.bh, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr nonnull %i.y, ptr nonnull %i.bf, i64 noundef %i.bi)
          to label %.noexc97 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc97:                                         ; preds = %._crit_edge
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr nonnull %i.y, ptr nonnull %i.bf)
          to label %.lr.ph142.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph:                                           ; preds = %.preheader131, %bb.p
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.p ], [ 0, %.preheader131 ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0108.0, i64 %indvars.iv
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !50 ; 2 uses
  %i.bl = sext i32 %i.bk to i64
  %i.bm = load ptr, ptr %1, align 8, !tbaa !68
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = invoke noundef float %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.bl)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.thread

bb.p:                                             ; preds = %.lr.ph
  %i.bq = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %indvars.iv ; 3 uses
  store i32 %i.bk, ptr %i.bq, align 4, !tbaa !50
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  store float %i.bp, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !58
  %.sroa.5105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i8 1, ptr %.sroa.5105.0..sroa_idx, align 4, !tbaa !60
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.br = icmp samesign ult i64 %indvars.iv.next, %i.ae
  br i1 %i.br, label %.lr.ph, label %._crit_edge, !llvm.loop !153

.lr.ph142.a:                                      ; preds = %.noexc97
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bu = add nsw i32 %.sroa.speculated, -1       ; 3 uses
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.bz = icmp sgt i32 %.sroa.speculated, 2
  %i.ca = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  br label %bb.q

.preheader:                                       ; preds = %.loopexit, %.preheader131
  %i.cb = icmp sgt i32 %2, 0
  br i1 %i.cb, label %.lr.ph144.preheader, label %._crit_edge145

.lr.ph144.preheader:                              ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.cc = icmp eq i32 %2, 1
  br i1 %i.cc, label %.lr.ph144.epil.preheader, label %.lr.ph144.preheader.new

.lr.ph144.preheader.new:                          ; preds = %.lr.ph144.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph144

bb.q:                                             ; preds = %.lr.ph142.a, %.loopexit
  %.074141 = phi i32 [ 0, %.lr.ph142.a ], [ %.175, %.loopexit ] ; 3 uses
  %i.cd = sext i32 %.074141 to i64
  %i.ce = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %i.cd ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 4, !tbaa !91, !range !92, !noundef !93
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %bb.q
  store i8 0, ptr %i.cf, align 4, !tbaa !91
  %i.ci = load i32, ptr %i.ce, align 4, !tbaa !66
  %i.cj = load i32, ptr %i.bs, align 8, !tbaa !80 ; 2 uses
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %.lr.ph140, label %.loopexit

.lr.ph140:                                        ; preds = %bb.r, %bb.ac
  %i.cl = phi i32 [ %i.en, %bb.ac ], [ %i.cj, %bb.r ]
  %.068138 = phi i32 [ %i.em, %bb.ac ], [ 0, %bb.r ] ; 2 uses
  %.069137 = phi i32 [ %.372, %bb.ac ], [ %.sroa.speculated, %bb.r ] ; 3 uses
  %i.cm = mul nsw i32 %i.cl, %i.ci
  %i.cn = add nsw i32 %i.cm, %.068138
  %i.co = sext i32 %i.cn to i64
  %i.cp = load ptr, ptr %i.bt, align 8, !tbaa !37
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.co
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !50 ; 5 uses
  %i.cs = sext i32 %i.cr to i64                   ; 3 uses
  %i.ct = load ptr, ptr %5, align 8, !tbaa !68
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = invoke noundef zeroext i1 %i.cv(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %i.cs)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %.lr.ph140
  br i1 %i.cw, label %bb.ac, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cx = load ptr, ptr %5, align 8, !tbaa !68
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = invoke noundef zeroext i1 %i.cz(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %i.cs)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.db = load ptr, ptr %1, align 8, !tbaa !68
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = invoke noundef float %i.dd(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.cs)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.v:                                             ; preds = %bb.u
  %i.df = load float, ptr %i.bx, align 4, !tbaa !65
  %i.dg = fcmp ult float %i.de, %i.df
  br i1 %i.dg, label %bb.w, label %bb.ac

.loopexit.split-lp.loopexit.split-lp.thread:      ; preds = %.lr.ph
  %lpad.loopexit148 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.af

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph140, %bb.t, %bb.u, %._crit_edge, %.noexc97, %bb.o, %._crit_edge145
  %lpad.loopexit.split-lp198 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %.not.i.i.i100 = icmp eq ptr %.sroa.0108.0, null
  br i1 %.not.i.i.i100, label %_ZNSt6vectorIiSaIiEED2Ev.exit101.thread, label %bb.af

bb.w:                                             ; preds = %bb.v
  %i.dh = bitcast float %i.de to i32
  %.sroa.0.sroa.4.0.insert.ext = zext i32 %i.dh to i64
  %.sroa.0.sroa.4.0.insert.shift = shl nuw i64 %.sroa.0.sroa.4.0.insert.ext, 32
  %.sroa.0.sroa.0.0.insert.ext = zext i32 %i.cr to i64
  %.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.sroa.4.0.insert.shift, %.sroa.0.sroa.0.0.insert.ext ; 2 uses
  %i.di = load float, ptr %i.by, align 4, !tbaa !65
  %i.dj = fcmp ogt float %i.di, %i.de
  br i1 %i.dj, label %bb.x, label %.preheader68.i

bb.x:                                             ; preds = %bb.w
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ca, ptr nonnull align 4 %i.y, i64 %.idx, i1 false)
  store i64 %.sroa.0.sroa.0.0.insert.insert, ptr %i.y, align 4
  store i8 1, ptr %.sroa.12.0..sroa_idx.i, align 4, !tbaa !60
  br label %_ZN5faiss9nndescent16insert_into_poolEPNS0_8NeighborEiS1_.exit

.preheader68.i:                                   ; preds = %bb.w
  br i1 %i.bz, label %.lr.ph.i, label %._crit_edge.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %.not170 = icmp eq i32 %.063..i, 0
  br i1 %.not170, label %._crit_edge.i, label %.lr.ph74.i.preheader

.lr.ph74.i.preheader:                             ; preds = %.preheader.i
  %i.dk = zext nneg i32 %.063..i to i64
  br label %.lr.ph74.i

.lr.ph.i:                                         ; preds = %.preheader68.i, %.lr.ph.i
  %.071.i = phi i32 [ %..0.i, %.lr.ph.i ], [ %i.bu, %.preheader68.i ] ; 2 uses
  %.06370.i = phi i32 [ %.063..i, %.lr.ph.i ], [ 0, %.preheader68.i ] ; 2 uses
  %i.dl = add nuw nsw i32 %.06370.i, %.071.i
  %i.dm = lshr i32 %i.dl, 1                       ; 3 uses
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !65
  %i.dr = fcmp ogt float %i.dq, %i.de             ; 2 uses
  %.063..i = select i1 %i.dr, i32 %.06370.i, i32 %i.dm ; 4 uses
  %..0.i = select i1 %i.dr, i32 %i.dm, i32 %.071.i ; 5 uses
  %i.ds = add nsw i32 %..0.i, -1
  %i.dt = icmp slt i32 %.063..i, %i.ds
  br i1 %i.dt, label %.lr.ph.i, label %.preheader.i, !llvm.loop !4

.lr.ph74.i:                                       ; preds = %bb.z, %.lr.ph74.i.preheader
  %indvars.iv153 = phi i64 [ %i.dk, %.lr.ph74.i.preheader ], [ %indvars.iv.next154, %bb.z ] ; 4 uses
  %i.du = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %indvars.iv153 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !65
  %i.dx = fcmp olt float %i.dw, %i.de
  br i1 %i.dx, label %._crit_edge.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph74.i
  %i.dy = load i32, ptr %i.du, align 4, !tbaa !66
  %i.dz = icmp eq i32 %i.dy, %i.cr
  br i1 %i.dz, label %_ZN5faiss9nndescent16insert_into_poolEPNS0_8NeighborEiS1_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %indvars.iv.next154 = add nsw i64 %indvars.iv153, -1
  %i.ea = icmp sgt i64 %indvars.iv153, 1
  br i1 %i.ea, label %.lr.ph74.i, label %._crit_edge.i, !llvm.loop !5

._crit_edge.i:                                    ; preds = %bb.z, %.lr.ph74.i, %.preheader.i, %.preheader68.i
  %.0.lcssa80.i = phi i32 [ %..0.i, %.preheader.i ], [ %i.bu, %.preheader68.i ], [ %..0.i, %.lr.ph74.i ], [ %..0.i, %bb.z ] ; 3 uses
  %.2.lcssa.i = phi i64 [ 0, %.preheader.i ], [ 0, %.preheader68.i ], [ 0, %bb.z ], [ %indvars.iv153, %.lr.ph74.i ]
  %i.eb = getelementptr inbounds [12 x i8], ptr %i.y, i64 %.2.lcssa.i
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !66
  %i.ed = icmp eq i32 %i.ec, %i.cr
  br i1 %i.ed, label %_ZN5faiss9nndescent16insert_into_poolEPNS0_8NeighborEiS1_.exit, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge.i
  %i.ee = zext nneg i32 %.0.lcssa80.i to i64
  %i.ef = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %i.ee ; 5 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !66
  %i.eh = icmp eq i32 %i.eg, %i.cr
  br i1 %i.eh, label %_ZN5faiss9nndescent16insert_into_poolEPNS0_8NeighborEiS1_.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ei = getelementptr i8, ptr %i.ef, i64 12
  %i.ej = sub nsw i32 %.sroa.speculated, %.0.lcssa80.i
  %i.ek = sext i32 %i.ej to i64
  %i.el = mul nsw i64 %i.ek, 12
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ei, ptr nonnull align 4 %i.ef, i64 %i.el, i1 false)
  store i64 %.sroa.0.sroa.0.0.insert.insert, ptr %i.ef, align 4
  %.sroa.12.0..sroa_idx60.i = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store i8 1, ptr %.sroa.12.0..sroa_idx60.i, align 4, !tbaa !60
  br label %_ZN5faiss9nndescent16insert_into_poolEPNS0_8NeighborEiS1_.exit

_ZN5faiss9nndescent16insert_into_poolEPNS0_8NeighborEiS1_.exit: ; preds = %bb.y, %._crit_edge.i, %bb.aa, %bb.x, %bb.ab
  %.065.i = phi i32 [ 0, %bb.x ], [ %i.u, %bb.aa ], [ %i.u, %._crit_edge.i ], [ %.0.lcssa80.i, %bb.ab ], [ %i.u, %bb.y ]
  %spec.select = call i32 @llvm.smin.i32(i32 %.065.i, i32 %.069137)
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN5faiss9nndescent16insert_into_poolEPNS0_8NeighborEiS1_.exit, %bb.v, %bb.s
  %.372 = phi i32 [ %.069137, %bb.s ], [ %spec.select, %_ZN5faiss9nndescent16insert_into_poolEPNS0_8NeighborEiS1_.exit ], [ %.069137, %bb.v ] ; 2 uses
  %i.em = add nuw nsw i32 %.068138, 1             ; 2 uses
  %i.en = load i32, ptr %i.bs, align 8, !tbaa !80 ; 2 uses
  %i.eo = icmp slt i32 %i.em, %i.en
  br i1 %i.eo, label %.lr.ph140, label %.loopexit, !llvm.loop !154

.loopexit:                                        ; preds = %bb.ac, %bb.r, %bb.q
  %.473 = phi i32 [ %.sroa.speculated, %bb.q ], [ %.sroa.speculated, %bb.r ], [ %.372, %bb.ac ] ; 2 uses
  %.not = icmp sgt i32 %.473, %.074141
  %i.ep = add nsw i32 %.074141, 1
  %.175 = select i1 %.not, i32 %i.ep, i32 %.473   ; 2 uses
  %i.eq = icmp slt i32 %.175, %.sroa.speculated
  br i1 %i.eq, label %bb.q, label %.preheader, !llvm.loop !155

._crit_edge145.loopexit.unr-lcssa:                ; preds = %.lr.ph144
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge145, label %.lr.ph144.epil.preheader

.lr.ph144.epil.preheader:                         ; preds = %._crit_edge145.loopexit.unr-lcssa, %.lr.ph144.preheader
  %indvars.iv156.epil.init = phi i64 [ 0, %.lr.ph144.preheader ], [ %indvars.iv.next157.1, %._crit_edge145.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod199 = trunc i32 %2 to i1
  call void @llvm.assume(i1 %lcmp.mod199)
  %i.er = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %indvars.iv156.epil.init ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !66
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv156.epil.init
  store i64 %i.et, ptr %i.eu, align 8, !tbaa !71
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !65
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv156.epil.init
  store float %i.ew, ptr %i.ex, align 4, !tbaa !58
  br label %._crit_edge145

._crit_edge145:                                   ; preds = %.lr.ph144.epil.preheader, %._crit_edge145.loopexit.unr-lcssa, %.preheader
  %i.ey = load ptr, ptr %5, align 8, !tbaa !68
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 48
  %i.fa = load ptr, ptr %i.ez, align 8
  invoke void %i.fa(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph144:                                        ; preds = %.lr.ph144, %.lr.ph144.preheader.new
  %indvars.iv156 = phi i64 [ 0, %.lr.ph144.preheader.new ], [ %indvars.iv.next157.1, %.lr.ph144 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph144.preheader.new ], [ %niter.next.1, %.lr.ph144 ]
  %i.fb = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %indvars.iv156 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !66
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv156
  store i64 %i.fd, ptr %i.fe, align 8, !tbaa !71
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !65
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv156
  store float %i.fg, ptr %i.fh, align 4, !tbaa !58
  %indvars.iv.next157 = or disjoint i64 %indvars.iv156, 1 ; 3 uses
  %i.fi = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %indvars.iv.next157 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !66
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next157
  store i64 %i.fk, ptr %i.fl, align 8, !tbaa !71
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !65
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next157
  store float %i.fn, ptr %i.fo, align 4, !tbaa !58
  %indvars.iv.next157.1 = add nuw nsw i64 %indvars.iv156, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge145.loopexit.unr-lcssa, label %.lr.ph144, !llvm.loop !156

bb.ad:                                            ; preds = %._crit_edge145
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %.not.i.i.i = icmp eq ptr %.sroa.0108.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fp = ptrtoint ptr %.sroa.11.0 to i64
  %i.fq = ptrtoint ptr %.sroa.0108.0 to i64
  %i.fr = sub i64 %i.fp, %i.fq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0108.0, i64 noundef %i.fr) #25
  br label %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EED2Ev.exit

_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EED2Ev.exit: ; preds = %bb.ad, %bb.ae
  %.idx197 = mul nuw nsw i64 %i.v, 12
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %.idx197) #25
  ret void

bb.af:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.thread, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %lpad.phi184 = phi { ptr, i32 } [ %lpad.loopexit148, %.loopexit.split-lp.loopexit.split-lp.thread ], [ %lpad.loopexit.split-lp198, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.fs = ptrtoint ptr %.sroa.11.0 to i64
  %i.ft = ptrtoint ptr %.sroa.0108.0 to i64
  %i.fu = sub i64 %i.fs, %i.ft
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0108.0, i64 noundef %i.fu) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit101.thread

_ZNSt6vectorIiSaIiEED2Ev.exit101:                 ; preds = %bb.l
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit101.thread

_ZNSt6vectorIiSaIiEED2Ev.exit101.thread:          ; preds = %bb.af, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt6vectorIiSaIiEED2Ev.exit101
  %.pn86.pn191 = phi { ptr, i32 } [ %i.fv, %_ZNSt6vectorIiSaIiEED2Ev.exit101 ], [ %lpad.phi184, %bb.af ], [ %lpad.loopexit.split-lp198, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.idx196 = mul nuw nsw i64 %i.v, 12
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %.idx196) #25
  br label %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EED2Ev.exit103

_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EED2Ev.exit103: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit101.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn86.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn86.pn191, %_ZNSt6vectorIiSaIiEED2Ev.exit101.thread ]
  resume { ptr, i32 } %.pn86.pn.pn.pn

bb.ag:                                            ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5faiss9NNDescent5resetEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) initializes((0, 1), (36, 40)) %0) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 0, ptr %0, align 8, !tbaa !78
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.a, align 4, !tbaa !87
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.e, ptr %i.c, align 8, !tbaa !38
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
end_hunk_1
