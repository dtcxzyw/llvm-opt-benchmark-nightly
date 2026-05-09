inline.NumInlined: 1127
inline.NumDeleted: 513
begin_hunk_0_@_ZN4node9inspector12_GLOBAL__N_19WsHandler6OnDataEPSt6vectorIcSaIcEE:bb.a
  br label %.thread83.i.i

bb.h:                                             ; preds = %bb.g
  %i.y = icmp eq i8 %i.v, 126                     ; 6 uses
  %i.z = ptrtoint ptr %i.o to i64
  %i.aa = sub i64 %i.i, %i.z
  %3 = select i1 %i.y, i64 2, i64 8
  %.not.i.i = icmp slt i64 %i.aa, %3
  br i1 %.not.i.i, label %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.h
  %xtraiter = select i1 %i.y, i32 2, i32 0
  br i1 %i.y, label %.preheader.i.i.epil.preheader, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.05989.i.i = phi i64 [ %i.au, %.preheader.i.i ], [ 0, %.preheader.i.i.preheader ]
  %.sroa.075.088.i.i = phi ptr [ %i.ar, %.preheader.i.i ], [ %i.o, %.preheader.i.i.preheader ] ; 5 uses
  %niter = phi i32 [ %niter.next.3, %.preheader.i.i ], [ 0, %.preheader.i.i.preheader ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.075.088.i.i, i64 1
  %i.ac = load i8, ptr %.sroa.075.088.i.i, align 1
  %i.ad = zext i8 %i.ac to i64
end_hunk_0
begin_hunk_1_@_ZN4node9inspector12_GLOBAL__N_19WsHandler6OnDataEPSt6vectorIcSaIcEE:bb.a
  %i.at = zext i8 %i.as to i64
  %i.au = or disjoint i64 %i.aq, %i.at            ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, 8
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.preheader.i.i, !llvm.loop !47

.unr-lcssa:                                       ; preds = %.preheader.i.i
  br i1 %i.y, label %.preheader.i.i.epil.preheader, label %.epilog-lcssa

.preheader.i.i.epil.preheader:                    ; preds = %.unr-lcssa, %.preheader.i.i.preheader
  %.05989.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.au, %.unr-lcssa ]
  %.sroa.075.088.i.i.epil.init = phi ptr [ %i.o, %.preheader.i.i.preheader ], [ %i.ar, %.unr-lcssa ]
  call void @llvm.assume(i1 %i.y)
  br label %.preheader.i.i.epil

.preheader.i.i.epil:                              ; preds = %.preheader.i.i.epil, %.preheader.i.i.epil.preheader
end_hunk_1
begin_hunk_2_@_ZN4node9inspector12_GLOBAL__N_19WsHandler6OnDataEPSt6vectorIcSaIcEE:bb.a
  %i.ay = zext i8 %i.ax to i64
  %i.az = or disjoint i64 %i.av, %i.ay            ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.preheader.i.i.epil, !llvm.loop !48

.epilog-lcssa:                                    ; preds = %.preheader.i.i.epil, %.unr-lcssa
  %.lcssa25 = phi i64 [ %i.aq, %.unr-lcssa ], [ %i.av, %.preheader.i.i.epil ]
  %.lcssa = phi i64 [ %i.au, %.unr-lcssa ], [ %i.az, %.preheader.i.i.epil ]
  %4 = select i1 %i.y, i64 4, i64 10
  %scevgep.i = getelementptr i8, ptr %i.g, i64 %4
  %i.ba = icmp slt i64 %.lcssa25, 0
  br i1 %i.ba, label %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.thread.i, label %.thread83.i.i

end_hunk_2
