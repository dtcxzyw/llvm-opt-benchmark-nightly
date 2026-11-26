Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/rdft2-rdft?download=true
inline.NumInlined: 6
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@mkplan:bb.a
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
  %i.ag = mul i64 %i.h, %i.af
  %i.ah = shl i64 %i.ag, 3                        ; 2 uses
  %i.ai = shl i64 %.fr, 3                         ; 2 uses
  %i.aj = getelementptr i8, ptr %i.s, i64 %i.ah
  %i.ak = getelementptr i8, ptr %i.aj, i64 %i.ai  ; 4 uses
  %5 = add i64 %i.ai, -8
  %6 = shl i64 %i.x, 3                            ; 2 uses
  %7 = sub i64 %5, %6
  %i.al = getelementptr i8, ptr %i.s, i64 %7      ; 4 uses
  %scevgep282.a = getelementptr i8, ptr %i.s, i64 %i.ah
  %8 = getelementptr i8, ptr %scevgep282.a, i64 %6
  %scevgep282 = getelementptr i8, ptr %8, i64 16  ; 4 uses
  %scevgep283 = getelementptr i8, ptr %i.s, i64 8 ; 4 uses
  %i.am = mul i64 %i.n, %i.af
  %i.an = add i64 %i.am, %i.x
  %i.ao = shl i64 %i.an, 3
  %i.ap = add i64 %i.ao, 16                       ; 4 uses
  br i1 %i.ac, label %.lr.ph.us.us.us.preheader, label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph75.split.us.split.us
  %i.aq = xor i64 %i.x, 2
  %i.ar = add nuw i64 %i.x, 1
  %i.as = add nuw i64 %i.x, 1                     ; 2 uses
  %min.iters.check = icmp ugt i64 %i.w, 33
  %ident.check.not = icmp eq i64 %i.p, 1
  %or.cond329 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %.mask = and i64 %i.n, 1152921504606846976
  %stride.check = icmp ne i64 %.mask, 0
  %.mask326 = and i64 %i.h, 1152921504606846976
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
  %.mask327 = and i64 %i.n, 1152921504606846976
  %stride.check294 = icmp ne i64 %.mask327, 0
  %.mask328 = and i64 %i.h, 1152921504606846976
  %stride.check298 = icmp ne i64 %.mask328, 0
  %n.vec313 = and i64 %i.aw, -4                   ; 3 uses
  %i.ax = or disjoint i64 %n.vec313, 1
  %cmp.n324 = icmp eq i64 %i.aw, %n.vec313
  br label %.lr.ph.us.us.us

.lr.ph.us.us.us:                                  ; preds = %.lr.ph.us.us.us.preheader, %._crit_edge.split.us.us.us.split.us.us
  %.04773.us.us.us = phi i64 [ %i.dv, %._crit_edge.split.us.us.us.split.us.us ], [ %.fr121, %.lr.ph.us.us.us.preheader ]
  %.04872.us.us.us = phi ptr [ %i.ds, %._crit_edge.split.us.us.us.split.us.us ], [ %4, %.lr.ph.us.us.us.preheader ] ; 3 uses
  %.04971.us.us.us = phi ptr [ %i.dr, %._crit_edge.split.us.us.us.split.us.us ], [ %3, %.lr.ph.us.us.us.preheader ] ; 3 uses
  %.05170.us.us.us = phi ptr [ %i.du, %._crit_edge.split.us.us.us.split.us.us ], [ %2, %.lr.ph.us.us.us.preheader ]
  %.05269.us.us.us = phi ptr [ %i.dt, %._crit_edge.split.us.us.us.split.us.us ], [ %1, %.lr.ph.us.us.us.preheader ] ; 2 uses
  %i.ay = load ptr, ptr %i.t, align 8, !tbaa !26
  tail call void %i.ay(ptr noundef %i.b, ptr noundef %.05269.us.us.us, ptr noundef %i.s) #4
  %scevgep284 = getelementptr i8, ptr %.04872.us.us.us, i64 %i.ap ; 3 uses
  %scevgep285 = getelementptr i8, ptr %.04872.us.us.us, i64 8 ; 3 uses
  %scevgep286 = getelementptr i8, ptr %.04971.us.us.us, i64 %i.ap ; 3 uses
  %scevgep287 = getelementptr i8, ptr %.04971.us.us.us, i64 8 ; 3 uses
  %bound0291 = icmp ult ptr %scevgep287, %scevgep284
  %bound1292 = icmp ult ptr %scevgep285, %scevgep286
  %found.conflict293 = and i1 %bound0291, %bound1292
  %i.az = or i1 %found.conflict293, %stride.check294
  %bound0295 = icmp ult ptr %scevgep287, %scevgep282
  %bound1296 = icmp ult ptr %scevgep283, %scevgep286
  %found.conflict297 = and i1 %bound0295, %bound1296
  %i.ba = or i1 %found.conflict297, %stride.check298
  %conflict.rdx299 = or i1 %i.az, %i.ba
  %bound0300 = icmp ult ptr %scevgep287, %i.ak
  %bound1301 = icmp ult ptr %i.al, %scevgep286
  %found.conflict302 = and i1 %bound0300, %bound1301
  %conflict.rdx303 = or i1 %conflict.rdx299, %found.conflict302
  %bound0304 = icmp ult ptr %scevgep285, %scevgep282
  %bound1305 = icmp ult ptr %scevgep283, %scevgep284
  %found.conflict306 = and i1 %bound0304, %bound1305
  %conflict.rdx307 = or i1 %conflict.rdx303, %found.conflict306
  %bound0308 = icmp ult ptr %scevgep285, %i.ak
  %bound1309 = icmp ult ptr %i.al, %scevgep284
  %found.conflict310 = and i1 %bound0308, %bound1309
  %conflict.rdx311 = or i1 %conflict.rdx307, %found.conflict310
  br label %.lr.ph.preheader.i.us.us.us.us.us

.lr.ph.preheader.i.us.us.us.us.us:                ; preds = %._crit_edge.loopexit.i.us.us.us.us.us, %.lr.ph.us.us.us
  %.056.us.us.us.us.us = phi i64 [ 0, %.lr.ph.us.us.us ], [ %i.dq, %._crit_edge.loopexit.i.us.us.us.us.us ] ; 2 uses
  %.155.us.us.us.us.us = phi ptr [ %.04872.us.us.us, %.lr.ph.us.us.us ], [ %i.ds, %._crit_edge.loopexit.i.us.us.us.us.us ] ; 9 uses
  %.15054.us.us.us.us.us = phi ptr [ %.04971.us.us.us, %.lr.ph.us.us.us ], [ %i.dr, %._crit_edge.loopexit.i.us.us.us.us.us ] ; 9 uses
  %i.bb = mul nsw i64 %.056.us.us.us.us.us, %i.h
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.bb ; 14 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !27
  store double %i.bd, ptr %.15054.us.us.us.us.us, align 8, !tbaa !27
  store double 0.000000e+00, ptr %.155.us.us.us.us.us, align 8, !tbaa !27
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %conflict.rdx311
  br i1 %brmerge, label %.lr.ph.i.us.us.us.us.us.preheader, label %vector.body314

vector.body314:                                   ; preds = %.lr.ph.preheader.i.us.us.us.us.us, %vector.body314
  %index315 = phi i64 [ %index.next322, %vector.body314 ], [ 0, %.lr.ph.preheader.i.us.us.us.us.us ] ; 2 uses
  %i.be = or disjoint i64 %index315, 1            ; 4 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load316 = load <2 x double>, ptr %i.bf, align 8, !tbaa !27, !alias.scope !71
  %wide.load317 = load <2 x double>, ptr %i.bg, align 8, !tbaa !27, !alias.scope !71
  %i.bh = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us.us.us, i64 %i.be ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store <2 x double> %wide.load316, ptr %i.bh, align 8, !tbaa !27, !alias.scope !72, !noalias !73
  store <2 x double> %wide.load317, ptr %i.bi, align 8, !tbaa !27, !alias.scope !72, !noalias !73
  %i.bj = sub nuw nsw i64 %.fr, %i.be
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bj ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -8
  %i.bm = getelementptr inbounds i8, ptr %i.bk, i64 -24
  %wide.load318 = load <2 x double>, ptr %i.bl, align 8, !tbaa !27, !alias.scope !74
  %wide.load319 = load <2 x double>, ptr %i.bm, align 8, !tbaa !27, !alias.scope !74
  %reverse320 = shufflevector <2 x double> %wide.load318, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse321 = shufflevector <2 x double> %wide.load319, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bn = getelementptr inbounds [8 x i8], ptr %.155.us.us.us.us.us, i64 %i.be ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store <2 x double> %reverse320, ptr %i.bn, align 8, !tbaa !27, !alias.scope !75, !noalias !76
  store <2 x double> %reverse321, ptr %i.bo, align 8, !tbaa !27, !alias.scope !75, !noalias !76
  %index.next322 = add nuw i64 %index315, 4       ; 2 uses
  %i.bp = icmp eq i64 %index.next322, %n.vec313
  br i1 %i.bp, label %middle.block323, label %vector.body314, !llvm.loop !56

middle.block323:                                  ; preds = %vector.body314
  br i1 %cmp.n324, label %._crit_edge.loopexit.i.us.us.us.us.us, label %.lr.ph.i.us.us.us.us.us.preheader

.lr.ph.i.us.us.us.us.us.preheader:                ; preds = %.lr.ph.preheader.i.us.us.us.us.us, %middle.block323
  %.030.i.us.us.us.us.us.ph = phi i64 [ %i.ax, %middle.block323 ], [ 1, %.lr.ph.preheader.i.us.us.us.us.us ] ; 4 uses
  %i.bq = sub i64 %i.au, %.030.i.us.us.us.us.us.ph
  %i.br = sub i64 %i.av, %.030.i.us.us.us.us.us.ph
  %xtraiter364 = and i64 %i.bq, 3                 ; 2 uses
  %lcmp.mod365.not = icmp eq i64 %xtraiter364, 0
  br i1 %lcmp.mod365.not, label %.lr.ph.i.us.us.us.us.us.prol.loopexit, label %.lr.ph.i.us.us.us.us.us.prol

.lr.ph.i.us.us.us.us.us.prol:                     ; preds = %.lr.ph.i.us.us.us.us.us.preheader, %.lr.ph.i.us.us.us.us.us.prol
  %.030.i.us.us.us.us.us.prol = phi i64 [ %i.ca, %.lr.ph.i.us.us.us.us.us.prol ], [ %.030.i.us.us.us.us.us.ph, %.lr.ph.i.us.us.us.us.us.preheader ] ; 4 uses
  %prol.iter366 = phi i64 [ %prol.iter366.next, %.lr.ph.i.us.us.us.us.us.prol ], [ 0, %.lr.ph.i.us.us.us.us.us.preheader ]
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.030.i.us.us.us.us.us.prol
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !27
  %i.bu = mul nsw i64 %.030.i.us.us.us.us.us.prol, %i.p ; 2 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us.us.us, i64 %i.bu
  store double %i.bt, ptr %i.bv, align 8, !tbaa !27
  %i.bw = sub nuw nsw i64 %.fr, %.030.i.us.us.us.us.us.prol
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bw
  %i.by = load double, ptr %i.bx, align 8, !tbaa !27
  %i.bz = getelementptr inbounds [8 x i8], ptr %.155.us.us.us.us.us, i64 %i.bu
  store double %i.by, ptr %i.bz, align 8, !tbaa !27
  %i.ca = add nuw nsw i64 %.030.i.us.us.us.us.us.prol, 1 ; 2 uses
  %prol.iter366.next = add i64 %prol.iter366, 1   ; 2 uses
  %prol.iter366.cmp.not = icmp eq i64 %prol.iter366.next, %xtraiter364
  br i1 %prol.iter366.cmp.not, label %.lr.ph.i.us.us.us.us.us.prol.loopexit, label %.lr.ph.i.us.us.us.us.us.prol, !llvm.loop !57

.lr.ph.i.us.us.us.us.us.prol.loopexit:            ; preds = %.lr.ph.i.us.us.us.us.us.prol, %.lr.ph.i.us.us.us.us.us.preheader
  %.030.i.us.us.us.us.us.unr = phi i64 [ %.030.i.us.us.us.us.us.ph, %.lr.ph.i.us.us.us.us.us.preheader ], [ %i.ca, %.lr.ph.i.us.us.us.us.us.prol ]
  %i.cb = icmp ult i64 %i.br, 3
  br i1 %i.cb, label %._crit_edge.loopexit.i.us.us.us.us.us, label %.lr.ph.i.us.us.us.us.us

.lr.ph.i.us.us.us.us.us:                          ; preds = %.lr.ph.i.us.us.us.us.us.prol.loopexit, %.lr.ph.i.us.us.us.us.us
  %.030.i.us.us.us.us.us = phi i64 [ %i.dl, %.lr.ph.i.us.us.us.us.us ], [ %.030.i.us.us.us.us.us.unr, %.lr.ph.i.us.us.us.us.us.prol.loopexit ] ; 7 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.030.i.us.us.us.us.us
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !27
  %i.ce = mul nsw i64 %.030.i.us.us.us.us.us, %i.p ; 2 uses
  %i.cf = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us.us.us, i64 %i.ce
  store double %i.cd, ptr %i.cf, align 8, !tbaa !27
  %i.cg = sub nuw nsw i64 %.fr, %.030.i.us.us.us.us.us
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.cg
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !27
  %i.cj = getelementptr inbounds [8 x i8], ptr %.155.us.us.us.us.us, i64 %i.ce
  store double %i.ci, ptr %i.cj, align 8, !tbaa !27
  %i.ck = add nuw nsw i64 %.030.i.us.us.us.us.us, 1 ; 3 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.ck
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !27
  %i.cn = mul nsw i64 %i.ck, %i.p                 ; 2 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us.us.us, i64 %i.cn
  store double %i.cm, ptr %i.co, align 8, !tbaa !27
  %i.cp = sub nuw nsw i64 %.fr, %i.ck
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.cp
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !27
  %i.cs = getelementptr inbounds [8 x i8], ptr %.155.us.us.us.us.us, i64 %i.cn
  store double %i.cr, ptr %i.cs, align 8, !tbaa !27
  %i.ct = add nuw nsw i64 %.030.i.us.us.us.us.us, 2 ; 3 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.ct
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !27
  %i.cw = mul nsw i64 %i.ct, %i.p                 ; 2 uses
  %i.cx = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us.us.us, i64 %i.cw
  store double %i.cv, ptr %i.cx, align 8, !tbaa !27
  %i.cy = sub nuw nsw i64 %.fr, %i.ct
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.cy
  %i.da = load double, ptr %i.cz, align 8, !tbaa !27
  %i.db = getelementptr inbounds [8 x i8], ptr %.155.us.us.us.us.us, i64 %i.cw
  store double %i.da, ptr %i.db, align 8, !tbaa !27
  %i.dc = add nuw nsw i64 %.030.i.us.us.us.us.us, 3 ; 3 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.dc
  %i.de = load double, ptr %i.dd, align 8, !tbaa !27
  %i.df = mul nsw i64 %i.dc, %i.p                 ; 2 uses
  %i.dg = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us.us.us, i64 %i.df
  store double %i.de, ptr %i.dg, align 8, !tbaa !27
  %i.dh = sub nuw nsw i64 %.fr, %i.dc
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.dh
  %i.dj = load double, ptr %i.di, align 8, !tbaa !27
  %i.dk = getelementptr inbounds [8 x i8], ptr %.155.us.us.us.us.us, i64 %i.df
  store double %i.dj, ptr %i.dk, align 8, !tbaa !27
  %i.dl = add nuw nsw i64 %.030.i.us.us.us.us.us, 4 ; 2 uses
  %exitcond.not.i.us.us.us.us.us.3 = icmp eq i64 %i.dl, %i.y
  br i1 %exitcond.not.i.us.us.us.us.us.3, label %._crit_edge.loopexit.i.us.us.us.us.us, label %.lr.ph.i.us.us.us.us.us, !llvm.loop !58

._crit_edge.loopexit.i.us.us.us.us.us:            ; preds = %.lr.ph.i.us.us.us.us.us.prol.loopexit, %.lr.ph.i.us.us.us.us.us, %middle.block323
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.y
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !27
  %i.do = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us.us.us, i64 %i.ad
  store double %i.dn, ptr %i.do, align 8, !tbaa !27
  %i.dp = getelementptr inbounds [8 x i8], ptr %.155.us.us.us.us.us, i64 %i.ad
  store double 0.000000e+00, ptr %i.dp, align 8, !tbaa !27
  %i.dq = add nuw nsw i64 %.056.us.us.us.us.us, 1 ; 2 uses
  %i.dr = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us.us.us, i64 %i.n ; 3 uses
  %i.ds = getelementptr inbounds [8 x i8], ptr %.155.us.us.us.us.us, i64 %i.n ; 3 uses
  %exitcond148.not = icmp eq i64 %i.dq, %.fr121
  br i1 %exitcond148.not, label %._crit_edge.split.us.us.us.split.us.us, label %.lr.ph.preheader.i.us.us.us.us.us, !llvm.loop !59

._crit_edge.split.us.us.us.split.us.us:           ; preds = %._crit_edge.loopexit.i.us.us.us.us.us
  %i.dt = getelementptr inbounds [8 x i8], ptr %.05269.us.us.us, i64 %i.u ; 2 uses
  %i.du = getelementptr inbounds [8 x i8], ptr %.05170.us.us.us, i64 %i.u ; 2 uses
  %i.dv = add nuw nsw i64 %.04773.us.us.us, %.fr121 ; 2 uses
  %.not.us.us.us = icmp sgt i64 %i.dv, %i.d
  br i1 %.not.us.us.us, label %._crit_edge76, label %.lr.ph.us.us.us, !llvm.loop !60

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %._crit_edge.split.us.us.us.split
  %.04773.us.us = phi i64 [ %i.gp, %._crit_edge.split.us.us.us.split ], [ %.fr121, %.lr.ph.us.us.preheader ]
  %.04872.us.us = phi ptr [ %i.gm, %._crit_edge.split.us.us.us.split ], [ %4, %.lr.ph.us.us.preheader ] ; 3 uses
  %.04971.us.us = phi ptr [ %i.gl, %._crit_edge.split.us.us.us.split ], [ %3, %.lr.ph.us.us.preheader ] ; 3 uses
  %.05170.us.us = phi ptr [ %i.go, %._crit_edge.split.us.us.us.split ], [ %2, %.lr.ph.us.us.preheader ]
  %.05269.us.us = phi ptr [ %i.gn, %._crit_edge.split.us.us.us.split ], [ %1, %.lr.ph.us.us.preheader ] ; 2 uses
  %i.dw = load ptr, ptr %i.t, align 8, !tbaa !26
  tail call void %i.dw(ptr noundef %i.b, ptr noundef %.05269.us.us, ptr noundef %i.s) #4
  %scevgep224 = getelementptr i8, ptr %.04872.us.us, i64 %i.ap ; 3 uses
  %scevgep225 = getelementptr i8, ptr %.04872.us.us, i64 8 ; 3 uses
  %scevgep226 = getelementptr i8, ptr %.04971.us.us, i64 %i.ap ; 3 uses
  %scevgep227 = getelementptr i8, ptr %.04971.us.us, i64 8 ; 3 uses
  %bound0 = icmp ult ptr %scevgep227, %scevgep224
  %bound1 = icmp ult ptr %scevgep225, %scevgep226
  %found.conflict = and i1 %bound0, %bound1
  %i.dx = or i1 %found.conflict, %stride.check
  %bound0228 = icmp ult ptr %scevgep227, %scevgep282
  %bound1229 = icmp ult ptr %scevgep283, %scevgep226
  %found.conflict230 = and i1 %bound0228, %bound1229
  %i.dy = or i1 %found.conflict230, %stride.check231
  %conflict.rdx = or i1 %i.dx, %i.dy
  %bound0232 = icmp ult ptr %scevgep227, %i.ak
  %bound1233 = icmp ult ptr %i.al, %scevgep226
  %found.conflict234 = and i1 %bound0232, %bound1233
  %conflict.rdx235 = or i1 %conflict.rdx, %found.conflict234
  %bound0236 = icmp ult ptr %scevgep225, %scevgep282
  %bound1237 = icmp ult ptr %scevgep283, %scevgep224
  %found.conflict238 = and i1 %bound0236, %bound1237
  %conflict.rdx239 = or i1 %conflict.rdx235, %found.conflict238
  %bound0240 = icmp ult ptr %scevgep225, %i.ak
  %bound1241 = icmp ult ptr %i.al, %scevgep224
  %found.conflict242 = and i1 %bound0240, %bound1241
  %conflict.rdx243 = or i1 %conflict.rdx239, %found.conflict242
  br label %.lr.ph.preheader.i.us.us.us

.lr.ph.preheader.i.us.us.us:                      ; preds = %._crit_edge.loopexit.i.us.us.us, %.lr.ph.us.us
  %.056.us.us.us = phi i64 [ 0, %.lr.ph.us.us ], [ %i.gk, %._crit_edge.loopexit.i.us.us.us ] ; 2 uses
  %.155.us.us.us = phi ptr [ %.04872.us.us, %.lr.ph.us.us ], [ %i.gm, %._crit_edge.loopexit.i.us.us.us ] ; 8 uses
  %.15054.us.us.us = phi ptr [ %.04971.us.us, %.lr.ph.us.us ], [ %i.gl, %._crit_edge.loopexit.i.us.us.us ] ; 8 uses
  %i.dz = mul nsw i64 %.056.us.us.us, %i.h
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.dz ; 13 uses
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !27
  store double %i.eb, ptr %.15054.us.us.us, align 8, !tbaa !27
  store double 0.000000e+00, ptr %.155.us.us.us, align 8, !tbaa !27
  %or.cond329.not = xor i1 %or.cond329, true
  %brmerge392 = select i1 %or.cond329.not, i1 true, i1 %conflict.rdx243
  br i1 %brmerge392, label %.lr.ph.i.us.us.us.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.preheader.i.us.us.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.preheader.i.us.us.us ] ; 2 uses
  %i.ec = or disjoint i64 %index, 1               ; 4 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.ec ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %wide.load = load <2 x double>, ptr %i.ed, align 8, !tbaa !27, !alias.scope !79
  %wide.load244 = load <2 x double>, ptr %i.ee, align 8, !tbaa !27, !alias.scope !79
  %i.ef = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us, i64 %i.ec ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store <2 x double> %wide.load, ptr %i.ef, align 8, !tbaa !27, !alias.scope !80, !noalias !81
  store <2 x double> %wide.load244, ptr %i.eg, align 8, !tbaa !27, !alias.scope !80, !noalias !81
  %i.eh = sub nuw nsw i64 %.fr, %i.ec
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.eh ; 2 uses
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 -8
  %i.ek = getelementptr inbounds i8, ptr %i.ei, i64 -24
  %wide.load245 = load <2 x double>, ptr %i.ej, align 8, !tbaa !27, !alias.scope !82
  %wide.load246 = load <2 x double>, ptr %i.ek, align 8, !tbaa !27, !alias.scope !82
  %reverse = shufflevector <2 x double> %wide.load245, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse247 = shufflevector <2 x double> %wide.load246, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.el = getelementptr inbounds [8 x i8], ptr %.155.us.us.us, i64 %i.ec ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store <2 x double> %reverse, ptr %i.el, align 8, !tbaa !27, !alias.scope !83, !noalias !84
  store <2 x double> %reverse247, ptr %i.em, align 8, !tbaa !27, !alias.scope !83, !noalias !84
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.en = icmp eq i64 %index.next, %n.vec
  br i1 %i.en, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.loopexit.i.us.us.us, label %.lr.ph.i.us.us.us.preheader

.lr.ph.i.us.us.us.preheader:                      ; preds = %.lr.ph.preheader.i.us.us.us, %middle.block
  %.030.i.us.us.us.ph = phi i64 [ %i.at, %middle.block ], [ 1, %.lr.ph.preheader.i.us.us.us ] ; 4 uses
  %i.eo = sub i64 %i.aq, %.030.i.us.us.us.ph
  %i.ep = sub i64 %i.ar, %.030.i.us.us.us.ph
  %xtraiter362 = and i64 %i.eo, 3                 ; 2 uses
  %lcmp.mod363.not = icmp eq i64 %xtraiter362, 0
  br i1 %lcmp.mod363.not, label %.lr.ph.i.us.us.us.prol.loopexit, label %.lr.ph.i.us.us.us.prol

.lr.ph.i.us.us.us.prol:                           ; preds = %.lr.ph.i.us.us.us.preheader, %.lr.ph.i.us.us.us.prol
  %.030.i.us.us.us.prol = phi i64 [ %i.ey, %.lr.ph.i.us.us.us.prol ], [ %.030.i.us.us.us.ph, %.lr.ph.i.us.us.us.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.us.us.us.prol ], [ 0, %.lr.ph.i.us.us.us.preheader ]
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %.030.i.us.us.us.prol
  %i.er = load double, ptr %i.eq, align 8, !tbaa !27
  %i.es = mul nsw i64 %.030.i.us.us.us.prol, %i.p ; 2 uses
  %i.et = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us, i64 %i.es
  store double %i.er, ptr %i.et, align 8, !tbaa !27
  %i.eu = sub nuw nsw i64 %.fr, %.030.i.us.us.us.prol
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.eu
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !27
  %i.ex = getelementptr inbounds [8 x i8], ptr %.155.us.us.us, i64 %i.es
  store double %i.ew, ptr %i.ex, align 8, !tbaa !27
  %i.ey = add nuw nsw i64 %.030.i.us.us.us.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter362
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.us.us.us.prol.loopexit, label %.lr.ph.i.us.us.us.prol, !llvm.loop !67

.lr.ph.i.us.us.us.prol.loopexit:                  ; preds = %.lr.ph.i.us.us.us.prol, %.lr.ph.i.us.us.us.preheader
  %.030.i.us.us.us.unr = phi i64 [ %.030.i.us.us.us.ph, %.lr.ph.i.us.us.us.preheader ], [ %i.ey, %.lr.ph.i.us.us.us.prol ]
  %i.ez = icmp ult i64 %i.ep, 3
  br i1 %i.ez, label %._crit_edge.loopexit.i.us.us.us, label %.lr.ph.i.us.us.us

.lr.ph.i.us.us.us:                                ; preds = %.lr.ph.i.us.us.us.prol.loopexit, %.lr.ph.i.us.us.us
  %.030.i.us.us.us = phi i64 [ %i.gj, %.lr.ph.i.us.us.us ], [ %.030.i.us.us.us.unr, %.lr.ph.i.us.us.us.prol.loopexit ] ; 7 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %.030.i.us.us.us
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !27
  %i.fc = mul nsw i64 %.030.i.us.us.us, %i.p      ; 2 uses
  %i.fd = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us, i64 %i.fc
  store double %i.fb, ptr %i.fd, align 8, !tbaa !27
  %i.fe = sub nuw nsw i64 %.fr, %.030.i.us.us.us
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.fe
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !27
  %i.fh = getelementptr inbounds [8 x i8], ptr %.155.us.us.us, i64 %i.fc
  store double %i.fg, ptr %i.fh, align 8, !tbaa !27
  %i.fi = add nuw nsw i64 %.030.i.us.us.us, 1     ; 3 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.fi
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !27
  %i.fl = mul nsw i64 %i.fi, %i.p                 ; 2 uses
  %i.fm = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us, i64 %i.fl
  store double %i.fk, ptr %i.fm, align 8, !tbaa !27
  %i.fn = sub nuw nsw i64 %.fr, %i.fi
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.fn
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !27
  %i.fq = getelementptr inbounds [8 x i8], ptr %.155.us.us.us, i64 %i.fl
  store double %i.fp, ptr %i.fq, align 8, !tbaa !27
  %i.fr = add nuw nsw i64 %.030.i.us.us.us, 2     ; 3 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.fr
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !27
  %i.fu = mul nsw i64 %i.fr, %i.p                 ; 2 uses
  %i.fv = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us, i64 %i.fu
  store double %i.ft, ptr %i.fv, align 8, !tbaa !27
  %i.fw = sub nuw nsw i64 %.fr, %i.fr
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.fw
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !27
  %i.fz = getelementptr inbounds [8 x i8], ptr %.155.us.us.us, i64 %i.fu
  store double %i.fy, ptr %i.fz, align 8, !tbaa !27
  %i.ga = add nuw nsw i64 %.030.i.us.us.us, 3     ; 3 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.ga
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !27
  %i.gd = mul nsw i64 %i.ga, %i.p                 ; 2 uses
  %i.ge = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us, i64 %i.gd
  store double %i.gc, ptr %i.ge, align 8, !tbaa !27
  %i.gf = sub nuw nsw i64 %.fr, %i.ga
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.gf
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !27
  %i.gi = getelementptr inbounds [8 x i8], ptr %.155.us.us.us, i64 %i.gd
  store double %i.gh, ptr %i.gi, align 8, !tbaa !27
  %i.gj = add nuw nsw i64 %.030.i.us.us.us, 4     ; 2 uses
  %exitcond.not.i.us.us.us.3 = icmp eq i64 %i.gj, %i.y
  br i1 %exitcond.not.i.us.us.us.3, label %._crit_edge.loopexit.i.us.us.us, label %.lr.ph.i.us.us.us, !llvm.loop !68

._crit_edge.loopexit.i.us.us.us:                  ; preds = %.lr.ph.i.us.us.us.prol.loopexit, %.lr.ph.i.us.us.us, %middle.block
  %i.gk = add nuw nsw i64 %.056.us.us.us, 1       ; 2 uses
  %i.gl = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us, i64 %i.n ; 3 uses
  %i.gm = getelementptr inbounds [8 x i8], ptr %.155.us.us.us, i64 %i.n ; 3 uses
  %exitcond147.not = icmp eq i64 %i.gk, %.fr121
  br i1 %exitcond147.not, label %._crit_edge.split.us.us.us.split, label %.lr.ph.preheader.i.us.us.us, !llvm.loop !59

._crit_edge.split.us.us.us.split:                 ; preds = %._crit_edge.loopexit.i.us.us.us
  %i.gn = getelementptr inbounds [8 x i8], ptr %.05269.us.us, i64 %i.u ; 2 uses
  %i.go = getelementptr inbounds [8 x i8], ptr %.05170.us.us, i64 %i.u ; 2 uses
  %i.gp = add nuw nsw i64 %.04773.us.us, %.fr121  ; 2 uses
  %.not.us.us = icmp sgt i64 %i.gp, %i.d
  br i1 %.not.us.us, label %._crit_edge76, label %.lr.ph.us.us, !llvm.loop !60

.lr.ph75.split.us.split:                          ; preds = %.lr.ph75.split.us
  br i1 %i.ab, label %.lr.ph.us.us98.preheader, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph75.split.us.split
  %i.gq = add nsw i64 %.fr121, -1
  %xtraiter = and i64 %.fr121, 7                  ; 3 uses
  %i.gr = icmp ult i64 %i.gq, 7
  %unroll_iter = and i64 %.fr121, 9223372036854775800
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod353 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us.us98.preheader:                         ; preds = %.lr.ph75.split.us.split
  %i.gs = add nsw i64 %.fr121, -1
  %xtraiter354 = and i64 %.fr121, 3               ; 3 uses
  %i.gt = icmp ult i64 %i.gs, 3
  %unroll_iter360 = and i64 %.fr121, 9223372036854775804
  %lcmp.mod356.not = icmp eq i64 %xtraiter354, 0
  %lcmp.mod359 = icmp ne i64 %xtraiter354, 0
  br label %.lr.ph.us.us98

.lr.ph.us.us98:                                   ; preds = %.lr.ph.us.us98.preheader, %._crit_edge.split.split.us.us.us
  %.04773.us.us99 = phi i64 [ %i.iv, %._crit_edge.split.split.us.us.us ], [ %.fr121, %.lr.ph.us.us98.preheader ]
  %.04872.us.us100 = phi ptr [ %.lcssa339, %._crit_edge.split.split.us.us.us ], [ %4, %.lr.ph.us.us98.preheader ] ; 2 uses
  %.04971.us.us101 = phi ptr [ %.lcssa340, %._crit_edge.split.split.us.us.us ], [ %3, %.lr.ph.us.us98.preheader ] ; 2 uses
  %.05170.us.us102 = phi ptr [ %i.iu, %._crit_edge.split.split.us.us.us ], [ %2, %.lr.ph.us.us98.preheader ]
  %.05269.us.us103 = phi ptr [ %i.it, %._crit_edge.split.split.us.us.us ], [ %1, %.lr.ph.us.us98.preheader ] ; 2 uses
  %i.gu = load ptr, ptr %i.t, align 8, !tbaa !26
  tail call void %i.gu(ptr noundef %i.b, ptr noundef %.05269.us.us103, ptr noundef %i.s) #4
  br i1 %i.gt, label %._crit_edge.i.us59.us.us.epil.preheader, label %._crit_edge.i.us59.us.us

._crit_edge.i.us59.us.us:                         ; preds = %.lr.ph.us.us98, %._crit_edge.i.us59.us.us
  %.056.us60.us.us = phi i64 [ %i.ig, %._crit_edge.i.us59.us.us ], [ 0, %.lr.ph.us.us98 ] ; 5 uses
  %.155.us61.us.us = phi ptr [ %i.ii, %._crit_edge.i.us59.us.us ], [ %.04872.us.us100, %.lr.ph.us.us98 ] ; 3 uses
  %.15054.us62.us.us = phi ptr [ %i.ih, %._crit_edge.i.us59.us.us ], [ %.04971.us.us101, %.lr.ph.us.us98 ] ; 3 uses
  %niter361 = phi i64 [ %niter361.next.3, %._crit_edge.i.us59.us.us ], [ 0, %.lr.ph.us.us98 ]
  %i.gv = mul nsw i64 %.056.us60.us.us, %i.h
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.gv ; 2 uses
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !27
  store double %i.gx, ptr %.15054.us62.us.us, align 8, !tbaa !27
  store double 0.000000e+00, ptr %.155.us61.us.us, align 8, !tbaa !27
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !27
  %i.ha = getelementptr inbounds [8 x i8], ptr %.15054.us62.us.us, i64 %i.p
  store double %i.gz, ptr %i.ha, align 8, !tbaa !27
  %i.hb = getelementptr inbounds [8 x i8], ptr %.155.us61.us.us, i64 %i.p
  store double 0.000000e+00, ptr %i.hb, align 8, !tbaa !27
  %i.hc = or disjoint i64 %.056.us60.us.us, 1
  %i.hd = getelementptr inbounds [8 x i8], ptr %.15054.us62.us.us, i64 %i.n ; 3 uses
  %i.he = getelementptr inbounds [8 x i8], ptr %.155.us61.us.us, i64 %i.n ; 3 uses
  %i.hf = mul nsw i64 %i.hc, %i.h
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.hf ; 2 uses
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !27
  store double %i.hh, ptr %i.hd, align 8, !tbaa !27
  store double 0.000000e+00, ptr %i.he, align 8, !tbaa !27
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !27
  %i.hk = getelementptr inbounds [8 x i8], ptr %i.hd, i64 %i.p
  store double %i.hj, ptr %i.hk, align 8, !tbaa !27
end_hunk_0
begin_hunk_1_@apply_hc2r:bb.a
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.hi, i64 %i.l
  %i.hp = mul nsw i64 %i.hm, %i.h
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.hp
  %i.hr = load double, ptr %i.hn, align 8, !tbaa !27
  store double %i.hr, ptr %i.hq, align 8, !tbaa !27
  %i.hs = or disjoint i64 %.056.us81, 5
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.hn, i64 %i.l ; 2 uses
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.ho, i64 %i.l
  %i.hv = mul nsw i64 %i.hs, %i.h
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.hv
  %i.hx = load double, ptr %i.ht, align 8, !tbaa !27
  store double %i.hx, ptr %i.hw, align 8, !tbaa !27
  %i.hy = or disjoint i64 %.056.us81, 6
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.ht, i64 %i.l ; 2 uses
  %i.ia = getelementptr inbounds [8 x i8], ptr %i.hu, i64 %i.l
  %i.ib = mul nsw i64 %i.hy, %i.h
  %i.ic = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ib
  %i.id = load double, ptr %i.hz, align 8, !tbaa !27
  store double %i.id, ptr %i.ic, align 8, !tbaa !27
  %i.ie = or disjoint i64 %.056.us81, 7
  %i.if = getelementptr inbounds [8 x i8], ptr %i.hz, i64 %i.l ; 2 uses
  %i.ig = getelementptr inbounds [8 x i8], ptr %i.ia, i64 %i.l
  %i.ih = mul nsw i64 %i.ie, %i.h
  %i.ii = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ih
  %i.ij = load double, ptr %i.if, align 8, !tbaa !27
  store double %i.ij, ptr %i.ii, align 8, !tbaa !27
  %i.ik = add nuw nsw i64 %.056.us81, 8           ; 2 uses
  %i.il = getelementptr inbounds [8 x i8], ptr %i.if, i64 %i.l ; 3 uses
  %i.im = getelementptr inbounds [8 x i8], ptr %i.ig, i64 %i.l ; 3 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.split.split.us84.unr-lcssa, label %._crit_edge.i.us, !llvm.loop !87

._crit_edge.split.split.us84.unr-lcssa:           ; preds = %._crit_edge.i.us
  br i1 %lcmp.mod.not, label %._crit_edge.split.split.us84, label %._crit_edge.i.us.epil.preheader

._crit_edge.i.us.epil.preheader:                  ; preds = %._crit_edge.split.split.us84.unr-lcssa, %.preheader.us
  %.056.us81.epil.init = phi i64 [ 0, %.preheader.us ], [ %i.ik, %._crit_edge.split.split.us84.unr-lcssa ]
  %.155.us82.epil.init = phi ptr [ %.04872.us, %.preheader.us ], [ %i.im, %._crit_edge.split.split.us84.unr-lcssa ]
  %.15054.us83.epil.init = phi ptr [ %.04971.us, %.preheader.us ], [ %i.il, %._crit_edge.split.split.us84.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod214)
  br label %._crit_edge.i.us.epil

._crit_edge.i.us.epil:                            ; preds = %._crit_edge.i.us.epil, %._crit_edge.i.us.epil.preheader
  %.056.us81.epil = phi i64 [ %.056.us81.epil.init, %._crit_edge.i.us.epil.preheader ], [ %i.iq, %._crit_edge.i.us.epil ] ; 2 uses
  %.155.us82.epil = phi ptr [ %.155.us82.epil.init, %._crit_edge.i.us.epil.preheader ], [ %i.is, %._crit_edge.i.us.epil ]
  %.15054.us83.epil = phi ptr [ %.15054.us83.epil.init, %._crit_edge.i.us.epil.preheader ], [ %i.ir, %._crit_edge.i.us.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %._crit_edge.i.us.epil.preheader ], [ %epil.iter.next, %._crit_edge.i.us.epil ]
  %i.in = mul nsw i64 %.056.us81.epil, %i.h
  %i.io = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.in
  %i.ip = load double, ptr %.15054.us83.epil, align 8, !tbaa !27
  store double %i.ip, ptr %i.io, align 8, !tbaa !27
  %i.iq = add nuw nsw i64 %.056.us81.epil, 1
  %i.ir = getelementptr inbounds [8 x i8], ptr %.15054.us83.epil, i64 %i.l ; 2 uses
  %i.is = getelementptr inbounds [8 x i8], ptr %.155.us82.epil, i64 %i.l ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.split.split.us84, label %._crit_edge.i.us.epil, !llvm.loop !91

._crit_edge.split.split.us84:                     ; preds = %._crit_edge.i.us.epil, %._crit_edge.split.split.us84.unr-lcssa
  %.lcssa206 = phi ptr [ %i.il, %._crit_edge.split.split.us84.unr-lcssa ], [ %i.ir, %._crit_edge.i.us.epil ] ; 2 uses
  %.lcssa205 = phi ptr [ %i.im, %._crit_edge.split.split.us84.unr-lcssa ], [ %i.is, %._crit_edge.i.us.epil ] ; 2 uses
  %i.it = load ptr, ptr %i.ac, align 8, !tbaa !26
  tail call void %i.it(ptr noundef %i.b, ptr noundef nonnull %i.s, ptr noundef %.05269.us) #4
  %i.iu = getelementptr inbounds [8 x i8], ptr %.05269.us, i64 %i.ad ; 2 uses
  %i.iv = getelementptr inbounds [8 x i8], ptr %.05170.us, i64 %i.ad ; 2 uses
  %i.iw = add nuw nsw i64 %.04773.us, %i.f        ; 2 uses
  %.not.us = icmp sgt i64 %i.iw, %i.d
  br i1 %.not.us, label %._crit_edge74, label %.preheader.us, !llvm.loop !88

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.04773 = phi i64 [ %i.ja, %.preheader ], [ %i.f, %.preheader.lr.ph ]
  %.05170 = phi ptr [ %i.iz, %.preheader ], [ %2, %.preheader.lr.ph ]
  %.05269 = phi ptr [ %i.iy, %.preheader ], [ %1, %.preheader.lr.ph ] ; 2 uses
  %i.ix = load ptr, ptr %i.ac, align 8, !tbaa !26
  tail call void %i.ix(ptr noundef %i.b, ptr noundef %i.s, ptr noundef %.05269) #4
  %i.iy = getelementptr inbounds [8 x i8], ptr %.05269, i64 %i.ad ; 2 uses
  %i.iz = getelementptr inbounds [8 x i8], ptr %.05170, i64 %i.ad ; 2 uses
  %i.ja = add nsw i64 %.04773, %i.f               ; 2 uses
  %.not = icmp sgt i64 %i.ja, %i.d
  br i1 %.not, label %._crit_edge74, label %.preheader, !llvm.loop !88

._crit_edge74:                                    ; preds = %.preheader, %._crit_edge.split.split.us84, %._crit_edge.split.split.us.us.us, %._crit_edge.split.us.us.us.split, %._crit_edge.split.us.us.us.split.us.us, %bb.a
  %.052.lcssa = phi ptr [ %1, %bb.a ], [ %i.iu, %._crit_edge.split.split.us84 ], [ %i.ep, %._crit_edge.split.us.us.us.split ], [ %i.cm, %._crit_edge.split.us.us.us.split.us.us ], [ %i.go, %._crit_edge.split.split.us.us.us ], [ %i.iy, %.preheader ]
  %.051.lcssa = phi ptr [ %2, %bb.a ], [ %i.iv, %._crit_edge.split.split.us84 ], [ %i.eq, %._crit_edge.split.us.us.us.split ], [ %i.cn, %._crit_edge.split.us.us.us.split.us.us ], [ %i.gp, %._crit_edge.split.split.us.us.us ], [ %i.iz, %.preheader ]
  %.049.lcssa = phi ptr [ %3, %bb.a ], [ %.lcssa206, %._crit_edge.split.split.us84 ], [ %i.em, %._crit_edge.split.us.us.us.split ], [ %i.cj, %._crit_edge.split.us.us.us.split.us.us ], [ %.lcssa201, %._crit_edge.split.split.us.us.us ], [ %3, %.preheader ]
  %.048.lcssa = phi ptr [ %4, %bb.a ], [ %.lcssa205, %._crit_edge.split.split.us84 ], [ %i.en, %._crit_edge.split.us.us.us.split ], [ %i.ck, %._crit_edge.split.us.us.us.split.us.us ], [ %.lcssa200, %._crit_edge.split.split.us.us.us ], [ %4, %.preheader ]
  tail call void @fftw_ifree(ptr noundef %i.s) #4
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !18 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 56
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !26
  tail call void %i.je(ptr noundef %i.jc, ptr noundef %.052.lcssa, ptr noundef %.051.lcssa, ptr noundef %.049.lcssa, ptr noundef %.048.lcssa) #4
  ret void
}

declare void @fftw_rdft2_strides(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @fftw_ops_madd(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @fftw_ifree0(ptr noundef) local_unnamed_addr #1

declare void @fftw_plan_destroy_internal(ptr noundef) local_unnamed_addr #1

declare void @fftw_plan_awake(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @fftw_toobig(i64 noundef) local_unnamed_addr #1

declare i32 @fftw_rdft2_inplace_strides(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @fftw_iabs(i64 noundef) local_unnamed_addr #1

declare i64 @fftw_imin(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nounwind }

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
!16 = !{!"", !14, i64 0, !15, i64 64, !15, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128}
!17 = !{!16, !15, i64 64}
!18 = !{!16, !15, i64 72}
!19 = !{!16, !10, i64 80}
!20 = !{!16, !10, i64 88}
!21 = !{!16, !10, i64 120}
!22 = !{!16, !10, i64 128}
!23 = !{!16, !10, i64 96}
!24 = !{!16, !10, i64 104}
!25 = !{!16, !10, i64 112}
!26 = !{!14, !9, i64 56}
!27 = !{!11, !11, i64 0}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!"llvm.loop.unroll.disable"}
!30 = !{!"problem_s", !9, i64 0}
!31 = !{!"p1 double", !9, i64 0}
!32 = !{!"", !30, i64 0, !9, i64 8, !9, i64 16, !31, i64 24, !31, i64 32, !31, i64 40, !31, i64 48, !6, i64 56}
!33 = !{!32, !9, i64 16}
!34 = !{!"", !6, i64 0, !5, i64 8}
!35 = !{!34, !6, i64 0}
!36 = !{!32, !9, i64 8}
!37 = !{!32, !6, i64 56}
!38 = !{!32, !31, i64 32}
!39 = !{!32, !31, i64 24}
!40 = !{!10, !10, i64 0}
!41 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16}
!42 = !{!41, !10, i64 0}
!43 = !{!32, !31, i64 40}
!44 = !{!32, !31, i64 48}
!45 = !{!41, !10, i64 8}
!46 = !{!41, !10, i64 16}
!47 = !{!16, !11, i64 32}
!48 = !{!"printer_s", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !6, i64 32, !6, i64 36}
!49 = !{!48, !9, i64 0}
!50 = !{!16, !9, i64 56}
!51 = distinct !{!51, i1 false, !"LVerDomain"}
!52 = distinct !{!52, !51}
!53 = distinct !{!53, !51}
!54 = distinct !{!54, !51}
!55 = distinct !{!55, !51}
!56 = distinct !{!56, !28, !77, !78}
!57 = distinct !{!57, !29}
!58 = distinct !{!58, !28, !77}
!59 = distinct !{!59, !28}
!60 = distinct !{!60, !28}
!61 = distinct !{!61, i1 false, !"LVerDomain"}
!62 = distinct !{!62, !61}
!63 = distinct !{!63, !61}
!64 = distinct !{!64, !61}
!65 = distinct !{!65, !61}
!66 = distinct !{!66, !28, !77, !78}
!67 = distinct !{!67, !29}
!68 = distinct !{!68, !28, !77}
!69 = distinct !{!69, !29}
!70 = distinct !{!70, !29}
!71 = !{!52}
!72 = !{!53}
!73 = !{!55, !52, !54}
!74 = !{!54}
!75 = !{!55}
!76 = !{!52, !54}
!77 = !{!"llvm.loop.isvectorized", i32 1}
!78 = !{!"llvm.loop.unroll.runtime.disable"}
!79 = !{!62}
!80 = !{!63}
!81 = !{!65, !62, !64}
!82 = !{!64}
!83 = !{!65}
!84 = !{!62, !64}
!85 = distinct !{!85, !28}
!86 = distinct !{!86, !29}
!87 = distinct !{!87, !28}
!88 = distinct !{!88, !28}
!89 = distinct !{!89, !29}
!90 = distinct !{!90, !29}
!91 = distinct !{!91, !29}
end_hunk_1
