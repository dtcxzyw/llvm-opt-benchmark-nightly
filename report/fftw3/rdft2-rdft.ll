Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/rdft2-rdft?download=true
inline.NumInlined: 6
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@mkplan:bb.a

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
  %i.h = load i64, ptr %i.g, align 8, !tbaa !24   ; 20 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load i64, ptr %i.i, align 8, !tbaa !19
  %.fr = freeze i64 %i.j                          ; 17 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.l = load i64, ptr %i.k, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.n = load i64, ptr %i.m, align 8, !tbaa !22   ; 35 uses
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
  %5 = shl i64 %i.x, 3                            ; 3 uses
  %6 = add i64 %i.ag, %i.x
  %i.ah = shl i64 %6, 3
  %7 = add i64 %i.ah, 16                          ; 4 uses
  %8 = mul i64 %i.h, %i.af
  %i.ai = shl i64 %8, 3                           ; 2 uses
  %i.aj = getelementptr i8, ptr %i.s, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 %5
  %scevgep280 = getelementptr i8, ptr %i.ak, i64 16 ; 4 uses
  %scevgep281 = getelementptr i8, ptr %i.s, i64 8 ; 4 uses
  %i.al = shl i64 %.fr, 3                         ; 2 uses
  %i.am = getelementptr i8, ptr %i.s, i64 %i.ai
  %scevgep282 = getelementptr i8, ptr %i.am, i64 %i.al ; 4 uses
  %i.an = add i64 %i.al, -8
  %i.ao = sub i64 %i.an, %5
  %scevgep283 = getelementptr i8, ptr %i.s, i64 %i.ao ; 4 uses
  %i.ap = add i64 %5, 16                          ; 4 uses
  br i1 %i.ac, label %.lr.ph.us.us.us.preheader, label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph75.split.us.split.us
  %i.aq = xor i64 %i.x, 2
  %i.ar = add nuw i64 %i.x, 1
  %i.as = add nuw i64 %i.x, 1                     ; 2 uses
  %min.iters.check = icmp ugt i64 %i.w, 33
  %ident.check.not = icmp eq i64 %i.p, 1
  %or.cond329 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %9 = or i64 %i.h, %i.n
  %.mask326 = and i64 %9, 1152921504606846976
  %stride.check231 = icmp ne i64 %.mask326, 0
  %n.vec = and i64 %i.as, -4                      ; 3 uses
  %i.at = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br label %.lr.ph.us.us

.lr.ph.us.us.us.preheader:                        ; preds = %.lr.ph75.split.us.split.us
  %i.au = xor i64 %i.x, 2
  %i.av = add nuw i64 %i.x, 1
  %i.aw = add nuw i64 %i.x, 1                     ; 2 uses
  %min.iters.check289 = icmp ugt i64 %i.w, 33
  %ident.check249.not = icmp eq i64 %i.p, 1
  %or.cond = select i1 %min.iters.check289, i1 %ident.check249.not, i1 false
  %10 = or i64 %i.h, %i.n
  %.mask328 = and i64 %10, 1152921504606846976
  %stride.check298 = icmp ne i64 %.mask328, 0
  %n.vec313 = and i64 %i.aw, -4                   ; 3 uses
  %i.ax = or disjoint i64 %n.vec313, 1
  %cmp.n324 = icmp eq i64 %i.aw, %n.vec313
  br label %.lr.ph.us.us.us

.lr.ph.us.us.us:                                  ; preds = %.lr.ph.us.us.us.preheader, %._crit_edge.split.us.us.us.split.us.us
  %.04773.us.us.us = phi i64 [ %i.du, %._crit_edge.split.us.us.us.split.us.us ], [ %.fr121, %.lr.ph.us.us.us.preheader ]
  %.04872.us.us.us = phi ptr [ %i.dr, %._crit_edge.split.us.us.us.split.us.us ], [ %4, %.lr.ph.us.us.us.preheader ] ; 4 uses
  %.04971.us.us.us = phi ptr [ %i.dq, %._crit_edge.split.us.us.us.split.us.us ], [ %3, %.lr.ph.us.us.us.preheader ] ; 4 uses
  %.05170.us.us.us = phi ptr [ %i.dt, %._crit_edge.split.us.us.us.split.us.us ], [ %2, %.lr.ph.us.us.us.preheader ]
  %.05269.us.us.us = phi ptr [ %i.ds, %._crit_edge.split.us.us.us.split.us.us ], [ %1, %.lr.ph.us.us.us.preheader ] ; 2 uses
  %i.ay = load ptr, ptr %i.t, align 8, !tbaa !26
  tail call void %i.ay(ptr noundef %i.b, ptr noundef %.05269.us.us.us, ptr noundef %i.s) #4
  %scevgep286 = getelementptr i8, ptr %.04872.us.us.us, i64 %7 ; 2 uses
  %scevgep284 = getelementptr i8, ptr %.04971.us.us.us, i64 %7 ; 2 uses
  %scevgep285 = getelementptr i8, ptr %.04872.us.us.us, i64 %i.ap
  %scevgep286.a = getelementptr i8, ptr %.04872.us.us.us, i64 8 ; 3 uses
  %scevgep287 = getelementptr i8, ptr %.04971.us.us.us, i64 %i.ap
  %scevgep295 = getelementptr i8, ptr %.04971.us.us.us, i64 8 ; 3 uses
  %bound1292 = icmp ult ptr %scevgep295, %scevgep285
  %bound1300 = icmp ult ptr %scevgep286.a, %scevgep287
  %found.conflict301 = and i1 %bound1292, %bound1300
  %bound0295 = icmp ult ptr %scevgep295, %scevgep282
  %bound1296 = icmp ult ptr %scevgep283, %scevgep284
  %found.conflict297 = and i1 %bound0295, %bound1296
  %i.az = or i1 %found.conflict297, %stride.check298
  %conflict.rdx299 = or i1 %found.conflict301, %i.az
  %bound0300 = icmp ult ptr %scevgep295, %scevgep280
  %bound1301 = icmp ult ptr %scevgep281, %scevgep284
  %found.conflict302 = and i1 %bound0300, %bound1301
  %conflict.rdx303 = or i1 %conflict.rdx299, %found.conflict302
  %bound0304 = icmp ult ptr %scevgep286.a, %scevgep282
  %bound1305 = icmp ult ptr %scevgep283, %scevgep286
  %found.conflict306 = and i1 %bound0304, %bound1305
  %conflict.rdx307 = or i1 %conflict.rdx303, %found.conflict306
  %bound0308 = icmp ult ptr %scevgep286.a, %scevgep280
  %bound1309 = icmp ult ptr %scevgep281, %scevgep286
  %found.conflict310 = and i1 %bound0308, %bound1309
  %conflict.rdx311 = or i1 %conflict.rdx307, %found.conflict310
  br label %.lr.ph.preheader.i.us.us.us.us.us

.lr.ph.preheader.i.us.us.us.us.us:                ; preds = %._crit_edge.loopexit.i.us.us.us.us.us, %.lr.ph.us.us.us
  %.056.us.us.us.us.us = phi i64 [ 0, %.lr.ph.us.us.us ], [ %i.dp, %._crit_edge.loopexit.i.us.us.us.us.us ] ; 2 uses
  %.155.us.us.us.us.us = phi ptr [ %.04872.us.us.us, %.lr.ph.us.us.us ], [ %i.dr, %._crit_edge.loopexit.i.us.us.us.us.us ] ; 9 uses
  %.15054.us.us.us.us.us = phi ptr [ %.04971.us.us.us, %.lr.ph.us.us.us ], [ %i.dq, %._crit_edge.loopexit.i.us.us.us.us.us ] ; 9 uses
  %i.ba = mul nsw i64 %.056.us.us.us.us.us, %i.h
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ba ; 14 uses
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !27
  store double %i.bc, ptr %.15054.us.us.us.us.us, align 8, !tbaa !27
  store double 0.000000e+00, ptr %.155.us.us.us.us.us, align 8, !tbaa !27
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %conflict.rdx311
  br i1 %brmerge, label %.lr.ph.i.us.us.us.us.us.preheader, label %vector.body314

vector.body314:                                   ; preds = %.lr.ph.preheader.i.us.us.us.us.us, %vector.body314
  %index315 = phi i64 [ %index.next322, %vector.body314 ], [ 0, %.lr.ph.preheader.i.us.us.us.us.us ] ; 2 uses
  %i.bd = or disjoint i64 %index315, 1            ; 4 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bd ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %wide.load316 = load <2 x double>, ptr %i.be, align 8, !tbaa !27, !alias.scope !71
  %wide.load317 = load <2 x double>, ptr %i.bf, align 8, !tbaa !27, !alias.scope !71
  %i.bg = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us.us.us, i64 %i.bd ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store <2 x double> %wide.load316, ptr %i.bg, align 8, !tbaa !27, !alias.scope !72, !noalias !73
  store <2 x double> %wide.load317, ptr %i.bh, align 8, !tbaa !27, !alias.scope !72, !noalias !73
  %i.bi = sub nuw nsw i64 %.fr, %i.bd
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bi ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -8
  %i.bl = getelementptr inbounds i8, ptr %i.bj, i64 -24
  %wide.load318 = load <2 x double>, ptr %i.bk, align 8, !tbaa !27, !alias.scope !74
  %wide.load319 = load <2 x double>, ptr %i.bl, align 8, !tbaa !27, !alias.scope !74
  %reverse320 = shufflevector <2 x double> %wide.load318, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse321 = shufflevector <2 x double> %wide.load319, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bm = getelementptr inbounds [8 x i8], ptr %.155.us.us.us.us.us, i64 %i.bd ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store <2 x double> %reverse320, ptr %i.bm, align 8, !tbaa !27, !alias.scope !75, !noalias !76
  store <2 x double> %reverse321, ptr %i.bn, align 8, !tbaa !27, !alias.scope !75, !noalias !76
  %index.next322 = add nuw i64 %index315, 4       ; 2 uses
  %i.bo = icmp eq i64 %index.next322, %n.vec313
  br i1 %i.bo, label %middle.block323, label %vector.body314, !llvm.loop !56

middle.block323:                                  ; preds = %vector.body314
  br i1 %cmp.n324, label %._crit_edge.loopexit.i.us.us.us.us.us, label %.lr.ph.i.us.us.us.us.us.preheader

.lr.ph.i.us.us.us.us.us.preheader:                ; preds = %.lr.ph.preheader.i.us.us.us.us.us, %middle.block323
  %.030.i.us.us.us.us.us.ph = phi i64 [ %i.ax, %middle.block323 ], [ 1, %.lr.ph.preheader.i.us.us.us.us.us ] ; 4 uses
  %i.bp = sub i64 %i.au, %.030.i.us.us.us.us.us.ph
  %i.bq = sub i64 %i.av, %.030.i.us.us.us.us.us.ph
  %xtraiter364 = and i64 %i.bp, 3                 ; 2 uses
  %lcmp.mod365.not = icmp eq i64 %xtraiter364, 0
  br i1 %lcmp.mod365.not, label %.lr.ph.i.us.us.us.us.us.prol.loopexit, label %.lr.ph.i.us.us.us.us.us.prol

.lr.ph.i.us.us.us.us.us.prol:                     ; preds = %.lr.ph.i.us.us.us.us.us.preheader, %.lr.ph.i.us.us.us.us.us.prol
  %.030.i.us.us.us.us.us.prol = phi i64 [ %i.bz, %.lr.ph.i.us.us.us.us.us.prol ], [ %.030.i.us.us.us.us.us.ph, %.lr.ph.i.us.us.us.us.us.preheader ] ; 4 uses
  %prol.iter366 = phi i64 [ %prol.iter366.next, %.lr.ph.i.us.us.us.us.us.prol ], [ 0, %.lr.ph.i.us.us.us.us.us.preheader ]
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.030.i.us.us.us.us.us.prol
  %i.bs = load double, ptr %i.br, align 8, !tbaa !27
  %i.bt = mul nsw i64 %.030.i.us.us.us.us.us.prol, %i.p ; 2 uses
  %i.bu = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us.us.us, i64 %i.bt
  store double %i.bs, ptr %i.bu, align 8, !tbaa !27
  %i.bv = sub nuw nsw i64 %.fr, %.030.i.us.us.us.us.us.prol
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bv
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !27
  %i.by = getelementptr inbounds [8 x i8], ptr %.155.us.us.us.us.us, i64 %i.bt
  store double %i.bx, ptr %i.by, align 8, !tbaa !27
  %i.bz = add nuw nsw i64 %.030.i.us.us.us.us.us.prol, 1 ; 2 uses
  %prol.iter366.next = add i64 %prol.iter366, 1   ; 2 uses
  %prol.iter366.cmp.not = icmp eq i64 %prol.iter366.next, %xtraiter364
  br i1 %prol.iter366.cmp.not, label %.lr.ph.i.us.us.us.us.us.prol.loopexit, label %.lr.ph.i.us.us.us.us.us.prol, !llvm.loop !57

.lr.ph.i.us.us.us.us.us.prol.loopexit:            ; preds = %.lr.ph.i.us.us.us.us.us.prol, %.lr.ph.i.us.us.us.us.us.preheader
  %.030.i.us.us.us.us.us.unr = phi i64 [ %.030.i.us.us.us.us.us.ph, %.lr.ph.i.us.us.us.us.us.preheader ], [ %i.bz, %.lr.ph.i.us.us.us.us.us.prol ]
  %i.ca = icmp ult i64 %i.bq, 3
  br i1 %i.ca, label %._crit_edge.loopexit.i.us.us.us.us.us, label %.lr.ph.i.us.us.us.us.us

.lr.ph.i.us.us.us.us.us:                          ; preds = %.lr.ph.i.us.us.us.us.us.prol.loopexit, %.lr.ph.i.us.us.us.us.us
  %.030.i.us.us.us.us.us = phi i64 [ %i.dk, %.lr.ph.i.us.us.us.us.us ], [ %.030.i.us.us.us.us.us.unr, %.lr.ph.i.us.us.us.us.us.prol.loopexit ] ; 7 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.030.i.us.us.us.us.us
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !27
  %i.cd = mul nsw i64 %.030.i.us.us.us.us.us, %i.p ; 2 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us.us.us, i64 %i.cd
  store double %i.cc, ptr %i.ce, align 8, !tbaa !27
  %i.cf = sub nuw nsw i64 %.fr, %.030.i.us.us.us.us.us
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.cf
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !27
  %i.ci = getelementptr inbounds [8 x i8], ptr %.155.us.us.us.us.us, i64 %i.cd
  store double %i.ch, ptr %i.ci, align 8, !tbaa !27
  %i.cj = add nuw nsw i64 %.030.i.us.us.us.us.us, 1 ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.cj
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !27
  %i.cm = mul nsw i64 %i.cj, %i.p                 ; 2 uses
  %i.cn = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us.us.us, i64 %i.cm
  store double %i.cl, ptr %i.cn, align 8, !tbaa !27
  %i.co = sub nuw nsw i64 %.fr, %i.cj
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.co
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !27
  %i.cr = getelementptr inbounds [8 x i8], ptr %.155.us.us.us.us.us, i64 %i.cm
  store double %i.cq, ptr %i.cr, align 8, !tbaa !27
  %i.cs = add nuw nsw i64 %.030.i.us.us.us.us.us, 2 ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.cs
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !27
  %i.cv = mul nsw i64 %i.cs, %i.p                 ; 2 uses
  %i.cw = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us.us.us, i64 %i.cv
  store double %i.cu, ptr %i.cw, align 8, !tbaa !27
  %i.cx = sub nuw nsw i64 %.fr, %i.cs
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.cx
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !27
  %i.da = getelementptr inbounds [8 x i8], ptr %.155.us.us.us.us.us, i64 %i.cv
  store double %i.cz, ptr %i.da, align 8, !tbaa !27
  %i.db = add nuw nsw i64 %.030.i.us.us.us.us.us, 3 ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.db
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !27
  %i.de = mul nsw i64 %i.db, %i.p                 ; 2 uses
  %i.df = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us.us.us, i64 %i.de
  store double %i.dd, ptr %i.df, align 8, !tbaa !27
  %i.dg = sub nuw nsw i64 %.fr, %i.db
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.dg
  %i.di = load double, ptr %i.dh, align 8, !tbaa !27
  %i.dj = getelementptr inbounds [8 x i8], ptr %.155.us.us.us.us.us, i64 %i.de
  store double %i.di, ptr %i.dj, align 8, !tbaa !27
  %i.dk = add nuw nsw i64 %.030.i.us.us.us.us.us, 4 ; 2 uses
  %exitcond.not.i.us.us.us.us.us.3 = icmp eq i64 %i.dk, %i.y
  br i1 %exitcond.not.i.us.us.us.us.us.3, label %._crit_edge.loopexit.i.us.us.us.us.us, label %.lr.ph.i.us.us.us.us.us, !llvm.loop !58

._crit_edge.loopexit.i.us.us.us.us.us:            ; preds = %.lr.ph.i.us.us.us.us.us.prol.loopexit, %.lr.ph.i.us.us.us.us.us, %middle.block323
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.y
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !27
  %i.dn = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us.us.us, i64 %i.ad
  store double %i.dm, ptr %i.dn, align 8, !tbaa !27
  %i.do = getelementptr inbounds [8 x i8], ptr %.155.us.us.us.us.us, i64 %i.ad
  store double 0.000000e+00, ptr %i.do, align 8, !tbaa !27
  %i.dp = add nuw nsw i64 %.056.us.us.us.us.us, 1 ; 2 uses
  %i.dq = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us.us.us, i64 %i.n ; 3 uses
  %i.dr = getelementptr inbounds [8 x i8], ptr %.155.us.us.us.us.us, i64 %i.n ; 3 uses
  %exitcond148.not = icmp eq i64 %i.dp, %.fr121
  br i1 %exitcond148.not, label %._crit_edge.split.us.us.us.split.us.us, label %.lr.ph.preheader.i.us.us.us.us.us, !llvm.loop !59

._crit_edge.split.us.us.us.split.us.us:           ; preds = %._crit_edge.loopexit.i.us.us.us.us.us
  %i.ds = getelementptr inbounds [8 x i8], ptr %.05269.us.us.us, i64 %i.u ; 2 uses
  %i.dt = getelementptr inbounds [8 x i8], ptr %.05170.us.us.us, i64 %i.u ; 2 uses
  %i.du = add nuw nsw i64 %.04773.us.us.us, %.fr121 ; 2 uses
  %.not.us.us.us = icmp sgt i64 %i.du, %i.d
  br i1 %.not.us.us.us, label %._crit_edge76, label %.lr.ph.us.us.us, !llvm.loop !60

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %._crit_edge.split.us.us.us.split
  %.04773.us.us = phi i64 [ %i.gn, %._crit_edge.split.us.us.us.split ], [ %.fr121, %.lr.ph.us.us.preheader ]
  %.04872.us.us = phi ptr [ %i.gk, %._crit_edge.split.us.us.us.split ], [ %4, %.lr.ph.us.us.preheader ] ; 4 uses
  %.04971.us.us = phi ptr [ %i.gj, %._crit_edge.split.us.us.us.split ], [ %3, %.lr.ph.us.us.preheader ] ; 4 uses
  %.05170.us.us = phi ptr [ %i.gm, %._crit_edge.split.us.us.us.split ], [ %2, %.lr.ph.us.us.preheader ]
  %.05269.us.us = phi ptr [ %i.gl, %._crit_edge.split.us.us.us.split ], [ %1, %.lr.ph.us.us.preheader ] ; 2 uses
  %i.dv = load ptr, ptr %i.t, align 8, !tbaa !26
  tail call void %i.dv(ptr noundef %i.b, ptr noundef %.05269.us.us, ptr noundef %i.s) #4
  %scevgep = getelementptr i8, ptr %.04872.us.us, i64 %7 ; 2 uses
  %scevgep224 = getelementptr i8, ptr %.04971.us.us, i64 %7 ; 2 uses
  %scevgep225 = getelementptr i8, ptr %.04872.us.us, i64 %i.ap
  %scevgep226 = getelementptr i8, ptr %.04872.us.us, i64 8 ; 3 uses
  %scevgep227 = getelementptr i8, ptr %.04971.us.us, i64 %i.ap
  %scevgep231 = getelementptr i8, ptr %.04971.us.us, i64 8 ; 3 uses
  %bound1.a = icmp ult ptr %scevgep231, %scevgep225
  %bound1 = icmp ult ptr %scevgep226, %scevgep227
  %found.conflict = and i1 %bound1.a, %bound1
  %bound0228 = icmp ult ptr %scevgep231, %scevgep282
  %bound1229 = icmp ult ptr %scevgep283, %scevgep224
  %found.conflict230 = and i1 %bound0228, %bound1229
  %i.dw = or i1 %found.conflict230, %stride.check231
  %conflict.rdx = or i1 %found.conflict, %i.dw
  %bound0232 = icmp ult ptr %scevgep231, %scevgep280
  %bound1233 = icmp ult ptr %scevgep281, %scevgep224
  %found.conflict234 = and i1 %bound0232, %bound1233
  %conflict.rdx235 = or i1 %conflict.rdx, %found.conflict234
  %bound0236 = icmp ult ptr %scevgep226, %scevgep282
  %bound1237 = icmp ult ptr %scevgep283, %scevgep
  %found.conflict238 = and i1 %bound0236, %bound1237
  %conflict.rdx239 = or i1 %conflict.rdx235, %found.conflict238
  %bound0240 = icmp ult ptr %scevgep226, %scevgep280
  %bound1241 = icmp ult ptr %scevgep281, %scevgep
  %found.conflict242 = and i1 %bound0240, %bound1241
  %conflict.rdx243 = or i1 %conflict.rdx239, %found.conflict242
  br label %.lr.ph.preheader.i.us.us.us

.lr.ph.preheader.i.us.us.us:                      ; preds = %._crit_edge.loopexit.i.us.us.us, %.lr.ph.us.us
  %.056.us.us.us = phi i64 [ 0, %.lr.ph.us.us ], [ %i.gi, %._crit_edge.loopexit.i.us.us.us ] ; 2 uses
  %.155.us.us.us = phi ptr [ %.04872.us.us, %.lr.ph.us.us ], [ %i.gk, %._crit_edge.loopexit.i.us.us.us ] ; 8 uses
  %.15054.us.us.us = phi ptr [ %.04971.us.us, %.lr.ph.us.us ], [ %i.gj, %._crit_edge.loopexit.i.us.us.us ] ; 8 uses
  %i.dx = mul nsw i64 %.056.us.us.us, %i.h
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.dx ; 13 uses
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !27
  store double %i.dz, ptr %.15054.us.us.us, align 8, !tbaa !27
  store double 0.000000e+00, ptr %.155.us.us.us, align 8, !tbaa !27
  %or.cond329.not = xor i1 %or.cond329, true
  %brmerge392 = select i1 %or.cond329.not, i1 true, i1 %conflict.rdx243
  br i1 %brmerge392, label %.lr.ph.i.us.us.us.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.preheader.i.us.us.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.preheader.i.us.us.us ] ; 2 uses
  %i.ea = or disjoint i64 %index, 1               ; 4 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.ea ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %wide.load = load <2 x double>, ptr %i.eb, align 8, !tbaa !27, !alias.scope !79
  %wide.load244 = load <2 x double>, ptr %i.ec, align 8, !tbaa !27, !alias.scope !79
  %i.ed = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us, i64 %i.ea ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store <2 x double> %wide.load, ptr %i.ed, align 8, !tbaa !27, !alias.scope !80, !noalias !81
  store <2 x double> %wide.load244, ptr %i.ee, align 8, !tbaa !27, !alias.scope !80, !noalias !81
  %i.ef = sub nuw nsw i64 %.fr, %i.ea
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.ef ; 2 uses
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 -8
  %i.ei = getelementptr inbounds i8, ptr %i.eg, i64 -24
  %wide.load245 = load <2 x double>, ptr %i.eh, align 8, !tbaa !27, !alias.scope !82
  %wide.load246 = load <2 x double>, ptr %i.ei, align 8, !tbaa !27, !alias.scope !82
  %reverse = shufflevector <2 x double> %wide.load245, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse247 = shufflevector <2 x double> %wide.load246, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ej = getelementptr inbounds [8 x i8], ptr %.155.us.us.us, i64 %i.ea ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store <2 x double> %reverse, ptr %i.ej, align 8, !tbaa !27, !alias.scope !83, !noalias !84
  store <2 x double> %reverse247, ptr %i.ek, align 8, !tbaa !27, !alias.scope !83, !noalias !84
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.el = icmp eq i64 %index.next, %n.vec
  br i1 %i.el, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.loopexit.i.us.us.us, label %.lr.ph.i.us.us.us.preheader

.lr.ph.i.us.us.us.preheader:                      ; preds = %.lr.ph.preheader.i.us.us.us, %middle.block
  %.030.i.us.us.us.ph = phi i64 [ %i.at, %middle.block ], [ 1, %.lr.ph.preheader.i.us.us.us ] ; 4 uses
  %i.em = sub i64 %i.aq, %.030.i.us.us.us.ph
  %i.en = sub i64 %i.ar, %.030.i.us.us.us.ph
  %xtraiter362 = and i64 %i.em, 3                 ; 2 uses
  %lcmp.mod363.not.a = icmp eq i64 %xtraiter362, 0
  br i1 %lcmp.mod363.not.a, label %.lr.ph.i.us.us.us.prol.loopexit, label %.lr.ph.i.us.us.us.prol

.lr.ph.i.us.us.us.prol:                           ; preds = %.lr.ph.i.us.us.us.preheader, %.lr.ph.i.us.us.us.prol
  %.030.i.us.us.us.prol = phi i64 [ %i.ew, %.lr.ph.i.us.us.us.prol ], [ %.030.i.us.us.us.ph, %.lr.ph.i.us.us.us.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.us.us.us.prol ], [ 0, %.lr.ph.i.us.us.us.preheader ]
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %.030.i.us.us.us.prol
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !27
  %i.eq = mul nsw i64 %.030.i.us.us.us.prol, %i.p ; 2 uses
  %i.er = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us, i64 %i.eq
  store double %i.ep, ptr %i.er, align 8, !tbaa !27
  %i.es = sub nuw nsw i64 %.fr, %.030.i.us.us.us.prol
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.es
  %i.eu = load double, ptr %i.et, align 8, !tbaa !27
  %i.ev = getelementptr inbounds [8 x i8], ptr %.155.us.us.us, i64 %i.eq
  store double %i.eu, ptr %i.ev, align 8, !tbaa !27
  %i.ew = add nuw nsw i64 %.030.i.us.us.us.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter362
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.us.us.us.prol.loopexit, label %.lr.ph.i.us.us.us.prol, !llvm.loop !67

.lr.ph.i.us.us.us.prol.loopexit:                  ; preds = %.lr.ph.i.us.us.us.prol, %.lr.ph.i.us.us.us.preheader
  %.030.i.us.us.us.unr = phi i64 [ %.030.i.us.us.us.ph, %.lr.ph.i.us.us.us.preheader ], [ %i.ew, %.lr.ph.i.us.us.us.prol ]
  %i.ex = icmp ult i64 %i.en, 3
  br i1 %i.ex, label %._crit_edge.loopexit.i.us.us.us, label %.lr.ph.i.us.us.us

.lr.ph.i.us.us.us:                                ; preds = %.lr.ph.i.us.us.us.prol.loopexit, %.lr.ph.i.us.us.us
  %.030.i.us.us.us = phi i64 [ %i.gh, %.lr.ph.i.us.us.us ], [ %.030.i.us.us.us.unr, %.lr.ph.i.us.us.us.prol.loopexit ] ; 7 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %.030.i.us.us.us
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !27
  %i.fa = mul nsw i64 %.030.i.us.us.us, %i.p      ; 2 uses
  %i.fb = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us, i64 %i.fa
  store double %i.ez, ptr %i.fb, align 8, !tbaa !27
  %i.fc = sub nuw nsw i64 %.fr, %.030.i.us.us.us
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.fc
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !27
  %i.ff = getelementptr inbounds [8 x i8], ptr %.155.us.us.us, i64 %i.fa
  store double %i.fe, ptr %i.ff, align 8, !tbaa !27
  %i.fg = add nuw nsw i64 %.030.i.us.us.us, 1     ; 3 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.fg
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !27
  %i.fj = mul nsw i64 %i.fg, %i.p                 ; 2 uses
  %i.fk = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us, i64 %i.fj
  store double %i.fi, ptr %i.fk, align 8, !tbaa !27
  %i.fl = sub nuw nsw i64 %.fr, %i.fg
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.fl
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !27
  %i.fo = getelementptr inbounds [8 x i8], ptr %.155.us.us.us, i64 %i.fj
  store double %i.fn, ptr %i.fo, align 8, !tbaa !27
  %i.fp = add nuw nsw i64 %.030.i.us.us.us, 2     ; 3 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.fp
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !27
  %i.fs = mul nsw i64 %i.fp, %i.p                 ; 2 uses
  %i.ft = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us, i64 %i.fs
  store double %i.fr, ptr %i.ft, align 8, !tbaa !27
  %i.fu = sub nuw nsw i64 %.fr, %i.fp
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.fu
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !27
  %i.fx = getelementptr inbounds [8 x i8], ptr %.155.us.us.us, i64 %i.fs
  store double %i.fw, ptr %i.fx, align 8, !tbaa !27
  %i.fy = add nuw nsw i64 %.030.i.us.us.us, 3     ; 3 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.fy
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !27
  %i.gb = mul nsw i64 %i.fy, %i.p                 ; 2 uses
  %i.gc = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us, i64 %i.gb
  store double %i.ga, ptr %i.gc, align 8, !tbaa !27
  %i.gd = sub nuw nsw i64 %.fr, %i.fy
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.gd
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !27
  %i.gg = getelementptr inbounds [8 x i8], ptr %.155.us.us.us, i64 %i.gb
  store double %i.gf, ptr %i.gg, align 8, !tbaa !27
  %i.gh = add nuw nsw i64 %.030.i.us.us.us, 4     ; 2 uses
  %exitcond.not.i.us.us.us.3 = icmp eq i64 %i.gh, %i.y
  br i1 %exitcond.not.i.us.us.us.3, label %._crit_edge.loopexit.i.us.us.us, label %.lr.ph.i.us.us.us, !llvm.loop !68

._crit_edge.loopexit.i.us.us.us:                  ; preds = %.lr.ph.i.us.us.us.prol.loopexit, %.lr.ph.i.us.us.us, %middle.block
  %i.gi = add nuw nsw i64 %.056.us.us.us, 1       ; 2 uses
  %i.gj = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us, i64 %i.n ; 3 uses
  %i.gk = getelementptr inbounds [8 x i8], ptr %.155.us.us.us, i64 %i.n ; 3 uses
  %exitcond147.not = icmp eq i64 %i.gi, %.fr121
  br i1 %exitcond147.not, label %._crit_edge.split.us.us.us.split, label %.lr.ph.preheader.i.us.us.us, !llvm.loop !59

._crit_edge.split.us.us.us.split:                 ; preds = %._crit_edge.loopexit.i.us.us.us
  %i.gl = getelementptr inbounds [8 x i8], ptr %.05269.us.us, i64 %i.u ; 2 uses
  %i.gm = getelementptr inbounds [8 x i8], ptr %.05170.us.us, i64 %i.u ; 2 uses
  %i.gn = add nuw nsw i64 %.04773.us.us, %.fr121  ; 2 uses
  %.not.us.us = icmp sgt i64 %i.gn, %i.d
  br i1 %.not.us.us, label %._crit_edge76, label %.lr.ph.us.us, !llvm.loop !60

.lr.ph75.split.us.split:                          ; preds = %.lr.ph75.split.us
  br i1 %i.ab, label %.lr.ph.us.us98.preheader, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph75.split.us.split
  %i.go = add nsw i64 %.fr121, -1
  %xtraiter = and i64 %.fr121, 7                  ; 3 uses
  %i.gp = icmp ult i64 %i.go, 7
  %unroll_iter = and i64 %.fr121, 9223372036854775800
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod353 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us.us98.preheader:                         ; preds = %.lr.ph75.split.us.split
  %i.gq = add nsw i64 %.fr121, -1
  %xtraiter354 = and i64 %.fr121, 3               ; 3 uses
  %i.gr = icmp ult i64 %i.gq, 3
  %unroll_iter360 = and i64 %.fr121, 9223372036854775804
  %lcmp.mod356.not = icmp eq i64 %xtraiter354, 0
  %lcmp.mod359 = icmp ne i64 %xtraiter354, 0
  br label %.lr.ph.us.us98

.lr.ph.us.us98:                                   ; preds = %.lr.ph.us.us98.preheader, %._crit_edge.split.split.us.us.us
  %.04773.us.us99 = phi i64 [ %i.it, %._crit_edge.split.split.us.us.us ], [ %.fr121, %.lr.ph.us.us98.preheader ]
  %.04872.us.us100 = phi ptr [ %.lcssa339, %._crit_edge.split.split.us.us.us ], [ %4, %.lr.ph.us.us98.preheader ] ; 2 uses
  %.04971.us.us101 = phi ptr [ %.lcssa340, %._crit_edge.split.split.us.us.us ], [ %3, %.lr.ph.us.us98.preheader ] ; 2 uses
  %.05170.us.us102 = phi ptr [ %i.is, %._crit_edge.split.split.us.us.us ], [ %2, %.lr.ph.us.us98.preheader ]
  %.05269.us.us103 = phi ptr [ %i.ir, %._crit_edge.split.split.us.us.us ], [ %1, %.lr.ph.us.us98.preheader ] ; 2 uses
  %i.gs = load ptr, ptr %i.t, align 8, !tbaa !26
  tail call void %i.gs(ptr noundef %i.b, ptr noundef %.05269.us.us103, ptr noundef %i.s) #4
  br i1 %i.gr, label %._crit_edge.i.us59.us.us.epil.preheader, label %._crit_edge.i.us59.us.us

._crit_edge.i.us59.us.us:                         ; preds = %.lr.ph.us.us98, %._crit_edge.i.us59.us.us
  %.056.us60.us.us = phi i64 [ %i.ie, %._crit_edge.i.us59.us.us ], [ 0, %.lr.ph.us.us98 ] ; 5 uses
  %.155.us61.us.us = phi ptr [ %i.ig, %._crit_edge.i.us59.us.us ], [ %.04872.us.us100, %.lr.ph.us.us98 ] ; 3 uses
  %.15054.us62.us.us = phi ptr [ %i.if, %._crit_edge.i.us59.us.us ], [ %.04971.us.us101, %.lr.ph.us.us98 ] ; 3 uses
  %niter361 = phi i64 [ %niter361.next.3, %._crit_edge.i.us59.us.us ], [ 0, %.lr.ph.us.us98 ]
  %i.gt = mul nsw i64 %.056.us60.us.us, %i.h
  %i.gu = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.gt ; 2 uses
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !27
  store double %i.gv, ptr %.15054.us62.us.us, align 8, !tbaa !27
  store double 0.000000e+00, ptr %.155.us61.us.us, align 8, !tbaa !27
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !27
  %i.gy = getelementptr inbounds [8 x i8], ptr %.15054.us62.us.us, i64 %i.p
  store double %i.gx, ptr %i.gy, align 8, !tbaa !27
  %i.gz = getelementptr inbounds [8 x i8], ptr %.155.us61.us.us, i64 %i.p
  store double 0.000000e+00, ptr %i.gz, align 8, !tbaa !27
  %i.ha = or disjoint i64 %.056.us60.us.us, 1
  %i.hb = getelementptr inbounds [8 x i8], ptr %.15054.us62.us.us, i64 %i.n ; 3 uses
  %i.hc = getelementptr inbounds [8 x i8], ptr %.155.us61.us.us, i64 %i.n ; 3 uses
  %i.hd = mul nsw i64 %i.ha, %i.h
  %i.he = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.hd ; 2 uses
  %i.hf = load double, ptr %i.he, align 8, !tbaa !27
  store double %i.hf, ptr %i.hb, align 8, !tbaa !27
  store double 0.000000e+00, ptr %i.hc, align 8, !tbaa !27
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !27
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.p
  store double %i.hh, ptr %i.hi, align 8, !tbaa !27
end_hunk_0
