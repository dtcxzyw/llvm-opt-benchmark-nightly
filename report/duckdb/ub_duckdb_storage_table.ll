inline.NumInlined: 22002
inline.NumDeleted: 8912
begin_hunk_0_@_ZN6duckdb13GeometryStats8GetFlagsERKNS_14BaseStatisticsE
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK6duckdb15GeometryTypeSet16TryGetSingleTypeERNS_12GeometryTypeERNS_10VertexTypeE(ptr noundef nonnull align 1 dereferenceable(4) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #9 comdat align 2 {
.preheader:
  %i.a = load i8, ptr %0, align 1, !tbaa !98      ; 3 uses
  %i.b = zext i8 %i.a to i32                      ; 5 uses
  %3 = lshr i8 %i.a, 1                            ; 2 uses
  %.lobit = and i8 %3, 1                          ; 2 uses
  %i.c = and i32 %i.b, 4
  %.not.1 = icmp eq i32 %i.c, 0
  br i1 %.not.1, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.preheader
  %4 = trunc i8 %3 to i1
  br i1 %4, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader
  %.229.1 = phi i8 [ %.lobit, %.preheader ], [ 2, %bb.a ]
  %.2.1 = phi i8 [ %.lobit, %.preheader ], [ 1, %bb.a ] ; 2 uses
  %i.d = and i32 %i.b, 8
  %.not.2 = icmp eq i32 %i.d, 0
  br i1 %.not.2, label %bb.d, label %bb.c
end_hunk_0
begin_hunk_1_@_ZNK6duckdb15GeometryTypeSet16TryGetSingleTypeERNS_12GeometryTypeERNS_10VertexTypeE:.preheader
  store i8 %.225.6.380, ptr %2, align 1, !tbaa !2055
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %bb.c, %bb.e, %bb.g, %bb.i, %bb.k, %bb.l, %bb.n, %bb.p, %bb.r, %bb.t, %bb.v, %bb.x, %bb.y, %bb.aa, %bb.ac, %bb.ae, %bb.ag, %bb.ai, %bb.ak, %bb.al, %bb.an, %bb.ap, %bb.ar, %bb.at, %bb.av, %bb.ax, %.critedge.3, %.thread42
  %.334 = phi i1 [ false, %.critedge.3 ], [ true, %.thread42 ], [ false, %bb.ax ], [ false, %bb.av ], [ false, %bb.at ], [ false, %bb.ar ], [ false, %bb.ap ], [ false, %bb.an ], [ false, %bb.al ], [ false, %bb.ak ], [ false, %bb.ai ], [ false, %bb.ag ], [ false, %bb.ae ], [ false, %bb.ac ], [ false, %bb.aa ], [ false, %bb.y ], [ false, %bb.x ], [ false, %bb.v ], [ false, %bb.t ], [ false, %bb.r ], [ false, %bb.p ], [ false, %bb.n ], [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.i ], [ false, %bb.g ], [ false, %bb.e ], [ false, %bb.c ], [ false, %bb.a ]
  ret i1 %.334
}

end_hunk_1
