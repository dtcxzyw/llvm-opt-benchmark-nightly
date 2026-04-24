inline.NumInlined: 181
inline.NumDeleted: 100
begin_hunk_0_@_ZN6google8protobuf8internal20RepeatedPtrFieldBase9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_PNS0_5ArenaE:bb.a
  br i1 %i.ct, label %_ZN6google8protobuf8internal20CalculateReserveSizeIPvLi8EEEiii.exit.i.thread, label %_ZN6google8protobuf8internal20CalculateReserveSizeIPvLi8EEEiii.exit.i, !prof !23

_ZN6google8protobuf8internal20CalculateReserveSizeIPvLi8EEEiii.exit.i.thread: ; preds = %bb.k, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i27
  %.1.i.i.ph = phi i32 [ 2147483647, %bb.k ], [ 1, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i27 ] ; 2 uses
  %3 = zext nneg i32 %.1.i.i.ph to i64
  %4 = shl nuw nsw i64 %3, 3
  %5 = add nuw nsw i64 %4, 8
  %i.cu = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %5) #14
  br label %bb.m

_ZN6google8protobuf8internal20CalculateReserveSizeIPvLi8EEEiii.exit.i: ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i17, %bb.k
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8internal20RepeatedPtrFieldBase9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_PNS0_5ArenaE:bb.a
bb.m:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIPvLi8EEEiii.exit.i._crit_edge, %_ZN6google8protobuf8internal20CalculateReserveSizeIPvLi8EEEiii.exit.i.thread
  %.pre-phi76 = phi ptr [ %.pre75, %_ZN6google8protobuf8internal20CalculateReserveSizeIPvLi8EEEiii.exit.i._crit_edge ], [ %i.cp, %_ZN6google8protobuf8internal20CalculateReserveSizeIPvLi8EEEiii.exit.i.thread ] ; 3 uses
  %i.df = phi ptr [ %i.db, %_ZN6google8protobuf8internal20CalculateReserveSizeIPvLi8EEEiii.exit.i._crit_edge ], [ %i.cu, %_ZN6google8protobuf8internal20CalculateReserveSizeIPvLi8EEEiii.exit.i.thread ] ; 4 uses
  %.1.i.i39 = phi i32 [ %.sroa.speculated.i.i, %_ZN6google8protobuf8internal20CalculateReserveSizeIPvLi8EEEiii.exit.i._crit_edge ], [ %.1.i.i.ph, %_ZN6google8protobuf8internal20CalculateReserveSizeIPvLi8EEEiii.exit.i.thread ]
  %i.dg = phi i32 [ %i.cv, %_ZN6google8protobuf8internal20CalculateReserveSizeIPvLi8EEEiii.exit.i._crit_edge ], [ %i.cq, %_ZN6google8protobuf8internal20CalculateReserveSizeIPvLi8EEEiii.exit.i.thread ]
  store i32 %.1.i.i39, ptr %i.df, align 8, !tbaa !21
  %i.dh = getelementptr inbounds nuw i8, ptr %.pre-phi76, i64 4
end_hunk_1
