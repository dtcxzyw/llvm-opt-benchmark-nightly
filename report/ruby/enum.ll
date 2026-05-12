inline.NumInlined: 672
inline.NumDeleted: 87
begin_hunk_0

%struct.nmin_data = type { i64, i64, i64, i64, i64, ptr, i8 }
%struct.enum_sum_memo = type { i64, i64, i64, double, double, i32, i32 }

@rb_eArgError = external local_unnamed_addr global i64, align 8
@.str = private unnamed_addr constant [20 x i8] c"negative size (%ld)\00", align 1
end_hunk_0
begin_hunk_1_@rb_imemo_new
; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @rb_uniform_quicksort_intro_2(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 0, -1) %2) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
end_hunk_1
begin_hunk_2_@rb_uniform_quicksort_intro_2:bb.a

.lr.ph25.i:                                       ; preds = %.lr.ph.i, %.lr.ph25.i
  %.023.i = phi i64 [ %i.ar, %.lr.ph25.i ], [ %.pre.i, %.lr.ph.i ] ; 2 uses
  %.sroa.0180.0.copyload = load <2 x i64>, ptr %0, align 8
  %i.aq = getelementptr [16 x i8], ptr %0, i64 %.023.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false), !tbaa.struct !99
  store <2 x i64> %.sroa.0180.0.copyload, ptr %i.aq, align 8
  %i.ar = add i64 %.023.i, -1                     ; 3 uses
  tail call fastcc void @rb_uniform_heap_down_2(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %i.ar)
  %.not19.i = icmp eq i64 %i.ar, 0
end_hunk_2
begin_hunk_3_@rb_uniform_quicksort_intro_2:bb.a
  br label %bb.y

bb.w:                                             ; preds = %.split105.us109
  %.sroa.0.0.copyload178 = load <2 x i64>, ptr %.162.us.us, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.162.us.us, ptr noundef nonnull align 8 dereferenceable(16) %.1.us.us, i64 16, i1 false), !tbaa.struct !99
  store <2 x i64> %.sroa.0.0.copyload178, ptr %.1.us.us, align 8
  %i.cu = getelementptr i8, ptr %.162.us.us, i64 16
  %i.cv = getelementptr i8, ptr %.1.us.us, i64 -16
  br label %bb.x
end_hunk_3
begin_hunk_4_@rb_uniform_quicksort_intro_2:bb.a
  br i1 %.not, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.split105.us
  %.sroa.0.0.copyload = load <2 x i64>, ptr %.162, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.162, ptr noundef nonnull align 8 dereferenceable(16) %.1, i64 16, i1 false), !tbaa.struct !99
  store <2 x i64> %.sroa.0.0.copyload, ptr %.1, align 8
  %i.dt = getelementptr i8, ptr %.162, i64 16
  %i.du = getelementptr i8, ptr %.1, i64 -16
  br label %bb.ag
end_hunk_4
