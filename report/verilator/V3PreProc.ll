Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3PreProc?download=true
inline.NumInlined: 6861
inline.NumDeleted: 1064
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_Z11V3PreLexlexv:bb.a
  %.not.i661 = icmp eq i8 %i.jhh, 0
  br i1 %.not.i661, label %bb.ahe, label %bb.ahd

bb.ahd:                                           ; preds = %.lr.ph27.i658
  %i.jhi = zext i8 %i.jhh to i64
  %i.jhj = getelementptr inbounds nuw i8, ptr @_ZL5yy_ec, i64 %i.jhi
  %i.jhk = load i8, ptr %i.jhj, align 1, !tbaa !45
  br label %bb.ahe

bb.ahe:                                           ; preds = %bb.ahd, %.lr.ph27.i658
  %i.jhl = phi i8 [ %i.jhk, %bb.ahd ], [ 1, %.lr.ph27.i658 ] ; 2 uses
  %i.jhm = sext i32 %.01724.i660 to i64           ; 3 uses
  %i.jhn = getelementptr inbounds [4 x i8], ptr @_ZL9yy_accept, i64 %i.jhm
  %i.jho = load i32, ptr %i.jhn, align 4, !tbaa !28
  %.not20.i662 = icmp eq i32 %i.jho, 0
  br i1 %.not20.i662, label %bb.ahg, label %bb.ahf

bb.ahf:                                           ; preds = %bb.ahe
  store i32 %.01724.i660, ptr @_ZL23yy_last_accepting_state, align 4, !tbaa !28
  store ptr %.01625.i659, ptr @_ZL22yy_last_accepting_cpos, align 8, !tbaa !27
  br label %bb.ahg

bb.ahg:                                           ; preds = %bb.ahf, %bb.ahe
  %i.jhp = getelementptr inbounds [4 x i8], ptr @_ZL7yy_base, i64 %i.jhm
  %i.jhq = load i32, ptr %i.jhp, align 4, !tbaa !28
  %i.jhr = zext i8 %i.jhl to i32
  %i.jhs = add nsw i32 %i.jhq, %i.jhr
  %i.jht = sext i32 %i.jhs to i64                 ; 2 uses
  %i.jhu = getelementptr inbounds [4 x i8], ptr @_ZL6yy_chk, i64 %i.jht
  %i.jhv = load i32, ptr %i.jhu, align 4, !tbaa !28
  %.not2122.i663 = icmp eq i32 %i.jhv, %.01724.i660
  br i1 %.not2122.i663, label %._crit_edge.i668, label %.lr.ph.i664

.lr.ph.i664:                                      ; preds = %bb.ahg, %bb.ahi
  %i.jhw = phi i64 [ %i.jid, %bb.ahi ], [ %i.jhm, %bb.ahg ]
  %.023.i665 = phi i8 [ %.1.i666, %bb.ahi ], [ %i.jhl, %bb.ahg ] ; 2 uses
  %i.jhx = getelementptr inbounds [4 x i8], ptr @_ZL6yy_def, i64 %i.jhw
  %i.jhy = load i32, ptr %i.jhx, align 4, !tbaa !28 ; 3 uses
  %i.jhz = icmp sgt i32 %i.jhy, 695
  br i1 %i.jhz, label %bb.ahh, label %bb.ahi

bb.ahh:                                           ; preds = %.lr.ph.i664
  %i.jia = zext i8 %.023.i665 to i64
  %i.jib = getelementptr inbounds nuw i8, ptr @_ZL7yy_meta, i64 %i.jia
  %i.jic = load i8, ptr %i.jib, align 1, !tbaa !45
  br label %bb.ahi

bb.ahi:                                           ; preds = %bb.ahh, %.lr.ph.i664
  %.1.i666 = phi i8 [ %i.jic, %bb.ahh ], [ %.023.i665, %.lr.ph.i664 ] ; 2 uses
  %i.jid = sext i32 %i.jhy to i64                 ; 2 uses
  %i.jie = getelementptr inbounds [4 x i8], ptr @_ZL7yy_base, i64 %i.jid
  %i.jif = load i32, ptr %i.jie, align 4, !tbaa !28
  %i.jig = zext i8 %.1.i666 to i32
  %i.jih = add nsw i32 %i.jif, %i.jig
  %i.jii = sext i32 %i.jih to i64                 ; 2 uses
  %i.jij = getelementptr inbounds [4 x i8], ptr @_ZL6yy_chk, i64 %i.jii
  %i.jik = load i32, ptr %i.jij, align 4, !tbaa !28
  %.not21.i667 = icmp eq i32 %i.jik, %i.jhy
  br i1 %.not21.i667, label %._crit_edge.i668, label %.lr.ph.i664, !llvm.loop !795

._crit_edge.i668:                                 ; preds = %bb.ahi, %bb.ahg
  %.lcssa.i669 = phi i64 [ %i.jht, %bb.ahg ], [ %i.jii, %bb.ahi ]
  %i.jil = getelementptr inbounds [4 x i8], ptr @_ZL6yy_nxt, i64 %.lcssa.i669
  %i.jim = load i32, ptr %i.jil, align 4, !tbaa !28 ; 2 uses
  %i.jin = getelementptr inbounds nuw i8, ptr %.01625.i659, i64 1 ; 2 uses
  %exitcond.not.i670 = icmp eq ptr %i.jin, %i.jha
  br i1 %exitcond.not.i670, label %.preheader.outer.backedge, label %.lr.ph27.i658, !llvm.loop !796

_ZL21yy_get_previous_statev.exit656:              ; preds = %bb.agi, %_ZL18yy_get_next_bufferv.exit.jt1
  %.pre-phi1546 = phi i64 [ %.pre1545, %_ZL18yy_get_next_bufferv.exit.jt1 ], [ %i.izb, %bb.agi ]
  %i.jio = phi ptr [ %i.jfp, %_ZL18yy_get_next_bufferv.exit.jt1 ], [ %i.iys, %bb.agi ]
  %i.jip = getelementptr inbounds i8, ptr %i.jio, i64 %.pre-phi1546
  store ptr %i.jip, ptr @_ZL10yy_c_buf_p, align 8, !tbaa !27
  %i.jiq = load i32, ptr @_ZL8yy_start, align 4, !tbaa !28
  %i.jir = add nsw i32 %i.jiq, -1
  %i.jis = sdiv i32 %i.jir, 2
  %i.jit = add nsw i32 %i.jis, 180
  br label %bb.ae

bb.ahj:                                           ; preds = %bb.ae
  call fastcc void @_ZL14yy_fatal_errorPKc(ptr noundef nonnull @.str.34) #42
  unreachable

.loopexit:                                        ; preds = %bb.aad, %bb.lt, %bb.kl, %bb.ae, %bb.ae, %bb.ae, %bb.ae, %bb.ae, %bb.ae, %bb.ae, %bb.ae, %_ZN8V3PreLex12curFilelinepEv.exit468, %bb.hy, %_ZN8V3PreLex12curFilelinepEv.exit460, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit464, %_ZN8V3PreLex12curFilelinepEv.exit387, %_ZN8V3PreLex12curFilelinepEv.exit632, %_ZN8V3PreLex12curFilelinepEv.exit627, %_ZN8V3PreLex12curFilelinepEv.exit626, %_ZN8V3PreLex12curFilelinepEv.exit625, %_ZN8V3PreLex12curFilelinepEv.exit624, %_ZN8V3PreLex12curFilelinepEv.exit623, %_ZN8V3PreLex12curFilelinepEv.exit622, %_ZN8V3PreLex12curFilelinepEv.exit621, %_ZN8V3PreLex12curFilelinepEv.exit620, %_ZN8V3PreLex12curFilelinepEv.exit619, %_ZN8V3PreLex12curFilelinepEv.exit618, %_ZN8V3PreLex12curFilelinepEv.exit617, %_ZN8V3PreLex12curFilelinepEv.exit616, %_ZN8V3PreLex12curFilelinepEv.exit615, %_ZN8V3PreLex12curFilelinepEv.exit614, %_ZN8V3PreLex12curFilelinepEv.exit613, %_ZN8V3PreLex12curFilelinepEv.exit612, %_ZN8V3PreLex12curFilelinepEv.exit611, %_ZN8V3PreLex12curFilelinepEv.exit610, %_ZN8V3PreLex12curFilelinepEv.exit609, %_ZN8V3PreLex12curFilelinepEv.exit608, %bb.aat, %bb.aam, %_ZN8V3PreLex12curFilelinepEv.exit589, %_ZN8V3PreLex12curFilelinepEv.exit586, %_ZN8V3PreLex12curFilelinepEv.exit585, %_ZN8V3PreLex12curFilelinepEv.exit582, %_ZN8V3PreLex12curFilelinepEv.exit581, %_ZN8V3PreLex12curFilelinepEv.exit580, %_ZN8V3PreLex12curFilelinepEv.exit579, %_ZN8V3PreLex12curFilelinepEv.exit578, %_ZN8V3PreLex12curFilelinepEv.exit577, %_ZN8V3PreLex12curFilelinepEv.exit576, %_ZN8V3PreLex12curFilelinepEv.exit575, %_ZN8V3PreLex12curFilelinepEv.exit574, %_ZN8V3PreLex12curFilelinepEv.exit573, %_ZN8V3PreLex12curFilelinepEv.exit572, %_ZN8V3PreLex12curFilelinepEv.exit571, %_ZN8V3PreLex12curFilelinepEv.exit570, %_ZN8V3PreLex12curFilelinepEv.exit569, %_ZN8V3PreLex12curFilelinepEv.exit568, %_ZN8V3PreLex12curFilelinepEv.exit558, %_ZN8V3PreLex12curFilelinepEv.exit557, %_ZN8V3PreLex12curFilelinepEv.exit554, %_ZN8V3PreLex12curFilelinepEv.exit537, %_ZN8V3PreLex12curFilelinepEv.exit534, %bb.re, %_ZN8V3PreLex12curFilelinepEv.exit529, %_ZN8V3PreLex12curFilelinepEv.exit528, %_ZN8V3PreLex12curFilelinepEv.exit527, %_ZN8V3PreLex12curFilelinepEv.exit524, %_ZN8V3PreLex12curFilelinepEv.exit523, %_ZN8V3PreLex12curFilelinepEv.exit522, %_ZN8V3PreLex12curFilelinepEv.exit521, %_ZN8V3PreLex12curFilelinepEv.exit520, %_ZN8V3PreLex12curFilelinepEv.exit517, %_ZN8V3PreLex12curFilelinepEv.exit516, %_ZN8V3PreLex12curFilelinepEv.exit515, %_ZN8V3PreLex12curFilelinepEv.exit514, %_ZN8V3PreLex12curFilelinepEv.exit513, %_ZN8V3PreLex12curFilelinepEv.exit508, %_ZN8V3PreLex12curFilelinepEv.exit507, %_ZN8V3PreLex12curFilelinepEv.exit506, %_ZN8V3PreLex12curFilelinepEv.exit505, %_ZN8V3PreLex12curFilelinepEv.exit504, %_ZN8V3PreLex12curFilelinepEv.exit503, %_ZN8V3PreLex12curFilelinepEv.exit502, %_ZN8V3PreLex12curFilelinepEv.exit501, %_ZN8V3PreLex12curFilelinepEv.exit500, %_ZN8V3PreLex12curFilelinepEv.exit499, %_ZN8V3PreLex12curFilelinepEv.exit498, %_ZN8V3PreLex12curFilelinepEv.exit494, %_ZN8V3PreLex12curFilelinepEv.exit489, %_ZN8V3PreLex12curFilelinepEv.exit488, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit483, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit475, %_ZN8V3PreLex12curFilelinepEv.exit470, %bb.if, %_ZN8V3PreLex12curFilelinepEv.exit469, %bb.hj, %bb.ga, %_ZN8V3PreLex12curFilelinepEv.exit435, %_ZN8V3PreLex12curFilelinepEv.exit434, %_ZN8V3PreLex12curFilelinepEv.exit433, %_ZN8V3PreLex12curFilelinepEv.exit432, %_ZN8V3PreLex12curFilelinepEv.exit431, %_ZN8V3PreLex12curFilelinepEv.exit430, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426, %_ZN8V3PreLex12curFilelinepEv.exit421, %bb.el, %_ZN8V3PreLex12curFilelinepEv.exit386, %_ZN8V3PreLex12curFilelinepEv.exit385, %_ZN8V3PreLex12curFilelinepEv.exit384, %_ZN8V3PreLex12curFilelinepEv.exit383, %_ZN8V3PreLex12curFilelinepEv.exit382, %_ZN8V3PreLex12curFilelinepEv.exit381, %_ZN8V3PreLex12curFilelinepEv.exit380, %_ZN8V3PreLex12curFilelinepEv.exit379, %_ZN8V3PreLex12curFilelinepEv.exit378, %_ZN8V3PreLex12curFilelinepEv.exit377, %_ZN8V3PreLex12curFilelinepEv.exit376, %_ZN8V3PreLex12curFilelinepEv.exit375, %_ZN8V3PreLex12curFilelinepEv.exit374, %_ZN8V3PreLex12curFilelinepEv.exit
  %.0 = phi i32 [ 305, %_ZN8V3PreLex12curFilelinepEv.exit ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit374 ], [ 264, %_ZN8V3PreLex12curFilelinepEv.exit375 ], [ 261, %_ZN8V3PreLex12curFilelinepEv.exit376 ], [ 262, %_ZN8V3PreLex12curFilelinepEv.exit377 ], [ 263, %_ZN8V3PreLex12curFilelinepEv.exit378 ], [ 259, %_ZN8V3PreLex12curFilelinepEv.exit379 ], [ 257, %_ZN8V3PreLex12curFilelinepEv.exit380 ], [ 258, %_ZN8V3PreLex12curFilelinepEv.exit381 ], [ 256, %_ZN8V3PreLex12curFilelinepEv.exit382 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit383 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit384 ], [ 260, %_ZN8V3PreLex12curFilelinepEv.exit385 ], [ 265, %_ZN8V3PreLex12curFilelinepEv.exit386 ], [ 304, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit464 ], [ %., %_ZN8V3PreLex12curFilelinepEv.exit387 ], [ 304, %bb.el ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit421 ], [ 304, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit430 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit431 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit432 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit433 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit434 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit435 ], [ 304, %bb.ga ], [ 304, %bb.hj ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit632 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit460 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit469 ], [ 304, %bb.if ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit470 ], [ 304, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit475 ], [ 301, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit483 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit488 ], [ 400, %_ZN8V3PreLex12curFilelinepEv.exit489 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit468 ], [ 400, %_ZN8V3PreLex12curFilelinepEv.exit494 ], [ 304, %bb.hy ], [ 310, %_ZN8V3PreLex12curFilelinepEv.exit498 ], [ 400, %_ZN8V3PreLex12curFilelinepEv.exit499 ], [ 311, %_ZN8V3PreLex12curFilelinepEv.exit500 ], [ 310, %_ZN8V3PreLex12curFilelinepEv.exit501 ], [ 300, %_ZN8V3PreLex12curFilelinepEv.exit502 ], [ 312, %_ZN8V3PreLex12curFilelinepEv.exit503 ], [ 306, %_ZN8V3PreLex12curFilelinepEv.exit504 ], [ 313, %_ZN8V3PreLex12curFilelinepEv.exit505 ], [ 314, %_ZN8V3PreLex12curFilelinepEv.exit506 ], [ 305, %_ZN8V3PreLex12curFilelinepEv.exit507 ], [ 305, %_ZN8V3PreLex12curFilelinepEv.exit508 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit513 ], [ 400, %_ZN8V3PreLex12curFilelinepEv.exit514 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit515 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit516 ], [ 400, %_ZN8V3PreLex12curFilelinepEv.exit517 ], [ 301, %_ZN8V3PreLex12curFilelinepEv.exit520 ], [ 305, %_ZN8V3PreLex12curFilelinepEv.exit521 ], [ 305, %_ZN8V3PreLex12curFilelinepEv.exit522 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit523 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit524 ], [ 309, %_ZN8V3PreLex12curFilelinepEv.exit527 ], [ 309, %_ZN8V3PreLex12curFilelinepEv.exit528 ], [ 309, %_ZN8V3PreLex12curFilelinepEv.exit529 ], [ 309, %bb.re ], [ 303, %_ZN8V3PreLex12curFilelinepEv.exit534 ], [ 309, %_ZN8V3PreLex12curFilelinepEv.exit537 ], [ 303, %_ZN8V3PreLex12curFilelinepEv.exit554 ], [ 302, %_ZN8V3PreLex12curFilelinepEv.exit557 ], [ 302, %_ZN8V3PreLex12curFilelinepEv.exit558 ], [ 400, %_ZN8V3PreLex12curFilelinepEv.exit568 ], [ 400, %_ZN8V3PreLex12curFilelinepEv.exit569 ], [ 303, %_ZN8V3PreLex12curFilelinepEv.exit570 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit571 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit572 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit573 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit574 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit575 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit576 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit577 ], [ 300, %_ZN8V3PreLex12curFilelinepEv.exit578 ], [ 305, %_ZN8V3PreLex12curFilelinepEv.exit579 ], [ 305, %_ZN8V3PreLex12curFilelinepEv.exit580 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit581 ], [ 303, %_ZN8V3PreLex12curFilelinepEv.exit582 ], [ 400, %_ZN8V3PreLex12curFilelinepEv.exit585 ], [ 305, %_ZN8V3PreLex12curFilelinepEv.exit586 ], [ 310, %_ZN8V3PreLex12curFilelinepEv.exit589 ], [ 0, %bb.ae ], [ 307, %bb.aam ], [ 307, %bb.aat ], [ 303, %_ZN8V3PreLex12curFilelinepEv.exit608 ], [ 303, %_ZN8V3PreLex12curFilelinepEv.exit609 ], [ 303, %_ZN8V3PreLex12curFilelinepEv.exit610 ], [ 303, %_ZN8V3PreLex12curFilelinepEv.exit611 ], [ 303, %_ZN8V3PreLex12curFilelinepEv.exit612 ], [ 303, %_ZN8V3PreLex12curFilelinepEv.exit613 ], [ 303, %_ZN8V3PreLex12curFilelinepEv.exit614 ], [ 303, %_ZN8V3PreLex12curFilelinepEv.exit615 ], [ 305, %_ZN8V3PreLex12curFilelinepEv.exit616 ], [ 303, %_ZN8V3PreLex12curFilelinepEv.exit617 ], [ 303, %_ZN8V3PreLex12curFilelinepEv.exit618 ], [ 400, %_ZN8V3PreLex12curFilelinepEv.exit619 ], [ 306, %_ZN8V3PreLex12curFilelinepEv.exit620 ], [ 313, %_ZN8V3PreLex12curFilelinepEv.exit621 ], [ 305, %_ZN8V3PreLex12curFilelinepEv.exit622 ], [ 0, %_ZN8V3PreLex12curFilelinepEv.exit623 ], [ 300, %_ZN8V3PreLex12curFilelinepEv.exit624 ], [ 312, %_ZN8V3PreLex12curFilelinepEv.exit625 ], [ 314, %_ZN8V3PreLex12curFilelinepEv.exit626 ], [ 305, %_ZN8V3PreLex12curFilelinepEv.exit627 ], [ 0, %bb.ae ], [ 0, %bb.ae ], [ 0, %bb.ae ], [ 0, %bb.ae ], [ 0, %bb.ae ], [ 0, %bb.ae ], [ 0, %bb.ae ], [ 301, %bb.lt ], [ 301, %bb.kl ], [ 304, %bb.aad ]
  ret i32 %.0

bb.ahk:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit486, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit478, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit467, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit451, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429, %bb.em
  %.pn368.pn.pn = phi { ptr, i32 } [ %.pn368.pn, %bb.em ], [ %.pn352, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429 ], [ %.pn350, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit451 ], [ %.pn348, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444 ], [ %.pn345, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459 ], [ %.pn342, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit467 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit478 ], [ %i.bkg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit486 ]
  resume { ptr, i32 } %.pn368.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noalias noundef nonnull ptr @_Z22V3PreLex_create_bufferP8_IO_FILEi(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #41 ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZL14yy_fatal_errorPKc(ptr noundef nonnull @.str.35) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %1, ptr %i.b, align 8, !tbaa !39
  %i.c = add nsw i32 %1, 2
  %i.d = sext i32 %i.c to i64
  %i.e = tail call noalias noundef ptr @malloc(i64 noundef %i.d) #41 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !40
  %.not9 = icmp eq ptr %i.e, null
  br i1 %.not9, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZL14yy_fatal_errorPKc(ptr noundef nonnull @.str.35) #42
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 1, ptr %i.g, align 8, !tbaa !41
  tail call fastcc void @_ZL20V3PreLex_init_bufferP15yy_buffer_stateP8_IO_FILE(ptr noundef nonnull %i.a, ptr noundef %0)
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare void @_ZN8FileLine12forwardTokenEPKcmb(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL9linenoIncv() unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr @_ZN8V3PreLex13s_currentLexpE, align 8, !tbaa !49 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54, !noalias !1002 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55, !noalias !1002
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %_ZN8V3PreLex10curStreampEv.exit.i, label %_ZN8V3PreLex10curStreampEv.exit.thread.i

_ZN8V3PreLex10curStreampEv.exit.i:                ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !56, !noalias !1002
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !57
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 504
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !59   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.n = load i32, ptr %i.m, align 8, !tbaa !147  ; 2 uses
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %_ZN8V3PreLex12curFilelinepEv.exit.i, label %_ZN8V3PreLex10curStreampEv.exit1.i

_ZN8V3PreLex10curStreampEv.exit.thread.i:         ; preds = %bb.a
  %i.o = getelementptr inbounds i8, ptr %i.c, i64 -8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !59   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %i.r = load i32, ptr %i.q, align 8, !tbaa !147  ; 2 uses
  %.not2.i = icmp eq i32 %i.r, 0
  br i1 %.not2.i, label %_ZN8V3PreLex12curFilelinepEv.exit.i, label %_ZN8V3PreLex10curStreampEv.exit1.i

_ZN8V3PreLex10curStreampEv.exit1.i:               ; preds = %_ZN8V3PreLex10curStreampEv.exit.thread.i, %_ZN8V3PreLex10curStreampEv.exit.i
  %i.s = phi i32 [ %i.r, %_ZN8V3PreLex10curStreampEv.exit.thread.i ], [ %i.n, %_ZN8V3PreLex10curStreampEv.exit.i ]
  %i.t = phi ptr [ %i.p, %_ZN8V3PreLex10curStreampEv.exit.thread.i ], [ %i.l, %_ZN8V3PreLex10curStreampEv.exit.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %i.v = add nsw i32 %i.s, -1
  store i32 %i.v, ptr %i.u, align 8, !tbaa !147
  br label %_ZN8V3PreLex9linenoIncEv.exit

_ZN8V3PreLex12curFilelinepEv.exit.i:              ; preds = %_ZN8V3PreLex10curStreampEv.exit.thread.i, %_ZN8V3PreLex10curStreampEv.exit.i
  %i.w = phi ptr [ %i.p, %_ZN8V3PreLex10curStreampEv.exit.thread.i ], [ %i.l, %_ZN8V3PreLex10curStreampEv.exit.i ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !70   ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  %i.z = load i16, ptr %i.y, align 8, !tbaa !95   ; 2 uses
  %i.aa = icmp eq i16 %i.z, -1
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN8V3PreLex12curFilelinepEv.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 12 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !94
  %i.ad = add nsw i32 %i.ac, 65536
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !94
  br label %_ZN8FileLine9linenoIncEv.exit.i

bb.c:                                             ; preds = %_ZN8V3PreLex12curFilelinepEv.exit.i
  %i.ae = add nuw i16 %i.z, 1
  br label %_ZN8FileLine9linenoIncEv.exit.i

_ZN8FileLine9linenoIncEv.exit.i:                  ; preds = %bb.c, %bb.b
  %storemerge.i.i = phi i16 [ %i.ae, %bb.c ], [ 0, %bb.b ]
  store i16 %storemerge.i.i, ptr %i.y, align 8, !tbaa !95
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = and i64 %i.ag, -72057589742960641
  %i.ai = or disjoint i64 %i.ah, 4294967296
  store i64 %i.ai, ptr %i.af, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4            ; 2 uses
  %0 = and i32 %i.ak, -2
  %i.al = add i32 %0, 2
  %1 = and i32 %i.ak, 1
  %2 = or disjoint i32 %i.al, %1
  store i32 %2, ptr %i.aj, align 4
  br label %_ZN8V3PreLex9linenoIncEv.exit

_ZN8V3PreLex9linenoIncEv.exit:                    ; preds = %_ZN8V3PreLex10curStreampEv.exit1.i, %_ZN8FileLine9linenoIncEv.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8V3PreLex13lineDirectiveEPKc(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54, !noalias !1007 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !55, !noalias !1007
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN8V3PreLex12curFilelinepEv.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !56, !noalias !1007
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !57
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 512
  br label %_ZN8V3PreLex12curFilelinepEv.exit

_ZN8V3PreLex12curFilelinepEv.exit:                ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.j, %bb.b ], [ %i.b, %bb.a ]
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !59
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !70
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @_ZN8FileLine13lineDirectiveEPKcRi(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %i.o)
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !54, !noalias !1008 ; 2 uses
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !55, !noalias !1008
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.c, label %_ZN8V3PreLex12curFilelinepEv.exit2

bb.c:                                             ; preds = %_ZN8V3PreLex12curFilelinepEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !56, !noalias !1008
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !57
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 512
  br label %_ZN8V3PreLex12curFilelinepEv.exit2

_ZN8V3PreLex12curFilelinepEv.exit2:               ; preds = %_ZN8V3PreLex12curFilelinepEv.exit, %bb.c
  %i.x = phi ptr [ %i.w, %bb.c ], [ %i.p, %_ZN8V3PreLex12curFilelinepEv.exit ]
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !59
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !70
  %i.ab = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK8FileLine8filenameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.aa)
  tail call void @_ZN6V3File12addSrcDependERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.ab)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL13yy_push_statei(i32 noundef range(i32 1, 21) %0) unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr @_ZL18yy_start_stack_ptr, align 4, !tbaa !28 ; 3 uses
  %i.b = load i32, ptr @_ZL20yy_start_stack_depth, align 4, !tbaa !28 ; 2 uses
  %.not = icmp slt i32 %i.a, %i.b
  %.pre = load ptr, ptr @_ZL14yy_start_stack, align 8, !tbaa !149 ; 3 uses
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %i.b, 25                     ; 2 uses
  store i32 %i.c, ptr @_ZL20yy_start_stack_depth, align 4, !tbaa !28
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 2                      ; 2 uses
  %.not4 = icmp eq ptr %.pre, null
  br i1 %.not4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noalias noundef ptr @malloc(i64 noundef %i.e) #41
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noalias noundef ptr @realloc(ptr noundef nonnull %.pre, i64 noundef %i.e) #43
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge = phi ptr [ %i.f, %bb.c ], [ %i.g, %bb.d ] ; 3 uses
  store ptr %storemerge, ptr @_ZL14yy_start_stack, align 8, !tbaa !149
  %.not5 = icmp eq ptr %storemerge, null
  br i1 %.not5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_ZL14yy_fatal_errorPKc(ptr noundef nonnull @.str.242) #42
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.a
  %i.h = phi ptr [ %storemerge, %bb.e ], [ %.pre, %bb.a ]
  %i.i = load i32, ptr @_ZL8yy_start, align 4, !tbaa !28
  %i.j = add nsw i32 %i.i, -1
  %i.k = sdiv i32 %i.j, 2
  %i.l = add nsw i32 %i.a, 1
  store i32 %i.l, ptr @_ZL18yy_start_stack_ptr, align 4, !tbaa !28
  %i.m = sext i32 %i.a to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.m
  store i32 %i.k, ptr %i.n, align 4, !tbaa !28
  %i.o = shl nuw nsw i32 %0, 1
  %i.p = or disjoint i32 %i.o, 1
  store i32 %i.p, ptr @_ZL8yy_start, align 4, !tbaa !28
  ret void
}

declare void @_ZN8FileLine10v3errorEndERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKNS0_12basic_stringIcS3_S4_EE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(32)) #5

declare noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8) #5

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev() #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7V3Error1sEv.exit, !prof !139

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #44
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7V3Error1sEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #44 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #44
  br label %_ZN7V3Error1sEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #44
  resume { ptr, i32 } %i.e

_ZN7V3Error1sEv.exit:                             ; preds = %bb.a, %bb.b, %bb.d
  %i.f = tail call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.235, ptr nonnull @.str.236, i32 481, ptr null)
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !140
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.509) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #44 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #44
  store i64 %i.d, ptr %i.a, align 8, !tbaa !35
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !90
  %i.g = load i64, ptr %i.a, align 8, !tbaa !35
  store i64 %i.g, ptr %i.b, align 8, !tbaa !45
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !45
  store i8 %i.i, ptr %i.h, align 1, !tbaa !45
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !141
  %i.l = load ptr, ptr %0, align 8, !tbaa !90
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #44
  ret void
}

declare i32 @__gxx_personality_v0(...)

end_hunk_0
begin_hunk_1_@_ZN12V3PreProcImp13getFinalTokenERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, %bb.s
  %i.fu = load ptr, ptr %i.bn, align 8, !tbaa !267
  %i.fv = load ptr, ptr %i.bd, align 8, !tbaa !278
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 104
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !177
  %i.fy = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK8FileLine8filenameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.fx)
  %i.fz = load atomic i8, ptr @_ZGVZN8FileLine9singletonEvE1s acquire, align 8
  %i.ga = icmp eq i8 %i.fz, 0
  br i1 %i.ga, label %bb.at, label %_ZN8FileLine8filenameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, !prof !139

bb.at:                                            ; preds = %bb.as
  %i.gb = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8FileLine9singletonEvE1s) #44
  %.not.i.i = icmp eq i32 %i.gb, 0
  br i1 %.not.i.i, label %_ZN8FileLine8filenameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN17FileLineSingletonC2Ev(ptr noundef nonnull align 8 dereferenceable(336) @_ZZN8FileLine9singletonEvE1s)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.gc = call i32 @__cxa_atexit(ptr nonnull @_ZN17FileLineSingletonD2Ev, ptr nonnull @_ZZN8FileLine9singletonEvE1s, ptr nonnull @__dso_handle) #44 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8FileLine9singletonEvE1s) #44
  br label %_ZN8FileLine8filenameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, %bb.aw
  %common.resume.op = phi { ptr, i32 } [ %i.gd, %bb.aw ], [ %.pn60.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108 ]
  resume { ptr, i32 } %common.resume.op

bb.aw:                                            ; preds = %bb.au
  %i.gd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN8FileLine9singletonEvE1s) #44
  br label %common.resume

_ZN8FileLine8filenameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.as, %bb.at, %bb.av
  %i.ge = call noundef zeroext i16 @_ZN17FileLineSingleton12nameToNumberERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(336) @_ZZN8FileLine9singletonEvE1s, ptr noundef nonnull align 8 dereferenceable(32) %i.fy)
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fu, i64 2
  store i16 %i.ge, ptr %i.gf, align 2, !tbaa !214
  %i.gg = load ptr, ptr %i.bn, align 8, !tbaa !267 ; 3 uses
  %i.gh = load ptr, ptr %i.bd, align 8, !tbaa !278
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 104
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !177 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 12
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !94
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  %i.gn = load i16, ptr %i.gm, align 8, !tbaa !95
  %i.go = zext i16 %i.gn to i32
  %i.gp = add nsw i32 %i.gl, %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gg, i64 12
  store i32 %i.gp, ptr %i.gq, align 4, !tbaa !94
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gg, i64 24
  store i16 0, ptr %i.gr, align 8, !tbaa !95
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gg, i64 16 ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8
  %i.gu = and i64 %i.gt, -72057589759737856
  %i.gv = or disjoint i64 %i.gu, 4294967297
  store i64 %i.gv, ptr %i.gs, align 8
  %or.cond3 = icmp ult i32 %i.bv, 21
  br i1 %or.cond3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.ax

bb.ax:                                            ; preds = %_ZN8FileLine8filenameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #44
  %i.gw = load ptr, ptr %i.bn, align 8, !tbaa !267
  call void @_ZNK8FileLine17lineDirectiveStrgB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(48) %i.gw, i32 noundef 0)
  %i.gx = load ptr, ptr %1, align 8, !tbaa !90    ; 6 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.gz = icmp eq ptr %i.gx, %i.gy
  %i.ha = load ptr, ptr %9, align 8, !tbaa !90    ; 5 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.hc = icmp eq ptr %i.ha, %i.hb                ; 2 uses
  br i1 %i.gz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.ax
  br i1 %i.hc, label %bb.ay, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.ax
  br i1 %i.hc, label %bb.ay, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ay:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.hd = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !141 ; 3 uses
  %i.hf = icmp ult i64 %i.he, 16
  call void @llvm.assume(i1 %i.hf)
  switch i64 %i.he, label %bb.ba [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.az
  ]

bb.az:                                            ; preds = %bb.ay
  %i.hg = load i8, ptr %i.ha, align 1, !tbaa !45
  store i8 %i.hg, ptr %i.gx, align 1, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gx, ptr align 1 %i.ha, i64 %i.he, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.ba, %bb.az, %bb.ay
  %i.hh = load i64, ptr %i.hd, align 8, !tbaa !141 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.hh, ptr %i.hi, align 8, !tbaa !141
  %i.hj = load ptr, ptr %1, align 8, !tbaa !90
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hh
  store i8 0, ptr %i.hk, align 1, !tbaa !45
  %.pre.i = load ptr, ptr %9, align 8, !tbaa !90
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.ha, ptr %1, align 8, !tbaa !90
  %i.hm = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.hn = load <2 x i64>, ptr %i.hm, align 8, !tbaa !45
  store <2 x i64> %i.hn, ptr %i.hl, align 8, !tbaa !45
  br label %bb.bc

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ho = load i64, ptr %i.gy, align 8, !tbaa !45
  store ptr %i.ha, ptr %1, align 8, !tbaa !90
  %i.hp = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hr = load <2 x i64>, ptr %i.hp, align 8, !tbaa !45
  store <2 x i64> %i.hr, ptr %i.hq, align 8, !tbaa !45
  %.not.i113 = icmp eq ptr %i.gx, null
  br i1 %.not.i113, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.gx, ptr %9, align 8, !tbaa !90
  store i64 %i.ho, ptr %i.hb, align 8, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.bc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.hb, ptr %9, align 8, !tbaa !90
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.bb, %bb.bc
  %i.hs = phi ptr [ %i.gx, %bb.bb ], [ %i.hb, %bb.bc ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.ht = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.ht, align 8, !tbaa !141
  store i8 0, ptr %i.hs, align 1, !tbaa !45
  %i.hu = load ptr, ptr %9, align 8, !tbaa !90    ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.hw = icmp eq ptr %i.hu, %i.hv
  br i1 %i.hw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.hx = load i64, ptr %i.hv, align 8, !tbaa !45
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hu, i64 noundef %i.hy) #45
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i115: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #44
  br label %bb.bj

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.r, %_ZN8FileLine8filenameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread122, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.o
  %i.hz = load ptr, ptr %1, align 8, !tbaa !90    ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !141 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.ib
  %.not125126 = icmp samesign eq i64 %i.ib, 0
  br i1 %.not125126, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 320
  br label %bb.bd

bb.bd:                                            ; preds = %.lr.ph, %bb.bi
  %.sroa.0117.0127 = phi ptr [ %i.hz, %.lr.ph ], [ %i.iv, %bb.bi ] ; 2 uses
  %i.ie = load i8, ptr %.sroa.0117.0127, align 1, !tbaa !45
  %i.if = icmp eq i8 %i.ie, 10
  br i1 %i.if, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  store i8 1, ptr %i.aq, align 8, !tbaa !266
  %i.ig = load ptr, ptr %i.id, align 8, !tbaa !267 ; 4 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 24 ; 2 uses
  %i.ii = load i16, ptr %i.ih, align 8, !tbaa !95 ; 2 uses
  %i.ij = icmp eq i16 %i.ii, -1
  br i1 %i.ij, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ig, i64 12 ; 2 uses
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !94
  %i.im = add nsw i32 %i.il, 65536
  store i32 %i.im, ptr %i.ik, align 4, !tbaa !94
  br label %_ZN8FileLine9linenoIncEv.exit

bb.bg:                                            ; preds = %bb.be
  %i.in = add nuw i16 %i.ii, 1
  br label %_ZN8FileLine9linenoIncEv.exit

_ZN8FileLine9linenoIncEv.exit:                    ; preds = %bb.bf, %bb.bg
  %storemerge.i = phi i16 [ %i.in, %bb.bg ], [ 0, %bb.bf ]
  store i16 %storemerge.i, ptr %i.ih, align 8, !tbaa !95
  %i.io = getelementptr inbounds nuw i8, ptr %i.ig, i64 16 ; 2 uses
  %i.ip = load i64, ptr %i.io, align 8
  %i.iq = and i64 %i.ip, -72057589742960641
  %i.ir = or disjoint i64 %i.iq, 4294967296
  store i64 %i.ir, ptr %i.io, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %i.ig, i64 4 ; 2 uses
  %i.it = load i32, ptr %i.is, align 4            ; 2 uses
  %10 = and i32 %i.it, -2
  %i.iu = add i32 %10, 2
  %11 = and i32 %i.it, 1
  %12 = or disjoint i32 %i.iu, %11
  store i32 %12, ptr %i.is, align 4
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bd
  store i8 0, ptr %i.aq, align 8, !tbaa !266
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %_ZN8FileLine9linenoIncEv.exit
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.0117.0127, i64 1 ; 2 uses
  %.not125 = icmp eq ptr %i.iv, %i.ic
  br i1 %.not125, label %.loopexit, label %bb.bd

.loopexit:                                        ; preds = %bb.bi, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.n
  store i8 0, ptr %i.c, align 1, !tbaa !264
  br label %bb.bj

bb.bj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i115, %.loopexit
  %.152 = phi i32 [ %i.p, %.loopexit ], [ 264, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i115 ]
  ret i32 %.152
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12V3PreProcImp7getlineB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1032) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !278  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !54, !noalias !1525 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !55, !noalias !1525
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.b, label %_ZNK12V3PreProcImp5isEofEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !56, !noalias !1525
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !57
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 512
  br label %_ZNK12V3PreProcImp5isEofEv.exit

_ZNK12V3PreProcImp5isEofEv.exit:                  ; preds = %bb.a, %bb.b
  %i.n = phi ptr [ %i.m, %bb.b ], [ %i.e, %bb.a ]
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !59
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.r = load i8, ptr %i.q, align 8, !tbaa !198, !range !88, !noundef !89
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %._crit_edge.i.i, label %.preheader

.preheader:                                       ; preds = %_ZNK12V3PreProcImp5isEofEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 968 ; 9 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !90   ; 2 uses
  %i.v = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.u, i32 noundef 10) #46 ; 2 uses
  %.not198 = icmp eq ptr %i.v, null
  br i1 %.not198, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 1000 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 1008 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 976 ; 2 uses
  br label %bb.c

._crit_edge.i.i:                                  ; preds = %_ZNK12V3PreProcImp5isEofEv.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.ak, ptr %0, align 8, !tbaa !140
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.al, align 8, !tbaa !141
  store i8 0, ptr %i.ak, align 8, !tbaa !45
  br label %bb.br

bb.c:                                             ; preds = %.lr.ph, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread151
  store i64 0, ptr %i.x, align 8, !tbaa !141
  %i.am = load ptr, ptr %i.w, align 8, !tbaa !90
  store i8 0, ptr %i.am, align 1, !tbaa !45
  %i.an = call noundef i32 @_ZN12V3PreProcImp13getFinalTokenERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1032) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.w) ; 2 uses
  %i.ao = call noundef i32 @_ZN9V3PreProc5debugEv()
  %i.ap = icmp sgt i32 %i.ao, 4
  br i1 %i.ap, label %bb.d, label %bb.ad

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  call void @_ZN8V3PreLex12cleanDbgStrgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !278
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 104
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !177
  invoke void @_ZNK8FileLine12asciiLineColB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %i.as)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.at = invoke noundef i32 @_ZN9V3PreProc5debugEv()
          to label %bb.f unwind label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.au = icmp sgt i32 %i.at, -1
  br i1 %i.au, label %bb.g, label %bb.ab, !prof !200

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.64, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  invoke void @_ZN7V3Error7lineStrB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull @.str.65, i32 noundef 1779)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aw = load ptr, ptr %5, align 8, !tbaa !90
  %i.ax = load i64, ptr %i.y, align 8, !tbaa !141
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.aw, i64 noundef %i.ax)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.s

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.i
  %i.az = load ptr, ptr %3, align 8, !tbaa !90
  %i.ba = load i64, ptr %i.z, align 8, !tbaa !141
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef %i.az, i64 noundef %i.ba)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit59 unwind label %bb.s ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit59: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull @.str.233, i64 noundef 12)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit59
  %i.bd = call noundef ptr @_ZN12V3PreProcImp9tokenNameEi(i32 noundef %i.an)
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull %i.bd)
          to label %bb.j unwind label %bb.s       ; 2 uses

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull @.str.160, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63: ; preds = %bb.j
  %i.bg = load ptr, ptr %2, align 8, !tbaa !90
  %i.bh = load i64, ptr %i.aa, align 8, !tbaa !141
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef %i.bg, i64 noundef %i.bh)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit65 unwind label %bb.s ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit65: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63
  %i.bj = load ptr, ptr %5, align 8, !tbaa !90    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.ab
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit65
  %i.bl = load i64, ptr %i.ab, align 8, !tbaa !45
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #44
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.k unwind label %bb.t

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #44
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.l unwind label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.bn = load i64, ptr %i.ac, align 8, !tbaa !141 ; 2 uses
  %i.bo = load ptr, ptr %6, align 8, !tbaa !90    ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 %i.bn
  %i.bq = getelementptr i8, ptr %i.bp, i64 -1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !45
  %.not45 = icmp eq i8 %i.br, 10
  %i.bs = load ptr, ptr %7, align 8, !tbaa !90    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.ad
  br i1 %i.bt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
end_hunk_1
