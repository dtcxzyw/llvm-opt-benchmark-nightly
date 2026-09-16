Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/rdft2-rdft?download=true
inline.NumInlined: 6
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@mkplan:bb.a
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
  %5 = mul nsw i64 %i.l, %.fr121                  ; 10 uses
  %i.u = icmp sgt i64 %.fr121, 0
  %i.v = add i64 %.fr, -3                         ; 4 uses
  %i.w = lshr i64 %i.v, 1                         ; 9 uses
  %i.x = add nuw nsw i64 %i.w, 2                  ; 4 uses
  %i.y = and i64 %i.v, -2
  %i.z = add i64 %i.y, 4
  %i.aa = icmp eq i64 %.fr, 2
  %i.ab = icmp eq i64 %i.z, %.fr
  %i.ac = mul nsw i64 %i.x, %i.p                  ; 2 uses
  br i1 %i.u, label %.lr.ph75.split.us, label %.lr.ph75.split

.lr.ph75.split.us:                                ; preds = %.lr.ph75
  %i.ad = icmp sgt i64 %.fr, 2
  br i1 %i.ad, label %.lr.ph75.split.us.split.us, label %.lr.ph75.split.us.split

.lr.ph75.split.us.split.us:                       ; preds = %.lr.ph75.split.us
  %i.ae = add nsw i64 %.fr121, -1                 ; 2 uses
  %i.af = mul i64 %i.n, %i.ae
  %i.ag = shl i64 %i.w, 3                         ; 2 uses
  %i.ah = add i64 %i.af, %i.w
  %i.ai = shl i64 %i.ah, 3
  %i.aj = add i64 %i.ai, 16                       ; 4 uses
  %i.ak = shl i64 %i.n, 3                         ; 10 uses
  %i.al = shl i64 %.fr, 3                         ; 2 uses
  %i.am = add i64 %i.al, -8
  %i.an = sub i64 %i.am, %i.ag
  %scevgep240 = getelementptr i8, ptr %i.s, i64 %i.an ; 4 uses
  %i.ao = mul i64 %i.h, %i.ae
  %i.ap = shl i64 %i.ao, 3                        ; 2 uses
  %i.aq = getelementptr i8, ptr %i.s, i64 %i.ap
  %scevgep241 = getelementptr i8, ptr %i.aq, i64 %i.al ; 4 uses
  %i.ar = shl i64 %i.h, 3                         ; 8 uses
  %scevgep242 = getelementptr i8, ptr %i.s, i64 8 ; 4 uses
  %i.as = getelementptr i8, ptr %i.s, i64 %i.ap
  %i.at = getelementptr i8, ptr %i.as, i64 %i.ag
  %scevgep243 = getelementptr i8, ptr %i.at, i64 16 ; 4 uses
  br i1 %i.ab, label %.lr.ph.us.us.us.preheader, label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph75.split.us.split.us
  %i.au = xor i64 %i.w, 2
  %i.av = add nuw i64 %i.w, 1
  %i.aw = add nuw i64 %i.w, 1                     ; 2 uses
  %min.iters.check = icmp ugt i64 %i.v, 57
  %ident.check.not = icmp eq i64 %i.p, 1
  %or.cond289 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %stride.check = icmp slt i64 %i.ak, 0
  %i.ax = or i64 %i.ar, %i.ak
  %i.ay = icmp slt i64 %i.ax, 0
  %i.az = or i64 %i.ar, %i.ak
  %i.ba = icmp slt i64 %i.az, 0
  %i.bb = or i64 %i.ar, %i.ak
  %i.bc = icmp slt i64 %i.bb, 0
  %i.bd = or i64 %i.ar, %i.ak
  %i.be = icmp slt i64 %i.bd, 0
  %n.vec = and i64 %i.aw, -4                      ; 3 uses
  %i.bf = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br label %.lr.ph.us.us

.lr.ph.us.us.us.preheader:                        ; preds = %.lr.ph75.split.us.split.us
  %i.bg = xor i64 %i.w, 2
  %i.bh = add nuw i64 %i.w, 1
  %i.bi = add nuw i64 %i.w, 1                     ; 2 uses
  %min.iters.check274 = icmp ugt i64 %i.v, 57
  %ident.check234.not = icmp eq i64 %i.p, 1
  %or.cond = select i1 %min.iters.check274, i1 %ident.check234.not, i1 false
  %stride.check247 = icmp slt i64 %i.ak, 0
  %i.bj = or i64 %i.ar, %i.ak
  %i.bk = icmp slt i64 %i.bj, 0
  %i.bl = or i64 %i.ar, %i.ak
  %i.bm = icmp slt i64 %i.bl, 0
  %i.bn = or i64 %i.ar, %i.ak
  %i.bo = icmp slt i64 %i.bn, 0
  %i.bp = or i64 %i.ar, %i.ak
  %i.bq = icmp slt i64 %i.bp, 0
  %n.vec276 = and i64 %i.bi, -4                   ; 3 uses
  %i.br = or disjoint i64 %n.vec276, 1
  %cmp.n287 = icmp eq i64 %i.bi, %n.vec276
  br label %.lr.ph.us.us.us

.lr.ph.us.us.us:                                  ; preds = %.lr.ph.us.us.us.preheader, %._crit_edge.split.us.us.us.split.us.us
  %.04773.us.us.us = phi i64 [ %i.es, %._crit_edge.split.us.us.us.split.us.us ], [ %.fr121, %.lr.ph.us.us.us.preheader ]
  %.04872.us.us.us = phi ptr [ %i.ep, %._crit_edge.split.us.us.us.split.us.us ], [ %4, %.lr.ph.us.us.us.preheader ] ; 3 uses
  %.04971.us.us.us = phi ptr [ %i.eo, %._crit_edge.split.us.us.us.split.us.us ], [ %3, %.lr.ph.us.us.us.preheader ] ; 3 uses
  %.05170.us.us.us = phi ptr [ %i.er, %._crit_edge.split.us.us.us.split.us.us ], [ %2, %.lr.ph.us.us.us.preheader ]
  %.05269.us.us.us = phi ptr [ %i.eq, %._crit_edge.split.us.us.us.split.us.us ], [ %1, %.lr.ph.us.us.us.preheader ] ; 2 uses
  %i.bs = load ptr, ptr %i.t, align 8, !tbaa !26
  tail call void %i.bs(ptr noundef %i.b, ptr noundef %.05269.us.us.us, ptr noundef %i.s) #4
  %scevgep236 = getelementptr i8, ptr %.04971.us.us.us, i64 8 ; 3 uses
  %scevgep237 = getelementptr i8, ptr %.04971.us.us.us, i64 %i.aj ; 3 uses
  %scevgep238 = getelementptr i8, ptr %.04872.us.us.us, i64 8 ; 3 uses
  %scevgep239 = getelementptr i8, ptr %.04872.us.us.us, i64 %i.aj ; 3 uses
  %bound0244 = icmp ult ptr %scevgep236, %scevgep239
  %bound1245 = icmp ult ptr %scevgep238, %scevgep237
  %found.conflict246 = and i1 %bound0244, %bound1245
  %i.bt = or i1 %found.conflict246, %stride.check247
  %bound0249 = icmp ult ptr %scevgep236, %scevgep241
  %bound1250 = icmp ult ptr %scevgep240, %scevgep237
  %found.conflict251 = and i1 %bound0249, %bound1250
  %i.bu = or i1 %found.conflict251, %i.bk
  %conflict.rdx254 = or i1 %i.bt, %i.bu
  %bound0255 = icmp ult ptr %scevgep236, %scevgep243
  %bound1256 = icmp ult ptr %scevgep242, %scevgep237
  %found.conflict257 = and i1 %bound0255, %bound1256
  %i.bv = or i1 %found.conflict257, %i.bm
  %conflict.rdx260 = or i1 %conflict.rdx254, %i.bv
  %bound0261 = icmp ult ptr %scevgep238, %scevgep241
  %bound1262 = icmp ult ptr %scevgep240, %scevgep239
  %found.conflict263 = and i1 %bound0261, %bound1262
  %i.bw = or i1 %found.conflict263, %i.bo
  %conflict.rdx266 = or i1 %conflict.rdx260, %i.bw
  %bound0267 = icmp ult ptr %scevgep238, %scevgep243
  %bound1268 = icmp ult ptr %scevgep242, %scevgep239
  %found.conflict269 = and i1 %bound0267, %bound1268
  %i.bx = or i1 %found.conflict269, %i.bq
  %conflict.rdx272 = or i1 %conflict.rdx266, %i.bx
  br label %.lr.ph.preheader.i.us.us.us.us.us

.lr.ph.preheader.i.us.us.us.us.us:                ; preds = %._crit_edge.loopexit.i.us.us.us.us.us, %.lr.ph.us.us.us
  %.056.us.us.us.us.us = phi i64 [ 0, %.lr.ph.us.us.us ], [ %i.en, %._crit_edge.loopexit.i.us.us.us.us.us ] ; 2 uses
  %.155.us.us.us.us.us = phi ptr [ %.04872.us.us.us, %.lr.ph.us.us.us ], [ %i.ep, %._crit_edge.loopexit.i.us.us.us.us.us ] ; 9 uses
  %.15054.us.us.us.us.us = phi ptr [ %.04971.us.us.us, %.lr.ph.us.us.us ], [ %i.eo, %._crit_edge.loopexit.i.us.us.us.us.us ] ; 9 uses
  %i.by = mul nsw i64 %.056.us.us.us.us.us, %i.h
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.by ; 14 uses
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !27
  store double %i.ca, ptr %.15054.us.us.us.us.us, align 8, !tbaa !27
  store double 0.000000e+00, ptr %.155.us.us.us.us.us, align 8, !tbaa !27
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %conflict.rdx272
  br i1 %brmerge, label %.lr.ph.i.us.us.us.us.us.preheader, label %vector.body277

vector.body277:                                   ; preds = %.lr.ph.preheader.i.us.us.us.us.us, %vector.body277
  %index278 = phi i64 [ %index.next285, %vector.body277 ], [ 0, %.lr.ph.preheader.i.us.us.us.us.us ] ; 2 uses
  %i.cb = or disjoint i64 %index278, 1            ; 4 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cb ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %wide.load279 = load <2 x double>, ptr %i.cc, align 8, !tbaa !27, !alias.scope !71
  %wide.load280 = load <2 x double>, ptr %i.cd, align 8, !tbaa !27, !alias.scope !71
  %i.ce = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us.us.us, i64 %i.cb ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store <2 x double> %wide.load279, ptr %i.ce, align 8, !tbaa !27, !alias.scope !72, !noalias !73
  store <2 x double> %wide.load280, ptr %i.cf, align 8, !tbaa !27, !alias.scope !72, !noalias !73
  %i.cg = sub nuw nsw i64 %.fr, %i.cb
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cg ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -8
  %i.cj = getelementptr inbounds i8, ptr %i.ch, i64 -24
  %wide.load281 = load <2 x double>, ptr %i.ci, align 8, !tbaa !27, !alias.scope !74
  %wide.load282 = load <2 x double>, ptr %i.cj, align 8, !tbaa !27, !alias.scope !74
  %reverse283 = shufflevector <2 x double> %wide.load281, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse284 = shufflevector <2 x double> %wide.load282, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ck = getelementptr inbounds [8 x i8], ptr %.155.us.us.us.us.us, i64 %i.cb ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store <2 x double> %reverse283, ptr %i.ck, align 8, !tbaa !27, !alias.scope !75, !noalias !76
  store <2 x double> %reverse284, ptr %i.cl, align 8, !tbaa !27, !alias.scope !75, !noalias !76
  %index.next285 = add nuw i64 %index278, 4       ; 2 uses
  %i.cm = icmp eq i64 %index.next285, %n.vec276
  br i1 %i.cm, label %middle.block286, label %vector.body277, !llvm.loop !56

middle.block286:                                  ; preds = %vector.body277
  br i1 %cmp.n287, label %._crit_edge.loopexit.i.us.us.us.us.us, label %.lr.ph.i.us.us.us.us.us.preheader

.lr.ph.i.us.us.us.us.us.preheader:                ; preds = %.lr.ph.preheader.i.us.us.us.us.us, %middle.block286
  %.030.i.us.us.us.us.us.ph = phi i64 [ %i.br, %middle.block286 ], [ 1, %.lr.ph.preheader.i.us.us.us.us.us ] ; 4 uses
  %i.cn = sub i64 %i.bg, %.030.i.us.us.us.us.us.ph
  %i.co = sub i64 %i.bh, %.030.i.us.us.us.us.us.ph
  %xtraiter324 = and i64 %i.cn, 3                 ; 2 uses
  %lcmp.mod325.not = icmp eq i64 %xtraiter324, 0
  br i1 %lcmp.mod325.not, label %.lr.ph.i.us.us.us.us.us.prol.loopexit, label %.lr.ph.i.us.us.us.us.us.prol

.lr.ph.i.us.us.us.us.us.prol:                     ; preds = %.lr.ph.i.us.us.us.us.us.preheader, %.lr.ph.i.us.us.us.us.us.prol
  %.030.i.us.us.us.us.us.prol = phi i64 [ %i.cx, %.lr.ph.i.us.us.us.us.us.prol ], [ %.030.i.us.us.us.us.us.ph, %.lr.ph.i.us.us.us.us.us.preheader ] ; 4 uses
  %prol.iter326 = phi i64 [ %prol.iter326.next, %.lr.ph.i.us.us.us.us.us.prol ], [ 0, %.lr.ph.i.us.us.us.us.us.preheader ]
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.030.i.us.us.us.us.us.prol
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !27
  %i.cr = mul nsw i64 %.030.i.us.us.us.us.us.prol, %i.p ; 2 uses
  %i.cs = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us.us.us, i64 %i.cr
  store double %i.cq, ptr %i.cs, align 8, !tbaa !27
  %i.ct = sub nuw nsw i64 %.fr, %.030.i.us.us.us.us.us.prol
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ct
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !27
  %i.cw = getelementptr inbounds [8 x i8], ptr %.155.us.us.us.us.us, i64 %i.cr
  store double %i.cv, ptr %i.cw, align 8, !tbaa !27
  %i.cx = add nuw nsw i64 %.030.i.us.us.us.us.us.prol, 1 ; 2 uses
  %prol.iter326.next = add i64 %prol.iter326, 1   ; 2 uses
  %prol.iter326.cmp.not = icmp eq i64 %prol.iter326.next, %xtraiter324
  br i1 %prol.iter326.cmp.not, label %.lr.ph.i.us.us.us.us.us.prol.loopexit, label %.lr.ph.i.us.us.us.us.us.prol, !llvm.loop !57

.lr.ph.i.us.us.us.us.us.prol.loopexit:            ; preds = %.lr.ph.i.us.us.us.us.us.prol, %.lr.ph.i.us.us.us.us.us.preheader
  %.030.i.us.us.us.us.us.unr = phi i64 [ %.030.i.us.us.us.us.us.ph, %.lr.ph.i.us.us.us.us.us.preheader ], [ %i.cx, %.lr.ph.i.us.us.us.us.us.prol ]
  %i.cy = icmp ult i64 %i.co, 3
  br i1 %i.cy, label %._crit_edge.loopexit.i.us.us.us.us.us, label %.lr.ph.i.us.us.us.us.us

.lr.ph.i.us.us.us.us.us:                          ; preds = %.lr.ph.i.us.us.us.us.us.prol.loopexit, %.lr.ph.i.us.us.us.us.us
  %.030.i.us.us.us.us.us = phi i64 [ %i.ei, %.lr.ph.i.us.us.us.us.us ], [ %.030.i.us.us.us.us.us.unr, %.lr.ph.i.us.us.us.us.us.prol.loopexit ] ; 7 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.030.i.us.us.us.us.us
  %i.da = load double, ptr %i.cz, align 8, !tbaa !27
  %i.db = mul nsw i64 %.030.i.us.us.us.us.us, %i.p ; 2 uses
  %i.dc = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us.us.us, i64 %i.db
  store double %i.da, ptr %i.dc, align 8, !tbaa !27
  %i.dd = sub nuw nsw i64 %.fr, %.030.i.us.us.us.us.us
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.dd
  %i.df = load double, ptr %i.de, align 8, !tbaa !27
  %i.dg = getelementptr inbounds [8 x i8], ptr %.155.us.us.us.us.us, i64 %i.db
  store double %i.df, ptr %i.dg, align 8, !tbaa !27
  %i.dh = add nuw nsw i64 %.030.i.us.us.us.us.us, 1 ; 3 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.dh
  %i.dj = load double, ptr %i.di, align 8, !tbaa !27
  %i.dk = mul nsw i64 %i.dh, %i.p                 ; 2 uses
  %i.dl = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us.us.us, i64 %i.dk
  store double %i.dj, ptr %i.dl, align 8, !tbaa !27
  %i.dm = sub nuw nsw i64 %.fr, %i.dh
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.dm
  %i.do = load double, ptr %i.dn, align 8, !tbaa !27
  %i.dp = getelementptr inbounds [8 x i8], ptr %.155.us.us.us.us.us, i64 %i.dk
  store double %i.do, ptr %i.dp, align 8, !tbaa !27
  %i.dq = add nuw nsw i64 %.030.i.us.us.us.us.us, 2 ; 3 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.dq
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !27
  %i.dt = mul nsw i64 %i.dq, %i.p                 ; 2 uses
  %i.du = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us.us.us, i64 %i.dt
  store double %i.ds, ptr %i.du, align 8, !tbaa !27
  %i.dv = sub nuw nsw i64 %.fr, %i.dq
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.dv
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !27
  %i.dy = getelementptr inbounds [8 x i8], ptr %.155.us.us.us.us.us, i64 %i.dt
  store double %i.dx, ptr %i.dy, align 8, !tbaa !27
  %i.dz = add nuw nsw i64 %.030.i.us.us.us.us.us, 3 ; 3 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.dz
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !27
  %i.ec = mul nsw i64 %i.dz, %i.p                 ; 2 uses
  %i.ed = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us.us.us, i64 %i.ec
  store double %i.eb, ptr %i.ed, align 8, !tbaa !27
  %i.ee = sub nuw nsw i64 %.fr, %i.dz
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ee
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !27
  %i.eh = getelementptr inbounds [8 x i8], ptr %.155.us.us.us.us.us, i64 %i.ec
  store double %i.eg, ptr %i.eh, align 8, !tbaa !27
  %i.ei = add nuw nsw i64 %.030.i.us.us.us.us.us, 4 ; 2 uses
  %exitcond.not.i.us.us.us.us.us.3 = icmp eq i64 %i.ei, %i.x
  br i1 %exitcond.not.i.us.us.us.us.us.3, label %._crit_edge.loopexit.i.us.us.us.us.us, label %.lr.ph.i.us.us.us.us.us, !llvm.loop !58

._crit_edge.loopexit.i.us.us.us.us.us:            ; preds = %.lr.ph.i.us.us.us.us.us.prol.loopexit, %.lr.ph.i.us.us.us.us.us, %middle.block286
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.x
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !27
  %i.el = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us.us.us, i64 %i.ac
  store double %i.ek, ptr %i.el, align 8, !tbaa !27
  %i.em = getelementptr inbounds [8 x i8], ptr %.155.us.us.us.us.us, i64 %i.ac
  store double 0.000000e+00, ptr %i.em, align 8, !tbaa !27
  %i.en = add nuw nsw i64 %.056.us.us.us.us.us, 1 ; 2 uses
  %i.eo = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us.us.us, i64 %i.n ; 3 uses
  %i.ep = getelementptr inbounds [8 x i8], ptr %.155.us.us.us.us.us, i64 %i.n ; 3 uses
  %exitcond148.not = icmp eq i64 %i.en, %.fr121
  br i1 %exitcond148.not, label %._crit_edge.split.us.us.us.split.us.us, label %.lr.ph.preheader.i.us.us.us.us.us, !llvm.loop !59

._crit_edge.split.us.us.us.split.us.us:           ; preds = %._crit_edge.loopexit.i.us.us.us.us.us
  %i.eq = getelementptr inbounds [8 x i8], ptr %.05269.us.us.us, i64 %5 ; 2 uses
  %i.er = getelementptr inbounds [8 x i8], ptr %.05170.us.us.us, i64 %5 ; 2 uses
  %i.es = add nuw nsw i64 %.04773.us.us.us, %.fr121 ; 2 uses
  %.not.us.us.us = icmp sgt i64 %i.es, %i.d
  br i1 %.not.us.us.us, label %._crit_edge76, label %.lr.ph.us.us.us, !llvm.loop !60

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %._crit_edge.split.us.us.us.split
  %.04773.us.us = phi i64 [ %i.hp, %._crit_edge.split.us.us.us.split ], [ %.fr121, %.lr.ph.us.us.preheader ]
  %.04872.us.us = phi ptr [ %i.hm, %._crit_edge.split.us.us.us.split ], [ %4, %.lr.ph.us.us.preheader ] ; 3 uses
  %.04971.us.us = phi ptr [ %i.hl, %._crit_edge.split.us.us.us.split ], [ %3, %.lr.ph.us.us.preheader ] ; 3 uses
  %.05170.us.us = phi ptr [ %i.ho, %._crit_edge.split.us.us.us.split ], [ %2, %.lr.ph.us.us.preheader ]
  %.05269.us.us = phi ptr [ %i.hn, %._crit_edge.split.us.us.us.split ], [ %1, %.lr.ph.us.us.preheader ] ; 2 uses
  %i.et = load ptr, ptr %i.t, align 8, !tbaa !26
  tail call void %i.et(ptr noundef %i.b, ptr noundef %.05269.us.us, ptr noundef %i.s) #4
  %scevgep = getelementptr i8, ptr %.04971.us.us, i64 8 ; 3 uses
  %scevgep198 = getelementptr i8, ptr %.04971.us.us, i64 %i.aj ; 3 uses
  %scevgep199 = getelementptr i8, ptr %.04872.us.us, i64 8 ; 3 uses
  %scevgep200 = getelementptr i8, ptr %.04872.us.us, i64 %i.aj ; 3 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep200
  %bound1 = icmp ult ptr %scevgep199, %scevgep198
  %found.conflict = and i1 %bound0, %bound1
  %i.eu = or i1 %found.conflict, %stride.check
  %bound0206 = icmp ult ptr %scevgep, %scevgep241
  %bound1207 = icmp ult ptr %scevgep240, %scevgep198
  %found.conflict208 = and i1 %bound0206, %bound1207
  %i.ev = or i1 %found.conflict208, %i.ay
  %conflict.rdx = or i1 %i.eu, %i.ev
  %bound0211 = icmp ult ptr %scevgep, %scevgep243
  %bound1212 = icmp ult ptr %scevgep242, %scevgep198
  %found.conflict213 = and i1 %bound0211, %bound1212
  %i.ew = or i1 %found.conflict213, %i.ba
  %conflict.rdx216 = or i1 %conflict.rdx, %i.ew
  %bound0217 = icmp ult ptr %scevgep199, %scevgep241
  %bound1218 = icmp ult ptr %scevgep240, %scevgep200
  %found.conflict219 = and i1 %bound0217, %bound1218
  %i.ex = or i1 %found.conflict219, %i.bc
  %conflict.rdx222 = or i1 %conflict.rdx216, %i.ex
  %bound0223 = icmp ult ptr %scevgep199, %scevgep243
  %bound1224 = icmp ult ptr %scevgep242, %scevgep200
  %found.conflict225 = and i1 %bound0223, %bound1224
  %i.ey = or i1 %found.conflict225, %i.be
  %conflict.rdx228 = or i1 %conflict.rdx222, %i.ey
  br label %.lr.ph.preheader.i.us.us.us

.lr.ph.preheader.i.us.us.us:                      ; preds = %._crit_edge.loopexit.i.us.us.us, %.lr.ph.us.us
  %.056.us.us.us = phi i64 [ 0, %.lr.ph.us.us ], [ %i.hk, %._crit_edge.loopexit.i.us.us.us ] ; 2 uses
  %.155.us.us.us = phi ptr [ %.04872.us.us, %.lr.ph.us.us ], [ %i.hm, %._crit_edge.loopexit.i.us.us.us ] ; 8 uses
  %.15054.us.us.us = phi ptr [ %.04971.us.us, %.lr.ph.us.us ], [ %i.hl, %._crit_edge.loopexit.i.us.us.us ] ; 8 uses
  %i.ez = mul nsw i64 %.056.us.us.us, %i.h
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ez ; 13 uses
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !27
  store double %i.fb, ptr %.15054.us.us.us, align 8, !tbaa !27
  store double 0.000000e+00, ptr %.155.us.us.us, align 8, !tbaa !27
  %or.cond289.not = xor i1 %or.cond289, true
  %brmerge352 = select i1 %or.cond289.not, i1 true, i1 %conflict.rdx228
  br i1 %brmerge352, label %.lr.ph.i.us.us.us.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.preheader.i.us.us.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.preheader.i.us.us.us ] ; 2 uses
  %i.fc = or disjoint i64 %index, 1               ; 4 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fc ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %wide.load = load <2 x double>, ptr %i.fd, align 8, !tbaa !27, !alias.scope !79
  %wide.load229 = load <2 x double>, ptr %i.fe, align 8, !tbaa !27, !alias.scope !79
  %i.ff = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us, i64 %i.fc ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  store <2 x double> %wide.load, ptr %i.ff, align 8, !tbaa !27, !alias.scope !80, !noalias !81
  store <2 x double> %wide.load229, ptr %i.fg, align 8, !tbaa !27, !alias.scope !80, !noalias !81
  %i.fh = sub nuw nsw i64 %.fr, %i.fc
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fh ; 2 uses
  %i.fj = getelementptr inbounds i8, ptr %i.fi, i64 -8
  %i.fk = getelementptr inbounds i8, ptr %i.fi, i64 -24
  %wide.load230 = load <2 x double>, ptr %i.fj, align 8, !tbaa !27, !alias.scope !82
  %wide.load231 = load <2 x double>, ptr %i.fk, align 8, !tbaa !27, !alias.scope !82
  %reverse = shufflevector <2 x double> %wide.load230, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse232 = shufflevector <2 x double> %wide.load231, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fl = getelementptr inbounds [8 x i8], ptr %.155.us.us.us, i64 %i.fc ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  store <2 x double> %reverse, ptr %i.fl, align 8, !tbaa !27, !alias.scope !83, !noalias !84
  store <2 x double> %reverse232, ptr %i.fm, align 8, !tbaa !27, !alias.scope !83, !noalias !84
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fn = icmp eq i64 %index.next, %n.vec
  br i1 %i.fn, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.loopexit.i.us.us.us, label %.lr.ph.i.us.us.us.preheader

.lr.ph.i.us.us.us.preheader:                      ; preds = %.lr.ph.preheader.i.us.us.us, %middle.block
  %.030.i.us.us.us.ph = phi i64 [ %i.bf, %middle.block ], [ 1, %.lr.ph.preheader.i.us.us.us ] ; 4 uses
  %i.fo = sub i64 %i.au, %.030.i.us.us.us.ph
  %i.fp = sub i64 %i.av, %.030.i.us.us.us.ph
  %xtraiter322 = and i64 %i.fo, 3                 ; 2 uses
  %lcmp.mod323.not = icmp eq i64 %xtraiter322, 0
  br i1 %lcmp.mod323.not, label %.lr.ph.i.us.us.us.prol.loopexit, label %.lr.ph.i.us.us.us.prol

.lr.ph.i.us.us.us.prol:                           ; preds = %.lr.ph.i.us.us.us.preheader, %.lr.ph.i.us.us.us.prol
  %.030.i.us.us.us.prol = phi i64 [ %i.fy, %.lr.ph.i.us.us.us.prol ], [ %.030.i.us.us.us.ph, %.lr.ph.i.us.us.us.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.us.us.us.prol ], [ 0, %.lr.ph.i.us.us.us.preheader ]
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %.030.i.us.us.us.prol
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !27
  %i.fs = mul nsw i64 %.030.i.us.us.us.prol, %i.p ; 2 uses
  %i.ft = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us, i64 %i.fs
  store double %i.fr, ptr %i.ft, align 8, !tbaa !27
  %i.fu = sub nuw nsw i64 %.fr, %.030.i.us.us.us.prol
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fu
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !27
  %i.fx = getelementptr inbounds [8 x i8], ptr %.155.us.us.us, i64 %i.fs
  store double %i.fw, ptr %i.fx, align 8, !tbaa !27
  %i.fy = add nuw nsw i64 %.030.i.us.us.us.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter322
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.us.us.us.prol.loopexit, label %.lr.ph.i.us.us.us.prol, !llvm.loop !67

.lr.ph.i.us.us.us.prol.loopexit:                  ; preds = %.lr.ph.i.us.us.us.prol, %.lr.ph.i.us.us.us.preheader
  %.030.i.us.us.us.unr = phi i64 [ %.030.i.us.us.us.ph, %.lr.ph.i.us.us.us.preheader ], [ %i.fy, %.lr.ph.i.us.us.us.prol ]
  %i.fz = icmp ult i64 %i.fp, 3
  br i1 %i.fz, label %._crit_edge.loopexit.i.us.us.us, label %.lr.ph.i.us.us.us

.lr.ph.i.us.us.us:                                ; preds = %.lr.ph.i.us.us.us.prol.loopexit, %.lr.ph.i.us.us.us
  %.030.i.us.us.us = phi i64 [ %i.hj, %.lr.ph.i.us.us.us ], [ %.030.i.us.us.us.unr, %.lr.ph.i.us.us.us.prol.loopexit ] ; 7 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %.030.i.us.us.us
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !27
  %i.gc = mul nsw i64 %.030.i.us.us.us, %i.p      ; 2 uses
  %i.gd = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us, i64 %i.gc
  store double %i.gb, ptr %i.gd, align 8, !tbaa !27
  %i.ge = sub nuw nsw i64 %.fr, %.030.i.us.us.us
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.ge
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !27
  %i.gh = getelementptr inbounds [8 x i8], ptr %.155.us.us.us, i64 %i.gc
  store double %i.gg, ptr %i.gh, align 8, !tbaa !27
  %i.gi = add nuw nsw i64 %.030.i.us.us.us, 1     ; 3 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.gi
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !27
  %i.gl = mul nsw i64 %i.gi, %i.p                 ; 2 uses
  %i.gm = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us, i64 %i.gl
  store double %i.gk, ptr %i.gm, align 8, !tbaa !27
  %i.gn = sub nuw nsw i64 %.fr, %i.gi
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.gn
  %i.gp = load double, ptr %i.go, align 8, !tbaa !27
  %i.gq = getelementptr inbounds [8 x i8], ptr %.155.us.us.us, i64 %i.gl
  store double %i.gp, ptr %i.gq, align 8, !tbaa !27
  %i.gr = add nuw nsw i64 %.030.i.us.us.us, 2     ; 3 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.gr
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !27
  %i.gu = mul nsw i64 %i.gr, %i.p                 ; 2 uses
  %i.gv = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us, i64 %i.gu
  store double %i.gt, ptr %i.gv, align 8, !tbaa !27
  %i.gw = sub nuw nsw i64 %.fr, %i.gr
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.gw
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !27
  %i.gz = getelementptr inbounds [8 x i8], ptr %.155.us.us.us, i64 %i.gu
  store double %i.gy, ptr %i.gz, align 8, !tbaa !27
  %i.ha = add nuw nsw i64 %.030.i.us.us.us, 3     ; 3 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.ha
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !27
  %i.hd = mul nsw i64 %i.ha, %i.p                 ; 2 uses
  %i.he = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us, i64 %i.hd
  store double %i.hc, ptr %i.he, align 8, !tbaa !27
  %i.hf = sub nuw nsw i64 %.fr, %i.ha
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.hf
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !27
  %i.hi = getelementptr inbounds [8 x i8], ptr %.155.us.us.us, i64 %i.hd
  store double %i.hh, ptr %i.hi, align 8, !tbaa !27
  %i.hj = add nuw nsw i64 %.030.i.us.us.us, 4     ; 2 uses
  %exitcond.not.i.us.us.us.3 = icmp eq i64 %i.hj, %i.x
  br i1 %exitcond.not.i.us.us.us.3, label %._crit_edge.loopexit.i.us.us.us, label %.lr.ph.i.us.us.us, !llvm.loop !68

._crit_edge.loopexit.i.us.us.us:                  ; preds = %.lr.ph.i.us.us.us.prol.loopexit, %.lr.ph.i.us.us.us, %middle.block
  %i.hk = add nuw nsw i64 %.056.us.us.us, 1       ; 2 uses
  %i.hl = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us, i64 %i.n ; 3 uses
  %i.hm = getelementptr inbounds [8 x i8], ptr %.155.us.us.us, i64 %i.n ; 3 uses
  %exitcond147.not = icmp eq i64 %i.hk, %.fr121
  br i1 %exitcond147.not, label %._crit_edge.split.us.us.us.split, label %.lr.ph.preheader.i.us.us.us, !llvm.loop !59

._crit_edge.split.us.us.us.split:                 ; preds = %._crit_edge.loopexit.i.us.us.us
  %i.hn = getelementptr inbounds [8 x i8], ptr %.05269.us.us, i64 %5 ; 2 uses
  %i.ho = getelementptr inbounds [8 x i8], ptr %.05170.us.us, i64 %5 ; 2 uses
  %i.hp = add nuw nsw i64 %.04773.us.us, %.fr121  ; 2 uses
  %.not.us.us = icmp sgt i64 %i.hp, %i.d
  br i1 %.not.us.us, label %._crit_edge76, label %.lr.ph.us.us, !llvm.loop !60

.lr.ph75.split.us.split:                          ; preds = %.lr.ph75.split.us
  br i1 %i.aa, label %.lr.ph.us.us98.preheader, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph75.split.us.split
  %6 = add nsw i64 %.fr121, -1
  %xtraiter = and i64 %.fr121, 7                  ; 3 uses
  %i.hq = icmp ult i64 %6, 7
  %unroll_iter = and i64 %.fr121, 9223372036854775800
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod313 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us.us98.preheader:                         ; preds = %.lr.ph75.split.us.split
  %7 = add nsw i64 %.fr121, -1
  %xtraiter314 = and i64 %.fr121, 3               ; 3 uses
  %i.hr = icmp ult i64 %7, 3
  %unroll_iter320 = and i64 %.fr121, 9223372036854775804
  %lcmp.mod316.not = icmp eq i64 %xtraiter314, 0
  %lcmp.mod319 = icmp ne i64 %xtraiter314, 0
  br label %.lr.ph.us.us98

.lr.ph.us.us98:                                   ; preds = %.lr.ph.us.us98.preheader, %._crit_edge.split.split.us.us.us
  %.04773.us.us99 = phi i64 [ %i.jt, %._crit_edge.split.split.us.us.us ], [ %.fr121, %.lr.ph.us.us98.preheader ]
  %.04872.us.us100 = phi ptr [ %.lcssa299, %._crit_edge.split.split.us.us.us ], [ %4, %.lr.ph.us.us98.preheader ] ; 2 uses
  %.04971.us.us101 = phi ptr [ %.lcssa300, %._crit_edge.split.split.us.us.us ], [ %3, %.lr.ph.us.us98.preheader ] ; 2 uses
  %.05170.us.us102 = phi ptr [ %i.js, %._crit_edge.split.split.us.us.us ], [ %2, %.lr.ph.us.us98.preheader ]
  %.05269.us.us103 = phi ptr [ %i.jr, %._crit_edge.split.split.us.us.us ], [ %1, %.lr.ph.us.us98.preheader ] ; 2 uses
  %i.hs = load ptr, ptr %i.t, align 8, !tbaa !26
  tail call void %i.hs(ptr noundef %i.b, ptr noundef %.05269.us.us103, ptr noundef %i.s) #4
  br i1 %i.hr, label %._crit_edge.i.us59.us.us.epil.preheader, label %._crit_edge.i.us59.us.us

._crit_edge.i.us59.us.us:                         ; preds = %.lr.ph.us.us98, %._crit_edge.i.us59.us.us
  %.056.us60.us.us = phi i64 [ %i.je, %._crit_edge.i.us59.us.us ], [ 0, %.lr.ph.us.us98 ] ; 5 uses
  %.155.us61.us.us = phi ptr [ %i.jg, %._crit_edge.i.us59.us.us ], [ %.04872.us.us100, %.lr.ph.us.us98 ] ; 3 uses
  %.15054.us62.us.us = phi ptr [ %i.jf, %._crit_edge.i.us59.us.us ], [ %.04971.us.us101, %.lr.ph.us.us98 ] ; 3 uses
  %niter321 = phi i64 [ %niter321.next.3, %._crit_edge.i.us59.us.us ], [ 0, %.lr.ph.us.us98 ]
  %i.ht = mul nsw i64 %.056.us60.us.us, %i.h
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ht ; 2 uses
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !27
  store double %i.hv, ptr %.15054.us62.us.us, align 8, !tbaa !27
  store double 0.000000e+00, ptr %.155.us61.us.us, align 8, !tbaa !27
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !27
  %i.hy = getelementptr inbounds [8 x i8], ptr %.15054.us62.us.us, i64 %i.p
  store double %i.hx, ptr %i.hy, align 8, !tbaa !27
  %i.hz = getelementptr inbounds [8 x i8], ptr %.155.us61.us.us, i64 %i.p
  store double 0.000000e+00, ptr %i.hz, align 8, !tbaa !27
  %i.ia = or disjoint i64 %.056.us60.us.us, 1
  %i.ib = getelementptr inbounds [8 x i8], ptr %.15054.us62.us.us, i64 %i.n ; 3 uses
  %i.ic = getelementptr inbounds [8 x i8], ptr %.155.us61.us.us, i64 %i.n ; 3 uses
  %i.id = mul nsw i64 %i.ia, %i.h
  %i.ie = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.id ; 2 uses
  %i.if = load double, ptr %i.ie, align 8, !tbaa !27
  store double %i.if, ptr %i.ib, align 8, !tbaa !27
  store double 0.000000e+00, ptr %i.ic, align 8, !tbaa !27
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !27
  %i.ii = getelementptr inbounds [8 x i8], ptr %i.ib, i64 %i.p
  store double %i.ih, ptr %i.ii, align 8, !tbaa !27
  %i.ij = getelementptr inbounds [8 x i8], ptr %i.ic, i64 %i.p
  store double 0.000000e+00, ptr %i.ij, align 8, !tbaa !27
  %i.ik = or disjoint i64 %.056.us60.us.us, 2
  %i.il = getelementptr inbounds [8 x i8], ptr %i.ib, i64 %i.n ; 3 uses
  %i.im = getelementptr inbounds [8 x i8], ptr %i.ic, i64 %i.n ; 3 uses
  %i.in = mul nsw i64 %i.ik, %i.h
  %i.io = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.in ; 2 uses
  %i.ip = load double, ptr %i.io, align 8, !tbaa !27
  store double %i.ip, ptr %i.il, align 8, !tbaa !27
  store double 0.000000e+00, ptr %i.im, align 8, !tbaa !27
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !27
  %i.is = getelementptr inbounds [8 x i8], ptr %i.il, i64 %i.p
  store double %i.ir, ptr %i.is, align 8, !tbaa !27
  %i.it = getelementptr inbounds [8 x i8], ptr %i.im, i64 %i.p
  store double 0.000000e+00, ptr %i.it, align 8, !tbaa !27
  %i.iu = or disjoint i64 %.056.us60.us.us, 3
  %i.iv = getelementptr inbounds [8 x i8], ptr %i.il, i64 %i.n ; 3 uses
  %i.iw = getelementptr inbounds [8 x i8], ptr %i.im, i64 %i.n ; 3 uses
  %i.ix = mul nsw i64 %i.iu, %i.h
  %i.iy = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ix ; 2 uses
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !27
  store double %i.iz, ptr %i.iv, align 8, !tbaa !27
  store double 0.000000e+00, ptr %i.iw, align 8, !tbaa !27
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !27
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.iv, i64 %i.p
  store double %i.jb, ptr %i.jc, align 8, !tbaa !27
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.iw, i64 %i.p
  store double 0.000000e+00, ptr %i.jd, align 8, !tbaa !27
  %i.je = add nuw nsw i64 %.056.us60.us.us, 4     ; 2 uses
  %i.jf = getelementptr inbounds [8 x i8], ptr %i.iv, i64 %i.n ; 3 uses
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.iw, i64 %i.n ; 3 uses
  %niter321.next.3 = add nuw nsw i64 %niter321, 4 ; 2 uses
  %niter321.ncmp.3 = icmp eq i64 %niter321.next.3, %unroll_iter320
  br i1 %niter321.ncmp.3, label %._crit_edge.split.split.us.us.us.unr-lcssa, label %._crit_edge.i.us59.us.us, !llvm.loop !59

._crit_edge.split.split.us.us.us.unr-lcssa:       ; preds = %._crit_edge.i.us59.us.us
  br i1 %lcmp.mod316.not, label %._crit_edge.split.split.us.us.us, label %._crit_edge.i.us59.us.us.epil.preheader

._crit_edge.i.us59.us.us.epil.preheader:          ; preds = %._crit_edge.split.split.us.us.us.unr-lcssa, %.lr.ph.us.us98
  %.056.us60.us.us.epil.init = phi i64 [ 0, %.lr.ph.us.us98 ], [ %i.je, %._crit_edge.split.split.us.us.us.unr-lcssa ]
  %.155.us61.us.us.epil.init = phi ptr [ %.04872.us.us100, %.lr.ph.us.us98 ], [ %i.jg, %._crit_edge.split.split.us.us.us.unr-lcssa ]
  %.15054.us62.us.us.epil.init = phi ptr [ %.04971.us.us101, %.lr.ph.us.us98 ], [ %i.jf, %._crit_edge.split.split.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod319)
  br label %._crit_edge.i.us59.us.us.epil

._crit_edge.i.us59.us.us.epil:                    ; preds = %._crit_edge.i.us59.us.us.epil, %._crit_edge.i.us59.us.us.epil.preheader
  %.056.us60.us.us.epil = phi i64 [ %.056.us60.us.us.epil.init, %._crit_edge.i.us59.us.us.epil.preheader ], [ %i.jo, %._crit_edge.i.us59.us.us.epil ] ; 2 uses
  %.155.us61.us.us.epil = phi ptr [ %.155.us61.us.us.epil.init, %._crit_edge.i.us59.us.us.epil.preheader ], [ %i.jq, %._crit_edge.i.us59.us.us.epil ] ; 3 uses
  %.15054.us62.us.us.epil = phi ptr [ %.15054.us62.us.us.epil.init, %._crit_edge.i.us59.us.us.epil.preheader ], [ %i.jp, %._crit_edge.i.us59.us.us.epil ] ; 3 uses
  %epil.iter315 = phi i64 [ 0, %._crit_edge.i.us59.us.us.epil.preheader ], [ %epil.iter315.next, %._crit_edge.i.us59.us.us.epil ]
  %i.jh = mul nsw i64 %.056.us60.us.us.epil, %i.h
  %i.ji = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.jh ; 2 uses
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !27
  store double %i.jj, ptr %.15054.us62.us.us.epil, align 8, !tbaa !27
  store double 0.000000e+00, ptr %.155.us61.us.us.epil, align 8, !tbaa !27
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !27
  %i.jm = getelementptr inbounds [8 x i8], ptr %.15054.us62.us.us.epil, i64 %i.p
  store double %i.jl, ptr %i.jm, align 8, !tbaa !27
  %i.jn = getelementptr inbounds [8 x i8], ptr %.155.us61.us.us.epil, i64 %i.p
  store double 0.000000e+00, ptr %i.jn, align 8, !tbaa !27
  %i.jo = add nuw nsw i64 %.056.us60.us.us.epil, 1
  %i.jp = getelementptr inbounds [8 x i8], ptr %.15054.us62.us.us.epil, i64 %i.n ; 2 uses
  %i.jq = getelementptr inbounds [8 x i8], ptr %.155.us61.us.us.epil, i64 %i.n ; 2 uses
  %epil.iter315.next = add i64 %epil.iter315, 1   ; 2 uses
  %epil.iter315.cmp.not = icmp eq i64 %epil.iter315.next, %xtraiter314
  br i1 %epil.iter315.cmp.not, label %._crit_edge.split.split.us.us.us, label %._crit_edge.i.us59.us.us.epil, !llvm.loop !69

._crit_edge.split.split.us.us.us:                 ; preds = %._crit_edge.i.us59.us.us.epil, %._crit_edge.split.split.us.us.us.unr-lcssa
  %.lcssa300 = phi ptr [ %i.jf, %._crit_edge.split.split.us.us.us.unr-lcssa ], [ %i.jp, %._crit_edge.i.us59.us.us.epil ] ; 2 uses
  %.lcssa299 = phi ptr [ %i.jg, %._crit_edge.split.split.us.us.us.unr-lcssa ], [ %i.jq, %._crit_edge.i.us59.us.us.epil ] ; 2 uses
  %i.jr = getelementptr inbounds [8 x i8], ptr %.05269.us.us103, i64 %5 ; 2 uses
  %i.js = getelementptr inbounds [8 x i8], ptr %.05170.us.us102, i64 %5 ; 2 uses
  %i.jt = add nuw nsw i64 %.04773.us.us99, %.fr121 ; 2 uses
  %.not.us.us104 = icmp sgt i64 %i.jt, %i.d
  br i1 %.not.us.us104, label %._crit_edge76, label %.lr.ph.us.us98, !llvm.loop !60

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.split.split.us86
  %.04773.us = phi i64 [ %i.lz, %._crit_edge.split.split.us86 ], [ %.fr121, %.lr.ph.us.preheader ]
  %.04872.us = phi ptr [ %.lcssa304, %._crit_edge.split.split.us86 ], [ %4, %.lr.ph.us.preheader ] ; 2 uses
  %.04971.us = phi ptr [ %.lcssa305, %._crit_edge.split.split.us86 ], [ %3, %.lr.ph.us.preheader ] ; 2 uses
  %.05170.us = phi ptr [ %i.ly, %._crit_edge.split.split.us86 ], [ %2, %.lr.ph.us.preheader ]
  %.05269.us = phi ptr [ %i.lx, %._crit_edge.split.split.us86 ], [ %1, %.lr.ph.us.preheader ] ; 2 uses
  %i.ju = load ptr, ptr %i.t, align 8, !tbaa !26
  tail call void %i.ju(ptr noundef %i.b, ptr noundef %.05269.us, ptr noundef %i.s) #4
  br i1 %i.hq, label %._crit_edge.i.us.epil.preheader, label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %.lr.ph.us, %._crit_edge.i.us
  %.056.us83 = phi i64 [ %i.lo, %._crit_edge.i.us ], [ 0, %.lr.ph.us ] ; 9 uses
  %.155.us84 = phi ptr [ %i.lq, %._crit_edge.i.us ], [ %.04872.us, %.lr.ph.us ] ; 2 uses
  %.15054.us85 = phi ptr [ %i.lp, %._crit_edge.i.us ], [ %.04971.us, %.lr.ph.us ] ; 2 uses
  %niter = phi i64 [ %niter.next.7, %._crit_edge.i.us ], [ 0, %.lr.ph.us ]
  %i.jv = mul nsw i64 %.056.us83, %i.h
  %i.jw = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.jv
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !27
  store double %i.jx, ptr %.15054.us85, align 8, !tbaa !27
  store double 0.000000e+00, ptr %.155.us84, align 8, !tbaa !27
  %i.jy = or disjoint i64 %.056.us83, 1
  %i.jz = getelementptr inbounds [8 x i8], ptr %.15054.us85, i64 %i.n ; 2 uses
  %i.ka = getelementptr inbounds [8 x i8], ptr %.155.us84, i64 %i.n ; 2 uses
  %i.kb = mul nsw i64 %i.jy, %i.h
  %i.kc = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.kb
  %i.kd = load double, ptr %i.kc, align 8, !tbaa !27
  store double %i.kd, ptr %i.jz, align 8, !tbaa !27
  store double 0.000000e+00, ptr %i.ka, align 8, !tbaa !27
  %i.ke = or disjoint i64 %.056.us83, 2
  %i.kf = getelementptr inbounds [8 x i8], ptr %i.jz, i64 %i.n ; 2 uses
  %i.kg = getelementptr inbounds [8 x i8], ptr %i.ka, i64 %i.n ; 2 uses
  %i.kh = mul nsw i64 %i.ke, %i.h
  %i.ki = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.kh
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !27
  store double %i.kj, ptr %i.kf, align 8, !tbaa !27
  store double 0.000000e+00, ptr %i.kg, align 8, !tbaa !27
  %i.kk = or disjoint i64 %.056.us83, 3
  %i.kl = getelementptr inbounds [8 x i8], ptr %i.kf, i64 %i.n ; 2 uses
  %i.km = getelementptr inbounds [8 x i8], ptr %i.kg, i64 %i.n ; 2 uses
  %i.kn = mul nsw i64 %i.kk, %i.h
  %i.ko = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.kn
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !27
  store double %i.kp, ptr %i.kl, align 8, !tbaa !27
  store double 0.000000e+00, ptr %i.km, align 8, !tbaa !27
  %i.kq = or disjoint i64 %.056.us83, 4
  %i.kr = getelementptr inbounds [8 x i8], ptr %i.kl, i64 %i.n ; 2 uses
  %i.ks = getelementptr inbounds [8 x i8], ptr %i.km, i64 %i.n ; 2 uses
  %i.kt = mul nsw i64 %i.kq, %i.h
  %i.ku = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.kt
  %i.kv = load double, ptr %i.ku, align 8, !tbaa !27
  store double %i.kv, ptr %i.kr, align 8, !tbaa !27
  store double 0.000000e+00, ptr %i.ks, align 8, !tbaa !27
  %i.kw = or disjoint i64 %.056.us83, 5
  %i.kx = getelementptr inbounds [8 x i8], ptr %i.kr, i64 %i.n ; 2 uses
  %i.ky = getelementptr inbounds [8 x i8], ptr %i.ks, i64 %i.n ; 2 uses
  %i.kz = mul nsw i64 %i.kw, %i.h
  %i.la = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.kz
  %i.lb = load double, ptr %i.la, align 8, !tbaa !27
  store double %i.lb, ptr %i.kx, align 8, !tbaa !27
  store double 0.000000e+00, ptr %i.ky, align 8, !tbaa !27
  %i.lc = or disjoint i64 %.056.us83, 6
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.kx, i64 %i.n ; 2 uses
  %i.le = getelementptr inbounds [8 x i8], ptr %i.ky, i64 %i.n ; 2 uses
  %i.lf = mul nsw i64 %i.lc, %i.h
  %i.lg = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.lf
  %i.lh = load double, ptr %i.lg, align 8, !tbaa !27
  store double %i.lh, ptr %i.ld, align 8, !tbaa !27
  store double 0.000000e+00, ptr %i.le, align 8, !tbaa !27
  %i.li = or disjoint i64 %.056.us83, 7
  %i.lj = getelementptr inbounds [8 x i8], ptr %i.ld, i64 %i.n ; 2 uses
  %i.lk = getelementptr inbounds [8 x i8], ptr %i.le, i64 %i.n ; 2 uses
  %i.ll = mul nsw i64 %i.li, %i.h
  %i.lm = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ll
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !27
  store double %i.ln, ptr %i.lj, align 8, !tbaa !27
  store double 0.000000e+00, ptr %i.lk, align 8, !tbaa !27
  %i.lo = add nuw nsw i64 %.056.us83, 8           ; 2 uses
  %i.lp = getelementptr inbounds [8 x i8], ptr %i.lj, i64 %i.n ; 3 uses
  %i.lq = getelementptr inbounds [8 x i8], ptr %i.lk, i64 %i.n ; 3 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.split.split.us86.unr-lcssa, label %._crit_edge.i.us, !llvm.loop !59

._crit_edge.split.split.us86.unr-lcssa:           ; preds = %._crit_edge.i.us
  br i1 %lcmp.mod.not, label %._crit_edge.split.split.us86, label %._crit_edge.i.us.epil.preheader

._crit_edge.i.us.epil.preheader:                  ; preds = %._crit_edge.split.split.us86.unr-lcssa, %.lr.ph.us
  %.056.us83.epil.init = phi i64 [ 0, %.lr.ph.us ], [ %i.lo, %._crit_edge.split.split.us86.unr-lcssa ]
  %.155.us84.epil.init = phi ptr [ %.04872.us, %.lr.ph.us ], [ %i.lq, %._crit_edge.split.split.us86.unr-lcssa ]
  %.15054.us85.epil.init = phi ptr [ %.04971.us, %.lr.ph.us ], [ %i.lp, %._crit_edge.split.split.us86.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod313)
  br label %._crit_edge.i.us.epil

._crit_edge.i.us.epil:                            ; preds = %._crit_edge.i.us.epil, %._crit_edge.i.us.epil.preheader
  %.056.us83.epil = phi i64 [ %.056.us83.epil.init, %._crit_edge.i.us.epil.preheader ], [ %i.lu, %._crit_edge.i.us.epil ] ; 2 uses
  %.155.us84.epil = phi ptr [ %.155.us84.epil.init, %._crit_edge.i.us.epil.preheader ], [ %i.lw, %._crit_edge.i.us.epil ] ; 2 uses
  %.15054.us85.epil = phi ptr [ %.15054.us85.epil.init, %._crit_edge.i.us.epil.preheader ], [ %i.lv, %._crit_edge.i.us.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %._crit_edge.i.us.epil.preheader ], [ %epil.iter.next, %._crit_edge.i.us.epil ]
  %i.lr = mul nsw i64 %.056.us83.epil, %i.h
  %i.ls = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.lr
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !27
  store double %i.lt, ptr %.15054.us85.epil, align 8, !tbaa !27
  store double 0.000000e+00, ptr %.155.us84.epil, align 8, !tbaa !27
  %i.lu = add nuw nsw i64 %.056.us83.epil, 1
  %i.lv = getelementptr inbounds [8 x i8], ptr %.15054.us85.epil, i64 %i.n ; 2 uses
  %i.lw = getelementptr inbounds [8 x i8], ptr %.155.us84.epil, i64 %i.n ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.split.split.us86, label %._crit_edge.i.us.epil, !llvm.loop !70

._crit_edge.split.split.us86:                     ; preds = %._crit_edge.i.us.epil, %._crit_edge.split.split.us86.unr-lcssa
  %.lcssa305 = phi ptr [ %i.lp, %._crit_edge.split.split.us86.unr-lcssa ], [ %i.lv, %._crit_edge.i.us.epil ] ; 2 uses
  %.lcssa304 = phi ptr [ %i.lq, %._crit_edge.split.split.us86.unr-lcssa ], [ %i.lw, %._crit_edge.i.us.epil ] ; 2 uses
  %i.lx = getelementptr inbounds [8 x i8], ptr %.05269.us, i64 %5 ; 2 uses
  %i.ly = getelementptr inbounds [8 x i8], ptr %.05170.us, i64 %5 ; 2 uses
  %i.lz = add nuw nsw i64 %.04773.us, %.fr121     ; 2 uses
  %.not.us = icmp sgt i64 %i.lz, %i.d
  br i1 %.not.us, label %._crit_edge76, label %.lr.ph.us, !llvm.loop !60

.lr.ph75.split:                                   ; preds = %.lr.ph75, %.lr.ph75.split
  %.04773 = phi i64 [ %i.md, %.lr.ph75.split ], [ %.fr121, %.lr.ph75 ]
  %.05170 = phi ptr [ %i.mc, %.lr.ph75.split ], [ %2, %.lr.ph75 ]
  %.05269 = phi ptr [ %i.mb, %.lr.ph75.split ], [ %1, %.lr.ph75 ] ; 2 uses
  %i.ma = load ptr, ptr %i.t, align 8, !tbaa !26
  tail call void %i.ma(ptr noundef %i.b, ptr noundef %.05269, ptr noundef %i.s) #4
  %i.mb = getelementptr inbounds [8 x i8], ptr %.05269, i64 %5 ; 2 uses
  %i.mc = getelementptr inbounds [8 x i8], ptr %.05170, i64 %5 ; 2 uses
  %i.md = add nsw i64 %.04773, %.fr121            ; 2 uses
  %.not = icmp sgt i64 %i.md, %i.d
  br i1 %.not, label %._crit_edge76, label %.lr.ph75.split, !llvm.loop !60

._crit_edge76:                                    ; preds = %.lr.ph75.split, %._crit_edge.split.split.us86, %._crit_edge.split.split.us.us.us, %._crit_edge.split.us.us.us.split, %._crit_edge.split.us.us.us.split.us.us, %bb.a
  %.052.lcssa = phi ptr [ %1, %bb.a ], [ %i.lx, %._crit_edge.split.split.us86 ], [ %i.hn, %._crit_edge.split.us.us.us.split ], [ %i.eq, %._crit_edge.split.us.us.us.split.us.us ], [ %i.jr, %._crit_edge.split.split.us.us.us ], [ %i.mb, %.lr.ph75.split ]
  %.051.lcssa = phi ptr [ %2, %bb.a ], [ %i.ly, %._crit_edge.split.split.us86 ], [ %i.ho, %._crit_edge.split.us.us.us.split ], [ %i.er, %._crit_edge.split.us.us.us.split.us.us ], [ %i.js, %._crit_edge.split.split.us.us.us ], [ %i.mc, %.lr.ph75.split ]
  %.049.lcssa = phi ptr [ %3, %bb.a ], [ %.lcssa305, %._crit_edge.split.split.us86 ], [ %i.hl, %._crit_edge.split.us.us.us.split ], [ %i.eo, %._crit_edge.split.us.us.us.split.us.us ], [ %.lcssa300, %._crit_edge.split.split.us.us.us ], [ %3, %.lr.ph75.split ]
  %.048.lcssa = phi ptr [ %4, %bb.a ], [ %.lcssa304, %._crit_edge.split.split.us86 ], [ %i.hm, %._crit_edge.split.us.us.us.split ], [ %i.ep, %._crit_edge.split.us.us.us.split.us.us ], [ %.lcssa299, %._crit_edge.split.split.us.us.us ], [ %4, %.lr.ph75.split ]
  tail call void @fftw_ifree(ptr noundef %i.s) #4
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !18 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 56
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !26
  tail call void %i.mh(ptr noundef %i.mf, ptr noundef %.052.lcssa, ptr noundef %.051.lcssa, ptr noundef %.049.lcssa, ptr noundef %.048.lcssa) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @apply_hc2r(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load i64, ptr %i.e, align 8, !tbaa !23   ; 22 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load i64, ptr %i.g, align 8, !tbaa !24   ; 17 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load i64, ptr %i.i, align 8, !tbaa !19   ; 14 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.l = load i64, ptr %i.k, align 8, !tbaa !21   ; 32 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.n = load i64, ptr %i.m, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.p = load i64, ptr %i.o, align 8, !tbaa !25   ; 16 uses
  %i.q = shl i64 %i.f, 3
  %i.r = mul i64 %i.q, %i.h
  %i.s = tail call ptr @fftw_malloc_plain(i64 noundef %i.r) #4 ; 22 uses
  %.not68 = icmp sgt i64 %i.f, %i.d
  br i1 %.not68, label %._crit_edge74, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.t = icmp sgt i64 %i.f, 0
  %i.u = add i64 %i.j, -3                         ; 4 uses
  %i.v = lshr i64 %i.u, 1                         ; 3 uses
  %i.w = add nuw nsw i64 %i.v, 2                  ; 2 uses
  %i.x = and i64 %i.u, -2
  %i.y = add nuw i64 %i.x, 4
  %i.z = icmp eq i64 %i.j, 2
  %i.aa = icmp eq i64 %i.y, %i.j
  %i.ab = mul nsw i64 %i.w, %i.p
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 5 uses
  %i.ad = mul nsw i64 %i.n, %i.f                  ; 10 uses
  br i1 %i.t, label %.preheader.lr.ph.split.us, label %.preheader

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.ae = icmp sgt i64 %i.j, 2
  br i1 %i.ae, label %.preheader.lr.ph.split.us.split.us, label %.preheader.lr.ph.split.us.split

.preheader.lr.ph.split.us.split.us:               ; preds = %.preheader.lr.ph.split.us
  br i1 %i.aa, label %.preheader.us.us.us.preheader, label %.preheader.us.us.preheader

.preheader.us.us.preheader:                       ; preds = %.preheader.lr.ph.split.us.split.us
  %i.af = add nuw i64 %i.v, 1                     ; 2 uses
  %xtraiter223 = and i64 %i.af, 3                 ; 3 uses
  %i.ag = icmp ult i64 %i.u, 6
  %unroll_iter227 = and i64 %i.af, -4
  %lcmp.mod225.not = icmp eq i64 %xtraiter223, 0
  %lcmp.mod226 = icmp ne i64 %xtraiter223, 0
  br label %.preheader.us.us

.preheader.us.us.us.preheader:                    ; preds = %.preheader.lr.ph.split.us.split.us
  %i.ah = add nuw i64 %i.v, 1                     ; 2 uses
  %xtraiter229 = and i64 %i.ah, 3                 ; 3 uses
  %i.ai = icmp ult i64 %i.u, 6
  %unroll_iter233 = and i64 %i.ah, -4
  %lcmp.mod231.not = icmp eq i64 %xtraiter229, 0
  %lcmp.mod232 = icmp ne i64 %xtraiter229, 0
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %.preheader.us.us.us.preheader, %._crit_edge.split.us.us.us.split.us.us
  %.04773.us.us.us = phi i64 [ %i.co, %._crit_edge.split.us.us.us.split.us.us ], [ %i.f, %.preheader.us.us.us.preheader ]
  %.04872.us.us.us = phi ptr [ %i.ck, %._crit_edge.split.us.us.us.split.us.us ], [ %4, %.preheader.us.us.us.preheader ]
  %.04971.us.us.us = phi ptr [ %i.cj, %._crit_edge.split.us.us.us.split.us.us ], [ %3, %.preheader.us.us.us.preheader ]
  %.05170.us.us.us = phi ptr [ %i.cn, %._crit_edge.split.us.us.us.split.us.us ], [ %2, %.preheader.us.us.us.preheader ]
  %.05269.us.us.us = phi ptr [ %i.cm, %._crit_edge.split.us.us.us.split.us.us ], [ %1, %.preheader.us.us.us.preheader ] ; 2 uses
  br label %.lr.ph.preheader.i.us.us.us.us.us

.lr.ph.preheader.i.us.us.us.us.us:                ; preds = %._crit_edge.loopexit.i.us.us.us.us.us, %.preheader.us.us.us
  %.056.us.us.us.us.us = phi i64 [ 0, %.preheader.us.us.us ], [ %i.ci, %._crit_edge.loopexit.i.us.us.us.us.us ] ; 2 uses
  %.155.us.us.us.us.us = phi ptr [ %.04872.us.us.us, %.preheader.us.us.us ], [ %i.ck, %._crit_edge.loopexit.i.us.us.us.us.us ] ; 6 uses
  %.15054.us.us.us.us.us = phi ptr [ %.04971.us.us.us, %.preheader.us.us.us ], [ %i.cj, %._crit_edge.loopexit.i.us.us.us.us.us ] ; 8 uses
  %i.aj = mul nsw i64 %.056.us.us.us.us.us, %i.h
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.aj ; 12 uses
  %i.al = load double, ptr %.15054.us.us.us.us.us, align 8, !tbaa !27
  store double %i.al, ptr %i.ak, align 8, !tbaa !27
  br i1 %i.ai, label %.lr.ph.i.us.us.us.us.us.epil.preheader, label %.lr.ph.i.us.us.us.us.us

.lr.ph.i.us.us.us.us.us:                          ; preds = %.lr.ph.preheader.i.us.us.us.us.us, %.lr.ph.i.us.us.us.us.us
  %.026.i.us.us.us.us.us = phi i64 [ %i.bv, %.lr.ph.i.us.us.us.us.us ], [ 1, %.lr.ph.preheader.i.us.us.us.us.us ] ; 7 uses
  %niter234 = phi i64 [ %niter234.next.3, %.lr.ph.i.us.us.us.us.us ], [ 0, %.lr.ph.preheader.i.us.us.us.us.us ]
  %i.am = mul nsw i64 %.026.i.us.us.us.us.us, %i.p ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us.us.us, i64 %i.am
  %i.ao = load double, ptr %i.an, align 8, !tbaa !27
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.026.i.us.us.us.us.us
  store double %i.ao, ptr %i.ap, align 8, !tbaa !27
  %i.aq = getelementptr inbounds [8 x i8], ptr %.155.us.us.us.us.us, i64 %i.am
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !27
  %i.as = sub nuw nsw i64 %i.j, %.026.i.us.us.us.us.us
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.as
  store double %i.ar, ptr %i.at, align 8, !tbaa !27
  %i.au = add nuw nsw i64 %.026.i.us.us.us.us.us, 1 ; 3 uses
  %i.av = mul nsw i64 %i.au, %i.p                 ; 2 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us.us.us, i64 %i.av
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !27
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.au
  store double %i.ax, ptr %i.ay, align 8, !tbaa !27
  %i.az = getelementptr inbounds [8 x i8], ptr %.155.us.us.us.us.us, i64 %i.av
  %i.ba = load double, ptr %i.az, align 8, !tbaa !27
  %i.bb = sub nuw nsw i64 %i.j, %i.au
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.bb
  store double %i.ba, ptr %i.bc, align 8, !tbaa !27
  %i.bd = add nuw nsw i64 %.026.i.us.us.us.us.us, 2 ; 3 uses
  %i.be = mul nsw i64 %i.bd, %i.p                 ; 2 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us.us.us, i64 %i.be
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !27
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.bd
  store double %i.bg, ptr %i.bh, align 8, !tbaa !27
  %i.bi = getelementptr inbounds [8 x i8], ptr %.155.us.us.us.us.us, i64 %i.be
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !27
  %i.bk = sub nuw nsw i64 %i.j, %i.bd
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.bk
  store double %i.bj, ptr %i.bl, align 8, !tbaa !27
  %i.bm = add nuw nsw i64 %.026.i.us.us.us.us.us, 3 ; 3 uses
  %i.bn = mul nsw i64 %i.bm, %i.p                 ; 2 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us.us.us, i64 %i.bn
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !27
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.bm
  store double %i.bp, ptr %i.bq, align 8, !tbaa !27
  %i.br = getelementptr inbounds [8 x i8], ptr %.155.us.us.us.us.us, i64 %i.bn
  %i.bs = load double, ptr %i.br, align 8, !tbaa !27
  %i.bt = sub nuw nsw i64 %i.j, %i.bm
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.bt
  store double %i.bs, ptr %i.bu, align 8, !tbaa !27
  %i.bv = add nuw nsw i64 %.026.i.us.us.us.us.us, 4 ; 2 uses
  %niter234.next.3 = add i64 %niter234, 4         ; 2 uses
  %niter234.ncmp.3 = icmp eq i64 %niter234.next.3, %unroll_iter233
  br i1 %niter234.ncmp.3, label %._crit_edge.loopexit.i.us.us.us.us.us.unr-lcssa, label %.lr.ph.i.us.us.us.us.us, !llvm.loop !85

._crit_edge.loopexit.i.us.us.us.us.us.unr-lcssa:  ; preds = %.lr.ph.i.us.us.us.us.us
  br i1 %lcmp.mod231.not, label %._crit_edge.loopexit.i.us.us.us.us.us, label %.lr.ph.i.us.us.us.us.us.epil.preheader

.lr.ph.i.us.us.us.us.us.epil.preheader:           ; preds = %._crit_edge.loopexit.i.us.us.us.us.us.unr-lcssa, %.lr.ph.preheader.i.us.us.us.us.us
  %.026.i.us.us.us.us.us.epil.init = phi i64 [ 1, %.lr.ph.preheader.i.us.us.us.us.us ], [ %i.bv, %._crit_edge.loopexit.i.us.us.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod232)
  br label %.lr.ph.i.us.us.us.us.us.epil

.lr.ph.i.us.us.us.us.us.epil:                     ; preds = %.lr.ph.i.us.us.us.us.us.epil, %.lr.ph.i.us.us.us.us.us.epil.preheader
  %.026.i.us.us.us.us.us.epil = phi i64 [ %i.ce, %.lr.ph.i.us.us.us.us.us.epil ], [ %.026.i.us.us.us.us.us.epil.init, %.lr.ph.i.us.us.us.us.us.epil.preheader ] ; 4 uses
  %epil.iter230 = phi i64 [ %epil.iter230.next, %.lr.ph.i.us.us.us.us.us.epil ], [ 0, %.lr.ph.i.us.us.us.us.us.epil.preheader ]
  %i.bw = mul nsw i64 %.026.i.us.us.us.us.us.epil, %i.p ; 2 uses
  %i.bx = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us.us.us, i64 %i.bw
  %i.by = load double, ptr %i.bx, align 8, !tbaa !27
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.026.i.us.us.us.us.us.epil
  store double %i.by, ptr %i.bz, align 8, !tbaa !27
  %i.ca = getelementptr inbounds [8 x i8], ptr %.155.us.us.us.us.us, i64 %i.bw
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !27
  %i.cc = sub nuw nsw i64 %i.j, %.026.i.us.us.us.us.us.epil
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.cc
  store double %i.cb, ptr %i.cd, align 8, !tbaa !27
  %i.ce = add nuw nsw i64 %.026.i.us.us.us.us.us.epil, 1
  %epil.iter230.next = add i64 %epil.iter230, 1   ; 2 uses
  %epil.iter230.cmp.not = icmp eq i64 %epil.iter230.next, %xtraiter229
  br i1 %epil.iter230.cmp.not, label %._crit_edge.loopexit.i.us.us.us.us.us, label %.lr.ph.i.us.us.us.us.us.epil, !llvm.loop !86

._crit_edge.loopexit.i.us.us.us.us.us:            ; preds = %.lr.ph.i.us.us.us.us.us.epil, %._crit_edge.loopexit.i.us.us.us.us.us.unr-lcssa
  %i.cf = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us.us.us, i64 %i.ab
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !27
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.w
  store double %i.cg, ptr %i.ch, align 8, !tbaa !27
  %i.ci = add nuw nsw i64 %.056.us.us.us.us.us, 1 ; 2 uses
  %i.cj = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us.us.us, i64 %i.l ; 3 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %.155.us.us.us.us.us, i64 %i.l ; 3 uses
  %exitcond139.not = icmp eq i64 %i.ci, %i.f
  br i1 %exitcond139.not, label %._crit_edge.split.us.us.us.split.us.us, label %.lr.ph.preheader.i.us.us.us.us.us, !llvm.loop !87

._crit_edge.split.us.us.us.split.us.us:           ; preds = %._crit_edge.loopexit.i.us.us.us.us.us
  %i.cl = load ptr, ptr %i.ac, align 8, !tbaa !26
  tail call void %i.cl(ptr noundef %i.b, ptr noundef nonnull %i.s, ptr noundef %.05269.us.us.us) #4
  %i.cm = getelementptr inbounds [8 x i8], ptr %.05269.us.us.us, i64 %i.ad ; 2 uses
  %i.cn = getelementptr inbounds [8 x i8], ptr %.05170.us.us.us, i64 %i.ad ; 2 uses
  %i.co = add nuw nsw i64 %.04773.us.us.us, %i.f  ; 2 uses
  %.not.us.us.us = icmp sgt i64 %i.co, %i.d
  br i1 %.not.us.us.us, label %._crit_edge74, label %.preheader.us.us.us, !llvm.loop !88

.preheader.us.us:                                 ; preds = %.preheader.us.us.preheader, %._crit_edge.split.us.us.us.split
  %.04773.us.us = phi i64 [ %i.er, %._crit_edge.split.us.us.us.split ], [ %i.f, %.preheader.us.us.preheader ]
  %.04872.us.us = phi ptr [ %i.en, %._crit_edge.split.us.us.us.split ], [ %4, %.preheader.us.us.preheader ]
end_hunk_0
