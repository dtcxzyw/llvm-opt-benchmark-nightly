inline.NumInlined: 1409
inline.NumDeleted: 742
begin_hunk_0_@_ZN6google8protobuf8compiler4ruby14GetRequireNameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE:bb.a

.preheader.preheader:                             ; preds = %.preheader.preheader.preheader, %.preheader
  %lsr.iv = phi i64 [ %i.a, %.preheader.preheader.preheader ], [ %lsr.iv.next, %.preheader ] ; 3 uses
  %.1.i.i3 = phi i64 [ %5, %.preheader ], [ %1, %.preheader.preheader.preheader ]
  %5 = add i64 %.1.i.i3, -1                       ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %lsr.iv
  %i.b = load i8, ptr %scevgep, align 1, !tbaa !9
  %i.c = icmp eq i8 %i.b, 46
  br i1 %i.c, label %.preheader.preheader._ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.loopexit_crit_edge, label %.preheader, !llvm.loop !7

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.loopexitsplit: ; preds = %.preheader
  %.09.i.i.ph.ph = phi i64 [ -1, %.preheader ]
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.loopexit

.preheader.preheader._ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.loopexit_crit_edge: ; preds = %.preheader.preheader
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %.preheader.preheader ]
  %split = phi i64 [ %5, %.preheader.preheader ]  ; 0 uses
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.loopexit, !llvm.loop !7

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.loopexit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.loopexitsplit, %.preheader.preheader._ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.loopexit_crit_edge
  %.09.i.i.ph = phi i64 [ %lsr.iv.lcssa, %.preheader.preheader._ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.loopexit_crit_edge ], [ %.09.i.i.ph.ph, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.loopexitsplit ]
  %i.d = tail call i64 @llvm.umin.i64(i64 %1, i64 %.09.i.i.ph)
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit

end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8compiler4ruby17GetOutputFilenameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE:bb.a

.preheader.i.preheader:                           ; preds = %.preheader.i.preheader.preheader, %.preheader.i
  %lsr.iv = phi i64 [ %i.a, %.preheader.i.preheader.preheader ], [ %lsr.iv.next, %.preheader.i ] ; 3 uses
  %.1.i.i.i10 = phi i64 [ %8, %.preheader.i ], [ %1, %.preheader.i.preheader.preheader ]
  %8 = add i64 %.1.i.i.i10, -1                    ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %lsr.iv
  %i.b = load i8, ptr %scevgep, align 1, !tbaa !9, !noalias !15
  %i.c = icmp eq i8 %i.b, 46
  br i1 %i.c, label %.preheader.i.preheader._ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.loopexit.i_crit_edge, label %.preheader.i, !llvm.loop !7

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.loopexit.isplit: ; preds = %.preheader.i
  %.09.i.i.ph.i.ph = phi i64 [ -1, %.preheader.i ]
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.loopexit.i

.preheader.i.preheader._ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.loopexit.i_crit_edge: ; preds = %.preheader.i.preheader
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %.preheader.i.preheader ]
  %split = phi i64 [ %8, %.preheader.i.preheader ] ; 0 uses
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.loopexit.i, !llvm.loop !7

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.loopexit.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.loopexit.isplit, %.preheader.i.preheader._ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.loopexit.i_crit_edge
  %.09.i.i.ph.i = phi i64 [ %lsr.iv.lcssa, %.preheader.i.preheader._ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.loopexit.i_crit_edge ], [ %.09.i.i.ph.i.ph, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.loopexit.isplit ]
  %i.d = tail call i64 @llvm.umin.i64(i64 %1, i64 %.09.i.i.ph.i)
  br label %bb.b

end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8compiler4ruby12GenerateFileEPKNS0_14FileDescriptorEPNS0_2io7PrinterEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !196 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !18 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !21 ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i, label %_ZN6google8protobuf8compiler4ruby14GetRequireNameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.preheader.i.preheader.preheader

end_hunk_2
begin_hunk_3_@_ZN6google8protobuf8compiler4ruby12GenerateFileEPKNS0_14FileDescriptorEPNS0_2io7PrinterEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

.preheader.i.preheader:                           ; preds = %.preheader.i.preheader.preheader, %.preheader.i
  %lsr.iv = phi i64 [ %i.al, %.preheader.i.preheader.preheader ], [ %lsr.iv.next, %.preheader.i ] ; 3 uses
  %.1.i.i.i69 = phi i64 [ %9, %.preheader.i ], [ %i.ak, %.preheader.i.preheader.preheader ]
  %9 = add i64 %.1.i.i.i69, -1                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ai, i64 %lsr.iv
  %i.am = load i8, ptr %scevgep, align 1, !tbaa !9, !noalias !198
  %i.an = icmp eq i8 %i.am, 46
  br i1 %i.an, label %.preheader.i.preheader._ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.loopexit.i_crit_edge, label %.preheader.i, !llvm.loop !7

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.loopexit.isplit: ; preds = %.preheader.i
  %.09.i.i.ph.i.ph = phi i64 [ -1, %.preheader.i ]
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.loopexit.i

.preheader.i.preheader._ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.loopexit.i_crit_edge: ; preds = %.preheader.i.preheader
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %.preheader.i.preheader ]
  %split = phi i64 [ %9, %.preheader.i.preheader ] ; 0 uses
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.loopexit.i, !llvm.loop !7

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.loopexit.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.loopexit.isplit, %.preheader.i.preheader._ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.loopexit.i_crit_edge
  %.09.i.i.ph.i = phi i64 [ %lsr.iv.lcssa, %.preheader.i.preheader._ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.loopexit.i_crit_edge ], [ %.09.i.i.ph.i.ph, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.loopexit.isplit ]
  %i.ao = call i64 @llvm.umin.i64(i64 %i.ak, i64 %.09.i.i.ph.i)
  br label %_ZN6google8protobuf8compiler4ruby14GetRequireNameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit

end_hunk_3
