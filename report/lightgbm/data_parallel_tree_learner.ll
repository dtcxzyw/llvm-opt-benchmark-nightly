Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/data_parallel_tree_learner?download=true
inline.NumInlined: 2212
inline.NumDeleted: 868
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN8LightGBM23DataParallelTreeLearnerINS_17SerialTreeLearnerEE28FindBestSplitsFromHistogramsERKSt6vectorIaSaIaEEbPKNS_4TreeE.omp_outlined.21:bb.a
  %i.nv = load ptr, ptr %i.v, align 8, !tbaa !252
  %i.nw = load ptr, ptr %7, align 8, !tbaa !268
  %i.nx = getelementptr inbounds nuw [128 x i8], ptr %i.nw, i64 %i.em
  %i.ny = load double, ptr %8, align 8, !tbaa !261
  invoke void @_ZN8LightGBM17SerialTreeLearner26ComputeBestSplitForFeatureEPNS_16FeatureHistogramEiiaiPKNS_10LeafSplitsEPNS_9SplitInfoEd(ptr noundef nonnull align 8 dereferenceable(536) %2, ptr noundef nonnull %i.nk, i32 noundef %i.z, i32 noundef %i.an, i8 noundef signext %i.nn, i32 noundef %i.nu, ptr noundef %i.nv, ptr noundef nonnull %i.nx, double noundef %i.ny)
          to label %bb.aj unwind label %bb.v

bb.ai:                                            ; preds = %bb.v
  %i.nz = load ptr, ptr %i.fu, align 8, !tbaa !182
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  %i.ob = load ptr, ptr %i.oa, align 8
  %i.oc = call noundef ptr %i.ob(ptr noundef nonnull align 8 dereferenceable(8) %i.fu) #20
  invoke void (ptr, ...) @_ZN8LightGBM3Log7WarningEPKcz(ptr noundef %i.oc)
          to label %.invoke118 unwind label %bb.al

bb.aj:                                            ; preds = %.invoke, %bb.q, %bb.p, %bb.ah, %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.od = load i32, ptr %i.b, align 4, !tbaa !203
  %i.oe = sext i32 %i.od to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.oe
  br i1 %.not.not, label %bb.c, label %._crit_edge

.invoke118:                                       ; preds = %bb.v, %bb.ai
  invoke void @_ZN21ThreadExceptionHelper16CaptureExceptionEv(ptr noundef nonnull align 8 dereferenceable(48) %9)
          to label %.invoke unwind label %bb.al

.invoke:                                          ; preds = %.invoke118
  invoke void @__cxa_end_catch()
          to label %bb.aj unwind label %bb.al

._crit_edge:                                      ; preds = %bb.aj, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge, %bb.a
  ret void

bb.al:                                            ; preds = %.invoke118, %.invoke, %bb.ai
  %i.of = landingpad { ptr, i32 }
          catch ptr null
  %i.og = extractvalue { ptr, i32 } %i.of, 0
  call void @__clang_call_terminate(ptr %i.og) #34
  unreachable
}

declare noundef i32 @_ZNK24json11_internal_lightgbm4Json4typeEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM17SerialTreeLearner20AddPredictionToScoreEPKNS_4TreeEPd.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4) #19 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !191
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !198  ; 2 uses
  %i.h = add nsw i32 %i.g, -1                     ; 3 uses
  %i.i = icmp sgt i32 %i.g, 0
  br i1 %i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 0, ptr %i.a, align 4, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 %i.h, ptr %i.b, align 4, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i32 1, ptr %i.c, align 4, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i32 0, ptr %i.d, align 4, !tbaa !203
  %i.j = load i32, ptr %0, align 4, !tbaa !203    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.j, i32 33, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %.promoted = load i32, ptr %i.b, align 4, !tbaa !203
  %.promoted25 = load i32, ptr %i.a, align 4, !tbaa !203 ; 2 uses
  %i.k = call i32 @llvm.smin.i32(i32 %.promoted, i32 %i.h) ; 3 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !203
  %.not26 = icmp sgt i32 %.promoted25, %i.k
  br i1 %.not26, label %._crit_edge27, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.l = load ptr, ptr %2, align 8, !tbaa !191
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 336
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !494
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !183  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !178
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !178
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !495
  %i.w = load i32, ptr %i.c, align 4, !tbaa !203  ; 2 uses
  %i.x = sext i32 %.promoted25 to i64
  %i.y = sext i32 %i.w to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.f
  %indvars.iv29.a = phi i64 [ %i.x, %.preheader.lr.ph ], [ %indvars.iv.next30, %bb.f ] ; 2 uses
  %i.z = phi i32 [ %i.k, %.preheader.lr.ph ], [ %i.bu, %bb.f ] ; 2 uses
  %i.aa = sext i32 %i.z to i64
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %._crit_edge
  %indvars.iv31 = phi i64 [ %indvars.iv29.a, %.preheader ], [ %indvars.iv.next32, %._crit_edge ] ; 5 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv31
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !261 ; 5 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv31
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !203
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv31
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !203 ; 3 uses
  %i.ah = sext i32 %i.ae to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.ah ; 5 uses
  %i.aj = icmp sgt i32 %i.ag, 0
  br i1 %i.aj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.ak = load ptr, ptr %4, align 8, !tbaa !192   ; 5 uses
  %wide.trip.count = zext nneg i32 %i.ag to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.al = icmp ult i32 %i.ag, 4
  br i1 %i.al, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.e

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod37 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod37)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.epil
  %i.an = load i32, ptr %i.am, align 4, !tbaa !203
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.ao ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !261
  %i.ar = fadd double %i.ac, %i.aq
  store double %i.ar, ptr %i.ap, align 8, !tbaa !261
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.d, !llvm.loop !492

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.d, %bb.c
  %indvars.iv.next32 = add nsw i64 %indvars.iv31, 1
  %.not22.not = icmp slt i64 %indvars.iv31, %i.aa
  br i1 %.not22.not, label %bb.c, label %bb.f

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.e ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.e ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv
  %i.at = load i32, ptr %i.as, align 4, !tbaa !203
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.au ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !261
  %i.ax = fadd double %i.ac, %i.aw
  store double %i.ax, ptr %i.av, align 8, !tbaa !261
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !203
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.bb ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !261
  %i.be = fadd double %i.ac, %i.bd
  store double %i.be, ptr %i.bc, align 8, !tbaa !261
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !203
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.bi ; 2 uses
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !261
  %i.bl = fadd double %i.ac, %i.bk
  store double %i.bl, ptr %i.bj, align 8, !tbaa !261
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !203
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.bp ; 2 uses
  %i.br = load double, ptr %i.bq, align 8, !tbaa !261
  %i.bs = fadd double %i.ac, %i.br
  store double %i.bs, ptr %i.bq, align 8, !tbaa !261
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.e, !llvm.loop !493

bb.f:                                             ; preds = %._crit_edge
  %indvars.iv.next30 = add nsw i64 %indvars.iv29.a, %i.y ; 3 uses
  %indvars = trunc nsw i64 %indvars.iv.next30 to i32
  store i32 %indvars, ptr %i.a, align 4, !tbaa !203
  %i.bt = add nsw i32 %i.w, %i.z
  %i.bu = call i32 @llvm.smin.i32(i32 %i.bt, i32 %i.h) ; 3 uses
  store i32 %i.bu, ptr %i.b, align 4, !tbaa !203
  %5 = sext i32 %i.bu to i64
  %.not = icmp sgt i64 %indvars.iv.next30, %5
  br i1 %.not, label %._crit_edge27, label %.preheader

._crit_edge27:                                    ; preds = %bb.f, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge27, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #27 section ".text.startup" comdat($_ZN3fmt3v1112format_facetISt6localeE2idE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1112format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1112format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #29

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v2i32(<2 x i32>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.umin.v2i64(<2 x i64>, <2 x i64>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.umin.v2i64(<2 x i64>) #29

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind }
attributes #21 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nounwind memory(none) }
attributes #23 = { noinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #29 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { nofree nounwind }
attributes #31 = { builtin nounwind }
attributes #32 = { noreturn }
attributes #33 = { builtin allocsize(0) }
attributes #34 = { noreturn nounwind }
attributes #35 = { cold nounwind }
attributes #36 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}
!llvm.errno.tbaa = !{!16}

!0 = distinct !{!0, !227}
!1 = distinct !{!1, !227}
!2 = distinct !{!2, !227}
!3 = distinct !{!3, !227}
!4 = distinct !{!4, !227}
!5 = distinct !{!5, !227}
!6 = distinct !{!6, !227}
!7 = distinct !{!7, !227}
!8 = !{i32 7, !"openmp", i32 51}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!12 = !{!"Simple C++ TBAA"}
!13 = !{!"omnipotent char", !12, i64 0}
!14 = !{!"int", !13, i64 0}
!15 = !{!"__libc_errno", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"_ZTSN8LightGBM11TreeLearnerE"}
!18 = !{!"any pointer", !13, i64 0}
!19 = !{!"p1 _ZTSN8LightGBM7DatasetE", !18, i64 0}
!20 = !{!"p1 float", !18, i64 0}
!21 = !{!"p1 _ZTSN8LightGBM13DataPartitionE", !18, i64 0}
!22 = !{!"_ZTSSt10_Head_baseILm0EPN8LightGBM13DataPartitionELb0EE", !21, i64 0}
!23 = !{!"_ZTSSt11_Tuple_implILm0EJPN8LightGBM13DataPartitionESt14default_deleteIS1_EEE", !22, i64 0}
!24 = !{!"_ZTSSt5tupleIJPN8LightGBM13DataPartitionESt14default_deleteIS1_EEE", !23, i64 0}
!25 = !{!"_ZTSSt15__uniq_ptr_implIN8LightGBM13DataPartitionESt14default_deleteIS1_EE", !24, i64 0}
!26 = !{!"_ZTSSt15__uniq_ptr_dataIN8LightGBM13DataPartitionESt14default_deleteIS1_ELb1ELb1EE", !25, i64 0}
!27 = !{!"_ZTSSt10unique_ptrIN8LightGBM13DataPartitionESt14default_deleteIS1_EE", !26, i64 0}
!28 = !{!"p1 _ZTSN8LightGBM16FeatureHistogramE", !18, i64 0}
!29 = !{!"p1 _ZTSN8LightGBM9SplitInfoE", !18, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseIN8LightGBM9SplitInfoESaIS1_EE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!31 = !{!"_ZTSNSt12_Vector_baseIN8LightGBM9SplitInfoESaIS1_EE12_Vector_implE", !30, i64 0}
!32 = !{!"_ZTSSt12_Vector_baseIN8LightGBM9SplitInfoESaIS1_EE", !31, i64 0}
!33 = !{!"_ZTSSt6vectorIN8LightGBM9SplitInfoESaIS1_EE", !32, i64 0}
!34 = !{!"p1 _ZTSN8LightGBM19LeafConstraintsBaseE", !18, i64 0}
!35 = !{!"_ZTSSt10_Head_baseILm0EPN8LightGBM19LeafConstraintsBaseELb0EE", !34, i64 0}
!36 = !{!"_ZTSSt11_Tuple_implILm0EJPN8LightGBM19LeafConstraintsBaseESt14default_deleteIS1_EEE", !35, i64 0}
!37 = !{!"_ZTSSt5tupleIJPN8LightGBM19LeafConstraintsBaseESt14default_deleteIS1_EEE", !36, i64 0}
!38 = !{!"_ZTSSt15__uniq_ptr_implIN8LightGBM19LeafConstraintsBaseESt14default_deleteIS1_EE", !37, i64 0}
!39 = !{!"_ZTSSt15__uniq_ptr_dataIN8LightGBM19LeafConstraintsBaseESt14default_deleteIS1_ELb1ELb1EE", !38, i64 0}
!40 = !{!"_ZTSSt10unique_ptrIN8LightGBM19LeafConstraintsBaseESt14default_deleteIS1_EE", !39, i64 0}
!41 = !{!"p1 _ZTSN8LightGBM10LeafSplitsE", !18, i64 0}
!42 = !{!"_ZTSSt10_Head_baseILm0EPN8LightGBM10LeafSplitsELb0EE", !41, i64 0}
!43 = !{!"_ZTSSt11_Tuple_implILm0EJPN8LightGBM10LeafSplitsESt14default_deleteIS1_EEE", !42, i64 0}
!44 = !{!"_ZTSSt5tupleIJPN8LightGBM10LeafSplitsESt14default_deleteIS1_EEE", !43, i64 0}
!45 = !{!"_ZTSSt15__uniq_ptr_implIN8LightGBM10LeafSplitsESt14default_deleteIS1_EE", !44, i64 0}
!46 = !{!"_ZTSSt15__uniq_ptr_dataIN8LightGBM10LeafSplitsESt14default_deleteIS1_ELb1ELb1EE", !45, i64 0}
!47 = !{!"_ZTSSt10unique_ptrIN8LightGBM10LeafSplitsESt14default_deleteIS1_EE", !46, i64 0}
!48 = !{!"_ZTSNSt12_Vector_baseIfN8LightGBM6Common18AlignmentAllocatorIfLm32EEEE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!49 = !{!"_ZTSNSt12_Vector_baseIfN8LightGBM6Common18AlignmentAllocatorIfLm32EEEE12_Vector_implE", !48, i64 0}
!50 = !{!"_ZTSSt12_Vector_baseIfN8LightGBM6Common18AlignmentAllocatorIfLm32EEEE", !49, i64 0}
!51 = !{!"_ZTSSt6vectorIfN8LightGBM6Common18AlignmentAllocatorIfLm32EEEE", !50, i64 0}
!52 = !{!"p1 _ZTSSt10unique_ptrIA_N8LightGBM16FeatureHistogramESt14default_deleteIS2_EE", !18, i64 0}
!53 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIA_N8LightGBM16FeatureHistogramESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !52, i64 0, !52, i64 8, !52, i64 16}
!54 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIA_N8LightGBM16FeatureHistogramESt14default_deleteIS3_EESaIS6_EE12_Vector_implE", !53, i64 0}
!55 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIA_N8LightGBM16FeatureHistogramESt14default_deleteIS3_EESaIS6_EE", !54, i64 0}
!56 = !{!"_ZTSSt6vectorISt10unique_ptrIA_N8LightGBM16FeatureHistogramESt14default_deleteIS3_EESaIS6_EE", !55, i64 0}
!57 = !{!"p1 _ZTSSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE", !18, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseISt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEESaIS5_EE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!59 = !{!"_ZTSNSt12_Vector_baseISt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEESaIS5_EE12_Vector_implE", !58, i64 0}
!60 = !{!"_ZTSSt12_Vector_baseISt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEESaIS5_EE", !59, i64 0}
!61 = !{!"_ZTSSt6vectorIS_IdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEESaIS4_EE", !60, i64 0}
!62 = !{!"p1 _ZTSN8LightGBM15FeatureMetainfoE", !18, i64 0}
!63 = !{!"_ZTSNSt12_Vector_baseIN8LightGBM15FeatureMetainfoESaIS1_EE17_Vector_impl_dataE", !62, i64 0, !62, i64 8, !62, i64 16}
!64 = !{!"_ZTSNSt12_Vector_baseIN8LightGBM15FeatureMetainfoESaIS1_EE12_Vector_implE", !63, i64 0}
!65 = !{!"_ZTSSt12_Vector_baseIN8LightGBM15FeatureMetainfoESaIS1_EE", !64, i64 0}
!66 = !{!"_ZTSSt6vectorIN8LightGBM15FeatureMetainfoESaIS1_EE", !65, i64 0}
!67 = !{!"bool", !13, i64 0}
!68 = !{!"p1 int", !18, i64 0}
!69 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !68, i64 0, !68, i64 8, !68, i64 16}
!70 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !69, i64 0}
!71 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !70, i64 0}
!72 = !{!"_ZTSSt6vectorIiSaIiEE", !71, i64 0}
!73 = !{!"_ZTSN8LightGBM13HistogramPoolE", !56, i64 0, !61, i64 24, !66, i64 48, !14, i64 72, !14, i64 76, !67, i64 80, !72, i64 88, !72, i64 112, !72, i64 136, !14, i64 160}
!74 = !{!"p1 _ZTSN8LightGBM6ConfigE", !18, i64 0}
!75 = !{!"double", !13, i64 0}
!76 = !{!"_ZTSN8LightGBM6RandomE", !14, i64 0}
!77 = !{!"p1 omnipotent char", !18, i64 0}
!78 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE17_Vector_impl_dataE", !77, i64 0, !77, i64 8, !77, i64 16}
!79 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE12_Vector_implE", !78, i64 0}
!80 = !{!"_ZTSSt12_Vector_baseIaSaIaEE", !79, i64 0}
!81 = !{!"_ZTSSt6vectorIaSaIaEE", !80, i64 0}
!82 = !{!"p1 _ZTSSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE", !18, i64 0}
!83 = !{!"_ZTSNSt12_Vector_baseISt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEESaIS6_EE17_Vector_impl_dataE", !82, i64 0, !82, i64 8, !82, i64 16}
!84 = !{!"_ZTSNSt12_Vector_baseISt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEESaIS6_EE12_Vector_implE", !83, i64 0}
!85 = !{!"_ZTSSt12_Vector_baseISt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEESaIS6_EE", !84, i64 0}
!86 = !{!"_ZTSSt6vectorISt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEESaIS6_EE", !85, i64 0}
!87 = !{!"_ZTSN8LightGBM10ColSamplerE", !19, i64 0, !75, i64 8, !75, i64 16, !67, i64 24, !14, i64 28, !14, i64 32, !76, i64 36, !81, i64 40, !72, i64 64, !72, i64 88, !86, i64 112}
!88 = !{!"p1 _ZTSN24json11_internal_lightgbm4JsonE", !18, i64 0}
!89 = !{!"p1 _ZTSN8LightGBM19TrainingShareStatesE", !18, i64 0}
!90 = !{!"_ZTSSt10_Head_baseILm0EPN8LightGBM19TrainingShareStatesELb0EE", !89, i64 0}
!91 = !{!"_ZTSSt11_Tuple_implILm0EJPN8LightGBM19TrainingShareStatesESt14default_deleteIS1_EEE", !90, i64 0}
!92 = !{!"_ZTSSt5tupleIJPN8LightGBM19TrainingShareStatesESt14default_deleteIS1_EEE", !91, i64 0}
!93 = !{!"_ZTSSt15__uniq_ptr_implIN8LightGBM19TrainingShareStatesESt14default_deleteIS1_EE", !92, i64 0}
!94 = !{!"_ZTSSt15__uniq_ptr_dataIN8LightGBM19TrainingShareStatesESt14default_deleteIS1_ELb1ELb1EE", !93, i64 0}
!95 = !{!"_ZTSSt10unique_ptrIN8LightGBM19TrainingShareStatesESt14default_deleteIS1_EE", !94, i64 0}
!96 = !{!"p1 _ZTSN8LightGBM29CostEfficientGradientBoostingE", !18, i64 0}
!97 = !{!"_ZTSSt10_Head_baseILm0EPN8LightGBM29CostEfficientGradientBoostingELb0EE", !96, i64 0}
!98 = !{!"_ZTSSt11_Tuple_implILm0EJPN8LightGBM29CostEfficientGradientBoostingESt14default_deleteIS1_EEE", !97, i64 0}
end_hunk_0
