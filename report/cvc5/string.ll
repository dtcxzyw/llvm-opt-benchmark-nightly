Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/string?download=true
inline.NumInlined: 901
inline.NumDeleted: 297
begin_hunk_0_@_ZSt8__searchIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEES7_NS0_5__ops19_Iter_equal_to_iterEET_SA_SA_T0_SB_T1_:bb.a
    i64 1, label %._crit_edge._crit_edge57.i.i
  ]

._crit_edge._crit_edge57.i.i:                     ; preds = %._crit_edge.i.i
  %.pre58.i.i = load i32, ptr %2, align 4, !tbaa !20
  br label %bb.m

._crit_edge._crit_edge.i.i:                       ; preds = %._crit_edge.i.i
  %.pre.i.i = load i32, ptr %2, align 4, !tbaa !20
  br label %bb.k

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.aa = load i32, ptr %.sroa.032.0.lcssa.i.i, align 4, !tbaa !20
  %i.ab = load i32, ptr %2, align 4, !tbaa !20    ; 2 uses
  %i.ac = icmp eq i32 %i.aa, %i.ab
  br i1 %i.ac, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i, i64 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge._crit_edge.i.i
  %i.ae = phi i32 [ %i.ab, %bb.j ], [ %.pre.i.i, %._crit_edge._crit_edge.i.i ] ; 2 uses
  %.sroa.032.1.i.i = phi ptr [ %i.ad, %bb.j ], [ %.sroa.032.0.lcssa.i.i, %._crit_edge._crit_edge.i.i ] ; 3 uses
  %i.af = load i32, ptr %.sroa.032.1.i.i, align 4, !tbaa !20
  %i.ag = icmp eq i32 %i.af, %i.ae
  br i1 %i.ag, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i, i64 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge._crit_edge57.i.i
  %i.ai = phi i32 [ %i.ae, %bb.l ], [ %.pre58.i.i, %._crit_edge._crit_edge57.i.i ]
  %.sroa.032.2.i.i = phi ptr [ %i.ah, %bb.l ], [ %.sroa.032.0.lcssa.i.i, %._crit_edge._crit_edge57.i.i ] ; 2 uses
  %i.aj = load i32, ptr %.sroa.032.2.i.i, align 4, !tbaa !20
  %i.ak = icmp eq i32 %i.aj, %i.ai
  %spec.select.i.i = select i1 %i.ak, ptr %.sroa.032.2.i.i, ptr %1
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit

.loopexit:                                        ; preds = %.preheader, %bb.b
  %.sroa.053.0 = phi ptr [ %0, %bb.b ], [ %i.bv, %.preheader ] ; 4 uses
  %i.al = ptrtoint ptr %.sroa.053.0 to i64
  %i.am = sub i64 %i.e, %i.al                     ; 3 uses
  %i.an = ashr i64 %i.am, 4                       ; 2 uses
  %i.ao = icmp sgt i64 %i.an, 0
  br i1 %i.ao, label %.lr.ph.i.i27, label %._crit_edge.i.i16

.lr.ph.i.i27:                                     ; preds = %.loopexit
  %i.ap = load i32, ptr %2, align 4, !tbaa !20    ; 4 uses
  %i.aq = and i64 %i.am, -16
  %scevgep.i.i28 = getelementptr i8, ptr %.sroa.053.0, i64 %i.aq ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.r, %.lr.ph.i.i27
  %.052.i.i29 = phi i64 [ %i.an, %.lr.ph.i.i27 ], [ %i.bd, %bb.r ] ; 2 uses
  %.sroa.032.051.i.i30 = phi ptr [ %.sroa.053.0, %.lr.ph.i.i27 ], [ %i.bc, %bb.r ] ; 9 uses
  %i.ar = load i32, ptr %.sroa.032.051.i.i30, align 4, !tbaa !20
  %i.as = icmp eq i32 %i.ar, %i.ap
  br i1 %i.as, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit37, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i30, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !20
  %i.av = icmp eq i32 %i.au, %i.ap
  br i1 %i.av, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit37.loopexit.split.loop.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i30, i64 8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !20
  %i.ay = icmp eq i32 %i.ax, %i.ap
  br i1 %i.ay, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit37.loopexit.split.loop.exit109, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i30, i64 12
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !20
  %i.bb = icmp eq i32 %i.ba, %i.ap
  br i1 %i.bb, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit37.loopexit.split.loop.exit111, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i30, i64 16
  %i.bd = add nsw i64 %.052.i.i29, -1
  %i.be = icmp sgt i64 %.052.i.i29, 1
  br i1 %i.be, label %bb.n, label %._crit_edge.loopexit.i.i31, !llvm.loop !143

._crit_edge.loopexit.i.i31:                       ; preds = %bb.r
  %.pre59.i.i32 = ptrtoint ptr %scevgep.i.i28 to i64
  %.pre60.i.i33 = sub i64 %i.e, %.pre59.i.i32
  br label %._crit_edge.i.i16

._crit_edge.i.i16:                                ; preds = %._crit_edge.loopexit.i.i31, %.loopexit
  %.pre-phi61.i.i17 = phi i64 [ %.pre60.i.i33, %._crit_edge.loopexit.i.i31 ], [ %i.am, %.loopexit ]
  %.sroa.032.0.lcssa.i.i18 = phi ptr [ %scevgep.i.i28, %._crit_edge.loopexit.i.i31 ], [ %.sroa.053.0, %.loopexit ] ; 5 uses
  %i.bf = ashr exact i64 %.pre-phi61.i.i17, 2
  switch i64 %i.bf, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit [
    i64 3, label %bb.s
    i64 2, label %._crit_edge._crit_edge.i.i24
    i64 1, label %._crit_edge._crit_edge57.i.i19
  ]

._crit_edge._crit_edge57.i.i19:                   ; preds = %._crit_edge.i.i16
  %.pre58.i.i20 = load i32, ptr %2, align 4, !tbaa !20
  br label %bb.w

._crit_edge._crit_edge.i.i24:                     ; preds = %._crit_edge.i.i16
  %.pre.i.i25 = load i32, ptr %2, align 4, !tbaa !20
  br label %bb.u

bb.s:                                             ; preds = %._crit_edge.i.i16
  %i.bg = load i32, ptr %.sroa.032.0.lcssa.i.i18, align 4, !tbaa !20
  %i.bh = load i32, ptr %2, align 4, !tbaa !20    ; 2 uses
  %i.bi = icmp eq i32 %i.bg, %i.bh
  br i1 %i.bi, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit37, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i18, i64 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge._crit_edge.i.i24
  %i.bk = phi i32 [ %i.bh, %bb.t ], [ %.pre.i.i25, %._crit_edge._crit_edge.i.i24 ] ; 2 uses
  %.sroa.032.1.i.i26 = phi ptr [ %i.bj, %bb.t ], [ %.sroa.032.0.lcssa.i.i18, %._crit_edge._crit_edge.i.i24 ] ; 3 uses
  %i.bl = load i32, ptr %.sroa.032.1.i.i26, align 4, !tbaa !20
  %i.bm = icmp eq i32 %i.bl, %i.bk
  br i1 %i.bm, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit37, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i26, i64 4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge._crit_edge57.i.i19
  %i.bo = phi i32 [ %i.bk, %bb.v ], [ %.pre58.i.i20, %._crit_edge._crit_edge57.i.i19 ]
  %.sroa.032.2.i.i21 = phi ptr [ %i.bn, %bb.v ], [ %.sroa.032.0.lcssa.i.i18, %._crit_edge._crit_edge57.i.i19 ] ; 2 uses
  %i.bp = load i32, ptr %.sroa.032.2.i.i21, align 4, !tbaa !20
  %i.bq = icmp eq i32 %i.bp, %i.bo
  %spec.select.i.i22 = select i1 %i.bq, ptr %.sroa.032.2.i.i21, ptr %1
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit37

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit37.loopexit.split.loop.exit: ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i30, i64 4
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit37

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit37.loopexit.split.loop.exit109: ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i30, i64 8
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit37

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit37.loopexit.split.loop.exit111: ; preds = %bb.q
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i30, i64 12
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit37

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit37: ; preds = %bb.n, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit37.loopexit.split.loop.exit, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit37.loopexit.split.loop.exit109, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit37.loopexit.split.loop.exit111, %bb.s, %bb.u, %bb.w
  %.sroa.08.0.in.sroa.speculated.i.i23 = phi ptr [ %.sroa.032.1.i.i26, %bb.u ], [ %spec.select.i.i22, %bb.w ], [ %.sroa.032.0.lcssa.i.i18, %bb.s ], [ %i.bt, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit37.loopexit.split.loop.exit111 ], [ %i.bs, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit37.loopexit.split.loop.exit109 ], [ %i.br, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit37.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i30, %bb.n ] ; 3 uses
  %i.bu = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i23, %1
  br i1 %i.bu, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit, label %bb.x

bb.x:                                             ; preds = %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit37
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i23, i64 4 ; 3 uses
  %i.bw = icmp eq ptr %i.bv, %1
  br i1 %i.bw, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit, label %.preheader

.preheader:                                       ; preds = %bb.x, %bb.z
  %.sroa.039.0 = phi ptr [ %i.cc, %bb.z ], [ %i.bv, %bb.x ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.ca, %bb.z ], [ %i.c, %bb.x ] ; 2 uses
  %i.bx = load i32, ptr %.sroa.039.0, align 4, !tbaa !20
  %i.by = load i32, ptr %.sroa.0.0, align 4, !tbaa !20
  %i.bz = icmp eq i32 %i.bx, %i.by
  br i1 %i.bz, label %bb.y, label %.loopexit, !llvm.loop !144

bb.y:                                             ; preds = %.preheader
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 4 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %3
  br i1 %i.cb, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.039.0, i64 4 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %1
  br i1 %i.cd, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit, label %.preheader, !llvm.loop !145

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit: ; preds = %bb.e
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 4
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit117: ; preds = %bb.f
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 8
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit119: ; preds = %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 12
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit: ; preds = %bb.x, %._crit_edge.i.i16, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit37, %bb.y, %bb.z, %bb.d, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit117, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit119, %._crit_edge.i.i, %bb.i, %bb.k, %bb.m, %bb.a
  %.sroa.011.4 = phi ptr [ %0, %bb.a ], [ %.sroa.08.0.in.sroa.speculated.i.i23, %bb.y ], [ %.sroa.032.051.i.i, %bb.d ], [ %.sroa.032.1.i.i, %bb.k ], [ %spec.select.i.i, %bb.m ], [ %1, %._crit_edge.i.i ], [ %.sroa.032.0.lcssa.i.i, %bb.i ], [ %i.ce, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit ], [ %i.cf, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit117 ], [ %i.cg, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit119 ], [ %1, %bb.z ], [ %1, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit37 ], [ %1, %._crit_edge.i.i16 ], [ %1, %bb.x ]
  ret ptr %.sroa.011.4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt8__searchISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEES9_NS1_5__ops19_Iter_equal_to_iterEET_SC_SC_T0_SD_T1_(ptr dead_on_unwind noalias writable sret(%"class.std::reverse_iterator") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef align 8 dead_on_return %4) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %1, align 8 ; 5 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %2, align 8 ; 2 uses
  %i.a = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 7 uses
  %i.c = ptrtoint ptr %.sroa.0.0.copyload.i2.i to i64 ; 5 uses
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i1 = load ptr, ptr %3, align 8 ; 3 uses
  %.sroa.0.0.copyload.i2.i2 = load ptr, ptr %4, align 8, !tbaa !38 ; 2 uses
  %i.d = icmp eq ptr %.sroa.0.0.copyload.i.i1, %.sroa.0.0.copyload.i2.i2
  br i1 %i.d, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i1, i64 -4 ; 6 uses
  %i.f = icmp eq ptr %i.e, %.sroa.0.0.copyload.i2.i2
  br i1 %i.f, label %bb.d, label %.preheader47.preheader

.preheader47.preheader:                           ; preds = %bb.c
  %i.g = ptrtoint ptr %.sroa.0.0.copyload.i.i1 to i64
  br label %.preheader47

bb.d:                                             ; preds = %bb.c
  %i.h = sub i64 %i.b, %i.c                       ; 3 uses
  %i.i = ashr i64 %i.h, 4                         ; 3 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %.lr.ph.i.preheader.i, label %._crit_edge.i.i

.lr.ph.i.preheader.i:                             ; preds = %bb.d
  %i.k = load i32, ptr %i.e, align 4, !tbaa !20, !noalias !146 ; 4 uses
  %5 = and i64 %i.h, -16
  %6 = sub i64 %i.b, %5                           ; 2 uses
  %i.l = mul nsw i64 %i.i, -16
  %scevgep.i = getelementptr i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.l
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %.lr.ph.i.preheader.i
  %i.m = phi ptr [ %i.aa, %bb.k ], [ %.sroa.0.0.copyload.i.i, %.lr.ph.i.preheader.i ] ; 6 uses
  %i.n = phi i64 [ %i.ag, %bb.k ], [ %i.b, %.lr.ph.i.preheader.i ] ; 2 uses
  %.024.i.i = phi i64 [ %i.ae, %bb.k ], [ %i.i, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !20, !noalias !146
  %i.r = icmp eq i32 %i.q, %i.k
  br i1 %i.r, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds i8, ptr %i.m, i64 -8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !20, !noalias !146
  %i.u = icmp eq i32 %i.t, %i.k
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds i8, ptr %i.m, i64 -4
  %.cast.i.i = ptrtoint ptr %i.v to i64
  br label %.critedge

bb.g:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds i8, ptr %i.m, i64 -12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !20, !noalias !146
  %i.y = icmp eq i32 %i.x, %i.k
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds i8, ptr %i.m, i64 -8
  %.cast10.i.i = ptrtoint ptr %i.z to i64
  br label %.critedge

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds i8, ptr %i.m, i64 -16 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !20, !noalias !146
  %i.ac = icmp eq i32 %i.ab, %i.k
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds i8, ptr %i.m, i64 -12
  %.cast11.i.i = ptrtoint ptr %i.ad to i64
  br label %.critedge

bb.k:                                             ; preds = %bb.i
  %i.ae = add nsw i64 %.024.i.i, -1
  %i.af = icmp sgt i64 %.024.i.i, 1
  %i.ag = ptrtoint ptr %i.aa to i64
  br i1 %i.af, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !151

._crit_edge.loopexit.i.i:                         ; preds = %bb.k
  %.pre41.i.i = sub i64 %6, %i.c
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.d
  %.pre-phi42.i.i = phi i64 [ %.pre41.i.i, %._crit_edge.loopexit.i.i ], [ %i.h, %bb.d ]
  %i.ah = phi i64 [ %6, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.d ] ; 4 uses
  %i.ai = phi ptr [ %scevgep.i, %._crit_edge.loopexit.i.i ], [ %.sroa.0.0.copyload.i.i, %bb.d ] ; 2 uses
  %i.aj = ashr exact i64 %.pre-phi42.i.i, 2
  switch i64 %i.aj, label %.critedge [
    i64 3, label %bb.l
    i64 2, label %._crit_edge.i.i.._crit_edge.i._crit_edge42.i_crit_edge
    i64 1, label %._crit_edge.i.i.._crit_edge.i._crit_edge.i_crit_edge
  ]

._crit_edge.i.i.._crit_edge.i._crit_edge.i_crit_edge: ; preds = %._crit_edge.i.i
  %.pre115.a = load i32, ptr %i.e, align 4, !tbaa !20, !noalias !146
  br label %._crit_edge.i._crit_edge.i

._crit_edge.i.i.._crit_edge.i._crit_edge42.i_crit_edge: ; preds = %._crit_edge.i.i
  %.pre114.a = load i32, ptr %i.e, align 4, !tbaa !20, !noalias !146
  br label %._crit_edge.i._crit_edge42.i

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.ak = inttoptr i64 %i.ah to ptr
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !20, !noalias !146
  %i.an = load i32, ptr %i.e, align 4, !tbaa !20, !noalias !146 ; 2 uses
  %i.ao = icmp eq i32 %i.am, %i.an
  br i1 %i.ao, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds i8, ptr %i.ai, i64 -4 ; 2 uses
  %i.aq = ptrtoint ptr %i.ap to i64
  br label %._crit_edge.i._crit_edge42.i

._crit_edge.i._crit_edge42.i:                     ; preds = %._crit_edge.i.i.._crit_edge.i._crit_edge42.i_crit_edge, %bb.m
  %i.ar = phi i32 [ %i.an, %bb.m ], [ %.pre114.a, %._crit_edge.i.i.._crit_edge.i._crit_edge42.i_crit_edge ] ; 2 uses
  %i.as = phi ptr [ %i.ap, %bb.m ], [ %i.ai, %._crit_edge.i.i.._crit_edge.i._crit_edge42.i_crit_edge ]
  %i.at = phi i64 [ %i.aq, %bb.m ], [ %i.ah, %._crit_edge.i.i.._crit_edge.i._crit_edge42.i_crit_edge ] ; 2 uses
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !20, !noalias !146
  %i.ax = icmp eq i32 %i.aw, %i.ar
  br i1 %i.ax, label %.critedge, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i._crit_edge42.i
  %i.ay = getelementptr inbounds i8, ptr %i.as, i64 -4
  %i.az = ptrtoint ptr %i.ay to i64
  br label %._crit_edge.i._crit_edge.i

._crit_edge.i._crit_edge.i:                       ; preds = %._crit_edge.i.i.._crit_edge.i._crit_edge.i_crit_edge, %bb.n
  %i.ba = phi i32 [ %i.ar, %bb.n ], [ %.pre115.a, %._crit_edge.i.i.._crit_edge.i._crit_edge.i_crit_edge ]
  %i.bb = phi i64 [ %i.az, %bb.n ], [ %i.ah, %._crit_edge.i.i.._crit_edge.i._crit_edge.i_crit_edge ] ; 2 uses
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !20, !noalias !146
  %i.bf = icmp eq i32 %i.be, %i.ba
  %spec.select.i = select i1 %i.bf, i64 %i.bb, i64 %i.c
  br label %.critedge

.preheader47:                                     ; preds = %.preheader47.preheader, %bb.ag
  %i.bg = phi i64 [ %.pre110, %bb.ag ], [ %i.g, %.preheader47.preheader ] ; 4 uses
  %i.bh = phi i64 [ %.pre, %bb.ag ], [ %i.c, %.preheader47.preheader ] ; 4 uses
  %i.bi = phi i64 [ %i.eb, %bb.ag ], [ %i.b, %.preheader47.preheader ] ; 5 uses
  %i.bj = inttoptr i64 %i.bi to ptr               ; 3 uses
  %i.bk = sub i64 %i.bi, %i.bh                    ; 3 uses
  %i.bl = ashr i64 %i.bk, 4                       ; 3 uses
  %i.bm = icmp sgt i64 %i.bl, 0
  br i1 %i.bm, label %.lr.ph.i.preheader.i15, label %._crit_edge.i.i5

.lr.ph.i.preheader.i15:                           ; preds = %.preheader47
  %i.bn = inttoptr i64 %i.bg to ptr
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !20, !noalias !152 ; 4 uses
  %7 = and i64 %i.bk, -16
  %8 = sub i64 %i.bi, %7                          ; 2 uses
  %i.bq = mul nsw i64 %i.bl, -16
  %scevgep.i16 = getelementptr i8, ptr %i.bj, i64 %i.bq
  br label %.lr.ph.i.i17

.lr.ph.i.i17:                                     ; preds = %bb.u, %.lr.ph.i.preheader.i15
  %i.br = phi ptr [ %i.cf, %bb.u ], [ %i.bj, %.lr.ph.i.preheader.i15 ] ; 6 uses
  %i.bs = phi i64 [ %i.cl, %bb.u ], [ %i.bi, %.lr.ph.i.preheader.i15 ] ; 2 uses
  %.024.i.i18 = phi i64 [ %i.cj, %bb.u ], [ %i.bl, %.lr.ph.i.preheader.i15 ] ; 2 uses
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !20, !noalias !152
  %i.bw = icmp eq i32 %i.bv, %i.bp
  br i1 %i.bw, label %_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEENS1_5__ops17_Iter_equals_iterIS9_EEET_SD_SD_T0_.exit24, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i17
  %i.bx = getelementptr inbounds i8, ptr %i.br, i64 -8
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !20, !noalias !152
  %i.bz = icmp eq i32 %i.by, %i.bp
  br i1 %i.bz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ca = getelementptr inbounds i8, ptr %i.br, i64 -4
  %.cast.i.i23 = ptrtoint ptr %i.ca to i64
  br label %_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEENS1_5__ops17_Iter_equals_iterIS9_EEET_SD_SD_T0_.exit24

bb.q:                                             ; preds = %bb.o
  %i.cb = getelementptr inbounds i8, ptr %i.br, i64 -12
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !20, !noalias !152
  %i.cd = icmp eq i32 %i.cc, %i.bp
  br i1 %i.cd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ce = getelementptr inbounds i8, ptr %i.br, i64 -8
  %.cast10.i.i22 = ptrtoint ptr %i.ce to i64
  br label %_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEENS1_5__ops17_Iter_equals_iterIS9_EEET_SD_SD_T0_.exit24

bb.s:                                             ; preds = %bb.q
  %i.cf = getelementptr inbounds i8, ptr %i.br, i64 -16 ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !20, !noalias !152
  %i.ch = icmp eq i32 %i.cg, %i.bp
  br i1 %i.ch, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ci = getelementptr inbounds i8, ptr %i.br, i64 -12
  %.cast11.i.i21 = ptrtoint ptr %i.ci to i64
  br label %_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEENS1_5__ops17_Iter_equals_iterIS9_EEET_SD_SD_T0_.exit24

bb.u:                                             ; preds = %bb.s
  %i.cj = add nsw i64 %.024.i.i18, -1
  %i.ck = icmp sgt i64 %.024.i.i18, 1
  %i.cl = ptrtoint ptr %i.cf to i64
  br i1 %i.ck, label %.lr.ph.i.i17, label %._crit_edge.loopexit.i.i19, !llvm.loop !151

._crit_edge.loopexit.i.i19:                       ; preds = %bb.u
  %.pre41.i.i20 = sub i64 %8, %i.bh
  br label %._crit_edge.i.i5

._crit_edge.i.i5:                                 ; preds = %._crit_edge.loopexit.i.i19, %.preheader47
  %.pre-phi42.i.i6 = phi i64 [ %.pre41.i.i20, %._crit_edge.loopexit.i.i19 ], [ %i.bk, %.preheader47 ]
  %i.cm = phi i64 [ %8, %._crit_edge.loopexit.i.i19 ], [ %i.bi, %.preheader47 ] ; 4 uses
  %i.cn = phi ptr [ %scevgep.i16, %._crit_edge.loopexit.i.i19 ], [ %i.bj, %.preheader47 ] ; 2 uses
  %i.co = ashr exact i64 %.pre-phi42.i.i6, 2
  switch i64 %i.co, label %_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEENS1_5__ops17_Iter_equals_iterIS9_EEET_SD_SD_T0_.exit24 [
    i64 3, label %bb.v
    i64 2, label %._crit_edge.i._crit_edge42.i12
    i64 1, label %._crit_edge.i._crit_edge.i7
  ]

._crit_edge.i._crit_edge42.i12:                   ; preds = %._crit_edge.i.i5
  %.pre.i13 = inttoptr i64 %i.bg to ptr
  %.phi.trans.insert = getelementptr inbounds i8, ptr %.pre.i13, i64 -4
  %.pre111 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !20, !noalias !152
  br label %bb.x

._crit_edge.i._crit_edge.i7:                      ; preds = %._crit_edge.i.i5
  %.pre43.i8 = inttoptr i64 %i.bg to ptr
  %.phi.trans.insert112 = getelementptr inbounds i8, ptr %.pre43.i8, i64 -4
  %.pre113 = load i32, ptr %.phi.trans.insert112, align 4, !tbaa !20, !noalias !152
  br label %bb.z

bb.v:                                             ; preds = %._crit_edge.i.i5
  %i.cp = inttoptr i64 %i.cm to ptr
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 -4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !20, !noalias !152
  %i.cs = inttoptr i64 %i.bg to ptr
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 -4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !20, !noalias !152 ; 2 uses
  %i.cv = icmp eq i32 %i.cr, %i.cu
  br i1 %i.cv, label %_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEENS1_5__ops17_Iter_equals_iterIS9_EEET_SD_SD_T0_.exit24, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cw = getelementptr inbounds i8, ptr %i.cn, i64 -4 ; 2 uses
  %i.cx = ptrtoint ptr %i.cw to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge.i._crit_edge42.i12
  %i.cy = phi i32 [ %.pre111, %._crit_edge.i._crit_edge42.i12 ], [ %i.cu, %bb.w ] ; 2 uses
  %i.cz = phi ptr [ %i.cn, %._crit_edge.i._crit_edge42.i12 ], [ %i.cw, %bb.w ]
  %i.da = phi i64 [ %i.cm, %._crit_edge.i._crit_edge42.i12 ], [ %i.cx, %bb.w ] ; 2 uses
  %i.db = inttoptr i64 %i.da to ptr
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 -4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !20, !noalias !152
  %i.de = icmp eq i32 %i.dd, %i.cy
  br i1 %i.de, label %_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEENS1_5__ops17_Iter_equals_iterIS9_EEET_SD_SD_T0_.exit24, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.df = getelementptr inbounds i8, ptr %i.cz, i64 -4
  %i.dg = ptrtoint ptr %i.df to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.i._crit_edge.i7
  %i.dh = phi i32 [ %.pre113, %._crit_edge.i._crit_edge.i7 ], [ %i.cy, %bb.y ]
  %i.di = phi i64 [ %i.cm, %._crit_edge.i._crit_edge.i7 ], [ %i.dg, %bb.y ] ; 2 uses
  %i.dj = inttoptr i64 %i.di to ptr
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 -4
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !20, !noalias !152
  %i.dm = icmp eq i32 %i.dl, %i.dh
  %spec.select.i10 = select i1 %i.dm, i64 %i.di, i64 %i.bh
  br label %_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEENS1_5__ops17_Iter_equals_iterIS9_EEET_SD_SD_T0_.exit24

_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEENS1_5__ops17_Iter_equals_iterIS9_EEET_SD_SD_T0_.exit24: ; preds = %.lr.ph.i.i17, %bb.p, %bb.r, %bb.t, %._crit_edge.i.i5, %bb.v, %bb.x, %bb.z
  %i.dn = phi i64 [ %spec.select.i10, %bb.z ], [ %i.da, %bb.x ], [ %i.cm, %bb.v ], [ %i.bh, %._crit_edge.i.i5 ], [ %.cast11.i.i21, %bb.t ], [ %.cast10.i.i22, %bb.r ], [ %.cast.i.i23, %bb.p ], [ %i.bs, %.lr.ph.i.i17 ] ; 3 uses
  store i64 %i.dn, ptr %1, align 8
  %.sroa.0.0.copyload.i.i25.cast = inttoptr i64 %i.dn to ptr ; 2 uses
  %.sroa.0.0.copyload.i2.i26 = load ptr, ptr %2, align 8 ; 6 uses
  %i.do = icmp eq ptr %.sroa.0.0.copyload.i2.i26, %.sroa.0.0.copyload.i.i25.cast
  br i1 %i.do, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEENS1_5__ops17_Iter_equals_iterIS9_EEET_SD_SD_T0_.exit24
  %i.dp = ptrtoint ptr %.sroa.0.0.copyload.i2.i26 to i64
  br label %.critedge

bb.ab:                                            ; preds = %_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEENS1_5__ops17_Iter_equals_iterIS9_EEET_SD_SD_T0_.exit24
  %i.dq = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i25.cast, i64 -4 ; 4 uses
  %i.dr = icmp eq ptr %i.dq, %.sroa.0.0.copyload.i2.i26
  br i1 %i.dr, label %bb.ac, label %.preheader

bb.ac:                                            ; preds = %bb.ab
  %i.ds = ptrtoint ptr %.sroa.0.0.copyload.i2.i26 to i64
  br label %.critedge

.preheader:                                       ; preds = %bb.ab, %bb.ae
  %.sroa.034.0 = phi ptr [ %i.dv, %bb.ae ], [ %i.e, %bb.ab ]
  %.sroa.040.0 = phi ptr [ %i.dt, %bb.ae ], [ %i.dq, %bb.ab ]
  %i.dt = getelementptr inbounds i8, ptr %.sroa.040.0, i64 -4 ; 3 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !20
  %i.dv = getelementptr inbounds i8, ptr %.sroa.034.0, i64 -4 ; 3 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !20
  %i.dx = icmp eq i32 %i.du, %i.dw
  br i1 %i.dx, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %.preheader
  %.sroa.0.0.copyload.i2.i30 = load ptr, ptr %4, align 8, !tbaa !38
  %i.dy = icmp eq ptr %i.dv, %.sroa.0.0.copyload.i2.i30
  br i1 %i.dy, label %.critedge, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dz = icmp eq ptr %i.dt, %.sroa.0.0.copyload.i2.i26
  br i1 %i.dz, label %bb.af, label %.preheader, !llvm.loop !157

bb.af:                                            ; preds = %bb.ae
  %i.ea = ptrtoint ptr %.sroa.0.0.copyload.i2.i26 to i64
  br label %.critedge

bb.ag:                                            ; preds = %.preheader
  store ptr %i.dq, ptr %1, align 8, !tbaa !158
  %i.eb = ptrtoint ptr %i.dq to i64
  %.pre = load i64, ptr %2, align 8, !tbaa !38
  %.pre110 = load i64, ptr %3, align 8, !tbaa !38
  br label %.preheader47, !llvm.loop !160

.critedge:                                        ; preds = %bb.ad, %.lr.ph.i.i, %._crit_edge.i._crit_edge.i, %._crit_edge.i._crit_edge42.i, %bb.l, %._crit_edge.i.i, %bb.j, %bb.h, %bb.f, %bb.a, %bb.b, %bb.ac, %bb.af, %bb.aa
  %.sink.i.i.sink = phi i64 [ %i.b, %bb.a ], [ %i.ds, %bb.ac ], [ %i.n, %.lr.ph.i.i ], [ %i.ea, %bb.af ], [ %i.dp, %bb.aa ], [ %i.b, %bb.b ], [ %spec.select.i, %._crit_edge.i._crit_edge.i ], [ %i.at, %._crit_edge.i._crit_edge42.i ], [ %i.ah, %bb.l ], [ %i.c, %._crit_edge.i.i ], [ %.cast11.i.i, %bb.j ], [ %.cast10.i.i, %bb.h ], [ %.cast.i.i, %bb.f ], [ %i.dn, %bb.ad ]
  store i64 %.sink.i.i.sink, ptr %0, align 8, !tbaa !38
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { nounwind }
attributes #23 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !13, i64 8}
!9 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE", !10, i64 0, !13, i64 8, !6, i64 16}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE12_Alloc_hiderE", !11, i64 0}
!11 = !{!"p1 wchar_t", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!9, !11, i64 0}
!15 = !{!16, !17, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
!17 = !{!"p1 int", !12, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"wchar_t", !6, i64 0}
!20 = !{!5, !5, i64 0}
!21 = distinct !{!21, !22, !23, !24}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = !{!"llvm.loop.unroll.runtime.disable"}
!25 = !{!16, !17, i64 16}
!26 = distinct !{!26, !22, !24, !23}
!27 = !{!28, !13, i64 8}
!28 = !{!"_ZTSNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE", !29, i64 0, !13, i64 8, !6, i64 16}
!29 = !{!"_ZTSNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE12_Alloc_hiderE", !30, i64 0}
!30 = !{!"p1 char32_t", !12, i64 0}
!31 = !{!28, !30, i64 0}
!32 = !{!33, !33, i64 0}
!33 = !{!"char32_t", !6, i64 0}
!34 = distinct !{!34, !22, !23, !24}
!35 = distinct !{!35, !22, !24, !23}
!36 = !{!16, !17, i64 8}
!37 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!38 = !{!17, !17, i64 0}
end_hunk_0
