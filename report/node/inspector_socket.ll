inline.NumInlined: 1127
inline.NumDeleted: 513
begin_hunk_0_@_ZN4node9inspector12_GLOBAL__N_19WsHandler6OnDataEPSt6vectorIcSaIcEE:bb.a
  br label %.thread83.i.i

bb.h:                                             ; preds = %bb.g
  %i.y = icmp eq i8 %i.v, 126                     ; 2 uses
  %.058.i.i.a = select i1 %i.y, i32 2, i32 8      ; 3 uses
  %i.z = ptrtoint ptr %i.o to i64
  %i.aa = sub i64 %i.i, %i.z
  %3 = zext nneg i32 %.058.i.i.a to i64           ; 2 uses
  %.not.i.i = icmp slt i64 %i.aa, %3
  br i1 %.not.i.i, label %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.h
end_hunk_0
begin_hunk_1_@_ZN4node9inspector12_GLOBAL__N_19WsHandler6OnDataEPSt6vectorIcSaIcEE:bb.a
.epilog-lcssa:                                    ; preds = %.preheader.i.i.epil, %.unr-lcssa
  %.lcssa25 = phi i64 [ %i.aq, %.unr-lcssa ], [ %i.av, %.preheader.i.i.epil ]
  %.lcssa = phi i64 [ %i.au, %.unr-lcssa ], [ %i.az, %.preheader.i.i.epil ]
  %i.ba = getelementptr i8, ptr %i.g, i64 %3
  %scevgep.i = getelementptr i8, ptr %i.ba, i64 2
  %i.bb = icmp slt i64 %.lcssa25, 0
end_hunk_1
