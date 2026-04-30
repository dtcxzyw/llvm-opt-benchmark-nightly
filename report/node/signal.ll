inline.NumInlined: 27
inline.NumDeleted: 15
begin_hunk_0_@uv__signal_handler:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i11.i, i64 104
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = icmp eq i32 %i.ab, %0
  br i1 %i.ac, label %.lr.ph68.preheader, label %.critedge

.lr.ph68.preheader:                               ; preds = %.lr.ph
  store i32 %0, ptr %i.z, align 8
  br label %.lr.ph68

.lr.ph68:                                         ; preds = %.lr.ph68.preheader, %uv__signal_tree_s_RB_NEXT.exit
  %.03167 = phi ptr [ %.2.i, %uv__signal_tree_s_RB_NEXT.exit ], [ %.0.i11.i, %.lr.ph68.preheader ] ; 7 uses
  store ptr %.03167, ptr %2, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.03167, i64 8
  br label %bb.h
end_hunk_0
