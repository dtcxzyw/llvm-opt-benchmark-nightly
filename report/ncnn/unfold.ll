loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK4ncnn6Unfold7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined:bb.a

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !44
  %i.h = load i32, ptr %0, align 4, !tbaa !44     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !44
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !44
  %i.k = load i32, ptr %i.a, align 4, !tbaa !44   ; 2 uses
  %.not78 = icmp sgt i32 %i.k, %i.j
  br i1 %.not78, label %._crit_edge.split82, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !53, !noalias !66
  %i.n = load ptr, ptr %3, align 8, !tbaa !51, !noalias !66
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.p = load i64, ptr %i.o, align 8, !tbaa !39, !noalias !66
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !55, !noalias !66 ; 2 uses
  %factor.op.mul = mul i64 %i.p, %i.r
  %i.s = sext i32 %i.m to i64
  %i.t = load i32, ptr %5, align 4, !tbaa !44
  %i.u = load ptr, ptr %4, align 8, !tbaa !51
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.w = load i32, ptr %i.v, align 4, !tbaa !53
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !55
  %factor.op.mul80 = mul i64 %i.z, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 212
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !29 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 220
  %i.ae = mul i64 %i.r, %i.s
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 216
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 224
  br i1 %i.ac, label %.noexc.lr.ph.split, label %._crit_edge.split82

.noexc.lr.ph.split:                               ; preds = %.noexc.lr.ph
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 208
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !9  ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.noexc.lr.ph.split.split, label %._crit_edge.split82

.noexc.lr.ph.split.split:                         ; preds = %.noexc.lr.ph.split
  %i.ak = load i32, ptr %i.ad, align 4, !tbaa !31
  %i.al = load i32, ptr %i.af, align 8, !tbaa !30
  %i.am = load i32, ptr %7, align 4, !tbaa !44    ; 2 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.noexc.lr.ph.split.split.split.us, label %._crit_edge.split82

.noexc.lr.ph.split.split.split.us:                ; preds = %.noexc.lr.ph.split.split
  %i.ao = load i32, ptr %8, align 4, !tbaa !44    ; 4 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  %i.aq = load i32, ptr %9, align 4, !tbaa !44
  %i.ar = sext i32 %i.aq to i64
  br i1 %i.ap, label %.noexc.lr.ph.split.split.split.us.split.us, label %._crit_edge.split82

.noexc.lr.ph.split.split.split.us.split.us:       ; preds = %.noexc.lr.ph.split.split.split.us
  %i.as = load i32, ptr %i.ag, align 8, !tbaa !32
  %i.at = sext i32 %i.as to i64                   ; 10 uses
  %i.au = sext i32 %i.al to i64
  %i.av = sext i32 %i.ak to i64
  %i.aw = sext i32 %i.k to i64
  %i.ax = sext i32 %i.t to i64
  %i.ay = add nsw i32 %i.j, 1
  %factor.op.mul114 = mul i64 %factor.op.mul80, %i.ax
  %wide.trip.count99 = zext nneg i32 %i.ab to i64
  %factor.op.mul113 = mul i64 %i.ae, %i.av
  %wide.trip.count = zext nneg i32 %i.ai to i64
  %xtraiter = and i32 %i.ao, 7                    ; 3 uses
  %i.az = icmp ult i32 %i.ao, 8
  %unroll_iter = and i32 %i.ao, 2147483640
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod120 = icmp ne i32 %xtraiter, 0
  br label %.noexc.us.us

.noexc.us.us:                                     ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.split77.us.split.us.us.us, %.noexc.lr.ph.split.split.split.us.split.us
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split77.us.split.us.us.us ], [ %i.aw, %.noexc.lr.ph.split.split.split.us.split.us ] ; 3 uses
  %.reass.us.us = mul i64 %factor.op.mul, %indvars.iv101
  %i.ba = getelementptr inbounds nuw i8, ptr %i.n, i64 %.reass.us.us
  %.reass115 = mul i64 %indvars.iv101, %factor.op.mul114
  %i.bb = getelementptr inbounds nuw i8, ptr %i.u, i64 %.reass115
  br label %.preheader51.us.us.us.us

.preheader51.us.us.us.us:                         ; preds = %._crit_edge.split.us.split.us.us.us.us.us, %.noexc.us.us
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %._crit_edge.split.us.split.us.us.us.us.us ], [ 0, %.noexc.us.us ] ; 2 uses
  %.03970.us.us.us.us = phi ptr [ %.lcssa, %._crit_edge.split.us.split.us.us.us.us.us ], [ %i.bb, %.noexc.us.us ]
  %.reass = mul i64 %indvars.iv96, %factor.op.mul113
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.reass
  br label %.preheader.lr.ph.us.us.us.us.us.us

.preheader.lr.ph.us.us.us.us.us.us:               ; preds = %._crit_edge59.split.us.us.us.us.us.us.us, %.preheader51.us.us.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge59.split.us.us.us.us.us.us.us ], [ 0, %.preheader51.us.us.us.us ] ; 2 uses
  %.14061.us.us.us.us.us.us = phi ptr [ %.lcssa, %._crit_edge59.split.us.us.us.us.us.us.us ], [ %.03970.us.us.us.us, %.preheader51.us.us.us.us ]
  %i.bd = mul nsw i64 %indvars.iv, %i.au
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bd
  br label %.preheader.us.us.us.us.us.us.us

.preheader.us.us.us.us.us.us.us:                  ; preds = %._crit_edge.us.us.us.us.us.us.us, %.preheader.lr.ph.us.us.us.us.us.us
  %.03558.us.us.us.us.us.us.us = phi i32 [ 0, %.preheader.lr.ph.us.us.us.us.us.us ], [ %i.cj, %._crit_edge.us.us.us.us.us.us.us ]
  %.03657.us.us.us.us.us.us.us = phi ptr [ %i.be, %.preheader.lr.ph.us.us.us.us.us.us ], [ %i.ci, %._crit_edge.us.us.us.us.us.us.us ] ; 2 uses
  %.256.us.us.us.us.us.us.us = phi ptr [ %.14061.us.us.us.us.us.us, %.preheader.lr.ph.us.us.us.us.us.us ], [ %.lcssa, %._crit_edge.us.us.us.us.us.us.us ] ; 2 uses
  br i1 %i.az, label %.epil.preheader, label %.preheader.us.us.us.us.us.us.us.new

.preheader.us.us.us.us.us.us.us.new:              ; preds = %.preheader.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us.us.new
  %.153.us.us.us.us.us.us.us = phi ptr [ %i.cb, %.preheader.us.us.us.us.us.us.us.new ], [ %.03657.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us.us ] ; 2 uses
  %.352.us.us.us.us.us.us.us = phi ptr [ %i.cc, %.preheader.us.us.us.us.us.us.us.new ], [ %.256.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us.us ] ; 9 uses
  %niter = phi i32 [ %niter.next.7, %.preheader.us.us.us.us.us.us.us.new ], [ 0, %.preheader.us.us.us.us.us.us.us ]
  %i.bf = load float, ptr %.153.us.us.us.us.us.us.us, align 4, !tbaa !69
  store float %i.bf, ptr %.352.us.us.us.us.us.us.us, align 4, !tbaa !69
  %i.bg = getelementptr inbounds [4 x i8], ptr %.153.us.us.us.us.us.us.us, i64 %i.at ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.352.us.us.us.us.us.us.us, i64 4
  %i.bi = load float, ptr %i.bg, align 4, !tbaa !69
  store float %i.bi, ptr %i.bh, align 4, !tbaa !69
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.at ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.352.us.us.us.us.us.us.us, i64 8
  %i.bl = load float, ptr %i.bj, align 4, !tbaa !69
  store float %i.bl, ptr %i.bk, align 4, !tbaa !69
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.at ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.352.us.us.us.us.us.us.us, i64 12
  %i.bo = load float, ptr %i.bm, align 4, !tbaa !69
  store float %i.bo, ptr %i.bn, align 4, !tbaa !69
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.at ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.352.us.us.us.us.us.us.us, i64 16
  %i.br = load float, ptr %i.bp, align 4, !tbaa !69
  store float %i.br, ptr %i.bq, align 4, !tbaa !69
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.at ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.352.us.us.us.us.us.us.us, i64 20
  %i.bu = load float, ptr %i.bs, align 4, !tbaa !69
  store float %i.bu, ptr %i.bt, align 4, !tbaa !69
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.at ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.352.us.us.us.us.us.us.us, i64 24
  %i.bx = load float, ptr %i.bv, align 4, !tbaa !69
  store float %i.bx, ptr %i.bw, align 4, !tbaa !69
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.at ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.352.us.us.us.us.us.us.us, i64 28
  %i.ca = load float, ptr %i.by, align 4, !tbaa !69
  store float %i.ca, ptr %i.bz, align 4, !tbaa !69
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.at ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.352.us.us.us.us.us.us.us, i64 32 ; 3 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.us.us.us.us.us.us.us.unr-lcssa, label %.preheader.us.us.us.us.us.us.us.new, !llvm.loop !70

._crit_edge.us.us.us.us.us.us.us.unr-lcssa:       ; preds = %.preheader.us.us.us.us.us.us.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.us.us.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.us.us.us.us.us.unr-lcssa, %.preheader.us.us.us.us.us.us.us
  %.153.us.us.us.us.us.us.us.epil.init = phi ptr [ %.03657.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us.us ], [ %i.cb, %._crit_edge.us.us.us.us.us.us.us.unr-lcssa ]
  %.352.us.us.us.us.us.us.us.epil.init = phi ptr [ %.256.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us.us ], [ %i.cc, %._crit_edge.us.us.us.us.us.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod120)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.153.us.us.us.us.us.us.us.epil = phi ptr [ %.153.us.us.us.us.us.us.us.epil.init, %.epil.preheader ], [ %i.ce, %bb.c ] ; 3 uses
  %.352.us.us.us.us.us.us.us.epil = phi ptr [ %.352.us.us.us.us.us.us.us.epil.init, %.epil.preheader ], [ %i.cf, %bb.c ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.cd = load float, ptr %.153.us.us.us.us.us.us.us.epil, align 4, !tbaa !69
  store float %i.cd, ptr %.352.us.us.us.us.us.us.us.epil, align 4, !tbaa !69
  %i.ce = getelementptr inbounds [4 x i8], ptr %.153.us.us.us.us.us.us.us.epil, i64 %i.at
  %i.cf = getelementptr inbounds nuw i8, ptr %.352.us.us.us.us.us.us.us.epil, i64 4 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.us.us.us.us.us.us, label %bb.c, !llvm.loop !72

._crit_edge.us.us.us.us.us.us.us:                 ; preds = %bb.c, %._crit_edge.us.us.us.us.us.us.us.unr-lcssa
  %i.cg = phi ptr [ %i.by, %._crit_edge.us.us.us.us.us.us.us.unr-lcssa ], [ %.153.us.us.us.us.us.us.us.epil, %bb.c ]
  %.lcssa = phi ptr [ %i.cc, %._crit_edge.us.us.us.us.us.us.us.unr-lcssa ], [ %i.cf, %bb.c ] ; 3 uses
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.at
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.ar
  %i.cj = add nuw nsw i32 %.03558.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond93.not = icmp eq i32 %i.cj, %i.am
  br i1 %exitcond93.not, label %._crit_edge59.split.us.us.us.us.us.us.us, label %.preheader.us.us.us.us.us.us.us, !llvm.loop !74

._crit_edge59.split.us.us.us.us.us.us.us:         ; preds = %._crit_edge.us.us.us.us.us.us.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond95.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond95.not, label %._crit_edge.split.us.split.us.us.us.us.us, label %.preheader.lr.ph.us.us.us.us.us.us, !llvm.loop !75

._crit_edge.split.us.split.us.us.us.us.us:        ; preds = %._crit_edge59.split.us.us.us.us.us.us.us
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond100.not = icmp eq i64 %indvars.iv.next97, %wide.trip.count99
  br i1 %exitcond100.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge.split77.us.split.us.us.us, label %.preheader51.us.us.us.us, !llvm.loop !76

._ZN4ncnn3MatD2Ev.exit_crit_edge.split77.us.split.us.us.us: ; preds = %._crit_edge.split.us.split.us.us.us.us.us
  %indvars.iv.next102 = add nsw i64 %indvars.iv101, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next102 to i32
  %exitcond104.not = icmp eq i32 %i.ay, %lftr.wideiv
  br i1 %exitcond104.not, label %._crit_edge.split82, label %.noexc.us.us

._crit_edge.split82:                              ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.split77.us.split.us.us.us, %.noexc.lr.ph.split.split.split.us, %.noexc.lr.ph.split.split, %.noexc.lr.ph, %.noexc.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.split82, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #6 ; 0 uses
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare !callback !77 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

declare void @_ZN4ncnn16copy_make_borderERKNS_3MatERS0_iiiiifRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, float noundef nofpclass(nan inf), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !6, i64 208}
!10 = !{!"_ZTSN4ncnn6UnfoldE", !11, i64 0, !6, i64 208, !6, i64 212, !6, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !28, i64 248}
!11 = !{!"_ZTSN4ncnn5LayerE", !12, i64 8, !12, i64 9, !12, i64 10, !12, i64 11, !12, i64 12, !12, i64 13, !12, i64 14, !12, i64 15, !12, i64 16, !12, i64 17, !12, i64 18, !12, i64 19, !12, i64 20, !12, i64 21, !12, i64 22, !12, i64 23, !12, i64 24, !12, i64 25, !12, i64 26, !12, i64 27, !6, i64 28, !13, i64 32, !6, i64 40, !14, i64 48, !14, i64 80, !18, i64 112, !18, i64 136, !23, i64 160, !23, i64 184}
!12 = !{!"bool", !7, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !17, i64 8, !7, i64 16}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !16, i64 0}
!16 = !{!"p1 omnipotent char", !13, i64 0}
!17 = !{!"long", !7, i64 0}
!18 = !{!"_ZTSSt6vectorIiSaIiEE", !19, i64 0}
!19 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !20, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !21, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !22, i64 0, !22, i64 8, !22, i64 16}
!22 = !{!"p1 int", !13, i64 0}
!23 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !24, i64 0}
!24 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !25, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !26, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!27 = !{!"p1 _ZTSN4ncnn3MatE", !13, i64 0}
!28 = !{!"float", !7, i64 0}
!29 = !{!10, !6, i64 212}
!30 = !{!10, !6, i64 216}
!31 = !{!10, !6, i64 220}
!32 = !{!10, !6, i64 224}
!33 = !{!10, !6, i64 228}
!34 = !{!10, !6, i64 232}
!35 = !{!10, !6, i64 236}
!36 = !{!10, !6, i64 240}
!37 = !{!10, !6, i64 244}
!38 = !{!10, !28, i64 248}
!39 = !{!40, !17, i64 64}
!40 = !{!"_ZTSN4ncnn3MatE", !13, i64 0, !22, i64 8, !17, i64 16, !6, i64 24, !41, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !17, i64 64}
!41 = !{!"p1 _ZTSN4ncnn9AllocatorE", !13, i64 0}
!42 = !{i64 0, i64 1, !43, i64 1, i64 1, !43, i64 2, i64 1, !43, i64 3, i64 1, !43, i64 4, i64 4, !44, i64 8, i64 8, !45, i64 16, i64 8, !45, i64 24, i64 4, !44, i64 28, i64 1, !43, i64 29, i64 1, !43, i64 30, i64 1, !43, i64 31, i64 1, !43, i64 32, i64 1, !43, i64 33, i64 1, !43, i64 34, i64 1, !43, i64 35, i64 1, !43, i64 36, i64 1, !43, i64 37, i64 1, !43, i64 38, i64 1, !43, i64 39, i64 1, !43, i64 40, i64 4, !44, i64 44, i64 1, !43, i64 45, i64 1, !43, i64 46, i64 1, !43, i64 47, i64 1, !43, i64 48, i64 1, !46, i64 49, i64 1, !43, i64 50, i64 1, !43, i64 51, i64 1, !43, i64 52, i64 1, !43, i64 53, i64 1, !43, i64 54, i64 1, !43, i64 55, i64 1, !43, i64 56, i64 1, !43, i64 57, i64 1, !43, i64 58, i64 1, !43, i64 59, i64 1, !43, i64 60, i64 1, !43, i64 61, i64 1, !43, i64 62, i64 1, !43, i64 63, i64 1, !43}
!43 = !{!12, !12, i64 0}
!44 = !{!6, !6, i64 0}
!45 = !{!41, !41, i64 0}
!46 = !{!7, !7, i64 0}
!47 = !{!48, !41, i64 16}
!48 = !{!"_ZTSN4ncnn6OptionE", !12, i64 0, !12, i64 1, !12, i64 2, !12, i64 3, !6, i64 4, !41, i64 8, !41, i64 16, !6, i64 24, !12, i64 28, !12, i64 29, !12, i64 30, !12, i64 31, !12, i64 32, !12, i64 33, !12, i64 34, !12, i64 35, !12, i64 36, !12, i64 37, !12, i64 38, !12, i64 39, !6, i64 40, !12, i64 44, !12, i64 45, !12, i64 46, !12, i64 47, !7, i64 48, !12, i64 49, !12, i64 50, !12, i64 51, !12, i64 52, !12, i64 53, !12, i64 54, !12, i64 55, !12, i64 56, !12, i64 57, !12, i64 58, !12, i64 59, !12, i64 60, !12, i64 61, !12, i64 62, !12, i64 63}
!49 = !{!48, !41, i64 8}
!50 = !{!48, !12, i64 39}
!51 = !{!40, !13, i64 0}
!52 = !{!40, !6, i64 56}
!53 = !{!40, !6, i64 44}
!54 = !{!40, !6, i64 48}
!55 = !{!40, !17, i64 16}
!56 = !{!48, !6, i64 4}
!57 = !{!40, !22, i64 8}
!58 = !{!40, !41, i64 32}
!59 = !{!60, !60, i64 0}
!60 = !{!"vtable pointer", !8, i64 0}
!61 = distinct !{null}
!62 = !{!11, !12, i64 8}
!63 = distinct !{null, null}
!64 = !{!13, !13, i64 0}
!65 = !{!40, !6, i64 24}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!68 = distinct !{!68, !"_ZN4ncnn3Mat7channelEi"}
!69 = !{!28, !28, i64 0}
!70 = distinct !{!70, !71}
!71 = !{!"llvm.loop.mustprogress"}
!72 = distinct !{!72, !73}
!73 = !{!"llvm.loop.unroll.disable"}
!74 = distinct !{!74, !71}
!75 = distinct !{!75, !71}
!76 = distinct !{!76, !71}
!77 = !{!78}
!78 = !{i64 2, i64 -1, i64 -1, i1 true}
end_hunk_0
