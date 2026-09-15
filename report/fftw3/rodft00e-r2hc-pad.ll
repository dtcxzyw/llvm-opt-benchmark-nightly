Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/rodft00e-r2hc-pad?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@mkplan:bb.a
  %i.aa = call i32 @fftw_tensor_tornk1(ptr noundef %i.z, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #5 ; 0 uses
  %i.ab = call ptr @fftw_mktensor_0d() #5
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !34
  %i.af = call ptr @fftw_mktensor_1d(i64 noundef %i.q, i64 noundef -1, i64 noundef %i.ae) #5
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.s
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !35
  %i.ak = load i64, ptr %i.c, align 8, !tbaa !36
  %i.al = call ptr @fftw_taint(ptr noundef %i.aj, i64 noundef %i.ak) #5
  %i.am = call ptr @fftw_mkproblem_rdft_1_d(ptr noundef %i.ab, ptr noundef %i.af, ptr noundef nonnull %i.ah, ptr noundef %i.al, i32 noundef 0) #5
  %i.an = call ptr @fftw_mkplan_d(ptr noundef nonnull %2, ptr noundef %i.am) #5 ; 3 uses
  %.not51 = icmp eq ptr %i.an, null
  br i1 %.not51, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @fftw_ifree(ptr noundef nonnull %i.u) #5
  %i.ao = call ptr @fftw_mkplan_rdft(i64 noundef 120, ptr noundef nonnull @mkplan.padt, ptr noundef nonnull @apply) #5 ; 9 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 88
  store i64 %i.r, ptr %i.ap, align 8, !tbaa !17
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !37
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  store i64 %i.as, ptr %i.at, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  store ptr %i.y, ptr %i.au, align 8, !tbaa !19
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  store ptr %i.an, ptr %i.av, align 8, !tbaa !20
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !36
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 96 ; 4 uses
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !21
  %i.ay = load i64, ptr %i.b, align 8, !tbaa !36
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !22
  %i.ba = load i64, ptr %i.c, align 8, !tbaa !36
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 112
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !23
  call void @fftw_ops_zero(ptr noundef nonnull %3) #5
  %i.bc = add nsw i64 %i.s, %i.q
  %i.bd = sitofp i64 %i.bc to double
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 24
  store double %i.bd, ptr %i.be, align 8, !tbaa !38
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 4 uses
  call void @fftw_ops_zero(ptr noundef nonnull %i.bf) #5
  %i.bg = load i64, ptr %i.ax, align 8, !tbaa !21
  call void @fftw_ops_madd2(i64 noundef %i.bg, ptr noundef nonnull %3, ptr noundef nonnull %i.bf) #5
  %i.bh = load i64, ptr %i.ax, align 8, !tbaa !21
  %i.bi = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @fftw_ops_madd2(i64 noundef %i.bh, ptr noundef nonnull %i.bi, ptr noundef nonnull %i.bf) #5
  %i.bj = load i64, ptr %i.ax, align 8, !tbaa !21
  %i.bk = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  call void @fftw_ops_madd2(i64 noundef %i.bj, ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bf) #5
  br label %bb.h

.thread:                                          ; preds = %bb.d, %applicable.exit, %bb.a, %bb.c, %bb.b
  %.0.ph = phi ptr [ %i.u, %bb.d ], [ null, %applicable.exit ], [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.b ]
  tail call void @fftw_ifree0(ptr noundef %.0.ph) #5
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @fftw_ifree0(ptr noundef nonnull %i.u) #5
  call void @fftw_plan_destroy_internal(ptr noundef nonnull %i.y) #5
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g, %bb.f
  %.047 = phi ptr [ %i.ao, %bb.f ], [ null, %bb.g ], [ null, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret ptr %.047
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @fftw_mksolver(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @fftw_rdft_solve(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal void @awake(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  tail call void @fftw_plan_awake(ptr noundef %i.b, i32 noundef %1) #5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  tail call void @fftw_plan_awake(ptr noundef %i.d, i32 noundef %1) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i64, ptr %i.b, align 8, !tbaa !17
  %i.d = add nsw i64 %i.c, -1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load i64, ptr %i.e, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  tail call void (ptr, ptr, ...) %i.a(ptr noundef nonnull %1, ptr noundef nonnull @.str, i64 noundef %i.d, i64 noundef %i.f, ptr noundef %i.h, ptr noundef %i.j) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @destroy(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  tail call void @fftw_plan_destroy_internal(ptr noundef %i.b) #5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19
  tail call void @fftw_plan_destroy_internal(ptr noundef %i.d) #5
  ret void
}

declare ptr @fftw_malloc_plain(i64 noundef) local_unnamed_addr #1

declare ptr @fftw_mkplan_d(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @fftw_mkproblem_rdft_1_d(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @fftw_mktensor_1d(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @fftw_mktensor_0d() local_unnamed_addr #1

declare i32 @fftw_tensor_tornk1(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @fftw_taint(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @fftw_ifree(ptr noundef) local_unnamed_addr #1

declare ptr @fftw_mkplan_rdft(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @apply(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8, !tbaa !17   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load i64, ptr %i.e, align 8, !tbaa !21   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load i64, ptr %i.g, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = load i64, ptr %i.i, align 8, !tbaa !23   ; 2 uses
  %i.k = shl nsw i64 %i.d, 1                      ; 6 uses
  %i.l = shl i64 %i.d, 4
  %i.m = tail call ptr @fftw_malloc_plain(i64 noundef %i.l) #5 ; 19 uses
  %i.n = icmp sgt i64 %i.f, 0
  br i1 %i.n, label %.lr.ph49, label %._crit_edge50

.lr.ph49:                                         ; preds = %bb.a
  %i.o = icmp sgt i64 %i.d, 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.k
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -8 ; 2 uses
  br i1 %i.o, label %.lr.ph.us.preheader, label %.lr.ph49.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph49
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.d
  %i.u = add nsw i64 %i.d, -1                     ; 2 uses
  %i.v = add nsw i64 %i.d, -2
  %xtraiter = and i64 %i.u, 3                     ; 3 uses
  %i.w = icmp ult i64 %i.v, 3
  %unroll_iter = and i64 %i.u, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod59 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.047.us = phi ptr [ %i.bw, %._crit_edge.us ], [ %1, %.lr.ph.us.preheader ] ; 6 uses
  %.04146.us = phi ptr [ %i.bx, %._crit_edge.us ], [ %2, %.lr.ph.us.preheader ] ; 2 uses
  %.04245.us = phi i64 [ %i.bv, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ]
  store double 0.000000e+00, ptr %i.m, align 8, !tbaa !44
  br i1 %i.w, label %.epil.preheader, label %.lr.ph.us.new

.lr.ph.us.new:                                    ; preds = %.lr.ph.us, %.lr.ph.us.new
  %.04344.us = phi i64 [ %i.bf, %.lr.ph.us.new ], [ 1, %.lr.ph.us ] ; 10 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.new ], [ 0, %.lr.ph.us ]
  %i.x = add nsw i64 %.04344.us, -1
  %i.y = mul nsw i64 %i.x, %i.b
  %i.z = getelementptr inbounds [8 x i8], ptr %.047.us, i64 %i.y
  %i.aa = load double, ptr %i.z, align 8, !tbaa !44 ; 2 uses
  %i.ab = fneg double %i.aa
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.04344.us
  store double %i.ab, ptr %i.ac, align 8, !tbaa !44
  %i.ad = sub nuw nsw i64 %i.k, %.04344.us
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ad
  store double %i.aa, ptr %i.ae, align 8, !tbaa !44
  %i.af = add nuw nsw i64 %.04344.us, 1           ; 2 uses
  %i.ag = mul nsw i64 %.04344.us, %i.b
  %i.ah = getelementptr inbounds [8 x i8], ptr %.047.us, i64 %i.ag
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !44 ; 2 uses
  %i.aj = fneg double %i.ai
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.af
  store double %i.aj, ptr %i.ak, align 8, !tbaa !44
  %i.al = sub nuw nsw i64 %i.k, %i.af
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.al
  store double %i.ai, ptr %i.am, align 8, !tbaa !44
  %i.an = add nuw nsw i64 %.04344.us, 2           ; 2 uses
  %i.ao = add nuw nsw i64 %.04344.us, 1
  %i.ap = mul nsw i64 %i.ao, %i.b
  %i.aq = getelementptr inbounds [8 x i8], ptr %.047.us, i64 %i.ap
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !44 ; 2 uses
  %i.as = fneg double %i.ar
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.an
  store double %i.as, ptr %i.at, align 8, !tbaa !44
  %i.au = sub nuw nsw i64 %i.k, %i.an
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.au
  store double %i.ar, ptr %i.av, align 8, !tbaa !44
  %i.aw = add nuw nsw i64 %.04344.us, 3           ; 2 uses
  %i.ax = add nuw nsw i64 %.04344.us, 2
  %i.ay = mul nsw i64 %i.ax, %i.b
  %i.az = getelementptr inbounds [8 x i8], ptr %.047.us, i64 %i.ay
  %i.ba = load double, ptr %i.az, align 8, !tbaa !44 ; 2 uses
  %i.bb = fneg double %i.ba
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.aw
  store double %i.bb, ptr %i.bc, align 8, !tbaa !44
  %i.bd = sub nuw nsw i64 %i.k, %i.aw
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.bd
  store double %i.ba, ptr %i.be, align 8, !tbaa !44
  %i.bf = add nuw nsw i64 %.04344.us, 4           ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.lr.ph.us.new, !llvm.loop !41

._crit_edge.us.unr-lcssa:                         ; preds = %.lr.ph.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph.us
  %.04344.us.epil.init = phi i64 [ 1, %.lr.ph.us ], [ %i.bf, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod59)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.04344.us.epil = phi i64 [ %.04344.us.epil.init, %.epil.preheader ], [ %i.bo, %bb.b ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.bg = add nsw i64 %.04344.us.epil, -1
  %i.bh = mul nsw i64 %i.bg, %i.b
  %i.bi = getelementptr inbounds [8 x i8], ptr %.047.us, i64 %i.bh
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !44 ; 2 uses
  %i.bk = fneg double %i.bj
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.04344.us.epil
  store double %i.bk, ptr %i.bl, align 8, !tbaa !44
  %i.bm = sub nuw nsw i64 %i.k, %.04344.us.epil
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.bm
  store double %i.bj, ptr %i.bn, align 8, !tbaa !44
  %i.bo = add nuw nsw i64 %.04344.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.b, !llvm.loop !42

._crit_edge.us:                                   ; preds = %bb.b, %._crit_edge.us.unr-lcssa
  store double 0.000000e+00, ptr %i.t, align 8, !tbaa !44
  %i.bp = load ptr, ptr %i.p, align 8, !tbaa !19  ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !47
  tail call void %i.br(ptr noundef %i.bp, ptr noundef nonnull %i.m, ptr noundef nonnull %i.m) #5
  %i.bs = load ptr, ptr %i.q, align 8, !tbaa !20  ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 56
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !47
  tail call void %i.bu(ptr noundef %i.bs, ptr noundef nonnull %i.s, ptr noundef %.04146.us) #5
  %i.bv = add nuw nsw i64 %.04245.us, 1           ; 2 uses
  %i.bw = getelementptr inbounds [8 x i8], ptr %.047.us, i64 %i.h
  %i.bx = getelementptr inbounds [8 x i8], ptr %.04146.us, i64 %i.j
  %exitcond53.not = icmp eq i64 %i.bv, %i.f
  br i1 %exitcond53.not, label %._crit_edge50, label %.lr.ph.us, !llvm.loop !43

.lr.ph49.split:                                   ; preds = %.lr.ph49, %.lr.ph49.split
  %.04146 = phi ptr [ %i.cf, %.lr.ph49.split ], [ %2, %.lr.ph49 ] ; 2 uses
  %.04245 = phi i64 [ %i.ce, %.lr.ph49.split ], [ 0, %.lr.ph49 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %i.by = load ptr, ptr %i.p, align 8, !tbaa !19  ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 56
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !47
  tail call void %i.ca(ptr noundef %i.by, ptr noundef nonnull %i.m, ptr noundef nonnull %i.m) #5
  %i.cb = load ptr, ptr %i.q, align 8, !tbaa !20  ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !47
  tail call void %i.cd(ptr noundef %i.cb, ptr noundef nonnull %i.s, ptr noundef %.04146) #5
  %i.ce = add nuw nsw i64 %.04245, 1              ; 2 uses
  %i.cf = getelementptr inbounds [8 x i8], ptr %.04146, i64 %i.j
  %exitcond.not = icmp eq i64 %i.ce, %i.f
  br i1 %exitcond.not, label %._crit_edge50, label %.lr.ph49.split, !llvm.loop !43

._crit_edge50:                                    ; preds = %.lr.ph49.split, %._crit_edge.us, %bb.a
  tail call void @fftw_ifree(ptr noundef %i.m) #5
  ret void
}

declare void @fftw_ops_zero(ptr noundef) local_unnamed_addr #1

declare void @fftw_ops_madd2(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @fftw_ifree0(ptr noundef) local_unnamed_addr #1

declare void @fftw_plan_destroy_internal(ptr noundef) local_unnamed_addr #1

declare void @fftw_plan_awake(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = !{!"double", !5, i64 0}
!12 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!13 = !{!"plan_s", !9, i64 0, !12, i64 8, !11, i64 40, !6, i64 48, !6, i64 52}
!14 = !{!"", !13, i64 0, !9, i64 56}
!15 = !{!"p1 _ZTS6plan_s", !9, i64 0}
!16 = !{!"", !14, i64 0, !15, i64 64, !15, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112}
!17 = !{!16, !10, i64 88}
!18 = !{!16, !10, i64 80}
!19 = !{!16, !15, i64 64}
!20 = !{!16, !15, i64 72}
!21 = !{!16, !10, i64 96}
!22 = !{!16, !10, i64 104}
!23 = !{!16, !10, i64 112}
!24 = !{!"problem_s", !9, i64 0}
!25 = !{!"p1 double", !9, i64 0}
!26 = !{!"", !24, i64 0, !9, i64 8, !9, i64 16, !25, i64 24, !25, i64 32, !5, i64 40}
!27 = !{!26, !9, i64 8}
!28 = !{!"", !6, i64 0, !5, i64 8}
!29 = !{!28, !6, i64 0}
!30 = !{!26, !9, i64 16}
!31 = !{!6, !6, i64 0}
!32 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16}
!33 = !{!32, !10, i64 0}
!34 = !{!32, !10, i64 16}
!35 = !{!26, !25, i64 32}
!36 = !{!10, !10, i64 0}
!37 = !{!32, !10, i64 8}
!38 = !{!12, !11, i64 24}
!39 = !{!"printer_s", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !6, i64 32, !6, i64 36}
!40 = !{!39, !9, i64 0}
!41 = distinct !{!41, !45}
!42 = distinct !{!42, !46}
!43 = distinct !{!43, !45}
!44 = !{!11, !11, i64 0}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = !{!14, !9, i64 56}
end_hunk_0
