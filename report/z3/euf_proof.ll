Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/euf_proof?download=true
inline.NumInlined: 989
inline.NumDeleted: 448
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@"_ZSt16__introsort_loopIPSt5tupleIJP3appS2_mbEElN9__gnu_cxx5__ops15_Iter_comp_iterIZNK3euf13eq_proof_hint8get_hintERNS8_6solverEE3$_0EEEvT_SE_T0_T1_":bb.a

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIPSt5tupleIJP3appS2_mbEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK3euf13eq_proof_hint8get_hintERNS8_6solverEE3$_0EEET_SE_SE_T0_.exit"
  %i.m = icmp eq i64 %i.ar, 0
  br i1 %i.m, label %._crit_edge, label %.lr.ph52, !llvm.loop !661

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa48 = phi i64 [ %i.c, %.lr.ph ], [ %i.cy, %bb.b ]
  %.029.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.n = lshr exact i64 %.lcssa48, 5              ; 2 uses
  %i.o = add nsw i64 %i.n, -2
  %i.p = lshr i64 %i.o, 1
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.013.i.i.i = phi i64 [ %i.p, %._crit_edge ], [ %i.y, %bb.c ] ; 4 uses
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.013.i.i.i ; 3 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !454
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !457
  store i8 %i.t, ptr %4, align 8, !tbaa !454
  %i.x = load <2 x i64>, ptr %i.u, align 8, !tbaa !399
  store <2 x i64> %i.x, ptr %i.q, align 8, !tbaa !399
  store i64 %i.w, ptr %i.r, align 8, !tbaa !457
  call fastcc void @"_ZSt13__adjust_heapIPSt5tupleIJP3appS2_mbEElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNK3euf13eq_proof_hint8get_hintERNS8_6solverEE3$_0EEEvT_T0_SF_T1_T2_"(ptr noundef %0, i64 noundef %.013.i.i.i, i64 noundef %i.n, ptr noundef align 8 dead_on_return %4)
  %.not.i.i.i = icmp eq i64 %.013.i.i.i, 0
  %i.y = add nsw i64 %.013.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIPSt5tupleIJP3appS2_mbEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK3euf13eq_proof_hint8get_hintERNS8_6solverEE3$_0EEEvT_SE_RT0_.exit.i.i.thread", label %bb.c, !llvm.loop !662

"_ZSt11__make_heapIPSt5tupleIJP3appS2_mbEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK3euf13eq_proof_hint8get_hintERNS8_6solverEE3$_0EEEvT_SE_RT0_.exit.i.i.thread": ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %"_ZSt11__make_heapIPSt5tupleIJP3appS2_mbEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK3euf13eq_proof_hint8get_hintERNS8_6solverEE3$_0EEEvT_SE_RT0_.exit.i.i.thread"
  %.01.i.i = phi ptr [ %.029.lcssa, %"_ZSt11__make_heapIPSt5tupleIJP3appS2_mbEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK3euf13eq_proof_hint8get_hintERNS8_6solverEE3$_0EEEvT_SE_RT0_.exit.i.i.thread" ], [ %i.ab, %bb.d ] ; 4 uses
  %i.ab = getelementptr inbounds i8, ptr %.01.i.i, i64 -32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !454
  %i.ad = getelementptr inbounds i8, ptr %.01.i.i, i64 -24 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %.01.i.i, i64 -16
  %i.af = getelementptr inbounds i8, ptr %.01.i.i, i64 -8 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !457
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !457
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !457
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !457
  %i.aj = load i64, ptr %i.i, align 8, !tbaa !455
  %i.ak = load i8, ptr %0, align 8, !tbaa !454, !range !391, !noundef !392
  store i8 %i.ak, ptr %i.ab, align 8, !tbaa !454
  %i.al = ptrtoint ptr %i.ab to i64
  %i.am = sub i64 %i.al, %i.a                     ; 2 uses
  %i.an = ashr exact i64 %i.am, 5
  store i8 %i.ac, ptr %3, align 8, !tbaa !454
  %i.ao = load <2 x i64>, ptr %i.ad, align 8, !tbaa !399
  store ptr %i.ai, ptr %i.ae, align 8, !tbaa !457
  store i64 %i.aj, ptr %i.ad, align 8, !tbaa !455
  store <2 x i64> %i.ao, ptr %i.z, align 8, !tbaa !399
  store i64 %i.ag, ptr %i.aa, align 8, !tbaa !457
  call fastcc void @"_ZSt13__adjust_heapIPSt5tupleIJP3appS2_mbEElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNK3euf13eq_proof_hint8get_hintERNS8_6solverEE3$_0EEEvT_T0_SF_T1_T2_"(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %i.an, ptr noundef align 8 dead_on_return %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ap = icmp sgt i64 %i.am, 32
  br i1 %i.ap, label %bb.d, label %"_ZSt14__partial_sortIPSt5tupleIJP3appS2_mbEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK3euf13eq_proof_hint8get_hintERNS8_6solverEE3$_0EEEvT_SE_SE_T0_.exit", !llvm.loop !663

.lr.ph52:                                         ; preds = %.lr.ph, %bb.b
  %.0172851 = phi i64 [ %i.ar, %bb.b ], [ %2, %.lr.ph ]
  %.02950 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 8 uses
  %i.aq = phi i64 [ %i.cy, %bb.b ], [ %i.c, %.lr.ph ]
  %i.ar = add nsw i64 %.0172851, -1               ; 3 uses
  %i.as = lshr i64 %i.aq, 6
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.as ; 7 uses
  %i.au = getelementptr inbounds i8, ptr %.02950, i64 -32 ; 2 uses
  %.val29.i.i = load i64, ptr %i.f, align 8, !tbaa !455 ; 5 uses
  %i.av = getelementptr i8, ptr %i.at, i64 8      ; 3 uses
  %.val30.i.i = load i64, ptr %i.av, align 8, !tbaa !455 ; 5 uses
  %i.aw = icmp ult i64 %.val29.i.i, %.val30.i.i
  %i.ax = getelementptr i8, ptr %.02950, i64 -24  ; 3 uses
  %.val28.i.i = load i64, ptr %i.ax, align 8, !tbaa !455 ; 6 uses
  br i1 %i.aw, label %bb.e, label %bb.j

bb.e:                                             ; preds = %.lr.ph52
  %i.ay = icmp ult i64 %.val30.i.i, %.val28.i.i
  %i.az = load ptr, ptr %i.g, align 8, !tbaa !457 ; 3 uses
  br i1 %i.ay, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %i.bc = load ptr, ptr %i.h, align 8, !tbaa !457
  %i.bd = load <2 x ptr>, ptr %i.bb, align 8, !tbaa !457
  store <2 x ptr> %i.bd, ptr %i.h, align 8, !tbaa !457
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !457
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !457
  %i.be = load i64, ptr %i.i, align 8, !tbaa !455
  store i64 %.val30.i.i, ptr %i.i, align 8, !tbaa !455
  store i64 %i.be, ptr %i.av, align 8, !tbaa !455
  br label %"_ZSt22__move_median_to_firstIPSt5tupleIJP3appS2_mbEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK3euf13eq_proof_hint8get_hintERNS8_6solverEE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.g:                                             ; preds = %bb.e
  %i.bf = icmp ult i64 %.val29.i.i, %.val28.i.i
  br i1 %i.bf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bg = getelementptr inbounds i8, ptr %.02950, i64 -8 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !457
  store ptr %i.bh, ptr %i.g, align 8, !tbaa !457
  store ptr %i.az, ptr %i.bg, align 8, !tbaa !457
  %i.bi = getelementptr inbounds i8, ptr %.02950, i64 -16 ; 2 uses
  %i.bj = load ptr, ptr %i.h, align 8, !tbaa !457
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !457
  store ptr %i.bk, ptr %i.h, align 8, !tbaa !457
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !457
  %i.bl = load i64, ptr %i.i, align 8, !tbaa !455
  store i64 %.val28.i.i, ptr %i.i, align 8, !tbaa !455
  store i64 %i.bl, ptr %i.ax, align 8, !tbaa !455
  br label %"_ZSt22__move_median_to_firstIPSt5tupleIJP3appS2_mbEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK3euf13eq_proof_hint8get_hintERNS8_6solverEE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.i:                                             ; preds = %bb.g
  %i.bm = load ptr, ptr %i.h, align 8, !tbaa !457
  %i.bn = load <2 x ptr>, ptr %i.k, align 8, !tbaa !457
  store ptr %i.az, ptr %i.j, align 8, !tbaa !457
  store <2 x ptr> %i.bn, ptr %i.h, align 8, !tbaa !457
  store ptr %i.bm, ptr %i.k, align 8, !tbaa !457
  %i.bo = load i64, ptr %i.i, align 8, !tbaa !455
  store i64 %.val29.i.i, ptr %i.i, align 8, !tbaa !455
  store i64 %i.bo, ptr %i.f, align 8, !tbaa !455
  br label %"_ZSt22__move_median_to_firstIPSt5tupleIJP3appS2_mbEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK3euf13eq_proof_hint8get_hintERNS8_6solverEE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.j:                                             ; preds = %.lr.ph52
  %i.bp = icmp ult i64 %.val29.i.i, %.val28.i.i
  br i1 %i.bp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bq = load <2 x ptr>, ptr %i.k, align 8, !tbaa !457
  %i.br = load <2 x ptr>, ptr %i.h, align 8, !tbaa !457
  store <2 x ptr> %i.bq, ptr %i.h, align 8, !tbaa !457
  store <2 x ptr> %i.br, ptr %i.k, align 8, !tbaa !457
  %i.bs = load i64, ptr %i.i, align 8, !tbaa !455
  store i64 %.val29.i.i, ptr %i.i, align 8, !tbaa !455
  store i64 %i.bs, ptr %i.f, align 8, !tbaa !455
  br label %"_ZSt22__move_median_to_firstIPSt5tupleIJP3appS2_mbEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK3euf13eq_proof_hint8get_hintERNS8_6solverEE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.bt = icmp ult i64 %.val30.i.i, %.val28.i.i
  %i.bu = load ptr, ptr %i.g, align 8, !tbaa !457 ; 2 uses
  br i1 %i.bt, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds i8, ptr %.02950, i64 -8 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !457
  store ptr %i.bw, ptr %i.g, align 8, !tbaa !457
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !457
  %i.bx = getelementptr inbounds i8, ptr %.02950, i64 -16 ; 2 uses
  %i.by = load ptr, ptr %i.h, align 8, !tbaa !457
  %i.bz = load ptr, ptr %i.bx, align 8, !tbaa !457
  store ptr %i.bz, ptr %i.h, align 8, !tbaa !457
  store ptr %i.by, ptr %i.bx, align 8, !tbaa !457
  %i.ca = load i64, ptr %i.i, align 8, !tbaa !455
  store i64 %.val28.i.i, ptr %i.i, align 8, !tbaa !455
  store i64 %i.ca, ptr %i.ax, align 8, !tbaa !455
  br label %"_ZSt22__move_median_to_firstIPSt5tupleIJP3appS2_mbEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK3euf13eq_proof_hint8get_hintERNS8_6solverEE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  %i.cb = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %i.cd = load ptr, ptr %i.h, align 8, !tbaa !457
  %i.ce = load <2 x ptr>, ptr %i.cc, align 8, !tbaa !457
  store <2 x ptr> %i.ce, ptr %i.h, align 8, !tbaa !457
  store ptr %i.bu, ptr %i.cb, align 8, !tbaa !457
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !457
  %i.cf = load i64, ptr %i.i, align 8, !tbaa !455
  store i64 %.val30.i.i, ptr %i.i, align 8, !tbaa !455
  store i64 %i.cf, ptr %i.av, align 8, !tbaa !455
  br label %"_ZSt22__move_median_to_firstIPSt5tupleIJP3appS2_mbEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK3euf13eq_proof_hint8get_hintERNS8_6solverEE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIPSt5tupleIJP3appS2_mbEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK3euf13eq_proof_hint8get_hintERNS8_6solverEE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader": ; preds = %bb.n, %bb.m, %bb.k, %bb.i, %bb.h, %bb.f
  %.114.i.i.lcssa.sink44.ph = phi ptr [ %i.at, %bb.f ], [ %i.au, %bb.h ], [ %i.e, %bb.i ], [ %i.e, %bb.k ], [ %i.au, %bb.m ], [ %i.at, %bb.n ]
  br label %"_ZSt22__move_median_to_firstIPSt5tupleIJP3appS2_mbEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK3euf13eq_proof_hint8get_hintERNS8_6solverEE3$_0EEEvT_SE_SE_SE_T0_.exit.i"

"_ZSt22__move_median_to_firstIPSt5tupleIJP3appS2_mbEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK3euf13eq_proof_hint8get_hintERNS8_6solverEE3$_0EEEvT_SE_SE_SE_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIPSt5tupleIJP3appS2_mbEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK3euf13eq_proof_hint8get_hintERNS8_6solverEE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader", %bb.q
  %.1.i.i.lcssa.sink45 = phi ptr [ %.1.i.i, %bb.q ], [ %0, %"_ZSt22__move_median_to_firstIPSt5tupleIJP3appS2_mbEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK3euf13eq_proof_hint8get_hintERNS8_6solverEE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader" ] ; 2 uses
  %.114.i.i.lcssa.sink44 = phi ptr [ %.114.i.i, %bb.q ], [ %.114.i.i.lcssa.sink44.ph, %"_ZSt22__move_median_to_firstIPSt5tupleIJP3appS2_mbEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK3euf13eq_proof_hint8get_hintERNS8_6solverEE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader" ] ; 2 uses
  %.013.i.i = phi ptr [ %.114.i.i, %bb.q ], [ %.02950, %"_ZSt22__move_median_to_firstIPSt5tupleIJP3appS2_mbEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK3euf13eq_proof_hint8get_hintERNS8_6solverEE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader" ]
  %.0.i.i = phi ptr [ %i.ck, %bb.q ], [ %i.e, %"_ZSt22__move_median_to_firstIPSt5tupleIJP3appS2_mbEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK3euf13eq_proof_hint8get_hintERNS8_6solverEE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader" ]
  %i.cg = load i8, ptr %.1.i.i.lcssa.sink45, align 1, !tbaa !454, !range !391, !noundef !392
  %i.ch = load i8, ptr %.114.i.i.lcssa.sink44, align 1, !tbaa !454, !range !391, !noundef !392
  store i8 %i.ch, ptr %.1.i.i.lcssa.sink45, align 1, !tbaa !454
  store i8 %i.cg, ptr %.114.i.i.lcssa.sink44, align 1, !tbaa !454
  %.val15.i.i = load i64, ptr %i.i, align 8, !tbaa !455 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %"_ZSt22__move_median_to_firstIPSt5tupleIJP3appS2_mbEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK3euf13eq_proof_hint8get_hintERNS8_6solverEE3$_0EEEvT_SE_SE_SE_T0_.exit.i"
  %.1.i.i = phi ptr [ %.0.i.i, %"_ZSt22__move_median_to_firstIPSt5tupleIJP3appS2_mbEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK3euf13eq_proof_hint8get_hintERNS8_6solverEE3$_0EEEvT_SE_SE_SE_T0_.exit.i" ], [ %i.ck, %bb.o ] ; 11 uses
  %i.ci = getelementptr i8, ptr %.1.i.i, i64 8
  %.1.val.i.i = load i64, ptr %i.ci, align 8, !tbaa !455 ; 2 uses
  %i.cj = icmp ult i64 %.1.val.i.i, %.val15.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 32 ; 2 uses
  br i1 %i.cj, label %bb.o, label %.preheader.i.i.preheader, !llvm.loop !664

.preheader.i.i.preheader:                         ; preds = %bb.o
  %5 = getelementptr i8, ptr %.1.i.i, i64 8
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %.preheader.i.i.preheader ] ; 5 uses
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -32 ; 4 uses
  %i.cl = getelementptr i8, ptr %.013.pn.i.i, i64 -24
  %.114.val.i.i = load i64, ptr %i.cl, align 8, !tbaa !455 ; 2 uses
  %i.cm = icmp ult i64 %.val15.i.i, %.114.val.i.i
  br i1 %i.cm, label %.preheader.i.i, label %bb.p, !llvm.loop !665

bb.p:                                             ; preds = %.preheader.i.i
  %i.cn = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.cn, label %bb.q, label %"_ZSt27__unguarded_partition_pivotIPSt5tupleIJP3appS2_mbEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK3euf13eq_proof_hint8get_hintERNS8_6solverEE3$_0EEET_SE_SE_T0_.exit"

bb.q:                                             ; preds = %bb.p
  %i.co = getelementptr i8, ptr %.013.pn.i.i, i64 -24
  %i.cp = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 24 ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 2 uses
  %i.cr = load ptr, ptr %i.cp, align 8, !tbaa !457
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !457
  store ptr %i.cs, ptr %i.cp, align 8, !tbaa !457
  store ptr %i.cr, ptr %i.cq, align 8, !tbaa !457
  %i.ct = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16 ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -16 ; 2 uses
  %i.cv = load ptr, ptr %i.ct, align 8, !tbaa !457
  %i.cw = load ptr, ptr %i.cu, align 8, !tbaa !457
  store ptr %i.cw, ptr %i.ct, align 8, !tbaa !457
  store ptr %i.cv, ptr %i.cu, align 8, !tbaa !457
  store i64 %.114.val.i.i, ptr %5, align 8, !tbaa !455
  store i64 %.1.val.i.i, ptr %i.co, align 8, !tbaa !455
  br label %"_ZSt22__move_median_to_firstIPSt5tupleIJP3appS2_mbEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK3euf13eq_proof_hint8get_hintERNS8_6solverEE3$_0EEEvT_SE_SE_SE_T0_.exit.i", !llvm.loop !666

"_ZSt27__unguarded_partition_pivotIPSt5tupleIJP3appS2_mbEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK3euf13eq_proof_hint8get_hintERNS8_6solverEE3$_0EEET_SE_SE_T0_.exit": ; preds = %bb.p
  tail call fastcc void @"_ZSt16__introsort_loopIPSt5tupleIJP3appS2_mbEElN9__gnu_cxx5__ops15_Iter_comp_iterIZNK3euf13eq_proof_hint8get_hintERNS8_6solverEE3$_0EEEvT_SE_T0_T1_"(ptr noundef nonnull %.1.i.i, ptr noundef %.02950, i64 noundef %i.ar)
  %i.cx = ptrtoint ptr %.1.i.i to i64
  %i.cy = sub i64 %i.cx, %i.a                     ; 3 uses
  %i.cz = icmp sgt i64 %i.cy, 512
  br i1 %i.cz, label %bb.b, label %"_ZSt14__partial_sortIPSt5tupleIJP3appS2_mbEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK3euf13eq_proof_hint8get_hintERNS8_6solverEE3$_0EEEvT_SE_SE_T0_.exit", !llvm.loop !661

"_ZSt14__partial_sortIPSt5tupleIJP3appS2_mbEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK3euf13eq_proof_hint8get_hintERNS8_6solverEE3$_0EEEvT_SE_SE_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIPSt5tupleIJP3appS2_mbEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK3euf13eq_proof_hint8get_hintERNS8_6solverEE3$_0EEET_SE_SE_T0_.exit", %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @"_ZSt13__adjust_heapIPSt5tupleIJP3appS2_mbEElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNK3euf13eq_proof_hint8get_hintERNS8_6solverEE3$_0EEEvT_T0_SF_T1_T2_"(ptr nofree noundef captures(none) %0, i64 noundef range(i64 0, 144115188075855871) %1, i64 noundef range(i64 -288230376151711744, 288230376151711744) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return %3) unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.031 = phi i64 [ %spec.select, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.031, 1                         ; 3 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.e
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.d
  %i.h = getelementptr i8, ptr %i.f, i64 8
  %.val = load i64, ptr %i.h, align 8, !tbaa !455
  %i.i = getelementptr i8, ptr %i.g, i64 40
  %.val28 = load i64, ptr %i.i, align 8, !tbaa !455
  %i.j = icmp ult i64 %.val, %.val28
  %i.k = or disjoint i64 %i.d, 1
  %spec.select = select i1 %i.j, i64 %i.k, i64 %i.e ; 4 uses
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %spec.select ; 3 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.031 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.p = load <2 x ptr>, ptr %i.n, align 8, !tbaa !457
  store <2 x ptr> %i.p, ptr %i.o, align 8, !tbaa !457
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !455
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !455
  %i.t = load i8, ptr %i.l, align 8, !tbaa !454, !range !391, !noundef !392
  store i8 %i.t, ptr %i.m, align 8, !tbaa !454
  %i.u = icmp slt i64 %spec.select, %i.b
  br i1 %i.u, label %.lr.ph, label %._crit_edge, !llvm.loop !667

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %.lr.ph ] ; 5 uses
  %i.v = and i64 %2, 1
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.x = add nsw i64 %2, -2
  %i.y = ashr exact i64 %i.x, 1
  %i.z = icmp eq i64 %.0.lcssa, %i.y
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = shl nuw nsw i64 %.0.lcssa, 1
  %i.ab = or disjoint i64 %i.aa, 1                ; 2 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.ab ; 3 uses
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0.lcssa ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ag = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !457
  store <2 x ptr> %i.ag, ptr %i.af, align 8, !tbaa !457
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !455
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !455
  %i.ak = load i8, ptr %i.ac, align 8, !tbaa !454, !range !391, !noundef !392
  store i8 %i.ak, ptr %i.ad, align 8, !tbaa !454
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge
  %.127 = phi i64 [ %i.ab, %bb.c ], [ %.0.lcssa, %bb.b ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.al = load i8, ptr %3, align 8, !tbaa !454
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !455 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ap = load <2 x i64>, ptr %i.ao, align 8, !tbaa !457
  %i.aq = icmp samesign ugt i64 %.127, %1
  br i1 %i.aq, label %.lr.ph.i, label %"_ZSt11__push_heapIPSt5tupleIJP3appS2_mbEElS3_N9__gnu_cxx5__ops14_Iter_comp_valIZNK3euf13eq_proof_hint8get_hintERNS8_6solverEE3$_0EEEvT_T0_SF_T1_RT2_.exit"

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.0133.i = phi i64 [ %.048.i, %bb.e ], [ %.127, %bb.d ] ; 3 uses
  %.04.in.i = add nsw i64 %.0133.i, -1
  %.048.i = lshr i64 %.04.in.i, 1                 ; 4 uses
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.048.i ; 3 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 8
  %.val.i = load i64, ptr %i.as, align 8, !tbaa !455 ; 2 uses
  %i.at = icmp ult i64 %.val.i, %i.an
  br i1 %i.at, label %bb.e, label %"_ZSt11__push_heapIPSt5tupleIJP3appS2_mbEElS3_N9__gnu_cxx5__ops14_Iter_comp_valIZNK3euf13eq_proof_hint8get_hintERNS8_6solverEE3$_0EEEvT_T0_SF_T1_RT2_.exit"

bb.e:                                             ; preds = %.lr.ph.i
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0133.i ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ax = load <2 x ptr>, ptr %i.av, align 8, !tbaa !457
  store <2 x ptr> %i.ax, ptr %i.aw, align 8, !tbaa !457
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 %.val.i, ptr %i.ay, align 8, !tbaa !455
  %i.az = load i8, ptr %i.ar, align 8, !tbaa !454, !range !391, !noundef !392
  store i8 %i.az, ptr %i.au, align 8, !tbaa !454
  %i.ba = icmp samesign ugt i64 %.048.i, %1
  br i1 %i.ba, label %.lr.ph.i, label %"_ZSt11__push_heapIPSt5tupleIJP3appS2_mbEElS3_N9__gnu_cxx5__ops14_Iter_comp_valIZNK3euf13eq_proof_hint8get_hintERNS8_6solverEE3$_0EEEvT_T0_SF_T1_RT2_.exit", !llvm.loop !668

"_ZSt11__push_heapIPSt5tupleIJP3appS2_mbEElS3_N9__gnu_cxx5__ops14_Iter_comp_valIZNK3euf13eq_proof_hint8get_hintERNS8_6solverEE3$_0EEEvT_T0_SF_T1_RT2_.exit": ; preds = %.lr.ph.i, %bb.e, %bb.d
  %.013.lcssa.i = phi i64 [ %.127, %bb.d ], [ %.0133.i, %.lr.ph.i ], [ %.048.i, %bb.e ]
  %i.bb = inttoptr <2 x i64> %i.ap to <2 x ptr>
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.013.lcssa.i ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store <2 x ptr> %i.bb, ptr %i.bd, align 8, !tbaa !457
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %i.an, ptr %i.be, align 8, !tbaa !455
  store i8 %i.al, ptr %i.bc, align 8, !tbaa !454
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #12

declare noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN11ast_manager6mk_appEiiP4expr(ptr noundef nonnull align 8 dereferenceable(952), i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN3euf17smt_proof_checker13ensure_solverEv(ptr noundef nonnull align 8 dereferenceable(5076)) local_unnamed_addr #1

declare void @_ZN6solver11assert_exprEP4expr(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3euf17smt_proof_checker9mk_clauseERK10ref_vectorI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(5076) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5008 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !437  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -4
  store i32 0, ptr %i.c, align 4, !tbaa !408
  br label %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit

_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit:     ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !414  ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %._crit_edge29, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit: ; preds = %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !408  ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.j
  %.not27 = icmp eq i32 %i.h, 0
  br i1 %.not27, label %._crit_edge29, label %.preheader

.preheader:                                       ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit, %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit
  %i.l = phi ptr [ %i.at, %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit ], [ %i.b, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit ] ; 4 uses
  %.0928 = phi ptr [ %i.az, %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit ], [ %i.e, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit ] ; 2 uses
  %.01115 = load ptr, ptr %.0928, align 8, !tbaa !421 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.01115, i64 4
  %i.n = load i32, ptr %i.m, align 4
  %i.o = and i32 %i.n, 65535
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

._crit_edge29:                                    ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit, %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit
  ret void

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %.01117 = phi ptr [ %.011, %bb.d ], [ %.01115, %.preheader ] ; 6 uses
  %.016 = phi i1 [ %i.ae, %bb.d ], [ false, %.preheader ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.01117, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !673
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !676  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i, label %._crit_edge.loopexit, label %_ZNK11ast_manager6is_notEPK4expr.exit.i

_ZNK11ast_manager6is_notEPK4expr.exit.i:          ; preds = %.lr.ph
end_hunk_0
