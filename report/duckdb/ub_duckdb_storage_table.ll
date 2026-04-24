inline.NumInlined: 22002
inline.NumDeleted: 8912
begin_hunk_0_@_ZN6duckdb13GeometryStats8GetFlagsERKNS_14BaseStatisticsE
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK6duckdb15GeometryTypeSet16TryGetSingleTypeERNS_12GeometryTypeERNS_10VertexTypeE(ptr noundef nonnull align 1 dereferenceable(4) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #9 comdat align 2 {
.preheader:
  %i.a = load i8, ptr %0, align 1, !tbaa !98      ; 2 uses
  %i.b = zext i8 %i.a to i32                      ; 6 uses
  %3 = and i32 %i.b, 2
  %.not.not = icmp eq i32 %3, 0
  %i.c = and i32 %i.b, 4                          ; 2 uses
  %.not.1 = icmp eq i32 %i.c, 0                   ; 2 uses
  br i1 %.not.not, label %bb.a, label %.thread

bb.a:                                             ; preds = %.preheader
  %spec.select = select i1 %.not.1, i8 0, i8 2
  %.lobit = lshr exact i32 %i.c, 2
  %spec.select83 = trunc nuw nsw i32 %.lobit to i8
  br label %bb.b

.thread:                                          ; preds = %.preheader
  br i1 %.not.1, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a, %.thread
  %.229.1 = phi i8 [ %spec.select, %bb.a ], [ 1, %.thread ]
  %.2.1 = phi i8 [ %spec.select83, %bb.a ], [ 1, %.thread ] ; 2 uses
  %i.d = and i32 %i.b, 8
  %.not.2 = icmp eq i32 %i.d, 0
  br i1 %.not.2, label %bb.d, label %bb.c
end_hunk_0
begin_hunk_1_@_ZNK6duckdb15GeometryTypeSet16TryGetSingleTypeERNS_12GeometryTypeERNS_10VertexTypeE:.preheader
  store i8 %.225.6.380, ptr %2, align 1, !tbaa !2055
  br label %.loopexit

.loopexit:                                        ; preds = %.thread, %bb.c, %bb.e, %bb.g, %bb.i, %bb.k, %bb.l, %bb.n, %bb.p, %bb.r, %bb.t, %bb.v, %bb.x, %bb.y, %bb.aa, %bb.ac, %bb.ae, %bb.ag, %bb.ai, %bb.ak, %bb.al, %bb.an, %bb.ap, %bb.ar, %bb.at, %bb.av, %bb.ax, %.critedge.3, %.thread42
  %.334 = phi i1 [ false, %.critedge.3 ], [ true, %.thread42 ], [ false, %bb.c ], [ false, %bb.ax ], [ false, %bb.av ], [ false, %bb.at ], [ false, %bb.ar ], [ false, %bb.ap ], [ false, %bb.an ], [ false, %bb.al ], [ false, %bb.ak ], [ false, %bb.ai ], [ false, %bb.ag ], [ false, %bb.ae ], [ false, %bb.ac ], [ false, %bb.aa ], [ false, %bb.y ], [ false, %bb.x ], [ false, %bb.v ], [ false, %bb.t ], [ false, %bb.r ], [ false, %bb.p ], [ false, %bb.n ], [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.i ], [ false, %bb.g ], [ false, %bb.e ], [ false, %.thread ]
  ret i1 %.334
}

end_hunk_1
