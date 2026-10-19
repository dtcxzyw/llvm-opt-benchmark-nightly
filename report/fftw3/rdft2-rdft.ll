Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/rdft2-rdft?download=true
inline.NumInlined: 6
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@mkplan:bb.a
  %i.fd = sdiv i64 %i.fc, 2
  %i.fe = call ptr @fftw_mktensor_1d(i64 noundef %i.au, i64 noundef 1, i64 noundef %i.fd) #4
  %i.ff = load i64, ptr %i.g, align 8, !tbaa !40
  %i.fg = call ptr @fftw_mktensor_1d(i64 noundef %i.dc, i64 noundef %i.de, i64 noundef %i.ff) #4
  %i.fh = load ptr, ptr %i.x, align 8, !tbaa !39
  %i.fi = load i64, ptr %i.g, align 8, !tbaa !40
  %i.fj = mul nsw i64 %i.fi, %i.dc
  %i.fk = call ptr @fftw_taint(ptr noundef %i.fh, i64 noundef %i.fj) #4
  %i.fl = call ptr @fftw_mkproblem_rdft_d(ptr noundef %i.fe, ptr noundef %i.fg, ptr noundef %i.dh, ptr noundef %i.fk, ptr noundef nonnull %i.t) #4
  %i.fm = call ptr @fftw_mkplan_f_d(ptr noundef nonnull %2, ptr noundef %i.fl, i32 noundef 0, i32 noundef 0, i32 noundef 4096) #4 ; 3 uses
  %.not109 = icmp eq ptr %i.fm, null
  br i1 %.not109, label %applicable.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @fftw_ifree(ptr noundef %i.dh) #4
  %i.fn = load ptr, ptr %i.p, align 8, !tbaa !36
  %i.fo = call ptr @fftw_tensor_copy(ptr noundef %i.fn) #4
  %i.fp = load i64, ptr %i.e, align 8, !tbaa !40
  %i.fq = srem i64 %i.fp, %i.dc
  %i.fr = load i64, ptr %i.f, align 8, !tbaa !40
  %i.fs = load i64, ptr %i.g, align 8, !tbaa !40
  %i.ft = call ptr @fftw_mktensor_1d(i64 noundef %i.fq, i64 noundef %i.fr, i64 noundef %i.fs) #4
  %i.fu = load ptr, ptr %i.x, align 8, !tbaa !39
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %i.do
  %i.fw = load ptr, ptr %i.v, align 8, !tbaa !38
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.fw, i64 %i.do
  %i.fy = load ptr, ptr %i.bb, align 8, !tbaa !43
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.fy, i64 %i.dm
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !44
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.gb, i64 %i.dm
  %i.gd = load i32, ptr %i.t, align 8, !tbaa !37
  %i.ge = call ptr @fftw_mkproblem_rdft2_d(ptr noundef %i.fo, ptr noundef %i.ft, ptr noundef %i.fv, ptr noundef %i.fx, ptr noundef %i.fz, ptr noundef %i.gc, i32 noundef %i.gd) #4
  %i.gf = call ptr @fftw_mkplan_d(ptr noundef nonnull %2, ptr noundef %i.ge) #4 ; 2 uses
  %.not110 = icmp eq ptr %i.gf, null
  br i1 %.not110, label %applicable.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %apply_hc2r.sink = phi ptr [ @apply_r2hc, %bb.r ], [ @apply_hc2r, %bb.t ]
  %.097 = phi ptr [ %i.eh, %bb.r ], [ %i.fm, %bb.t ] ; 2 uses
  %.096 = phi ptr [ %i.fa, %bb.r ], [ %i.gf, %bb.t ] ; 2 uses
  %i.gg = call ptr @fftw_mkplan_rdft2(i64 noundef 136, ptr noundef nonnull @mkplan.padt, ptr noundef nonnull %apply_hc2r.sink) #4 ; 12 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 64
  store ptr %.097, ptr %i.gh, align 8, !tbaa !17
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 72
  store ptr %.096, ptr %i.gi, align 8, !tbaa !18
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 80
  store i64 %i.au, ptr %i.gj, align 8, !tbaa !19
  %i.gk = load i64, ptr %i.e, align 8, !tbaa !40
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gg, i64 88
  store i64 %i.gk, ptr %i.gl, align 8, !tbaa !20
  %i.gm = load i64, ptr %i.f, align 8, !tbaa !40
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gg, i64 120
  store i64 %i.gm, ptr %i.gn, align 8, !tbaa !21
  %i.go = load i64, ptr %i.g, align 8, !tbaa !40
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gg, i64 128
  store i64 %i.go, ptr %i.gp, align 8, !tbaa !22
  %i.gq = load i32, ptr %i.t, align 8, !tbaa !37
  %i.gr = load ptr, ptr %i.p, align 8, !tbaa !36
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gg, i64 112
  call void @fftw_rdft2_strides(i32 noundef %i.gq, ptr noundef nonnull %i.gs, ptr noundef nonnull %i.h, ptr noundef nonnull %i.gt) #4
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gg, i64 96
  store i64 %i.dc, ptr %i.gu, align 8, !tbaa !23
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gg, i64 104
  store i64 %i.de, ptr %i.gv, align 8, !tbaa !24
  %i.gw = load i64, ptr %i.e, align 8, !tbaa !40
  %i.gx = sdiv i64 %i.gw, %i.dc
  %i.gy = getelementptr inbounds nuw i8, ptr %.097, i64 8
  %i.gz = getelementptr inbounds nuw i8, ptr %.096, i64 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  call void @fftw_ops_madd(i64 noundef %i.gx, ptr noundef nonnull %i.gy, ptr noundef nonnull %i.gz, ptr noundef nonnull %i.ha) #4
  %i.hb = load i32, ptr %i.t, align 8, !tbaa !37
  %i.hc = icmp eq i32 %i.hb, 0
  %i.hd = add nsw i64 %i.au, 2
  %i.he = select i1 %i.hc, i64 %i.hd, i64 %i.au
  %i.hf = load i64, ptr %i.e, align 8, !tbaa !40
  %i.hg = mul nsw i64 %i.he, %i.hf
  %i.hh = sitofp i64 %i.hg to double
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gg, i64 32 ; 2 uses
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !47
  %i.hk = fadd double %i.hj, %i.hh
  store double %i.hk, ptr %i.hi, align 8, !tbaa !47
  br label %bb.v

applicable.exit.thread:                           ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.h, %bb.g, %bb.f, %bb.a, %bb.t, %bb.s, %bb.r, %bb.q
  %.198 = phi ptr [ %i.eh, %bb.r ], [ null, %bb.q ], [ %i.fm, %bb.t ], [ null, %bb.s ], [ null, %bb.a ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.h ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ]
  %.0 = phi ptr [ null, %bb.r ], [ %i.dh, %bb.q ], [ null, %bb.t ], [ %i.dh, %bb.s ], [ null, %bb.a ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.h ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ]
  call void @fftw_ifree0(ptr noundef %.0) #4
  call void @fftw_plan_destroy_internal(ptr noundef null) #4
  call void @fftw_plan_destroy_internal(ptr noundef %.198) #4
  br label %bb.v

bb.v:                                             ; preds = %applicable.exit.thread, %bb.u
  %.0100 = phi ptr [ %i.gg, %bb.u ], [ null, %applicable.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  ret ptr %.0100
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @fftw_mksolver(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @fftw_rdft2_solve(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal void @awake(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  tail call void @fftw_plan_awake(ptr noundef %i.b, i32 noundef %1) #4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18
  tail call void @fftw_plan_awake(ptr noundef %i.d, i32 noundef %1) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !49
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = icmp eq ptr %i.c, @apply_r2hc
  %i.e = select i1 %i.d, ptr @.str.1, ptr @.str.2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load i64, ptr %i.f, align 8, !tbaa !19   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load i64, ptr %i.h, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load i64, ptr %i.j, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = load i64, ptr %i.l, align 8, !tbaa !24
  %i.n = srem i64 %i.m, %i.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !18
  tail call void (ptr, ptr, ...) %i.a(ptr noundef nonnull %1, ptr noundef nonnull @.str, ptr noundef nonnull %i.e, i64 noundef %i.g, i64 noundef %i.i, i64 noundef %i.k, i64 noundef %i.n, ptr noundef %i.p, ptr noundef %i.r) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @destroy(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  tail call void @fftw_plan_destroy_internal(ptr noundef %i.b) #4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17
  tail call void @fftw_plan_destroy_internal(ptr noundef %i.d) #4
  ret void
}

declare i32 @fftw_tensor_tornk1(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @fftw_imax(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @fftw_nbuf(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @fftw_bufdist(i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @fftw_malloc_plain(i64 noundef) local_unnamed_addr #1

declare ptr @fftw_mkplan_f_d(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @fftw_mkproblem_rdft_d(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @fftw_mktensor_1d(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @fftw_taint(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @fftw_ifree(ptr noundef) local_unnamed_addr #1

declare ptr @fftw_mkplan_d(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @fftw_mkproblem_rdft2_d(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @fftw_tensor_copy(ptr noundef) local_unnamed_addr #1

declare ptr @fftw_mkplan_rdft2(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @apply_r2hc(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load i64, ptr %i.e, align 8, !tbaa !23
  %.fr121 = freeze i64 %i.f                       ; 23 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load i64, ptr %i.g, align 8, !tbaa !24   ; 19 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load i64, ptr %i.i, align 8, !tbaa !19
  %.fr = freeze i64 %i.j                          ; 17 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.l = load i64, ptr %i.k, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.n = load i64, ptr %i.m, align 8, !tbaa !22   ; 34 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.p = load i64, ptr %i.o, align 8, !tbaa !25   ; 23 uses
  %i.q = shl i64 %.fr121, 3
  %i.r = mul i64 %i.q, %i.h
  %i.s = tail call ptr @fftw_malloc_plain(i64 noundef %i.r) #4 ; 26 uses
  %.not68 = icmp sgt i64 %.fr121, %i.d
  br i1 %.not68, label %._crit_edge76, label %.lr.ph75

.lr.ph75:                                         ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 5 uses
  %i.u = mul nsw i64 %i.l, %.fr121                ; 10 uses
  %i.v = icmp sgt i64 %.fr121, 0
  %i.w = add i64 %.fr, -3                         ; 4 uses
  %i.x = lshr i64 %i.w, 1                         ; 9 uses
  %i.y = add nuw nsw i64 %i.x, 2                  ; 4 uses
  %i.z = and i64 %i.w, -2
  %i.aa = add i64 %i.z, 4
  %i.ab = icmp eq i64 %.fr, 2
  %i.ac = icmp eq i64 %i.aa, %.fr
  %i.ad = mul nsw i64 %i.y, %i.p                  ; 2 uses
  br i1 %i.v, label %.lr.ph75.split.us, label %.lr.ph75.split

.lr.ph75.split.us:                                ; preds = %.lr.ph75
  %i.ae = icmp sgt i64 %.fr, 2
  br i1 %i.ae, label %.lr.ph75.split.us.split.us, label %.lr.ph75.split.us.split

.lr.ph75.split.us.split.us:                       ; preds = %.lr.ph75.split.us
  %i.af = add nsw i64 %.fr121, -1                 ; 2 uses
  %i.ag = mul i64 %i.n, %i.af
  %i.ah = shl i64 %i.x, 3                         ; 2 uses
  %i.ai = add i64 %i.ag, %i.x
  %i.aj = shl i64 %i.ai, 3
  %i.ak = add i64 %i.aj, 16                       ; 4 uses
  %5 = shl i64 %i.n, 3                            ; 10 uses
  %i.al = shl i64 %.fr, 3                         ; 2 uses
  %i.am = add i64 %i.al, -8
  %i.an = sub i64 %i.am, %i.ah
  %scevgep240 = getelementptr i8, ptr %i.s, i64 %i.an ; 4 uses
  %i.ao = mul i64 %i.h, %i.af
  %i.ap = shl i64 %i.ao, 3                        ; 2 uses
  %i.aq = getelementptr i8, ptr %i.s, i64 %i.ap
  %scevgep241 = getelementptr i8, ptr %i.aq, i64 %i.al ; 4 uses
  %6 = shl i64 %i.h, 3                            ; 8 uses
  %scevgep242 = getelementptr i8, ptr %i.s, i64 8 ; 4 uses
  %i.ar = getelementptr i8, ptr %i.s, i64 %i.ap
  %i.as = getelementptr i8, ptr %i.ar, i64 %i.ah
  %scevgep243 = getelementptr i8, ptr %i.as, i64 16 ; 4 uses
  br i1 %i.ac, label %.lr.ph.us.us.us.preheader, label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph75.split.us.split.us
  %i.at = xor i64 %i.x, 2
  %i.au = add nuw i64 %i.x, 1
  %i.av = add nuw i64 %i.x, 1                     ; 2 uses
  %min.iters.check = icmp ugt i64 %i.w, 57
  %ident.check.not = icmp eq i64 %i.p, 1
  %or.cond289 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %stride.check = icmp slt i64 %5, 0
  %7 = or i64 %6, %5
  %8 = icmp slt i64 %7, 0
  %9 = or i64 %6, %5
  %10 = icmp slt i64 %9, 0
  %11 = or i64 %6, %5
  %12 = icmp slt i64 %11, 0
  %13 = or i64 %6, %5
  %14 = icmp slt i64 %13, 0
  %n.vec = and i64 %i.av, -4                      ; 3 uses
  %i.aw = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br label %.lr.ph.us.us

.lr.ph.us.us.us.preheader:                        ; preds = %.lr.ph75.split.us.split.us
  %i.ax = xor i64 %i.x, 2
  %i.ay = add nuw i64 %i.x, 1
  %i.az = add nuw i64 %i.x, 1                     ; 2 uses
  %min.iters.check274 = icmp ugt i64 %i.w, 57
  %ident.check234.not = icmp eq i64 %i.p, 1
  %or.cond = select i1 %min.iters.check274, i1 %ident.check234.not, i1 false
  %stride.check247 = icmp slt i64 %5, 0
  %15 = or i64 %6, %5
  %16 = icmp slt i64 %15, 0
  %17 = or i64 %6, %5
  %18 = icmp slt i64 %17, 0
  %19 = or i64 %6, %5
  %20 = icmp slt i64 %19, 0
  %21 = or i64 %6, %5
  %22 = icmp slt i64 %21, 0
  %n.vec276 = and i64 %i.az, -4                   ; 3 uses
  %i.ba = or disjoint i64 %n.vec276, 1
  %cmp.n287 = icmp eq i64 %i.az, %n.vec276
  br label %.lr.ph.us.us.us

.lr.ph.us.us.us:                                  ; preds = %.lr.ph.us.us.us.preheader, %._crit_edge.split.us.us.us.split.us.us
  %.04773.us.us.us = phi i64 [ %i.dy, %._crit_edge.split.us.us.us.split.us.us ], [ %.fr121, %.lr.ph.us.us.us.preheader ]
  %.04872.us.us.us = phi ptr [ %i.dv, %._crit_edge.split.us.us.us.split.us.us ], [ %4, %.lr.ph.us.us.us.preheader ] ; 3 uses
  %.04971.us.us.us = phi ptr [ %i.du, %._crit_edge.split.us.us.us.split.us.us ], [ %3, %.lr.ph.us.us.us.preheader ] ; 3 uses
  %.05170.us.us.us = phi ptr [ %i.dx, %._crit_edge.split.us.us.us.split.us.us ], [ %2, %.lr.ph.us.us.us.preheader ]
  %.05269.us.us.us = phi ptr [ %i.dw, %._crit_edge.split.us.us.us.split.us.us ], [ %1, %.lr.ph.us.us.us.preheader ] ; 2 uses
  %i.bb = load ptr, ptr %i.t, align 8, !tbaa !26
  tail call void %i.bb(ptr noundef %i.b, ptr noundef %.05269.us.us.us, ptr noundef %i.s) #4
  %scevgep236 = getelementptr i8, ptr %.04971.us.us.us, i64 8 ; 3 uses
  %scevgep237 = getelementptr i8, ptr %.04971.us.us.us, i64 %i.ak ; 3 uses
  %scevgep238 = getelementptr i8, ptr %.04872.us.us.us, i64 8 ; 3 uses
  %scevgep239 = getelementptr i8, ptr %.04872.us.us.us, i64 %i.ak ; 3 uses
  %bound0244 = icmp ult ptr %scevgep236, %scevgep239
  %bound1245 = icmp ult ptr %scevgep238, %scevgep237
  %found.conflict246 = and i1 %bound0244, %bound1245
  %i.bc = or i1 %found.conflict246, %stride.check247
  %bound0249.a = icmp ult ptr %scevgep236, %scevgep241
  %bound1250.a = icmp ult ptr %scevgep240, %scevgep237
  %found.conflict251.a = and i1 %bound0249.a, %bound1250.a
  %i.bd = or i1 %found.conflict251.a, %16
  %conflict.rdx254 = or i1 %i.bc, %i.bd
  %bound0255 = icmp ult ptr %scevgep236, %scevgep243
  %bound1256 = icmp ult ptr %scevgep242, %scevgep237
  %found.conflict257 = and i1 %bound0255, %bound1256
  %23 = or i1 %found.conflict257, %18
  %conflict.rdx260 = or i1 %conflict.rdx254, %23
  %bound0261 = icmp ult ptr %scevgep238, %scevgep241
  %bound1262 = icmp ult ptr %scevgep240, %scevgep239
  %found.conflict263 = and i1 %bound0261, %bound1262
  %24 = or i1 %found.conflict263, %20
  %conflict.rdx266 = or i1 %conflict.rdx260, %24
  %bound0267 = icmp ult ptr %scevgep238, %scevgep243
  %bound1268 = icmp ult ptr %scevgep242, %scevgep239
  %found.conflict269 = and i1 %bound0267, %bound1268
  %25 = or i1 %found.conflict269, %22
  %conflict.rdx272 = or i1 %conflict.rdx266, %25
  br label %.lr.ph.preheader.i.us.us.us.us.us

.lr.ph.preheader.i.us.us.us.us.us:                ; preds = %._crit_edge.loopexit.i.us.us.us.us.us, %.lr.ph.us.us.us
  %.056.us.us.us.us.us = phi i64 [ 0, %.lr.ph.us.us.us ], [ %i.dt, %._crit_edge.loopexit.i.us.us.us.us.us ] ; 2 uses
  %.155.us.us.us.us.us = phi ptr [ %.04872.us.us.us, %.lr.ph.us.us.us ], [ %i.dv, %._crit_edge.loopexit.i.us.us.us.us.us ] ; 9 uses
  %.15054.us.us.us.us.us = phi ptr [ %.04971.us.us.us, %.lr.ph.us.us.us ], [ %i.du, %._crit_edge.loopexit.i.us.us.us.us.us ] ; 9 uses
  %i.be = mul nsw i64 %.056.us.us.us.us.us, %i.h
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.be ; 14 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !27
  store double %i.bg, ptr %.15054.us.us.us.us.us, align 8, !tbaa !27
  store double 0.000000e+00, ptr %.155.us.us.us.us.us, align 8, !tbaa !27
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %conflict.rdx272
  br i1 %brmerge, label %.lr.ph.i.us.us.us.us.us.preheader, label %vector.body277

vector.body277:                                   ; preds = %.lr.ph.preheader.i.us.us.us.us.us, %vector.body277
  %index278 = phi i64 [ %index.next285, %vector.body277 ], [ 0, %.lr.ph.preheader.i.us.us.us.us.us ] ; 2 uses
  %i.bh = or disjoint i64 %index278, 1            ; 4 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bh ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %wide.load279 = load <2 x double>, ptr %i.bi, align 8, !tbaa !27, !alias.scope !71
  %wide.load280 = load <2 x double>, ptr %i.bj, align 8, !tbaa !27, !alias.scope !71
  %i.bk = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us.us.us, i64 %i.bh ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store <2 x double> %wide.load279, ptr %i.bk, align 8, !tbaa !27, !alias.scope !72, !noalias !73
  store <2 x double> %wide.load280, ptr %i.bl, align 8, !tbaa !27, !alias.scope !72, !noalias !73
  %i.bm = sub nuw nsw i64 %.fr, %i.bh
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -8
  %i.bp = getelementptr inbounds i8, ptr %i.bn, i64 -24
  %wide.load281 = load <2 x double>, ptr %i.bo, align 8, !tbaa !27, !alias.scope !74
  %wide.load282 = load <2 x double>, ptr %i.bp, align 8, !tbaa !27, !alias.scope !74
  %reverse283 = shufflevector <2 x double> %wide.load281, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse284 = shufflevector <2 x double> %wide.load282, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bq = getelementptr inbounds [8 x i8], ptr %.155.us.us.us.us.us, i64 %i.bh ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store <2 x double> %reverse283, ptr %i.bq, align 8, !tbaa !27, !alias.scope !75, !noalias !76
  store <2 x double> %reverse284, ptr %i.br, align 8, !tbaa !27, !alias.scope !75, !noalias !76
  %index.next285 = add nuw i64 %index278, 4       ; 2 uses
  %i.bs = icmp eq i64 %index.next285, %n.vec276
  br i1 %i.bs, label %middle.block286, label %vector.body277, !llvm.loop !56

middle.block286:                                  ; preds = %vector.body277
  br i1 %cmp.n287, label %._crit_edge.loopexit.i.us.us.us.us.us, label %.lr.ph.i.us.us.us.us.us.preheader

.lr.ph.i.us.us.us.us.us.preheader:                ; preds = %.lr.ph.preheader.i.us.us.us.us.us, %middle.block286
  %.030.i.us.us.us.us.us.ph = phi i64 [ %i.ba, %middle.block286 ], [ 1, %.lr.ph.preheader.i.us.us.us.us.us ] ; 4 uses
  %i.bt = sub i64 %i.ax, %.030.i.us.us.us.us.us.ph
  %i.bu = sub i64 %i.ay, %.030.i.us.us.us.us.us.ph
  %xtraiter324 = and i64 %i.bt, 3                 ; 2 uses
  %lcmp.mod325.not = icmp eq i64 %xtraiter324, 0
  br i1 %lcmp.mod325.not, label %.lr.ph.i.us.us.us.us.us.prol.loopexit, label %.lr.ph.i.us.us.us.us.us.prol

.lr.ph.i.us.us.us.us.us.prol:                     ; preds = %.lr.ph.i.us.us.us.us.us.preheader, %.lr.ph.i.us.us.us.us.us.prol
  %.030.i.us.us.us.us.us.prol = phi i64 [ %i.cd, %.lr.ph.i.us.us.us.us.us.prol ], [ %.030.i.us.us.us.us.us.ph, %.lr.ph.i.us.us.us.us.us.preheader ] ; 4 uses
  %prol.iter326 = phi i64 [ %prol.iter326.next, %.lr.ph.i.us.us.us.us.us.prol ], [ 0, %.lr.ph.i.us.us.us.us.us.preheader ]
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.030.i.us.us.us.us.us.prol
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !27
  %i.bx = mul nsw i64 %.030.i.us.us.us.us.us.prol, %i.p ; 2 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us.us.us, i64 %i.bx
  store double %i.bw, ptr %i.by, align 8, !tbaa !27
  %i.bz = sub nuw nsw i64 %.fr, %.030.i.us.us.us.us.us.prol
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bz
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !27
  %i.cc = getelementptr inbounds [8 x i8], ptr %.155.us.us.us.us.us, i64 %i.bx
  store double %i.cb, ptr %i.cc, align 8, !tbaa !27
  %i.cd = add nuw nsw i64 %.030.i.us.us.us.us.us.prol, 1 ; 2 uses
  %prol.iter326.next = add i64 %prol.iter326, 1   ; 2 uses
  %prol.iter326.cmp.not = icmp eq i64 %prol.iter326.next, %xtraiter324
  br i1 %prol.iter326.cmp.not, label %.lr.ph.i.us.us.us.us.us.prol.loopexit, label %.lr.ph.i.us.us.us.us.us.prol, !llvm.loop !57

.lr.ph.i.us.us.us.us.us.prol.loopexit:            ; preds = %.lr.ph.i.us.us.us.us.us.prol, %.lr.ph.i.us.us.us.us.us.preheader
  %.030.i.us.us.us.us.us.unr = phi i64 [ %.030.i.us.us.us.us.us.ph, %.lr.ph.i.us.us.us.us.us.preheader ], [ %i.cd, %.lr.ph.i.us.us.us.us.us.prol ]
  %i.ce = icmp ult i64 %i.bu, 3
  br i1 %i.ce, label %._crit_edge.loopexit.i.us.us.us.us.us, label %.lr.ph.i.us.us.us.us.us

.lr.ph.i.us.us.us.us.us:                          ; preds = %.lr.ph.i.us.us.us.us.us.prol.loopexit, %.lr.ph.i.us.us.us.us.us
  %.030.i.us.us.us.us.us = phi i64 [ %i.do, %.lr.ph.i.us.us.us.us.us ], [ %.030.i.us.us.us.us.us.unr, %.lr.ph.i.us.us.us.us.us.prol.loopexit ] ; 7 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.030.i.us.us.us.us.us
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !27
  %i.ch = mul nsw i64 %.030.i.us.us.us.us.us, %i.p ; 2 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us.us.us, i64 %i.ch
  store double %i.cg, ptr %i.ci, align 8, !tbaa !27
  %i.cj = sub nuw nsw i64 %.fr, %.030.i.us.us.us.us.us
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.cj
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !27
  %i.cm = getelementptr inbounds [8 x i8], ptr %.155.us.us.us.us.us, i64 %i.ch
  store double %i.cl, ptr %i.cm, align 8, !tbaa !27
  %i.cn = add nuw nsw i64 %.030.i.us.us.us.us.us, 1 ; 3 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.cn
  %i.cp = load double, ptr %i.co, align 8, !tbaa !27
  %i.cq = mul nsw i64 %i.cn, %i.p                 ; 2 uses
  %i.cr = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us.us.us, i64 %i.cq
  store double %i.cp, ptr %i.cr, align 8, !tbaa !27
  %i.cs = sub nuw nsw i64 %.fr, %i.cn
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.cs
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !27
  %i.cv = getelementptr inbounds [8 x i8], ptr %.155.us.us.us.us.us, i64 %i.cq
  store double %i.cu, ptr %i.cv, align 8, !tbaa !27
  %i.cw = add nuw nsw i64 %.030.i.us.us.us.us.us, 2 ; 3 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.cw
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !27
  %i.cz = mul nsw i64 %i.cw, %i.p                 ; 2 uses
  %i.da = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us.us.us, i64 %i.cz
  store double %i.cy, ptr %i.da, align 8, !tbaa !27
  %i.db = sub nuw nsw i64 %.fr, %i.cw
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.db
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !27
  %i.de = getelementptr inbounds [8 x i8], ptr %.155.us.us.us.us.us, i64 %i.cz
  store double %i.dd, ptr %i.de, align 8, !tbaa !27
  %i.df = add nuw nsw i64 %.030.i.us.us.us.us.us, 3 ; 3 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.df
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !27
  %i.di = mul nsw i64 %i.df, %i.p                 ; 2 uses
  %i.dj = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us.us.us, i64 %i.di
  store double %i.dh, ptr %i.dj, align 8, !tbaa !27
  %i.dk = sub nuw nsw i64 %.fr, %i.df
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.dk
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !27
  %i.dn = getelementptr inbounds [8 x i8], ptr %.155.us.us.us.us.us, i64 %i.di
  store double %i.dm, ptr %i.dn, align 8, !tbaa !27
  %i.do = add nuw nsw i64 %.030.i.us.us.us.us.us, 4 ; 2 uses
  %exitcond.not.i.us.us.us.us.us.3 = icmp eq i64 %i.do, %i.y
  br i1 %exitcond.not.i.us.us.us.us.us.3, label %._crit_edge.loopexit.i.us.us.us.us.us, label %.lr.ph.i.us.us.us.us.us, !llvm.loop !58

._crit_edge.loopexit.i.us.us.us.us.us:            ; preds = %.lr.ph.i.us.us.us.us.us.prol.loopexit, %.lr.ph.i.us.us.us.us.us, %middle.block286
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.y
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !27
  %i.dr = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us.us.us, i64 %i.ad
  store double %i.dq, ptr %i.dr, align 8, !tbaa !27
  %i.ds = getelementptr inbounds [8 x i8], ptr %.155.us.us.us.us.us, i64 %i.ad
  store double 0.000000e+00, ptr %i.ds, align 8, !tbaa !27
  %i.dt = add nuw nsw i64 %.056.us.us.us.us.us, 1 ; 2 uses
  %i.du = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us.us.us, i64 %i.n ; 3 uses
  %i.dv = getelementptr inbounds [8 x i8], ptr %.155.us.us.us.us.us, i64 %i.n ; 3 uses
  %exitcond148.not = icmp eq i64 %i.dt, %.fr121
  br i1 %exitcond148.not, label %._crit_edge.split.us.us.us.split.us.us, label %.lr.ph.preheader.i.us.us.us.us.us, !llvm.loop !59

._crit_edge.split.us.us.us.split.us.us:           ; preds = %._crit_edge.loopexit.i.us.us.us.us.us
  %i.dw = getelementptr inbounds [8 x i8], ptr %.05269.us.us.us, i64 %i.u ; 2 uses
  %i.dx = getelementptr inbounds [8 x i8], ptr %.05170.us.us.us, i64 %i.u ; 2 uses
  %i.dy = add nuw nsw i64 %.04773.us.us.us, %.fr121 ; 2 uses
  %.not.us.us.us = icmp sgt i64 %i.dy, %i.d
  br i1 %.not.us.us.us, label %._crit_edge76, label %.lr.ph.us.us.us, !llvm.loop !60

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %._crit_edge.split.us.us.us.split
  %.04773.us.us = phi i64 [ %i.gs, %._crit_edge.split.us.us.us.split ], [ %.fr121, %.lr.ph.us.us.preheader ]
  %.04872.us.us = phi ptr [ %i.gp, %._crit_edge.split.us.us.us.split ], [ %4, %.lr.ph.us.us.preheader ] ; 3 uses
  %.04971.us.us = phi ptr [ %i.go, %._crit_edge.split.us.us.us.split ], [ %3, %.lr.ph.us.us.preheader ] ; 3 uses
  %.05170.us.us = phi ptr [ %i.gr, %._crit_edge.split.us.us.us.split ], [ %2, %.lr.ph.us.us.preheader ]
  %.05269.us.us = phi ptr [ %i.gq, %._crit_edge.split.us.us.us.split ], [ %1, %.lr.ph.us.us.preheader ] ; 2 uses
  %i.dz = load ptr, ptr %i.t, align 8, !tbaa !26
  tail call void %i.dz(ptr noundef %i.b, ptr noundef %.05269.us.us, ptr noundef %i.s) #4
  %scevgep = getelementptr i8, ptr %.04971.us.us, i64 8 ; 3 uses
  %scevgep198 = getelementptr i8, ptr %.04971.us.us, i64 %i.ak ; 3 uses
  %scevgep199 = getelementptr i8, ptr %.04872.us.us, i64 8 ; 3 uses
  %scevgep200 = getelementptr i8, ptr %.04872.us.us, i64 %i.ak ; 3 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep200
  %bound1 = icmp ult ptr %scevgep199, %scevgep198
  %found.conflict = and i1 %bound0, %bound1
  %i.ea = or i1 %found.conflict, %stride.check
  %bound0206 = icmp ult ptr %scevgep, %scevgep241
  %bound1207 = icmp ult ptr %scevgep240, %scevgep198
  %found.conflict208 = and i1 %bound0206, %bound1207
  %i.eb = or i1 %found.conflict208, %8
  %conflict.rdx = or i1 %i.ea, %i.eb
  %bound0211 = icmp ult ptr %scevgep, %scevgep243
  %bound1212 = icmp ult ptr %scevgep242, %scevgep198
  %found.conflict213 = and i1 %bound0211, %bound1212
  %26 = or i1 %found.conflict213, %10
  %conflict.rdx216.a = or i1 %conflict.rdx, %26
  %bound0217.a = icmp ult ptr %scevgep199, %scevgep241
  %bound1218.a = icmp ult ptr %scevgep240, %scevgep200
  %found.conflict219.a = and i1 %bound0217.a, %bound1218.a
  %27 = or i1 %found.conflict219.a, %12
  %conflict.rdx222 = or i1 %conflict.rdx216.a, %27
  %bound0223 = icmp ult ptr %scevgep199, %scevgep243
  %bound1224 = icmp ult ptr %scevgep242, %scevgep200
  %found.conflict225 = and i1 %bound0223, %bound1224
  %28 = or i1 %found.conflict225, %14
  %conflict.rdx228 = or i1 %conflict.rdx222, %28
  br label %.lr.ph.preheader.i.us.us.us

.lr.ph.preheader.i.us.us.us:                      ; preds = %._crit_edge.loopexit.i.us.us.us, %.lr.ph.us.us
  %.056.us.us.us = phi i64 [ 0, %.lr.ph.us.us ], [ %i.gn, %._crit_edge.loopexit.i.us.us.us ] ; 2 uses
  %.155.us.us.us = phi ptr [ %.04872.us.us, %.lr.ph.us.us ], [ %i.gp, %._crit_edge.loopexit.i.us.us.us ] ; 8 uses
  %.15054.us.us.us = phi ptr [ %.04971.us.us, %.lr.ph.us.us ], [ %i.go, %._crit_edge.loopexit.i.us.us.us ] ; 8 uses
  %i.ec = mul nsw i64 %.056.us.us.us, %i.h
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ec ; 13 uses
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !27
  store double %i.ee, ptr %.15054.us.us.us, align 8, !tbaa !27
  store double 0.000000e+00, ptr %.155.us.us.us, align 8, !tbaa !27
  %or.cond289.not = xor i1 %or.cond289, true
  %brmerge352 = select i1 %or.cond289.not, i1 true, i1 %conflict.rdx228
  br i1 %brmerge352, label %.lr.ph.i.us.us.us.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.preheader.i.us.us.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.preheader.i.us.us.us ] ; 2 uses
  %i.ef = or disjoint i64 %index, 1               ; 4 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.ef ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %wide.load = load <2 x double>, ptr %i.eg, align 8, !tbaa !27, !alias.scope !79
  %wide.load229 = load <2 x double>, ptr %i.eh, align 8, !tbaa !27, !alias.scope !79
  %i.ei = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us, i64 %i.ef ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store <2 x double> %wide.load, ptr %i.ei, align 8, !tbaa !27, !alias.scope !80, !noalias !81
  store <2 x double> %wide.load229, ptr %i.ej, align 8, !tbaa !27, !alias.scope !80, !noalias !81
  %i.ek = sub nuw nsw i64 %.fr, %i.ef
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.ek ; 2 uses
  %i.em = getelementptr inbounds i8, ptr %i.el, i64 -8
  %i.en = getelementptr inbounds i8, ptr %i.el, i64 -24
  %wide.load230 = load <2 x double>, ptr %i.em, align 8, !tbaa !27, !alias.scope !82
  %wide.load231 = load <2 x double>, ptr %i.en, align 8, !tbaa !27, !alias.scope !82
  %reverse = shufflevector <2 x double> %wide.load230, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse232 = shufflevector <2 x double> %wide.load231, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.eo = getelementptr inbounds [8 x i8], ptr %.155.us.us.us, i64 %i.ef ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store <2 x double> %reverse, ptr %i.eo, align 8, !tbaa !27, !alias.scope !83, !noalias !84
  store <2 x double> %reverse232, ptr %i.ep, align 8, !tbaa !27, !alias.scope !83, !noalias !84
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eq = icmp eq i64 %index.next, %n.vec
  br i1 %i.eq, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.loopexit.i.us.us.us, label %.lr.ph.i.us.us.us.preheader

.lr.ph.i.us.us.us.preheader:                      ; preds = %.lr.ph.preheader.i.us.us.us, %middle.block
  %.030.i.us.us.us.ph = phi i64 [ %i.aw, %middle.block ], [ 1, %.lr.ph.preheader.i.us.us.us ] ; 4 uses
  %i.er = sub i64 %i.at, %.030.i.us.us.us.ph
  %i.es = sub i64 %i.au, %.030.i.us.us.us.ph
  %xtraiter322 = and i64 %i.er, 3                 ; 2 uses
  %lcmp.mod323.not = icmp eq i64 %xtraiter322, 0
  br i1 %lcmp.mod323.not, label %.lr.ph.i.us.us.us.prol.loopexit, label %.lr.ph.i.us.us.us.prol

.lr.ph.i.us.us.us.prol:                           ; preds = %.lr.ph.i.us.us.us.preheader, %.lr.ph.i.us.us.us.prol
  %.030.i.us.us.us.prol = phi i64 [ %i.fb, %.lr.ph.i.us.us.us.prol ], [ %.030.i.us.us.us.ph, %.lr.ph.i.us.us.us.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.us.us.us.prol ], [ 0, %.lr.ph.i.us.us.us.preheader ]
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %.030.i.us.us.us.prol
  %i.eu = load double, ptr %i.et, align 8, !tbaa !27
  %i.ev = mul nsw i64 %.030.i.us.us.us.prol, %i.p ; 2 uses
  %i.ew = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us, i64 %i.ev
  store double %i.eu, ptr %i.ew, align 8, !tbaa !27
  %i.ex = sub nuw nsw i64 %.fr, %.030.i.us.us.us.prol
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.ex
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !27
  %i.fa = getelementptr inbounds [8 x i8], ptr %.155.us.us.us, i64 %i.ev
  store double %i.ez, ptr %i.fa, align 8, !tbaa !27
  %i.fb = add nuw nsw i64 %.030.i.us.us.us.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter322
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.us.us.us.prol.loopexit, label %.lr.ph.i.us.us.us.prol, !llvm.loop !67

.lr.ph.i.us.us.us.prol.loopexit:                  ; preds = %.lr.ph.i.us.us.us.prol, %.lr.ph.i.us.us.us.preheader
  %.030.i.us.us.us.unr = phi i64 [ %.030.i.us.us.us.ph, %.lr.ph.i.us.us.us.preheader ], [ %i.fb, %.lr.ph.i.us.us.us.prol ]
  %i.fc = icmp ult i64 %i.es, 3
  br i1 %i.fc, label %._crit_edge.loopexit.i.us.us.us, label %.lr.ph.i.us.us.us

.lr.ph.i.us.us.us:                                ; preds = %.lr.ph.i.us.us.us.prol.loopexit, %.lr.ph.i.us.us.us
  %.030.i.us.us.us = phi i64 [ %i.gm, %.lr.ph.i.us.us.us ], [ %.030.i.us.us.us.unr, %.lr.ph.i.us.us.us.prol.loopexit ] ; 7 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %.030.i.us.us.us
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !27
  %i.ff = mul nsw i64 %.030.i.us.us.us, %i.p      ; 2 uses
  %i.fg = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us, i64 %i.ff
  store double %i.fe, ptr %i.fg, align 8, !tbaa !27
  %i.fh = sub nuw nsw i64 %.fr, %.030.i.us.us.us
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.fh
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !27
  %i.fk = getelementptr inbounds [8 x i8], ptr %.155.us.us.us, i64 %i.ff
  store double %i.fj, ptr %i.fk, align 8, !tbaa !27
  %i.fl = add nuw nsw i64 %.030.i.us.us.us, 1     ; 3 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.fl
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !27
  %i.fo = mul nsw i64 %i.fl, %i.p                 ; 2 uses
  %i.fp = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us, i64 %i.fo
  store double %i.fn, ptr %i.fp, align 8, !tbaa !27
  %i.fq = sub nuw nsw i64 %.fr, %i.fl
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.fq
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !27
  %i.ft = getelementptr inbounds [8 x i8], ptr %.155.us.us.us, i64 %i.fo
  store double %i.fs, ptr %i.ft, align 8, !tbaa !27
  %i.fu = add nuw nsw i64 %.030.i.us.us.us, 2     ; 3 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.fu
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !27
  %i.fx = mul nsw i64 %i.fu, %i.p                 ; 2 uses
  %i.fy = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us, i64 %i.fx
  store double %i.fw, ptr %i.fy, align 8, !tbaa !27
  %i.fz = sub nuw nsw i64 %.fr, %i.fu
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.fz
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !27
  %i.gc = getelementptr inbounds [8 x i8], ptr %.155.us.us.us, i64 %i.fx
  store double %i.gb, ptr %i.gc, align 8, !tbaa !27
  %i.gd = add nuw nsw i64 %.030.i.us.us.us, 3     ; 3 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.gd
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !27
  %i.gg = mul nsw i64 %i.gd, %i.p                 ; 2 uses
  %i.gh = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us, i64 %i.gg
  store double %i.gf, ptr %i.gh, align 8, !tbaa !27
  %i.gi = sub nuw nsw i64 %.fr, %i.gd
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.gi
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !27
  %i.gl = getelementptr inbounds [8 x i8], ptr %.155.us.us.us, i64 %i.gg
  store double %i.gk, ptr %i.gl, align 8, !tbaa !27
  %i.gm = add nuw nsw i64 %.030.i.us.us.us, 4     ; 2 uses
  %exitcond.not.i.us.us.us.3 = icmp eq i64 %i.gm, %i.y
  br i1 %exitcond.not.i.us.us.us.3, label %._crit_edge.loopexit.i.us.us.us, label %.lr.ph.i.us.us.us, !llvm.loop !68

._crit_edge.loopexit.i.us.us.us:                  ; preds = %.lr.ph.i.us.us.us.prol.loopexit, %.lr.ph.i.us.us.us, %middle.block
  %i.gn = add nuw nsw i64 %.056.us.us.us, 1       ; 2 uses
  %i.go = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us, i64 %i.n ; 3 uses
  %i.gp = getelementptr inbounds [8 x i8], ptr %.155.us.us.us, i64 %i.n ; 3 uses
  %exitcond147.not = icmp eq i64 %i.gn, %.fr121
  br i1 %exitcond147.not, label %._crit_edge.split.us.us.us.split, label %.lr.ph.preheader.i.us.us.us, !llvm.loop !59

._crit_edge.split.us.us.us.split:                 ; preds = %._crit_edge.loopexit.i.us.us.us
  %i.gq = getelementptr inbounds [8 x i8], ptr %.05269.us.us, i64 %i.u ; 2 uses
  %i.gr = getelementptr inbounds [8 x i8], ptr %.05170.us.us, i64 %i.u ; 2 uses
  %i.gs = add nuw nsw i64 %.04773.us.us, %.fr121  ; 2 uses
  %.not.us.us = icmp sgt i64 %i.gs, %i.d
  br i1 %.not.us.us, label %._crit_edge76, label %.lr.ph.us.us, !llvm.loop !60

.lr.ph75.split.us.split:                          ; preds = %.lr.ph75.split.us
  br i1 %i.ab, label %.lr.ph.us.us98.preheader, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph75.split.us.split
  %i.gt = add nsw i64 %.fr121, -1
  %xtraiter = and i64 %.fr121, 7                  ; 3 uses
  %i.gu = icmp ult i64 %i.gt, 7
  %unroll_iter = and i64 %.fr121, 9223372036854775800
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod313 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us.us98.preheader:                         ; preds = %.lr.ph75.split.us.split
  %i.gv = add nsw i64 %.fr121, -1
  %xtraiter314 = and i64 %.fr121, 3               ; 3 uses
  %i.gw = icmp ult i64 %i.gv, 3
  %unroll_iter320 = and i64 %.fr121, 9223372036854775804
  %lcmp.mod316.not = icmp eq i64 %xtraiter314, 0
  %lcmp.mod319 = icmp ne i64 %xtraiter314, 0
  br label %.lr.ph.us.us98

.lr.ph.us.us98:                                   ; preds = %.lr.ph.us.us98.preheader, %._crit_edge.split.split.us.us.us
  %.04773.us.us99 = phi i64 [ %i.iy, %._crit_edge.split.split.us.us.us ], [ %.fr121, %.lr.ph.us.us98.preheader ]
  %.04872.us.us100 = phi ptr [ %.lcssa299, %._crit_edge.split.split.us.us.us ], [ %4, %.lr.ph.us.us98.preheader ] ; 2 uses
  %.04971.us.us101 = phi ptr [ %.lcssa300, %._crit_edge.split.split.us.us.us ], [ %3, %.lr.ph.us.us98.preheader ] ; 2 uses
  %.05170.us.us102 = phi ptr [ %i.ix, %._crit_edge.split.split.us.us.us ], [ %2, %.lr.ph.us.us98.preheader ]
  %.05269.us.us103 = phi ptr [ %i.iw, %._crit_edge.split.split.us.us.us ], [ %1, %.lr.ph.us.us98.preheader ] ; 2 uses
  %i.gx = load ptr, ptr %i.t, align 8, !tbaa !26
  tail call void %i.gx(ptr noundef %i.b, ptr noundef %.05269.us.us103, ptr noundef %i.s) #4
  br i1 %i.gw, label %._crit_edge.i.us59.us.us.epil.preheader, label %._crit_edge.i.us59.us.us

._crit_edge.i.us59.us.us:                         ; preds = %.lr.ph.us.us98, %._crit_edge.i.us59.us.us
  %.056.us60.us.us = phi i64 [ %i.ij, %._crit_edge.i.us59.us.us ], [ 0, %.lr.ph.us.us98 ] ; 5 uses
  %.155.us61.us.us = phi ptr [ %i.il, %._crit_edge.i.us59.us.us ], [ %.04872.us.us100, %.lr.ph.us.us98 ] ; 3 uses
  %.15054.us62.us.us = phi ptr [ %i.ik, %._crit_edge.i.us59.us.us ], [ %.04971.us.us101, %.lr.ph.us.us98 ] ; 3 uses
  %niter321 = phi i64 [ %niter321.next.3, %._crit_edge.i.us59.us.us ], [ 0, %.lr.ph.us.us98 ]
  %i.gy = mul nsw i64 %.056.us60.us.us, %i.h
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.gy ; 2 uses
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !27
  store double %i.ha, ptr %.15054.us62.us.us, align 8, !tbaa !27
  store double 0.000000e+00, ptr %.155.us61.us.us, align 8, !tbaa !27
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !27
  %i.hd = getelementptr inbounds [8 x i8], ptr %.15054.us62.us.us, i64 %i.p
  store double %i.hc, ptr %i.hd, align 8, !tbaa !27
  %i.he = getelementptr inbounds [8 x i8], ptr %.155.us61.us.us, i64 %i.p
  store double 0.000000e+00, ptr %i.he, align 8, !tbaa !27
  %i.hf = or disjoint i64 %.056.us60.us.us, 1
  %i.hg = getelementptr inbounds [8 x i8], ptr %.15054.us62.us.us, i64 %i.n ; 3 uses
  %i.hh = getelementptr inbounds [8 x i8], ptr %.155.us61.us.us, i64 %i.n ; 3 uses
  %i.hi = mul nsw i64 %i.hf, %i.h
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.hi ; 2 uses
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !27
  store double %i.hk, ptr %i.hg, align 8, !tbaa !27
  store double 0.000000e+00, ptr %i.hh, align 8, !tbaa !27
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !27
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.hg, i64 %i.p
  store double %i.hm, ptr %i.hn, align 8, !tbaa !27
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.hh, i64 %i.p
  store double 0.000000e+00, ptr %i.ho, align 8, !tbaa !27
end_hunk_0
