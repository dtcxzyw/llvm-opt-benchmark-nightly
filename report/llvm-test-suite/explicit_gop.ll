inline.NumInlined: 8
inline.NumDeleted: 3
begin_hunk_0_@poc_based_ref_management:bb.a

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.016.lcssa = phi i32 [ -1, %.preheader ], [ %i.y, %._crit_edge.loopexit ]
  %i.z = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #12 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.h, label %bb.i

end_hunk_0
begin_hunk_1_@poc_based_ref_management:bb.a
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %i.ab = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #12 ; 5 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.j, label %bb.k
end_hunk_1
