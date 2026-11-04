Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch-0ef5570b62e7676c.meilisearch.614e4e7626a6e7a0-cgu.0?download=true
inline.NumInlined: 17146
inline.NumDeleted: 6832
loop-unroll.NumCompletelyUnrolled: 149
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 284
begin_hunk_0_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
bb.l:                                             ; preds = %bb.j
  %i.de = getelementptr inbounds nuw [1040 x i8], ptr %i.bd, i64 %.sroa.07.019.i.i ; 3 uses
  %i.df = sub nuw nsw i64 %i.aq, %spec.select.i.i ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ax, i64 %spec.select.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34261)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 1024 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !alias.scope !34262, !noalias !34254, !noundef !45
  %i.dj = add i64 %i.di, 70
  store i64 %i.dj, ptr %i.dh, align 8, !alias.scope !34263, !noalias !34254
  %i.dk = icmp ugt i64 %i.df, 69
  br i1 %i.dk, label %.preheader.i.i.i, label %.split24.us.i.invoke.i, !prof !54

.split24.us.i.invoke.i:                           ; preds = %bb.l, %bb.j
  %.ph238 = phi i64 [ 0, %bb.l ], [ %spec.select.i.i, %bb.j ]
  %.ph239 = phi i64 [ 70, %bb.l ], [ %i.aq, %bb.j ]
  %.ph240 = phi i64 [ %i.df, %bb.l ], [ %i.aq, %bb.j ]
  %.ph241 = phi ptr [ @1927, %bb.l ], [ @1568, %bb.j ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.ph238, i64 noundef %.ph239, i64 noundef %.ph240, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.ph241) #43
          to label %.split24.us.i.cont.i unwind label %.thread.i, !noalias !34254

.split24.us.i.cont.i:                             ; preds = %.split24.us.i.invoke.i
  unreachable

.preheader.i.i.i:                                 ; preds = %bb.l, %.preheader.i.i.i
  %.sroa.02.0.idx7.i.i.i = phi i64 [ %.sroa.02.0.add.i.i.i.1, %.preheader.i.i.i ], [ 0, %bb.l ] ; 3 uses
  %.sroa.02.0.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.sroa.02.0.idx7.i.i.i
  %i.dl = load i8, ptr %.sroa.02.0.ptr.i.i.i, align 1, !alias.scope !34264, !noundef !45
  %i.dm = zext i8 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.dm ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !alias.scope !34265, !noalias !34254, !noundef !45
  %i.dp = add i32 %i.do, 1
  store i32 %i.dp, ptr %i.dn, align 4, !alias.scope !34265, !noalias !34254
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.sroa.02.0.idx7.i.i.i
  %.sroa.02.0.ptr.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  %i.dr = load i8, ptr %.sroa.02.0.ptr.i.i.i.1, align 1, !alias.scope !34264, !noundef !45
  %i.ds = zext i8 %i.dr to i64
  %.sroa.02.0.add.i.i.i.1 = add nuw nsw i64 %.sroa.02.0.idx7.i.i.i, 2 ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.ds ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !alias.scope !34265, !noalias !34254, !noundef !45
  %i.dv = add i32 %i.du, 1
  store i32 %i.dv, ptr %i.dt, align 4, !alias.scope !34265, !noalias !34254
  %i.dw = icmp eq i64 %.sroa.02.0.add.i.i.i.1, 70
  br i1 %i.dw, label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.loopexit.i.i, label %.preheader.i.i.i

.split:                                           ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.loopexit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34267)
  %i.dx = udiv i64 %i.aq, 35
  %i.dy = add nuw nsw i64 %i.dx, 99
  %i.dz = add nuw nsw i64 %i.dy, %spec.store.select.i ; 2 uses
  %i.ea = urem i64 %i.dz, %spec.store.select.i
  %i.eb = sub nuw nsw i64 %i.dz, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ap, i64 1024
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ap, i64 1032
  %i.ee = add nsw i64 %i.aq, -69
  br label %_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit.i.i

_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit.i.i: ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17h8a3e084d90ebfcb6E.exit.i.i, %.split
  %.sroa.03.018.i.i = phi i64 [ 0, %.split ], [ %i.fo, %_ZN6brotli3enc9histogram21HistogramAddHistogram17h8a3e084d90ebfcb6E.exit.i.i ] ; 2 uses
  %.sroa.0.017.i.i = phi i32 [ 7, %.split ], [ %spec.store.select.i.i.i, %_ZN6brotli3enc9histogram21HistogramAddHistogram17h8a3e084d90ebfcb6E.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !34268
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.ap, i8 0, i64 1024, i1 false), !noalias !34268
  store float 3.402000e+38, ptr %i.ed, align 8, !alias.scope !34269, !noalias !34268
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34271)
  %i.ef = mul i32 %.sroa.0.017.i.i, 16807
  %i.eg = icmp eq i32 %.sroa.0.017.i.i, 0
  %spec.store.select.i.i.i = select i1 %i.eg, i32 1, i32 %i.ef ; 2 uses
  %i.eh = zext i32 %spec.store.select.i.i.i to i64
  %i.ei = urem i64 %i.eh, %i.ee
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ei ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34273)
  store i64 70, ptr %i.ec, align 8, !alias.scope !34274, !noalias !34268
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i, %_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit.i.i
  %.sroa.02.0.idx7.i.i.i.i = phi i64 [ 0, %_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit.i.i ], [ %.sroa.02.0.add.i.i.i.i.1, %.preheader.i.i.i.i ] ; 3 uses
  %.sroa.02.0.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.sroa.02.0.idx7.i.i.i.i
  %i.ek = load i8, ptr %.sroa.02.0.ptr.i.i.i.i, align 1, !alias.scope !34275, !noundef !45
  %i.el = zext i8 %i.ek to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.el ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !alias.scope !34276, !noalias !34268, !noundef !45
  %i.eo = add i32 %i.en, 1
  store i32 %i.eo, ptr %i.em, align 4, !alias.scope !34276, !noalias !34268
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.sroa.02.0.idx7.i.i.i.i
  %.sroa.02.0.ptr.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  %i.eq = load i8, ptr %.sroa.02.0.ptr.i.i.i.i.1, align 1, !alias.scope !34275, !noundef !45
  %i.er = zext i8 %i.eq to i64
  %.sroa.02.0.add.i.i.i.i.1 = add nuw nsw i64 %.sroa.02.0.idx7.i.i.i.i, 2 ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.er ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !alias.scope !34276, !noalias !34268, !noundef !45
  %i.eu = add i32 %i.et, 1
  store i32 %i.eu, ptr %i.es, align 4, !alias.scope !34276, !noalias !34268
  %i.ev = icmp eq i64 %.sroa.02.0.add.i.i.i.i.1, 70
  br i1 %i.ev, label %vector.ph, label %.preheader.i.i.i.i

vector.ph:                                        ; preds = %.preheader.i.i.i.i
  %i.ew = urem i64 %.sroa.03.018.i.i, %spec.store.select.i
  %i.ex = getelementptr inbounds nuw [1040 x i8], ptr %i.bd, i64 %i.ew ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 1024 ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8, !alias.scope !34277, !noalias !34278, !noundef !45
  %i.fa = add i64 %i.ez, 70
  store i64 %i.fa, ptr %i.ey, align 8, !alias.scope !34279, !noalias !34254
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ] ; 4 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %index ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.fb, align 4, !alias.scope !34267, !noalias !34254
  %wide.load3573 = load <4 x i32>, ptr %i.fc, align 4, !alias.scope !34267, !noalias !34254
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %index ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %wide.load3574 = load <4 x i32>, ptr %i.fd, align 8, !noalias !34268
  %wide.load3575 = load <4 x i32>, ptr %i.fe, align 8, !noalias !34268
  %i.ff = add <4 x i32> %wide.load3574, %wide.load
  %i.fg = add <4 x i32> %wide.load3575, %wide.load3573
  store <4 x i32> %i.ff, ptr %i.fb, align 4, !alias.scope !34267, !noalias !34254
  store <4 x i32> %i.fg, ptr %i.fc, align 4, !alias.scope !34267, !noalias !34254
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %index.next ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 2 uses
  %wide.load.1 = load <4 x i32>, ptr %i.fh, align 4, !alias.scope !34267, !noalias !34254
  %wide.load3573.1 = load <4 x i32>, ptr %i.fi, align 4, !alias.scope !34267, !noalias !34254
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %index.next ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %wide.load3574.1 = load <4 x i32>, ptr %i.fj, align 8, !noalias !34268
  %wide.load3575.1 = load <4 x i32>, ptr %i.fk, align 8, !noalias !34268
  %i.fl = add <4 x i32> %wide.load3574.1, %wide.load.1
  %i.fm = add <4 x i32> %wide.load3575.1, %wide.load3573.1
  store <4 x i32> %i.fl, ptr %i.fh, align 4, !alias.scope !34267, !noalias !34254
  store <4 x i32> %i.fm, ptr %i.fi, align 4, !alias.scope !34267, !noalias !34254
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.fn = icmp eq i64 %index.next.1, 256
  br i1 %i.fn, label %_ZN6brotli3enc9histogram21HistogramAddHistogram17h8a3e084d90ebfcb6E.exit.i.i, label %vector.body, !llvm.loop !33436

_ZN6brotli3enc9histogram21HistogramAddHistogram17h8a3e084d90ebfcb6E.exit.i.i: ; preds = %vector.body
  %i.fo = add nuw i64 %.sroa.03.018.i.i, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !34268
  %exitcond27.not.i.i = icmp eq i64 %i.fo, %i.eb
  br i1 %exitcond27.not.i.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, label %_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit.i.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17h8a3e084d90ebfcb6E.exit.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34280
  %i.fp = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.aq, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !34280 ; 14 uses
  %i.fq = icmp eq ptr %i.fp, null
  br i1 %i.fq, label %bb.m, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i142.i

bb.m:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %i.aq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc141.i unwind label %.thread.i, !noalias !34254

.noexc141.i:                                      ; preds = %bb.m
  unreachable

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i142.i: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %i.fr = add nuw nsw i64 %i.az, 8
  %i.fs = lshr i64 %i.fr, 3                       ; 19 uses
  %i.ft = shl nuw nsw i64 %spec.store.select.i, 8 ; 9 uses
  %i.fu = shl nuw nsw i64 %spec.store.select.i, 10 ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34281
  %i.fv = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.fu, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !34281 ; 9 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i142.i
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.fu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc145.i unwind label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit216.thread.i", !noalias !34254

.noexc145.i:                                      ; preds = %bb.n
  unreachable

"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit216.thread.i": ; preds = %bb.n
  %i.fx = landingpad { ptr, i32 }
          cleanup
  tail call void @mi_free(ptr noundef nonnull %i.fp) #38, !noalias !34254
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit.i"

bb.o:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i142.i
  %i.fy = shl nuw nsw i64 %i.fs, 5                ; 4 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34282
  %i.fz = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.fy, i64 noundef range(i64 1, 9) 4) #38, !noalias !34282 ; 24 uses
  %i.ga = icmp eq ptr %i.fz, null
  br i1 %i.ga, label %bb.p, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hef58b721ea58c2dfE.exit.i.i.i.i"

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.fy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc148.i unwind label %.thread39.i, !noalias !34254

.noexc148.i:                                      ; preds = %bb.p
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hef58b721ea58c2dfE.exit.i.i.i.i": ; preds = %bb.o
  %i.gb = icmp samesign ugt i64 %i.aq, 4351
  br i1 %i.gb, label %.lr.ph.i.i.i146.preheader.i, label %.loopexit120.i

.lr.ph.i.i.i146.preheader.i:                      ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hef58b721ea58c2dfE.exit.i.i.i.i"
  %i.gc = add nsw i64 %i.fy, -32                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fz, i8 0, i64 %i.gc, i1 false), !noalias !34254
  %scevgep.i = getelementptr i8, ptr %i.fz, i64 %i.gc
  br label %.loopexit120.i

.thread39.i:                                      ; preds = %bb.p
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i"

.loopexit120.i:                                   ; preds = %.lr.ph.i.i.i146.preheader.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hef58b721ea58c2dfE.exit.i.i.i.i"
  %.sroa.0.0.lcssa.i.i.i.i = phi ptr [ %i.fz, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hef58b721ea58c2dfE.exit.i.i.i.i" ], [ %scevgep.i, %.lr.ph.i.i.i146.preheader.i ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.0.0.lcssa.i.i.i.i, i8 0, i64 32, i1 false), !noalias !34254
  %i.ge = mul i64 %i.fs, %i.aq                    ; 11 uses
  %i.gf = icmp slt i64 %i.ge, 0
  br i1 %i.gf, label %bb.s, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i149.i, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i149.i: ; preds = %.loopexit120.i
  %i.gg = icmp eq i64 %i.ge, 0                    ; 3 uses
  br i1 %i.gg, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i155.i, label %bb.q

bb.q:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i149.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34283
  %i.gh = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.ge, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !34283 ; 2 uses
  %i.gi = icmp eq ptr %i.gh, null
  br i1 %i.gi, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gj = ptrtoint ptr %i.gh to i64
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i155.i

bb.s:                                             ; preds = %bb.q, %.loopexit120.i
  %.sroa.4.0.ph.i.i151.i = phi i64 [ 1, %bb.q ], [ 0, %.loopexit120.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i151.i, i64 %i.ge, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc152.i unwind label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.thread.i", !noalias !34254

.noexc152.i:                                      ; preds = %bb.s
  unreachable

"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.thread.i": ; preds = %bb.s
  %i.gk = landingpad { ptr, i32 }
          cleanup
  tail call void @mi_free(ptr noundef nonnull %i.fz) #38, !noalias !34254
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i"

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i155.i: ; preds = %bb.r, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i149.i
  %.sroa.10.0.i.i150.i = phi i64 [ %i.gj, %bb.r ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i149.i ]
  %i.gl = inttoptr i64 %.sroa.10.0.i.i150.i to ptr ; 8 uses
  %i.gm = shl nuw nsw i64 %spec.store.select.i, 1 ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34284
  %i.gn = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.gm, i64 noundef range(i64 1, -9223372036854775807) 2) #38, !noalias !34284 ; 4 uses
  %i.go = icmp eq ptr %i.gn, null
  br i1 %i.go, label %bb.t, label %.split.i

bb.t:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i155.i
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 2, i64 %i.gm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc158.i unwind label %.thread55.i, !noalias !34254

.noexc158.i:                                      ; preds = %bb.t
  unreachable

.thread55.i:                                      ; preds = %bb.t
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fv

.split.i:                                         ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i155.i
  %i.gq = icmp slt i32 %.72.val, 12
  %..i = select i1 %i.gq, i64 3, i64 10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gl) ]
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.aq
  %i.gs = add nsw i64 %i.aq, -1                   ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.gs
  br label %bb.di

_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h033cc48a226f8774E.exit.loopexit.i: ; preds = %bb.fu
  %i.gu = icmp samesign ult i64 %.sroa.032.1425.i, %..i ; 2 uses
  %i.gv = zext i1 %i.gu to i64
  %.sroa.032.1.i = add nuw nsw i64 %.sroa.032.1425.i, %i.gv
  br i1 %i.gu, label %bb.di, label %bb.u

.body.i:                                          ; preds = %bb.x
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit216.i"

bb.u:                                             ; preds = %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h033cc48a226f8774E.exit.loopexit.i
  tail call void @mi_free(ptr noundef nonnull align 4 %i.fv) #38, !noalias !34254
  tail call void @mi_free(ptr noundef nonnull align 4 %i.fz) #38, !noalias !34254
  br i1 %i.gg, label %bb.v, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i160.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i160.i": ; preds = %bb.u
  tail call void @mi_free(ptr noundef nonnull align 1 %i.gl) #38, !noalias !34254
  br label %bb.v

bb.v:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i160.i", %bb.u
  tail call void @mi_free(ptr noundef nonnull align 2 %i.gn) #38, !noalias !34254
  tail call void @mi_free(ptr noundef nonnull align 8 %i.bd) #38, !noalias !34254
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34287)
  %i.gw = shl i64 %.sroa.0.0.i.i, 2               ; 6 uses
  %i.gx = icmp ugt i64 %.sroa.0.0.i.i, 4611686018427387903
  %i.gy = icmp ugt i64 %i.gw, 9223372036854775804
  %or.cond.i.i.i.i.i163.i = or i1 %i.gx, %i.gy
  br i1 %or.cond.i.i.i.i.i163.i, label %bb.x, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i164.i, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i164.i: ; preds = %bb.v
  %i.gz = icmp eq i64 %i.gw, 0
  br i1 %i.gz, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i410.thread.i.i, label %bb.w

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i410.thread.i.i: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i164.i
  %i.ha = icmp samesign ult i64 %.sroa.0.0.i.i, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ha)
  br label %bb.aa

bb.w:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i164.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34288
  %i.hb = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.gw, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !34288 ; 3 uses
  %i.hc = icmp eq ptr %i.hb, null
  br i1 %i.hc, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sroa.4.0.ph.i.i.i168.i = phi i64 [ 4, %bb.w ], [ 0, %bb.v ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i168.i, i64 %i.gw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc169.i unwind label %.body.i, !noalias !34254

.noexc169.i:                                      ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.hd = icmp samesign ult i64 %.sroa.0.0.i.i, 2305843009213693952
  tail call void @llvm.assume(i1 %i.hd)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34289
  %i.he = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.gw, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !34289 ; 2 uses
  %i.hf = icmp eq ptr %i.he, null
  br i1 %i.hf, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.gw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc413.i.i unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.i.i", !noalias !34290

.noexc413.i.i:                                    ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.y, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i410.thread.i.i
  %i.hg = phi ptr [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i410.thread.i.i ], [ %i.hb, %bb.y ] ; 10 uses
  %.sroa.10.0.i.i411.i.i = phi ptr [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i410.thread.i.i ], [ %i.he, %bb.y ] ; 6 uses
  %i.hh = shl i64 %.sroa.0.0.i.i, 4
  %i.hi = add i64 %i.hh, 1008                     ; 3 uses
  %i.hj = lshr i64 %i.hi, 6                       ; 17 uses
  %i.hk = mul i64 %i.hj, 1040                     ; 3 uses
  %or.cond.i.i.i.i.i.i.i = icmp ugt i64 %i.hi, 567592125344909311
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.ac, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.aa
  %i.hl = icmp eq i64 %i.hk, 0
  br i1 %i.hl, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i.i", label %bb.ab

bb.ab:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34291
  %i.hm = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.hk, i64 noundef range(i64 1, 9) 8) #38, !noalias !34291 ; 2 uses
  %i.hn = icmp eq ptr %i.hm, null
  br i1 %i.hn, label %bb.ac, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i.i"

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.ab ], [ 0, %bb.aa ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.hk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc415.i.i unwind label %.thread86.i.i, !noalias !34290

.noexc415.i.i:                                    ; preds = %bb.ac
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i.i": ; preds = %bb.ab, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.hm, %bb.ab ] ; 8 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.hj, %bb.ab ]
  %i.ho = icmp samesign ule i64 %i.hj, %.sroa.4.0.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.ho)
  %i.hp = icmp samesign ugt i64 %i.hi, 127
  br i1 %i.hp, label %.lr.ph.i.i.i.i.i.preheader, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i.i"
  %i.hq = add nsw i64 %i.hj, -1                   ; 2 uses
  %i.hr = add nsw i64 %i.hj, -2
  %xtraiter4508 = and i64 %i.hq, 7                ; 3 uses
  %i.hs = icmp ult i64 %i.hr, 7
  br i1 %i.hs, label %.lr.ph.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.preheader.new:                   ; preds = %.lr.ph.i.i.i.i.i.preheader
  %unroll_iter4513 = and i64 %i.hq, -8
  br label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i.i"
  %.not.i.i.i.i.i = icmp eq i64 %i.hj, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.new
  %.sroa.0.08.i.i.i.i.i = phi ptr [ %.sroa.10.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.new ], [ %i.ia, %.lr.ph.i.i.i.i.i ] ; 17 uses
  %niter4514 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.preheader.new ], [ %niter4514.next.7, %.lr.ph.i.i.i.i.i ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i.i.i, i8 0, i64 1032, i1 false), !noalias !34290
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i, align 8, !noalias !34292
end_hunk_0
begin_hunk_1_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
  %i.vi = icmp ult i64 %i.vh, %.sroa.0.0.i.i
  br i1 %i.vi, label %bb.cz, label %.invoke3808

bb.cz:                                            ; preds = %.lr.ph557.i.i
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i, i64 %i.vh
  %i.vk = load i32, ptr %i.vj, align 4, !noalias !34290, !noundef !45 ; 2 uses
  %.not.i166.i = icmp eq i32 %i.vk, 0
  br i1 %.not.i166.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.cz
  %i.vl = zext i32 %i.vk to i64
  %reass.sub.i = tail call i64 @llvm.usub.sat.i64(i64 %i.aq, i64 %.sroa.043.3555.i.i)
  %i.vm = add nuw i64 %reass.sub.i, 1
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.db, %bb.cz
  %.sroa.043.4.lcssa.i.i = phi i64 [ %.sroa.043.3555.i.i, %bb.cz ], [ %i.wg, %bb.db ] ; 2 uses
  %i.vn = invoke fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17h56fd6c289f2ade0fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1040) %i.ve)
          to label %bb.da unwind label %.thread163.loopexit.split-lp.loopexit.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !34290

bb.da:                                            ; preds = %._crit_edge.i.i
  store float %i.vn, ptr %i.vg, align 8, !alias.scope !34333, !noalias !34290
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.sroa.0127.0554.i.i
  %i.vp = trunc nuw nsw i64 %.sroa.0127.0554.i.i to i32 ; 2 uses
  store i32 %i.vp, ptr %i.vo, align 4, !noalias !34290
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %.sroa.0127.0554.i.i
  store i32 %i.vp, ptr %i.vq, align 4, !noalias !34290
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.sroa.0127.0554.i.i
  store i32 1, ptr %i.vr, align 4, !noalias !34290
  %i.vs = icmp samesign ult i64 %.sroa.0127.1556.i.i, %.sroa.0.0.i447.i.i ; 2 uses
  %i.vt = zext i1 %i.vs to i64
  %.sroa.0127.1.i.i = add nuw i64 %.sroa.0127.1556.i.i, %i.vt
  br i1 %i.vs, label %.lr.ph557.i.i, label %._crit_edge558.i.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.db, %.lr.ph.preheader.i.i
  %i.vu = phi i64 [ %i.wf, %bb.db ], [ 0, %.lr.ph.preheader.i.i ]
  %i.vv = phi i64 [ %i.wh, %bb.db ], [ 1, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.043.4553.i.i = phi i64 [ %i.wg, %bb.db ], [ %.sroa.043.3555.i.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %exitcond817.not.i.i = icmp eq i64 %i.vv, %i.vm
  br i1 %exitcond817.not.i.i, label %.invoke3808, label %bb.db

.invoke3808:                                      ; preds = %.lr.ph557.i.i, %.lr.ph.i.i
  %i.vw = phi i64 [ %.sroa.043.4553.i.i, %.lr.ph.i.i ], [ %i.vh, %.lr.ph557.i.i ]
  %i.vx = phi i64 [ %i.aq, %.lr.ph.i.i ], [ %.sroa.0.0.i.i, %.lr.ph557.i.i ]
  %i.vy = phi ptr [ @1562, %.lr.ph.i.i ], [ @1561, %.lr.ph557.i.i ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.vw, i64 noundef %i.vx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.vy) #43
          to label %.cont3809 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !34290

.cont3809:                                        ; preds = %.invoke3808
  unreachable

bb.db:                                            ; preds = %.lr.ph.i.i
  %i.vz = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sroa.043.4553.i.i
  %i.wa = load i8, ptr %i.vz, align 1, !alias.scope !34334, !noundef !45
  %i.wb = zext i8 %i.wa to i64
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %i.ve, i64 %i.wb ; 2 uses
  %i.wd = load i32, ptr %i.wc, align 4, !alias.scope !34335, !noalias !34290, !noundef !45
  %i.we = add i32 %i.wd, 1
  store i32 %i.we, ptr %i.wc, align 4, !alias.scope !34335, !noalias !34290
  %i.wf = add nuw nsw i64 %i.vu, 1                ; 2 uses
  store i64 %i.wf, ptr %i.vf, align 8, !alias.scope !34336, !noalias !34290
  %i.wg = add nuw i64 %.sroa.043.4553.i.i, 1      ; 2 uses
  %i.wh = add nuw nsw i64 %i.vv, 1
  %exitcond818.not.i.i = icmp eq i64 %i.vv, %i.vl
  br i1 %exitcond818.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.dc:                                            ; preds = %bb.df, %bb.al
  %.sroa.047.0551.i.i = phi i64 [ 0, %bb.al ], [ %i.wm, %bb.df ] ; 2 uses
  %.sroa.059.0550.i.i = phi i64 [ 0, %bb.al ], [ %.sroa.059.1.i.i, %bb.df ] ; 5 uses
  %i.wi = icmp ult i64 %.sroa.059.0550.i.i, %.sroa.0.0.i.i
  br i1 %i.wi, label %bb.dd, label %.invoke.i.i

bb.dd:                                            ; preds = %bb.dc
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i, i64 %.sroa.059.0550.i.i ; 2 uses
  %i.wk = load i32, ptr %i.wj, align 4, !noalias !34290, !noundef !45
  %i.wl = add i32 %i.wk, 1
  store i32 %i.wl, ptr %i.wj, align 4, !noalias !34290
  %i.wm = add nuw nsw i64 %.sroa.047.0551.i.i, 1  ; 3 uses
  %.not896.i.i = icmp eq i64 %i.wm, %i.aq         ; 2 uses
  br i1 %.not896.i.i, label %bb.dg, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.wn = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.sroa.047.0551.i.i
  %i.wo = load i8, ptr %i.wn, align 1, !alias.scope !34286, !noalias !34254, !noundef !45
  %i.wp = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.wm
  %i.wq = load i8, ptr %i.wp, align 1, !alias.scope !34286, !noalias !34254, !noundef !45
  %.not238.i.i = icmp eq i8 %i.wo, %i.wq
  br i1 %.not238.i.i, label %bb.df, label %bb.dg

.invoke.i.i:                                      ; preds = %bb.dc
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.059.0550.i.i, i64 noundef %.sroa.0.0.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1563) #43
          to label %.cont.i.i unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !34290

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.df:                                            ; preds = %bb.dg, %bb.de
  %.sroa.059.1.i.i = phi i64 [ %i.wr, %bb.dg ], [ %.sroa.059.0550.i.i, %bb.de ]
  br i1 %.not896.i.i, label %.split.i.i, label %bb.dc

bb.dg:                                            ; preds = %bb.de, %bb.dd
  %i.wr = add nuw nsw i64 %.sroa.059.0550.i.i, 1
  br label %bb.df

.thread130.i.i:                                   ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i", %.loopexit.split-lp.loopexit.split-lp.i.i, %bb.am
  %.pn230155.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i, %bb.am ], [ %.pn.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i ], [ %.pn913.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i" ] ; 2 uses
  %.sroa.016.4154.i.i = phi ptr [ %.sroa.016.7.i.i, %bb.am ], [ %.sroa.016.6.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i ], [ %.sroa.016.6912.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i" ] ; 2 uses
  %.sroa.14.4153.i.i = phi i64 [ %.sroa.14.7.i.i, %bb.am ], [ %.sroa.14.6.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i ], [ %.sroa.14.6911.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i" ] ; 2 uses
  %.sroa.026.3152.i.i = phi ptr [ %.sroa.026.4.ph162.i.i, %bb.am ], [ inttoptr (i64 4 to ptr), %.loopexit.split-lp.loopexit.split-lp.i.i ], [ inttoptr (i64 4 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i" ] ; 2 uses
  %.sroa.12.3151.i.i = phi i64 [ %.sroa.12.4.ph161.i.i, %bb.am ], [ 0, %.loopexit.split-lp.loopexit.split-lp.i.i ], [ 0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i" ] ; 2 uses
  %.sroa.044.0148.i.i = phi ptr [ %.sroa.044.1.ph160.i.i, %bb.am ], [ inttoptr (i64 4 to ptr), %.loopexit.split-lp.loopexit.split-lp.i.i ], [ inttoptr (i64 4 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i" ]
  %.sroa.11.0147.i.i = phi i1 [ %.sroa.11.1.ph159.i.i, %bb.am ], [ true, %.loopexit.split-lp.loopexit.split-lp.i.i ], [ true, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i" ]
  %.sroa.051.0146.i.i = phi ptr [ %i.kc, %bb.am ], [ %.sroa.051.2.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i ], [ %.sroa.051.2910.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i" ] ; 2 uses
  %.sroa.1152.0145.i.i = phi i64 [ %i.tu, %bb.am ], [ %.sroa.1152.2.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i ], [ %.sroa.1152.2909.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i" ]
  %i.ws = icmp eq i64 %.sroa.1152.0145.i.i, 0
  br i1 %i.ws, label %bb.bl, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i551.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i551.i.i": ; preds = %.thread130.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.051.0146.i.i) ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.051.0146.i.i) #38, !noalias !34290
  br label %bb.bl

bb.dh:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i165.i", %bb.af, %.thread86.i.i
  %.pn230.pn.pn.pn.pn.pn90.i.i = phi { ptr, i32 } [ %i.ib, %.thread86.i.i ], [ %.pn230.pn.pn.pn.pn100.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i165.i" ], [ %.pn230.pn.pn.pn.i.i, %bb.af ] ; 2 uses
  %i.wt = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %i.wt, label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit216.i", label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.thread916.i.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.thread916.i.i": ; preds = %bb.dh
  tail call void @mi_free(ptr noundef nonnull %.sroa.10.0.i.i411.i.i) #38, !noalias !34290
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i555.i.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.i.i": ; preds = %bb.z
  %i.wu = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i555.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i555.i.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.i.i", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.thread916.i.i"
  %i.wv = phi ptr [ %i.hg, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.thread916.i.i" ], [ %i.hb, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.i.i" ] ; 2 uses
  %.pn230.pn.pn.pn.pn.pn.pn85918.i.i = phi { ptr, i32 } [ %.pn230.pn.pn.pn.pn.pn90.i.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.thread916.i.i" ], [ %i.wu, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.i.i" ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.wv) ]
  tail call void @mi_free(ptr noundef nonnull %i.wv) #38, !noalias !34290
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit216.i"

bb.di:                                            ; preds = %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h033cc48a226f8774E.exit.loopexit.i, %.split.i
  %.sroa.032.1425.i = phi i64 [ 1, %.split.i ], [ %.sroa.032.1.i, %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h033cc48a226f8774E.exit.loopexit.i ] ; 2 uses
  %.sroa.0.0424.i = phi i64 [ %spec.store.select.i, %.split.i ], [ %i.amo, %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h033cc48a226f8774E.exit.loopexit.i ] ; 21 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34341)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34342)
  %i.ww = icmp eq i64 %.sroa.0.0424.i, 0
  br i1 %i.ww, label %.loopexit.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.wx = add i64 %.sroa.0.0424.i, 7
  %i.wy = lshr i64 %i.wx, 3                       ; 8 uses
  %i.wz = icmp eq i64 %.sroa.0.0424.i, 1
  br i1 %i.wz, label %.preheader.i.preheader.i, label %bb.dk

.preheader.i.preheader.i:                         ; preds = %bb.dj
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.fp, i8 0, i64 %i.aq, i1 false), !alias.scope !34342, !noalias !34254
  br label %.loopexit.i

bb.dk:                                            ; preds = %bb.dj
  %i.xa = shl nuw nsw i64 %.sroa.0.0424.i, 8      ; 2 uses
  %.not121.i.i = icmp samesign ugt i64 %i.xa, %i.ft
  br i1 %.not121.i.i, label %.invoke1107.i, label %.preheader360.i.i, !prof !87

.invoke1107.i:                                    ; preds = %bb.fs, %.lr.ph403.i.preheader.i, %bb.dk, %bb.dw
  %i.xb = phi i64 [ %i.wy, %bb.dw ], [ %i.xl, %.lr.ph403.i.preheader.i ], [ %i.xa, %bb.dk ], [ %i.amo, %bb.fs ]
  %i.xc = phi i64 [ %i.fs, %bb.dw ], [ %i.ge, %.lr.ph403.i.preheader.i ], [ %i.ft, %bb.dk ], [ %spec.store.select.i, %bb.fs ]
  %i.xd = phi ptr [ @1572, %bb.dw ], [ @1541, %.lr.ph403.i.preheader.i ], [ @1543, %bb.dk ], [ @1924, %bb.fs ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.xb, i64 noundef %i.xc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.xd) #43
          to label %.cont1108.i unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp", !noalias !34254

.cont1108.i:                                      ; preds = %.invoke1107.i
  unreachable

.preheader360.i.i:                                ; preds = %bb.dk
  %.idx.i.i = shl nuw nsw i64 %.sroa.0.0424.i, 10
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fv, i8 0, i64 %.idx.i.i, i1 false), !alias.scope !34339, !noalias !34254
  br label %bb.dl

bb.dl:                                            ; preds = %bb.fq, %.preheader360.i.i
  %i.xe = phi i64 [ 1, %.preheader360.i.i ], [ %i.aml, %bb.fq ] ; 3 uses
  %.sroa.069.0399.i.i = phi i64 [ 0, %.preheader360.i.i ], [ %i.xe, %bb.fq ] ; 2 uses
  %i.xf = getelementptr inbounds nuw [1040 x i8], ptr %i.bd, i64 %.sroa.069.0399.i.i
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 1024
  %i.xh = load i64, ptr %i.xg, align 8, !alias.scope !34343, !noalias !34254, !noundef !45
  %i.xi = and i64 %i.xh, 4294967295               ; 3 uses
  %i.xj = icmp samesign ult i64 %i.xi, 256
  br i1 %i.xj, label %bb.fr, label %bb.fp

.loopexit358.i.i:                                 ; preds = %bb.fo
  %i.xk = icmp eq i64 %i.xm, 0
  br i1 %i.xk, label %.lr.ph403.i.preheader.i, label %.split.i175.i

.lr.ph403.i.preheader.i:                          ; preds = %.loopexit358.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.fz, i8 0, i64 %i.fy, i1 false), !alias.scope !34340, !noalias !34254
  %i.xl = mul i64 %i.wy, %i.aq                    ; 4 uses
  %.not124.i.i = icmp ugt i64 %i.xl, %i.ge
  br i1 %.not124.i.i, label %.invoke1107.i, label %bb.dm, !prof !87

.split.i175.i:                                    ; preds = %bb.fq, %.loopexit358.i.i
  %.sroa.05.0401.i.i = phi i64 [ %i.xm, %.loopexit358.i.i ], [ 256, %bb.fq ]
  %i.xm = add nsw i64 %.sroa.05.0401.i.i, -1      ; 4 uses
  %invariant.gep.i176.i = getelementptr [4 x i8], ptr %i.bd, i64 %i.xm
  %i.xn = mul i64 %i.xm, %.sroa.0.0424.i
  br label %bb.fn

bb.dm:                                            ; preds = %.lr.ph403.i.preheader.i
  %.not355404.i.i = icmp samesign eq i64 %i.xl, 0
  br i1 %.not355404.i.i, label %.lr.ph434.i.i, label %.lr.ph407.preheader.i.i

.lr.ph407.preheader.i.i:                          ; preds = %bb.dm
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.gl, i8 0, i64 %i.xl, i1 false), !alias.scope !34341, !noalias !34254
  br label %.lr.ph434.i.i

.lr.ph434.i.i:                                    ; preds = %bb.dm, %.lr.ph407.preheader.i.i
  %i.xo = lshr i64 %.sroa.0.0424.i, 3             ; 3 uses
  %.not131.i.i = icmp samesign ugt i64 %i.xo, %i.fs
  %.idx451.i.i = shl nuw nsw i64 %i.xo, 5
  %i.xp = getelementptr inbounds nuw i8, ptr %i.fz, i64 %.idx451.i.i
  %i.xq = icmp eq i64 %i.xo, 0
  %i.xr = and i64 %.sroa.0.0424.i, -8             ; 8 uses
  %i.xs = and i64 %.sroa.0.0424.i, 7              ; 4 uses
  %.not.i.i179.i = icmp samesign ugt i64 %i.wy, %i.fs
  %.idx452.i.i = shl i64 %i.wy, 5                 ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.fz, i64 %.idx452.i.i
  br i1 %.not131.i.i, label %.lr.ph434.split.us.i.i, label %.lr.ph434.split.preheader.i.i, !prof !47

.lr.ph434.split.preheader.i.i:                    ; preds = %.lr.ph434.i.i
  %.idx453.i.i = shl nuw nsw i64 %i.xs, 2         ; 3 uses
  %i.xu = icmp eq i64 %i.xs, 0
  %i.xv = lshr i64 %.sroa.0.0424.i, 3             ; 3 uses
  %i.xw = icmp samesign ult i64 %i.xv, %i.fs
  %i.xx = getelementptr inbounds nuw [32 x i8], ptr %i.fz, i64 %i.xv ; 2 uses
  %i.xy = trunc i64 %i.xr to i8
  %i.xz = icmp eq i64 %i.xs, 1                    ; 2 uses
  %.sroa.077.1.idx.i.i = select i1 %i.xz, i64 0, i64 4 ; 3 uses
  %i.ya = lshr i64 %.sroa.0.0424.i, 3             ; 3 uses
  %i.yb = icmp samesign ult i64 %i.ya, %i.fs
  %i.yc = getelementptr inbounds nuw [32 x i8], ptr %i.fz, i64 %i.ya
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 4 ; 2 uses
  %i.ye = trunc i64 %i.xr to i8
  %i.yf = or disjoint i8 %i.ye, 1
  %i.yg = add nuw nsw i64 %.sroa.077.1.idx.i.i, 4
  %i.yh = icmp samesign eq i64 %i.yg, %.idx453.i.i ; 2 uses
  %.sroa.077.1.idx.i.i.1 = select i1 %i.yh, i64 0, i64 4 ; 2 uses
  %i.yi = lshr i64 %.sroa.0.0424.i, 3             ; 3 uses
  %i.yj = icmp samesign ult i64 %i.yi, %i.fs
  %i.yk = getelementptr inbounds nuw [32 x i8], ptr %i.fz, i64 %i.yi
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 8 ; 2 uses
  %i.ym = trunc i64 %i.xr to i8
  %i.yn = or disjoint i8 %i.ym, 2
  %i.yo = add nuw nsw i64 %.sroa.077.1.idx.i.i, 4
  %i.yp = add nuw nsw i64 %i.yo, %.sroa.077.1.idx.i.i.1
  %i.yq = icmp samesign eq i64 %i.yp, %.idx453.i.i ; 2 uses
  %.sroa.077.1.idx.i.i.2 = select i1 %i.yq, i64 0, i64 4
  %i.yr = lshr i64 %.sroa.0.0424.i, 3             ; 3 uses
  %i.ys = icmp samesign ult i64 %i.yr, %i.fs
  %i.yt = getelementptr inbounds nuw [32 x i8], ptr %i.fz, i64 %i.yr
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 12 ; 2 uses
  %i.yv = trunc i64 %i.xr to i8
  %i.yw = or disjoint i8 %i.yv, 3
  %i.yx = lshr i64 %.sroa.0.0424.i, 3             ; 3 uses
  %i.yy = icmp samesign ult i64 %i.yx, %i.fs
  %i.yz = getelementptr inbounds nuw [32 x i8], ptr %i.fz, i64 %i.yx
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 16 ; 2 uses
  %i.zb = trunc i64 %i.xr to i8
  %i.zc = or disjoint i8 %i.zb, 4
  %i.zd = lshr i64 %.sroa.0.0424.i, 3             ; 3 uses
  %i.ze = icmp samesign ult i64 %i.zd, %i.fs
  %i.zf = getelementptr inbounds nuw [32 x i8], ptr %i.fz, i64 %i.zd
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 20 ; 2 uses
  %i.zh = trunc i64 %i.xr to i8
  %i.zi = or disjoint i8 %i.zh, 5
  %i.zj = lshr i64 %.sroa.0.0424.i, 3             ; 3 uses
  %i.zk = icmp samesign ult i64 %i.zj, %i.fs
  %i.zl = getelementptr inbounds nuw [32 x i8], ptr %i.fz, i64 %i.zj
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 24 ; 2 uses
  %i.zn = trunc i64 %i.xr to i8
  %i.zo = or disjoint i8 %i.zn, 6
  %i.zp = add i64 %.idx452.i.i, -32
  %i.zq = lshr exact i64 %i.zp, 5
  br label %.lr.ph434.split.i.i

.lr.ph434.split.us.i.i:                           ; preds = %.lr.ph434.i.i
  %i.zr = load i8, ptr %i.ax, align 1, !alias.scope !34344, !noundef !45
  %i.zs = zext i8 %i.zr to i64
  %i.zt = mul nuw nsw i64 %.sroa.0.0424.i, %i.zs
  %.not130.us.i.i = icmp ugt i64 %i.zt, %i.ft
  br i1 %.not130.us.i.i, label %.split438.us.i.i, label %.split440.us.i.i, !prof !47

.split440.us.i.i:                                 ; preds = %.lr.ph434.split.us.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !34345
  br label %.split440.us.i.invoke.i

.split440.us.i.invoke.i:                          ; preds = %bb.ev, %bb.et, %bb.du, %bb.ds, %.split438.us.i.i, %.split440.us.i.i
  %.sink.i.sroa.phi = phi ptr [ %.sink.i.sroa.gep, %bb.ev ], [ %.sink.i.sroa.gep14, %bb.et ], [ %.sink.i.sroa.gep15, %bb.du ], [ %.sink.i.sroa.gep16, %bb.ds ], [ %.sink.i.sroa.gep17, %.split438.us.i.i ], [ %.sink.i.sroa.gep18, %.split440.us.i.i ]
  %.sink.i.sroa.phi19 = phi ptr [ %.sink.i.sroa.gep20, %bb.ev ], [ %.sink.i.sroa.gep21, %bb.et ], [ %.sink.i.sroa.gep22, %bb.du ], [ %.sink.i.sroa.gep23, %bb.ds ], [ %.sink.i.sroa.gep24, %.split438.us.i.i ], [ %.sink.i.sroa.gep25, %.split440.us.i.i ]
  %.sink.i.sroa.phi26 = phi ptr [ %.sink.i.sroa.gep27, %bb.ev ], [ %.sink.i.sroa.gep28, %bb.et ], [ %.sink.i.sroa.gep29, %bb.du ], [ %.sink.i.sroa.gep30, %bb.ds ], [ %.sink.i.sroa.gep31, %.split438.us.i.i ], [ %.sink.i.sroa.gep32, %.split440.us.i.i ]
  %.sink.i.sroa.phi33 = phi ptr [ %.sink.i.sroa.gep34, %bb.ev ], [ %.sink.i.sroa.gep35, %bb.et ], [ %.sink.i.sroa.gep36, %bb.du ], [ %.sink.i.sroa.gep37, %bb.ds ], [ %.sink.i.sroa.gep38, %.split438.us.i.i ], [ %.sink.i.sroa.gep39, %.split440.us.i.i ]
  %.sink.i = phi ptr [ %i.ad, %bb.ev ], [ %i.af, %bb.et ], [ %i.ac, %bb.du ], [ %i.ae, %bb.ds ], [ %i.ah, %.split438.us.i.i ], [ %i.ag, %.split440.us.i.i ] ; 2 uses
  %i.zu = phi ptr [ @1539, %bb.ev ], [ @1538, %bb.et ], [ @1536, %bb.du ], [ @1535, %bb.ds ], [ @1533, %.split438.us.i.i ], [ @1534, %.split440.us.i.i ]
  store ptr @186, ptr %.sink.i, align 8, !noalias !34345
  store i64 1, ptr %.sink.i.sroa.phi, align 8, !noalias !34345
  store ptr null, ptr %.sink.i.sroa.phi19, align 8, !noalias !34345
  store ptr inttoptr (i64 8 to ptr), ptr %.sink.i.sroa.phi26, align 8, !noalias !34345
  store i64 0, ptr %.sink.i.sroa.phi33, align 8, !noalias !34345
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %.sink.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.zu) #43
          to label %.split440.us.i.cont.i unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp", !noalias !34254

.split440.us.i.cont.i:                            ; preds = %.split440.us.i.invoke.i
  unreachable

_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i: ; preds = %bb.dx
  %i.zv = icmp eq ptr %i.zw, %i.gr
  br i1 %i.zv, label %.lr.ph447.preheader.i.i, label %.lr.ph434.split.i.i

.lr.ph434.split.i.i:                              ; preds = %_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i, %.lr.ph434.split.preheader.i.i
  %.sroa.0.0336432.i.i = phi ptr [ %i.zw, %_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i ], [ %i.ax, %.lr.ph434.split.preheader.i.i ] ; 2 uses
  %.sroa.7.0431.i.i = phi i64 [ %i.zx, %_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i ], [ 0, %.lr.ph434.split.preheader.i.i ] ; 7 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %.sroa.0.0336432.i.i, i64 1 ; 2 uses
  %i.zx = add nuw nsw i64 %.sroa.7.0431.i.i, 1
  %exitcond486.not.i.i = icmp eq i64 %.sroa.7.0431.i.i, %i.aq
  br i1 %exitcond486.not.i.i, label %.invoke.i, label %bb.dq

.lr.ph447.preheader.i.i:                          ; preds = %_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i
  %i.zy = load i8, ptr %i.gt, align 1, !alias.scope !34342, !noalias !34254, !noundef !45
  %i.zz = mul i64 %i.wy, %i.gs
  br label %.lr.ph447.i.i

.lr.ph447.i.i:                                    ; preds = %bb.dp, %.lr.ph447.preheader.i.i
  %.sroa.03.0446.i.i = phi i64 [ %.sroa.03.1.i.i, %bb.dp ], [ 1, %.lr.ph447.preheader.i.i ] ; 2 uses
  %.sroa.052.0445.i.i = phi i64 [ %i.aaa, %bb.dp ], [ %i.gs, %.lr.ph447.preheader.i.i ]
  %.sroa.059.0444.i.i = phi i64 [ %i.aab, %bb.dp ], [ %i.zz, %.lr.ph447.preheader.i.i ]
  %.sroa.061.0443.i.i = phi i8 [ %.sroa.061.1.i.i, %bb.dp ], [ %i.zy, %.lr.ph447.preheader.i.i ] ; 4 uses
  %i.aaa = add nsw i64 %.sroa.052.0445.i.i, -1    ; 4 uses
  %i.aab = sub i64 %.sroa.059.0444.i.i, %i.wy     ; 2 uses
  %i.aac = lshr i8 %.sroa.061.0443.i.i, 3
  %i.aad = zext nneg i8 %i.aac to i64
  %i.aae = add i64 %i.aab, %i.aad                 ; 3 uses
  %i.aaf = icmp ult i64 %i.aae, %i.ge
  br i1 %i.aaf, label %bb.dn, label %.invoke.i

bb.dn:                                            ; preds = %.lr.ph447.i.i
  %i.aag = and i8 %.sroa.061.0443.i.i, 7
  %i.aah = shl nuw i8 1, %i.aag
  %i.aai = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.aae
  %i.aaj = load i8, ptr %i.aai, align 1, !alias.scope !34341, !noalias !34254, !noundef !45
  %i.aak = and i8 %i.aaj, %i.aah
  %i.aal = icmp eq i8 %i.aak, 0
  br i1 %i.aal, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.aam = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.aaa
  %i.aan = load i8, ptr %i.aam, align 1, !alias.scope !34342, !noalias !34254, !noundef !45 ; 2 uses
  %.not129.i.i = icmp ne i8 %.sroa.061.0443.i.i, %i.aan
  %i.aao = zext i1 %.not129.i.i to i64
  %spec.select137.i.i = add i64 %.sroa.03.0446.i.i, %i.aao
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %.sroa.061.1.i.i = phi i8 [ %.sroa.061.0443.i.i, %bb.dn ], [ %i.aan, %bb.do ] ; 2 uses
  %.sroa.03.1.i.i = phi i64 [ %.sroa.03.0446.i.i, %bb.dn ], [ %spec.select137.i.i, %bb.do ] ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.aaa
  store i8 %.sroa.061.1.i.i, ptr %i.aap, align 1, !alias.scope !34342, !noalias !34254
  %.not128.i.i = icmp eq i64 %i.aaa, 0
  br i1 %.not128.i.i, label %.loopexit.i, label %.lr.ph447.i.i

bb.dq:                                            ; preds = %.lr.ph434.split.i.i
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.sroa.7.0431.i.i ; 15 uses
  %i.aar = mul i64 %.sroa.7.0431.i.i, %i.wy       ; 3 uses
  %i.aas = load i8, ptr %.sroa.0.0336432.i.i, align 1, !alias.scope !34344, !noundef !45
  %i.aat = zext i8 %i.aas to i64
  %i.aau = mul nuw nsw i64 %.sroa.0.0424.i, %i.aat ; 4 uses
  %.not130.i.i = icmp ugt i64 %i.aau, %i.ft
  br i1 %.not130.i.i, label %.split438.us.i.i, label %bb.dr, !prof !47

.split438.us.i.i:                                 ; preds = %bb.dq, %.lr.ph434.split.us.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !34345
  br label %.split440.us.i.invoke.i

bb.dr:                                            ; preds = %bb.dq
  %i.aav = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.aau
  %i.aaw = sub nuw nsw i64 %i.ft, %i.aau          ; 2 uses
  br i1 %i.xq, label %._crit_edge416.i.i, label %.lr.ph415.i.i

.lr.ph415.i.i:                                    ; preds = %bb.dr, %bb.fm
  %.sroa.029.0413.i.i = phi float [ %.sroa.029.4.7.i.i, %bb.fm ], [ f0x7E967699, %bb.dr ] ; 2 uses
  %.sroa.0164.0412.i.i = phi ptr [ %i.aax, %bb.fm ], [ %i.fz, %bb.dr ] ; 10 uses
  %.sroa.7166.0411.i.i = phi i64 [ %i.aay, %bb.fm ], [ 0, %bb.dr ] ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i, i64 32 ; 2 uses
  %i.aay = add nuw nsw i64 %.sroa.7166.0411.i.i, 1
  %i.aaz = shl nuw nsw i64 %.sroa.7166.0411.i.i, 3 ; 11 uses
  %.not136.i.i = icmp samesign ugt i64 %i.aaz, %i.aaw
  br i1 %.not136.i.i, label %bb.et, label %bb.eu, !prof !47

end_hunk_1
begin_hunk_2_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
  %.sroa.02.0.idx7.i.i.i64 = phi i64 [ %.sroa.02.0.add.i.i.i66.1, %bb.gn ], [ 0, %bb.gm ] ; 3 uses
  %.sroa.02.0.ptr.i.i.i65 = getelementptr inbounds nuw i8, ptr %i.atm, i64 %.sroa.02.0.idx7.i.i.i64
  %i.atr = load i16, ptr %.sroa.02.0.ptr.i.i.i65, align 2, !alias.scope !34380, !noundef !45 ; 2 uses
  %i.ats = zext i16 %i.atr to i64                 ; 2 uses
  %i.att = icmp ult i16 %i.atr, 704
  br i1 %i.att, label %.preheader.i.i.i63.1, label %.split32.us.i.invoke.i

.preheader.i.i.i63.1:                             ; preds = %.preheader.i.i.i63
  %i.atu = getelementptr inbounds nuw [4 x i8], ptr %i.atk, i64 %i.ats ; 2 uses
  %i.atv = load i32, ptr %i.atu, align 4, !alias.scope !34381, !noalias !34370, !noundef !45
  %i.atw = add i32 %i.atv, 1
  store i32 %i.atw, ptr %i.atu, align 4, !alias.scope !34381, !noalias !34370
  %i.atx = getelementptr inbounds nuw i8, ptr %i.atm, i64 %.sroa.02.0.idx7.i.i.i64
  %.sroa.02.0.ptr.i.i.i65.1 = getelementptr inbounds nuw i8, ptr %i.atx, i64 2
  %i.aty = load i16, ptr %.sroa.02.0.ptr.i.i.i65.1, align 2, !alias.scope !34380, !noundef !45 ; 2 uses
  %i.atz = zext i16 %i.aty to i64                 ; 2 uses
  %i.aua = icmp ult i16 %i.aty, 704
  br i1 %i.aua, label %bb.gn, label %.split32.us.i.invoke.i

bb.gn:                                            ; preds = %.preheader.i.i.i63.1
  %.sroa.02.0.add.i.i.i66.1 = add nuw nsw i64 %.sroa.02.0.idx7.i.i.i64, 4 ; 2 uses
  %i.aub = getelementptr inbounds nuw [4 x i8], ptr %i.atk, i64 %i.atz ; 2 uses
  %i.auc = load i32, ptr %i.aub, align 4, !alias.scope !34381, !noalias !34370, !noundef !45
  %i.aud = add i32 %i.auc, 1
  store i32 %i.aud, ptr %i.aub, align 4, !alias.scope !34381, !noalias !34370
  %i.aue = icmp eq i64 %.sroa.02.0.add.i.i.i66.1, 80
  br i1 %i.aue, label %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.loopexit.i.i, label %.preheader.i.i.i63

.split32.us.i.invoke.i:                           ; preds = %.preheader.i.i.i63, %.preheader.i.i.i63.1, %.preheader.i.i.i.i69, %.preheader.i.i.i.i69.1
  %i.auf = phi i64 [ %i.avc, %.preheader.i.i.i.i69.1 ], [ %i.auv, %.preheader.i.i.i.i69 ], [ %i.ats, %.preheader.i.i.i63 ], [ %i.atz, %.preheader.i.i.i63.1 ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.auf, i64 noundef 704, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1926) #43
          to label %.split32.us.i.cont.i unwind label %.thread.i60, !noalias !34370

.split32.us.i.cont.i:                             ; preds = %.split32.us.i.invoke.i
  unreachable

.split932:                                        ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.loopexit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34383)
  %i.aug = udiv i64 %i.aos, 40
  %i.auh = add nuw nsw i64 %i.aug, 99
  %i.aui = add nuw nsw i64 %i.auh, %spec.store.select.i44 ; 2 uses
  %i.auj = urem i64 %i.aui, %spec.store.select.i44
  %i.auk = sub nuw nsw i64 %i.aui, %i.auj
  %i.aul = getelementptr inbounds nuw i8, ptr %i.ab, i64 2816 ; 2 uses
  %i.aum = getelementptr inbounds nuw i8, ptr %i.ab, i64 2824
  %i.aun = add nsw i64 %2, -39
  br label %_ZN6brotli3enc9histogram14HistogramClear17h1e24dd49ad85b309E.exit.i.i

_ZN6brotli3enc9histogram14HistogramClear17h1e24dd49ad85b309E.exit.i.i: ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17h186846fca064014bE.exit.i.i, %.split932
  %.sroa.03.022.i.i = phi i64 [ 0, %.split932 ], [ %i.auo, %_ZN6brotli3enc9histogram21HistogramAddHistogram17h186846fca064014bE.exit.i.i ] ; 2 uses
  %.sroa.0.021.i.i = phi i32 [ 7, %.split932 ], [ %spec.store.select.i.i.i68, %_ZN6brotli3enc9histogram21HistogramAddHistogram17h186846fca064014bE.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !34384
  %i.auo = add nuw i64 %.sroa.03.022.i.i, 1       ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2816) %i.ab, i8 0, i64 2816, i1 false), !noalias !34384
  store float 3.402000e+38, ptr %i.aum, align 8, !alias.scope !34385, !noalias !34384
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34387)
  %i.aup = mul i32 %.sroa.0.021.i.i, 16807
  %i.auq = icmp eq i32 %.sroa.0.021.i.i, 0
  %spec.store.select.i.i.i68 = select i1 %i.auq, i32 1, i32 %i.aup ; 2 uses
  %i.aur = zext i32 %spec.store.select.i.i.i68 to i64
  %i.aus = urem i64 %i.aur, %i.aun
  %i.aut = getelementptr inbounds nuw [2 x i8], ptr %i.aoz, i64 %i.aus ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34389)
  store i64 40, ptr %i.aul, align 8, !alias.scope !34390, !noalias !34384
  br label %.preheader.i.i.i.i69

.preheader.i.i.i.i69:                             ; preds = %bb.go, %_ZN6brotli3enc9histogram14HistogramClear17h1e24dd49ad85b309E.exit.i.i
  %.sroa.02.0.idx7.i.i.i.i70 = phi i64 [ 0, %_ZN6brotli3enc9histogram14HistogramClear17h1e24dd49ad85b309E.exit.i.i ], [ %.sroa.02.0.add.i.i.i.i72.1, %bb.go ] ; 3 uses
  %.sroa.02.0.ptr.i.i.i.i71 = getelementptr inbounds nuw i8, ptr %i.aut, i64 %.sroa.02.0.idx7.i.i.i.i70
  %i.auu = load i16, ptr %.sroa.02.0.ptr.i.i.i.i71, align 2, !alias.scope !34391, !noundef !45 ; 2 uses
  %i.auv = zext i16 %i.auu to i64                 ; 2 uses
  %i.auw = icmp ult i16 %i.auu, 704
  br i1 %i.auw, label %.preheader.i.i.i.i69.1, label %.split32.us.i.invoke.i

.preheader.i.i.i.i69.1:                           ; preds = %.preheader.i.i.i.i69
  %i.aux = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.auv ; 2 uses
  %i.auy = load i32, ptr %i.aux, align 4, !alias.scope !34392, !noalias !34384, !noundef !45
  %i.auz = add i32 %i.auy, 1
  store i32 %i.auz, ptr %i.aux, align 4, !alias.scope !34392, !noalias !34384
  %i.ava = getelementptr inbounds nuw i8, ptr %i.aut, i64 %.sroa.02.0.idx7.i.i.i.i70
  %.sroa.02.0.ptr.i.i.i.i71.1 = getelementptr inbounds nuw i8, ptr %i.ava, i64 2
  %i.avb = load i16, ptr %.sroa.02.0.ptr.i.i.i.i71.1, align 2, !alias.scope !34391, !noundef !45 ; 2 uses
  %i.avc = zext i16 %i.avb to i64                 ; 2 uses
  %i.avd = icmp ult i16 %i.avb, 704
  br i1 %i.avd, label %bb.go, label %.split32.us.i.invoke.i

bb.go:                                            ; preds = %.preheader.i.i.i.i69.1
  %.sroa.02.0.add.i.i.i.i72.1 = add nuw nsw i64 %.sroa.02.0.idx7.i.i.i.i70, 4 ; 2 uses
  %i.ave = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.avc ; 2 uses
  %i.avf = load i32, ptr %i.ave, align 4, !alias.scope !34392, !noalias !34384, !noundef !45
  %i.avg = add i32 %i.avf, 1
  store i32 %i.avg, ptr %i.ave, align 4, !alias.scope !34392, !noalias !34384
  %i.avh = icmp eq i64 %.sroa.02.0.add.i.i.i.i72.1, 80
  br i1 %i.avh, label %vector.ph3647, label %.preheader.i.i.i.i69

vector.ph3647:                                    ; preds = %bb.go
  %i.avi = urem i64 %.sroa.03.022.i.i, %spec.store.select.i44
  %i.avj = getelementptr inbounds nuw [2832 x i8], ptr %i.arh, i64 %i.avi ; 3 uses
  %i.avk = getelementptr inbounds nuw i8, ptr %i.avj, i64 2816 ; 2 uses
  %i.avl = load i64, ptr %i.avk, align 8, !alias.scope !34393, !noalias !34394, !noundef !45
  %i.avm = load i64, ptr %i.aul, align 8, !alias.scope !34395, !noalias !34384, !noundef !45
  %i.avn = add i64 %i.avm, %i.avl
  store i64 %i.avn, ptr %i.avk, align 8, !alias.scope !34396, !noalias !34370
  br label %vector.body3648

vector.body3648:                                  ; preds = %vector.body3648, %vector.ph3647
  %index3649 = phi i64 [ 0, %vector.ph3647 ], [ %index.next3654.1, %vector.body3648 ] ; 4 uses
  %i.avo = getelementptr inbounds nuw [4 x i8], ptr %i.avj, i64 %index3649 ; 3 uses
  %i.avp = getelementptr inbounds nuw i8, ptr %i.avo, i64 16 ; 2 uses
  %wide.load3650 = load <4 x i32>, ptr %i.avo, align 4, !alias.scope !34383, !noalias !34370
  %wide.load3651 = load <4 x i32>, ptr %i.avp, align 4, !alias.scope !34383, !noalias !34370
  %i.avq = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index3649 ; 2 uses
  %i.avr = getelementptr inbounds nuw i8, ptr %i.avq, i64 16
  %wide.load3652 = load <4 x i32>, ptr %i.avq, align 8, !noalias !34384
  %wide.load3653 = load <4 x i32>, ptr %i.avr, align 8, !noalias !34384
  %i.avs = add <4 x i32> %wide.load3652, %wide.load3650
  %i.avt = add <4 x i32> %wide.load3653, %wide.load3651
  store <4 x i32> %i.avs, ptr %i.avo, align 4, !alias.scope !34383, !noalias !34370
  store <4 x i32> %i.avt, ptr %i.avp, align 4, !alias.scope !34383, !noalias !34370
  %index.next3654 = or disjoint i64 %index3649, 8 ; 2 uses
  %i.avu = getelementptr inbounds nuw [4 x i8], ptr %i.avj, i64 %index.next3654 ; 3 uses
  %i.avv = getelementptr inbounds nuw i8, ptr %i.avu, i64 16 ; 2 uses
  %wide.load3650.1 = load <4 x i32>, ptr %i.avu, align 4, !alias.scope !34383, !noalias !34370
  %wide.load3651.1 = load <4 x i32>, ptr %i.avv, align 4, !alias.scope !34383, !noalias !34370
  %i.avw = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index.next3654 ; 2 uses
  %i.avx = getelementptr inbounds nuw i8, ptr %i.avw, i64 16
  %wide.load3652.1 = load <4 x i32>, ptr %i.avw, align 8, !noalias !34384
  %wide.load3653.1 = load <4 x i32>, ptr %i.avx, align 8, !noalias !34384
  %i.avy = add <4 x i32> %wide.load3652.1, %wide.load3650.1
  %i.avz = add <4 x i32> %wide.load3653.1, %wide.load3651.1
  store <4 x i32> %i.avy, ptr %i.avu, align 4, !alias.scope !34383, !noalias !34370
  store <4 x i32> %i.avz, ptr %i.avv, align 4, !alias.scope !34383, !noalias !34370
  %index.next3654.1 = add nuw nsw i64 %index3649, 16 ; 2 uses
  %i.awa = icmp eq i64 %index.next3654.1, 704
  br i1 %i.awa, label %_ZN6brotli3enc9histogram21HistogramAddHistogram17h186846fca064014bE.exit.i.i, label %vector.body3648, !llvm.loop !33725

_ZN6brotli3enc9histogram21HistogramAddHistogram17h186846fca064014bE.exit.i.i: ; preds = %vector.body3648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !34384
  %exitcond35.not.i.i = icmp eq i64 %i.auo, %i.auk
  br i1 %exitcond35.not.i.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i73, label %_ZN6brotli3enc9histogram14HistogramClear17h1e24dd49ad85b309E.exit.i.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i73: ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17h186846fca064014bE.exit.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34397
  %i.awb = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %2, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !34397 ; 14 uses
  %i.awc = icmp eq ptr %i.awb, null
  br i1 %i.awc, label %bb.gp, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i144.i

bb.gp:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i73
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc143.i unwind label %.thread.i60, !noalias !34370

.noexc143.i:                                      ; preds = %bb.gp
  unreachable

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i144.i: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i73
  %i.awd = add nuw nsw i64 %i.arc, 8
  %i.awe = lshr i64 %i.awd, 3                     ; 19 uses
  %i.awf = mul nuw nsw i64 %spec.store.select.i44, 704 ; 8 uses
  %i.awg = mul nuw nsw i64 %spec.store.select.i44, 2816 ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34398
  %i.awh = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.awg, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !34398 ; 9 uses
  %i.awi = icmp eq ptr %i.awh, null
  br i1 %i.awi, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i144.i
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.awg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc147.i unwind label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit219.thread.i", !noalias !34370

.noexc147.i:                                      ; preds = %bb.gq
  unreachable

"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit219.thread.i": ; preds = %bb.gq
  %i.awj = landingpad { ptr, i32 }
          cleanup
  tail call void @mi_free(ptr noundef nonnull %i.awb) #38, !noalias !34370
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit.i"

bb.gr:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i144.i
  %i.awk = shl nuw nsw i64 %i.awe, 5              ; 4 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34399
  %i.awl = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.awk, i64 noundef range(i64 1, 9) 4) #38, !noalias !34399 ; 24 uses
  %i.awm = icmp eq ptr %i.awl, null
  br i1 %i.awm, label %bb.gs, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hef58b721ea58c2dfE.exit.i.i.i.i74"

bb.gs:                                            ; preds = %bb.gr
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.awk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc150.i unwind label %.thread39.i406, !noalias !34370

.noexc150.i:                                      ; preds = %bb.gs
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hef58b721ea58c2dfE.exit.i.i.i.i74": ; preds = %bb.gr
  %i.awn = icmp samesign ugt i64 %2, 4239
  br i1 %i.awn, label %.lr.ph.i.i.i148.preheader.i, label %.loopexit114.i

.lr.ph.i.i.i148.preheader.i:                      ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hef58b721ea58c2dfE.exit.i.i.i.i74"
  %i.awo = add nsw i64 %i.awk, -32                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.awl, i8 0, i64 %i.awo, i1 false), !noalias !34370
  %scevgep.i405 = getelementptr i8, ptr %i.awl, i64 %i.awo
  br label %.loopexit114.i

.thread39.i406:                                   ; preds = %bb.gs
  %i.awp = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i89"

.loopexit114.i:                                   ; preds = %.lr.ph.i.i.i148.preheader.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hef58b721ea58c2dfE.exit.i.i.i.i74"
  %.sroa.0.0.lcssa.i.i.i.i75 = phi ptr [ %i.awl, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hef58b721ea58c2dfE.exit.i.i.i.i74" ], [ %scevgep.i405, %.lr.ph.i.i.i148.preheader.i ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.0.0.lcssa.i.i.i.i75, i8 0, i64 32, i1 false), !noalias !34370
  %i.awq = mul i64 %i.awe, %2                     ; 11 uses
  %i.awr = icmp slt i64 %i.awq, 0
  br i1 %i.awr, label %bb.gv, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i151.i, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i151.i: ; preds = %.loopexit114.i
  %i.aws = icmp eq i64 %i.awq, 0                  ; 3 uses
  br i1 %i.aws, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i157.i, label %bb.gt

bb.gt:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i151.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34400
  %i.awt = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.awq, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !34400 ; 2 uses
  %i.awu = icmp eq ptr %i.awt, null
  br i1 %i.awu, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.awv = ptrtoint ptr %i.awt to i64
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i157.i

bb.gv:                                            ; preds = %bb.gt, %.loopexit114.i
  %.sroa.4.0.ph.i.i153.i = phi i64 [ 1, %bb.gt ], [ 0, %.loopexit114.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i153.i, i64 %i.awq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc154.i unwind label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.thread.i404", !noalias !34370

.noexc154.i:                                      ; preds = %bb.gv
  unreachable

"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.thread.i404": ; preds = %bb.gv
  %i.aww = landingpad { ptr, i32 }
          cleanup
  tail call void @mi_free(ptr noundef nonnull %i.awl) #38, !noalias !34370
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i89"

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i157.i: ; preds = %bb.gu, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i151.i
  %.sroa.10.0.i.i152.i = phi i64 [ %i.awv, %bb.gu ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i151.i ]
  %i.awx = inttoptr i64 %.sroa.10.0.i.i152.i to ptr ; 8 uses
  %i.awy = shl nuw nsw i64 %spec.store.select.i44, 1 ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34401
  %i.awz = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.awy, i64 noundef range(i64 1, -9223372036854775807) 2) #38, !noalias !34401 ; 4 uses
  %i.axa = icmp eq ptr %i.awz, null
  br i1 %i.axa, label %bb.gw, label %.split.i76

bb.gw:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i157.i
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 2, i64 %i.awy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc160.i unwind label %.thread55.i403, !noalias !34370

.noexc160.i:                                      ; preds = %bb.gw
  unreachable

.thread55.i403:                                   ; preds = %bb.gw
  %i.axb = landingpad { ptr, i32 }
          cleanup
  br label %bb.nb

.split.i76:                                       ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i157.i
  %i.axc = icmp slt i32 %.72.val, 12
  %..i77 = select i1 %i.axc, i64 3, i64 10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.awx) ]
  %i.axd = getelementptr inbounds nuw i8, ptr %i.aoz, i64 %i.aos
  %i.axe = add nsw i64 %2, -1                     ; 3 uses
  %i.axf = getelementptr inbounds nuw i8, ptr %i.awb, i64 %i.axe
  br label %bb.kn

_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h6c59ba65453f6d9bE.exit.loopexit.i: ; preds = %_ZN6brotli3enc9histogram16HistogramAddItem17hd4bb9e12450b56bfE.exit.i.i
  %i.axg = icmp samesign ult i64 %.sroa.032.1443.i, %..i77 ; 2 uses
  %i.axh = zext i1 %i.axg to i64
  %.sroa.032.1.i197 = add nuw nsw i64 %.sroa.032.1443.i, %i.axh
  br i1 %i.axg, label %bb.kn, label %bb.gx

.body.i395:                                       ; preds = %bb.ha
  %lpad.thr_comm.split-lp.i396 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit219.i"

bb.gx:                                            ; preds = %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h6c59ba65453f6d9bE.exit.loopexit.i
  tail call void @mi_free(ptr noundef nonnull align 4 %i.awh) #38, !noalias !34370
  tail call void @mi_free(ptr noundef nonnull align 4 %i.awl) #38, !noalias !34370
  br i1 %i.aws, label %bb.gy, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i162.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i162.i": ; preds = %bb.gx
  tail call void @mi_free(ptr noundef nonnull align 1 %i.awx) #38, !noalias !34370
  br label %bb.gy

bb.gy:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i162.i", %bb.gx
  tail call void @mi_free(ptr noundef nonnull align 2 %i.awz) #38, !noalias !34370
  tail call void @mi_free(ptr noundef nonnull align 8 %i.arh) #38, !noalias !34370
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34404)
  %i.axi = shl i64 %.sroa.0.0.i.i196, 2           ; 6 uses
  %i.axj = icmp ugt i64 %.sroa.0.0.i.i196, 4611686018427387903
  %i.axk = icmp ugt i64 %i.axi, 9223372036854775804
  %or.cond.i.i.i.i.i165.i = or i1 %i.axj, %i.axk
  br i1 %or.cond.i.i.i.i.i165.i, label %bb.ha, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i166.i, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i166.i: ; preds = %bb.gy
  %i.axl = icmp eq i64 %i.axi, 0
  br i1 %i.axl, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i410.thread.i.i397, label %bb.gz

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i410.thread.i.i397: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i166.i
  %i.axm = icmp samesign ult i64 %.sroa.0.0.i.i196, 2305843009213693952
  tail call void @llvm.assume(i1 %i.axm)
  br label %bb.hd

bb.gz:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i166.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34405
  %i.axn = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.axi, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !34405 ; 3 uses
  %i.axo = icmp eq ptr %i.axn, null
  br i1 %i.axo, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %bb.gz, %bb.gy
  %.sroa.4.0.ph.i.i.i170.i = phi i64 [ 4, %bb.gz ], [ 0, %bb.gy ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i170.i, i64 %i.axi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc171.i unwind label %.body.i395, !noalias !34370

.noexc171.i:                                      ; preds = %bb.ha
  unreachable

bb.hb:                                            ; preds = %bb.gz
  %i.axp = icmp samesign ult i64 %.sroa.0.0.i.i196, 2305843009213693952
  tail call void @llvm.assume(i1 %i.axp)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34406
  %i.axq = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.axi, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !34406 ; 2 uses
  %i.axr = icmp eq ptr %i.axq, null
  br i1 %i.axr, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hb
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.axi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc413.i.i394 unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i", !noalias !34407

.noexc413.i.i394:                                 ; preds = %bb.hc
  unreachable

bb.hd:                                            ; preds = %bb.hb, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i410.thread.i.i397
  %i.axs = phi ptr [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i410.thread.i.i397 ], [ %i.axn, %bb.hb ] ; 10 uses
  %.sroa.10.0.i.i411.i.i198 = phi ptr [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i410.thread.i.i397 ], [ %i.axq, %bb.hb ] ; 6 uses
  %i.axt = shl i64 %.sroa.0.0.i.i196, 4
  %i.axu = add i64 %i.axt, 1008                   ; 3 uses
  %i.axv = lshr i64 %i.axu, 6                     ; 17 uses
  %i.axw = mul i64 %i.axv, 2832                   ; 3 uses
  %or.cond.i.i.i.i.i.i.i199 = icmp ugt i64 %i.axu, 208437786143610815
  br i1 %or.cond.i.i.i.i.i.i.i199, label %bb.hf, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i200, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i200: ; preds = %bb.hd
  %i.axx = icmp eq i64 %i.axw, 0
  br i1 %i.axx, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i.i", label %bb.he

bb.he:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i200
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34408
  %i.axy = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.axw, i64 noundef range(i64 1, 9) 8) #38, !noalias !34408 ; 2 uses
  %i.axz = icmp eq ptr %i.axy, null
  br i1 %i.axz, label %bb.hf, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i.i"

bb.hf:                                            ; preds = %bb.he, %bb.hd
  %.sroa.4.0.ph.i.i.i.i.i391 = phi i64 [ 8, %bb.he ], [ 0, %bb.hd ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i391, i64 %i.axw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc415.i.i393 unwind label %.thread86.i.i392, !noalias !34407

.noexc415.i.i393:                                 ; preds = %bb.hf
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i.i": ; preds = %bb.he, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i200
  %.sroa.10.0.i.i.i.i.i201 = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i200 ], [ %i.axy, %bb.he ] ; 8 uses
  %.sroa.4.0.i.i.i.i.i202 = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i200 ], [ %i.axv, %bb.he ]
  %i.aya = icmp samesign ule i64 %i.axv, %.sroa.4.0.i.i.i.i.i202
  tail call void @llvm.assume(i1 %i.aya)
  %i.ayb = icmp samesign ugt i64 %i.axu, 127
  br i1 %i.ayb, label %.lr.ph.i.i.i.i.i386.preheader, label %._crit_edge.i.i.i.i.i203

.lr.ph.i.i.i.i.i386.preheader:                    ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i.i"
  %i.ayc = add nsw i64 %i.axv, -1                 ; 2 uses
  %i.ayd = add nsw i64 %i.axv, -2
  %xtraiter4543 = and i64 %i.ayc, 7               ; 3 uses
  %i.aye = icmp ult i64 %i.ayd, 7
  br i1 %i.aye, label %.lr.ph.i.i.i.i.i386.epil.preheader, label %.lr.ph.i.i.i.i.i386.preheader.new

.lr.ph.i.i.i.i.i386.preheader.new:                ; preds = %.lr.ph.i.i.i.i.i386.preheader
  %unroll_iter4548 = and i64 %i.ayc, -8
  br label %.lr.ph.i.i.i.i.i386

._crit_edge.i.i.i.i.i203:                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i.i"
  %.not.i.i.i.i.i204 = icmp eq i64 %i.axv, 0
  br i1 %.not.i.i.i.i.i204, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i208, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.i.i205

.lr.ph.i.i.i.i.i386:                              ; preds = %.lr.ph.i.i.i.i.i386, %.lr.ph.i.i.i.i.i386.preheader.new
  %.sroa.0.08.i.i.i.i.i387 = phi ptr [ %.sroa.10.0.i.i.i.i.i201, %.lr.ph.i.i.i.i.i386.preheader.new ], [ %i.aym, %.lr.ph.i.i.i.i.i386 ] ; 17 uses
  %niter4549 = phi i64 [ 0, %.lr.ph.i.i.i.i.i386.preheader.new ], [ %niter4549.next.7, %.lr.ph.i.i.i.i.i386 ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i389 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i387, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.08.i.i.i.i.i387, i8 0, i64 2824, i1 false), !noalias !34407
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i389, align 8, !noalias !34409
end_hunk_2
begin_hunk_3_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
  br i1 %.not.i168.i, label %._crit_edge.i.i267, label %.lr.ph.preheader.i.i264

.lr.ph.preheader.i.i264:                          ; preds = %bb.kd
  %i.bme = zext i32 %i.bmd to i64
  %reass.sub.i265 = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %.sroa.043.3569.i.i)
  %i.bmf = add nuw nsw i64 %reass.sub.i265, 1
  br label %.lr.ph.i.i266

._crit_edge.i.i267:                               ; preds = %bb.kg, %bb.kd
  %.sroa.043.4.lcssa.i.i268 = phi i64 [ %.sroa.043.3569.i.i, %bb.kd ], [ %i.bna, %bb.kg ] ; 2 uses
  %i.bmg = invoke fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17ha8491ed593501ad1E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2832) %i.blx)
          to label %bb.ke unwind label %.thread163.loopexit.split-lp.loopexit.i.loopexit.split-lp.i271.loopexit.split-lp.loopexit.split-lp, !noalias !34407

bb.ke:                                            ; preds = %._crit_edge.i.i267
  store float %i.bmg, ptr %i.blz, align 8, !alias.scope !34452, !noalias !34407
  %i.bmh = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.sroa.0127.0568.i.i
  %i.bmi = trunc nuw nsw i64 %.sroa.0127.0568.i.i to i32 ; 2 uses
  store i32 %i.bmi, ptr %i.bmh, align 4, !noalias !34407
  %i.bmj = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.sroa.0127.0568.i.i
  store i32 %i.bmi, ptr %i.bmj, align 4, !noalias !34407
  %i.bmk = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.sroa.0127.0568.i.i
  store i32 1, ptr %i.bmk, align 4, !noalias !34407
  %i.bml = icmp samesign ult i64 %.sroa.0127.1570.i.i, %.sroa.0.0.i447.i.i263 ; 2 uses
  %i.bmm = zext i1 %i.bml to i64
  %.sroa.0127.1.i.i270 = add nuw i64 %.sroa.0127.1570.i.i, %i.bmm
  br i1 %i.bml, label %.lr.ph571.i.i, label %._crit_edge572.i.loopexit.i

.lr.ph.i.i266:                                    ; preds = %bb.kg, %.lr.ph.preheader.i.i264
  %i.bmn = phi i64 [ %i.bnb, %bb.kg ], [ 1, %.lr.ph.preheader.i.i264 ] ; 3 uses
  %.sroa.043.4567.i.i = phi i64 [ %i.bna, %bb.kg ], [ %.sroa.043.3569.i.i, %.lr.ph.preheader.i.i264 ] ; 3 uses
  %exitcond837.not.i.i = icmp eq i64 %i.bmn, %i.bmf
  br i1 %exitcond837.not.i.i, label %.invoke3812, label %bb.kf

bb.kf:                                            ; preds = %.lr.ph.i.i266
  %i.bmo = getelementptr inbounds nuw [2 x i8], ptr %i.aoz, i64 %.sroa.043.4567.i.i
  %i.bmp = load i16, ptr %i.bmo, align 2, !alias.scope !34453, !noundef !45 ; 2 uses
  %i.bmq = zext i16 %i.bmp to i64                 ; 2 uses
  %i.bmr = icmp ult i16 %i.bmp, 704
  br i1 %i.bmr, label %bb.kg, label %.invoke3812

.invoke3812:                                      ; preds = %.lr.ph571.i.i, %bb.kf, %.lr.ph.i.i266
  %i.bms = phi i64 [ %.sroa.043.4567.i.i, %.lr.ph.i.i266 ], [ %i.bmq, %bb.kf ], [ %i.bma, %.lr.ph571.i.i ]
  %i.bmt = phi i64 [ %2, %.lr.ph.i.i266 ], [ 704, %bb.kf ], [ %.sroa.0.0.i.i196, %.lr.ph571.i.i ]
  %i.bmu = phi ptr [ @1562, %.lr.ph.i.i266 ], [ @1925, %bb.kf ], [ @1561, %.lr.ph571.i.i ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bms, i64 noundef %i.bmt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bmu) #43
          to label %.cont3813 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i221, !noalias !34407

.cont3813:                                        ; preds = %.invoke3812
  unreachable

bb.kg:                                            ; preds = %bb.kf
  %i.bmv = getelementptr inbounds nuw [4 x i8], ptr %i.blx, i64 %i.bmq ; 2 uses
  %i.bmw = load i32, ptr %i.bmv, align 4, !alias.scope !34454, !noalias !34407, !noundef !45
  %i.bmx = add i32 %i.bmw, 1
  store i32 %i.bmx, ptr %i.bmv, align 4, !alias.scope !34454, !noalias !34407
  %i.bmy = load i64, ptr %i.bly, align 8, !alias.scope !34455, !noalias !34407, !noundef !45
  %i.bmz = add i64 %i.bmy, 1
  store i64 %i.bmz, ptr %i.bly, align 8, !alias.scope !34456, !noalias !34407
  %i.bna = add nuw i64 %.sroa.043.4567.i.i, 1     ; 2 uses
  %i.bnb = add nuw nsw i64 %i.bmn, 1
  %exitcond838.not.i.i = icmp eq i64 %i.bmn, %i.bme
  br i1 %exitcond838.not.i.i, label %._crit_edge.i.i267, label %.lr.ph.i.i266

bb.kh:                                            ; preds = %bb.kk, %bb.ho
  %.sroa.047.0565.i.i = phi i64 [ 0, %bb.ho ], [ %i.bng, %bb.kk ] ; 2 uses
  %.sroa.059.0564.i.i = phi i64 [ 0, %bb.ho ], [ %.sroa.059.1.i.i260, %bb.kk ] ; 5 uses
  %i.bnc = icmp ult i64 %.sroa.059.0564.i.i, %.sroa.0.0.i.i196
  br i1 %i.bnc, label %bb.ki, label %.invoke.i.i220

bb.ki:                                            ; preds = %bb.kh
  %i.bnd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i198, i64 %.sroa.059.0564.i.i ; 2 uses
  %i.bne = load i32, ptr %i.bnd, align 4, !noalias !34407, !noundef !45
  %i.bnf = add i32 %i.bne, 1
  store i32 %i.bnf, ptr %i.bnd, align 4, !noalias !34407
  %i.bng = add nuw nsw i64 %.sroa.047.0565.i.i, 1 ; 3 uses
  %.not914.i.i = icmp eq i64 %i.bng, %2           ; 2 uses
  br i1 %.not914.i.i, label %bb.kl, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.bnh = getelementptr inbounds nuw i8, ptr %i.awb, i64 %.sroa.047.0565.i.i
  %i.bni = load i8, ptr %i.bnh, align 1, !alias.scope !34403, !noalias !34370, !noundef !45
  %i.bnj = getelementptr inbounds nuw i8, ptr %i.awb, i64 %i.bng
  %i.bnk = load i8, ptr %i.bnj, align 1, !alias.scope !34403, !noalias !34370, !noundef !45
  %.not238.i.i259 = icmp eq i8 %i.bni, %i.bnk
  br i1 %.not238.i.i259, label %bb.kk, label %bb.kl

.invoke.i.i220:                                   ; preds = %bb.kh
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.059.0564.i.i, i64 noundef %.sroa.0.0.i.i196, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1563) #43
          to label %.cont.i.i258 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i221, !noalias !34407

.cont.i.i258:                                     ; preds = %.invoke.i.i220
  unreachable

bb.kk:                                            ; preds = %bb.kl, %bb.kj
  %.sroa.059.1.i.i260 = phi i64 [ %i.bnl, %bb.kl ], [ %.sroa.059.0564.i.i, %bb.kj ]
  br i1 %.not914.i.i, label %.split.i.i261, label %bb.kh

bb.kl:                                            ; preds = %bb.kj, %bb.ki
  %i.bnl = add nuw nsw i64 %.sroa.059.0564.i.i, 1
  br label %bb.kk

.thread130.i.i296:                                ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i", %.loopexit.split-lp.loopexit.split-lp.i.i312, %bb.hp
  %.pn230155.i.i297 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i295, %bb.hp ], [ %.pn.i.i317, %.loopexit.split-lp.loopexit.split-lp.i.i312 ], [ %.pn940.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ] ; 2 uses
  %.sroa.016.4154.i.i298 = phi ptr [ %.sroa.016.7.i.i273, %bb.hp ], [ %.sroa.016.6.i.i316, %.loopexit.split-lp.loopexit.split-lp.i.i312 ], [ %.sroa.016.6939.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ] ; 2 uses
  %.sroa.14.4153.i.i299 = phi i64 [ %.sroa.14.7.i.i272, %bb.hp ], [ %.sroa.14.6.i.i315, %.loopexit.split-lp.loopexit.split-lp.i.i312 ], [ %.sroa.14.6938.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ] ; 2 uses
  %.sroa.026.3152.i.i300 = phi ptr [ %.sroa.026.4.ph162.i.i294, %bb.hp ], [ inttoptr (i64 4 to ptr), %.loopexit.split-lp.loopexit.split-lp.i.i312 ], [ inttoptr (i64 4 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ] ; 2 uses
  %.sroa.12.3151.i.i301 = phi i64 [ %.sroa.12.4.ph161.i.i293, %bb.hp ], [ 0, %.loopexit.split-lp.loopexit.split-lp.i.i312 ], [ 0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ] ; 2 uses
  %.sroa.044.0148.i.i302 = phi ptr [ %.sroa.044.1.ph160.i.i292, %bb.hp ], [ inttoptr (i64 4 to ptr), %.loopexit.split-lp.loopexit.split-lp.i.i312 ], [ inttoptr (i64 4 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ]
  %.sroa.11.0147.i.i303 = phi i1 [ %.sroa.11.1.ph159.i.i291, %bb.hp ], [ true, %.loopexit.split-lp.loopexit.split-lp.i.i312 ], [ true, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ]
  %.sroa.051.0146.i.i304 = phi ptr [ %i.bao, %bb.hp ], [ %.sroa.051.2.i.i314, %.loopexit.split-lp.loopexit.split-lp.i.i312 ], [ %.sroa.051.2937.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ] ; 2 uses
  %.sroa.1152.0145.i.i305 = phi i64 [ %i.bkn, %bb.hp ], [ %.sroa.1152.2.i.i313, %.loopexit.split-lp.loopexit.split-lp.i.i312 ], [ %.sroa.1152.2936.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ]
  %i.bnm = icmp eq i64 %.sroa.1152.0145.i.i305, 0
  br i1 %i.bnm, label %bb.io, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i554.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i554.i.i": ; preds = %.thread130.i.i296
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.051.0146.i.i304) ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.051.0146.i.i304) #38, !noalias !34407
  br label %bb.io

bb.km:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i167.i", %bb.hi, %.thread86.i.i392
  %.pn230.pn.pn.pn.pn.pn90.i.i256 = phi { ptr, i32 } [ %i.ayn, %.thread86.i.i392 ], [ %.pn230.pn.pn.pn.pn100.i.i254, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i167.i" ], [ %.pn230.pn.pn.pn.i.i252, %bb.hi ] ; 2 uses
  %i.bnn = icmp eq i64 %.sroa.0.0.i.i196, 0
  br i1 %i.bnn, label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit219.i", label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread943.i.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread943.i.i": ; preds = %bb.km
  tail call void @mi_free(ptr noundef nonnull %.sroa.10.0.i.i411.i.i198) #38, !noalias !34407
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i": ; preds = %bb.hc
  %i.bno = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread943.i.i"
  %i.bnp = phi ptr [ %i.axs, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread943.i.i" ], [ %i.axn, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i" ] ; 2 uses
  %.pn230.pn.pn.pn.pn.pn.pn85945.i.i = phi { ptr, i32 } [ %.pn230.pn.pn.pn.pn.pn90.i.i256, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread943.i.i" ], [ %i.bno, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i" ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bnp) ]
  tail call void @mi_free(ptr noundef nonnull %i.bnp) #38, !noalias !34407
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit219.i"

bb.kn:                                            ; preds = %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h6c59ba65453f6d9bE.exit.loopexit.i, %.split.i76
  %.sroa.032.1443.i = phi i64 [ 1, %.split.i76 ], [ %.sroa.032.1.i197, %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h6c59ba65453f6d9bE.exit.loopexit.i ] ; 2 uses
  %.sroa.0.0442.i = phi i64 [ %spec.store.select.i44, %.split.i76 ], [ %i.cdi, %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h6c59ba65453f6d9bE.exit.loopexit.i ] ; 22 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34457)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34459)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34461)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34462)
  %i.bnq = icmp eq i64 %.sroa.0.0442.i, 0
  br i1 %i.bnq, label %.loopexit.i195, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  %i.bnr = add i64 %.sroa.0.0442.i, 7
  %i.bns = lshr i64 %i.bnr, 3                     ; 8 uses
  %i.bnt = icmp eq i64 %.sroa.0.0442.i, 1
  br i1 %i.bnt, label %.preheader.i.preheader.i402, label %bb.kp

.preheader.i.preheader.i402:                      ; preds = %bb.ko
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.awb, i8 0, i64 %2, i1 false), !alias.scope !34462, !noalias !34370
  br label %.loopexit.i195

bb.kp:                                            ; preds = %bb.ko
  %.not121.i.i79 = icmp ugt i64 %.sroa.0.0442.i, %spec.store.select.i44
  br i1 %.not121.i.i79, label %bb.kq, label %.preheader360.i.i80, !prof !87

bb.kq:                                            ; preds = %bb.kp
  %i.bnu = mul nuw nsw i64 %.sroa.0.0442.i, 704
  br label %.invoke1162.i

.invoke1162.i:                                    ; preds = %bb.my, %.lr.ph403.i.preheader.i94, %bb.lc, %bb.kq
  %i.bnv = phi i64 [ %i.bnu, %bb.kq ], [ %i.bns, %bb.lc ], [ %i.bof, %.lr.ph403.i.preheader.i94 ], [ %i.cdi, %bb.my ]
  %i.bnw = phi i64 [ %i.awf, %bb.kq ], [ %i.awe, %bb.lc ], [ %i.awq, %.lr.ph403.i.preheader.i94 ], [ %spec.store.select.i44, %bb.my ]
  %i.bnx = phi ptr [ @1543, %bb.kq ], [ @1572, %bb.lc ], [ @1541, %.lr.ph403.i.preheader.i94 ], [ @1924, %bb.my ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.bnv, i64 noundef %i.bnw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bnx) #43
          to label %.cont1163.i unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i86.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp", !noalias !34370

.cont1163.i:                                      ; preds = %.invoke1162.i
  unreachable

.preheader360.i.i80:                              ; preds = %bb.kp
  %.idx.i.i81 = mul nuw nsw i64 %.sroa.0.0442.i, 2816
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.awh, i8 0, i64 %.idx.i.i81, i1 false), !alias.scope !34459, !noalias !34370
  br label %bb.kr

bb.kr:                                            ; preds = %bb.mw, %.preheader360.i.i80
  %i.bny = phi i64 [ 1, %.preheader360.i.i80 ], [ %i.cdf, %bb.mw ] ; 3 uses
  %.sroa.069.0399.i.i82 = phi i64 [ 0, %.preheader360.i.i80 ], [ %i.bny, %bb.mw ] ; 2 uses
  %i.bnz = getelementptr inbounds nuw [2832 x i8], ptr %i.arh, i64 %.sroa.069.0399.i.i82
  %i.boa = getelementptr inbounds nuw i8, ptr %i.bnz, i64 2816
  %i.bob = load i64, ptr %i.boa, align 8, !alias.scope !34463, !noalias !34370, !noundef !45
  %i.boc = and i64 %i.bob, 4294967295             ; 3 uses
  %i.bod = icmp samesign ult i64 %i.boc, 256
  br i1 %i.bod, label %bb.mx, label %bb.mv

.loopexit358.i.i93:                               ; preds = %bb.mu
  %i.boe = icmp eq i64 %i.bog, 0
  br i1 %i.boe, label %.lr.ph403.i.preheader.i94, label %.split.i177.i

.lr.ph403.i.preheader.i94:                        ; preds = %.loopexit358.i.i93
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.awl, i8 0, i64 %i.awk, i1 false), !alias.scope !34460, !noalias !34370
  %i.bof = mul i64 %i.bns, %2                     ; 4 uses
  %.not124.i.i95 = icmp ugt i64 %i.bof, %i.awq
  br i1 %.not124.i.i95, label %.invoke1162.i, label %bb.ks, !prof !87

.split.i177.i:                                    ; preds = %bb.mw, %.loopexit358.i.i93
  %.sroa.05.0401.i.i84 = phi i64 [ %i.bog, %.loopexit358.i.i93 ], [ 704, %bb.mw ]
  %i.bog = add nsw i64 %.sroa.05.0401.i.i84, -1   ; 4 uses
  %invariant.gep.i178.i = getelementptr [4 x i8], ptr %i.arh, i64 %i.bog
  %i.boh = mul i64 %i.bog, %.sroa.0.0442.i
  br label %bb.mt

bb.ks:                                            ; preds = %.lr.ph403.i.preheader.i94
  %.not355404.i.i96 = icmp samesign eq i64 %i.bof, 0
  br i1 %.not355404.i.i96, label %.lr.ph434.i.i99, label %.lr.ph407.preheader.i.i97

.lr.ph407.preheader.i.i97:                        ; preds = %bb.ks
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.awx, i8 0, i64 %i.bof, i1 false), !alias.scope !34461, !noalias !34370
  br label %.lr.ph434.i.i99

.lr.ph434.i.i99:                                  ; preds = %bb.ks, %.lr.ph407.preheader.i.i97
  %i.boi = lshr i64 %.sroa.0.0442.i, 3            ; 3 uses
  %.not131.i.i100 = icmp samesign ugt i64 %i.boi, %i.awe
  %.idx452.i.i101 = shl nuw nsw i64 %i.boi, 5
  %i.boj = getelementptr inbounds nuw i8, ptr %i.awl, i64 %.idx452.i.i101
  %i.bok = icmp eq i64 %i.boi, 0
  %i.bol = and i64 %.sroa.0.0442.i, -8            ; 8 uses
  %i.bom = and i64 %.sroa.0.0442.i, 7             ; 4 uses
  %.not.i.i181.i = icmp samesign ugt i64 %i.bns, %i.awe
  %.idx453.i.i102 = shl i64 %i.bns, 5             ; 2 uses
  %i.bon = getelementptr inbounds nuw i8, ptr %i.awl, i64 %.idx453.i.i102
  br i1 %.not131.i.i100, label %.lr.ph434.split.us.i.i399, label %.lr.ph434.split.preheader.i.i103, !prof !47

.lr.ph434.split.preheader.i.i103:                 ; preds = %.lr.ph434.i.i99
  %.idx454.i.i = shl nuw nsw i64 %i.bom, 2        ; 3 uses
  %i.boo = icmp eq i64 %i.bom, 0
  %i.bop = lshr i64 %.sroa.0.0442.i, 3            ; 3 uses
  %i.boq = icmp samesign ult i64 %i.bop, %i.awe
  %i.bor = getelementptr inbounds nuw [32 x i8], ptr %i.awl, i64 %i.bop ; 2 uses
  %i.bos = trunc i64 %i.bol to i8
  %i.bot = icmp eq i64 %i.bom, 1                  ; 2 uses
  %.sroa.077.1.idx.i.i151 = select i1 %i.bot, i64 0, i64 4 ; 3 uses
  %i.bou = lshr i64 %.sroa.0.0442.i, 3            ; 3 uses
  %i.bov = icmp samesign ult i64 %i.bou, %i.awe
  %i.bow = getelementptr inbounds nuw [32 x i8], ptr %i.awl, i64 %i.bou
  %i.box = getelementptr inbounds nuw i8, ptr %i.bow, i64 4 ; 2 uses
  %i.boy = trunc i64 %i.bol to i8
  %i.boz = or disjoint i8 %i.boy, 1
  %i.bpa = add nuw nsw i64 %.sroa.077.1.idx.i.i151, 4
  %i.bpb = icmp samesign eq i64 %i.bpa, %.idx454.i.i ; 2 uses
  %.sroa.077.1.idx.i.i151.1 = select i1 %i.bpb, i64 0, i64 4 ; 2 uses
  %i.bpc = lshr i64 %.sroa.0.0442.i, 3            ; 3 uses
  %i.bpd = icmp samesign ult i64 %i.bpc, %i.awe
  %i.bpe = getelementptr inbounds nuw [32 x i8], ptr %i.awl, i64 %i.bpc
  %i.bpf = getelementptr inbounds nuw i8, ptr %i.bpe, i64 8 ; 2 uses
  %i.bpg = trunc i64 %i.bol to i8
  %i.bph = or disjoint i8 %i.bpg, 2
  %i.bpi = add nuw nsw i64 %.sroa.077.1.idx.i.i151, 4
  %i.bpj = add nuw nsw i64 %i.bpi, %.sroa.077.1.idx.i.i151.1
  %i.bpk = icmp samesign eq i64 %i.bpj, %.idx454.i.i ; 2 uses
  %.sroa.077.1.idx.i.i151.2 = select i1 %i.bpk, i64 0, i64 4
  %i.bpl = lshr i64 %.sroa.0.0442.i, 3            ; 3 uses
  %i.bpm = icmp samesign ult i64 %i.bpl, %i.awe
  %i.bpn = getelementptr inbounds nuw [32 x i8], ptr %i.awl, i64 %i.bpl
  %i.bpo = getelementptr inbounds nuw i8, ptr %i.bpn, i64 12 ; 2 uses
  %i.bpp = trunc i64 %i.bol to i8
  %i.bpq = or disjoint i8 %i.bpp, 3
  %i.bpr = lshr i64 %.sroa.0.0442.i, 3            ; 3 uses
  %i.bps = icmp samesign ult i64 %i.bpr, %i.awe
  %i.bpt = getelementptr inbounds nuw [32 x i8], ptr %i.awl, i64 %i.bpr
  %i.bpu = getelementptr inbounds nuw i8, ptr %i.bpt, i64 16 ; 2 uses
  %i.bpv = trunc i64 %i.bol to i8
  %i.bpw = or disjoint i8 %i.bpv, 4
  %i.bpx = lshr i64 %.sroa.0.0442.i, 3            ; 3 uses
  %i.bpy = icmp samesign ult i64 %i.bpx, %i.awe
  %i.bpz = getelementptr inbounds nuw [32 x i8], ptr %i.awl, i64 %i.bpx
  %i.bqa = getelementptr inbounds nuw i8, ptr %i.bpz, i64 20 ; 2 uses
  %i.bqb = trunc i64 %i.bol to i8
  %i.bqc = or disjoint i8 %i.bqb, 5
  %i.bqd = lshr i64 %.sroa.0.0442.i, 3            ; 3 uses
  %i.bqe = icmp samesign ult i64 %i.bqd, %i.awe
  %i.bqf = getelementptr inbounds nuw [32 x i8], ptr %i.awl, i64 %i.bqd
  %i.bqg = getelementptr inbounds nuw i8, ptr %i.bqf, i64 24 ; 2 uses
  %i.bqh = trunc i64 %i.bol to i8
  %i.bqi = or disjoint i8 %i.bqh, 6
  %i.bqj = add i64 %.idx453.i.i102, -32
  %i.bqk = lshr exact i64 %i.bqj, 5
  br label %.lr.ph434.split.i.i104

.lr.ph434.split.us.i.i399:                        ; preds = %.lr.ph434.i.i99
  %i.bql = load i16, ptr %i.aoz, align 2, !alias.scope !34464, !noundef !45
  %i.bqm = zext i16 %i.bql to i64
  %i.bqn = mul nuw nsw i64 %.sroa.0.0442.i, %i.bqm
  %.not130.us.i.i400 = icmp ugt i64 %i.bqn, %i.awf
  br i1 %.not130.us.i.i400, label %.split438.us.i.i398, label %.split440.us.i.i401, !prof !47

.split440.us.i.i401:                              ; preds = %.lr.ph434.split.us.i.i399
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !34465
  br label %.split440.us.i.invoke.i113

.split440.us.i.invoke.i113:                       ; preds = %bb.mb, %bb.lz, %bb.la, %bb.ky, %.split438.us.i.i398, %.split440.us.i.i401
  %.sink.i114.sroa.phi = phi ptr [ %.sink.i114.sroa.gep, %bb.mb ], [ %.sink.i114.sroa.gep40, %bb.lz ], [ %.sink.i114.sroa.gep41, %bb.la ], [ %.sink.i114.sroa.gep42, %bb.ky ], [ %.sink.i114.sroa.gep43, %.split438.us.i.i398 ], [ %.sink.i114.sroa.gep44, %.split440.us.i.i401 ]
  %.sink.i114.sroa.phi45 = phi ptr [ %.sink.i114.sroa.gep46, %bb.mb ], [ %.sink.i114.sroa.gep47, %bb.lz ], [ %.sink.i114.sroa.gep48, %bb.la ], [ %.sink.i114.sroa.gep49, %bb.ky ], [ %.sink.i114.sroa.gep50, %.split438.us.i.i398 ], [ %.sink.i114.sroa.gep51, %.split440.us.i.i401 ]
  %.sink.i114.sroa.phi52 = phi ptr [ %.sink.i114.sroa.gep53, %bb.mb ], [ %.sink.i114.sroa.gep54, %bb.lz ], [ %.sink.i114.sroa.gep55, %bb.la ], [ %.sink.i114.sroa.gep56, %bb.ky ], [ %.sink.i114.sroa.gep57, %.split438.us.i.i398 ], [ %.sink.i114.sroa.gep58, %.split440.us.i.i401 ]
  %.sink.i114.sroa.phi59 = phi ptr [ %.sink.i114.sroa.gep60, %bb.mb ], [ %.sink.i114.sroa.gep61, %bb.lz ], [ %.sink.i114.sroa.gep62, %bb.la ], [ %.sink.i114.sroa.gep63, %bb.ky ], [ %.sink.i114.sroa.gep64, %.split438.us.i.i398 ], [ %.sink.i114.sroa.gep65, %.split440.us.i.i401 ]
  %.sink.i114 = phi ptr [ %i.p, %bb.mb ], [ %i.r, %bb.lz ], [ %i.o, %bb.la ], [ %i.q, %bb.ky ], [ %i.t, %.split438.us.i.i398 ], [ %i.s, %.split440.us.i.i401 ] ; 2 uses
  %i.bqo = phi ptr [ @1539, %bb.mb ], [ @1538, %bb.lz ], [ @1536, %bb.la ], [ @1535, %bb.ky ], [ @1533, %.split438.us.i.i398 ], [ @1534, %.split440.us.i.i401 ]
  store ptr @186, ptr %.sink.i114, align 8, !noalias !34465
  store i64 1, ptr %.sink.i114.sroa.phi, align 8, !noalias !34465
  store ptr null, ptr %.sink.i114.sroa.phi45, align 8, !noalias !34465
  store ptr inttoptr (i64 8 to ptr), ptr %.sink.i114.sroa.phi52, align 8, !noalias !34465
  store i64 0, ptr %.sink.i114.sroa.phi59, align 8, !noalias !34465
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %.sink.i114, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bqo) #43
          to label %.split440.us.i.cont.i115 unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i86.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp", !noalias !34370

.split440.us.i.cont.i115:                         ; preds = %.split440.us.i.invoke.i113
  unreachable

_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i183: ; preds = %bb.ld
  %i.bqp = icmp eq ptr %i.bqq, %i.axd
  br i1 %i.bqp, label %.lr.ph447.preheader.i.i184, label %.lr.ph434.split.i.i104

.lr.ph434.split.i.i104:                           ; preds = %_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i183, %.lr.ph434.split.preheader.i.i103
  %.sroa.0.0336432.i.i105 = phi ptr [ %i.bqq, %_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i183 ], [ %i.aoz, %.lr.ph434.split.preheader.i.i103 ] ; 2 uses
  %.sroa.7.0431.i.i106 = phi i64 [ %i.bqr, %_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i183 ], [ 0, %.lr.ph434.split.preheader.i.i103 ] ; 7 uses
  %i.bqq = getelementptr inbounds nuw i8, ptr %.sroa.0.0336432.i.i105, i64 2 ; 2 uses
  %i.bqr = add nuw nsw i64 %.sroa.7.0431.i.i106, 1
  %exitcond487.not.i.i = icmp eq i64 %.sroa.7.0431.i.i106, %2
  br i1 %exitcond487.not.i.i, label %.invoke.i91, label %bb.kw

.lr.ph447.preheader.i.i184:                       ; preds = %_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i183
  %i.bqs = load i8, ptr %i.axf, align 1, !alias.scope !34462, !noalias !34370, !noundef !45
  %i.bqt = mul i64 %i.bns, %i.axe
  br label %.lr.ph447.i.i185

.lr.ph447.i.i185:                                 ; preds = %bb.kv, %.lr.ph447.preheader.i.i184
  %.sroa.03.0446.i.i186 = phi i64 [ %.sroa.03.1.i.i193, %bb.kv ], [ 1, %.lr.ph447.preheader.i.i184 ] ; 2 uses
  %.sroa.052.0445.i.i187 = phi i64 [ %i.bqu, %bb.kv ], [ %i.axe, %.lr.ph447.preheader.i.i184 ]
  %.sroa.059.0444.i.i188 = phi i64 [ %i.bqv, %bb.kv ], [ %i.bqt, %.lr.ph447.preheader.i.i184 ]
  %.sroa.061.0443.i.i189 = phi i8 [ %.sroa.061.1.i.i192, %bb.kv ], [ %i.bqs, %.lr.ph447.preheader.i.i184 ] ; 4 uses
  %i.bqu = add nsw i64 %.sroa.052.0445.i.i187, -1 ; 4 uses
  %i.bqv = sub i64 %.sroa.059.0444.i.i188, %i.bns ; 2 uses
  %i.bqw = lshr i8 %.sroa.061.0443.i.i189, 3
  %i.bqx = zext nneg i8 %i.bqw to i64
  %i.bqy = add i64 %i.bqv, %i.bqx                 ; 3 uses
  %i.bqz = icmp ult i64 %i.bqy, %i.awq
  br i1 %i.bqz, label %bb.kt, label %.invoke.i91

bb.kt:                                            ; preds = %.lr.ph447.i.i185
  %i.bra = and i8 %.sroa.061.0443.i.i189, 7
  %i.brb = shl nuw i8 1, %i.bra
  %i.brc = getelementptr inbounds nuw i8, ptr %i.awx, i64 %i.bqy
  %i.brd = load i8, ptr %i.brc, align 1, !alias.scope !34461, !noalias !34370, !noundef !45
  %i.bre = and i8 %i.brd, %i.brb
  %i.brf = icmp eq i8 %i.bre, 0
  br i1 %i.brf, label %bb.kv, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.brg = getelementptr inbounds nuw i8, ptr %i.awb, i64 %i.bqu
  %i.brh = load i8, ptr %i.brg, align 1, !alias.scope !34462, !noalias !34370, !noundef !45 ; 2 uses
  %.not129.i.i190 = icmp ne i8 %.sroa.061.0443.i.i189, %i.brh
  %i.bri = zext i1 %.not129.i.i190 to i64
  %spec.select137.i.i191 = add i64 %.sroa.03.0446.i.i186, %i.bri
  br label %bb.kv

bb.kv:                                            ; preds = %bb.ku, %bb.kt
  %.sroa.061.1.i.i192 = phi i8 [ %.sroa.061.0443.i.i189, %bb.kt ], [ %i.brh, %bb.ku ] ; 2 uses
  %.sroa.03.1.i.i193 = phi i64 [ %.sroa.03.0446.i.i186, %bb.kt ], [ %spec.select137.i.i191, %bb.ku ] ; 2 uses
  %i.brj = getelementptr inbounds nuw i8, ptr %i.awb, i64 %i.bqu
  store i8 %.sroa.061.1.i.i192, ptr %i.brj, align 1, !alias.scope !34462, !noalias !34370
  %.not128.i.i194 = icmp eq i64 %i.bqu, 0
  br i1 %.not128.i.i194, label %.loopexit.i195, label %.lr.ph447.i.i185

bb.kw:                                            ; preds = %.lr.ph434.split.i.i104
  %i.brk = getelementptr inbounds nuw i8, ptr %i.awb, i64 %.sroa.7.0431.i.i106 ; 15 uses
  %i.brl = mul i64 %.sroa.7.0431.i.i106, %i.bns   ; 3 uses
  %i.brm = load i16, ptr %.sroa.0.0336432.i.i105, align 2, !alias.scope !34464, !noundef !45
  %i.brn = zext i16 %i.brm to i64
  %i.bro = mul nuw nsw i64 %.sroa.0.0442.i, %i.brn ; 4 uses
  %.not130.i.i107 = icmp ugt i64 %i.bro, %i.awf
  br i1 %.not130.i.i107, label %.split438.us.i.i398, label %bb.kx, !prof !47

.split438.us.i.i398:                              ; preds = %bb.kw, %.lr.ph434.split.us.i.i399
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !34465
  br label %.split440.us.i.invoke.i113

bb.kx:                                            ; preds = %bb.kw
  %i.brp = getelementptr inbounds nuw [4 x i8], ptr %i.awh, i64 %i.bro
  %i.brq = sub nuw nsw i64 %i.awf, %i.bro         ; 2 uses
  br i1 %i.bok, label %._crit_edge416.i.i139, label %.lr.ph415.i.i108

.lr.ph415.i.i108:                                 ; preds = %bb.kx, %bb.ms
  %.sroa.029.0413.i.i109 = phi float [ %.sroa.029.4.7.i.i138, %bb.ms ], [ f0x7E967699, %bb.kx ] ; 2 uses
  %.sroa.0164.0412.i.i110 = phi ptr [ %i.brr, %bb.ms ], [ %i.awl, %bb.kx ] ; 10 uses
  %.sroa.7166.0411.i.i111 = phi i64 [ %i.brs, %bb.ms ], [ 0, %bb.kx ] ; 2 uses
  %i.brr = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i110, i64 32 ; 2 uses
  %i.brs = add nuw nsw i64 %.sroa.7166.0411.i.i111, 1
  %i.brt = shl nuw nsw i64 %.sroa.7166.0411.i.i111, 3 ; 11 uses
  %.not136.i.i112 = icmp samesign ugt i64 %i.brt, %i.brq
  br i1 %.not136.i.i112, label %bb.lz, label %bb.ma, !prof !47

end_hunk_3
begin_hunk_4_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
  %i.cin = getelementptr inbounds nuw i8, ptr %i.chy, i64 %.sroa.02.0.idx7.i.i.i457
  %.sroa.02.0.ptr.i.i.i458.1 = getelementptr inbounds nuw i8, ptr %i.cin, i64 2
  %i.cio = load i16, ptr %.sroa.02.0.ptr.i.i.i458.1, align 2, !alias.scope !34498, !noundef !45 ; 2 uses
  %i.cip = zext i16 %i.cio to i64                 ; 2 uses
  %i.ciq = icmp ult i16 %i.cio, 544
  br i1 %i.ciq, label %bb.nt, label %.split32.us.i.invoke.i459

bb.nt:                                            ; preds = %.preheader.i.i.i456.1
  %.sroa.02.0.add.i.i.i461.1 = add nuw nsw i64 %.sroa.02.0.idx7.i.i.i457, 4 ; 2 uses
  %i.cir = getelementptr inbounds nuw [4 x i8], ptr %i.chw, i64 %i.cip ; 2 uses
  %i.cis = load i32, ptr %i.cir, align 4, !alias.scope !34499, !noalias !34488, !noundef !45
  %i.cit = add i32 %i.cis, 1
  store i32 %i.cit, ptr %i.cir, align 4, !alias.scope !34499, !noalias !34488
  %i.ciu = icmp eq i64 %.sroa.02.0.add.i.i.i461.1, 80
  br i1 %i.ciu, label %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.loopexit.i.i, label %.preheader.i.i.i456

.split32.us.i.invoke.i459:                        ; preds = %.preheader.i.i.i456, %.preheader.i.i.i456.1, %.preheader.i.i.i.i466, %.preheader.i.i.i.i466.1
  %i.civ = phi i64 [ %i.cjw, %.preheader.i.i.i.i466.1 ], [ %i.cjp, %.preheader.i.i.i.i466 ], [ %i.cii, %.preheader.i.i.i456 ], [ %i.cip, %.preheader.i.i.i456.1 ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.civ, i64 noundef 544, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1926) #43
          to label %.split32.us.i.cont.i460 unwind label %.thread.i452, !noalias !34488

.split32.us.i.cont.i460:                          ; preds = %.split32.us.i.invoke.i459
  unreachable

bb.nu:                                            ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.loopexit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34501)
  %i.ciw = shl i64 %.sroa.01.1, 1                 ; 2 uses
  %i.cix = udiv i64 %i.ciw, 40
  %i.ciy = add nuw nsw i64 %i.cix, 99
  %i.ciz = add nuw nsw i64 %i.ciy, %spec.store.select.i433 ; 2 uses
  %i.cja = urem i64 %i.ciz, %spec.store.select.i433
  %i.cjb = sub nuw nsw i64 %i.ciz, %i.cja
  %i.cjc = getelementptr inbounds nuw i8, ptr %i.n, i64 2184
  %i.cjd = getelementptr inbounds nuw i8, ptr %i.n, i64 2176 ; 2 uses
  %i.cje = add i64 %.sroa.01.1, -39
  br label %_ZN6brotli3enc9histogram14HistogramClear17hf9145d293705796bE.exit.i.i

_ZN6brotli3enc9histogram14HistogramClear17hf9145d293705796bE.exit.i.i: ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17hbf6f595fe81a9aafE.exit.i.i, %bb.nu
  %.sroa.03.022.i.i463 = phi i64 [ 0, %bb.nu ], [ %i.cjf, %_ZN6brotli3enc9histogram21HistogramAddHistogram17hbf6f595fe81a9aafE.exit.i.i ] ; 2 uses
  %.sroa.0.021.i.i464 = phi i32 [ 7, %bb.nu ], [ %spec.store.select.i.i.i465, %_ZN6brotli3enc9histogram21HistogramAddHistogram17hbf6f595fe81a9aafE.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !34502
  %i.cjf = add nuw i64 %.sroa.03.022.i.i463, 1    ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2176) %i.n, i8 0, i64 2176, i1 false), !noalias !34502
  store float 3.402000e+38, ptr %i.cjc, align 8, !alias.scope !34503, !noalias !34502
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34504)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34505)
  %i.cjg = mul i32 %.sroa.0.021.i.i464, 16807
  %i.cjh = icmp eq i32 %.sroa.0.021.i.i464, 0
  %spec.store.select.i.i.i465 = select i1 %i.cjh, i32 1, i32 %i.cjg ; 2 uses
  %i.cji = zext i32 %spec.store.select.i.i.i465 to i64
  %i.cjj = urem i64 %i.cji, %i.cje                ; 4 uses
  %i.cjk = icmp samesign ugt i64 %i.cjj, %2
  br i1 %i.cjk, label %.split29.us.i.invoke.i451, label %bb.nv, !prof !47

bb.nv:                                            ; preds = %_ZN6brotli3enc9histogram14HistogramClear17hf9145d293705796bE.exit.i.i
  %i.cjl = sub nuw nsw i64 %2, %i.cjj             ; 2 uses
  %i.cjm = getelementptr inbounds nuw [2 x i8], ptr %i.cfl, i64 %i.cjj ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34506)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34507)
  store i64 40, ptr %i.cjd, align 8, !alias.scope !34508, !noalias !34502
  %i.cjn = icmp samesign ugt i64 %i.cjl, 39
  br i1 %i.cjn, label %.preheader.i.i.i.i466, label %.split29.us.i.invoke.i451, !prof !54

.preheader.i.i.i.i466:                            ; preds = %bb.nv, %bb.nw
  %.sroa.02.0.idx7.i.i.i.i467 = phi i64 [ %.sroa.02.0.add.i.i.i.i469.1, %bb.nw ], [ 0, %bb.nv ] ; 3 uses
  %.sroa.02.0.ptr.i.i.i.i468 = getelementptr inbounds nuw i8, ptr %i.cjm, i64 %.sroa.02.0.idx7.i.i.i.i467
  %i.cjo = load i16, ptr %.sroa.02.0.ptr.i.i.i.i468, align 2, !alias.scope !34509, !noundef !45 ; 2 uses
  %i.cjp = zext i16 %i.cjo to i64                 ; 2 uses
  %i.cjq = icmp ult i16 %i.cjo, 544
  br i1 %i.cjq, label %.preheader.i.i.i.i466.1, label %.split32.us.i.invoke.i459

.preheader.i.i.i.i466.1:                          ; preds = %.preheader.i.i.i.i466
  %i.cjr = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.cjp ; 2 uses
  %i.cjs = load i32, ptr %i.cjr, align 4, !alias.scope !34510, !noalias !34502, !noundef !45
  %i.cjt = add i32 %i.cjs, 1
  store i32 %i.cjt, ptr %i.cjr, align 4, !alias.scope !34510, !noalias !34502
  %i.cju = getelementptr inbounds nuw i8, ptr %i.cjm, i64 %.sroa.02.0.idx7.i.i.i.i467
  %.sroa.02.0.ptr.i.i.i.i468.1 = getelementptr inbounds nuw i8, ptr %i.cju, i64 2
  %i.cjv = load i16, ptr %.sroa.02.0.ptr.i.i.i.i468.1, align 2, !alias.scope !34509, !noundef !45 ; 2 uses
  %i.cjw = zext i16 %i.cjv to i64                 ; 2 uses
  %i.cjx = icmp ult i16 %i.cjv, 544
  br i1 %i.cjx, label %bb.nw, label %.split32.us.i.invoke.i459

bb.nw:                                            ; preds = %.preheader.i.i.i.i466.1
  %.sroa.02.0.add.i.i.i.i469.1 = add nuw nsw i64 %.sroa.02.0.idx7.i.i.i.i467, 4 ; 2 uses
  %i.cjy = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.cjw ; 2 uses
  %i.cjz = load i32, ptr %i.cjy, align 4, !alias.scope !34510, !noalias !34502, !noundef !45
  %i.cka = add i32 %i.cjz, 1
  store i32 %i.cka, ptr %i.cjy, align 4, !alias.scope !34510, !noalias !34502
  %i.ckb = icmp eq i64 %.sroa.02.0.add.i.i.i.i469.1, 80
  br i1 %i.ckb, label %vector.ph3728, label %.preheader.i.i.i.i466

vector.ph3728:                                    ; preds = %bb.nw
  %i.ckc = urem i64 %.sroa.03.022.i.i463, %spec.store.select.i433
  %i.ckd = getelementptr inbounds nuw [2192 x i8], ptr %i.cfv, i64 %i.ckc ; 3 uses
  %i.cke = getelementptr inbounds nuw i8, ptr %i.ckd, i64 2176 ; 2 uses
  %i.ckf = load i64, ptr %i.cke, align 8, !alias.scope !34511, !noalias !34512, !noundef !45
  %i.ckg = load i64, ptr %i.cjd, align 8, !alias.scope !34513, !noalias !34502, !noundef !45
  %i.ckh = add i64 %i.ckg, %i.ckf
  store i64 %i.ckh, ptr %i.cke, align 8, !alias.scope !34514, !noalias !34488
  br label %vector.body3729

vector.body3729:                                  ; preds = %vector.body3729, %vector.ph3728
  %index3730 = phi i64 [ 0, %vector.ph3728 ], [ %index.next3735.1, %vector.body3729 ] ; 4 uses
  %i.cki = getelementptr inbounds nuw [4 x i8], ptr %i.ckd, i64 %index3730 ; 3 uses
  %i.ckj = getelementptr inbounds nuw i8, ptr %i.cki, i64 16 ; 2 uses
  %wide.load3731 = load <4 x i32>, ptr %i.cki, align 4, !alias.scope !34501, !noalias !34488
  %wide.load3732 = load <4 x i32>, ptr %i.ckj, align 4, !alias.scope !34501, !noalias !34488
  %i.ckk = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index3730 ; 2 uses
  %i.ckl = getelementptr inbounds nuw i8, ptr %i.ckk, i64 16
  %wide.load3733 = load <4 x i32>, ptr %i.ckk, align 8, !noalias !34502
  %wide.load3734 = load <4 x i32>, ptr %i.ckl, align 8, !noalias !34502
  %i.ckm = add <4 x i32> %wide.load3733, %wide.load3731
  %i.ckn = add <4 x i32> %wide.load3734, %wide.load3732
  store <4 x i32> %i.ckm, ptr %i.cki, align 4, !alias.scope !34501, !noalias !34488
  store <4 x i32> %i.ckn, ptr %i.ckj, align 4, !alias.scope !34501, !noalias !34488
  %index.next3735 = or disjoint i64 %index3730, 8 ; 2 uses
  %i.cko = getelementptr inbounds nuw [4 x i8], ptr %i.ckd, i64 %index.next3735 ; 3 uses
  %i.ckp = getelementptr inbounds nuw i8, ptr %i.cko, i64 16 ; 2 uses
  %wide.load3731.1 = load <4 x i32>, ptr %i.cko, align 4, !alias.scope !34501, !noalias !34488
  %wide.load3732.1 = load <4 x i32>, ptr %i.ckp, align 4, !alias.scope !34501, !noalias !34488
  %i.ckq = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index.next3735 ; 2 uses
  %i.ckr = getelementptr inbounds nuw i8, ptr %i.ckq, i64 16
  %wide.load3733.1 = load <4 x i32>, ptr %i.ckq, align 8, !noalias !34502
  %wide.load3734.1 = load <4 x i32>, ptr %i.ckr, align 8, !noalias !34502
  %i.cks = add <4 x i32> %wide.load3733.1, %wide.load3731.1
  %i.ckt = add <4 x i32> %wide.load3734.1, %wide.load3732.1
  store <4 x i32> %i.cks, ptr %i.cko, align 4, !alias.scope !34501, !noalias !34488
  store <4 x i32> %i.ckt, ptr %i.ckp, align 4, !alias.scope !34501, !noalias !34488
  %index.next3735.1 = add nuw nsw i64 %index3730, 16 ; 2 uses
  %i.cku = icmp eq i64 %index.next3735.1, 544
  br i1 %i.cku, label %_ZN6brotli3enc9histogram21HistogramAddHistogram17hbf6f595fe81a9aafE.exit.i.i, label %vector.body3729, !llvm.loop !34015

_ZN6brotli3enc9histogram21HistogramAddHistogram17hbf6f595fe81a9aafE.exit.i.i: ; preds = %vector.body3729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !34502
  %exitcond35.not.i.i472 = icmp eq i64 %i.cjf, %i.cjb
  br i1 %exitcond35.not.i.i472, label %_ZN6brotli3enc14block_splitter18RefineEntropyCodes17h0a5533a9561da59cE.exit.i, label %_ZN6brotli3enc9histogram14HistogramClear17hf9145d293705796bE.exit.i.i

_ZN6brotli3enc14block_splitter18RefineEntropyCodes17h0a5533a9561da59cE.exit.i: ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17hbf6f595fe81a9aafE.exit.i.i
  %i.ckv = icmp slt i64 %.sroa.01.1, 0
  br i1 %i.ckv, label %bb.nx, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i473, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i473: ; preds = %_ZN6brotli3enc14block_splitter18RefineEntropyCodes17h0a5533a9561da59cE.exit.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34515
  %i.ckw = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %.sroa.01.1, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !34515 ; 14 uses
  %i.ckx = icmp eq ptr %i.ckw, null
  br i1 %i.ckx, label %bb.nx, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i144.i474

bb.nx:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i473, %_ZN6brotli3enc14block_splitter18RefineEntropyCodes17h0a5533a9561da59cE.exit.i
  %.sroa.4.0.ph.i.i.i972 = phi i64 [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i473 ], [ 0, %_ZN6brotli3enc14block_splitter18RefineEntropyCodes17h0a5533a9561da59cE.exit.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i972, i64 %.sroa.01.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc143.i973 unwind label %.thread.i452, !noalias !34488

.noexc143.i973:                                   ; preds = %bb.nx
  unreachable

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i144.i474: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i473
  %i.cky = add nuw nsw i64 %i.cfq, 8
  %i.ckz = lshr i64 %i.cky, 3                     ; 19 uses
  %i.cla = mul nuw nsw i64 %spec.store.select.i433, 544 ; 8 uses
  %i.clb = mul nuw nsw i64 %spec.store.select.i433, 2176 ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34516
  %i.clc = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.clb, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !34516 ; 9 uses
  %i.cld = icmp eq ptr %i.clc, null
  br i1 %i.cld, label %bb.ny, label %bb.nz

bb.ny:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i144.i474
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.clb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc147.i971 unwind label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit219.thread.i970", !noalias !34488

.noexc147.i971:                                   ; preds = %bb.ny
  unreachable

"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit219.thread.i970": ; preds = %bb.ny
  %i.cle = landingpad { ptr, i32 }
          cleanup
  tail call void @mi_free(ptr noundef nonnull %i.ckw) #38, !noalias !34488
  br label %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit.i"

bb.nz:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i144.i474
  %i.clf = shl nuw nsw i64 %i.ckz, 5              ; 4 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34517
  %i.clg = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.clf, i64 noundef range(i64 1, 9) 4) #38, !noalias !34517 ; 24 uses
  %i.clh = icmp eq ptr %i.clg, null
  br i1 %i.clh, label %bb.oa, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hef58b721ea58c2dfE.exit.i.i.i.i475"

bb.oa:                                            ; preds = %bb.nz
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.clf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc150.i969 unwind label %.thread39.i968, !noalias !34488

.noexc150.i969:                                   ; preds = %bb.oa
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hef58b721ea58c2dfE.exit.i.i.i.i475": ; preds = %bb.nz
  %i.cli = icmp samesign ugt i64 %.sroa.01.1, 4351
  br i1 %i.cli, label %.lr.ph.i.i.i148.preheader.i966, label %.loopexit114.i476

.lr.ph.i.i.i148.preheader.i966:                   ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hef58b721ea58c2dfE.exit.i.i.i.i475"
  %i.clj = add nsw i64 %i.clf, -32                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.clg, i8 0, i64 %i.clj, i1 false), !noalias !34488
  %scevgep.i967 = getelementptr i8, ptr %i.clg, i64 %i.clj
  br label %.loopexit114.i476

.thread39.i968:                                   ; preds = %bb.oa
  %i.clk = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i503"

.loopexit114.i476:                                ; preds = %.lr.ph.i.i.i148.preheader.i966, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hef58b721ea58c2dfE.exit.i.i.i.i475"
  %.sroa.0.0.lcssa.i.i.i.i477 = phi ptr [ %i.clg, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hef58b721ea58c2dfE.exit.i.i.i.i475" ], [ %scevgep.i967, %.lr.ph.i.i.i148.preheader.i966 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.0.0.lcssa.i.i.i.i477, i8 0, i64 32, i1 false), !noalias !34488
  %i.cll = mul i64 %i.ckz, %.sroa.01.1            ; 11 uses
  %i.clm = icmp slt i64 %i.cll, 0
  br i1 %i.clm, label %bb.od, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i151.i478, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i151.i478: ; preds = %.loopexit114.i476
  %i.cln = icmp eq i64 %i.cll, 0                  ; 3 uses
  br i1 %i.cln, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i157.i479, label %bb.ob

bb.ob:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i151.i478
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34518
  %i.clo = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.cll, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !34518 ; 2 uses
  %i.clp = icmp eq ptr %i.clo, null
  br i1 %i.clp, label %bb.od, label %bb.oc

bb.oc:                                            ; preds = %bb.ob
  %i.clq = ptrtoint ptr %i.clo to i64
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i157.i479

bb.od:                                            ; preds = %bb.ob, %.loopexit114.i476
  %.sroa.4.0.ph.i.i153.i963 = phi i64 [ 1, %bb.ob ], [ 0, %.loopexit114.i476 ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i153.i963, i64 %i.cll, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc154.i965 unwind label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.thread.i964", !noalias !34488

.noexc154.i965:                                   ; preds = %bb.od
  unreachable

"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.thread.i964": ; preds = %bb.od
  %i.clr = landingpad { ptr, i32 }
          cleanup
  tail call void @mi_free(ptr noundef nonnull %i.clg) #38, !noalias !34488
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i503"

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i157.i479: ; preds = %bb.oc, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i151.i478
  %.sroa.10.0.i.i152.i480 = phi i64 [ %i.clq, %bb.oc ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i151.i478 ]
  %i.cls = inttoptr i64 %.sroa.10.0.i.i152.i480 to ptr ; 8 uses
  %i.clt = shl nuw nsw i64 %spec.store.select.i433, 1 ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34519
  %i.clu = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.clt, i64 noundef range(i64 1, -9223372036854775807) 2) #38, !noalias !34519 ; 4 uses
  %i.clv = icmp eq ptr %i.clu, null
  br i1 %i.clv, label %bb.oe, label %.split.i481

bb.oe:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i157.i479
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 2, i64 %i.clt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc160.i962 unwind label %.thread55.i961, !noalias !34488

.noexc160.i962:                                   ; preds = %bb.oe
  unreachable

.thread55.i961:                                   ; preds = %bb.oe
  %i.clw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ul

.split.i481:                                      ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i157.i479
  %i.clx = icmp slt i32 %.72.val, 12
  %..i482 = select i1 %i.clx, i64 3, i64 10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cls) ]
  %.not126.i.i483 = icmp ugt i64 %.sroa.01.1, %2
  %i.cly = getelementptr inbounds nuw i8, ptr %i.cfl, i64 %i.ciw
  %i.clz = add nsw i64 %.sroa.01.1, -1            ; 3 uses
  %i.cma = getelementptr inbounds nuw i8, ptr %i.ckw, i64 %i.clz
  br label %bb.rw

_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h8c4688d43053fe9dE.exit.loopexit.i: ; preds = %_ZN6brotli3enc9histogram16HistogramAddItem17hec39d7e5b6a97acdE.exit.i.i
  %i.cmb = icmp samesign ult i64 %.sroa.032.1443.i484, %..i482 ; 2 uses
  %i.cmc = zext i1 %i.cmb to i64
  %.sroa.032.1.i624 = add nuw nsw i64 %.sroa.032.1443.i484, %i.cmc
  br i1 %i.cmb, label %bb.rw, label %bb.of

.body.i950:                                       ; preds = %bb.oi
  %lpad.thr_comm.split-lp.i951 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit219.i692"

bb.of:                                            ; preds = %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h8c4688d43053fe9dE.exit.loopexit.i
  tail call void @mi_free(ptr noundef nonnull align 4 %i.clc) #38, !noalias !34488
  tail call void @mi_free(ptr noundef nonnull align 4 %i.clg) #38, !noalias !34488
  br i1 %i.cln, label %bb.og, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i162.i625"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i162.i625": ; preds = %bb.of
  tail call void @mi_free(ptr noundef nonnull align 1 %i.cls) #38, !noalias !34488
  br label %bb.og

bb.og:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i162.i625", %bb.of
  tail call void @mi_free(ptr noundef nonnull align 2 %i.clu) #38, !noalias !34488
  tail call void @mi_free(ptr noundef nonnull align 8 %i.cfv) #38, !noalias !34488
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34522)
  %i.cmd = shl i64 %.sroa.0.0.i.i615, 2           ; 6 uses
  %i.cme = icmp ugt i64 %.sroa.0.0.i.i615, 4611686018427387903
  %i.cmf = icmp ugt i64 %i.cmd, 9223372036854775804
  %or.cond.i.i.i.i.i165.i626 = or i1 %i.cme, %i.cmf
  br i1 %or.cond.i.i.i.i.i165.i626, label %bb.oi, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i166.i627, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i166.i627: ; preds = %bb.og
  %i.cmg = icmp eq i64 %i.cmd, 0
  br i1 %i.cmg, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i410.thread.i.i953, label %bb.oh

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i410.thread.i.i953: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i166.i627
  %i.cmh = icmp samesign ult i64 %.sroa.0.0.i.i615, 2305843009213693952
  tail call void @llvm.assume(i1 %i.cmh)
  br label %bb.ol

bb.oh:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i166.i627
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34523
  %i.cmi = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.cmd, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !34523 ; 3 uses
  %i.cmj = icmp eq ptr %i.cmi, null
  br i1 %i.cmj, label %bb.oi, label %bb.oj

bb.oi:                                            ; preds = %bb.oh, %bb.og
  %.sroa.4.0.ph.i.i.i170.i949 = phi i64 [ 4, %bb.oh ], [ 0, %bb.og ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i170.i949, i64 %i.cmd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc171.i952 unwind label %.body.i950, !noalias !34488

.noexc171.i952:                                   ; preds = %bb.oi
  unreachable

bb.oj:                                            ; preds = %bb.oh
  %i.cmk = icmp samesign ult i64 %.sroa.0.0.i.i615, 2305843009213693952
  tail call void @llvm.assume(i1 %i.cmk)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34524
  %i.cml = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.cmd, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !34524 ; 2 uses
  %i.cmm = icmp eq ptr %i.cml, null
  br i1 %i.cmm, label %bb.ok, label %bb.ol

bb.ok:                                            ; preds = %bb.oj
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.cmd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc413.i.i948 unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i947", !noalias !34525

.noexc413.i.i948:                                 ; preds = %bb.ok
  unreachable

bb.ol:                                            ; preds = %bb.oj, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i410.thread.i.i953
  %i.cmn = phi ptr [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i410.thread.i.i953 ], [ %i.cmi, %bb.oj ] ; 10 uses
  %.sroa.10.0.i.i411.i.i628 = phi ptr [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i410.thread.i.i953 ], [ %i.cml, %bb.oj ] ; 6 uses
  %i.cmo = shl i64 %.sroa.0.0.i.i615, 4
  %i.cmp = add i64 %i.cmo, 1008                   ; 3 uses
  %i.cmq = lshr i64 %i.cmp, 6                     ; 17 uses
  %i.cmr = mul i64 %i.cmq, 2192                   ; 3 uses
  %or.cond.i.i.i.i.i.i.i629 = icmp ugt i64 %i.cmp, 269295533922767231
  br i1 %or.cond.i.i.i.i.i.i.i629, label %bb.on, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i630, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i630: ; preds = %bb.ol
  %i.cms = icmp eq i64 %i.cmr, 0
  br i1 %i.cms, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i.i", label %bb.om

bb.om:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i630
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34526
  %i.cmt = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.cmr, i64 noundef range(i64 1, 9) 8) #38, !noalias !34526 ; 2 uses
  %i.cmu = icmp eq ptr %i.cmt, null
  br i1 %i.cmu, label %bb.on, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i.i"

bb.on:                                            ; preds = %bb.om, %bb.ol
  %.sroa.4.0.ph.i.i.i.i.i944 = phi i64 [ 8, %bb.om ], [ 0, %bb.ol ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i944, i64 %i.cmr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc415.i.i946 unwind label %.thread86.i.i945, !noalias !34525

.noexc415.i.i946:                                 ; preds = %bb.on
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i.i": ; preds = %bb.om, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i630
  %.sroa.10.0.i.i.i.i.i631 = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i630 ], [ %i.cmt, %bb.om ] ; 8 uses
  %.sroa.4.0.i.i.i.i.i632 = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i630 ], [ %i.cmq, %bb.om ]
  %i.cmv = icmp samesign ule i64 %i.cmq, %.sroa.4.0.i.i.i.i.i632
  tail call void @llvm.assume(i1 %i.cmv)
  %i.cmw = icmp samesign ugt i64 %i.cmp, 127
  br i1 %i.cmw, label %.lr.ph.i.i.i.i.i940.preheader, label %._crit_edge.i.i.i.i.i633

.lr.ph.i.i.i.i.i940.preheader:                    ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i.i"
  %i.cmx = add nsw i64 %i.cmq, -1                 ; 2 uses
  %i.cmy = add nsw i64 %i.cmq, -2
  %xtraiter4575 = and i64 %i.cmx, 7               ; 3 uses
  %i.cmz = icmp ult i64 %i.cmy, 7
  br i1 %i.cmz, label %.lr.ph.i.i.i.i.i940.epil.preheader, label %.lr.ph.i.i.i.i.i940.preheader.new

.lr.ph.i.i.i.i.i940.preheader.new:                ; preds = %.lr.ph.i.i.i.i.i940.preheader
  %unroll_iter4580 = and i64 %i.cmx, -8
  br label %.lr.ph.i.i.i.i.i940

._crit_edge.i.i.i.i.i633:                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i.i"
  %.not.i.i.i.i.i634 = icmp eq i64 %i.cmq, 0
  br i1 %.not.i.i.i.i.i634, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i637, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.i.i635

.lr.ph.i.i.i.i.i940:                              ; preds = %.lr.ph.i.i.i.i.i940, %.lr.ph.i.i.i.i.i940.preheader.new
  %.sroa.0.08.i.i.i.i.i941 = phi ptr [ %.sroa.10.0.i.i.i.i.i631, %.lr.ph.i.i.i.i.i940.preheader.new ], [ %i.cnh, %.lr.ph.i.i.i.i.i940 ] ; 17 uses
  %niter4581 = phi i64 [ 0, %.lr.ph.i.i.i.i.i940.preheader.new ], [ %niter4581.next.7, %.lr.ph.i.i.i.i.i940 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i.i.i941, i8 0, i64 2184, i1 false), !noalias !34525
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i941, i64 2184
end_hunk_4
begin_hunk_5_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
  store i32 %i.dbd, ptr %i.dbc, align 4, !noalias !34525
  %i.dbe = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.sroa.0127.0568.i.i716
  store i32 %i.dbd, ptr %i.dbe, align 4, !noalias !34525
  %i.dbf = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0127.0568.i.i716
  store i32 1, ptr %i.dbf, align 4, !noalias !34525
  %i.dbg = icmp samesign ult i64 %.sroa.0127.1570.i.i714, %.sroa.0.0.i447.i.i712 ; 2 uses
  %i.dbh = zext i1 %i.dbg to i64
  %.sroa.0127.1.i.i729 = add nuw i64 %.sroa.0127.1570.i.i714, %i.dbh
  br i1 %i.dbg, label %.lr.ph571.i.i713, label %._crit_edge572.i.loopexit.i730

.lr.ph.i.i720:                                    ; preds = %bb.ro, %.lr.ph.preheader.i.i718
  %i.dbi = phi i64 [ %i.dbw, %bb.ro ], [ 1, %.lr.ph.preheader.i.i718 ] ; 3 uses
  %.sroa.043.4567.i.i721 = phi i64 [ %i.dbv, %bb.ro ], [ %.sroa.043.3569.i.i715, %.lr.ph.preheader.i.i718 ] ; 3 uses
  %exitcond837.not.i.i722 = icmp eq i64 %i.dbi, %i.dba
  br i1 %exitcond837.not.i.i722, label %.invoke3816, label %bb.rn

bb.rn:                                            ; preds = %.lr.ph.i.i720
  %i.dbj = getelementptr inbounds nuw [2 x i8], ptr %i.cfl, i64 %.sroa.043.4567.i.i721
  %i.dbk = load i16, ptr %i.dbj, align 2, !alias.scope !34571, !noundef !45 ; 2 uses
  %i.dbl = zext i16 %i.dbk to i64                 ; 2 uses
  %i.dbm = icmp ult i16 %i.dbk, 544
  br i1 %i.dbm, label %bb.ro, label %.invoke3816

.invoke3816:                                      ; preds = %.lr.ph571.i.i713, %bb.rn, %.lr.ph.i.i720
  %i.dbn = phi i64 [ %.sroa.043.4567.i.i721, %.lr.ph.i.i720 ], [ %i.dbl, %bb.rn ], [ %i.dav, %.lr.ph571.i.i713 ]
  %i.dbo = phi i64 [ %2, %.lr.ph.i.i720 ], [ 544, %bb.rn ], [ %.sroa.0.0.i.i615, %.lr.ph571.i.i713 ]
  %i.dbp = phi ptr [ @1562, %.lr.ph.i.i720 ], [ @1925, %bb.rn ], [ @1561, %.lr.ph571.i.i713 ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.dbn, i64 noundef %i.dbo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dbp) #43
          to label %.cont3817 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i652, !noalias !34525

.cont3817:                                        ; preds = %.invoke3816
  unreachable

bb.ro:                                            ; preds = %bb.rn
  %i.dbq = getelementptr inbounds nuw [4 x i8], ptr %i.das, i64 %i.dbl ; 2 uses
  %i.dbr = load i32, ptr %i.dbq, align 4, !alias.scope !34572, !noalias !34525, !noundef !45
  %i.dbs = add i32 %i.dbr, 1
  store i32 %i.dbs, ptr %i.dbq, align 4, !alias.scope !34572, !noalias !34525
  %i.dbt = load i64, ptr %i.dat, align 8, !alias.scope !34573, !noalias !34525, !noundef !45
  %i.dbu = add i64 %i.dbt, 1
  store i64 %i.dbu, ptr %i.dat, align 8, !alias.scope !34574, !noalias !34525
  %i.dbv = add nuw i64 %.sroa.043.4567.i.i721, 1  ; 2 uses
  %i.dbw = add nuw nsw i64 %i.dbi, 1
  %exitcond838.not.i.i724 = icmp eq i64 %i.dbi, %i.daz
  br i1 %exitcond838.not.i.i724, label %._crit_edge.i.i725, label %.lr.ph.i.i720

bb.rp:                                            ; preds = %bb.rs, %bb.ow
  %.sroa.047.0565.i.i649 = phi i64 [ 0, %bb.ow ], [ %i.dcb, %bb.rs ] ; 2 uses
  %.sroa.059.0564.i.i650 = phi i64 [ 0, %bb.ow ], [ %.sroa.059.1.i.i697, %bb.rs ] ; 5 uses
  %i.dbx = icmp ult i64 %.sroa.059.0564.i.i650, %.sroa.0.0.i.i615
  br i1 %i.dbx, label %bb.rq, label %.invoke.i.i651

bb.rq:                                            ; preds = %bb.rp
  %i.dby = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i628, i64 %.sroa.059.0564.i.i650 ; 2 uses
  %i.dbz = load i32, ptr %i.dby, align 4, !noalias !34525, !noundef !45
  %i.dca = add i32 %i.dbz, 1
  store i32 %i.dca, ptr %i.dby, align 4, !noalias !34525
  %i.dcb = add nuw nsw i64 %.sroa.047.0565.i.i649, 1 ; 3 uses
  %.not914.i.i695 = icmp eq i64 %i.dcb, %.sroa.01.1 ; 2 uses
  br i1 %.not914.i.i695, label %bb.rt, label %bb.rr

bb.rr:                                            ; preds = %bb.rq
  %i.dcc = getelementptr inbounds nuw i8, ptr %i.ckw, i64 %.sroa.047.0565.i.i649
  %i.dcd = load i8, ptr %i.dcc, align 1, !alias.scope !34521, !noalias !34488, !noundef !45
  %i.dce = getelementptr inbounds nuw i8, ptr %i.ckw, i64 %i.dcb
  %i.dcf = load i8, ptr %i.dce, align 1, !alias.scope !34521, !noalias !34488, !noundef !45
  %.not238.i.i696 = icmp eq i8 %i.dcd, %i.dcf
  br i1 %.not238.i.i696, label %bb.rs, label %bb.rt

.invoke.i.i651:                                   ; preds = %bb.rp
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.059.0564.i.i650, i64 noundef %.sroa.0.0.i.i615, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1563) #43
          to label %.cont.i.i694 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i652, !noalias !34525

.cont.i.i694:                                     ; preds = %.invoke.i.i651
  unreachable

bb.rs:                                            ; preds = %bb.rt, %bb.rr
  %.sroa.059.1.i.i697 = phi i64 [ %i.dcg, %bb.rt ], [ %.sroa.059.0564.i.i650, %bb.rr ]
  br i1 %.not914.i.i695, label %.split.i.i698, label %bb.rp

bb.rt:                                            ; preds = %bb.rr, %bb.rq
  %i.dcg = add nuw nsw i64 %.sroa.059.0564.i.i650, 1
  br label %bb.rs

.thread130.i.i777:                                ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i813", %.loopexit.split-lp.loopexit.split-lp.i.i807, %bb.ox
  %.pn230155.i.i778 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i776, %bb.ox ], [ %.pn.i.i812, %.loopexit.split-lp.loopexit.split-lp.i.i807 ], [ %.pn940.i.i814, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i813" ] ; 2 uses
  %.sroa.016.4154.i.i779 = phi ptr [ %.sroa.016.7.i.i734, %bb.ox ], [ %.sroa.016.6.i.i811, %.loopexit.split-lp.loopexit.split-lp.i.i807 ], [ %.sroa.016.6939.i.i815, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i813" ] ; 2 uses
  %.sroa.14.4153.i.i780 = phi i64 [ %.sroa.14.7.i.i733, %bb.ox ], [ %.sroa.14.6.i.i810, %.loopexit.split-lp.loopexit.split-lp.i.i807 ], [ %.sroa.14.6938.i.i816, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i813" ] ; 2 uses
  %.sroa.026.3152.i.i781 = phi ptr [ %.sroa.026.4.ph162.i.i775, %bb.ox ], [ inttoptr (i64 4 to ptr), %.loopexit.split-lp.loopexit.split-lp.i.i807 ], [ inttoptr (i64 4 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i813" ] ; 2 uses
  %.sroa.12.3151.i.i782 = phi i64 [ %.sroa.12.4.ph161.i.i774, %bb.ox ], [ 0, %.loopexit.split-lp.loopexit.split-lp.i.i807 ], [ 0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i813" ] ; 2 uses
  %.sroa.044.0148.i.i783 = phi ptr [ %.sroa.044.1.ph160.i.i773, %bb.ox ], [ inttoptr (i64 4 to ptr), %.loopexit.split-lp.loopexit.split-lp.i.i807 ], [ inttoptr (i64 4 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i813" ]
  %.sroa.11.0147.i.i784 = phi i1 [ %.sroa.11.1.ph159.i.i772, %bb.ox ], [ true, %.loopexit.split-lp.loopexit.split-lp.i.i807 ], [ true, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i813" ]
  %.sroa.051.0146.i.i785 = phi ptr [ %i.cpj, %bb.ox ], [ %.sroa.051.2.i.i809, %.loopexit.split-lp.loopexit.split-lp.i.i807 ], [ %.sroa.051.2937.i.i817, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i813" ] ; 2 uses
  %.sroa.1152.0145.i.i786 = phi i64 [ %i.czi, %bb.ox ], [ %.sroa.1152.2.i.i808, %.loopexit.split-lp.loopexit.split-lp.i.i807 ], [ %.sroa.1152.2936.i.i818, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i813" ]
  %i.dch = icmp eq i64 %.sroa.1152.0145.i.i786, 0
  br i1 %i.dch, label %bb.pw, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i554.i.i787"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i554.i.i787": ; preds = %.thread130.i.i777
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.051.0146.i.i785) ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.051.0146.i.i785) #38, !noalias !34525
  br label %bb.pw

bb.ru:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i167.i685", %bb.oq, %.thread86.i.i945
  %.pn230.pn.pn.pn.pn.pn90.i.i688 = phi { ptr, i32 } [ %i.cni, %.thread86.i.i945 ], [ %.pn230.pn.pn.pn.pn100.i.i686, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i167.i685" ], [ %.pn230.pn.pn.pn.i.i683, %bb.oq ] ; 2 uses
  %i.dci = icmp eq i64 %.sroa.0.0.i.i615, 0
  br i1 %i.dci, label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit219.i692", label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread943.i.i689"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread943.i.i689": ; preds = %bb.ru
  tail call void @mi_free(ptr noundef nonnull %.sroa.10.0.i.i411.i.i628) #38, !noalias !34525
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i690"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i947": ; preds = %bb.ok
  %i.dcj = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i690"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i690": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i947", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread943.i.i689"
  %i.dck = phi ptr [ %i.cmn, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread943.i.i689" ], [ %i.cmi, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i947" ] ; 2 uses
  %.pn230.pn.pn.pn.pn.pn.pn85945.i.i691 = phi { ptr, i32 } [ %.pn230.pn.pn.pn.pn.pn90.i.i688, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread943.i.i689" ], [ %i.dcj, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i947" ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dck) ]
  tail call void @mi_free(ptr noundef nonnull %i.dck) #38, !noalias !34525
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit219.i692"

bb.rv:                                            ; preds = %bb.qa
  %i.dcl = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 %.sroa.0109.1.i.i877, ptr %i.dcl, align 8, !alias.scope !34536
  %i.dcm = zext i8 %.sroa.0113.1.i.i876 to i64
  %i.dcn = add nuw nsw i64 %i.dcm, 1
  %i.dco = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 %i.dcn, ptr %i.dco, align 8, !alias.scope !34536
  tail call void @mi_free(ptr noundef nonnull align 4 %i.cqe) #38, !noalias !34525
  tail call void @mi_free(ptr noundef nonnull align 4 %.sroa.10.0.i.i411.i.i628) #38, !noalias !34525
  tail call void @mi_free(ptr noundef nonnull align 4 %i.cmn) #38, !noalias !34525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !34525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !34525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !34525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !34525
  tail call void @mi_free(ptr noundef nonnull align 1 %i.ckw) #38, !noalias !34488
  br label %_ZN6brotli3enc14block_splitter15SplitByteVector17h458edd1a9d7c9482E.exit

bb.rw:                                            ; preds = %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h8c4688d43053fe9dE.exit.loopexit.i, %.split.i481
  %.sroa.032.1443.i484 = phi i64 [ 1, %.split.i481 ], [ %.sroa.032.1.i624, %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h8c4688d43053fe9dE.exit.loopexit.i ] ; 2 uses
  %.sroa.0.0442.i485 = phi i64 [ %spec.store.select.i433, %.split.i481 ], [ %i.dsh, %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h8c4688d43053fe9dE.exit.loopexit.i ] ; 22 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34575)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34576)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34577)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34578)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34579)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34580)
  %i.dcp = icmp eq i64 %.sroa.0.0442.i485, 0
  br i1 %i.dcp, label %.loopexit.i614, label %bb.rx

bb.rx:                                            ; preds = %bb.rw
  %i.dcq = add i64 %.sroa.0.0442.i485, 7
  %i.dcr = lshr i64 %i.dcq, 3                     ; 8 uses
  %i.dcs = icmp eq i64 %.sroa.0.0442.i485, 1
  br i1 %i.dcs, label %.preheader.i.preheader.i960, label %bb.ry

.preheader.i.preheader.i960:                      ; preds = %bb.rx
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ckw, i8 0, i64 %.sroa.01.1, i1 false), !alias.scope !34580, !noalias !34488
  br label %.loopexit.i614

bb.ry:                                            ; preds = %bb.rx
  %.not121.i.i486 = icmp ugt i64 %.sroa.0.0442.i485, %spec.store.select.i433
  br i1 %.not121.i.i486, label %bb.rz, label %.preheader360.i.i487, !prof !87

bb.rz:                                            ; preds = %bb.ry
  %i.dct = mul nuw nsw i64 %.sroa.0.0442.i485, 544
  br label %.invoke1162.i954

.invoke1162.i954:                                 ; preds = %bb.uh, %._crit_edge408.i.i514, %.lr.ph403.i.preheader.i510, %bb.sl, %bb.rz
  %i.dcu = phi i64 [ %i.dct, %bb.rz ], [ %i.dcr, %bb.sl ], [ %.sroa.01.1, %._crit_edge408.i.i514 ], [ %i.dde, %.lr.ph403.i.preheader.i510 ], [ %i.dsh, %bb.uh ]
  %i.dcv = phi i64 [ %i.cla, %bb.rz ], [ %i.ckz, %bb.sl ], [ %2, %._crit_edge408.i.i514 ], [ %i.cll, %.lr.ph403.i.preheader.i510 ], [ %spec.store.select.i433, %bb.uh ]
  %i.dcw = phi ptr [ @1543, %bb.rz ], [ @1572, %bb.sl ], [ @1540, %._crit_edge408.i.i514 ], [ @1541, %.lr.ph403.i.preheader.i510 ], [ @1924, %bb.uh ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.dcu, i64 noundef %i.dcv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dcw) #43
          to label %.cont1163.i955 unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i498.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp", !noalias !34488

.cont1163.i955:                                   ; preds = %.invoke1162.i954
  unreachable

.preheader360.i.i487:                             ; preds = %bb.ry
  %.idx.i.i488 = mul nuw nsw i64 %.sroa.0.0442.i485, 2176
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.clc, i8 0, i64 %.idx.i.i488, i1 false), !alias.scope !34577, !noalias !34488
  br label %bb.sa

bb.sa:                                            ; preds = %bb.uf, %.preheader360.i.i487
  %i.dcx = phi i64 [ 1, %.preheader360.i.i487 ], [ %i.dse, %bb.uf ] ; 3 uses
  %.sroa.069.0399.i.i489 = phi i64 [ 0, %.preheader360.i.i487 ], [ %i.dcx, %bb.uf ] ; 2 uses
  %i.dcy = getelementptr inbounds nuw [2192 x i8], ptr %i.cfv, i64 %.sroa.069.0399.i.i489
  %i.dcz = getelementptr inbounds nuw i8, ptr %i.dcy, i64 2176
  %i.dda = load i64, ptr %i.dcz, align 8, !alias.scope !34581, !noalias !34488, !noundef !45
  %i.ddb = and i64 %i.dda, 4294967295             ; 3 uses
  %i.ddc = icmp samesign ult i64 %i.ddb, 256
  br i1 %i.ddc, label %bb.ug, label %bb.ue

.loopexit358.i.i509:                              ; preds = %bb.ud
  %i.ddd = icmp eq i64 %i.ddf, 0
  br i1 %i.ddd, label %.lr.ph403.i.preheader.i510, label %.split.i177.i493

.lr.ph403.i.preheader.i510:                       ; preds = %.loopexit358.i.i509
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.clg, i8 0, i64 %i.clf, i1 false), !alias.scope !34578, !noalias !34488
  %i.dde = mul i64 %i.dcr, %.sroa.01.1            ; 4 uses
  %.not124.i.i511 = icmp ugt i64 %i.dde, %i.cll
  br i1 %.not124.i.i511, label %.invoke1162.i954, label %bb.sb, !prof !87

.split.i177.i493:                                 ; preds = %bb.uf, %.loopexit358.i.i509
  %.sroa.05.0401.i.i494 = phi i64 [ %i.ddf, %.loopexit358.i.i509 ], [ 544, %bb.uf ]
  %i.ddf = add nsw i64 %.sroa.05.0401.i.i494, -1  ; 4 uses
  %invariant.gep.i178.i495 = getelementptr [4 x i8], ptr %i.cfv, i64 %i.ddf
  %i.ddg = mul i64 %i.ddf, %.sroa.0.0442.i485
  br label %bb.uc

bb.sb:                                            ; preds = %.lr.ph403.i.preheader.i510
  %.not355404.i.i512 = icmp samesign eq i64 %i.dde, 0
  br i1 %.not355404.i.i512, label %._crit_edge408.i.i514, label %.lr.ph407.preheader.i.i513

.lr.ph407.preheader.i.i513:                       ; preds = %bb.sb
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cls, i8 0, i64 %i.dde, i1 false), !alias.scope !34579, !noalias !34488
  br label %._crit_edge408.i.i514

._crit_edge408.i.i514:                            ; preds = %.lr.ph407.preheader.i.i513, %bb.sb
  br i1 %.not126.i.i483, label %.invoke1162.i954, label %.lr.ph434.i.i515, !prof !87

.lr.ph434.i.i515:                                 ; preds = %._crit_edge408.i.i514
  %i.ddh = lshr i64 %.sroa.0.0442.i485, 3         ; 3 uses
  %.not131.i.i516 = icmp samesign ugt i64 %i.ddh, %i.ckz
  %.idx452.i.i517 = shl nuw nsw i64 %i.ddh, 5
  %i.ddi = getelementptr inbounds nuw i8, ptr %i.clg, i64 %.idx452.i.i517
  %i.ddj = icmp eq i64 %i.ddh, 0
  %i.ddk = and i64 %.sroa.0.0442.i485, -8         ; 8 uses
  %i.ddl = and i64 %.sroa.0.0442.i485, 7          ; 4 uses
  %.not.i.i181.i518 = icmp samesign ugt i64 %i.dcr, %i.ckz
  %.idx453.i.i519 = shl i64 %i.dcr, 5             ; 2 uses
  %i.ddm = getelementptr inbounds nuw i8, ptr %i.clg, i64 %.idx453.i.i519
  br i1 %.not131.i.i516, label %.lr.ph434.split.us.i.i957, label %.lr.ph434.split.preheader.i.i520, !prof !47

.lr.ph434.split.preheader.i.i520:                 ; preds = %.lr.ph434.i.i515
  %.idx454.i.i521 = shl nuw nsw i64 %i.ddl, 2     ; 3 uses
  %i.ddn = icmp eq i64 %i.ddl, 0
  %i.ddo = lshr i64 %.sroa.0.0442.i485, 3         ; 3 uses
  %i.ddp = icmp samesign ult i64 %i.ddo, %i.ckz
  %i.ddq = getelementptr inbounds nuw [32 x i8], ptr %i.clg, i64 %i.ddo ; 2 uses
  %i.ddr = trunc i64 %i.ddk to i8
  %i.dds = icmp eq i64 %i.ddl, 1                  ; 2 uses
  %.sroa.077.1.idx.i.i570 = select i1 %i.dds, i64 0, i64 4 ; 3 uses
  %i.ddt = lshr i64 %.sroa.0.0442.i485, 3         ; 3 uses
  %i.ddu = icmp samesign ult i64 %i.ddt, %i.ckz
  %i.ddv = getelementptr inbounds nuw [32 x i8], ptr %i.clg, i64 %i.ddt
  %i.ddw = getelementptr inbounds nuw i8, ptr %i.ddv, i64 4 ; 2 uses
  %i.ddx = trunc i64 %i.ddk to i8
  %i.ddy = or disjoint i8 %i.ddx, 1
  %i.ddz = add nuw nsw i64 %.sroa.077.1.idx.i.i570, 4
  %i.dea = icmp samesign eq i64 %i.ddz, %.idx454.i.i521 ; 2 uses
  %.sroa.077.1.idx.i.i570.1 = select i1 %i.dea, i64 0, i64 4 ; 2 uses
  %i.deb = lshr i64 %.sroa.0.0442.i485, 3         ; 3 uses
  %i.dec = icmp samesign ult i64 %i.deb, %i.ckz
  %i.ded = getelementptr inbounds nuw [32 x i8], ptr %i.clg, i64 %i.deb
  %i.dee = getelementptr inbounds nuw i8, ptr %i.ded, i64 8 ; 2 uses
  %i.def = trunc i64 %i.ddk to i8
  %i.deg = or disjoint i8 %i.def, 2
  %i.deh = add nuw nsw i64 %.sroa.077.1.idx.i.i570, 4
  %i.dei = add nuw nsw i64 %i.deh, %.sroa.077.1.idx.i.i570.1
  %i.dej = icmp samesign eq i64 %i.dei, %.idx454.i.i521 ; 2 uses
  %.sroa.077.1.idx.i.i570.2 = select i1 %i.dej, i64 0, i64 4
  %i.dek = lshr i64 %.sroa.0.0442.i485, 3         ; 3 uses
  %i.del = icmp samesign ult i64 %i.dek, %i.ckz
  %i.dem = getelementptr inbounds nuw [32 x i8], ptr %i.clg, i64 %i.dek
  %i.den = getelementptr inbounds nuw i8, ptr %i.dem, i64 12 ; 2 uses
  %i.deo = trunc i64 %i.ddk to i8
  %i.dep = or disjoint i8 %i.deo, 3
  %i.deq = lshr i64 %.sroa.0.0442.i485, 3         ; 3 uses
  %i.der = icmp samesign ult i64 %i.deq, %i.ckz
  %i.des = getelementptr inbounds nuw [32 x i8], ptr %i.clg, i64 %i.deq
  %i.det = getelementptr inbounds nuw i8, ptr %i.des, i64 16 ; 2 uses
  %i.deu = trunc i64 %i.ddk to i8
  %i.dev = or disjoint i8 %i.deu, 4
  %i.dew = lshr i64 %.sroa.0.0442.i485, 3         ; 3 uses
  %i.dex = icmp samesign ult i64 %i.dew, %i.ckz
  %i.dey = getelementptr inbounds nuw [32 x i8], ptr %i.clg, i64 %i.dew
  %i.dez = getelementptr inbounds nuw i8, ptr %i.dey, i64 20 ; 2 uses
  %i.dfa = trunc i64 %i.ddk to i8
  %i.dfb = or disjoint i8 %i.dfa, 5
  %i.dfc = lshr i64 %.sroa.0.0442.i485, 3         ; 3 uses
  %i.dfd = icmp samesign ult i64 %i.dfc, %i.ckz
  %i.dfe = getelementptr inbounds nuw [32 x i8], ptr %i.clg, i64 %i.dfc
  %i.dff = getelementptr inbounds nuw i8, ptr %i.dfe, i64 24 ; 2 uses
  %i.dfg = trunc i64 %i.ddk to i8
  %i.dfh = or disjoint i8 %i.dfg, 6
  %i.dfi = add i64 %.idx453.i.i519, -32
  %i.dfj = lshr exact i64 %i.dfi, 5
  br label %.lr.ph434.split.i.i522

.lr.ph434.split.us.i.i957:                        ; preds = %.lr.ph434.i.i515
  %i.dfk = load i16, ptr %i.cfl, align 2, !alias.scope !34582, !noundef !45
  %i.dfl = zext i16 %i.dfk to i64
  %i.dfm = mul nuw nsw i64 %.sroa.0.0442.i485, %i.dfl
  %.not130.us.i.i958 = icmp ugt i64 %i.dfm, %i.cla
  br i1 %.not130.us.i.i958, label %.split438.us.i.i956, label %.split440.us.i.i959, !prof !47

.split440.us.i.i959:                              ; preds = %.lr.ph434.split.us.i.i957
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !34583
  br label %.split440.us.i.invoke.i532

.split440.us.i.invoke.i532:                       ; preds = %bb.tk, %bb.ti, %bb.sj, %bb.sh, %.split438.us.i.i956, %.split440.us.i.i959
  %.sink.i533.sroa.phi = phi ptr [ %.sink.i533.sroa.gep, %bb.tk ], [ %.sink.i533.sroa.gep66, %bb.ti ], [ %.sink.i533.sroa.gep67, %bb.sj ], [ %.sink.i533.sroa.gep68, %bb.sh ], [ %.sink.i533.sroa.gep69, %.split438.us.i.i956 ], [ %.sink.i533.sroa.gep70, %.split440.us.i.i959 ]
  %.sink.i533.sroa.phi71 = phi ptr [ %.sink.i533.sroa.gep72, %bb.tk ], [ %.sink.i533.sroa.gep73, %bb.ti ], [ %.sink.i533.sroa.gep74, %bb.sj ], [ %.sink.i533.sroa.gep75, %bb.sh ], [ %.sink.i533.sroa.gep76, %.split438.us.i.i956 ], [ %.sink.i533.sroa.gep77, %.split440.us.i.i959 ]
  %.sink.i533.sroa.phi78 = phi ptr [ %.sink.i533.sroa.gep79, %bb.tk ], [ %.sink.i533.sroa.gep80, %bb.ti ], [ %.sink.i533.sroa.gep81, %bb.sj ], [ %.sink.i533.sroa.gep82, %bb.sh ], [ %.sink.i533.sroa.gep83, %.split438.us.i.i956 ], [ %.sink.i533.sroa.gep84, %.split440.us.i.i959 ]
  %.sink.i533.sroa.phi85 = phi ptr [ %.sink.i533.sroa.gep86, %bb.tk ], [ %.sink.i533.sroa.gep87, %bb.ti ], [ %.sink.i533.sroa.gep88, %bb.sj ], [ %.sink.i533.sroa.gep89, %bb.sh ], [ %.sink.i533.sroa.gep90, %.split438.us.i.i956 ], [ %.sink.i533.sroa.gep91, %.split440.us.i.i959 ]
  %.sink.i533 = phi ptr [ %i.b, %bb.tk ], [ %i.d, %bb.ti ], [ %i.a, %bb.sj ], [ %i.c, %bb.sh ], [ %i.f, %.split438.us.i.i956 ], [ %i.e, %.split440.us.i.i959 ] ; 2 uses
  %i.dfn = phi ptr [ @1539, %bb.tk ], [ @1538, %bb.ti ], [ @1536, %bb.sj ], [ @1535, %bb.sh ], [ @1533, %.split438.us.i.i956 ], [ @1534, %.split440.us.i.i959 ]
  store ptr @186, ptr %.sink.i533, align 8, !noalias !34583
  store i64 1, ptr %.sink.i533.sroa.phi, align 8, !noalias !34583
  store ptr null, ptr %.sink.i533.sroa.phi71, align 8, !noalias !34583
  store ptr inttoptr (i64 8 to ptr), ptr %.sink.i533.sroa.phi78, align 8, !noalias !34583
  store i64 0, ptr %.sink.i533.sroa.phi85, align 8, !noalias !34583
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %.sink.i533, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dfn) #43
          to label %.split440.us.i.cont.i534 unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i498.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp", !noalias !34488

.split440.us.i.cont.i534:                         ; preds = %.split440.us.i.invoke.i532
  unreachable

_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i602: ; preds = %bb.sm
  %i.dfo = icmp eq ptr %i.dfp, %i.cly
  br i1 %i.dfo, label %.lr.ph447.preheader.i.i603, label %.lr.ph434.split.i.i522

.lr.ph434.split.i.i522:                           ; preds = %_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i602, %.lr.ph434.split.preheader.i.i520
  %.sroa.0.0336432.i.i523 = phi ptr [ %i.dfp, %_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i602 ], [ %i.cfl, %.lr.ph434.split.preheader.i.i520 ] ; 2 uses
  %.sroa.7.0431.i.i524 = phi i64 [ %i.dfq, %_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i602 ], [ 0, %.lr.ph434.split.preheader.i.i520 ] ; 7 uses
  %i.dfp = getelementptr inbounds nuw i8, ptr %.sroa.0.0336432.i.i523, i64 2 ; 2 uses
  %i.dfq = add nuw nsw i64 %.sroa.7.0431.i.i524, 1
  %exitcond487.not.i.i525 = icmp eq i64 %.sroa.7.0431.i.i524, %.sroa.01.1
  br i1 %exitcond487.not.i.i525, label %.invoke.i506, label %bb.sf

.lr.ph447.preheader.i.i603:                       ; preds = %_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i602
  %i.dfr = load i8, ptr %i.cma, align 1, !alias.scope !34580, !noalias !34488, !noundef !45
  %i.dfs = mul i64 %i.dcr, %i.clz
  br label %.lr.ph447.i.i604

.lr.ph447.i.i604:                                 ; preds = %bb.se, %.lr.ph447.preheader.i.i603
  %.sroa.03.0446.i.i605 = phi i64 [ %.sroa.03.1.i.i612, %bb.se ], [ 1, %.lr.ph447.preheader.i.i603 ] ; 2 uses
  %.sroa.052.0445.i.i606 = phi i64 [ %i.dft, %bb.se ], [ %i.clz, %.lr.ph447.preheader.i.i603 ]
  %.sroa.059.0444.i.i607 = phi i64 [ %i.dfu, %bb.se ], [ %i.dfs, %.lr.ph447.preheader.i.i603 ]
  %.sroa.061.0443.i.i608 = phi i8 [ %.sroa.061.1.i.i611, %bb.se ], [ %i.dfr, %.lr.ph447.preheader.i.i603 ] ; 4 uses
  %i.dft = add nsw i64 %.sroa.052.0445.i.i606, -1 ; 4 uses
  %i.dfu = sub i64 %.sroa.059.0444.i.i607, %i.dcr ; 2 uses
  %i.dfv = lshr i8 %.sroa.061.0443.i.i608, 3
  %i.dfw = zext nneg i8 %i.dfv to i64
  %i.dfx = add i64 %i.dfu, %i.dfw                 ; 3 uses
  %i.dfy = icmp ult i64 %i.dfx, %i.cll
  br i1 %i.dfy, label %bb.sc, label %.invoke.i506

bb.sc:                                            ; preds = %.lr.ph447.i.i604
  %i.dfz = and i8 %.sroa.061.0443.i.i608, 7
  %i.dga = shl nuw i8 1, %i.dfz
  %i.dgb = getelementptr inbounds nuw i8, ptr %i.cls, i64 %i.dfx
  %i.dgc = load i8, ptr %i.dgb, align 1, !alias.scope !34579, !noalias !34488, !noundef !45
  %i.dgd = and i8 %i.dgc, %i.dga
  %i.dge = icmp eq i8 %i.dgd, 0
  br i1 %i.dge, label %bb.se, label %bb.sd

bb.sd:                                            ; preds = %bb.sc
  %i.dgf = getelementptr inbounds nuw i8, ptr %i.ckw, i64 %i.dft
  %i.dgg = load i8, ptr %i.dgf, align 1, !alias.scope !34580, !noalias !34488, !noundef !45 ; 2 uses
  %.not129.i.i609 = icmp ne i8 %.sroa.061.0443.i.i608, %i.dgg
  %i.dgh = zext i1 %.not129.i.i609 to i64
  %spec.select137.i.i610 = add i64 %.sroa.03.0446.i.i605, %i.dgh
  br label %bb.se

bb.se:                                            ; preds = %bb.sd, %bb.sc
  %.sroa.061.1.i.i611 = phi i8 [ %.sroa.061.0443.i.i608, %bb.sc ], [ %i.dgg, %bb.sd ] ; 2 uses
  %.sroa.03.1.i.i612 = phi i64 [ %.sroa.03.0446.i.i605, %bb.sc ], [ %spec.select137.i.i610, %bb.sd ] ; 2 uses
  %i.dgi = getelementptr inbounds nuw i8, ptr %i.ckw, i64 %i.dft
  store i8 %.sroa.061.1.i.i611, ptr %i.dgi, align 1, !alias.scope !34580, !noalias !34488
  %.not128.i.i613 = icmp eq i64 %i.dft, 0
  br i1 %.not128.i.i613, label %.loopexit.i614, label %.lr.ph447.i.i604

bb.sf:                                            ; preds = %.lr.ph434.split.i.i522
  %i.dgj = getelementptr inbounds nuw i8, ptr %i.ckw, i64 %.sroa.7.0431.i.i524 ; 15 uses
  %i.dgk = mul i64 %.sroa.7.0431.i.i524, %i.dcr   ; 3 uses
  %i.dgl = load i16, ptr %.sroa.0.0336432.i.i523, align 2, !alias.scope !34582, !noundef !45
  %i.dgm = zext i16 %i.dgl to i64
  %i.dgn = mul nuw nsw i64 %.sroa.0.0442.i485, %i.dgm ; 4 uses
  %.not130.i.i526 = icmp ugt i64 %i.dgn, %i.cla
  br i1 %.not130.i.i526, label %.split438.us.i.i956, label %bb.sg, !prof !47

.split438.us.i.i956:                              ; preds = %bb.sf, %.lr.ph434.split.us.i.i957
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !34583
  br label %.split440.us.i.invoke.i532

bb.sg:                                            ; preds = %bb.sf
  %i.dgo = getelementptr inbounds nuw [4 x i8], ptr %i.clc, i64 %i.dgn
  %i.dgp = sub nuw nsw i64 %i.cla, %i.dgn         ; 2 uses
  br i1 %i.ddj, label %._crit_edge416.i.i558, label %.lr.ph415.i.i527

.lr.ph415.i.i527:                                 ; preds = %bb.sg, %bb.ub
  %.sroa.029.0413.i.i528 = phi float [ %.sroa.029.4.7.i.i557, %bb.ub ], [ f0x7E967699, %bb.sg ] ; 2 uses
  %.sroa.0164.0412.i.i529 = phi ptr [ %i.dgq, %bb.ub ], [ %i.clg, %bb.sg ] ; 10 uses
  %.sroa.7166.0411.i.i530 = phi i64 [ %i.dgr, %bb.ub ], [ 0, %bb.sg ] ; 2 uses
  %i.dgq = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i529, i64 32 ; 2 uses
  %i.dgr = add nuw nsw i64 %.sroa.7166.0411.i.i530, 1
  %i.dgs = shl nuw nsw i64 %.sroa.7166.0411.i.i530, 3 ; 11 uses
end_hunk_5
begin_hunk_6_@"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$12store_symbol17h640489a63fbb42b3E":bb.a
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.f, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1627) #43
  unreachable

bb.g:                                             ; preds = %bb.a, %bb.e
  %i.aa = phi i64 [ %i.b, %bb.a ], [ %.pre, %bb.e ]
  %i.ab = add i64 %i.aa, -1
  store i64 %i.ab, ptr %i.a, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !45
  %i.ae = add i64 %i.ad, %1                       ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val7 = load i64, ptr %i.af, align 8, !noundef !45 ; 2 uses
  %i.ag = icmp ult i64 %i.ae, %.val7
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val9 = load i64, ptr %i.ah, align 8, !noundef !45 ; 2 uses
  %i.ai = icmp ult i64 %i.ae, %.val9
  br i1 %i.ai, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.g
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ae, i64 noundef %.val7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1628) #43
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val8 = load ptr, ptr %i.aj, align 8, !nonnull !45, !align !69, !noundef !45
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.ak, align 8, !nonnull !45, !align !55, !noundef !45
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ae
  %i.am = load i8, ptr %i.al, align 1, !noundef !45
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %.val8, i64 %i.ae
  %i.ao = load i16, ptr %i.an, align 2, !noundef !45
  %i.ap = zext i16 %i.ao to i64
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef %i.am, i64 noundef %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, ptr noalias noundef nonnull align 1 %3, i64 noundef %4)
  ret void

bb.k:                                             ; preds = %bb.h
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ae, i64 noundef %.val9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1629) #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6brotli3enc17brotli_bit_stream29store_uncompressed_meta_block17hce9957366ac74809E(ptr noalias noundef nonnull align 1 %0, i1 noundef zeroext %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %4, i64 noundef range(i64 0, 4294967296) %5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %6, i64 noundef %7, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %8, ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull align 1 %10, i64 noundef %11, i1 noundef zeroext %12) unnamed_addr #3 {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 22 uses
  %i.b = alloca [16 x i8], align 4                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_ZN6brotli3enc17brotli_bit_stream24InputPairFromMaskedInput17h9911943266a08ad9E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %4, i64 noundef %7, i64 noundef %5)
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !45, !align !55, !noundef !45 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !45 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !45, !align !55, !noundef !45 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.j = load i64, ptr %i.i, align 8, !noundef !45 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_ZN6brotli3enc17brotli_bit_stream38BrotliStoreUncompressedMetaBlockHeader17hc8eba3681d24f8e1E(i64 noundef %7, ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull align 1 %10, i64 noundef %11)
  call void @_ZN6brotli3enc17brotli_bit_stream18JumpToByteBoundary17hd530db3bb0615915E(ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull align 1 %10, i64 noundef %11)
  %i.k = load i64, ptr %9, align 8, !noundef !45  ; 2 uses
  %i.l = lshr i64 %i.k, 3                         ; 4 uses
  %i.m = add i64 %i.l, %i.f                       ; 3 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %.not22 = icmp ugt i64 %i.m, %11
  %or.cond = or i1 %i.n, %.not22
  br i1 %or.cond, label %bb.b, label %bb.c, !prof !87

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.l, i64 noundef %i.m, i64 noundef %11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1640) #43
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull readonly align 1 %i.d, i64 %i.f, i1 false), !alias.scope !35303
  %i.p = shl i64 %i.f, 3
  %i.q = add i64 %i.k, %i.p                       ; 3 uses
  store i64 %i.q, ptr %9, align 8
  %i.r = lshr i64 %i.q, 3                         ; 4 uses
  %i.s = add i64 %i.r, %i.j                       ; 3 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %.not23 = icmp ugt i64 %i.s, %11
  %or.cond24 = or i1 %i.t, %.not23
  br i1 %or.cond24, label %bb.d, label %bb.e, !prof !87

bb.d:                                             ; preds = %bb.c
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.r, i64 noundef %i.s, i64 noundef %11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1639) #43
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull readonly align 1 %i.h, i64 %i.j, i1 false), !alias.scope !35304
  %i.v = shl i64 %i.j, 3
  %i.w = add i64 %i.q, %i.v                       ; 2 uses
  store i64 %i.w, ptr %9, align 8
  call void @_ZN6brotli3enc17brotli_bit_stream29BrotliWriteBitsPrepareStorage17h3e3bbade587d8cacE(i64 noundef %i.w, ptr noalias noundef nonnull align 1 %10, i64 noundef %11)
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 97
  %i.y = load i8, ptr %i.x, align 1, !range !52, !noundef !45
  %i.z = trunc nuw i8 %i.y to i1
  %.not = xor i1 %i.z, true
  %brmerge = or i1 %12, %.not
  br i1 %brmerge, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.g
  br i1 %1, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.aa = trunc i64 %7 to i32
  store i32 %i.aa, ptr %i.b, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.0..sroa_idx, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr inttoptr (i64 1 to ptr), ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.64.0..sroa_idx, align 8
  %.sroa.75.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 1, ptr %.sroa.75.0..sroa_idx, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr inttoptr (i64 4 to ptr), ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr inttoptr (i64 1 to ptr), ptr %i.ad, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 0, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 0, ptr %.sroa.69.0..sroa_idx, align 8
  %.sroa.710.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i32 1, ptr %.sroa.710.0..sroa_idx, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr inttoptr (i64 1 to ptr), ptr %i.ae, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 0, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.514.0..sroa_idx, align 8
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i64 0, ptr %.sroa.615.0..sroa_idx, align 8
  %.sroa.716.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i32 1, ptr %.sroa.716.0..sroa_idx, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store ptr inttoptr (i64 4 to ptr), ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i64 0, ptr %i.ag, align 8
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream12LogMetaBlock17h8d6ec10e9474062aE(ptr noalias noundef nonnull align 1 %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.b, i64 noundef 1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.d, i64 noundef %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.h, i64 noundef %i.j, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @197, ptr noalias noundef align 8 dereferenceable(8) %8, ptr noalias noundef readonly align 8 captures(address) dereferenceable(152) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %6, i8 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.h:                                             ; preds = %bb.i, %bb.f
  ret void

bb.i:                                             ; preds = %bb.f
  call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef 1, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull align 1 %10, i64 noundef %11)
  call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef 1, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull align 1 %10, i64 noundef %11)
  call void @_ZN6brotli3enc17brotli_bit_stream18JumpToByteBoundary17hd530db3bb0615915E(ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull align 1 %10, i64 noundef %11)
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6brotli3enc17brotli_bit_stream34BrotliBuildAndStoreHuffmanTreeFast17hd0a5c367cceed3c5E(ptr noalias noundef nonnull readonly align 4 captures(none) %0, i64 noundef range(i64 256, 705) %1, i64 noundef %2, i64 noundef range(i64 0, 4294967296) %3, ptr noalias noundef nonnull align 1 %4, i64 noundef range(i64 140, 705) %5, ptr noalias noundef nonnull align 2 %6, i64 noundef range(i64 140, 705) %7, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %._crit_edge.thread, label %.lr.ph.preheader

._crit_edge:                                      ; preds = %bb.bf
  %i.c = icmp ult i64 %.sroa.0.1, 2
  br i1 %i.c, label %._crit_edge.thread, label %bb.b

.lr.ph:                                           ; preds = %bb.bf
  %exitcond.not = icmp eq i64 %i.fr, %1
  br i1 %exitcond.not, label %bb.bd, label %.lr.ph.preheader

bb.b:                                             ; preds = %._crit_edge
  %.not.not = icmp samesign ult i64 %.sroa.010.0137458, %5
  br i1 %.not.not, label %._crit_edge144, label %bb.c, !prof !54

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef 4, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  %i.d = trunc i64 %3 to i8
  %i.e = load i64, ptr %i.a, align 8, !noundef !45 ; 7 uses
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef %i.d, i64 noundef %i.e, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  %i.f = icmp ult i64 %i.e, %5
  br i1 %i.f, label %bb.az, label %bb.ba

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.fr, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1661) #43
  unreachable

._crit_edge144:                                   ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %4, i8 0, i64 %i.fr, i1 false)
  %i.g = shl nuw nsw i64 %i.fr, 1                 ; 13 uses
  %i.h = or disjoint i64 %i.g, 1                  ; 20 uses
  %i.i = shl nuw nsw i64 %i.h, 3                  ; 3 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35315
  %i.j = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.i, i64 noundef range(i64 1, 9) 4) #38, !noalias !35315 ; 28 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %_ZN6brotli3enc14combined_alloc8alloc_if17hd23791371a41120eE.exit

bb.d:                                             ; preds = %._crit_edge144
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !35316
  unreachable

_ZN6brotli3enc14combined_alloc8alloc_if17hd23791371a41120eE.exit: ; preds = %._crit_edge144
  %i.l = add nsw i64 %i.i, -8                     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.j, i8 0, i64 %i.l, i1 false), !noalias !35317
  %scevgep.i.i = getelementptr i8, ptr %i.j, i64 %i.l
  store i64 0, ptr %scevgep.i.i, align 4, !noalias !35317
  %.first_iter = icmp samesign ult i64 %.sroa.010.0137458, %1
  %i.m = trunc nuw nsw i64 %i.g to i32            ; 2 uses
  br label %.lr.ph148.preheader

.lr.ph148.preheader:                              ; preds = %_ZN6brotli3enc14combined_alloc8alloc_if17hd23791371a41120eE.exit, %bb.n
  %.sroa.024.0 = phi i32 [ 1, %_ZN6brotli3enc14combined_alloc8alloc_if17hd23791371a41120eE.exit ], [ %i.az, %bb.n ] ; 3 uses
  br label %.lr.ph148

.lr.ph148:                                        ; preds = %.lr.ph148.preheader, %bb.aw
  %.sroa.027.0146 = phi i32 [ %.sroa.027.2, %bb.aw ], [ 0, %.lr.ph148.preheader ] ; 3 uses
  %.sroa.037.0145 = phi i64 [ %i.n, %bb.aw ], [ %i.fr, %.lr.ph148.preheader ]
  %i.n = add nsw i64 %.sroa.037.0145, -1          ; 5 uses
  br i1 %.first_iter, label %bb.av, label %.invoke

._crit_edge149:                                   ; preds = %bb.aw
  %i.o = add i32 %.sroa.027.2, 1                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.p = sext i32 %.sroa.027.2 to i64             ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35318)
  %i.q = icmp ult i32 %.sroa.027.2, 13
  br i1 %i.q, label %.preheader.split.i, label %bb.e

.preheader.split.i:                               ; preds = %._crit_edge149
  %i.r = icmp samesign ugt i32 %.sroa.027.2, 1
  br i1 %i.r, label %.lr.ph66.i, label %.loopexit42

bb.e:                                             ; preds = %._crit_edge149
  %i.s = icmp ult i32 %.sroa.027.2, 57
  %i.t = select i1 %i.s, i64 2, i64 0
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge63.i, %bb.e
  %indvars.iv.i = phi i64 [ %i.t, %bb.e ], [ %indvars.iv.next.i, %._crit_edge63.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @_ZN6brotli3enc14entropy_encode20SortHuffmanTreeItems4gaps17ha345c21f8c53bdffE, i64 %indvars.iv.i
  %i.v = load i64, ptr %i.u, align 8, !noalias !35318, !noundef !45 ; 5 uses
  %i.w = icmp ult i64 %i.v, %i.p
  br i1 %i.w, label %.lr.ph62.preheader.i, label %._crit_edge63.i

.lr.ph62.preheader.i:                             ; preds = %bb.f
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 %i.h) ; 2 uses
  br label %.lr.ph62.i

._crit_edge63.i:                                  ; preds = %bb.h, %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond82.not.i = icmp eq i64 %indvars.iv.next.i, 6
  br i1 %exitcond82.not.i, label %.loopexit42, label %bb.f

.lr.ph62.i:                                       ; preds = %bb.h, %.lr.ph62.preheader.i
  %.sroa.025.060.i = phi i64 [ %i.x, %bb.h ], [ %i.v, %.lr.ph62.preheader.i ] ; 4 uses
  %i.x = add nuw i64 %.sroa.025.060.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.025.060.i, %umax.i
  br i1 %exitcond.not.i, label %.invoke, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph62.i
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.025.060.i
  %i.z = load i64, ptr %i.y, align 4, !alias.scope !35318 ; 2 uses
  %.sroa.038.0.extract.trunc.i = trunc i64 %i.z to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.preheader.i
  %.sroa.015.057.i = phi i64 [ %i.aa, %bb.i ], [ %.sroa.025.060.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.aa = sub nuw i64 %.sroa.015.057.i, %i.v      ; 6 uses
  %.not26 = icmp ugt i64 %i.aa, %i.g
  br i1 %.not26, label %.invoke, label %bb.g

._crit_edge.i:                                    ; preds = %bb.i, %bb.g
  %.sroa.015.0.lcssa.ph.i = phi i64 [ %i.aa, %bb.i ], [ %.sroa.015.057.i, %bb.g ] ; 3 uses
  %.not27 = icmp ugt i64 %.sroa.015.0.lcssa.ph.i, %i.g
  br i1 %.not27, label %.invoke, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.aa ; 2 uses
  %.val35.i = load i32, ptr %i.ab, align 4, !alias.scope !35318, !noundef !45
  %i.ac = icmp ugt i32 %.val35.i, %.sroa.038.0.extract.trunc.i
  br i1 %i.ac, label %bb.i, label %._crit_edge.i

bb.h:                                             ; preds = %._crit_edge.i
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.015.0.lcssa.ph.i
  store i64 %i.z, ptr %i.ad, align 4, !alias.scope !35318
  %exitcond80.not.i = icmp eq i64 %i.x, %i.p
  br i1 %exitcond80.not.i, label %._crit_edge63.i, label %.lr.ph62.i

bb.i:                                             ; preds = %bb.g
  %.sroa.021.0.copyload.i = load i64, ptr %i.ab, align 4, !alias.scope !35318
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.015.057.i
  store i64 %.sroa.021.0.copyload.i, ptr %i.ae, align 4, !alias.scope !35318
  %.not.i = icmp ult i64 %i.aa, %i.v
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph66.i:                                       ; preds = %.preheader.split.i, %.thread
  %.sroa.023.065.i = phi i64 [ %i.af, %.thread ], [ 1, %.preheader.split.i ] ; 4 uses
  %i.af = add nuw nsw i64 %.sroa.023.065.i, 1     ; 2 uses
  %exitcond84.not.i = icmp eq i64 %.sroa.023.065.i, %i.h
  br i1 %exitcond84.not.i, label %.invoke, label %.split.i

.split.i:                                         ; preds = %.lr.ph66.i
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.023.065.i
  %i.ah = load i64, ptr %i.ag, align 4, !alias.scope !35318 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.ah to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.split.i
  %.sroa.01.0.i = phi i64 [ %.sroa.023.065.i, %.split.i ], [ %.sroa.03.0.i, %bb.k ] ; 3 uses
  %.sroa.03.0.i = add nsw i64 %.sroa.01.0.i, -1   ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.03.0.i ; 2 uses
  %.val37.i = load i32, ptr %i.ai, align 4, !alias.scope !35318, !noundef !45
  %i.aj = icmp ugt i32 %.val37.i, %.sroa.0.0.extract.trunc.i
  br i1 %i.aj, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %.sroa.08.0.copyload.i = load i64, ptr %i.ai, align 4, !alias.scope !35318
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.01.0.i
  store i64 %.sroa.08.0.copyload.i, ptr %i.ak, align 4, !alias.scope !35318
  %i.al = icmp eq i64 %.sroa.03.0.i, 0
  br i1 %i.al, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.k, %bb.j
  %.sroa.01.1.i20 = phi i64 [ %.sroa.01.0.i, %bb.j ], [ 0, %bb.k ]
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.01.1.i20
  store i64 %i.ah, ptr %i.am, align 4, !alias.scope !35318
  %exitcond85.not.i = icmp eq i64 %i.af, %i.p
  br i1 %exitcond85.not.i, label %.loopexit42, label %.lr.ph66.i

.loopexit42:                                      ; preds = %._crit_edge63.i, %.thread, %.preheader.split.i
  %i.an = zext i32 %i.o to i64                    ; 3 uses
  %.not29 = icmp samesign ult i64 %i.g, %i.an
  br i1 %.not29, label %.invoke, label %bb.l

.invoke.loopexit474.split.loop.exit501:           ; preds = %bb.ax
  %.not173.le = icmp ult i32 %i.fd, %.sroa.024.0
  %.431.le = select i1 %.not173.le, ptr @1659, ptr @1660
  br label %.invoke

.invoke:                                          ; preds = %bb.l, %.loopexit42, %.invoke.loopexit474.split.loop.exit501, %.lr.ph148, %.lr.ph66.i, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %.lr.ph157, %._crit_edge.i, %.lr.ph62.i, %.lr.ph.i
  %i.ao = phi i64 [ %i.n, %.lr.ph148 ], [ %i.aa, %.lr.ph.i ], [ %.sroa.015.0.lcssa.ph.i, %._crit_edge.i ], [ %i.h, %.lr.ph66.i ], [ %i.dv, %.lr.ph157 ], [ %umax.i, %.lr.ph62.i ], [ %i.dw, %bb.an ], [ %i.ed, %bb.ao ], [ %i.ee, %bb.ap ], [ %i.el, %bb.aq ], [ %i.em, %bb.ar ], [ %i.eo, %bb.as ], [ %i.ez, %bb.at ], [ %i.fg, %.invoke.loopexit474.split.loop.exit501 ], [ %i.an, %.loopexit42 ], [ %i.as, %bb.l ]
  %i.ap = phi i64 [ %1, %.lr.ph148 ], [ %i.h, %.lr.ph.i ], [ %i.h, %._crit_edge.i ], [ %i.h, %.lr.ph66.i ], [ %i.h, %bb.at ], [ %i.h, %.lr.ph62.i ], [ %i.h, %.lr.ph157 ], [ %i.h, %bb.an ], [ %i.h, %bb.ao ], [ %i.h, %bb.ap ], [ %i.h, %bb.aq ], [ %i.h, %bb.ar ], [ %i.h, %bb.as ], [ %i.h, %.invoke.loopexit474.split.loop.exit501 ], [ %i.h, %.loopexit42 ], [ %i.h, %bb.l ]
  %i.aq = phi ptr [ @1658, %.lr.ph148 ], [ @1575, %.lr.ph.i ], [ @1576, %._crit_edge.i ], [ @1577, %.lr.ph66.i ], [ @1650, %.lr.ph157 ], [ @1574, %.lr.ph62.i ], [ @1651, %bb.an ], [ @1652, %bb.ao ], [ @1653, %bb.ap ], [ @1654, %bb.aq ], [ @1655, %bb.ar ], [ @1656, %bb.as ], [ @1657, %bb.at ], [ %.431.le, %.invoke.loopexit474.split.loop.exit501 ], [ @1641, %.loopexit42 ], [ @1642, %bb.l ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ao, i64 noundef %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aq) #43
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.l:                                             ; preds = %.loopexit42
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.an
  %i.as = zext i32 %.sroa.027.2 to i64            ; 3 uses
  %.not30 = icmp samesign ult i64 %i.g, %i.as
  store i64 -1, ptr %i.ar, align 4
  br i1 %.not30, label %.invoke, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.as
  %.sroa.060.0151 = add i32 %.sroa.027.2, -1
  %i.au = icmp sgt i32 %.sroa.060.0151, 0
  store i64 -1, ptr %i.at, align 4
  br i1 %i.au, label %.lr.ph157.preheader, label %.._crit_edge158_crit_edge

.._crit_edge158_crit_edge:                        ; preds = %bb.m
  %.pre274 = shl i32 %.sroa.027.2, 1
  br label %._crit_edge158

.lr.ph157.preheader:                              ; preds = %bb.m
  %i.av = add nuw i32 %.sroa.027.2, 2
  %i.aw = shl i32 %.sroa.027.2, 1                 ; 2 uses
  br label %.lr.ph157

._crit_edge158:                                   ; preds = %bb.au, %.._crit_edge158_crit_edge
  %.pre-phi275 = phi i32 [ %.pre274, %.._crit_edge158_crit_edge ], [ %i.aw, %bb.au ]
  %i.ax = add i32 %.pre-phi275, -1
  %i.ay = invoke noundef zeroext i1 @_ZN6brotli3enc14entropy_encode14BrotliSetDepth17h5f5ba8abc19b5273E(i32 noundef %i.ax, ptr noalias noundef nonnull align 4 %i.j, i64 noundef %i.h, ptr noalias noundef nonnull align 1 %4, i64 noundef %5, i32 noundef 14)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %._crit_edge158
  %i.az = shl i32 %.sroa.024.0, 1
  br i1 %i.ay, label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..entropy_encode..HuffmanTree$GT$$GT$17h66adf8cf8f2b9f83E.exit217", label %.lr.ph148.preheader

"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..entropy_encode..HuffmanTree$GT$$GT$17h66adf8cf8f2b9f83E.exit217": ; preds = %bb.n
  tail call void @mi_free(ptr noundef nonnull align 4 %i.j) #38
  tail call void @_ZN6brotli3enc14entropy_encode31BrotliConvertBitDepthsToSymbols17hf5dace01f018846fE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %4, i64 noundef %5, i64 noundef %i.fr, ptr noalias noundef nonnull align 2 %6, i64 noundef %7)
  %i.ba = icmp ult i64 %.sroa.0.1, 5
  br i1 %i.ba, label %bb.o, label %.split.preheader

.split.preheader:                                 ; preds = %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..entropy_encode..HuffmanTree$GT$$GT$17h66adf8cf8f2b9f83E.exit217"
  tail call void @_ZN6brotli3enc17brotli_bit_stream25StoreStaticCodeLengthCode17hf918db1678579c13E(ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  br label %.split

bb.o:                                             ; preds = %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..entropy_encode..HuffmanTree$GT$$GT$17h66adf8cf8f2b9f83E.exit217"
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef 2, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  %i.bb = add nsw i64 %.sroa.0.1, -1
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef 2, i64 noundef %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  br label %.preheader

.split:                                           ; preds = %.split.preheader, %.loopexit40
  %.sroa.085.0171 = phi i8 [ %.sroa.085.1, %.loopexit40 ], [ 8, %.split.preheader ] ; 2 uses
  %.sroa.086.0170 = phi i64 [ %.pre-phi330, %.loopexit40 ], [ 0, %.split.preheader ] ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.086.0170
  %i.bd = load i8, ptr %i.bc, align 1, !noundef !45 ; 11 uses
  %.sroa.0101.0159 = add nuw nsw i64 %.sroa.086.0170, 1 ; 3 uses
end_hunk_6
