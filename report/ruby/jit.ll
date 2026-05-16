inline.NumInlined: 108
inline.NumDeleted: 58
begin_hunk_0_@rb_get_mct_argc:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define hidden ptr @rb_get_mct_func(ptr noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !67
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define hidden ptr @rb_get_def_iseq_ptr(ptr noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !45
  ret ptr %.val
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @rb_get_iseq_body_local_iseq(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr i8, ptr %i.b, i64 176
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !68
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @rb_get_iseq_body_parent_iseq(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @rb_get_iseq_body_local_table_size(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr i8, ptr %i.b, i64 240
  %i.d = load i32, ptr %i.c, align 8, !tbaa !70
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @rb_get_iseq_body_iseq_encoded(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @rb_get_iseq_body_stack_max(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr i8, ptr %i.b, i64 264
  %i.d = load i32, ptr %i.c, align 8, !tbaa !71
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @rb_get_iseq_body_type(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = load i32, ptr %i.b, align 8, !tbaa !72
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @rb_get_iseq_flags_has_lead(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load i16, ptr %i.c, align 8
  %i.e = trunc i16 %i.d to i1
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @rb_get_iseq_flags_has_opt(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load i16, ptr %i.c, align 8
  %i.e = and i16 %i.d, 2
  %i.f = icmp ne i16 %i.e, 0
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @rb_get_iseq_flags_has_kw(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load i16, ptr %i.c, align 8
  %i.e = and i16 %i.d, 16
  %i.f = icmp ne i16 %i.e, 0
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @rb_get_iseq_flags_has_post(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load i16, ptr %i.c, align 8
  %i.e = and i16 %i.d, 8
  %i.f = icmp ne i16 %i.e, 0
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @rb_get_iseq_flags_has_kwrest(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load i16, ptr %i.c, align 8
  %i.e = and i16 %i.d, 32
  %i.f = icmp ne i16 %i.e, 0
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @rb_get_iseq_flags_anon_kwrest(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load i16, ptr %i.c, align 8
  %i.e = and i16 %i.d, 2048
  %i.f = icmp ne i16 %i.e, 0
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @rb_get_iseq_flags_has_rest(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load i16, ptr %i.c, align 8
  %i.e = and i16 %i.d, 4
  %i.f = icmp ne i16 %i.e, 0
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @rb_get_iseq_flags_ruby2_keywords(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load i16, ptr %i.c, align 8
  %i.e = and i16 %i.d, 512
  %i.f = icmp ne i16 %i.e, 0
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @rb_get_iseq_flags_has_block(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load i16, ptr %i.c, align 8
  %i.e = and i16 %i.d, 64
  %i.f = icmp ne i16 %i.e, 0
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @rb_get_iseq_flags_ambiguous_param0(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load i16, ptr %i.c, align 8
  %i.e = and i16 %i.d, 128
  %i.f = icmp ne i16 %i.e, 0
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @rb_get_iseq_flags_accepts_no_kwarg(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %1 = load i16, ptr %i.c, align 8
  %2 = and i16 %1, 256
  %3 = icmp ne i16 %2, 0
  ret i1 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @rb_get_iseq_flags_forwardable(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load i16, ptr %i.c, align 8
  %i.e = and i16 %i.d, 8192
  %i.f = icmp ne i16 %i.e, 0
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @rb_get_iseq_body_param_keyword(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @rb_get_iseq_body_param_size(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr i8, ptr %i.b, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !74
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @rb_get_iseq_body_param_lead_num(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !75
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @rb_get_iseq_body_param_opt_num(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr i8, ptr %i.b, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !76
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @rb_get_iseq_body_param_opt_table(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define hidden ptr @rb_get_ec_cfp(ptr noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define hidden ptr @rb_get_cfp_iseq(ptr noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define hidden ptr @rb_get_cfp_pc(ptr noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !90
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define hidden ptr @rb_get_cfp_sp(ptr noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define hidden i64 @rb_get_cfp_self(ptr noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !92
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define hidden ptr @rb_get_cfp_ep(ptr noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93
  ret ptr %i.b
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @rb_get_cfp_ep_level(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 3 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %1, 7                       ; 3 uses
  %i.c = icmp ult i32 %1, 8
  br i1 %i.c, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %1, -8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.07 = phi ptr [ %i.b, %.lr.ph.preheader.new ], [ %i.aa, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.d = getelementptr i8, ptr %.07, i64 -8
  %.0.val = load i64, ptr %i.d, align 8, !tbaa !42
  %i.e = and i64 %.0.val, -4
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr i8, ptr %i.f, i64 -8
  %.0.val.1 = load i64, ptr %i.g, align 8, !tbaa !42
  %i.h = and i64 %.0.val.1, -4
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr i8, ptr %i.i, i64 -8
  %.0.val.2 = load i64, ptr %i.j, align 8, !tbaa !42
  %i.k = and i64 %.0.val.2, -4
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr i8, ptr %i.l, i64 -8
  %.0.val.3 = load i64, ptr %i.m, align 8, !tbaa !42
  %i.n = and i64 %.0.val.3, -4
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr i8, ptr %i.o, i64 -8
  %.0.val.4 = load i64, ptr %i.p, align 8, !tbaa !42
  %i.q = and i64 %.0.val.4, -4
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = getelementptr i8, ptr %i.r, i64 -8
  %.0.val.5 = load i64, ptr %i.s, align 8, !tbaa !42
  %i.t = and i64 %.0.val.5, -4
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr i8, ptr %i.u, i64 -8
  %.0.val.6 = load i64, ptr %i.v, align 8, !tbaa !42
  %i.w = and i64 %.0.val.6, -4
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr i8, ptr %i.x, i64 -8
  %.0.val.7 = load i64, ptr %i.y, align 8, !tbaa !42
  %i.z = and i64 %.0.val.7, -4
  %i.aa = inttoptr i64 %i.z to ptr                ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !94

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.07.epil.init = phi ptr [ %i.b, %.lr.ph.preheader ], [ %i.aa, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod9 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod9)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.07.epil = phi ptr [ %i.ad, %.lr.ph.epil ], [ %.07.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ab = getelementptr i8, ptr %.07.epil, i64 -8
  %.0.val.epil = load i64, ptr %i.ab, align 8, !tbaa !42
  %i.ac = and i64 %.0.val.epil, -4
  %i.ad = inttoptr i64 %i.ac to ptr               ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !96

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.0.lcssa = phi ptr [ %i.b, %bb.a ], [ %i.aa, %._crit_edge.loopexit.unr-lcssa ], [ %i.ad, %.lr.ph.epil ]
  ret ptr %.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @rb_yarv_class_of(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
end_hunk_0
