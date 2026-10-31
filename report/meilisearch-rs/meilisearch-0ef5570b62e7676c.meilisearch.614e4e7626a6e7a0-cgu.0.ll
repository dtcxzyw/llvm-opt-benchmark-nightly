Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch-0ef5570b62e7676c.meilisearch.614e4e7626a6e7a0-cgu.0?download=true
inline.NumInlined: 17146
inline.NumDeleted: 6832
loop-unroll.NumCompletelyUnrolled: 149
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 284
begin_hunk_0_@_ZN6brotli3enc9metablock31ContextBlockSplitterFinishBlock17h66fa7f7da5e00ab8E:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !45
  %i.ad = add i64 %i.ac, %i.d                     ; 6 uses
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = load i64, ptr %4, align 8, !noundef !45
  %i.af = icmp ult i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.k, label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit

bb.k:                                             ; preds = %._crit_edge95
  %i.ag = icmp ugt i64 %i.ad, %3
  br i1 %i.ag, label %bb.o, label %bb.l, !prof !47

_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit: ; preds = %.lr.ph.i, %bb.m, %._crit_edge95
  store i64 0, ptr %i.e, align 8
  br label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ah = sub nuw i64 %3, %i.ad                   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38009)
  %.not.i = icmp ugt i64 %i.d, %i.ah
  br i1 %.not.i, label %bb.n, label %bb.m, !prof !87

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw [1040 x i8], ptr %2, i64 %i.ad ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.d, 1040
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx.i
  br i1 %.not100, label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit, label %.lr.ph.i

bb.n:                                             ; preds = %bb.l
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.d, i64 noundef %i.ah, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1924) #43, !noalias !38009
  unreachable

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.i
  %.sroa.02.05.i = phi ptr [ %i.ak, %.lr.ph.i ], [ %i.ai, %bb.m ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 1040 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %.sroa.02.05.i, i8 0, i64 1032, i1 false), !alias.scope !38009
  store float 3.402000e+38, ptr %i.al, align 8, !alias.scope !38010
  %i.am = icmp eq ptr %i.ak, %i.aj
  br i1 %i.am, label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit, label %.lr.ph.i

bb.o:                                             ; preds = %bb.k
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.ad, i64 noundef %3, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1983) #43
  unreachable

bb.p:                                             ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h14c94f2a1b156012E.exit", %bb.e, %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit
  br i1 %5, label %bb.bd, label %bb.bc

bb.q:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw [1040 x i8], ptr %2, i64 %.sroa.028.092
  %i.ao = tail call { float, i64 } @_ZN6brotli3enc8bit_cost15shannon_entropy17hf421171ae783c7a0E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.an, i64 noundef 256, i64 noundef %i.s) ; 2 uses
  %i.ap = extractvalue { float, i64 } %i.ao, 0    ; 2 uses
  %i.aq = extractvalue { float, i64 } %i.ao, 1
  %i.ar = uitofp i64 %i.aq to float               ; 2 uses
  %i.as = fcmp olt float %i.ap, %i.ar
  %spec.store.select = select i1 %i.as, float %i.ar, float %i.ap ; 2 uses
  %exitcond175.not = icmp eq i64 %i.x, 27
  br i1 %exitcond175.not, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.j
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.028.092, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1984) #43
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.sroa.028.092
  store float %spec.store.select, ptr %i.at, align 4
  %i.au = add nuw nsw i64 %.sroa.028.092, %i.d    ; 2 uses
  %exitcond177.not = icmp eq i64 %i.x, %i.w
  br i1 %exitcond177.not, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.q
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.028.092, i64 noundef 26, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1985) #43
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.au
  store float %spec.store.select, ptr %i.av, align 4
  %i.aw = add nuw nsw i64 %i.x, 1
  %exitcond178.not = icmp eq i64 %i.x, %i.d
  br i1 %exitcond178.not, label %._crit_edge95, label %bb.j

bb.v:                                             ; preds = %bb.s
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.au, i64 noundef 26, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1986) #43
  unreachable

bb.w:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.b, i8 0, i64 52, i1 false)
  %i.ax = shl i64 %i.d, 1                         ; 14 uses
  %i.ay = mul i64 %i.d, 2080                      ; 4 uses
  %or.cond.i.i.i.i.i = icmp ugt i64 %i.ax, 8868626958514207
  br i1 %or.cond.i.i.i.i.i, label %bb.y, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.w
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i", label %bb.x

bb.x:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !38011
  %i.ba = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.ay, i64 noundef range(i64 1, 9) 8) #38, !noalias !38011 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.y, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i"

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.x ], [ 0, %bb.w ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.ay, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !38012
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i": ; preds = %bb.x, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.ba, %bb.x ] ; 12 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.ax, %bb.x ]
  %i.bc = icmp samesign ule i64 %i.ax, %.sroa.4.0.i.i.i
  tail call void @llvm.assume(i1 %i.bc)
  %.not10 = icmp eq i64 %i.ax, 0                  ; 3 uses
  br i1 %.not10, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h88530c57ef19323aE.exit", label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i"
  %i.bd = add nsw i64 %i.ax, -1                   ; 2 uses
  %i.be = add nsw i64 %i.ax, -2
  %xtraiter = and i64 %i.bd, 7
  %i.bf = icmp ult i64 %i.be, 7
  br i1 %i.bf, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.bd, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader
  %.sroa.0.08.i.i.i.epil.init = phi ptr [ %.sroa.10.0.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.bo, %.lr.ph.i.i.i ]
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.sroa.0.08.i.i.i.epil = phi ptr [ %i.bg, %.lr.ph.i.i.i.epil ], [ %.sroa.0.08.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.epil, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i.epil, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.epil, align 8, !noalias !38013
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.epil, i64 1040 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !37984

._crit_edge.thread.i.i.i:                         ; preds = %.lr.ph.i.i.i.epil
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.epil, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bg, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i, align 8, !noalias !38013
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h88530c57ef19323aE.exit"

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.08.i.i.i = phi ptr [ %.sroa.10.0.i.i.i, %.lr.ph.i.i.i.preheader.new ], [ %i.bo, %.lr.ph.i.i.i ] ; 17 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i, align 8, !noalias !38013
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 1040
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bh, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.1, align 8, !noalias !38013
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 2080
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bi, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.2, align 8, !noalias !38013
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 3120
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 4152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bj, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.3, align 8, !noalias !38013
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 4160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 5192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bk, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.4, align 8, !noalias !38013
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 5200
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 6232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bl, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.5, align 8, !noalias !38013
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 6240
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 7272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bm, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.6, align 8, !noalias !38013
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 7280
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 8312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bn, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.7, align 8, !noalias !38013
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 8320 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h88530c57ef19323aE.exit": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i", %._crit_edge.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(104) %i.a, i8 0, i64 104, i1 false)
  %.not96 = icmp eq i64 %i.d, 0                   ; 4 uses
  br i1 %.not96, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h88530c57ef19323aE.exit"
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bq = load i64, ptr %i.bp, align 8, !noundef !45
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bs = load i64, ptr %i.br, align 8            ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = getelementptr i8, ptr %.sroa.10.0.i.i.i, i64 %i.ay
  %scevgep = getelementptr i8, ptr %6, i64 -16
  %7 = mul i64 %i.d, 1040                         ; 2 uses
  %scevgep328 = getelementptr i8, ptr %.sroa.10.0.i.i.i, i64 %7
  %i.bv = getelementptr i8, ptr %.sroa.10.0.i.i.i, i64 %7
  %scevgep333 = getelementptr i8, ptr %i.bv, i64 -16
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph, %.loopexit
  %.sroa.0.0 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.na, %.loopexit ]
  %.sroa.7.0 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.pj, %.loopexit ]
  %.sroa.030.175 = phi i64 [ 1, %.lr.ph ], [ %.sroa.030.1, %.loopexit ] ; 3 uses
  %.sroa.030.074 = phi i64 [ 0, %.lr.ph ], [ %.sroa.030.175, %.loopexit ] ; 12 uses
  %i.bw = add nuw i64 %i.bq, %.sroa.030.074       ; 3 uses
  %i.bx = icmp ult i64 %i.bw, %3
  br i1 %i.bx, label %bb.cf, label %.invoke296

._crit_edge:                                      ; preds = %.loopexit, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h88530c57ef19323aE.exit"
  %.sroa.0.1 = phi float [ 0.000000e+00, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h88530c57ef19323aE.exit" ], [ %i.na, %.loopexit ] ; 2 uses
  %.sroa.7.1 = phi float [ 0.000000e+00, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h88530c57ef19323aE.exit" ], [ %i.pj, %.loopexit ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !noundef !45 ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cb = load i64, ptr %i.ca, align 8, !noundef !45
  %i.cc = icmp ult i64 %i.bz, %i.cb
  br i1 %i.cc, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %._crit_edge
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ce = load float, ptr %i.cd, align 8, !noundef !45 ; 2 uses
  %i.cf = fcmp ogt float %.sroa.0.1, %i.ce
  %i.cg = fcmp ogt float %.sroa.7.1, %i.ce
  %or.cond = select i1 %i.cf, i1 %i.cg, i1 false
  br i1 %or.cond, label %bb.aw, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge
  %i.ch = fadd float %.sroa.0.1, -2.000000e+01
  %i.ci = fcmp olt float %.sroa.7.1, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val116 = load i64, ptr %i.cj, align 8, !noundef !45 ; 4 uses
  %i.ck = load i64, ptr %i.k, align 8, !noundef !45 ; 9 uses
  br i1 %i.ci, label %bb.am, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cl = add i64 %i.ck, -1                       ; 3 uses
  %i.cm = icmp ult i64 %i.cl, %.val116
  br i1 %i.cm, label %bb.ad, label %.invoke296

bb.ad:                                            ; preds = %bb.ac
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val117 = load ptr, ptr %i.cn, align 8, !nonnull !45, !align !70, !noundef !45
  %i.co = load i64, ptr %i.e, align 8, !noundef !45
  %i.cp = trunc i64 %i.co to i32
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.val117, i64 %i.cl ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !noundef !45
  %i.cs = add i32 %i.cr, %i.cp
  store i32 %i.cs, ptr %i.cq, align 4
  br i1 %.not96, label %._crit_edge81, label %.lr.ph80

.lr.ph80:                                         ; preds = %bb.ad
  %i.ct = load i64, ptr %0, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.cv = icmp eq i64 %i.bz, 1
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cx = load i64, ptr %i.cw, align 8
  br label %bb.af

.invoke296:                                       ; preds = %bb.cl, %bb.ch, %bb.cj, %bb.cg, %bb.z, %bb.af, %bb.ar, %.lr.ph90, %bb.bf, %bb.bh, %bb.bj, %bb.bl, %bb.bn, %bb.bp, %bb.br, %bb.bt, %bb.bv, %bb.bx, %bb.bz, %bb.cb, %bb.cd, %bb.ax, %bb.aw, %bb.ao, %bb.an, %bb.am, %bb.ac, %bb.ce
  %i.cy = phi i64 [ %i.jq, %bb.bx ], [ %i.cl, %bb.ac ], [ %.sroa.036.077, %bb.af ], [ %i.ck, %bb.am ], [ %i.ek, %bb.an ], [ %i.ck, %bb.ao ], [ %i.jw, %bb.bz ], [ %i.ft, %bb.aw ], [ %i.ft, %bb.ax ], [ 13, %bb.ce ], [ %i.ki, %bb.cd ], [ %i.kc, %bb.cb ], [ %i.ez, %bb.ar ], [ %i.d, %.lr.ph90 ], [ %i.gj, %bb.bf ], [ %i.hu, %bb.bh ], [ %i.ia, %bb.bj ], [ %i.ig, %bb.bl ], [ %i.im, %bb.bn ], [ %i.is, %bb.bp ], [ %i.iy, %bb.br ], [ %i.je, %bb.bt ], [ %i.jk, %bb.bv ], [ %i.nb, %bb.cl ], [ %i.bw, %bb.z ], [ %.sroa.030.074, %bb.cg ], [ %.sroa.030.074, %bb.ch ], [ %i.nb, %bb.cj ]
  %i.cz = phi i64 [ 26, %bb.bx ], [ %.val116, %bb.ac ], [ %i.ax, %bb.af ], [ %.val116, %bb.am ], [ %.val124, %bb.an ], [ %.val124, %bb.ao ], [ 26, %bb.bz ], [ %.val120, %bb.aw ], [ %.val110, %bb.ax ], [ 13, %bb.ce ], [ 26, %bb.cd ], [ 26, %bb.cb ], [ %i.ax, %bb.ar ], [ 26, %.lr.ph90 ], [ 26, %bb.bf ], [ 26, %bb.bh ], [ 26, %bb.bj ], [ 26, %bb.bl ], [ 26, %bb.bn ], [ 26, %bb.bp ], [ 26, %bb.br ], [ 26, %bb.bt ], [ 26, %bb.bv ], [ 26, %bb.cl ], [ %3, %bb.z ], [ 13, %bb.cg ], [ %i.ax, %bb.ch ], [ %i.ax, %bb.cj ]
  %i.da = phi ptr [ @2004, %bb.bx ], [ @1987, %bb.ac ], [ @1988, %bb.af ], [ @1993, %bb.am ], [ @1994, %bb.an ], [ @1995, %bb.ao ], [ @2004, %bb.bz ], [ @2001, %bb.aw ], [ @2002, %bb.ax ], [ @2005, %bb.ce ], [ @2004, %bb.cd ], [ @2004, %bb.cb ], [ @1996, %bb.ar ], [ @2004, %.lr.ph90 ], [ @2004, %bb.bf ], [ @2004, %bb.bh ], [ @2004, %bb.bj ], [ @2004, %bb.bl ], [ @2004, %bb.bn ], [ @2004, %bb.bp ], [ @2004, %bb.br ], [ @2004, %bb.bt ], [ @2004, %bb.bv ], [ @2010, %bb.cl ], [ @2006, %bb.z ], [ @2007, %bb.cg ], [ @2008, %bb.ch ], [ @2008, %bb.cj ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.cy, i64 noundef %i.cz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.da) #43
          to label %.cont297 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont297:                                         ; preds = %.invoke296
  unreachable

._crit_edge81:                                    ; preds = %_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit104, %bb.ad
  store i64 0, ptr %i.e, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !noundef !45
  %i.dd = add i64 %i.dc, 1                        ; 2 uses
  store i64 %i.dd, ptr %i.db, align 8
  %i.de = icmp ugt i64 %i.dd, 1
  br i1 %i.de, label %bb.ae, label %bb.aq

bb.ae:                                            ; preds = %._crit_edge81
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !noundef !45
  %i.dh = load i64, ptr %i.g, align 8, !noundef !45
  %i.di = add i64 %i.dh, %i.dg
  store i64 %i.di, ptr %i.df, align 8
  br label %bb.aq

bb.af:                                            ; preds = %.lr.ph80, %_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit104
  %.sroa.036.178 = phi i64 [ 1, %.lr.ph80 ], [ %.sroa.036.1, %_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit104 ] ; 3 uses
  %.sroa.036.077 = phi i64 [ 0, %.lr.ph80 ], [ %.sroa.036.178, %_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit104 ] ; 10 uses
  %i.dj = icmp ult i64 %.sroa.036.077, %i.ax
  br i1 %i.dj, label %bb.ag, label %.invoke296

bb.ag:                                            ; preds = %bb.af
  %i.dk = add nuw i64 %i.ct, %.sroa.036.077       ; 3 uses
  %i.dl = icmp ult i64 %i.dk, %3
  br i1 %i.dl, label %bb.ah, label %.invoke

bb.ah:                                            ; preds = %bb.ag
  %i.dm = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i, i64 %.sroa.036.077
  %i.dn = getelementptr inbounds nuw [1040 x i8], ptr %2, i64 %i.dk
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.dn, ptr noundef nonnull align 8 dereferenceable(1040) %i.dm, i64 1040, i1 false)
  %i.do = icmp samesign ult i64 %.sroa.036.077, 26
  br i1 %i.do, label %bb.ai, label %.invoke

.invoke:                                          ; preds = %bb.ci, %bb.ck, %bb.al, %bb.aj, %bb.ah, %bb.ag, %bb.av, %bb.au, %bb.at, %bb.as
  %i.dp = phi i64 [ %i.dk, %bb.ag ], [ %i.fm, %bb.av ], [ %i.fb, %bb.as ], [ %.sroa.034.083, %bb.at ], [ %i.ez, %bb.au ], [ %i.dy, %bb.al ], [ %.sroa.036.077, %bb.ah ], [ %i.dv, %bb.aj ], [ %i.kv, %bb.ci ], [ %i.nd, %bb.ck ]
  %i.dq = phi i64 [ %3, %bb.ag ], [ %3, %bb.av ], [ %3, %bb.as ], [ 26, %bb.at ], [ 26, %bb.au ], [ %3, %bb.al ], [ 26, %bb.ah ], [ 26, %bb.aj ], [ %3, %bb.ck ], [ %3, %bb.ci ]
  %i.dr = phi ptr [ @1989, %bb.ag ], [ @2000, %bb.av ], [ @1997, %bb.as ], [ @1998, %bb.at ], [ @1999, %bb.au ], [ @1992, %bb.al ], [ @1990, %bb.ah ], [ @1991, %bb.aj ], [ @2009, %bb.ck ], [ @2009, %bb.ci ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.dp, i64 noundef %i.dq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dr) #43
          to label %.cont unwind label %.thread.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.ai:                                            ; preds = %bb.ah
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.036.077
  %i.dt = load float, ptr %i.ds, align 4, !noundef !45 ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %.sroa.036.077
  store float %i.dt, ptr %i.du, align 4
  br i1 %i.cv, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.dv = add i64 %.sroa.036.077, %i.d            ; 3 uses
  %i.dw = icmp ult i64 %i.dv, 26
  br i1 %i.dw, label %bb.ak, label %.invoke

bb.ak:                                            ; preds = %bb.aj
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.dv
  store float %i.dt, ptr %i.dx, align 4
  br label %bb.al

bb.al:                                            ; preds = %bb.ai, %bb.ak
  %i.dy = add nuw i64 %i.cx, %.sroa.036.077       ; 3 uses
  %i.dz = icmp ult i64 %i.dy, %3
  br i1 %i.dz, label %_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit104, label %.invoke

_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit104: ; preds = %bb.al
  %i.ea = getelementptr inbounds nuw [1040 x i8], ptr %2, i64 %i.dy ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ea, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %i.eb, align 8, !alias.scope !38014
  %i.ec = icmp ult i64 %.sroa.036.178, %i.d       ; 2 uses
  %i.ed = zext i1 %i.ec to i64
  %.sroa.036.1 = add nuw i64 %.sroa.036.178, %i.ed
  br i1 %i.ec, label %bb.af, label %._crit_edge81

bb.am:                                            ; preds = %bb.ab
  %i.ee = icmp ult i64 %i.ck, %.val116
  br i1 %i.ee, label %bb.an, label %.invoke296

bb.an:                                            ; preds = %bb.am
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val115 = load ptr, ptr %i.ef, align 8, !nonnull !45, !align !70, !noundef !45
  %i.eg = load i64, ptr %i.e, align 8, !noundef !45
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.val115, i64 %i.ck
  %i.ei = trunc i64 %i.eg to i32
  store i32 %i.ei, ptr %i.eh, align 4
  %.val123 = load ptr, ptr %1, align 8, !nonnull !45, !align !55, !noundef !45 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val124 = load i64, ptr %i.ej, align 8, !noundef !45 ; 4 uses
  %i.ek = add i64 %i.ck, -2                       ; 3 uses
  %i.el = icmp ult i64 %i.ek, %.val124
  br i1 %i.el, label %bb.ao, label %.invoke296

bb.ao:                                            ; preds = %bb.an
  %i.em = icmp ult i64 %i.ck, %.val124
  br i1 %i.em, label %bb.ap, label %.invoke296

bb.ap:                                            ; preds = %bb.ao
  %i.en = getelementptr inbounds nuw i8, ptr %.val123, i64 %i.ek
  %i.eo = load i8, ptr %i.en, align 1, !noundef !45
  %i.ep = getelementptr inbounds nuw i8, ptr %.val123, i64 %i.ck
  store i8 %i.eo, ptr %i.ep, align 1
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8
  %i.er = load i64, ptr %i.eq, align 8            ; 2 uses
  store i64 %i.er, ptr %0, align 8
  store i64 %.sroa.0.0.copyload.i, ptr %i.eq, align 8
  br i1 %.not96, label %._crit_edge87, label %.lr.ph86

.lr.ph86:                                         ; preds = %bb.ap
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.eu = load i64, ptr %i.et, align 8
  br label %bb.ar

._crit_edge87:                                    ; preds = %_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit, %bb.ap
  %i.ev = add nuw i64 %i.ck, 1
  store i64 %i.ev, ptr %i.k, align 8
  store i64 0, ptr %i.e, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 0, ptr %i.ew, align 8
  %i.ex = load i64, ptr %i.g, align 8, !noundef !45
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.ex, ptr %i.ey, align 8
  br label %bb.aq

end_hunk_0
begin_hunk_1_@_ZN6brotli3enc9metablock31ContextBlockSplitterFinishBlock17h66fa7f7da5e00ab8E:bb.a
  %exitcond171.10.not = icmp eq i64 %i.gi, 11
  br i1 %exitcond171.10.not, label %.invoke296, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.js = load float, ptr %i.jr, align 8, !noundef !45
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.jq
  store float %i.js, ptr %i.jt, align 4
  %i.ju = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.jv = load float, ptr %i.ju, align 4, !noundef !45
  store float %i.jv, ptr %i.jr, align 8
  %exitcond173.10.not = icmp eq i64 %i.gj, 12
  br i1 %exitcond173.10.not, label %._crit_edge91, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.jw = add nuw nsw i64 %i.d, 11                ; 2 uses
  %exitcond171.11.not = icmp eq i64 %i.gi, 12
  br i1 %exitcond171.11.not, label %.invoke296, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.jy = load float, ptr %i.jx, align 4, !noundef !45
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.jw
  store float %i.jy, ptr %i.jz, align 4
  %i.ka = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.kb = load float, ptr %i.ka, align 4, !noundef !45
  store float %i.kb, ptr %i.jx, align 4
  %exitcond173.11.not = icmp eq i64 %i.gj, 13
  br i1 %exitcond173.11.not, label %._crit_edge91, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.kc = add nuw nsw i64 %i.d, 12                ; 2 uses
  %exitcond171.12.not = icmp eq i64 %i.gi, 13
  br i1 %exitcond171.12.not, label %.invoke296, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ke = load float, ptr %i.kd, align 8, !noundef !45
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.kc
  store float %i.ke, ptr %i.kf, align 4
  %i.kg = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.kh = load float, ptr %i.kg, align 4, !noundef !45
  store float %i.kh, ptr %i.kd, align 8
  %exitcond173.12.not = icmp eq i64 %i.gj, 14
  br i1 %exitcond173.12.not, label %._crit_edge91, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ki = add nuw nsw i64 %i.d, 13                ; 2 uses
  %exitcond171.13.not = icmp eq i64 %i.gi, 14
  br i1 %exitcond171.13.not, label %.invoke296, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.kk = load float, ptr %i.kj, align 4, !noundef !45
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.ki
  store float %i.kk, ptr %i.kl, align 4
  br label %.invoke296

bb.cf:                                            ; preds = %bb.z
  %i.km = getelementptr inbounds nuw [1040 x i8], ptr %2, i64 %i.bw ; 3 uses
  %i.kn = invoke { float, i64 } @_ZN6brotli3enc8bit_cost15shannon_entropy17hf421171ae783c7a0E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.km, i64 noundef 256, i64 noundef %i.bs)
          to label %bb.cg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cg:                                            ; preds = %bb.cf
  %i.ko = icmp samesign ult i64 %.sroa.030.074, 13
  br i1 %i.ko, label %bb.ch, label %.invoke296

bb.ch:                                            ; preds = %bb.cg
  %i.kp = extractvalue { float, i64 } %i.kn, 0    ; 2 uses
  %i.kq = extractvalue { float, i64 } %i.kn, 1
  %i.kr = uitofp i64 %i.kq to float               ; 2 uses
  %i.ks = fcmp olt float %i.kp, %i.kr
  %spec.store.select1 = select i1 %i.ks, float %i.kr, float %i.kp ; 3 uses
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.sroa.030.074
  store float %spec.store.select1, ptr %i.kt, align 4
  %i.ku = load i64, ptr %0, align 8, !noundef !45
  %i.kv = add i64 %i.ku, %.sroa.030.074           ; 3 uses
  %i.kw = icmp ult i64 %.sroa.030.074, %i.ax
  br i1 %i.kw, label %bb.ci, label %.invoke296

bb.ci:                                            ; preds = %bb.ch
  %i.kx = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i, i64 %.sroa.030.074 ; 9 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.kx, ptr noundef nonnull align 8 dereferenceable(1040) %i.km, i64 1040, i1 false)
  %i.ky = icmp ult i64 %i.kv, %3
  br i1 %i.ky, label %.noexc108, label %.invoke

.noexc108:                                        ; preds = %bb.ci
  %i.kz = getelementptr inbounds nuw [1040 x i8], ptr %2, i64 %i.kv ; 8 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 1024 ; 2 uses
  %i.lb = load i64, ptr %i.la, align 8, !alias.scope !38018, !noundef !45
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kz, i64 1024 ; 2 uses
  %i.ld = load i64, ptr %i.lc, align 8, !alias.scope !38019, !noundef !45
  %i.le = add i64 %i.ld, %i.lb
  store i64 %i.le, ptr %i.la, align 8, !alias.scope !38020
  %bound0334 = icmp ult ptr %.sroa.10.0.i.i.i, %i.lc
  %bound1335 = icmp ult ptr %i.kz, %scevgep333
  %found.conflict336 = and i1 %bound0334, %bound1335
  br i1 %found.conflict336, label %scalar.ph337, label %vector.body339

vector.body339:                                   ; preds = %.noexc108, %vector.body339
  %index340 = phi i64 [ %index.next345.1, %vector.body339 ], [ 0, %.noexc108 ] ; 4 uses
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %index340 ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 16 ; 2 uses
  %wide.load341 = load <4 x i32>, ptr %i.lf, align 4, !alias.scope !38021, !noalias !38022
  %wide.load342 = load <4 x i32>, ptr %i.lg, align 4, !alias.scope !38021, !noalias !38022
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %index340 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %wide.load343 = load <4 x i32>, ptr %i.lh, align 8, !alias.scope !38022
  %wide.load344 = load <4 x i32>, ptr %i.li, align 8, !alias.scope !38022
  %i.lj = add <4 x i32> %wide.load343, %wide.load341
  %i.lk = add <4 x i32> %wide.load344, %wide.load342
  store <4 x i32> %i.lj, ptr %i.lf, align 4, !alias.scope !38021, !noalias !38022
  store <4 x i32> %i.lk, ptr %i.lg, align 4, !alias.scope !38021, !noalias !38022
  %index.next345 = or disjoint i64 %index340, 8   ; 2 uses
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %index.next345 ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 16 ; 2 uses
  %wide.load341.1 = load <4 x i32>, ptr %i.ll, align 4, !alias.scope !38021, !noalias !38022
  %wide.load342.1 = load <4 x i32>, ptr %i.lm, align 4, !alias.scope !38021, !noalias !38022
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %index.next345 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  %wide.load343.1 = load <4 x i32>, ptr %i.ln, align 8, !alias.scope !38022
  %wide.load344.1 = load <4 x i32>, ptr %i.lo, align 8, !alias.scope !38022
  %i.lp = add <4 x i32> %wide.load343.1, %wide.load341.1
  %i.lq = add <4 x i32> %wide.load344.1, %wide.load342.1
  store <4 x i32> %i.lp, ptr %i.ll, align 4, !alias.scope !38021, !noalias !38022
  store <4 x i32> %i.lq, ptr %i.lm, align 4, !alias.scope !38021, !noalias !38022
  %index.next345.1 = add nuw nsw i64 %index340, 16 ; 2 uses
  %i.lr = icmp eq i64 %index.next345.1, 256
  br i1 %i.lr, label %middle.block346, label %vector.body339, !llvm.loop !38002

scalar.ph337:                                     ; preds = %.noexc108, %scalar.ph337
  %.sroa.01.0.i72 = phi i64 [ %i.mk, %scalar.ph337 ], [ 0, %.noexc108 ] ; 6 uses
  %i.ls = or disjoint i64 %.sroa.01.0.i72, 1      ; 2 uses
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %.sroa.01.0.i72 ; 2 uses
  %i.lu = load i32, ptr %i.lt, align 4, !noundef !45
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %.sroa.01.0.i72
  %i.lw = load i32, ptr %i.lv, align 8, !noundef !45
  %i.lx = add i32 %i.lw, %i.lu
  store i32 %i.lx, ptr %i.lt, align 4
  %i.ly = or disjoint i64 %.sroa.01.0.i72, 2      ; 2 uses
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %i.ls ; 2 uses
  %i.ma = load i32, ptr %i.lz, align 4, !noundef !45
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %i.ls
  %i.mc = load i32, ptr %i.mb, align 4, !noundef !45
  %i.md = add i32 %i.mc, %i.ma
  store i32 %i.md, ptr %i.lz, align 4
  %i.me = or disjoint i64 %.sroa.01.0.i72, 3      ; 2 uses
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %i.ly ; 2 uses
  %i.mg = load i32, ptr %i.mf, align 4, !noundef !45
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %i.ly
  %i.mi = load i32, ptr %i.mh, align 8, !noundef !45
  %i.mj = add i32 %i.mi, %i.mg
  store i32 %i.mj, ptr %i.mf, align 4
  %i.mk = add nuw nsw i64 %.sroa.01.0.i72, 4      ; 2 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %i.me ; 2 uses
  %i.mm = load i32, ptr %i.ml, align 4, !noundef !45
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %i.me
  %i.mo = load i32, ptr %i.mn, align 4, !noundef !45
  %i.mp = add i32 %i.mo, %i.mm
  store i32 %i.mp, ptr %i.ml, align 4
  %exitcond.not.3 = icmp eq i64 %i.mk, 256
  br i1 %exitcond.not.3, label %middle.block346, label %scalar.ph337, !llvm.loop !38003

middle.block346:                                  ; preds = %vector.body339, %scalar.ph337
  %i.mq = invoke { float, i64 } @_ZN6brotli3enc8bit_cost15shannon_entropy17hf421171ae783c7a0E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.kx, i64 noundef 256, i64 noundef %i.bs)
          to label %bb.cj unwind label %.thread.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cj:                                            ; preds = %middle.block346
  %i.mr = extractvalue { float, i64 } %i.mq, 0    ; 2 uses
  %i.ms = extractvalue { float, i64 } %i.mq, 1
  %i.mt = uitofp i64 %i.ms to float               ; 2 uses
  %i.mu = fcmp olt float %i.mr, %i.mt
  %spec.store.select2 = select i1 %i.mu, float %i.mt, float %i.mr ; 2 uses
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.030.074
  store float %spec.store.select2, ptr %i.mv, align 4
  %i.mw = fsub float %spec.store.select2, %spec.store.select1
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %.sroa.030.074
  %i.my = load float, ptr %i.mx, align 4, !noundef !45
  %i.mz = fsub float %i.mw, %i.my
  %i.na = fadd float %.sroa.0.0, %i.mz            ; 2 uses
  %i.nb = add i64 %i.d, %.sroa.030.074            ; 7 uses
  %i.nc = load i64, ptr %i.bu, align 8, !noundef !45
  %i.nd = add i64 %i.nc, %.sroa.030.074           ; 3 uses
  %i.ne = icmp ult i64 %i.nb, %i.ax
  br i1 %i.ne, label %bb.ck, label %.invoke296

bb.ck:                                            ; preds = %bb.cj
  %i.nf = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i, i64 %i.nb ; 9 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.nf, ptr noundef nonnull align 8 dereferenceable(1040) %i.km, i64 1040, i1 false)
  %i.ng = icmp ult i64 %i.nd, %3
  br i1 %i.ng, label %.noexc108.1, label %.invoke

.noexc108.1:                                      ; preds = %bb.ck
  %i.nh = getelementptr inbounds nuw [1040 x i8], ptr %2, i64 %i.nd ; 8 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nf, i64 1024 ; 2 uses
  %i.nj = load i64, ptr %i.ni, align 8, !alias.scope !38018, !noundef !45
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nh, i64 1024 ; 2 uses
  %i.nl = load i64, ptr %i.nk, align 8, !alias.scope !38019, !noundef !45
  %i.nm = add i64 %i.nl, %i.nj
  store i64 %i.nm, ptr %i.ni, align 8, !alias.scope !38020
  %bound0 = icmp ult ptr %scevgep328, %i.nk
  %bound1 = icmp ult ptr %i.nh, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.noexc108.1, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %.noexc108.1 ] ; 4 uses
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %index ; 3 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.nn, align 4, !alias.scope !38023, !noalias !38024
  %wide.load329 = load <4 x i32>, ptr %i.no, align 4, !alias.scope !38023, !noalias !38024
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %index ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 16
  %wide.load330 = load <4 x i32>, ptr %i.np, align 8, !alias.scope !38024
  %wide.load331 = load <4 x i32>, ptr %i.nq, align 8, !alias.scope !38024
  %i.nr = add <4 x i32> %wide.load330, %wide.load
  %i.ns = add <4 x i32> %wide.load331, %wide.load329
  store <4 x i32> %i.nr, ptr %i.nn, align 4, !alias.scope !38023, !noalias !38024
  store <4 x i32> %i.ns, ptr %i.no, align 4, !alias.scope !38023, !noalias !38024
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %index.next ; 3 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 16 ; 2 uses
  %wide.load.1 = load <4 x i32>, ptr %i.nt, align 4, !alias.scope !38023, !noalias !38024
  %wide.load329.1 = load <4 x i32>, ptr %i.nu, align 4, !alias.scope !38023, !noalias !38024
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %index.next ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  %wide.load330.1 = load <4 x i32>, ptr %i.nv, align 8, !alias.scope !38024
  %wide.load331.1 = load <4 x i32>, ptr %i.nw, align 8, !alias.scope !38024
  %i.nx = add <4 x i32> %wide.load330.1, %wide.load.1
  %i.ny = add <4 x i32> %wide.load331.1, %wide.load329.1
  store <4 x i32> %i.nx, ptr %i.nt, align 4, !alias.scope !38023, !noalias !38024
  store <4 x i32> %i.ny, ptr %i.nu, align 4, !alias.scope !38023, !noalias !38024
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.nz = icmp eq i64 %index.next.1, 256
  br i1 %i.nz, label %middle.block, label %vector.body, !llvm.loop !38007

scalar.ph:                                        ; preds = %.noexc108.1, %scalar.ph
  %.sroa.01.0.i72.1 = phi i64 [ %i.os, %scalar.ph ], [ 0, %.noexc108.1 ] ; 6 uses
  %i.oa = or disjoint i64 %.sroa.01.0.i72.1, 1    ; 2 uses
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %.sroa.01.0.i72.1 ; 2 uses
  %i.oc = load i32, ptr %i.ob, align 4, !noundef !45
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %.sroa.01.0.i72.1
  %i.oe = load i32, ptr %i.od, align 8, !noundef !45
  %i.of = add i32 %i.oe, %i.oc
  store i32 %i.of, ptr %i.ob, align 4
  %i.og = or disjoint i64 %.sroa.01.0.i72.1, 2    ; 2 uses
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.oa ; 2 uses
  %i.oi = load i32, ptr %i.oh, align 4, !noundef !45
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %i.oa
  %i.ok = load i32, ptr %i.oj, align 4, !noundef !45
  %i.ol = add i32 %i.ok, %i.oi
  store i32 %i.ol, ptr %i.oh, align 4
  %i.om = or disjoint i64 %.sroa.01.0.i72.1, 3    ; 2 uses
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.og ; 2 uses
  %i.oo = load i32, ptr %i.on, align 4, !noundef !45
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %i.og
  %i.oq = load i32, ptr %i.op, align 8, !noundef !45
  %i.or = add i32 %i.oq, %i.oo
  store i32 %i.or, ptr %i.on, align 4
  %i.os = add nuw nsw i64 %.sroa.01.0.i72.1, 4    ; 2 uses
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.om ; 2 uses
  %i.ou = load i32, ptr %i.ot, align 4, !noundef !45
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %i.om
  %i.ow = load i32, ptr %i.ov, align 4, !noundef !45
  %i.ox = add i32 %i.ow, %i.ou
  store i32 %i.ox, ptr %i.ot, align 4
  %exitcond.1.not.3 = icmp eq i64 %i.os, 256
  br i1 %exitcond.1.not.3, label %middle.block, label %scalar.ph, !llvm.loop !38008

middle.block:                                     ; preds = %vector.body, %scalar.ph
  %i.oy = invoke { float, i64 } @_ZN6brotli3enc8bit_cost15shannon_entropy17hf421171ae783c7a0E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.nf, i64 noundef 256, i64 noundef %i.bs)
          to label %bb.cl unwind label %.thread.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cl:                                            ; preds = %middle.block
  %i.oz = icmp ult i64 %i.nb, 26
  br i1 %i.oz, label %.loopexit, label %.invoke296

.loopexit:                                        ; preds = %bb.cl
  %i.pa = extractvalue { float, i64 } %i.oy, 0    ; 2 uses
  %i.pb = extractvalue { float, i64 } %i.oy, 1
  %i.pc = uitofp i64 %i.pb to float               ; 2 uses
  %i.pd = fcmp olt float %i.pa, %i.pc
  %spec.store.select2.1 = select i1 %i.pd, float %i.pc, float %i.pa ; 2 uses
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.nb
  store float %spec.store.select2.1, ptr %i.pe, align 4
  %i.pf = fsub float %spec.store.select2.1, %spec.store.select1
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.nb
  %i.ph = load float, ptr %i.pg, align 4, !noundef !45
  %i.pi = fsub float %i.pf, %i.ph
  %i.pj = fadd float %.sroa.7.0, %i.pi            ; 2 uses
  %i.pk = icmp ult i64 %.sroa.030.175, %i.d       ; 2 uses
  %i.pl = zext i1 %i.pk to i64
  %.sroa.030.1 = add nuw i64 %.sroa.030.175, %i.pl
  br i1 %i.pk, label %bb.z, label %._crit_edge

bb.cm:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i", %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %lpad.phi9 = phi { ptr, i32 } [ %lpad.phi8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i" ], [ %lpad.loopexit.split-lp371, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %lpad.phi9

.thread.loopexit.split-lp.loopexit.split-lp:      ; preds = %middle.block, %middle.block346, %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cf, %.invoke298, %.invoke296
  %lpad.loopexit.split-lp371 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.not10, label %bb.cm, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i": ; preds = %.thread.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %lpad.phi8 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.thread.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp371, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.10.0.i.i.i) #38
  br label %bb.cm
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6brotli3enc9metablock34BrotliBuildMetaBlockGreedyInternal17h0916bdb0a16a6b62E(ptr noalias noundef nonnull readonly align 1 captures(none) %0, i64 noundef %1, i64 noundef range(i64 0, 4294967296) %2, i64 noundef range(i64 0, 4294967296) %3, i8 noundef %4, i8 noundef %5, i8 noundef range(i8 0, 4) %6, i64 noundef %7, ptr noalias noundef nonnull readonly align 4 captures(none) %8, i64 noundef %9, ptr noalias noundef nonnull readonly align 4 captures(none) %10, i64 noundef %11, i64 noundef %12, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(264) %13) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.sroa.0 = alloca [16 x i8], align 8     ; 5 uses
  %.sroa.5.sroa.9.sroa.6 = alloca [16 x i8], align 8 ; 5 uses
  %.sroa.5.sroa.12.sroa.0 = alloca [104 x i8], align 8 ; 4 uses
  %i.a = alloca [88 x i8], align 8                ; 12 uses
  %i.b = alloca [88 x i8], align 8                ; 12 uses
  %i.c = alloca [208 x i8], align 8               ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %12, 0                      ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = add i64 %12, -1
  %.not285.not = icmp ugt i64 %11, %i.d
  br i1 %.not285.not, label %.lr.ph.preheader548, label %bb.cl

.lr.ph.preheader548:                              ; preds = %.lr.ph.preheader
  %xtraiter = and i64 %12, 3                      ; 3 uses
  %i.e = icmp ult i64 %12, 4
  br i1 %i.e, label %.lr.ph.epil.preheader, label %.lr.ph.preheader548.new

.lr.ph.preheader548.new:                          ; preds = %.lr.ph.preheader548
  %unroll_iter = and i64 %12, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader548.new
  %i.f = phi i64 [ 1, %.lr.ph.preheader548.new ], [ %i.z, %.lr.ph ] ; 5 uses
  %.sroa.08.0119 = phi i64 [ 0, %.lr.ph.preheader548.new ], [ %i.y, %.lr.ph ]
  %.sroa.019.0118 = phi i64 [ 0, %.lr.ph.preheader548.new ], [ %i.t, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader548.new ], [ %niter.next.3, %.lr.ph ]
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %10, i64 %.sroa.019.0118
  %i.h = load i32, ptr %i.g, align 4, !noundef !45
  %i.i = zext i32 %i.h to i64
  %i.j = add i64 %.sroa.08.0119, %i.i
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %10, i64 %i.f
  %i.l = load i32, ptr %i.k, align 4, !noundef !45
  %i.m = zext i32 %i.l to i64
  %i.n = add i64 %i.j, %i.m
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %10, i64 %i.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i32, ptr %i.p, align 4, !noundef !45
  %i.r = zext i32 %i.q to i64
  %i.s = add i64 %i.n, %i.r
  %i.t = add nuw i64 %i.f, 3                      ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %10, i64 %i.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load i32, ptr %i.v, align 4, !noundef !45
  %i.x = zext i32 %i.w to i64
  %i.y = add i64 %i.s, %i.x                       ; 3 uses
  %i.z = add nuw i64 %i.f, 4                      ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader548
  %.epil.init = phi i64 [ 1, %.lr.ph.preheader548 ], [ %i.z, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.08.0119.epil.init = phi i64 [ 0, %.lr.ph.preheader548 ], [ %i.y, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.019.0118.epil.init = phi i64 [ 0, %.lr.ph.preheader548 ], [ %i.t, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod551 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod551)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %i.aa = phi i64 [ %i.af, %.lr.ph.epil ], [ %.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.sroa.08.0119.epil = phi i64 [ %i.ae, %.lr.ph.epil ], [ %.sroa.08.0119.epil.init, %.lr.ph.epil.preheader ]
  %.sroa.019.0118.epil = phi i64 [ %i.aa, %.lr.ph.epil ], [ %.sroa.019.0118.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %10, i64 %.sroa.019.0118.epil
  %i.ac = load i32, ptr %i.ab, align 4, !noundef !45
  %i.ad = zext i32 %i.ac to i64
  %i.ae = add i64 %.sroa.08.0119.epil, %i.ad      ; 2 uses
  %i.af = add i64 %i.aa, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %.lr.ph.epil, !llvm.loop !38025

._crit_edge.loopexit:                             ; preds = %.lr.ph.epil, %._crit_edge.loopexit.unr-lcssa
  %.lcssa549 = phi i64 [ %i.y, %._crit_edge.loopexit.unr-lcssa ], [ %i.ae, %.lr.ph.epil ]
  %i.ag = lshr i64 %.lcssa549, 9
end_hunk_1
