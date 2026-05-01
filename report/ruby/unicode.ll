inline.NumInlined: 47
inline.NumDeleted: 16
begin_hunk_0_@onigenc_unicode_get_case_fold_codes_by_str:bb.a
  %indvars.iv453 = phi i64 [ 0, %.preheader370.us.us.preheader ], [ %indvars.iv.next454, %._crit_edge381.split.us.us.us ] ; 2 uses
  %.7235383.us.us = phi i32 [ 0, %.preheader370.us.us.preheader ], [ %.lcssa565, %._crit_edge381.split.us.us.us ]
  %i.nu = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv453
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !7  ; 3 uses
  br label %.preheader369.us.us.us

.preheader369.us.us.us:                           ; preds = %._crit_edge378.us.us.us, %.preheader370.us.us
end_hunk_0
begin_hunk_1_@onigenc_unicode_get_case_fold_codes_by_str:bb.a
  %.9375.us.us.us = phi i32 [ %i.oo, %.preheader369.us.us.us.new ], [ %.8236379.us.us.us, %.preheader369.us.us.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader369.us.us.us.new ], [ 0, %.preheader369.us.us.us ]
  %i.ny = sext i32 %.9375.us.us.us to i64
  %i.nz = getelementptr [20 x i8], ptr %4, i64 %i.ny ; 5 uses
  store i32 %i.l, ptr %i.nz, align 4, !tbaa !56
  %5 = getelementptr i8, ptr %i.nz, i64 4
  store i32 3, ptr %5, align 4, !tbaa !58
  %i.oa = getelementptr i8, ptr %i.nz, i64 8
  store i32 %i.nv, ptr %i.oa, align 4, !tbaa !7
  %i.ob = getelementptr i8, ptr %i.nz, i64 12
  store i32 %i.nx, ptr %i.ob, align 4, !tbaa !7
  %i.oc = getelementptr [4 x i8], ptr %i.nr, i64 %indvars.iv
end_hunk_1
begin_hunk_2_@onigenc_unicode_get_case_fold_codes_by_str:bb.a
  store i32 %i.od, ptr %i.oe, align 4, !tbaa !7
  %i.of = add i32 %.9375.us.us.us, 1
  %i.og = sext i32 %i.of to i64
  %i.oh = getelementptr [20 x i8], ptr %4, i64 %i.og ; 5 uses
  store i32 %i.l, ptr %i.oh, align 4, !tbaa !56
  %6 = getelementptr i8, ptr %i.oh, i64 4
  store i32 3, ptr %6, align 4, !tbaa !58
  %i.oi = getelementptr i8, ptr %i.oh, i64 8
  store i32 %i.nv, ptr %i.oi, align 4, !tbaa !7
  %i.oj = getelementptr i8, ptr %i.oh, i64 12
  store i32 %i.nx, ptr %i.oj, align 4, !tbaa !7
  %i.ok = getelementptr [4 x i8], ptr %i.nr, i64 %indvars.iv
end_hunk_2
begin_hunk_3_@onigenc_unicode_get_case_fold_codes_by_str:bb.a
  %.9375.us.us.us.epil.init = phi i32 [ %.8236379.us.us.us, %.preheader369.us.us.us ], [ %i.oo, %._crit_edge378.us.us.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod567)
  %i.op = sext i32 %.9375.us.us.us.epil.init to i64
  %i.oq = getelementptr [20 x i8], ptr %4, i64 %i.op ; 5 uses
  store i32 %i.l, ptr %i.oq, align 4, !tbaa !56
  %7 = getelementptr i8, ptr %i.oq, i64 4
  store i32 3, ptr %7, align 4, !tbaa !58
  %i.or = getelementptr i8, ptr %i.oq, i64 8
  store i32 %i.nv, ptr %i.or, align 4, !tbaa !7
  %i.os = getelementptr i8, ptr %i.oq, i64 12
  store i32 %i.nx, ptr %i.os, align 4, !tbaa !7
  %i.ot = getelementptr [4 x i8], ptr %i.nr, i64 %indvars.iv.epil.init
end_hunk_3
