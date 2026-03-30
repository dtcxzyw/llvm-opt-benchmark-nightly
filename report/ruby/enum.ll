begin_hunk_0

%struct.nmin_data = type { i64, i64, i64, i64, i64, ptr, i8 }
%struct.enum_sum_memo = type { i64, i64, i64, double, double, i32, i32 }

@rb_eArgError = external local_unnamed_addr global i64, align 8
@.str = private unnamed_addr constant [20 x i8] c"negative size (%ld)\00", align 1
end_hunk_0
begin_hunk_1
; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @rb_uniform_quicksort_intro_2(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 0, -1) %2) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
end_hunk_1
begin_hunk_2
  br i1 %i.g, label %tailrecurse._crit_edge, label %.lr.ph

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr88.lcssa = phi ptr [ %1, %bb.a ], [ %.us-phi115, %tailrecurse ] ; 2 uses
  %.lcssa98 = phi i64 [ %i.c, %bb.a ], [ %i.eb, %tailrecurse ]
  %i.h = icmp sgt i64 %.lcssa98, 16
  %.036.i = getelementptr i8, ptr %0, i64 16      ; 2 uses
end_hunk_2
begin_hunk_3

.lr.ph25.i:                                       ; preds = %.lr.ph.i, %.lr.ph25.i
  %.023.i = phi i64 [ %i.ar, %.lr.ph25.i ], [ %.pre.i, %.lr.ph.i ] ; 2 uses
  %.sroa.0.0.copyload.i69 = load <2 x i64>, ptr %0, align 8
  %i.aq = getelementptr [16 x i8], ptr %0, i64 %.023.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false), !tbaa.struct !99
  store <2 x i64> %.sroa.0.0.copyload.i69, ptr %i.aq, align 8
  %i.ar = add i64 %.023.i, -1                     ; 3 uses
  tail call fastcc void @rb_uniform_heap_down_2(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %i.ar)
  %.not19.i = icmp eq i64 %i.ar, 0
  br i1 %.not19.i, label %rb_uniform_insertionsort_2.exit, label %.lr.ph25.i, !llvm.loop !104

.lr.ph164:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.tr88116163 = phi ptr [ %.us-phi115, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 4 uses
  %.tr89117162 = phi i64 [ %i.al, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.as = phi i64 [ %i.ea, %.lr.ph ], [ %i.b, %.lr.ph.preheader ]
  %i.at = phi i64 [ %i.am, %.lr.ph ], [ %i.d, %.lr.ph.preheader ]
end_hunk_3
begin_hunk_4
  br i1 %i.ct, label %.split.us.us, label %.split

.split.us.us:                                     ; preds = %bb.v, %bb.x
  %.061.us = phi ptr [ %.263.us, %bb.x ], [ %i.cs, %bb.v ]
  %.0.us = phi ptr [ %.2.us, %bb.x ], [ %0, %bb.v ]
  br label %bb.y

bb.w:                                             ; preds = %.split107.us.us.us
  %.sroa.0.0.copyload.us.us = load <2 x i64>, ptr %.162.us.us, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.162.us.us, ptr noundef nonnull align 8 dereferenceable(16) %.1.us.us, i64 16, i1 false), !tbaa.struct !99
  store <2 x i64> %.sroa.0.0.copyload.us.us, ptr %.1.us.us, align 8
  %i.cu = getelementptr i8, ptr %.162.us.us, i64 16
  %i.cv = getelementptr i8, ptr %.1.us.us, i64 -16
  br label %bb.x

bb.x:                                             ; preds = %.split107.us.us.us, %bb.w
  %.263.us = phi ptr [ %i.cv, %bb.w ], [ %.1.us.us, %.split107.us.us.us ] ; 3 uses
  %.2.us = phi ptr [ %i.cu, %bb.w ], [ %.162.us.us, %.split107.us.us.us ] ; 3 uses
  %.not66.us = icmp ugt ptr %.2.us, %.263.us
  br i1 %.not66.us, label %.split113.us, label %.split.us.us, !llvm.loop !105

bb.y:                                             ; preds = %bb.aa, %.split.us.us
  %.162.us.us = phi ptr [ %.0.us, %.split.us.us ], [ %i.db, %bb.aa ] ; 7 uses
  %i.cw = load i64, ptr %.162.us.us, align 8, !tbaa !54 ; 3 uses
  %i.cx = trunc i64 %i.cw to i1
  br i1 %i.cx, label %bb.z, label %.critedge.i82.us.us
end_hunk_4
begin_hunk_5
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
  %.1.us.us = phi ptr [ %i.dh, %bb.ac ], [ %.061.us, %.preheader.split.us.us.us.preheader ] ; 7 uses
  %i.dc = load i64, ptr %.1.us.us, align 8, !tbaa !54 ; 3 uses
  %i.dd = trunc i64 %i.dc to i1
  br i1 %i.dd, label %bb.ab, label %rb_uniform_is_less.exit87.us.us
end_hunk_5
begin_hunk_6
rb_uniform_is_less.exit87.us.us:                  ; preds = %.preheader.split103.us.us
  %i.de = tail call i32 @rb_float_cmp(i64 noundef %i.dc, i64 noundef %.fr119) #14
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %bb.ac, label %.split107.us.us.us

bb.ab:                                            ; preds = %.preheader.split103.us.us
  %i.dg = icmp slt i64 %.fr119, %i.dc
  br i1 %i.dg, label %bb.ac, label %.split107.us.us.us

bb.ac:                                            ; preds = %bb.ab, %rb_uniform_is_less.exit87.us.us
  %i.dh = getelementptr i8, ptr %.1.us.us, i64 -16
  br label %.preheader.split103.us.us, !llvm.loop !107

.split107.us.us.us:                               ; preds = %bb.ab, %rb_uniform_is_less.exit87.us.us
  %.not.us.us = icmp ugt ptr %.162.us.us, %.1.us.us
  br i1 %.not.us.us, label %bb.x, label %bb.w

.split:                                           ; preds = %bb.v, %bb.ag
  %.061 = phi ptr [ %.263, %bb.ag ], [ %i.cs, %bb.v ]
  %.0 = phi ptr [ %.2, %bb.ag ], [ %0, %bb.v ]
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ae, %.split
  %.162 = phi ptr [ %.0, %.split ], [ %i.do, %bb.ae ] ; 7 uses
  %i.di = load i64, ptr %.162, align 8, !tbaa !54 ; 3 uses
  %i.dj = trunc i64 %i.di to i1
  br i1 %i.dj, label %rb_uniform_is_less.exit84, label %.critedge.i82
end_hunk_6
begin_hunk_7
  br label %bb.ad, !llvm.loop !106

.critedge.i85:                                    ; preds = %.critedge.i85.preheader, %.critedge.i85
  %.1 = phi ptr [ %i.ds, %.critedge.i85 ], [ %.061, %.critedge.i85.preheader ] ; 7 uses
  %i.dp = load i64, ptr %.1, align 8, !tbaa !54
  %i.dq = tail call i32 @rb_float_cmp(i64 noundef %.fr119, i64 noundef %i.dp) #14
  %i.dr = icmp slt i32 %i.dq, 0
end_hunk_7
begin_hunk_8
  br i1 %.not, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.split105.us
  %.sroa.0.0.copyload = load <2 x i64>, ptr %.162, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.162, ptr noundef nonnull align 8 dereferenceable(16) %.1, i64 16, i1 false), !tbaa.struct !99
  store <2 x i64> %.sroa.0.0.copyload, ptr %.1, align 8
  %i.dt = getelementptr i8, ptr %.162, i64 16
  %i.du = getelementptr i8, ptr %.1, i64 -16
  br label %bb.ag

bb.ag:                                            ; preds = %.split105.us, %bb.af
  %.263 = phi ptr [ %i.du, %bb.af ], [ %.1, %.split105.us ] ; 3 uses
  %.2 = phi ptr [ %i.dt, %bb.af ], [ %.162, %.split105.us ] ; 3 uses
  %.not66 = icmp ugt ptr %.2, %.263
  br i1 %.not66, label %.split113.us, label %.split, !llvm.loop !105

.split113.us:                                     ; preds = %bb.ag, %bb.x
  %.us-phi114 = phi ptr [ %.263.us, %bb.x ], [ %.263, %bb.ag ]
  %.us-phi115 = phi ptr [ %.2.us, %bb.x ], [ %.2, %bb.ag ] ; 3 uses
  %i.dv = getelementptr i8, ptr %.us-phi114, i64 16 ; 2 uses
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = sub i64 %i.as, %i.dw
  %i.dy = icmp sgt i64 %i.dx, 16
end_hunk_8
begin_hunk_9
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.split113.us
  %i.ea = ptrtoint ptr %.us-phi115 to i64         ; 2 uses
  %i.eb = sub i64 %i.ea, %i.a                     ; 4 uses
  %i.ec = icmp sgt i64 %i.eb, 16
  br i1 %i.ec, label %tailrecurse, label %rb_uniform_insertionsort_2.exit
end_hunk_9
