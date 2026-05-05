inline.NumInlined: 2192
inline.NumDeleted: 629
begin_hunk_0_@_ZN5arrow8internal15DetectUIntWidthEPKmlh:bb.a

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit
  %.090 = phi i8 [ %.0.i, %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit ], [ %2, %.lr.ph.preheader ] ; 5 uses
  %.06789 = phi ptr [ %i.e, %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit ], [ %0, %.lr.ph.preheader ] ; 4 uses
  %i.d = load <16 x i64>, ptr %.06789, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %.06789, i64 128 ; 2 uses
  %i.f = tail call i64 @llvm.vector.reduce.or.v16i64(<16 x i64> %i.d) ; 4 uses
  %i.g = zext nneg i8 %.090 to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @_ZN5arrow8internalL9max_uintsE, i64 %i.g
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal15DetectUIntWidthEPKmlh:bb.a
  br i1 %.not, label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread.loopexitsplit, label %.lr.ph

_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread.loopexitsplit: ; preds = %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit
  %scevgep106 = getelementptr i8, ptr %.06789, i64 128
  br label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread.loopexit

._ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread.loopexit_crit_edge: ; preds = %bb.e
  %scevgep = getelementptr i8, ptr %.06789, i64 128
  br label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread.loopexit

_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread.loopexit: ; preds = %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread.loopexitsplit, %._ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread.loopexit_crit_edge
  %.lcssa = phi ptr [ %scevgep, %._ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread.loopexit_crit_edge ], [ %scevgep106, %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread.loopexitsplit ]
  %.1.ph = phi i8 [ 8, %._ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread.loopexit_crit_edge ], [ %.0.i, %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread.loopexitsplit ]
  br label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread

_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread: ; preds = %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread.loopexit, %bb.b
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal15DetectUIntWidthEPKmPKhlh:bb.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit
  %lsr.iv = phi ptr [ %scevgep130, %.lr.ph.preheader ], [ %scevgep131, %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit ] ; 4 uses
  %.05381 = phi i8 [ %.0.i, %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit ], [ %3, %.lr.ph.preheader ] ; 5 uses
  %.05480.a = phi ptr [ %i.k, %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit ], [ %0, %.lr.ph.preheader ] ; 4 uses
  %scevgep132 = getelementptr i8, ptr %lsr.iv, i64 -8
  %i.g = load <8 x i64>, ptr %.05480.a, align 8, !tbaa !30
  %i.h = load <8 x i8>, ptr %scevgep132, align 1, !tbaa !7
  %i.i = icmp eq <8 x i8> %i.h, zeroinitializer
  %i.j = select <8 x i1> %i.i, <8 x i64> zeroinitializer, <8 x i64> %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %.05480.a, i64 64 ; 2 uses
  %i.l = tail call i64 @llvm.vector.reduce.or.v8i64(<8 x i64> %i.j) ; 4 uses
  %i.m = zext nneg i8 %.05381 to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @_ZN5arrow8internalL9max_uintsE, i64 %i.m
end_hunk_2
begin_hunk_3_@_ZN5arrow8internal15DetectUIntWidthEPKmPKhlh:bb.a
  br i1 %.not, label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread.loopexitsplit, label %.lr.ph

_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread.loopexitsplit: ; preds = %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit
  %lsr.iv.lcssa133 = phi ptr [ %lsr.iv, %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit ]
  %scevgep129 = getelementptr i8, ptr %.05480.a, i64 64
  br label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread.loopexit

._ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread.loopexit_crit_edge: ; preds = %bb.g
  %lsr.iv.lcssa = phi ptr [ %lsr.iv, %bb.g ]
  %scevgep = getelementptr i8, ptr %.05480.a, i64 64
  br label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread.loopexit

_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread.loopexit: ; preds = %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread.loopexitsplit, %._ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread.loopexit_crit_edge
  %.lcssa128 = phi ptr [ %lsr.iv.lcssa, %._ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread.loopexit_crit_edge ], [ %lsr.iv.lcssa133, %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread.loopexitsplit ]
  %.lcssa127 = phi ptr [ %scevgep, %._ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread.loopexit_crit_edge ], [ %scevgep129, %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread.loopexitsplit ]
  %.1.ph = phi i8 [ 8, %._ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread.loopexit_crit_edge ], [ %.0.i, %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread.loopexitsplit ]
  br label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread

_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread: ; preds = %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread.loopexit, %bb.d
end_hunk_3
begin_hunk_4_@_ZN5arrow8internal14DetectIntWidthEPKlPKhlh:bb.a
  br i1 %.not, label %"_ZZN5arrow8internal14DetectIntWidthEPKlPKhlhENK3$_0clEmm.exit.preheader", label %bb.e

"_ZZN5arrow8internal14DetectIntWidthEPKlPKhlhENK3$_0clEmm.exit.preheader": ; preds = %"_ZZN5arrow8internal14DetectIntWidthEPKlPKhlhENK3$_1clEmm.exit"
  %.084.lcssa = phi ptr [ %.084, %"_ZZN5arrow8internal14DetectIntWidthEPKlPKhlhENK3$_1clEmm.exit" ]
  br label %"_ZZN5arrow8internal14DetectIntWidthEPKlPKhlhENK3$_0clEmm.exit"

end_hunk_4
begin_hunk_5_@_ZN5arrow8internal14DetectIntWidthEPKlPKhlh:bb.a
  br i1 %.not19.i, label %"_ZZN5arrow8internal14DetectIntWidthEPKlPKhlhENK3$_1clEmm.exit", label %"_ZZN5arrow8internal14DetectIntWidthEPKlPKhlhENK3$_1clEmm.exit46.preheader.loopexit213", !prof !213, !llvm.loop !220

"_ZZN5arrow8internal14DetectIntWidthEPKlPKhlhENK3$_0clEmm.exit": ; preds = %"_ZZN5arrow8internal14DetectIntWidthEPKlPKhlhENK3$_0clEmm.exit.preheader", %bb.f
  %lsr.iv228 = phi ptr [ %lsr.iv, %"_ZZN5arrow8internal14DetectIntWidthEPKlPKhlhENK3$_0clEmm.exit.preheader" ], [ %scevgep229, %bb.f ] ; 2 uses
  %.185 = phi ptr [ %i.r, %bb.f ], [ %.084.lcssa, %"_ZZN5arrow8internal14DetectIntWidthEPKlPKhlhENK3$_0clEmm.exit.preheader" ] ; 3 uses
  %scevgep230.a = getelementptr i8, ptr %lsr.iv228, i64 1
  %i.n = icmp ult ptr %.185, %i.d
end_hunk_5
begin_hunk_6_@_ZN5arrow8internal14DetectIntWidthEPKlPKhlh:bb.a
  br i1 %.not23, label %"_ZZN5arrow8internal14DetectIntWidthEPKlPKhlhENK3$_0clEmm.exit49.preheader", label %bb.g

"_ZZN5arrow8internal14DetectIntWidthEPKlPKhlhENK3$_0clEmm.exit49.preheader": ; preds = %"_ZZN5arrow8internal14DetectIntWidthEPKlPKhlhENK3$_1clEmm.exit46"
  %.387.lcssa = phi ptr [ %.387, %"_ZZN5arrow8internal14DetectIntWidthEPKlPKhlhENK3$_1clEmm.exit46" ]
  br label %"_ZZN5arrow8internal14DetectIntWidthEPKlPKhlhENK3$_0clEmm.exit49"

end_hunk_6
begin_hunk_7_@_ZN5arrow8internal14DetectIntWidthEPKlPKhlh:bb.a
  br i1 %.not19.i45, label %"_ZZN5arrow8internal14DetectIntWidthEPKlPKhlhENK3$_1clEmm.exit46", label %"_ZZN5arrow8internal14DetectIntWidthEPKlPKhlhENK3$_1clEmm.exit59.preheader.loopexit211", !prof !213, !llvm.loop !222

"_ZZN5arrow8internal14DetectIntWidthEPKlPKhlhENK3$_0clEmm.exit49": ; preds = %"_ZZN5arrow8internal14DetectIntWidthEPKlPKhlhENK3$_0clEmm.exit49.preheader", %bb.h
  %lsr.iv237 = phi ptr [ %lsr.iv235, %"_ZZN5arrow8internal14DetectIntWidthEPKlPKhlhENK3$_0clEmm.exit49.preheader" ], [ %scevgep238, %bb.h ] ; 2 uses
  %.488 = phi ptr [ %i.af, %bb.h ], [ %.387.lcssa, %"_ZZN5arrow8internal14DetectIntWidthEPKlPKhlhENK3$_0clEmm.exit49.preheader" ] ; 3 uses
  %scevgep239 = getelementptr i8, ptr %lsr.iv237, i64 1
  %i.ab = icmp ult ptr %.488, %i.d
end_hunk_7
begin_hunk_8_@_ZN5arrow8internal7ToCharsIaJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_:bb.a
  br i1 %i.cs, label %.lr.ph.split.backedge, label %bb.ad, !prof !206

bb.ad:                                            ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i29
  %.lcssa150 = phi i64 [ %i.cr, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i29 ]
  %.026.i24.lcssa = phi ptr [ %.026.i24, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i29 ] ; 5 uses
  %.0.i25.lcssa = phi i32 [ %.0.i25, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i29 ] ; 3 uses
end_hunk_8
begin_hunk_9_@_ZN5arrow8internal7ToCharsIaJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_:bb.a
  br i1 %i.ct, label %.lr.ph.preheader.i.i.i39, label %._crit_edge.i.i.i31

.lr.ph.preheader.i.i.i39:                         ; preds = %bb.ad
  %i.cu = add i32 %.0.i.i.i30, -2
  br label %.lr.ph.i9.i.i40

.lr.ph.i9.i.i40:                                  ; preds = %.lr.ph.i9.i.i40, %.lr.ph.preheader.i.i.i39
end_hunk_9
begin_hunk_10_@_ZN5arrow8internal7ToCharsIsJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_:bb.a
  br i1 %i.cs, label %.lr.ph.split.backedge, label %bb.ad, !prof !206

bb.ad:                                            ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i29
  %.lcssa150 = phi i64 [ %i.cr, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i29 ]
  %.026.i24.lcssa = phi ptr [ %.026.i24, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i29 ] ; 5 uses
  %.0.i25.lcssa = phi i32 [ %.0.i25, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i29 ] ; 3 uses
end_hunk_10
begin_hunk_11_@_ZN5arrow8internal7ToCharsIsJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_:bb.a
  br i1 %i.ct, label %.lr.ph.preheader.i.i.i39, label %._crit_edge.i.i.i31

.lr.ph.preheader.i.i.i39:                         ; preds = %bb.ad
  %i.cu = add i32 %.0.i.i.i30, -2
  br label %.lr.ph.i9.i.i40

.lr.ph.i9.i.i40:                                  ; preds = %.lr.ph.i9.i.i40, %.lr.ph.preheader.i.i.i39
end_hunk_11
begin_hunk_12_@_ZN5arrow8internal7ToCharsIiJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_:bb.a
  br i1 %i.cr, label %.lr.ph.split.backedge, label %bb.ad, !prof !206

bb.ad:                                            ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i29
  %.lcssa150 = phi i64 [ %i.cq, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i29 ]
  %.026.i24.lcssa = phi ptr [ %.026.i24, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i29 ] ; 5 uses
  %.0.i25.lcssa = phi i32 [ %.0.i25, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i29 ] ; 3 uses
end_hunk_12
begin_hunk_13_@_ZN5arrow8internal7ToCharsIiJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_:bb.a
  br i1 %i.cs, label %.lr.ph.preheader.i.i.i39, label %._crit_edge.i.i.i31

.lr.ph.preheader.i.i.i39:                         ; preds = %bb.ad
  %i.ct = add i32 %.0.i.i.i30, -2
  br label %.lr.ph.i9.i.i40

.lr.ph.i9.i.i40:                                  ; preds = %.lr.ph.i9.i.i40, %.lr.ph.preheader.i.i.i39
end_hunk_13
begin_hunk_14_@_ZN5arrow8internal7ToCharsIlJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_:bb.a
  br i1 %i.cp, label %.lr.ph.split.backedge, label %bb.ad, !prof !206

bb.ad:                                            ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i29
  %.lcssa150 = phi i64 [ %i.co, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i29 ]
  %.026.i24.lcssa = phi ptr [ %.026.i24, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i29 ] ; 5 uses
  %.0.i25.lcssa = phi i64 [ %.0.i25, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i29 ] ; 3 uses
end_hunk_14
begin_hunk_15_@_ZN5arrow8internal7ToCharsIlJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_:bb.a
  br i1 %i.cq, label %.lr.ph.preheader.i.i.i39, label %._crit_edge.i.i.i31

.lr.ph.preheader.i.i.i39:                         ; preds = %bb.ad
  %i.cr = add i32 %.0.i.i.i30, -2
  br label %.lr.ph.i9.i.i40

.lr.ph.i9.i.i40:                                  ; preds = %.lr.ph.i9.i.i40, %.lr.ph.preheader.i.i.i39
end_hunk_15
begin_hunk_16_@_ZN5arrow8internal7ToCharsIjJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_:bb.a
  br i1 %i.bu, label %.lr.ph.backedge, label %bb.y, !prof !206

bb.y:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i27
  %.lcssa147 = phi i64 [ %i.bt, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i27 ]
  %.lcssa146 = phi ptr [ %i.bh, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i27 ] ; 5 uses
  br i1 %i.p, label %.lr.ph.preheader.i.i.i38, label %._crit_edge.i.i.i29

.lr.ph.preheader.i.i.i38:                         ; preds = %bb.y
  %i.bv = add i32 %.0.i.i.i28, -2
  br label %.lr.ph.i9.i.i39

.lr.ph.i9.i.i39:                                  ; preds = %.lr.ph.i9.i.i39, %.lr.ph.preheader.i.i.i38
end_hunk_16
begin_hunk_17_@_ZN5arrow8internal7ToCharsImJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_:bb.a
  br i1 %i.bs, label %.lr.ph.backedge, label %bb.y, !prof !206

bb.y:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i27
  %.lcssa147 = phi i64 [ %i.br, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i27 ]
  %.lcssa146 = phi ptr [ %i.bf, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i27 ] ; 5 uses
  br i1 %i.p, label %.lr.ph.preheader.i.i.i38, label %._crit_edge.i.i.i29

.lr.ph.preheader.i.i.i38:                         ; preds = %bb.y
  %i.bt = add i32 %.0.i.i.i28, -2
  br label %.lr.ph.i9.i.i39

.lr.ph.i9.i.i39:                                  ; preds = %.lr.ph.i9.i.i39, %.lr.ph.preheader.i.i.i38
end_hunk_17
