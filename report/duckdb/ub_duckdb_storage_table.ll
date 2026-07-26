inline.NumInlined: 22010
inline.NumDeleted: 8913
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 650
loop-unroll.NumUnrolled: 660
begin_hunk_0_@"_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_SA_T0_T1_"
define internal fastcc void @"_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_SA_T0_T1_"(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree readonly captures(none) %3) unnamed_addr #24 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph, label %"_ZSt14__partial_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_SA_SA_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph51

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIPjN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEET_SA_SA_T0_.exit"
  %i.g = icmp eq i64 %i.eb, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph51, !llvm.loop !4768

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa47 = phi i64 [ %i.c, %.lr.ph ], [ %i.fl, %bb.b ] ; 2 uses
  %.024.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ]
  %i.h = lshr i64 %.lcssa47, 2                    ; 2 uses
  %i.i = add nsw i64 %i.h, -2                     ; 2 uses
  %i.j = lshr i64 %i.i, 1                         ; 4 uses
  %i.k = add nsw i64 %i.h, -1
  %i.l = lshr i64 %i.k, 1                         ; 4 uses
  %i.m = and i64 %.lcssa47, 4
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.o = or disjoint i64 %i.i, 1                  ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.o
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %"_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_T0_SB_T1_T2_.exit.us.i.i.i"
  %.014.us.i.i.i = phi i64 [ %i.aw, %"_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_T0_SB_T1_T2_.exit.us.i.i.i" ], [ %i.j, %._crit_edge ] ; 7 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.014.us.i.i.i
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3    ; 2 uses
  %i.t = icmp slt i64 %.014.us.i.i.i, %i.l
  br i1 %i.t, label %.lr.ph.i.us.i.i.i, label %"_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_T0_SB_T1_T2_.exit.us.i.i.i"

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i
  %.val.val.i.us.i.i.i = load ptr, ptr %3, align 8, !tbaa !312 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.us.i.i.i
  %.034.i.us.i.i.i = phi i64 [ %.014.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %spec.select.i.us.i.i.i, %bb.c ] ; 2 uses
  %i.u = shl i64 %.034.i.us.i.i.i, 1              ; 3 uses
  %i.v = add i64 %i.u, 2                          ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.v
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.u
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %.val29.i.us.i.i.i = load i32, ptr %i.w, align 4, !tbaa !3
  %.val30.i.us.i.i.i = load i32, ptr %i.y, align 4, !tbaa !3
  %i.z = zext i32 %.val29.i.us.i.i.i to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.us.i.i.i, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !24
  %i.ac = zext i32 %.val30.i.us.i.i.i to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.us.i.i.i, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !24
  %i.af = icmp slt i64 %i.ab, %i.ae
  %i.ag = or disjoint i64 %i.u, 1
  %spec.select.i.us.i.i.i = select i1 %i.af, i64 %i.ag, i64 %i.v ; 4 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %spec.select.i.us.i.i.i
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.034.i.us.i.i.i
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !3
  %i.ak = icmp slt i64 %spec.select.i.us.i.i.i, %i.l
  br i1 %i.ak, label %bb.c, label %._crit_edge.i.us.i.i.i, !llvm.loop !4769

._crit_edge.i.us.i.i.i:                           ; preds = %bb.c
  %i.al = zext i32 %i.s to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.us.i.i.i, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %._crit_edge.i.us.i.i.i
  %.0134.i.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %._crit_edge.i.us.i.i.i ], [ %.059.i.i.us.i.i.i, %bb.e ] ; 3 uses
  %.05.in.i.i.us.i.i.i = add nsw i64 %.0134.i.i.us.i.i.i, -1
  %.059.i.i.us.i.i.i = lshr i64 %.05.in.i.i.us.i.i.i, 1 ; 4 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.059.i.i.us.i.i.i
  %.val14.i.i.us.i.i.i = load i32, ptr %i.ao, align 4, !tbaa !3 ; 2 uses
  %i.ap = zext i32 %.val14.i.i.us.i.i.i to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.us.i.i.i, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !24
  %i.as = icmp slt i64 %i.ar, %i.an
  br i1 %i.as, label %bb.e, label %"_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_T0_SB_T1_T2_.exit.us.i.i.i"

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0134.i.i.us.i.i.i
  store i32 %.val14.i.i.us.i.i.i, ptr %i.at, align 4, !tbaa !3
  %i.au = icmp samesign ugt i64 %.059.i.i.us.i.i.i, %.014.us.i.i.i
  br i1 %i.au, label %bb.d, label %"_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_T0_SB_T1_T2_.exit.us.i.i.i", !llvm.loop !4770

"_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_T0_SB_T1_T2_.exit.us.i.i.i": ; preds = %bb.e, %bb.d, %.split.us.i.i.i
  %.013.lcssa.i.i.us.i.i.i = phi i64 [ %.014.us.i.i.i, %.split.us.i.i.i ], [ %.059.i.i.us.i.i.i, %bb.e ], [ %.0134.i.i.us.i.i.i, %bb.d ]
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i.i.us.i.i.i
  store i32 %i.s, ptr %i.av, align 4, !tbaa !3
  %.not.us.i.i.i = icmp eq i64 %.014.us.i.i.i, 0
  %i.aw = add nsw i64 %.014.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %.lr.ph.i5.i.preheader, label %.split.us.i.i.i, !llvm.loop !4771

.split.i.i.i:                                     ; preds = %"_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_T0_SB_T1_T2_.exit.i.i.i", %.split.preheader.i.i.i
  %.014.i.i.i = phi i64 [ %i.cf, %"_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_T0_SB_T1_T2_.exit.i.i.i" ], [ %i.j, %.split.preheader.i.i.i ] ; 8 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.014.i.i.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3  ; 2 uses
  %i.az = icmp slt i64 %.014.i.i.i, %i.l
  br i1 %i.az, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i
  %.val.val.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !312 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.034.i.i.i.i = phi i64 [ %.014.i.i.i, %.lr.ph.i.i.i.i ], [ %spec.select.i.i.i.i, %bb.f ] ; 2 uses
  %i.ba = shl i64 %.034.i.i.i.i, 1                ; 3 uses
  %i.bb = add i64 %i.ba, 2                        ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bb
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ba
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %.val29.i.i.i.i = load i32, ptr %i.bc, align 4, !tbaa !3
  %.val30.i.i.i.i = load i32, ptr %i.be, align 4, !tbaa !3
  %i.bf = zext i32 %.val29.i.i.i.i to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !24
  %i.bi = zext i32 %.val30.i.i.i.i to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !24
  %i.bl = icmp slt i64 %i.bh, %i.bk
  %i.bm = or disjoint i64 %i.ba, 1
  %spec.select.i.i.i.i = select i1 %i.bl, i64 %i.bm, i64 %i.bb ; 4 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.034.i.i.i.i
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !3
  %i.bq = icmp slt i64 %spec.select.i.i.i.i, %i.l
  br i1 %i.bq, label %bb.f, label %._crit_edge.i.i.i.i, !llvm.loop !4769

._crit_edge.i.i.i.i:                              ; preds = %bb.f, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.014.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %bb.f ] ; 2 uses
  %i.br = icmp eq i64 %.0.lcssa.i.i.i.i, %i.j
  br i1 %i.br, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bs = load i32, ptr %i.p, align 4, !tbaa !3
  store i32 %i.bs, ptr %i.q, align 4, !tbaa !3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.128.i.i.i.i = phi i64 [ %i.o, %bb.g ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bt = icmp samesign ugt i64 %.128.i.i.i.i, %.014.i.i.i
  br i1 %i.bt, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_T0_SB_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h
  %.val.val.i.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !312 ; 2 uses
  %i.bu = zext i32 %i.ay to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i.i, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !24
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i.i.i.i.i
  %.0134.i.i.i.i.i = phi i64 [ %.128.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.059.i.i.i.i.i, %bb.j ] ; 3 uses
  %.05.in.i.i.i.i.i = add nsw i64 %.0134.i.i.i.i.i, -1
  %.059.i.i.i.i.i = lshr i64 %.05.in.i.i.i.i.i, 1 ; 4 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.059.i.i.i.i.i
  %.val14.i.i.i.i.i = load i32, ptr %i.bx, align 4, !tbaa !3 ; 2 uses
  %i.by = zext i32 %.val14.i.i.i.i.i to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i.i, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !24
  %i.cb = icmp slt i64 %i.ca, %i.bw
  br i1 %i.cb, label %bb.j, label %"_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_T0_SB_T1_T2_.exit.i.i.i"

bb.j:                                             ; preds = %bb.i
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0134.i.i.i.i.i
  store i32 %.val14.i.i.i.i.i, ptr %i.cc, align 4, !tbaa !3
  %i.cd = icmp samesign ugt i64 %.059.i.i.i.i.i, %.014.i.i.i
  br i1 %i.cd, label %bb.i, label %"_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_T0_SB_T1_T2_.exit.i.i.i", !llvm.loop !4770

"_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_T0_SB_T1_T2_.exit.i.i.i": ; preds = %bb.j, %bb.i, %bb.h
  %.013.lcssa.i.i.i.i.i = phi i64 [ %.128.i.i.i.i, %bb.h ], [ %.0134.i.i.i.i.i, %bb.i ], [ %.059.i.i.i.i.i, %bb.j ]
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i
  store i32 %i.ay, ptr %i.ce, align 4, !tbaa !3
  %.not.i.i.i = icmp eq i64 %.014.i.i.i, 0
  %i.cf = add nsw i64 %.014.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i5.i.preheader, label %.split.i.i.i, !llvm.loop !4771

.lr.ph.i5.i.preheader:                            ; preds = %"_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_T0_SB_T1_T2_.exit.us.i.i.i", %"_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_T0_SB_T1_T2_.exit.i.i.i"
  br label %.lr.ph.i5.i

.lr.ph.i5.i:                                      ; preds = %.lr.ph.i5.i.preheader, %"_ZSt10__pop_heapIPjN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_SA_SA_RT0_.exit.i.i"
  %.01.i.i = phi ptr [ %i.cg, %"_ZSt10__pop_heapIPjN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_SA_SA_RT0_.exit.i.i" ], [ %.024.lcssa, %.lr.ph.i5.i.preheader ]
  %i.cg = getelementptr inbounds i8, ptr %.01.i.i, i64 -4 ; 4 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !3  ; 2 uses
  %i.ci = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !3
  %i.cj = ptrtoint ptr %i.cg to i64
  %i.ck = sub i64 %i.cj, %i.a                     ; 3 uses
  %i.cl = ashr exact i64 %i.ck, 2                 ; 3 uses
  %i.cm = add nsw i64 %i.cl, -1
  %4 = sdiv i64 %i.cm, 2
  %i.cn = icmp sgt i64 %i.cl, 2
  br i1 %i.cn, label %.lr.ph.i.i.i16.i, label %._crit_edge.i.i.i6.i

.lr.ph.i.i.i16.i:                                 ; preds = %.lr.ph.i5.i
  %.val.val.i.i.i17.i = load ptr, ptr %3, align 8, !tbaa !312 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i.i.i16.i
  %.034.i.i.i18.i = phi i64 [ 0, %.lr.ph.i.i.i16.i ], [ %spec.select.i.i.i21.i, %bb.k ] ; 2 uses
  %i.co = shl i64 %.034.i.i.i18.i, 1              ; 3 uses
  %i.cp = add i64 %i.co, 2                        ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cp
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.co
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %.val29.i.i.i19.i = load i32, ptr %i.cq, align 4, !tbaa !3
  %.val30.i.i.i20.i = load i32, ptr %i.cs, align 4, !tbaa !3
  %i.ct = zext i32 %.val29.i.i.i19.i to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i17.i, i64 %i.ct
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !24
  %i.cw = zext i32 %.val30.i.i.i20.i to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i17.i, i64 %i.cw
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !24
  %i.cz = icmp slt i64 %i.cv, %i.cy
  %i.da = or disjoint i64 %i.co, 1
  %spec.select.i.i.i21.i = select i1 %i.cz, i64 %i.da, i64 %i.cp ; 4 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %spec.select.i.i.i21.i
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !3
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.034.i.i.i18.i
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !3
  %i.de = icmp slt i64 %spec.select.i.i.i21.i, %4
  br i1 %i.de, label %bb.k, label %._crit_edge.i.i.i6.i, !llvm.loop !4769

._crit_edge.i.i.i6.i:                             ; preds = %bb.k, %.lr.ph.i5.i
  %.0.lcssa.i.i.i7.i = phi i64 [ 0, %.lr.ph.i5.i ], [ %spec.select.i.i.i21.i, %bb.k ] ; 5 uses
  %i.df = and i64 %i.ck, 4
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i.i6.i
  %i.dh = add nsw i64 %i.cl, -2
  %i.di = ashr exact i64 %i.dh, 1
  %i.dj = icmp eq i64 %.0.lcssa.i.i.i7.i, %i.di
  br i1 %i.dj, label %.thread.i.i.i, label %bb.m

.thread.i.i.i:                                    ; preds = %bb.l
  %i.dk = shl nuw nsw i64 %.0.lcssa.i.i.i7.i, 1
  %i.dl = or disjoint i64 %i.dk, 1                ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !3
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i7.i
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !3
  br label %.lr.ph.i.i.i.i9.i

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i.i6.i
  %.not.i.i8.i = icmp eq i64 %.0.lcssa.i.i.i7.i, 0
  br i1 %.not.i.i8.i, label %"_ZSt10__pop_heapIPjN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_SA_SA_RT0_.exit.i.i", label %.lr.ph.i.i.i.i9.i

.lr.ph.i.i.i.i9.i:                                ; preds = %bb.m, %.thread.i.i.i
  %.128.i2.i.i.i = phi i64 [ %i.dl, %.thread.i.i.i ], [ %.0.lcssa.i.i.i7.i, %bb.m ]
  %.val.val.i.i.i.i10.i = load ptr, ptr %3, align 8, !tbaa !312 ; 2 uses
  %i.dp = zext i32 %i.ch to i64
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i10.i, i64 %i.dp
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !24
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.lr.ph.i.i.i.i9.i
  %.0134.i.i.i.i11.i = phi i64 [ %.128.i2.i.i.i, %.lr.ph.i.i.i.i9.i ], [ %.059.i.i.i.i13.i, %bb.o ] ; 3 uses
  %.05.in.i.i.i.i12.i = add nsw i64 %.0134.i.i.i.i11.i, -1
  %.059.i.i.i.i13.i = lshr i64 %.05.in.i.i.i.i12.i, 1 ; 3 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.059.i.i.i.i13.i
  %.val14.i.i.i.i14.i = load i32, ptr %i.ds, align 4, !tbaa !3 ; 2 uses
  %i.dt = zext i32 %.val14.i.i.i.i14.i to i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i10.i, i64 %i.dt
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !24
  %i.dw = icmp slt i64 %i.dv, %i.dr
  br i1 %i.dw, label %bb.o, label %"_ZSt10__pop_heapIPjN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_SA_SA_RT0_.exit.i.i"

bb.o:                                             ; preds = %bb.n
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0134.i.i.i.i11.i
  store i32 %.val14.i.i.i.i14.i, ptr %i.dx, align 4, !tbaa !3
  %.not3.i.i.i = icmp eq i64 %.059.i.i.i.i13.i, 0
  br i1 %.not3.i.i.i, label %"_ZSt10__pop_heapIPjN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_SA_SA_RT0_.exit.i.i", label %bb.n, !llvm.loop !4770

"_ZSt10__pop_heapIPjN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_SA_SA_RT0_.exit.i.i": ; preds = %bb.o, %bb.n, %bb.m
  %.013.lcssa.i.i.i.i15.i = phi i64 [ 0, %bb.m ], [ %.0134.i.i.i.i11.i, %bb.n ], [ 0, %bb.o ]
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i15.i
  store i32 %i.ch, ptr %i.dy, align 4, !tbaa !3
  %i.dz = icmp sgt i64 %i.ck, 4
  br i1 %i.dz, label %.lr.ph.i5.i, label %"_ZSt14__partial_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_SA_SA_T0_.exit", !llvm.loop !4772

.lr.ph51:                                         ; preds = %.lr.ph, %bb.b
  %.0152350 = phi i64 [ %i.eb, %bb.b ], [ %2, %.lr.ph ]
  %.02449 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.ea = phi i64 [ %i.fl, %bb.b ], [ %i.c, %.lr.ph ]
  %i.eb = add nsw i64 %.0152350, -1               ; 3 uses
  %.val = load ptr, ptr %3, align 8, !tbaa !312   ; 6 uses
  %i.ec = lshr i64 %i.ea, 3
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ec ; 3 uses
  %i.ee = getelementptr inbounds i8, ptr %.02449, i64 -4 ; 3 uses
  %.val34.i.i = load i32, ptr %i.e, align 4, !tbaa !3 ; 3 uses
  %.val35.i.i = load i32, ptr %i.ed, align 4, !tbaa !3 ; 3 uses
  %i.ef = zext i32 %.val34.i.i to i64
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.ef
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !24 ; 3 uses
  %i.ei = zext i32 %.val35.i.i to i64
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.ei
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !24 ; 3 uses
  %i.el = icmp slt i64 %i.eh, %i.ek
  %.val32.i.i = load i32, ptr %i.ee, align 4, !tbaa !3 ; 3 uses
  %i.em = zext i32 %.val32.i.i to i64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.em
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !24 ; 4 uses
  br i1 %i.el, label %bb.p, label %bb.u

bb.p:                                             ; preds = %.lr.ph51
  %i.ep = icmp slt i64 %i.ek, %i.eo
  br i1 %i.ep, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.eq = load i32, ptr %0, align 4, !tbaa !3
  store i32 %.val35.i.i, ptr %0, align 4, !tbaa !3
  store i32 %i.eq, ptr %i.ed, align 4, !tbaa !3
  br label %"_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_SA_SA_SA_T0_.exit.i.preheader"

bb.r:                                             ; preds = %bb.p
  %i.er = icmp slt i64 %i.eh, %i.eo
  %i.es = load i32, ptr %0, align 4, !tbaa !3     ; 2 uses
  br i1 %i.er, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 %.val32.i.i, ptr %0, align 4, !tbaa !3
  store i32 %i.es, ptr %i.ee, align 4, !tbaa !3
  br label %"_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_SA_SA_SA_T0_.exit.i.preheader"

bb.t:                                             ; preds = %bb.r
  store i32 %.val34.i.i, ptr %0, align 4, !tbaa !3
  store i32 %i.es, ptr %i.e, align 4, !tbaa !3
  br label %"_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_SA_SA_SA_T0_.exit.i.preheader"

bb.u:                                             ; preds = %.lr.ph51
  %i.et = icmp slt i64 %i.eh, %i.eo
  br i1 %i.et, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.eu = load i32, ptr %0, align 4, !tbaa !3
  store i32 %.val34.i.i, ptr %0, align 4, !tbaa !3
  store i32 %i.eu, ptr %i.e, align 4, !tbaa !3
  br label %"_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_SA_SA_SA_T0_.exit.i.preheader"

bb.w:                                             ; preds = %bb.u
  %i.ev = icmp slt i64 %i.ek, %i.eo
  %i.ew = load i32, ptr %0, align 4, !tbaa !3     ; 2 uses
  br i1 %i.ev, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 %.val32.i.i, ptr %0, align 4, !tbaa !3
  store i32 %i.ew, ptr %i.ee, align 4, !tbaa !3
  br label %"_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_SA_SA_SA_T0_.exit.i.preheader"

bb.y:                                             ; preds = %bb.w
  store i32 %.val35.i.i, ptr %0, align 4, !tbaa !3
  store i32 %i.ew, ptr %i.ed, align 4, !tbaa !3
  br label %"_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_SA_SA_SA_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_SA_SA_SA_T0_.exit.i.preheader": ; preds = %bb.y, %bb.x, %bb.v, %bb.t, %bb.s, %bb.q
  br label %"_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_SA_SA_SA_T0_.exit.i"

"_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_SA_SA_SA_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_SA_SA_SA_T0_.exit.i.preheader", %bb.ab
  %.013.i.i = phi ptr [ %.114.i.i, %bb.ab ], [ %.02449, %"_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_SA_SA_SA_T0_.exit.i.preheader" ]
  %.0.i.i = phi ptr [ %i.fe, %bb.ab ], [ %i.e, %"_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_SA_SA_SA_T0_.exit.i.preheader" ]
  %.val17.i.i = load i32, ptr %0, align 4, !tbaa !3
  %i.ex = zext i32 %.val17.i.i to i64
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.ex
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !24 ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %"_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_SA_SA_SA_T0_.exit.i"
  %.1.i.i = phi ptr [ %.0.i.i, %"_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_SA_SA_SA_T0_.exit.i" ], [ %i.fe, %bb.z ] ; 8 uses
  %.1.val.i.i = load i32, ptr %.1.i.i, align 4, !tbaa !3 ; 2 uses
  %i.fa = zext i32 %.1.val.i.i to i64
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.fa
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !24
  %i.fd = icmp slt i64 %i.fc, %i.ez
  %i.fe = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 4 ; 2 uses
  br i1 %i.fd, label %bb.z, label %.preheader.i.i, !llvm.loop !4773

.preheader.i.i:                                   ; preds = %bb.z, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.z ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -4 ; 5 uses
  %.114.val.i.i = load i32, ptr %.114.i.i, align 4, !tbaa !3 ; 2 uses
  %i.ff = zext i32 %.114.val.i.i to i64
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.ff
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !24
  %i.fi = icmp slt i64 %i.ez, %i.fh
  br i1 %i.fi, label %.preheader.i.i, label %bb.aa, !llvm.loop !4774

bb.aa:                                            ; preds = %.preheader.i.i
  %i.fj = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.fj, label %bb.ab, label %"_ZSt27__unguarded_partition_pivotIPjN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEET_SA_SA_T0_.exit"

end_hunk_0
