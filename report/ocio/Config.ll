Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/Config?download=true
inline.NumInlined: 10699
inline.NumDeleted: 2966
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEaSERKSE_:bb.a
  br i1 %i.af, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.g
  %i.ag = udiv exact i64 %i.f, 24
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %i.ag, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %i.ah = load i64, ptr %.0910.i.i.i.i.i, align 8, !tbaa !100
  store i64 %i.ah, ptr %.0811.i.i.i.i.i, align 8, !tbaa !100
  %i.ai = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !100
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !100
  %i.al = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.am = load i8, ptr %i.al, align 8, !tbaa !153, !range !154, !noundef !155
  %i.an = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  store i8 %i.am, ptr %i.an, align 8, !tbaa !153
  %i.ao = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  %i.aq = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ar = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit, !llvm.loop !1779

bb.h:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ae ; 2 uses
  %i.at = icmp sgt i64 %i.ae, 0
  br i1 %i.at, label %.lr.ph.preheader.i.i.i.i.i26, label %_ZSt4copyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_ET0_T_SF_SE_.exit

.lr.ph.preheader.i.i.i.i.i26:                     ; preds = %bb.h
  %i.au = udiv exact i64 %i.ae, 24
  br label %.lr.ph.i.i.i.i.i27

.lr.ph.i.i.i.i.i27:                               ; preds = %.lr.ph.i.i.i.i.i27, %.lr.ph.preheader.i.i.i.i.i26
  %.012.i.i.i.i.i28 = phi i64 [ %i.be, %.lr.ph.i.i.i.i.i27 ], [ %i.au, %.lr.ph.preheader.i.i.i.i.i26 ] ; 2 uses
  %.0811.i.i.i.i.i29 = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i27 ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i26 ] ; 4 uses
  %.0910.i.i.i.i.i30 = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i27 ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i26 ] ; 4 uses
  %i.av = load i64, ptr %.0910.i.i.i.i.i30, align 8, !tbaa !100
  store i64 %i.av, ptr %.0811.i.i.i.i.i29, align 8, !tbaa !100
  %i.aw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 8
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !100
  store i64 %i.ay, ptr %i.ax, align 8, !tbaa !100
  %i.az = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 16
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !153, !range !154, !noundef !155
  %i.bb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 16
  store i8 %i.ba, ptr %i.bb, align 8, !tbaa !153
  %i.bc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 24
  %i.be = add nsw i64 %.012.i.i.i.i.i28, -1
  %i.bf = icmp samesign ugt i64 %.012.i.i.i.i.i28, 1
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i27, label %_ZSt4copyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_ET0_T_SF_SE_.exit, !llvm.loop !1780

_ZSt4copyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_ET0_T_SF_SE_.exit: ; preds = %.lr.ph.i.i.i.i.i27, %bb.h
  %.not9.i.i.i.i = icmp eq ptr %i.as, %i.b
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_ET0_T_SF_SE_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i ], [ %i.ac, %_ZSt4copyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_ET0_T_SF_SE_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i ], [ %i.as, %_ZSt4copyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_ET0_T_SF_SE_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0810.i.i.i.i, i64 24, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 24 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.bg, %i.b
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !1781

_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !140
  br label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit.loopexit, %bb.g, %_ZSt4copyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_ET0_T_SF_SE_.exit, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE13_M_deallocateEPSC_m.exit
  %i.bi = phi ptr [ %i.p, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE13_M_deallocateEPSC_m.exit ], [ %.pre, %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit.loopexit ], [ %i.i, %bb.g ], [ %i.i, %_ZSt4copyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_ET0_T_SF_SE_.exit ], [ %i.i, %.lr.ph.i.i.i.i.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.f
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !631
  br label %bb.i

bb.i:                                             ; preds = %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 14 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 8 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge283, %bb.a
  %.tr37 = phi i64 [ %2, %bb.a ], [ %.tr37.be284, %tailrecurse.backedge283 ] ; 5 uses
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !641, !nonnull !155, !align !382 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !423
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %.tr37 ; 19 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !438
  switch i32 %i.n, label %common.ret [
    i32 2, label %bb.b
    i32 8, label %bb.n
    i32 9, label %bb.o
    i32 4, label %bb.p
    i32 5, label %bb.u
    i32 6, label %bb.w
    i32 7, label %bb.x
    i32 11, label %bb.y
    i32 3, label %bb.ac
    i32 12, label %bb.ad
    i32 1, label %bb.am
  ]

bb.b:                                             ; preds = %tailrecurse
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.p = load i8, ptr %i.o, align 8, !tbaa !91, !range !154, !noundef !155
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !617
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.tr37 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 5 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !622  ; 4 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.sroa.029.0.copyload.pre = load i64, ptr %i.s, align 8
  %.pre = load i64, ptr %i.c, align 8, !tbaa !100
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.x = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.w, %i.x
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.aa = phi i64 [ %.pre, %._crit_edge ], [ %i.z, %bb.d ]
  %.sroa.029.0.copyload = phi i64 [ %.sroa.029.0.copyload.pre, %._crit_edge ], [ %i.y, %bb.d ]
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !100
  store i32 1, ptr %i.t, align 8, !tbaa !622
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !91
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.ac), !inline_history !1782
  store i64 %.sroa.029.0.copyload, ptr %i.s, align 8, !tbaa !100
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_rep_once_moreENSH_11_Match_modeEl.exit.sink.split

bb.f:                                             ; preds = %bb.d
  %i.ad = icmp slt i32 %i.u, 2
  br i1 %i.ad, label %bb.g, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_rep_once_moreENSH_11_Match_modeEl.exit

bb.g:                                             ; preds = %bb.f
  %i.ae = add nsw i32 %i.u, 1
  store i32 %i.ae, ptr %i.t, align 8, !tbaa !622
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !91
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.ag), !inline_history !1782
  %i.ah = load i32, ptr %i.t, align 8, !tbaa !622
  %i.ai = add nsw i32 %i.ah, -1
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_rep_once_moreENSH_11_Match_modeEl.exit.sink.split

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_rep_once_moreENSH_11_Match_modeEl.exit.sink.split: ; preds = %bb.g, %bb.e
  %.sink = phi i32 [ %i.u, %bb.e ], [ %i.ai, %bb.g ]
  store i32 %.sink, ptr %i.t, align 8, !tbaa !622
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_rep_once_moreENSH_11_Match_modeEl.exit

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_rep_once_moreENSH_11_Match_modeEl.exit: ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_rep_once_moreENSH_11_Match_modeEl.exit.sink.split, %bb.f
  %i.aj = load i8, ptr %i.i, align 4, !tbaa !626, !range !154, !noundef !155
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %common.ret, label %tailrecurse.backedge283

tailrecurse.backedge283:                          ; preds = %bb.an, %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_rep_once_moreENSH_11_Match_modeEl.exit, %bb.r, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE11_M_at_beginEv.exit, %.split, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE9_M_at_endEv.exit, %bb.w, %bb.x
  %.tr37.be284.in = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.tr37.be284 = load i64, ptr %.tr37.be284.in, align 8, !tbaa !426
  br label %tailrecurse

bb.h:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !426
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.am), !inline_history !1783
  %i.an = load i8, ptr %i.i, align 4, !tbaa !626, !range !154, !noundef !155
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %common.ret, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !641, !nonnull !155, !align !382
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !423
  %i.as = getelementptr inbounds nuw [48 x i8], ptr %i.ar, i64 %.tr37 ; 2 uses
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !617
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.tr37 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 5 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !622 ; 4 uses
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %._crit_edge.i, label %bb.j

._crit_edge.i:                                    ; preds = %bb.i
  %.sroa.0.0.copyload.pre.i = load i64, ptr %i.au, align 8
  %.pre.i = load i64, ptr %i.c, align 8, !tbaa !100
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ay = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.az = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i107 = icmp eq ptr %i.ay, %i.az
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  br i1 %.not.i107, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i
  %i.bc = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.bb, %bb.j ]
  %.sroa.0.0.copyload.i108 = phi i64 [ %.sroa.0.0.copyload.pre.i, %._crit_edge.i ], [ %i.ba, %bb.j ]
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !100
  store i32 1, ptr %i.av, align 8, !tbaa !622
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !91
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.be), !inline_history !1782
  store i64 %.sroa.0.0.copyload.i108, ptr %i.au, align 8, !tbaa !100
  br label %.sink.split.i

bb.l:                                             ; preds = %bb.j
  %i.bf = icmp slt i32 %i.aw, 2
  br i1 %i.bf, label %bb.m, label %common.ret

bb.m:                                             ; preds = %bb.l
  %i.bg = add nsw i32 %i.aw, 1
  store i32 %i.bg, ptr %i.av, align 8, !tbaa !622
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !91
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.bi), !inline_history !1782
  %i.bj = load i32, ptr %i.av, align 8, !tbaa !622
  %i.bk = add nsw i32 %i.bj, -1
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.m, %bb.k
  %.sink.i109 = phi i32 [ %i.bk, %bb.m ], [ %i.aw, %bb.k ]
  store i32 %.sink.i109, ptr %i.av, align 8, !tbaa !622
  br label %common.ret

common.ret:                                       ; preds = %bb.ab, %_ZNKSt8__detail6_StateIcE10_M_matchesEc.exit.i, %bb.y, %.sink.split.i, %bb.l, %bb.ac, %bb.h, %.thread.i, %bb.ah, %bb.aj, %bb.al, %.critedge.i, %tailrecurse, %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_rep_once_moreENSH_11_Match_modeEl.exit, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE11_M_at_beginEv.exit, %.split, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE9_M_at_endEv.exit, %bb.w, %bb.x, %bb.t, %bb.q, %bb.s, %bb.v, %bb.an, %bb.ao, %bb.o, %bb.n
  ret void

bb.n:                                             ; preds = %tailrecurse
  %i.bl = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !91
  %i.bn = load ptr, ptr %0, align 8, !tbaa !140
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.bm ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bo, align 8, !tbaa !100
  %i.bp = load i64, ptr %i.c, align 8, !tbaa !100
  store i64 %i.bp, ptr %i.bo, align 8, !tbaa !100
  %i.bq = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !426
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.br), !inline_history !1784
  store ptr %.sroa.0.0.copyload.i, ptr %i.bo, align 8, !tbaa !100
  br label %common.ret

bb.o:                                             ; preds = %tailrecurse
  %i.bs = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !91
  %i.bu = load ptr, ptr %0, align 8, !tbaa !140
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.bu, i64 %i.bt ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 3 uses
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 8
  %i.bw = load i64, ptr %i.c, align 8, !tbaa !100
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !153
  %i.bx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !426
  %i.bz = load <2 x i64>, ptr %i.bv, align 8
  store i64 %i.bw, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !100
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.by), !inline_history !1785
  store <2 x i64> %i.bz, ptr %i.bv, align 8, !tbaa !100
  store i8 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !153
  br label %common.ret

bb.p:                                             ; preds = %tailrecurse
  %i.ca = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.cb = load ptr, ptr %i.g, align 8, !tbaa !100
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.cd = load i32, ptr %i.f, align 8, !tbaa !630 ; 2 uses
  %i.ce = and i32 %i.cd, 1
  %.not.i26 = icmp eq i32 %i.ce, 0
  br i1 %.not.i26, label %bb.r, label %common.ret

bb.r:                                             ; preds = %bb.q
  %i.cf = and i32 %i.cd, 128
  %.not3.i = icmp eq i32 %i.cf, 0
  br i1 %.not3.i, label %tailrecurse.backedge283, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cg = load ptr, ptr %i.e, align 8, !tbaa !642, !nonnull !155, !align !382
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !590
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !478
  %i.cl = and i32 %i.ck, 2064
  %i.cm = icmp eq i32 %i.cl, 2064
  br i1 %i.cm, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE11_M_at_beginEv.exit, label %common.ret

bb.t:                                             ; preds = %bb.p
  %i.cn = load ptr, ptr %i.e, align 8, !tbaa !642, !nonnull !155, !align !382
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !590
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !478
  %i.cs = and i32 %i.cr, 2064
  %i.ct = icmp eq i32 %i.cs, 2064
  br i1 %i.ct, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE11_M_at_beginEv.exit, label %common.ret

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE11_M_at_beginEv.exit: ; preds = %bb.s, %bb.t
  %i.cu = getelementptr inbounds i8, ptr %i.ca, i64 -1
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !91
  %i.cw = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE21_M_is_line_terminatorEc(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef signext %i.cv)
  br i1 %i.cw, label %tailrecurse.backedge283, label %common.ret

bb.u:                                             ; preds = %tailrecurse
  %i.cx = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.cy = load ptr, ptr %i.d, align 8, !tbaa !100
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %.split, label %bb.v

.split:                                           ; preds = %bb.u
  %i.da = load i32, ptr %i.f, align 8, !tbaa !630
  %i.db = and i32 %i.da, 2
  %.not.i28 = icmp eq i32 %i.db, 0
  br i1 %.not.i28, label %tailrecurse.backedge283, label %common.ret

bb.v:                                             ; preds = %bb.u
  %i.dc = load ptr, ptr %i.e, align 8, !tbaa !642, !nonnull !155, !align !382
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !590
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !478
  %i.dh = and i32 %i.dg, 2064
  %i.di = icmp eq i32 %i.dh, 2064
  br i1 %i.di, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE9_M_at_endEv.exit, label %common.ret

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE9_M_at_endEv.exit: ; preds = %bb.v
  %i.dj = load i8, ptr %i.cx, align 1, !tbaa !91
  %i.dk = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE21_M_is_line_terminatorEc(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef signext %i.dj)
  br i1 %i.dk, label %tailrecurse.backedge283, label %common.ret

bb.w:                                             ; preds = %tailrecurse
  %i.dl = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_word_boundaryEv(ptr noundef nonnull align 8 dereferenceable(117) %0), !inline_history !1786
  %i.dm = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.dn = load i8, ptr %i.dm, align 8, !tbaa !91, !range !154, !noundef !155
  %i.do = zext i1 %i.dl to i8
  %.not.i = icmp eq i8 %i.dn, %i.do
  br i1 %.not.i, label %common.ret, label %tailrecurse.backedge283

bb.x:                                             ; preds = %tailrecurse
  %i.dp = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !91
  %i.dr = tail call noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE12_M_lookaheadEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i64 noundef %i.dq), !inline_history !1787
  %i.ds = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.dt = load i8, ptr %i.ds, align 8, !tbaa !91, !range !154, !noundef !155
  %i.du = zext i1 %i.dr to i8
  %.not.i24 = icmp eq i8 %i.dt, %i.du
  br i1 %.not.i24, label %common.ret, label %tailrecurse.backedge283

bb.y:                                             ; preds = %tailrecurse
  %i.dv = load ptr, ptr %i.c, align 8, !tbaa !100 ; 2 uses
  %i.dw = load ptr, ptr %i.d, align 8, !tbaa !100
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %common.ret, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dy = load i8, ptr %i.dv, align 1, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.dy, ptr %i.a, align 1, !tbaa !91
  %i.dz = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !279
  %.not.i.i.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i.i, label %bb.aa, label %_ZNKSt8__detail6_StateIcE10_M_matchesEc.exit.i

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZSt25__throw_bad_function_callv() #32, !inline_history !1788
  unreachable

_ZNKSt8__detail6_StateIcE10_M_matchesEc.exit.i:   ; preds = %bb.z
  %i.eb = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ec = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !453
  %i.ee = call noundef zeroext i1 %i.ed(ptr noundef nonnull align 8 dereferenceable(32) %i.eb, ptr noundef nonnull align 1 dereferenceable(1) %i.a), !inline_history !1789
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.ee, label %bb.ab, label %common.ret

bb.ab:                                            ; preds = %_ZNKSt8__detail6_StateIcE10_M_matchesEc.exit.i
  %i.ef = load ptr, ptr %i.c, align 8, !tbaa !612
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 1
  store ptr %i.eg, ptr %i.c, align 8, !tbaa !612
  %i.eh = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !426
  call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.ei), !inline_history !1788
  %i.ej = load ptr, ptr %i.c, align 8, !tbaa !612
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 -1
  store ptr %i.ek, ptr %i.c, align 8, !tbaa !612
  br label %common.ret

bb.ac:                                            ; preds = %tailrecurse
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE17_M_handle_backrefENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %.tr37)
  br label %common.ret

bb.ad:                                            ; preds = %tailrecurse
  %i.el = icmp eq i8 %1, 0
  %i.em = load ptr, ptr %i.c, align 8             ; 3 uses
  br i1 %i.el, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.en = load ptr, ptr %i.d, align 8, !tbaa !100
  %i.eo = icmp eq ptr %i.em, %i.en
  %i.ep = zext i1 %i.eo to i8
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %.sink.i = phi i8 [ %i.ep, %bb.ae ], [ 1, %bb.ad ] ; 2 uses
  %i.eq = ptrtoint ptr %i.em to i64               ; 2 uses
  store i8 %.sink.i, ptr %i.i, align 4, !tbaa !626
  %i.er = load ptr, ptr %i.g, align 8, !tbaa !100 ; 2 uses
  %i.es = icmp eq ptr %i.em, %i.er
  br i1 %i.es, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.et = load i32, ptr %i.f, align 8, !tbaa !630
  %i.eu = and i32 %i.et, 32
  %.not.i25 = icmp eq i32 %i.eu, 0
  br i1 %.not.i25, label %bb.ah, label %.thread.i

.thread.i:                                        ; preds = %bb.ag
  store i8 0, ptr %i.i, align 4, !tbaa !626
  br label %common.ret

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ev = trunc nuw i8 %.sink.i to i1
  br i1 %i.ev, label %bb.ai, label %common.ret

bb.ai:                                            ; preds = %bb.ah
  %i.ew = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !478
end_hunk_0
