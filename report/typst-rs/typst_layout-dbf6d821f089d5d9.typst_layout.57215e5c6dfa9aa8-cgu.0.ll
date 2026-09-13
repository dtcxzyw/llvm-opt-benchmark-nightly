Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_layout-dbf6d821f089d5d9.typst_layout.57215e5c6dfa9aa8-cgu.0?download=true
inline.NumInlined: 19601
inline.NumDeleted: 9837
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 55
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter17layout_single_row:bb.a
  %invariant.gep.i.i.i.i.i = getelementptr [8 x i8], ptr %i.aj, i64 %.sroa.8101.0111 ; 9 uses
  %.not.i.i.i.i.i = icmp eq i64 %..i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.u
  %xtraiter = and i64 %..i.i.i.i.i.i, 7           ; 3 uses
  %i.cr = icmp ult i64 %..i.i.i.i.i.i, 8
  br i1 %i.cr, label %.lr.ph.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.preheader.new:                   ; preds = %.lr.ph.i.i.i.i.i.preheader
  %unroll_iter = and i64 %..i.i.i.i.i.i, -8
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.new
  %.sroa.0.010.i.i.i.i.i = phi double [ -0.000000e+00, %.lr.ph.i.i.i.i.i.preheader.new ], [ %i.dh, %.lr.ph.i.i.i.i.i ]
  %.sroa.02.09.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.preheader.new ], [ %i.df, %.lr.ph.i.i.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i.i ]
  %gep.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i, i64 %.sroa.02.09.i.i.i.i.i
  %.val8.i.i.i.i.i = load double, ptr %gep.i.i.i.i.i, align 8, !noalias !29777, !noundef !41
  %i.cs = fadd double %.sroa.0.010.i.i.i.i.i, %.val8.i.i.i.i.i
  %i.ct = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i, i64 %.sroa.02.09.i.i.i.i.i
  %gep.i.i.i.i.i.1 = getelementptr i8, ptr %i.ct, i64 8
  %.val8.i.i.i.i.i.1 = load double, ptr %gep.i.i.i.i.i.1, align 8, !noalias !29777, !noundef !41
  %i.cu = fadd double %i.cs, %.val8.i.i.i.i.i.1
  %i.cv = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i, i64 %.sroa.02.09.i.i.i.i.i
  %gep.i.i.i.i.i.2 = getelementptr i8, ptr %i.cv, i64 16
  %.val8.i.i.i.i.i.2 = load double, ptr %gep.i.i.i.i.i.2, align 8, !noalias !29777, !noundef !41
  %i.cw = fadd double %i.cu, %.val8.i.i.i.i.i.2
  %i.cx = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i, i64 %.sroa.02.09.i.i.i.i.i
  %gep.i.i.i.i.i.3 = getelementptr i8, ptr %i.cx, i64 24
  %.val8.i.i.i.i.i.3 = load double, ptr %gep.i.i.i.i.i.3, align 8, !noalias !29777, !noundef !41
  %i.cy = fadd double %i.cw, %.val8.i.i.i.i.i.3
  %i.cz = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i, i64 %.sroa.02.09.i.i.i.i.i
  %gep.i.i.i.i.i.4 = getelementptr i8, ptr %i.cz, i64 32
  %.val8.i.i.i.i.i.4 = load double, ptr %gep.i.i.i.i.i.4, align 8, !noalias !29777, !noundef !41
  %i.da = fadd double %i.cy, %.val8.i.i.i.i.i.4
  %i.db = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i, i64 %.sroa.02.09.i.i.i.i.i
  %gep.i.i.i.i.i.5 = getelementptr i8, ptr %i.db, i64 40
  %.val8.i.i.i.i.i.5 = load double, ptr %gep.i.i.i.i.i.5, align 8, !noalias !29777, !noundef !41
  %i.dc = fadd double %i.da, %.val8.i.i.i.i.i.5
  %i.dd = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i, i64 %.sroa.02.09.i.i.i.i.i
  %gep.i.i.i.i.i.6 = getelementptr i8, ptr %i.dd, i64 48
  %.val8.i.i.i.i.i.6 = load double, ptr %gep.i.i.i.i.i.6, align 8, !noalias !29777, !noundef !41
  %i.de = fadd double %i.dc, %.val8.i.i.i.i.i.6
  %i.df = add nuw i64 %.sroa.02.09.i.i.i.i.i, 8   ; 2 uses
  %i.dg = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i, i64 %.sroa.02.09.i.i.i.i.i
  %gep.i.i.i.i.i.7 = getelementptr i8, ptr %i.dg, i64 56
  %.val8.i.i.i.i.i.7 = load double, ptr %gep.i.i.i.i.i.7, align 8, !noalias !29777, !noundef !41
  %i.dh = fadd double %i.de, %.val8.i.i.i.i.i.7   ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.epil.preheader:                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %.sroa.0.010.i.i.i.i.i.epil.init = phi double [ -0.000000e+00, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dh, %.loopexit.loopexit.unr-lcssa ]
  %.sroa.02.09.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.preheader ], [ %i.df, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod131 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod131)
  br label %.lr.ph.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.epil:                            ; preds = %.lr.ph.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.epil.preheader
  %.sroa.0.010.i.i.i.i.i.epil = phi double [ %i.dj, %.lr.ph.i.i.i.i.i.epil ], [ %.sroa.0.010.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.epil.preheader ]
  %.sroa.02.09.i.i.i.i.i.epil = phi i64 [ %i.di, %.lr.ph.i.i.i.i.i.epil ], [ %.sroa.02.09.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.epil.preheader ]
  %i.di = add nuw i64 %.sroa.02.09.i.i.i.i.i.epil, 1
  %gep.i.i.i.i.i.epil = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i, i64 %.sroa.02.09.i.i.i.i.i.epil
  %.val8.i.i.i.i.i.epil = load double, ptr %gep.i.i.i.i.i.epil, align 8, !noalias !29777, !noundef !41
  %i.dj = fadd double %.sroa.0.010.i.i.i.i.i.epil, %.val8.i.i.i.i.i.epil ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.i.i.i.i.i.epil, !llvm.loop !29761

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.epil, %bb.u
  %.sroa.0.0.lcssa.i.i.i.i.i = phi double [ -0.000000e+00, %bb.u ], [ %i.dh, %.loopexit.loopexit.unr-lcssa ], [ %i.dj, %.lr.ph.i.i.i.i.i.epil ] ; 2 uses
  %.inv.i.i = fcmp ord double %.sroa.0.0.lcssa.i.i.i.i.i, 0.000000e+00
  %spec.store.select.i.i = select i1 %.inv.i.i, double %.sroa.0.0.lcssa.i.i.i.i.i, double 0.000000e+00 ; 2 uses
  store double %spec.store.select.i.i, ptr %i.ar, align 8
  store i8 1, ptr %i.at, align 8
  store i8 1, ptr %i.au, align 1
  store <2 x double> %i.bo, ptr %i.as, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.aw, align 8
  store i64 0, ptr %i.ax, align 8
  store i64 0, ptr %i.e, align 8
  %i.dk = load i64, ptr %i.ay, align 8, !noundef !41 ; 2 uses
  %i.dl = icmp ult i64 %5, %i.dk
  br i1 %i.dl, label %bb.x, label %bb.v

bb.v:                                             ; preds = %.loopexit
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %5, i64 noundef %i.dk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @433) #57
          to label %bb.w unwind label %.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %.loopexit
  %i.dm = load ptr, ptr %i.az, align 8, !nonnull !41, !noundef !41
  %i.dn = getelementptr inbounds nuw [32 x i8], ptr %i.dm, i64 %5
  %.val = load i64, ptr %i.dn, align 8, !range !52, !noundef !41
  %i.do = icmp eq i64 %.val, 0
  %or.cond = select i1 %i.do, i1 %i.bc, i1 false
  br i1 %or.cond, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke fastcc void @_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter12cell_locator(ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(488) %1, i64 noundef %.sroa.8101.0111, i64 noundef %5, i64 noundef %3)
          to label %bb.aa unwind label %.loopexit107

bb.z:                                             ; preds = %bb.x
  store double %i.be, ptr %i.av, align 8
  br label %bb.y

bb.aa:                                            ; preds = %bb.y
  %i.dp = load i128, ptr %i.a, align 16, !noundef !41
  %i.dq = load ptr, ptr %i.bf, align 16, !align !59, !noundef !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke fastcc void @_RNvNtCs7tN9tvpkfrg_12typst_layout4grid11layout_cell(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ch, ptr noalias nofree noundef align 8 dereferenceable(200) %2, i128 noundef %i.dp, ptr noundef align 16 %i.dq, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bg, ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.e, i1 noundef zeroext %i.bj)
          to label %bb.ab unwind label %.loopexit107

bb.ab:                                            ; preds = %bb.aa
  %i.dr = load i64, ptr %i.c, align 8, !range !70, !noundef !41 ; 2 uses
  %i.ds = icmp eq i64 %i.dr, -1
  %i.dt = load ptr, ptr %.sroa.461.0..sroa_idx, align 8 ; 2 uses
  %i.du = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.ds, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dt, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.du, ptr %i.dw, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !29778)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29779)
  call void @llvm.experimental.noalias.scope.decl(metadata !29780)
  %i.dy = load ptr, ptr %i.dx, align 8, !alias.scope !29781, !nonnull !41, !noundef !41
  %i.dz = atomicrmw sub ptr %i.dy, i64 1 release, align 8, !noalias !29781
  %i.ea = icmp eq i64 %i.dz, 1
  br i1 %i.ea, label %bb.ad, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit85

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dx) #58
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit85

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit85: ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.h

bb.ae:                                            ; preds = %bb.ab
  store i64 %i.dr, ptr %i.b, align 8
  store ptr %i.dt, ptr %.sroa.6.0..sroa_idx18, align 8
  store i64 %i.du, ptr %.sroa.8.0..sroa_idx20, align 8
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout8fragmentNtB2_8Fragment10into_frame(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @434)
          to label %bb.af unwind label %.loopexit107

bb.af:                                            ; preds = %bb.ae
  br i1 %i.bm, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.ah, %bb.af
  %.sroa.022.0 = phi double [ %spec.store.select2, %bb.ah ], [ %.sroa.07.0112, %bb.af ]
  invoke void @_RNvMs_NtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB4_5Frame10push_frame(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f, double noundef %.sroa.022.0, double noundef 0.000000e+00, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.d)
          to label %bb.ai unwind label %.loopexit107

bb.ah:                                            ; preds = %bb.af
  %i.eb = fadd double %.sroa.07.0112, %spec.store.select.i.i ; 2 uses
  %.inv = fcmp ord double %i.eb, 0.000000e+00
  %.neg = fneg double %i.eb
  %i.ec = select i1 %.inv, double %.neg, double -0.000000e+00 ; 2 uses
  %.inv78 = fcmp ord double %i.ec, 0.000000e+00
  %spec.store.select1 = select i1 %.inv78, double %i.ec, double 0.000000e+00
  %i.ed = fadd double %i.n, %spec.store.select1   ; 2 uses
  %.inv79 = fcmp ord double %i.ed, 0.000000e+00
  %spec.store.select2 = select i1 %.inv79, double %i.ed, double 0.000000e+00
  br label %bb.ag

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.t, %bb.s
  %i.ee = fadd double %.sroa.07.0112, %i.cg       ; 2 uses
  %.inv81 = fcmp ord double %i.ee, 0.000000e+00
  %spec.store.select3 = select i1 %.inv81, double %i.ee, double 0.000000e+00
  %i.ef = icmp eq ptr %i.ce, %i.am
  br i1 %i.ef, label %._crit_edge, label %bb.r
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter19layout_row_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %2, i64 noundef range(i64 0, 192153584101141163) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 12 uses
  %i.c = alloca [32 x i8], align 16               ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  %i.e = alloca [64 x i8], align 8                ; 11 uses
  %i.f = alloca [64 x i8], align 8                ; 10 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 12 uses
  %i.i = alloca [48 x i8], align 8                ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = alloca [48 x i8], align 8                ; 10 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [48 x i8], align 8                ; 6 uses
  %i.n = alloca [40 x i8], align 8                ; 11 uses
  %i.o = alloca [32 x i8], align 8                ; 9 uses
  %i.p = alloca [120 x i8], align 8               ; 19 uses
  %i.q = alloca [72 x i8], align 8                ; 4 uses
  %.sroa.090.sroa.0 = alloca [72 x i8], align 8   ; 4 uses
  %i.r = alloca [48 x i8], align 8                ; 9 uses
  %i.s = alloca [48 x i8], align 8                ; 8 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [32 x i8], align 8                ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 7 uses
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !41, !align !46, !noundef !41
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 176
  %i.z = load i8, ptr %i.y, align 8, !range !54, !noundef !41
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = trunc i64 %1 to i1                      ; 2 uses
  %.sroa.02.0 = and i1 %i.ab, %i.aa               ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 12 uses
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !41
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.af = tail call noundef zeroext i1 @_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library6layout7regionsNtB5_7Regions7is_full(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0)
  %.not = xor i1 %i.af, true
  %brmerge = or i1 %.sroa.02.0, %.not
  br i1 %brmerge, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br i1 %.sroa.02.0, label %bb.ai, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.ag = tail call fastcc { ptr, i64 } @_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter13finish_region(ptr noalias nofree noundef align 8 dereferenceable(488) %0, ptr noalias nofree noundef align 8 dereferenceable(200) %2, i1 noundef zeroext false) ; 2 uses
  %i.ah = extractvalue { ptr, i64 } %i.ag, 0      ; 2 uses
  %.not27 = icmp eq ptr %i.ah, null
  br i1 %.not27, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = extractvalue { ptr, i64 } %i.ag, 1
  br label %bb.ea

bb.f:                                             ; preds = %bb.d, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29946)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !29946, !nonnull !41, !noundef !41 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !29946, !noundef !41 ; 5 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.am
  %i.ao = icmp ult i64 %i.am, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ao)
  %.not36.i = icmp eq i64 %i.am, 0
  br i1 %.not36.i, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspansNtNtB4_8layouter12GridLayouter18check_for_rowspans.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 209 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.at = load ptr, ptr %i.w, align 8, !alias.scope !29946, !nonnull !41, !align !46, !noundef !41 ; 2 uses
  %i.au = tail call noundef align 8 ptr @_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolveNtB5_8CellGrid4cell(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.at, i64 noundef 0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @326), !noalias !29946 ; 3 uses
  %.not.peel.i = icmp eq ptr %i.au, null
  br i1 %.not.peel.i, label %.backedge.peel.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 176
  %i.aw = load i8, ptr %i.av, align 8, !range !54, !noalias !29946, !noundef !41
  %i.ax = trunc nuw i8 %i.aw to i1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.az = load i64, ptr %i.ay, align 8, !range !53, !noalias !29946, !noundef !41 ; 2 uses
  %i.ba = shl i64 %i.az, 1
  %i.bb = add i64 %i.ba, -1
  %.sroa.02.0.peel.i = select i1 %i.ax, i64 %i.bb, i64 %i.az ; 2 uses
  %i.bc = icmp ugt i64 %.sroa.02.0.peel.i, 1
  br i1 %i.bc, label %bb.i, label %.backedge.peel.i

bb.i:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 100
  %i.be = load i8, ptr %i.bd, align 4, !range !54, !noalias !29946, !noundef !41
  %i.bf = xor i8 %i.be, 1
  %i.bg = load i8, ptr %i.aq, align 1, !range !54, !alias.scope !29946, !noundef !41
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29947)
  %i.bh = load i64, ptr %i.ar, align 8, !alias.scope !29948, !noalias !29949, !noundef !41 ; 3 uses
  %i.bi = load i64, ptr %i.ap, align 8, !range !45, !alias.scope !29948, !noalias !29949, !noundef !41
  %i.bj = icmp eq i64 %i.bh, %i.bi
  br i1 %i.bj, label %bb.j, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans7RowspanE8push_mutBL_.exit.peel.i

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans7RowspanE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap), !noalias !29949
  br label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans7RowspanE8push_mutBL_.exit.peel.i

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans7RowspanE8push_mutBL_.exit.peel.i: ; preds = %bb.j, %bb.i
  %i.bk = load ptr, ptr %i.as, align 8, !alias.scope !29948, !noalias !29949, !nonnull !41, !noundef !41
  %i.bl = getelementptr inbounds nuw [112 x i8], ptr %i.bk, i64 %i.bh ; 12 uses
  store i64 0, ptr %i.bl, align 8, !noalias !29948
  %.sroa.415.0..sroa_idx.peel.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store i64 0, ptr %.sroa.415.0..sroa_idx.peel.i, align 8, !noalias !29948
  %.sroa.616.0..sroa_idx.peel.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.616.0..sroa_idx.peel.i, align 8, !noalias !29948
  %.sroa.817.0..sroa_idx.peel.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %.sroa.10.0..sroa_idx.peel.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.817.0..sroa_idx.peel.i, i8 0, i64 16, i1 false), !noalias !29946
  store i64 %1, ptr %.sroa.10.0..sroa_idx.peel.i, align 8, !noalias !29948
  %.sroa.11.0..sroa_idx.peel.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  store i64 %3, ptr %.sroa.11.0..sroa_idx.peel.i, align 8, !noalias !29948
  %.sroa.1219.0..sroa_idx.peel.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  store i64 %.sroa.02.0.peel.i, ptr %.sroa.1219.0..sroa_idx.peel.i, align 8, !noalias !29948
  %.sroa.13.0..sroa_idx.peel.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 72
  %.sroa.1520.0..sroa_idx.peel.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.0..sroa_idx.peel.i, i8 0, i64 16, i1 false), !noalias !29946
  store i64 -1, ptr %.sroa.1520.0..sroa_idx.peel.i, align 8, !noalias !29948
  %.sroa.16.0..sroa_idx.peel.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 96
  store double 0.000000e+00, ptr %.sroa.16.0..sroa_idx.peel.i, align 8, !noalias !29948
  %.sroa.1721.0..sroa_idx.peel.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 104
  store i8 %i.bf, ptr %.sroa.1721.0..sroa_idx.peel.i, align 8, !noalias !29948
  %.sroa.18.0..sroa_idx.peel.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 105
  store i8 %i.bg, ptr %.sroa.18.0..sroa_idx.peel.i, align 1, !noalias !29948
  %i.bm = add i64 %i.bh, 1
  store i64 %i.bm, ptr %i.ar, align 8, !alias.scope !29948, !noalias !29949
  br label %.backedge.peel.i

.backedge.peel.i:                                 ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans7RowspanE8push_mutBL_.exit.peel.i, %bb.h, %bb.g
  %exitcond.peel.not.i = icmp eq i64 %i.am, 1
  br i1 %exitcond.peel.not.i, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspansNtNtB4_8layouter12GridLayouter18check_for_rowspans.exit, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i: ; preds = %.backedge.peel.i, %.backedge.i
  %.sroa.6.034.i = phi ptr [ %i.bp, %.backedge.i ], [ %i.ak, %.backedge.peel.i ] ; 3 uses
  %.sroa.9.033.i = phi double [ %spec.store.select.i.i.i.i, %.backedge.i ], [ 0.000000e+00, %.backedge.peel.i ]
  %.sroa.12.032.i = phi i64 [ %i.bn, %.backedge.i ], [ 1, %.backedge.peel.i ] ; 3 uses
  %i.bn = add nuw nsw i64 %.sroa.12.032.i, 1      ; 2 uses
  %i.bo = icmp eq ptr %.sroa.6.034.i, %i.an
  br i1 %i.bo, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspansNtNtB4_8layouter12GridLayouter18check_for_rowspans.exit, label %bb.k

bb.k:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.6.034.i, i64 8
  %i.bq = load double, ptr %.sroa.6.034.i, align 8, !noalias !29950, !noundef !41
  %i.br = fadd double %.sroa.9.033.i, %i.bq       ; 2 uses
  %.inv.i.i.i.i = fcmp ord double %i.br, 0.000000e+00
  %spec.store.select.i.i.i.i = select i1 %.inv.i.i.i.i, double %i.br, double 0.000000e+00 ; 2 uses
  %i.bs = load ptr, ptr %i.w, align 8, !alias.scope !29946, !nonnull !41, !align !46, !noundef !41 ; 2 uses
  %i.bt = tail call noundef align 8 ptr @_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolveNtB5_8CellGrid4cell(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.bs, i64 noundef %.sroa.12.032.i, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @326), !noalias !29946 ; 3 uses
  %.not.i = icmp eq ptr %i.bt, null
  br i1 %.not.i, label %.backedge.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 176
  %i.bv = load i8, ptr %i.bu, align 8, !range !54, !noalias !29946, !noundef !41
  %i.bw = trunc nuw i8 %i.bv to i1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 56
  %i.by = load i64, ptr %i.bx, align 8, !range !53, !noalias !29946, !noundef !41 ; 2 uses
  %i.bz = shl i64 %i.by, 1
  %i.ca = add i64 %i.bz, -1
  %.sroa.02.0.i = select i1 %i.bw, i64 %i.ca, i64 %i.by ; 2 uses
  %i.cb = icmp ugt i64 %.sroa.02.0.i, 1
  br i1 %i.cb, label %bb.m, label %.backedge.i

bb.m:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bt, i64 100
  %i.cd = load i8, ptr %i.cc, align 4, !range !54, !noalias !29946, !noundef !41
  %i.ce = xor i8 %i.cd, 1
  %i.cf = load i8, ptr %i.aq, align 1, !range !54, !alias.scope !29946, !noundef !41
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29951)
  %i.cg = load i64, ptr %i.ar, align 8, !alias.scope !29952, !noalias !29949, !noundef !41 ; 3 uses
  %i.ch = load i64, ptr %i.ap, align 8, !range !45, !alias.scope !29952, !noalias !29949, !noundef !41
  %i.ci = icmp eq i64 %i.cg, %i.ch
  br i1 %i.ci, label %bb.n, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans7RowspanE8push_mutBL_.exit.i

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans7RowspanE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap), !noalias !29949
  br label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans7RowspanE8push_mutBL_.exit.i

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans7RowspanE8push_mutBL_.exit.i: ; preds = %bb.n, %bb.m
  %i.cj = load ptr, ptr %i.as, align 8, !alias.scope !29952, !noalias !29949, !nonnull !41, !noundef !41
  %i.ck = getelementptr inbounds nuw [112 x i8], ptr %i.cj, i64 %i.cg ; 14 uses
  store i64 0, ptr %i.ck, align 8, !noalias !29952
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store i64 0, ptr %.sroa.415.0..sroa_idx.i, align 8, !noalias !29952
  %.sroa.616.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.616.0..sroa_idx.i, align 8, !noalias !29952
  %.sroa.817.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  store i64 0, ptr %.sroa.817.0..sroa_idx.i, align 8, !noalias !29952
  %.sroa.918.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  store i64 %.sroa.12.032.i, ptr %.sroa.918.0..sroa_idx.i, align 8, !noalias !29952
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  store i64 %1, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !29952
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  store i64 %3, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !29952
  %.sroa.1219.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 64
  store i64 %.sroa.02.0.i, ptr %.sroa.1219.0..sroa_idx.i, align 8, !noalias !29952
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 72
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter19layout_row_internal:bb.a
  %i.dh = load double, ptr %i.de, align 8, !alias.scope !29953, !noalias !29954, !noundef !41
  %i.di = invoke noundef zeroext i1 @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs4fits(double noundef %i.dh, double noundef %.sroa.626.0.copyload.i145)
          to label %bb.x unwind label %bb.v, !inline_history !29805

bb.v:                                             ; preds = %bb.aa, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter25may_progress_with_repeats.exit.thread, %bb.u
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = icmp eq i64 %i.cs, 0
  br i1 %i.dk, label %common.resume, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dl = shl nuw i64 %i.cs, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cv) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cv, i64 noundef %i.dl, i64 noundef range(i64 1, -9223372036854775807) 8) #56
  br label %common.resume

bb.x:                                             ; preds = %bb.u
  br i1 %i.di, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter25may_progress_with_repeats.exit.thread104, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dm = load i8, ptr %i.df, align 8, !range !54, !alias.scope !29956, !noundef !41
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter25may_progress_with_repeats.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.do = load i64, ptr %0, align 8, !range !49, !alias.scope !29956, !noundef !41
  %.not.i50 = icmp eq i64 %i.do, 0
  br i1 %.not.i50, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter25may_progress_with_repeats.exit.thread104, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dp = invoke noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.de, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dg)
          to label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter25may_progress_with_repeats.exit unwind label %bb.v

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter25may_progress_with_repeats.exit: ; preds = %bb.aa
  br i1 %i.dp, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter25may_progress_with_repeats.exit.thread104, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter25may_progress_with_repeats.exit.thread

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter25may_progress_with_repeats.exit.thread: ; preds = %bb.y, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter25may_progress_with_repeats.exit
  %i.dq = invoke fastcc { ptr, i64 } @_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter13finish_region(ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %2, i1 noundef zeroext false)
          to label %bb.ac unwind label %bb.v, !inline_history !29805 ; 2 uses

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter25may_progress_with_repeats.exit.thread104: ; preds = %bb.z, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter25may_progress_with_repeats.exit, %bb.x
  %i.dr = icmp ult i64 %i.cx, 576460752303423488
  tail call void @llvm.assume(i1 %i.dr)
  store i64 %i.cx, ptr %i.ac, align 8, !alias.scope !29953, !noalias !29954
  %i.ds = icmp eq i64 %i.cs, 0
  br i1 %i.ds, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans19UnbreakableRowGroupEBH_.exit49, label %bb.ab

bb.ab:                                            ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter25may_progress_with_repeats.exit.thread104
  %i.dt = shl nuw i64 %i.cs, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cv) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cv, i64 noundef %i.dt, i64 noundef range(i64 1, -9223372036854775807) 8) #56
  %.pr = load i64, ptr %i.ac, align 8, !alias.scope !29953, !noalias !29954
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans19UnbreakableRowGroupEBH_.exit49

bb.ac:                                            ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter25may_progress_with_repeats.exit.thread
  %i.du = extractvalue { ptr, i64 } %i.dq, 0      ; 3 uses
  %.not31.i = icmp eq ptr %i.du, null
  br i1 %.not31.i, label %bb.u, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dv = extractvalue { ptr, i64 } %i.dq, 1      ; 2 uses
  %i.dw = icmp eq i64 %i.cs, 0
  br i1 %i.dw, label %bb.ea, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dx = shl nuw i64 %i.cs, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cv) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cv, i64 noundef %i.dx, i64 noundef range(i64 1, -9223372036854775807) 8) #56
  br label %bb.ea

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans19UnbreakableRowGroupEBH_.exit49: ; preds = %bb.ab, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter25may_progress_with_repeats.exit.thread104, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspansNtNtB4_8layouter12GridLayouter18check_for_rowspans.exit
  %i.dy = phi i64 [ %.pr, %bb.ab ], [ %i.cx, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter25may_progress_with_repeats.exit.thread104 ], [ %i.cm, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspansNtNtB4_8layouter12GridLayouter18check_for_rowspans.exit ]
  %i.dz = icmp ugt i64 %i.dy, 1
  br i1 %i.dz, label %bb.af, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspansNtNtB4_8layouter12GridLayouter26check_for_unbreakable_rows.exit

common.resume:                                    ; preds = %bb.dr, %bb.dq, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEEECs7tN9tvpkfrg_12typst_layout.exit58, %bb.au, %bb.v, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %.us-phi, %bb.dr ], [ %i.dj, %bb.v ], [ %.pn.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEEECs7tN9tvpkfrg_12typst_layout.exit58 ], [ %i.dj, %bb.w ], [ %.pn.i, %bb.au ], [ %.us-phi, %bb.dq ]
  resume { ptr, i32 } %common.resume.op

bb.af:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans19UnbreakableRowGroupEBH_.exit49
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.eb = load ptr, ptr %i.ea, align 8, !alias.scope !29953, !noalias !29954, !nonnull !41, !noundef !41 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ed = load i64, ptr %i.ec, align 8, !alias.scope !29953, !noalias !29954, !noundef !41
  %i.ee = getelementptr inbounds nuw [112 x i8], ptr %i.eb, i64 %i.ed
  br label %bb.ag

bb.ag:                                            ; preds = %.backedge, %bb.af
  %i.ef = phi ptr [ %i.eb, %bb.af ], [ %i.eh, %.backedge ] ; 5 uses
  %i.eg = icmp eq ptr %i.ef, %i.ee
  br i1 %i.eg, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspansNtNtB4_8layouter12GridLayouter26check_for_unbreakable_rows.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 112
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 48
  %i.ej = load i64, ptr %i.ei, align 8, !noalias !29957, !noundef !41
  %i.ek = icmp eq i64 %i.ej, %1
  br i1 %i.ek, label %_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMutNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans7RowspanENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMBV_NtNtBX_8layouter12GridLayouter26check_for_unbreakable_rows0EBZ_.exit, label %.backedge

.backedge:                                        ; preds = %bb.ah, %_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMutNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans7RowspanENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMBV_NtNtBX_8layouter12GridLayouter26check_for_unbreakable_rows0EBZ_.exit
  br label %bb.ag

_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMutNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans7RowspanENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMBV_NtNtBX_8layouter12GridLayouter26check_for_unbreakable_rows0EBZ_.exit: ; preds = %bb.ah
  %i.el = load i64, ptr %i.ac, align 8, !alias.scope !29953, !noalias !29954, !noundef !41
  %i.em = getelementptr inbounds nuw i8, ptr %i.ef, i64 64
  %i.en = load i64, ptr %i.em, align 8, !noundef !41
  %i.eo = icmp uge i64 %i.el, %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ef, i64 104 ; 2 uses
  %i.eq = load i8, ptr %i.ep, align 8, !range !54, !noundef !41
  %i.er = zext i1 %i.eo to i8
  %i.es = or i8 %i.eq, %i.er
  store i8 %i.es, ptr %i.ep, align 8
  br label %.backedge

bb.ai:                                            ; preds = %bb.c
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.eu = load i64, ptr %i.et, align 8, !noundef !41 ; 2 uses
  %i.ev = icmp ult i64 %i.eu, 144115188075855872
  tail call void @llvm.assume(i1 %i.ev)
  %i.ew = icmp eq i64 %i.eu, 0
  br i1 %i.ew, label %bb.aj, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspansNtNtB4_8layouter12GridLayouter26check_for_unbreakable_rows.exit

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspansNtNtB4_8layouter12GridLayouter26check_for_unbreakable_rows.exit: ; preds = %bb.ag, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans19UnbreakableRowGroupEBH_.exit49, %bb.ai
  %i.ex = load ptr, ptr %i.w, align 8, !nonnull !41, !align !46, !noundef !41 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 64
  %i.ez = load i64, ptr %i.ey, align 8, !noundef !41 ; 2 uses
  %i.fa = icmp ult i64 %1, %i.ez
  br i1 %i.fa, label %bb.ak, label %bb.al

bb.aj:                                            ; preds = %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter19layout_relative_row.exit, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter25may_progress_with_repeats.exit75.thread134, %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter15layout_auto_row.exit.thread125, %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter15layout_auto_row.exit, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowE8push_mutBL_.exit, %bb.ai
  %i.fb = load i64, ptr %i.ac, align 8, !noundef !41
  %i.fc = call i64 @llvm.usub.sat.i64(i64 %i.fb, i64 1)
  store i64 %i.fc, ptr %i.ac, align 8
  br label %bb.ea

bb.ak:                                            ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspansNtNtB4_8layouter12GridLayouter26check_for_unbreakable_rows.exit
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 56
  %i.fe = load ptr, ptr %i.fd, align 8, !nonnull !41, !noundef !41
  %i.ff = getelementptr inbounds nuw [32 x i8], ptr %i.fe, i64 %1 ; 5 uses
  %i.fg = load i64, ptr %i.ff, align 8, !range !52, !noundef !41
  switch i64 %i.fg, label %default.unreachable [
    i64 0, label %bb.am
    i64 1, label %bb.cy
    i64 2, label %bb.dt
  ]

bb.al:                                            ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspansNtNtB4_8layouter12GridLayouter26check_for_unbreakable_rows.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %i.ez, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @435) #53
  unreachable

default.unreachable:                              ; preds = %bb.ak
  unreachable

bb.am:                                            ; preds = %bb.ak
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29958)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !29959
  %i.fh = load i64, ptr %i.ac, align 8, !alias.scope !29958, !noalias !29960, !noundef !41
  call fastcc void @_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter16measure_auto_row(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(488) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %2, i64 noundef range(i64 0, 192153584101141163) %3, i64 noundef %1, i1 noundef zeroext true, i64 noundef %i.fh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null), !inline_history !29814
  %i.fi = load i64, ptr %i.u, align 8, !range !60, !noalias !29959, !noundef !41 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !noalias !29959 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.fm = load i64, ptr %i.fl, align 8, !noalias !29959 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !29959
  switch i64 %i.fi, label %bb.ar [
    i64 -2, label %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter15layout_auto_row.exit.thread
    i64 -1, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am
  %i.fn = tail call fastcc { ptr, i64 } @_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter13finish_region(ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %2, i1 noundef zeroext false), !inline_history !29814 ; 2 uses
  %i.fo = extractvalue { ptr, i64 } %i.fn, 0      ; 2 uses
  %.not95.i = icmp eq ptr %i.fo, null
  br i1 %.not95.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fp = extractvalue { ptr, i64 } %i.fn, 1
  br label %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter15layout_auto_row.exit.thread

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !29959
  %i.fq = load i64, ptr %i.ac, align 8, !alias.scope !29958, !noalias !29960, !noundef !41
  call fastcc void @_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter16measure_auto_row(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(488) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %2, i64 noundef range(i64 0, 192153584101141163) %3, i64 noundef %1, i1 noundef zeroext false, i64 noundef %i.fq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null), !inline_history !29814
  %i.fr = load i64, ptr %i.t, align 8, !range !60, !noalias !29959, !noundef !41 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8, !noalias !29959 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.fv = load i64, ptr %i.fu, align 8, !noalias !29959 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !29959
  switch i64 %i.fr, label %bb.ar [
    i64 -2, label %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter15layout_auto_row.exit.thread
    i64 -1, label %bb.aq
  ], !prof !138

bb.aq:                                            ; preds = %bb.ap
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @423) #53, !inline_history !29814
  unreachable

bb.ar:                                            ; preds = %bb.ap, %bb.am
  %.sroa.16.0 = phi i64 [ %i.fm, %bb.am ], [ %i.fv, %bb.ap ] ; 10 uses
  %.sroa.8.0 = phi ptr [ %i.fk, %bb.am ], [ %i.ft, %bb.ap ] ; 13 uses
  %.sroa.083.0 = phi i64 [ %i.fi, %bb.am ], [ %i.fr, %bb.ap ] ; 6 uses
  %i.fw = icmp ult i64 %.sroa.16.0, 1152921504606846976
  tail call void @llvm.assume(i1 %i.fw)
  switch i64 %.sroa.16.0, label %bb.at [
    i64 0, label %bb.ba
    i64 1, label %bb.as
  ]

bb.as:                                            ; preds = %bb.ar
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0) ]
  %i.fx = load double, ptr %.sroa.8.0, align 8, !noundef !41 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !29959
  invoke fastcc void @_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter17layout_single_row(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %2, i64 noundef range(i64 0, 192153584101141163) %3, double noundef %i.fx, i64 noundef %1)
          to label %bb.av unwind label %.loopexit.split-lp, !inline_history !29814

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.090.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !29959
  invoke void @_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library6layout7regionsNtB5_7Regions4iter(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(488) %0)
          to label %bb.bc unwind label %.loopexit.split-lp, !inline_history !29814

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEEECs7tN9tvpkfrg_12typst_layout.exit58: ; preds = %.body.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter7IterMutNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterB1C_EEECs7tN9tvpkfrg_12typst_layout.exit.i, %.loopexit.split-lp, %.loopexit, %bb.cm
  %.pn.i = phi { ptr, i32 } [ %i.mn, %bb.cm ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.il, %.body.i.i ], [ %.pn.i257, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter7IterMutNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterB1C_EEECs7tN9tvpkfrg_12typst_layout.exit.i ] ; 2 uses
  %i.fy = icmp eq i64 %.sroa.083.0, 0
  br i1 %i.fy, label %common.resume, label %bb.au

bb.au:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEEECs7tN9tvpkfrg_12typst_layout.exit58
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0) ]
  %i.fz = shl nuw i64 %.sroa.083.0, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0, i64 noundef %i.fz, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !29961
  br label %common.resume

.loopexit:                                        ; preds = %bb.cw
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEEECs7tN9tvpkfrg_12typst_layout.exit58

.loopexit.split-lp:                               ; preds = %bb.ca, %bb.bo, %bb.as, %bb.at, %bb.ax, %bb.ct, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i._crit_edge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEEECs7tN9tvpkfrg_12typst_layout.exit58

bb.av:                                            ; preds = %bb.as
  %i.ga = load i64, ptr %i.s, align 8, !range !52, !noalias !29959, !noundef !41 ; 2 uses
  %i.gb = icmp eq i64 %i.ga, 2
  %i.gc = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !noalias !29959 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.gf = load i64, ptr %i.ge, align 8, !noalias !29959 ; 2 uses
  br i1 %i.gb, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !29959
  br label %bb.ba

bb.ax:                                            ; preds = %bb.av
  %.sroa.674.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.1038.0..sroa_idx39.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1038.0..sroa_idx39.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.674.0..sroa_idx.i, i64 24, i1 false), !noalias !29959
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !29959
  store i64 %i.ga, ptr %i.r, align 8, !noalias !29959
  %.sroa.632.0..sroa_idx33.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.gd, ptr %.sroa.632.0..sroa_idx33.i, align 8, !noalias !29959
  %.sroa.835.0..sroa_idx36.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %i.gf, ptr %.sroa.835.0..sroa_idx36.i, align 8, !noalias !29959
  invoke fastcc void @_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter8push_row(ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.r, i64 noundef %1, i1 noundef zeroext true)
          to label %bb.ay unwind label %.loopexit.split-lp, !inline_history !29814

bb.ay:                                            ; preds = %bb.ax
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.gh = load i64, ptr %i.gg, align 8, !range !49, !alias.scope !29958, !noalias !29960, !noundef !41
  %i.gi = trunc nuw i64 %i.gh to i1
  br i1 %i.gi, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.gk = load double, ptr %i.gj, align 8, !alias.scope !29958, !noalias !29960, !noundef !41
  %i.gl = fadd double %i.fx, %i.gk                ; 2 uses
  %.inv105.i = fcmp ord double %i.gl, 0.000000e+00
  %spec.store.select.i = select i1 %.inv105.i, double %i.gl, double 0.000000e+00
  store double %spec.store.select.i, ptr %i.gj, align 8, !alias.scope !29958, !noalias !29960
  br label %bb.ba

bb.ba:                                            ; preds = %.thread, %.loopexit275, %bb.ar, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEEECs7tN9tvpkfrg_12typst_layout.exit, %bb.az, %bb.ay, %bb.aw
  %.sroa.10.1.i = phi i64 [ %i.mx, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEEECs7tN9tvpkfrg_12typst_layout.exit ], [ %i.gf, %bb.aw ], [ undef, %bb.ar ], [ undef, %bb.ay ], [ undef, %bb.az ], [ %.sroa.7.0.copyload, %.loopexit275 ], [ %i.kx, %.thread ]
  %.sroa.0.1.i34 = phi ptr [ %i.mw, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEEECs7tN9tvpkfrg_12typst_layout.exit ], [ %i.gd, %bb.aw ], [ null, %bb.ar ], [ null, %bb.ay ], [ null, %bb.az ], [ %.sroa.5.0.copyload265, %.loopexit275 ], [ %i.kw, %.thread ] ; 2 uses
  %i.gm = icmp eq i64 %.sroa.083.0, 0
  br i1 %i.gm, label %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter15layout_auto_row.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0) ]
  %i.gn = shl nuw i64 %.sroa.083.0, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0, i64 noundef %i.gn, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !29962
  br label %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter15layout_auto_row.exit

bb.bc:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.090.sroa.0, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false), !noalias !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !29959
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0) ]
  %i.go = getelementptr [8 x i8], ptr %.sroa.8.0, i64 %.sroa.16.0
  %i.gp = getelementptr i8, ptr %i.go, i64 -8
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gr = load ptr, ptr %i.gq, align 8, !alias.scope !29958, !noalias !29960, !nonnull !41, !noundef !41 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.gt = load i64, ptr %i.gs, align 8, !alias.scope !29958, !noalias !29960, !noundef !41 ; 2 uses
  %.idx483 = shl nuw nsw i64 %i.gt, 6
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 %.idx483
  %.not.not.not.i.not.not.not.not.not.not478.not = icmp eq i64 %i.gt, 0
  br i1 %.not.not.not.i.not.not.not.not.not.not478.not, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_BS_NtBS_12GridLayouter15layout_auto_row0EBW_.exit, label %.lr.ph480

bb.bd:                                            ; preds = %.lr.ph480
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gw, i64 64 ; 2 uses
  %.not.not.not.i.not.not.not.not.not.not.not = icmp eq ptr %i.gv, %i.gu
  br i1 %.not.not.not.i.not.not.not.not.not.not.not, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_BS_NtBS_12GridLayouter15layout_auto_row0EBW_.exit, label %.lr.ph480

.lr.ph480:                                        ; preds = %bb.bc, %bb.bd
  %i.gw = phi ptr [ %i.gv, %bb.bd ], [ %i.gr, %bb.bc ] ; 2 uses
  %.val.i63 = load i64, ptr %i.gw, align 8, !range !52, !noalias !29963, !noundef !41
  %i.gx = icmp eq i64 %.val.i63, 2
  br i1 %i.gx, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_BS_NtBS_12GridLayouter15layout_auto_row0EBW_.exit, label %bb.bd

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_BS_NtBS_12GridLayouter15layout_auto_row0EBW_.exit: ; preds = %bb.bd, %.lr.ph480, %bb.bc
  %.not.not.not.i.not.not.not.not.not.not.lcssa = phi i64 [ 0, %bb.bc ], [ 0, %bb.bd ], [ 1, %.lr.ph480 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !29959
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.p, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.090.sroa.0, i64 72, i1 false), !noalias !29959
  %.sroa.040.i.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.040.i.sroa.6.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.090.sroa.0)
  %.sroa.040.i.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 72 ; 3 uses
  store i64 0, ptr %.sroa.040.i.sroa.0.sroa.4.0..sroa_idx, align 8, !noalias !29959
  %.sroa.040.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 80 ; 3 uses
  store ptr %.sroa.8.0, ptr %.sroa.040.i.sroa.4.0..sroa_idx, align 8, !noalias !29959
  %.sroa.040.i.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 88 ; 2 uses
  store ptr %i.gp, ptr %.sroa.040.i.sroa.5.0..sroa_idx, align 8, !noalias !29959
  %.sroa.2.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %i.p, i64 112 ; 3 uses
  store i64 %.not.not.not.i.not.not.not.not.not.not.lcssa, ptr %.sroa.2.0..sroa_idx.i33, align 8, !noalias !29959
  %.sroa.6.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.9.8..sroa.6.0..sroa_idx5.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.gy = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.gz = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.hb = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.hc = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %.sroa.04.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.04.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 168
  br label %bb.be

bb.be:                                            ; preds = %bb.cx, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_BS_NtBS_12GridLayouter15layout_auto_row0EBW_.exit
  %i.hg = phi i64 [ %.pr114, %bb.cx ], [ %.not.not.not.i.not.not.not.not.not.not.lcssa, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_BS_NtBS_12GridLayouter15layout_auto_row0EBW_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !29959
  %.not98.i = icmp eq i64 %i.hg, 0
  br i1 %.not98.i, label %bb.bf, label %bb.bj, !prof !43

bb.bf:                                            ; preds = %bb.be
  call void @llvm.experimental.noalias.scope.decl(metadata !29964)
  call void @llvm.experimental.noalias.scope.decl(metadata !29965)
  %i.hh = load i64, ptr %i.p, align 8, !range !52, !alias.scope !29966, !noalias !29967, !noundef !41 ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.hh, 2
  br i1 %.not.i.i.i.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceINtNtNtCsdaEETE4DqmE_13typst_library6layout4axes4AxesNtNtB1B_3abs3AbsEEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceINtNtNtCsdaEETE4DqmE_13typst_library6layout4axes4AxesNtNtB1B_3abs3AbsEEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs7tN9tvpkfrg_12typst_layout.exit.i.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceINtNtNtCsdaEETE4DqmE_13typst_library6layout4axes4AxesNtNtB1B_3abs3AbsEEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %bb.bf
  %.not3.i.i.i.i = icmp eq i64 %i.hh, 0
  %spec.store.select.i.i.i.i61 = select i1 %.not3.i.i.i.i, i64 2, i64 0
  store i64 %spec.store.select.i.i.i.i61, ptr %i.p, align 8, !alias.scope !29966, !noalias !29967
  %i.hi = trunc nuw i64 %i.hh to i1
  br i1 %i.hi, label %bb.bh, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceINtNtNtCsdaEETE4DqmE_13typst_library6layout4axes4AxesNtNtB1B_3abs3AbsEEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceINtNtNtCsdaEETE4DqmE_13typst_library6layout4axes4AxesNtNtB1B_3abs3AbsEEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i: ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceINtNtNtCsdaEETE4DqmE_13typst_library6layout4axes4AxesNtNtB1B_3abs3AbsEEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs7tN9tvpkfrg_12typst_layout.exit.i.i.i, %bb.bf
  %i.hj = load i64, ptr %i.gy, align 8, !range !52, !alias.scope !29968, !noalias !29969, !noundef !41 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.hj, 2
  br i1 %.not.i.i.i.i.i, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_9enumerate9EnumerateINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceINtNtNtCsdaEETE4DqmE_13typst_library6layout4axes4AxesNtNtB2f_3abs3AbsEEINtNtB7_3map3MapIB1p_INtNtNtBb_5slice4iter4IterB31_EINtNtB7_5cycle5CycleINtNtBb_6option4IterB31_EEENCNvMs0_NtB2f_7regionsNtB52_7Regions4iter0EEEINtB3H_7IterMutB31_EEINtB5_7ZipImplBW_B5D_E4nextCs7tN9tvpkfrg_12typst_layout.exit, label %bb.bg

bb.bg:                                            ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceINtNtNtCsdaEETE4DqmE_13typst_library6layout4axes4AxesNtNtB1B_3abs3AbsEEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i
  %i.hk = load ptr, ptr %i.gz, align 8, !alias.scope !29970, !noalias !29971, !noundef !41 ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.hk, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %bb.bg
  %i.hl = load ptr, ptr %i.ha, align 8, !alias.scope !29972, !noalias !29971, !nonnull !41, !noundef !41
  %i.hm = icmp eq ptr %i.hk, %i.hl                ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %spec.select.i.i.i.i.i.i.i.i = select i1 %i.hm, ptr null, ptr %i.hn
  store ptr %spec.select.i.i.i.i.i.i.i.i, ptr %i.gz, align 8, !alias.scope !29970, !noalias !29971
  br i1 %i.hm, label %select.unfold.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtB6_5cycle5CycleINtNtBa_6option4IterB1p_EEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.thread5.i.i.i.i.i.i

select.unfold.i.i.i.i.i.i.i:                      ; preds = %.sink.split.i.i.i.i.i.i.i.i, %bb.bg
  %i.ho = trunc nuw i64 %i.hj to i1
  br i1 %i.ho, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtB6_5cycle5CycleINtNtBa_6option4IterB1p_EEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_9enumerate9EnumerateINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceINtNtNtCsdaEETE4DqmE_13typst_library6layout4axes4AxesNtNtB2f_3abs3AbsEEINtNtB7_3map3MapIB1p_INtNtNtBb_5slice4iter4IterB31_EINtNtB7_5cycle5CycleINtNtBb_6option4IterB31_EEENCNvMs0_NtB2f_7regionsNtB52_7Regions4iter0EEEINtB3H_7IterMutB31_EEINtB5_7ZipImplBW_B5D_E4nextCs7tN9tvpkfrg_12typst_layout.exit

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtB6_5cycle5CycleINtNtBa_6option4IterB1p_EEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i: ; preds = %select.unfold.i.i.i.i.i.i.i
  %i.hp = load ptr, ptr %i.hc, align 8, !alias.scope !29973, !noalias !29974, !align !46, !noundef !41 ; 2 uses
  store ptr null, ptr %i.hc, align 8, !alias.scope !29973, !noalias !29974
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hp, null
  %.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.hb, align 8, !alias.scope !29975, !noalias !29974, !align !46
  %spec.select.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i, ptr %.val.i.i.i.i.i.i.i.i.i.i, ptr %i.hp ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %spec.select.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_9enumerate9EnumerateINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceINtNtNtCsdaEETE4DqmE_13typst_library6layout4axes4AxesNtNtB2f_3abs3AbsEEINtNtB7_3map3MapIB1p_INtNtNtBb_5slice4iter4IterB31_EINtNtB7_5cycle5CycleINtNtBb_6option4IterB31_EEENCNvMs0_NtB2f_7regionsNtB52_7Regions4iter0EEEINtB3H_7IterMutB31_EEINtB5_7ZipImplBW_B5D_E4nextCs7tN9tvpkfrg_12typst_layout.exit, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtB6_5cycle5CycleINtNtBa_6option4IterB1p_EEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.thread5.i.i.i.i.i.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtB6_5cycle5CycleINtNtBa_6option4IterB1p_EEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.thread5.i.i.i.i.i.i: ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtB6_5cycle5CycleINtNtBa_6option4IterB1p_EEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i.i
  %.sroa.0.0.i2.i8.i.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i.i.i.i.i.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtB6_5cycle5CycleINtNtBa_6option4IterB1p_EEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i ], [ %i.hk, %.sink.split.i.i.i.i.i.i.i.i ]
  %.val.i.i.i.i.i.i = load ptr, ptr %i.hd, align 8, !alias.scope !29976, !noalias !29971, !nonnull !41, !align !46, !noundef !41
  %i.hq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 32
  br label %bb.bh

bb.bh:                                            ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceINtNtNtCsdaEETE4DqmE_13typst_library6layout4axes4AxesNtNtB1B_3abs3AbsEEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs7tN9tvpkfrg_12typst_layout.exit.i.i.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtB6_5cycle5CycleINtNtBa_6option4IterB1p_EEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.thread5.i.i.i.i.i.i
  %.sroa.9.1.in.i.i = phi ptr [ %.sroa.0.0.i2.i8.i.i.i.i.i.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtB6_5cycle5CycleINtNtBa_6option4IterB1p_EEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.thread5.i.i.i.i.i.i ], [ %.sroa.9.8..sroa.6.0..sroa_idx5.i.i.sroa_idx.i.i, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceINtNtNtCsdaEETE4DqmE_13typst_library6layout4axes4AxesNtNtB1B_3abs3AbsEEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs7tN9tvpkfrg_12typst_layout.exit.i.i.i ]
  %.sroa.6.1.in.i.i = phi ptr [ %i.hq, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtB6_5cycle5CycleINtNtBa_6option4IterB1p_EEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.thread5.i.i.i.i.i.i ], [ %.sroa.6.0..sroa_idx5.i.i.i.i, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceINtNtNtCsdaEETE4DqmE_13typst_library6layout4axes4AxesNtNtB1B_3abs3AbsEEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs7tN9tvpkfrg_12typst_layout.exit.i.i.i ]
  %.sroa.6.1.i.i = load double, ptr %.sroa.6.1.in.i.i, align 8, !noalias !29977
  %.sroa.9.1.i.i = load double, ptr %.sroa.9.1.in.i.i, align 8, !noalias !29977
  %i.hr = load i64, ptr %.sroa.040.i.sroa.0.sroa.4.0..sroa_idx, align 8, !alias.scope !29978, !noalias !29977, !noundef !41 ; 2 uses
  %i.hs = add i64 %i.hr, 1
  store i64 %i.hs, ptr %.sroa.040.i.sroa.0.sroa.4.0..sroa_idx, align 8, !alias.scope !29978, !noalias !29977
  %i.ht = load ptr, ptr %.sroa.040.i.sroa.4.0..sroa_idx, align 8, !alias.scope !29979, !noalias !29964, !nonnull !41, !noundef !41 ; 3 uses
  %i.hu = load ptr, ptr %.sroa.040.i.sroa.5.0..sroa_idx, align 8, !alias.scope !29979, !noalias !29964, !nonnull !41, !noundef !41
  %i.hv = icmp eq ptr %i.ht, %i.hu
  br i1 %i.hv, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_9enumerate9EnumerateINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceINtNtNtCsdaEETE4DqmE_13typst_library6layout4axes4AxesNtNtB2f_3abs3AbsEEINtNtB7_3map3MapIB1p_INtNtNtBb_5slice4iter4IterB31_EINtNtB7_5cycle5CycleINtNtBb_6option4IterB31_EEENCNvMs0_NtB2f_7regionsNtB52_7Regions4iter0EEEINtB3H_7IterMutB31_EEINtB5_7ZipImplBW_B5D_E4nextCs7tN9tvpkfrg_12typst_layout.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  store ptr %i.hw, ptr %.sroa.040.i.sroa.4.0..sroa_idx, align 8, !alias.scope !29979, !noalias !29964
  store i64 %i.hr, ptr %i.o, align 8, !alias.scope !29964, !noalias !29965
  store double %.sroa.6.1.i.i, ptr %.sroa.04.sroa.4.0..sroa_idx.i, align 8, !alias.scope !29964, !noalias !29965
  store double %.sroa.9.1.i.i, ptr %.sroa.04.sroa.5.0..sroa_idx.i, align 8, !alias.scope !29964, !noalias !29965
  br label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_9enumerate9EnumerateINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceINtNtNtCsdaEETE4DqmE_13typst_library6layout4axes4AxesNtNtB2f_3abs3AbsEEINtNtB7_3map3MapIB1p_INtNtNtBb_5slice4iter4IterB31_EINtNtB7_5cycle5CycleINtNtBb_6option4IterB31_EEENCNvMs0_NtB2f_7regionsNtB52_7Regions4iter0EEEINtB3H_7IterMutB31_EEINtB5_7ZipImplBW_B5D_E4nextCs7tN9tvpkfrg_12typst_layout.exit

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_9enumerate9EnumerateINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceINtNtNtCsdaEETE4DqmE_13typst_library6layout4axes4AxesNtNtB2f_3abs3AbsEEINtNtB7_3map3MapIB1p_INtNtNtBb_5slice4iter4IterB31_EINtNtB7_5cycle5CycleINtNtBb_6option4IterB31_EEENCNvMs0_NtB2f_7regionsNtB52_7Regions4iter0EEEINtB3H_7IterMutB31_EEINtB5_7ZipImplBW_B5D_E4nextCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceINtNtNtCsdaEETE4DqmE_13typst_library6layout4axes4AxesNtNtB1B_3abs3AbsEEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i, %select.unfold.i.i.i.i.i.i.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtB6_5cycle5CycleINtNtBa_6option4IterB1p_EEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i, %bb.bh, %bb.bi
  %.sink.i = phi ptr [ %i.ht, %bb.bi ], [ null, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceINtNtNtCsdaEETE4DqmE_13typst_library6layout4axes4AxesNtNtB1B_3abs3AbsEEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i ], [ null, %select.unfold.i.i.i.i.i.i.i ], [ null, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtNtB6_5cycle5CycleINtNtBa_6option4IterB1p_EEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i ], [ null, %bb.bh ] ; 2 uses
  store ptr %.sink.i, ptr %i.he, align 8, !alias.scope !29964, !noalias !29965
  br label %bb.bk

bb.bj:                                            ; preds = %bb.be
  store i64 0, ptr %.sroa.2.0..sroa_idx.i33, align 8, !noalias !29959
  call fastcc void @_RNvMNtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB2_3ZipINtNtB4_9enumerate9EnumerateINtNtB4_5chain5ChainINtNtNtB6_7sources4once4OnceINtNtNtCsdaEETE4DqmE_13typst_library6layout4axes4AxesNtNtB2c_3abs3AbsEEINtNtB4_3map3MapIB1m_INtNtNtB8_5slice4iter4IterB2Y_EINtNtB4_5cycle5CycleINtNtB8_6option4IterB2Y_EEENCNvMs0_NtB2c_7regionsNtB4Z_7Regions4iter0EEEINtB3E_7IterMutB2Y_EE9super_nthCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.o, ptr noalias nofree noundef align 8 dereferenceable(112) %i.p, i64 noundef %i.hg), !inline_history !29814
  %.pre = load ptr, ptr %i.he, align 8, !noalias !29959
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_9enumerate9EnumerateINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceINtNtNtCsdaEETE4DqmE_13typst_library6layout4axes4AxesNtNtB2f_3abs3AbsEEINtNtB7_3map3MapIB1p_INtNtNtBb_5slice4iter4IterB31_EINtNtB7_5cycle5CycleINtNtBb_6option4IterB31_EEENCNvMs0_NtB2f_7regionsNtB52_7Regions4iter0EEEINtB3H_7IterMutB31_EEINtB5_7ZipImplBW_B5D_E4nextCs7tN9tvpkfrg_12typst_layout.exit
  %i.hx = phi ptr [ %.pre, %bb.bj ], [ %.sink.i, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_9enumerate9EnumerateINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceINtNtNtCsdaEETE4DqmE_13typst_library6layout4axes4AxesNtNtB2f_3abs3AbsEEINtNtB7_3map3MapIB1p_INtNtNtBb_5slice4iter4IterB31_EINtNtB7_5cycle5CycleINtNtBb_6option4IterB31_EEENCNvMs0_NtB2f_7regionsNtB52_7Regions4iter0EEEINtB3H_7IterMutB31_EEINtB5_7ZipImplBW_B5D_E4nextCs7tN9tvpkfrg_12typst_layout.exit ] ; 2 uses
  %.not99.i = icmp eq ptr %i.hx, null
  br i1 %.not99.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hy = load i64, ptr %i.o, align 8, !noalias !29959, !noundef !41
  %i.hz = load double, ptr %.sroa.04.sroa.5.0..sroa_idx.i, align 8, !noalias !29959, !noundef !41
  %.not102.i = icmp eq i64 %i.hy, 0
  br i1 %.not102.i, label %bb.cw, label %bb.cv

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !29959
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !29959
  call void @llvm.experimental.noalias.scope.decl(metadata !29980)
  call void @llvm.experimental.noalias.scope.decl(metadata !29981)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !29982
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !29983
  %i.ib = mul nuw nsw i64 %.sroa.16.0, 48         ; 2 uses
  %or.cond.i.i.i.i = icmp samesign ugt i64 %.sroa.16.0, 192153584101141162
  br i1 %or.cond.i.i.i.i, label %bb.bo, label %bb.bn, !prof !61

bb.bn:                                            ; preds = %bb.bm
  %i.ic = icmp eq i64 %.sroa.16.0, 0
  br i1 %i.ic, label %bb.br, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %bb.bn
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !29984
  %i.id = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.ib, i64 noundef range(i64 1, 17) 8) #56, !noalias !29984 ; 3 uses
  %i.ie = icmp eq ptr %i.id, null
  br i1 %i.ie, label %bb.bo, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i

bb.bo:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i, %bb.bm
  %.sroa.10.0.ph.i.i.i = phi i64 [ %i.ib, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i ], [ undef, %bb.bm ]
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i ], [ 0, %bb.bm ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.sroa.10.0.ph.i.i.i) #57
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.bo
  unreachable

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i
  store i64 %.sroa.16.0, ptr %i.b, align 8, !noalias !29983
  %i.if = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.id, ptr %i.if, align 8, !noalias !29983
  %i.ig = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29985)
  call void @llvm.experimental.noalias.scope.decl(metadata !29986)
  %4 = load double, ptr %i.ia, align 8, !alias.scope !29980, !noalias !29987, !noundef !41
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.bp, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i
  %.val10.i.i.i.i.i.i.i = phi i64 [ %i.ij, %bb.bp ], [ 0, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i ] ; 4 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0, i64 %.val10.i.i.i.i.i.i.i
  %.val15.i.i.i.i.i.i.i = load double, ptr %i.ih, align 8, !alias.scope !29981, !noalias !29988, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !29989
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB2_5Frame4soft(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, double noundef %4, double noundef %.val15.i.i.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @239)
          to label %bb.bp unwind label %.body.i.i, !noalias !29990

bb.bp:                                            ; preds = %.preheader.i.i.i.i
  %i.ii = getelementptr inbounds nuw [48 x i8], ptr %i.id, i64 %.val10.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ii, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !29991
  %i.ij = add nuw nsw i64 %.val10.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !29989
  %i.ik = icmp eq i64 %i.ij, %.sroa.16.0
  br i1 %i.ik, label %bb.bt, label %.preheader.i.i.i.i

.body.i.i:                                        ; preds = %.preheader.i.i.i.i
  %i.il = landingpad { ptr, i32 }
          cleanup
  store i64 %.val10.i.i.i.i.i.i.i, ptr %i.ig, align 8, !alias.scope !29992, !noalias !29993
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #54
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEEECs7tN9tvpkfrg_12typst_layout.exit58 unwind label %bb.bq, !noalias !29994

bb.bq:                                            ; preds = %.body.i.i
  %i.im = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !29994
  unreachable

bb.br:                                            ; preds = %bb.bn
  store i64 0, ptr %i.b, align 8, !noalias !29983
  %5 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %5, align 8, !noalias !29983
  %6 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %6, align 8, !alias.scope !29992, !noalias !29993
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !29995
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !29983
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @424) #57
          to label %bb.bs unwind label %.loopexit.split-lp.i, !noalias !29996

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter7IterMutNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterB1C_EEECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.cg, %.loopexit.split-lp.i, %.loopexit68.i
  %.pn.i257 = phi { ptr, i32 } [ %.us-phi85.i, %bb.cg ], [ %lpad.loopexit.i, %.loopexit68.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #54
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEEECs7tN9tvpkfrg_12typst_layout.exit58 unwind label %bb.cj, !noalias !29996

.loopexit68.i:                                    ; preds = %._crit_edge.i, %bb.by, %.loopexit.i, %bb.bu
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter7IterMutNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterB1C_EEECs7tN9tvpkfrg_12typst_layout.exit.i

.loopexit.split-lp.i:                             ; preds = %bb.br
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter7IterMutNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterB1C_EEECs7tN9tvpkfrg_12typst_layout.exit.i

bb.bs:                                            ; preds = %bb.br
  unreachable

bb.bt:                                            ; preds = %bb.bp
  store i64 %.sroa.16.0, ptr %i.ig, align 8, !alias.scope !29992, !noalias !29993
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !29995
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !29983
  %i.in = add nsw i64 %.sroa.16.0, -1
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.8.0, i64 8
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !alias.scope !29980, !noalias !29997, !nonnull !41, !noundef !41 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.is = load i64, ptr %i.ir, align 8, !alias.scope !29980, !noalias !29997, !noundef !41 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.is, 3
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 %.idx.i
  %i.iu = icmp eq i64 %i.is, 0
  br i1 %i.iu, label %.loopexit275, label %.lr.ph99.i

.lr.ph99.i:                                       ; preds = %bb.bt
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.iw = load double, ptr %i.iv, align 8, !alias.scope !29980, !noalias !29997, !noundef !41
  %i.ix = load double, ptr %.sroa.8.0, align 8, !alias.scope !29981, !noalias !29998, !noundef !41
  %i.iy = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 400
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.10.0..sroa_idx.i253 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %.sroa.16.0..sroa_idx.i255 = getelementptr inbounds nuw i8, ptr %i.f, i64 57
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 209
  %.sroa.4.0..sroa_idx.i256 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.525.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.jb = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.255.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %.sroa.456.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.657.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.10.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.je = insertelement <2 x double> poison, double %i.ix, i64 0
  %i.jf = insertelement <2 x double> %i.je, double %i.iw, i64 1
  br label %bb.bu

bb.bu:                                            ; preds = %bb.ck, %.lr.ph99.i
  %.sroa.04.094.i = phi double [ 0.000000e+00, %.lr.ph99.i ], [ %spec.store.select3.i259, %bb.ck ] ; 3 uses
  %.sroa.050.093.i = phi ptr [ %i.iq, %.lr.ph99.i ], [ %i.jg, %bb.ck ] ; 2 uses
  %.sroa.8.092.i = phi i64 [ 0, %.lr.ph99.i ], [ %i.jh, %bb.ck ] ; 5 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.050.093.i, i64 8 ; 2 uses
  %i.jh = add nuw nsw i64 %.sroa.8.092.i, 1
  %i.ji = load double, ptr %.sroa.050.093.i, align 8, !noalias !29996, !noundef !41
  %i.jj = load ptr, ptr %i.w, align 8, !alias.scope !29980, !noalias !29997, !nonnull !41, !align !46, !noundef !41 ; 2 uses
  %i.jk = invoke noundef align 8 ptr @_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolveNtB5_8CellGrid4cell(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.jj, i64 noundef %.sroa.8.092.i, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @425)
          to label %bb.bv unwind label %.loopexit68.i, !noalias !29996 ; 4 uses

bb.bv:                                            ; preds = %bb.bu
  %.not41.i = icmp eq ptr %i.jk, null
  br i1 %.not41.i, label %bb.ck, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 56
  %i.jm = load i64, ptr %i.jl, align 8, !range !53, !noalias !29996, !noundef !41
  %i.jn = icmp eq i64 %i.jm, 1
  br i1 %i.jn, label %bb.bx, label %bb.ck

bb.bx:                                            ; preds = %bb.bw
  %i.jo = getelementptr i8, ptr %i.jk, i64 48
  %.val.i = load i64, ptr %i.jo, align 8, !noalias !29996 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29999)
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jj, i64 176
  %i.jq = load i8, ptr %i.jp, align 8, !range !54, !noalias !30000, !noundef !41
  %i.jr = trunc nuw i8 %i.jq to i1
  %i.js = shl i64 %.val.i, 1
  %i.jt = add i64 %i.js, -1
  %.sroa.0.0.i47.i = select i1 %i.jr, i64 %i.jt, i64 %.val.i
  %i.ju = load ptr, ptr %i.ip, align 8, !alias.scope !30001, !noalias !29997, !nonnull !41, !noundef !41
  %i.jv = load i64, ptr %i.ir, align 8, !alias.scope !30001, !noalias !29997, !noundef !41
  %i.jw = call noundef range(i64 0, 2305843009213693952) i64 @llvm.usub.sat.i64(i64 %i.jv, i64 %.sroa.8.092.i)
  %..i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.jw, i64 %.sroa.0.0.i47.i) ; 4 uses
  %invariant.gep.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.ju, i64 %.sroa.8.092.i ; 9 uses
  %.not.i.i.i.i.i.i260 = icmp eq i64 %..i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i260, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.bx
  %xtraiter = and i64 %..i.i.i.i.i.i.i, 7         ; 3 uses
  %i.jx = icmp ult i64 %..i.i.i.i.i.i.i, 8
  br i1 %i.jx, label %.lr.ph.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %..i.i.i.i.i.i.i, -8
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader.new
  %.sroa.0.010.i.i.i.i.i.i = phi double [ -0.000000e+00, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %i.kn, %.lr.ph.i.i.i.i.i.i ]
  %.sroa.02.09.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %i.kl, %.lr.ph.i.i.i.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i.i.i ]
  %gep.i.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i, i64 %.sroa.02.09.i.i.i.i.i.i
  %.val8.i.i.i.i.i.i = load double, ptr %gep.i.i.i.i.i.i, align 8, !noalias !30002, !noundef !41
  %i.jy = fadd double %.sroa.0.010.i.i.i.i.i.i, %.val8.i.i.i.i.i.i
  %i.jz = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i, i64 %.sroa.02.09.i.i.i.i.i.i
  %gep.i.i.i.i.i.i.1 = getelementptr i8, ptr %i.jz, i64 8
  %.val8.i.i.i.i.i.i.1 = load double, ptr %gep.i.i.i.i.i.i.1, align 8, !noalias !30002, !noundef !41
  %i.ka = fadd double %i.jy, %.val8.i.i.i.i.i.i.1
  %i.kb = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i, i64 %.sroa.02.09.i.i.i.i.i.i
  %gep.i.i.i.i.i.i.2 = getelementptr i8, ptr %i.kb, i64 16
  %.val8.i.i.i.i.i.i.2 = load double, ptr %gep.i.i.i.i.i.i.2, align 8, !noalias !30002, !noundef !41
  %i.kc = fadd double %i.ka, %.val8.i.i.i.i.i.i.2
  %i.kd = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i, i64 %.sroa.02.09.i.i.i.i.i.i
  %gep.i.i.i.i.i.i.3 = getelementptr i8, ptr %i.kd, i64 24
  %.val8.i.i.i.i.i.i.3 = load double, ptr %gep.i.i.i.i.i.i.3, align 8, !noalias !30002, !noundef !41
  %i.ke = fadd double %i.kc, %.val8.i.i.i.i.i.i.3
  %i.kf = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i, i64 %.sroa.02.09.i.i.i.i.i.i
  %gep.i.i.i.i.i.i.4 = getelementptr i8, ptr %i.kf, i64 32
  %.val8.i.i.i.i.i.i.4 = load double, ptr %gep.i.i.i.i.i.i.4, align 8, !noalias !30002, !noundef !41
  %i.kg = fadd double %i.ke, %.val8.i.i.i.i.i.i.4
  %i.kh = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i, i64 %.sroa.02.09.i.i.i.i.i.i
  %gep.i.i.i.i.i.i.5 = getelementptr i8, ptr %i.kh, i64 40
  %.val8.i.i.i.i.i.i.5 = load double, ptr %gep.i.i.i.i.i.i.5, align 8, !noalias !30002, !noundef !41
  %i.ki = fadd double %i.kg, %.val8.i.i.i.i.i.i.5
  %i.kj = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i, i64 %.sroa.02.09.i.i.i.i.i.i
  %gep.i.i.i.i.i.i.6 = getelementptr i8, ptr %i.kj, i64 48
  %.val8.i.i.i.i.i.i.6 = load double, ptr %gep.i.i.i.i.i.i.6, align 8, !noalias !30002, !noundef !41
  %i.kk = fadd double %i.ki, %.val8.i.i.i.i.i.i.6
  %i.kl = add nuw i64 %.sroa.02.09.i.i.i.i.i.i, 8 ; 2 uses
  %i.km = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i, i64 %.sroa.02.09.i.i.i.i.i.i
  %gep.i.i.i.i.i.i.7 = getelementptr i8, ptr %i.km, i64 56
  %.val8.i.i.i.i.i.i.7 = load double, ptr %gep.i.i.i.i.i.i.7, align 8, !noalias !30002, !noundef !41
  %i.kn = fadd double %i.kk, %.val8.i.i.i.i.i.i.7 ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.epil.preheader:                ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.preheader
  %.sroa.0.010.i.i.i.i.i.i.epil.init = phi double [ -0.000000e+00, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.kn, %.loopexit.i.loopexit.unr-lcssa ]
  %.sroa.02.09.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.kl, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod522 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod522)
  br label %.lr.ph.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.epil:                          ; preds = %.lr.ph.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.epil.preheader
  %.sroa.0.010.i.i.i.i.i.i.epil = phi double [ %i.kp, %.lr.ph.i.i.i.i.i.i.epil ], [ %.sroa.0.010.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.epil.preheader ]
  %.sroa.02.09.i.i.i.i.i.i.epil = phi i64 [ %i.ko, %.lr.ph.i.i.i.i.i.i.epil ], [ %.sroa.02.09.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.epil.preheader ]
  %i.ko = add nuw i64 %.sroa.02.09.i.i.i.i.i.i.epil, 1
  %gep.i.i.i.i.i.i.epil = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i, i64 %.sroa.02.09.i.i.i.i.i.i.epil
  %.val8.i.i.i.i.i.i.epil = load double, ptr %gep.i.i.i.i.i.i.epil, align 8, !noalias !30002, !noundef !41
  %i.kp = fadd double %.sroa.0.010.i.i.i.i.i.i.epil, %.val8.i.i.i.i.i.i.epil ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i.epil, !llvm.loop !29904

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.epil, %bb.bx
  %.sroa.0.0.lcssa.i.i.i.i.i.i = phi double [ -0.000000e+00, %bb.bx ], [ %i.kn, %.loopexit.i.loopexit.unr-lcssa ], [ %i.kp, %.lr.ph.i.i.i.i.i.i.epil ] ; 2 uses
  %.inv.i.i.i = fcmp ord double %.sroa.0.0.lcssa.i.i.i.i.i.i, 0.000000e+00
  %spec.store.select.i.i.i = select i1 %.inv.i.i.i, double %.sroa.0.0.lcssa.i.i.i.i.i.i, double 0.000000e+00 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !29982
  invoke fastcc void @_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter12cell_locator(ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(488) %0, i64 noundef %.sroa.8.092.i, i64 noundef %1, i64 noundef range(i64 0, 192153584101141163) %3)
          to label %bb.by unwind label %.loopexit68.i, !noalias !30003

bb.by:                                            ; preds = %.loopexit.i
  %i.kq = load i128, ptr %i.c, align 16, !noalias !29982, !noundef !41
  %i.kr = load ptr, ptr %i.iy, align 16, !noalias !29982, !align !59, !noundef !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !29982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !29982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !29982
  store i64 0, ptr %i.f, align 8, !noalias !29982
  store ptr %i.io, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !29982
  store i64 %i.in, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !29982
  store double %spec.store.select.i.i.i, ptr %.sroa.10.0..sroa_idx.i253, align 8, !noalias !29982
  store <2 x double> %i.jf, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !29982
  store i8 1, ptr %.sroa.15.0..sroa_idx.i, align 8, !noalias !29982
  store i8 1, ptr %.sroa.16.0..sroa_idx.i255, align 1, !noalias !29982
  %i.ks = load i8, ptr %i.ja, align 1, !range !54, !alias.scope !29980, !noalias !29997, !noundef !41
end_hunk_1
