Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-sampler?download=true
inline.NumInlined: 6714
inline.NumDeleted: 2633
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEaSERKS6_:bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #39
  br label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit, %bb.e
  store ptr %i.p, ptr %0, align 8, !tbaa !552
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.v, ptr %i.g, align 8, !tbaa !556
  br label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !551  ; 2 uses
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.z, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = icmp sgt i64 %i.f, 0
  br i1 %i.aa, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.g
  %i.ab = udiv exact i64 %i.f, 24
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %i.ab, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %i.ac = load <2 x ptr>, ptr %.0910.i.i.i.i.i, align 8, !tbaa !173
  store <2 x ptr> %i.ac, ptr %.0811.i.i.i.i.i, align 8, !tbaa !173
  %i.ad = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !563, !range !78, !noundef !79
  %i.af = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  store i8 %i.ae, ptr %i.af, align 8, !tbaa !563
  %i.ag = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  %i.ai = add nsw i64 %.012.i.i.i.i.i, -1
  %i.aj = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit, !llvm.loop !1198

bb.h:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.z ; 2 uses
  %i.al = icmp sgt i64 %i.z, 0
  br i1 %i.al, label %.lr.ph.preheader.i.i.i.i.i26, label %_ZSt4copyIPNSt7__cxx119sub_matchIPKcEES5_ET0_T_S7_S6_.exit

.lr.ph.preheader.i.i.i.i.i26:                     ; preds = %bb.h
  %i.am = udiv exact i64 %i.z, 24
  br label %.lr.ph.i.i.i.i.i27

.lr.ph.i.i.i.i.i27:                               ; preds = %.lr.ph.i.i.i.i.i27, %.lr.ph.preheader.i.i.i.i.i26
  %.012.i.i.i.i.i28 = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i27 ], [ %i.am, %.lr.ph.preheader.i.i.i.i.i26 ] ; 2 uses
  %.0811.i.i.i.i.i29 = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i27 ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i26 ] ; 3 uses
  %.0910.i.i.i.i.i30 = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i27 ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i26 ] ; 3 uses
  %i.an = load <2 x ptr>, ptr %.0910.i.i.i.i.i30, align 8, !tbaa !173
  store <2 x ptr> %i.an, ptr %.0811.i.i.i.i.i29, align 8, !tbaa !173
  %i.ao = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 16
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !563, !range !78, !noundef !79
  %i.aq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 16
  store i8 %i.ap, ptr %i.aq, align 8, !tbaa !563
  %i.ar = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 24
  %i.at = add nsw i64 %.012.i.i.i.i.i28, -1
  %i.au = icmp samesign ugt i64 %.012.i.i.i.i.i28, 1
  br i1 %i.au, label %.lr.ph.i.i.i.i.i27, label %_ZSt4copyIPNSt7__cxx119sub_matchIPKcEES5_ET0_T_S7_S6_.exit, !llvm.loop !1199

_ZSt4copyIPNSt7__cxx119sub_matchIPKcEES5_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i.i27, %bb.h
  %.not9.i.i.i.i = icmp eq ptr %i.ak, %i.b
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPNSt7__cxx119sub_matchIPKcEES5_ET0_T_S7_S6_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i ], [ %i.x, %_ZSt4copyIPNSt7__cxx119sub_matchIPKcEES5_ET0_T_S7_S6_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i ], [ %i.ak, %_ZSt4copyIPNSt7__cxx119sub_matchIPKcEES5_ET0_T_S7_S6_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0810.i.i.i.i, i64 24, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 24 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.av, %i.b
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !1200

_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !552
  br label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit.loopexit, %bb.g, %_ZSt4copyIPNSt7__cxx119sub_matchIPKcEES5_ET0_T_S7_S6_.exit, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EE13_M_deallocateEPS4_m.exit
  %i.ax = phi ptr [ %i.p, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EE13_M_deallocateEPS4_m.exit ], [ %.pre, %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit.loopexit ], [ %i.i, %bb.g ], [ %i.i, %_ZSt4copyIPNSt7__cxx119sub_matchIPKcEES5_ET0_T_S7_S6_.exit ], [ %i.i, %.lr.ph.i.i.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.f
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !551
  br label %bb.i

bb.i:                                             ; preds = %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 8 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge283, %bb.a
  %.tr38 = phi i64 [ %2, %bb.a ], [ %.tr38.be284, %tailrecurse.backedge283 ] ; 5 uses
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !614, !nonnull !79, !align !410 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !360
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %.tr38 ; 19 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !375
  switch i32 %i.n, label %common.ret [
    i32 2, label %bb.b
    i32 8, label %bb.k
    i32 9, label %bb.l
    i32 4, label %bb.m
    i32 5, label %bb.r
    i32 6, label %bb.t
    i32 7, label %bb.u
    i32 11, label %bb.v
    i32 3, label %bb.z
    i32 12, label %bb.aa
    i32 1, label %bb.ai
  ]

bb.b:                                             ; preds = %tailrecurse
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.p = load i8, ptr %i.o, align 8, !tbaa !87, !range !78, !noundef !79
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !588
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.tr38 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 5 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !598  ; 4 uses
  %i.v = icmp ne i32 %i.u, 0
  %.sroa.030.0.copyload.pre = load ptr, ptr %i.s, align 8 ; 2 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !600 ; 2 uses
  %.not.i26.a = icmp eq ptr %.sroa.030.0.copyload.pre, %.pre
  %or.cond = select i1 %i.v, i1 %.not.i26.a, i1 false
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %.pre, ptr %i.s, align 8, !tbaa !597
  store i32 1, ptr %i.t, align 8, !tbaa !598
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !87
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.x), !inline_history !1201
  store ptr %.sroa.030.0.copyload.pre, ptr %i.s, align 8, !tbaa !597
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE16_M_rep_once_moreENS9_11_Match_modeEl.exit.sink.split

bb.e:                                             ; preds = %bb.c
  %i.y = icmp slt i32 %i.u, 2
  br i1 %i.y, label %bb.f, label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE16_M_rep_once_moreENS9_11_Match_modeEl.exit

bb.f:                                             ; preds = %bb.e
  %i.z = add nsw i32 %i.u, 1
  store i32 %i.z, ptr %i.t, align 8, !tbaa !598
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !87
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.ab), !inline_history !1201
  %i.ac = load i32, ptr %i.t, align 8, !tbaa !598
  %i.ad = add nsw i32 %i.ac, -1
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE16_M_rep_once_moreENS9_11_Match_modeEl.exit.sink.split

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE16_M_rep_once_moreENS9_11_Match_modeEl.exit.sink.split: ; preds = %bb.f, %bb.d
  %.sink = phi i32 [ %i.u, %bb.d ], [ %i.ad, %bb.f ]
  store i32 %.sink, ptr %i.t, align 8, !tbaa !598
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE16_M_rep_once_moreENS9_11_Match_modeEl.exit

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE16_M_rep_once_moreENS9_11_Match_modeEl.exit: ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE16_M_rep_once_moreENS9_11_Match_modeEl.exit.sink.split, %bb.e
  %i.ae = load i8, ptr %i.i, align 4, !tbaa !601, !range !78, !noundef !79
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %common.ret, label %tailrecurse.backedge283

tailrecurse.backedge283:                          ; preds = %bb.aj, %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE16_M_rep_once_moreENS9_11_Match_modeEl.exit, %bb.o, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE11_M_at_beginEv.exit, %.split, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE9_M_at_endEv.exit, %bb.t, %bb.u
  %.tr38.be284.in = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.tr38.be284 = load i64, ptr %.tr38.be284.in, align 8, !tbaa !363
  br label %tailrecurse

bb.g:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !363
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.ah), !inline_history !1202
  %i.ai = load i8, ptr %i.i, align 4, !tbaa !601, !range !78, !noundef !79
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %common.ret, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !614, !nonnull !79, !align !410
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !360
  %i.an = getelementptr inbounds nuw [48 x i8], ptr %i.am, i64 %.tr38 ; 2 uses
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !588
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %.tr38 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 5 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !598 ; 4 uses
  %i.as = icmp ne i32 %i.ar, 0
  %.sroa.0.0.copyload.pre.i = load ptr, ptr %i.ap, align 8 ; 2 uses
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !600 ; 2 uses
  %.not.i108 = icmp eq ptr %.sroa.0.0.copyload.pre.i, %.pre.i
  %or.cond.i = select i1 %i.as, i1 %.not.i108, i1 false
  br i1 %or.cond.i, label %bb.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.h
  store ptr %.pre.i, ptr %i.ap, align 8, !tbaa !597
  store i32 1, ptr %i.aq, align 8, !tbaa !598
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !87
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.au), !inline_history !1201
  store ptr %.sroa.0.0.copyload.pre.i, ptr %i.ap, align 8, !tbaa !597
  br label %.sink.split.i

bb.i:                                             ; preds = %bb.h
  %i.av = icmp slt i32 %i.ar, 2
  br i1 %i.av, label %bb.j, label %common.ret

bb.j:                                             ; preds = %bb.i
  %i.aw = add nsw i32 %i.ar, 1
  store i32 %i.aw, ptr %i.aq, align 8, !tbaa !598
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !87
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.ay), !inline_history !1201
  %i.az = load i32, ptr %i.aq, align 8, !tbaa !598
  %i.ba = add nsw i32 %i.az, -1
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.j, %._crit_edge.i
  %.sink.i109 = phi i32 [ %i.ba, %bb.j ], [ %i.ar, %._crit_edge.i ]
  store i32 %.sink.i109, ptr %i.aq, align 8, !tbaa !598
  br label %common.ret

common.ret:                                       ; preds = %.sink.split.i, %bb.i, %bb.z, %bb.g, %bb.v, %_ZNKSt8__detail6_StateIcE10_M_matchesEc.exit, %bb.y, %.thread.i, %bb.ac, %bb.ae, %bb.ag, %bb.ah, %tailrecurse, %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE16_M_rep_once_moreENS9_11_Match_modeEl.exit, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE11_M_at_beginEv.exit, %.split, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE9_M_at_endEv.exit, %bb.t, %bb.u, %bb.q, %bb.n, %bb.p, %bb.s, %bb.aj, %bb.ak, %bb.l, %bb.k
  ret void

bb.k:                                             ; preds = %tailrecurse
  %i.bb = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !87
  %i.bd = load ptr, ptr %0, align 8, !tbaa !552
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %i.bc ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !554
  %i.bg = load ptr, ptr %i.c, align 8, !tbaa !600
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !554
  %i.bh = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !363
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.bi), !inline_history !1203
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !554
  br label %common.ret

bb.l:                                             ; preds = %tailrecurse
  %i.bj = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !87
  %i.bl = load ptr, ptr %0, align 8, !tbaa !552
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %i.bk ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 3 uses
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 8
  %i.bn = load ptr, ptr %i.c, align 8, !tbaa !600
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !563
  %i.bo = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !363
  %i.bq = load <2 x ptr>, ptr %i.bm, align 8
  store ptr %i.bn, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !555
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.bp), !inline_history !1204
  store <2 x ptr> %i.bq, ptr %i.bm, align 8, !tbaa !173
  store i8 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !563
  br label %common.ret

bb.m:                                             ; preds = %tailrecurse
  %i.br = load ptr, ptr %i.c, align 8, !tbaa !600 ; 2 uses
  %i.bs = load ptr, ptr %i.g, align 8, !tbaa !592
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bu = load i32, ptr %i.f, align 8, !tbaa !604 ; 2 uses
  %i.bv = and i32 %i.bu, 1
  %.not.i27 = icmp eq i32 %i.bv, 0
  br i1 %.not.i27, label %bb.o, label %common.ret

bb.o:                                             ; preds = %bb.n
  %i.bw = and i32 %i.bu, 128
  %.not2.i = icmp eq i32 %i.bw, 0
  br i1 %.not2.i, label %tailrecurse.backedge283, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = load ptr, ptr %i.e, align 8, !tbaa !615, !nonnull !79, !align !410
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !565
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !418
  %i.cc = and i32 %i.cb, 2064
  %i.cd = icmp eq i32 %i.cc, 2064
  br i1 %i.cd, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE11_M_at_beginEv.exit, label %common.ret

bb.q:                                             ; preds = %bb.m
  %i.ce = load ptr, ptr %i.e, align 8, !tbaa !615, !nonnull !79, !align !410
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !565
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !418
  %i.cj = and i32 %i.ci, 2064
  %i.ck = icmp eq i32 %i.cj, 2064
  br i1 %i.ck, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE11_M_at_beginEv.exit, label %common.ret

_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE11_M_at_beginEv.exit: ; preds = %bb.p, %bb.q
  %i.cl = getelementptr inbounds i8, ptr %i.br, i64 -1
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !87
  %i.cn = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE21_M_is_line_terminatorEc(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef signext %i.cm)
  br i1 %i.cn, label %tailrecurse.backedge283, label %common.ret

bb.r:                                             ; preds = %tailrecurse
  %i.co = load ptr, ptr %i.c, align 8, !tbaa !600 ; 2 uses
  %i.cp = load ptr, ptr %i.d, align 8, !tbaa !593
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %.split, label %bb.s

.split:                                           ; preds = %bb.r
  %i.cr = load i32, ptr %i.f, align 8, !tbaa !604
  %i.cs = and i32 %i.cr, 2
  %.not.i29 = icmp eq i32 %i.cs, 0
  br i1 %.not.i29, label %tailrecurse.backedge283, label %common.ret

bb.s:                                             ; preds = %bb.r
  %i.ct = load ptr, ptr %i.e, align 8, !tbaa !615, !nonnull !79, !align !410
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !565
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !418
  %i.cy = and i32 %i.cx, 2064
  %i.cz = icmp eq i32 %i.cy, 2064
  br i1 %i.cz, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE9_M_at_endEv.exit, label %common.ret

_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE9_M_at_endEv.exit: ; preds = %bb.s
  %i.da = load i8, ptr %i.co, align 1, !tbaa !87
  %i.db = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE21_M_is_line_terminatorEc(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef signext %i.da)
  br i1 %i.db, label %tailrecurse.backedge283, label %common.ret

bb.t:                                             ; preds = %tailrecurse
  %i.dc = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE16_M_word_boundaryEv(ptr noundef nonnull align 8 dereferenceable(117) %0), !inline_history !1205
  %i.dd = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !87, !range !78, !noundef !79
  %i.df = zext i1 %i.dc to i8
  %.not.i = icmp eq i8 %i.de, %i.df
  br i1 %.not.i, label %common.ret, label %tailrecurse.backedge283

bb.u:                                             ; preds = %tailrecurse
  %i.dg = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !87
  %i.di = tail call noundef zeroext i1 @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE12_M_lookaheadEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i64 noundef %i.dh), !inline_history !1206
  %i.dj = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.dk = load i8, ptr %i.dj, align 8, !tbaa !87, !range !78, !noundef !79
  %i.dl = zext i1 %i.di to i8
  %.not.i24 = icmp eq i8 %i.dk, %i.dl
  br i1 %.not.i24, label %common.ret, label %tailrecurse.backedge283

bb.v:                                             ; preds = %tailrecurse
  %i.dm = load ptr, ptr %i.c, align 8, !tbaa !600 ; 2 uses
  %i.dn = load ptr, ptr %i.d, align 8, !tbaa !593
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %common.ret, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dp = load i8, ptr %i.dm, align 1, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.dp, ptr %i.a, align 1, !tbaa !87
  %i.dq = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !392
  %.not.i.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i, label %bb.x, label %_ZNKSt8__detail6_StateIcE10_M_matchesEc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt25__throw_bad_function_callv() #38
  unreachable

_ZNKSt8__detail6_StateIcE10_M_matchesEc.exit:     ; preds = %bb.w
  %i.ds = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !391
  %i.dv = call noundef zeroext i1 %i.du(ptr noundef nonnull align 8 dereferenceable(32) %i.ds, ptr noundef nonnull align 1 dereferenceable(1) %i.a), !inline_history !1207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.dv, label %bb.y, label %common.ret

bb.y:                                             ; preds = %_ZNKSt8__detail6_StateIcE10_M_matchesEc.exit
  %i.dw = load ptr, ptr %i.c, align 8, !tbaa !600
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 1
  store ptr %i.dx, ptr %i.c, align 8, !tbaa !600
  %i.dy = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !363
  call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.dz), !inline_history !1208
  %i.ea = load ptr, ptr %i.c, align 8, !tbaa !600
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 -1
  store ptr %i.eb, ptr %i.c, align 8, !tbaa !600
  br label %common.ret

bb.z:                                             ; preds = %tailrecurse
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE17_M_handle_backrefENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %.tr38)
  br label %common.ret

bb.aa:                                            ; preds = %tailrecurse
  %i.ec = icmp ne i8 %1, 0
  %i.ed = load ptr, ptr %i.c, align 8, !tbaa !600 ; 4 uses
  %i.ee = load ptr, ptr %i.d, align 8
  %i.ef = icmp eq ptr %i.ed, %i.ee
  %narrow.i = select i1 %i.ec, i1 true, i1 %i.ef  ; 2 uses
  %.sink.i = zext i1 %narrow.i to i8
  store i8 %.sink.i, ptr %i.i, align 4, !tbaa !601
  %i.eg = load ptr, ptr %i.g, align 8, !tbaa !592 ; 2 uses
  %i.eh = icmp eq ptr %i.ed, %i.eg
  br i1 %i.eh, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ei = load i32, ptr %i.f, align 8, !tbaa !604
  %i.ej = and i32 %i.ei, 32
  %.not.i25 = icmp eq i32 %i.ej, 0
  br i1 %.not.i25, label %bb.ac, label %.thread.i

.thread.i:                                        ; preds = %bb.ab
  store i8 0, ptr %i.i, align 4, !tbaa !601
  br label %common.ret

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  br i1 %narrow.i, label %bb.ad, label %common.ret

bb.ad:                                            ; preds = %bb.ac
  %i.ek = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !418
  %i.em = and i32 %i.el, 16
  %.not1.i = icmp eq i32 %i.em, 0
  br i1 %.not1.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !603, !nonnull !79, !align !410
  %i.ep = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.eo, ptr noundef nonnull align 8 dereferenceable(117) %0) ; 0 uses
end_hunk_0
