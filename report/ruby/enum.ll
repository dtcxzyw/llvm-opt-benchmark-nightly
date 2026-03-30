begin_hunk_0
define internal fastcc void @rb_uniform_quicksort_intro_2(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 0, -1) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.rb_uniform_sort_data, align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
end_hunk_0
begin_hunk_1
  %.0.us = phi ptr [ %.2.us, %bb.x ], [ %i.cs, %bb.v ]
  br label %bb.y

bb.w:                                             ; preds = %.split106.us.us.us
  %.sroa.0.0.copyload.us.us = load <2 x i64>, ptr %.162.us.us, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.162.us.us, ptr noundef nonnull align 8 dereferenceable(16) %.1.us.us, i64 16, i1 false), !tbaa.struct !99
  store <2 x i64> %.sroa.0.0.copyload.us.us, ptr %.1.us.us, align 8
  %i.cu = getelementptr i8, ptr %.162.us.us, i64 16
  %i.cv = getelementptr i8, ptr %.1.us.us, i64 -16
  br label %bb.x

bb.x:                                             ; preds = %.split106.us.us.us, %bb.w
  %.263.us = phi ptr [ %i.cu, %bb.w ], [ %.162.us.us, %.split106.us.us.us ] ; 3 uses
  %.2.us = phi ptr [ %i.cv, %bb.w ], [ %.1.us.us, %.split106.us.us.us ] ; 3 uses
  %.not66.us = icmp ugt ptr %.263.us, %.2.us
  br i1 %.not66.us, label %.split113.us, label %.split.us.us, !llvm.loop !105

end_hunk_1
begin_hunk_2
.critedge.i82.us.us:                              ; preds = %bb.y
  %i.cy = tail call i32 @rb_float_cmp(i64 noundef %i.cw, i64 noundef %.fr119) #14
  %i.cz = icmp slt i32 %i.cy, 0
  br i1 %i.cz, label %bb.aa, label %.preheader.split.us.us.us.preheader

.preheader.split.us.us.us.preheader:              ; preds = %bb.z, %.critedge.i82.us.us
  br label %.preheader.split103.us.us

bb.z:                                             ; preds = %bb.y
  %i.da = icmp slt i64 %i.cw, %.fr119
  br i1 %i.da, label %bb.aa, label %.preheader.split.us.us.us.preheader

bb.aa:                                            ; preds = %bb.z, %.critedge.i82.us.us
  %i.db = getelementptr i8, ptr %.162.us.us, i64 16
  br label %bb.y, !llvm.loop !106

.preheader.split103.us.us:                        ; preds = %.preheader.split.us.us.us.preheader, %bb.ac
  %.1.us.us = phi ptr [ %i.dh, %bb.ac ], [ %.0.us, %.preheader.split.us.us.us.preheader ] ; 7 uses
  %i.dc = load i64, ptr %.1.us.us, align 8, !tbaa !54 ; 3 uses
  %i.dd = trunc i64 %i.dc to i1
  br i1 %i.dd, label %bb.ab, label %rb_uniform_is_less.exit87.us.us
end_hunk_2
begin_hunk_3
rb_uniform_is_less.exit87.us.us:                  ; preds = %.preheader.split103.us.us
  %i.de = tail call i32 @rb_float_cmp(i64 noundef %i.dc, i64 noundef %.fr119) #14
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %bb.ac, label %.split106.us.us.us

bb.ab:                                            ; preds = %.preheader.split103.us.us
  %i.dg = icmp slt i64 %.fr119, %i.dc
  br i1 %i.dg, label %bb.ac, label %.split106.us.us.us

bb.ac:                                            ; preds = %bb.ab, %rb_uniform_is_less.exit87.us.us
  %i.dh = getelementptr i8, ptr %.1.us.us, i64 -16
  br label %.preheader.split103.us.us, !llvm.loop !107

.split106.us.us.us:                               ; preds = %bb.ab, %rb_uniform_is_less.exit87.us.us
  %.not.us.us = icmp ugt ptr %.162.us.us, %.1.us.us
  br i1 %.not.us.us, label %bb.x, label %bb.w

.split:                                           ; preds = %bb.v, %bb.ag
  %.061 = phi ptr [ %.263, %bb.ag ], [ %0, %bb.v ]
end_hunk_3
begin_hunk_4
  br i1 %.not, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.split105.us
  %.sroa.0.0.copyload = load <2 x i64>, ptr %.162, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.162, ptr noundef nonnull align 8 dereferenceable(16) %.1, i64 16, i1 false), !tbaa.struct !99
  store <2 x i64> %.sroa.0.0.copyload, ptr %.1, align 8
  %i.dt = getelementptr i8, ptr %.162, i64 16
  %i.du = getelementptr i8, ptr %.1, i64 -16
  br label %bb.ag
end_hunk_4
