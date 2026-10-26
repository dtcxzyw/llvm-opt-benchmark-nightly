Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch-0ef5570b62e7676c.meilisearch.614e4e7626a6e7a0-cgu.0?download=true
inline.NumInlined: 17146
inline.NumDeleted: 6832
loop-unroll.NumCompletelyUnrolled: 149
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 284
begin_hunk_0_@_ZN6brotli3enc9metablock31ContextBlockSplitterFinishBlock17h66fa7f7da5e00ab8E:bb.a
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
  %i.bv = mul i64 %i.d, 1040                      ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.10.0.i.i.i, i64 %i.bv
  %i.bw = getelementptr i8, ptr %.sroa.10.0.i.i.i, i64 %i.ay
  %scevgep328 = getelementptr i8, ptr %i.bw, i64 -16
  %i.bx = getelementptr i8, ptr %.sroa.10.0.i.i.i, i64 %i.bv
  %scevgep333 = getelementptr i8, ptr %i.bx, i64 -16
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph, %.loopexit
  %.sroa.0.0 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.nc, %.loopexit ]
  %.sroa.7.0 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.pl, %.loopexit ]
  %.sroa.030.175 = phi i64 [ 1, %.lr.ph ], [ %.sroa.030.1, %.loopexit ] ; 3 uses
  %.sroa.030.074 = phi i64 [ 0, %.lr.ph ], [ %.sroa.030.175, %.loopexit ] ; 12 uses
  %i.by = add nuw i64 %i.bq, %.sroa.030.074       ; 3 uses
  %i.bz = icmp ult i64 %i.by, %3
  br i1 %i.bz, label %bb.cf, label %.invoke296

._crit_edge:                                      ; preds = %.loopexit, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h88530c57ef19323aE.exit"
  %.sroa.0.1 = phi float [ 0.000000e+00, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h88530c57ef19323aE.exit" ], [ %i.nc, %.loopexit ] ; 2 uses
  %.sroa.7.1 = phi float [ 0.000000e+00, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h88530c57ef19323aE.exit" ], [ %i.pl, %.loopexit ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !noundef !45 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cd = load i64, ptr %i.cc, align 8, !noundef !45
  %i.ce = icmp ult i64 %i.cb, %i.cd
  br i1 %i.ce, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %._crit_edge
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.cg = load float, ptr %i.cf, align 8, !noundef !45 ; 2 uses
  %i.ch = fcmp ogt float %.sroa.0.1, %i.cg
  %i.ci = fcmp ogt float %.sroa.7.1, %i.cg
  %or.cond = select i1 %i.ch, i1 %i.ci, i1 false
  br i1 %or.cond, label %bb.aw, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge
  %i.cj = fadd float %.sroa.0.1, -2.000000e+01
  %i.ck = fcmp olt float %.sroa.7.1, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val116 = load i64, ptr %i.cl, align 8, !noundef !45 ; 4 uses
  %i.cm = load i64, ptr %i.k, align 8, !noundef !45 ; 9 uses
  br i1 %i.ck, label %bb.am, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cn = add i64 %i.cm, -1                       ; 3 uses
  %i.co = icmp ult i64 %i.cn, %.val116
  br i1 %i.co, label %bb.ad, label %.invoke296

bb.ad:                                            ; preds = %bb.ac
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val117 = load ptr, ptr %i.cp, align 8, !nonnull !45, !align !70, !noundef !45
  %i.cq = load i64, ptr %i.e, align 8, !noundef !45
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %.val117, i64 %i.cn ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !noundef !45
  %i.cu = add i32 %i.ct, %i.cr
  store i32 %i.cu, ptr %i.cs, align 4
  br i1 %.not96, label %._crit_edge81, label %.lr.ph80

.lr.ph80:                                         ; preds = %bb.ad
  %i.cv = load i64, ptr %0, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.cx = icmp eq i64 %i.cb, 1
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cz = load i64, ptr %i.cy, align 8
  br label %bb.af

.invoke296:                                       ; preds = %bb.cl, %bb.ch, %bb.cj, %bb.cg, %bb.z, %bb.af, %bb.ar, %.lr.ph90, %bb.bf, %bb.bh, %bb.bj, %bb.bl, %bb.bn, %bb.bp, %bb.br, %bb.bt, %bb.bv, %bb.bx, %bb.bz, %bb.cb, %bb.cd, %bb.ax, %bb.aw, %bb.ao, %bb.an, %bb.am, %bb.ac, %bb.ce
  %i.da = phi i64 [ %i.js, %bb.bx ], [ %i.cn, %bb.ac ], [ %.sroa.036.077, %bb.af ], [ %i.cm, %bb.am ], [ %i.em, %bb.an ], [ %i.cm, %bb.ao ], [ %i.jy, %bb.bz ], [ %i.fv, %bb.aw ], [ %i.fv, %bb.ax ], [ 13, %bb.ce ], [ %i.kk, %bb.cd ], [ %i.ke, %bb.cb ], [ %i.fb, %bb.ar ], [ %i.d, %.lr.ph90 ], [ %i.gl, %bb.bf ], [ %i.hw, %bb.bh ], [ %i.ic, %bb.bj ], [ %i.ii, %bb.bl ], [ %i.io, %bb.bn ], [ %i.iu, %bb.bp ], [ %i.ja, %bb.br ], [ %i.jg, %bb.bt ], [ %i.jm, %bb.bv ], [ %i.nd, %bb.cl ], [ %i.by, %bb.z ], [ %.sroa.030.074, %bb.cg ], [ %.sroa.030.074, %bb.ch ], [ %i.nd, %bb.cj ]
  %i.db = phi i64 [ 26, %bb.bx ], [ %.val116, %bb.ac ], [ %i.ax, %bb.af ], [ %.val116, %bb.am ], [ %.val124, %bb.an ], [ %.val124, %bb.ao ], [ 26, %bb.bz ], [ %.val120, %bb.aw ], [ %.val110, %bb.ax ], [ 13, %bb.ce ], [ 26, %bb.cd ], [ 26, %bb.cb ], [ %i.ax, %bb.ar ], [ 26, %.lr.ph90 ], [ 26, %bb.bf ], [ 26, %bb.bh ], [ 26, %bb.bj ], [ 26, %bb.bl ], [ 26, %bb.bn ], [ 26, %bb.bp ], [ 26, %bb.br ], [ 26, %bb.bt ], [ 26, %bb.bv ], [ 26, %bb.cl ], [ %3, %bb.z ], [ 13, %bb.cg ], [ %i.ax, %bb.ch ], [ %i.ax, %bb.cj ]
  %i.dc = phi ptr [ @2004, %bb.bx ], [ @1987, %bb.ac ], [ @1988, %bb.af ], [ @1993, %bb.am ], [ @1994, %bb.an ], [ @1995, %bb.ao ], [ @2004, %bb.bz ], [ @2001, %bb.aw ], [ @2002, %bb.ax ], [ @2005, %bb.ce ], [ @2004, %bb.cd ], [ @2004, %bb.cb ], [ @1996, %bb.ar ], [ @2004, %.lr.ph90 ], [ @2004, %bb.bf ], [ @2004, %bb.bh ], [ @2004, %bb.bj ], [ @2004, %bb.bl ], [ @2004, %bb.bn ], [ @2004, %bb.bp ], [ @2004, %bb.br ], [ @2004, %bb.bt ], [ @2004, %bb.bv ], [ @2010, %bb.cl ], [ @2006, %bb.z ], [ @2007, %bb.cg ], [ @2008, %bb.ch ], [ @2008, %bb.cj ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.da, i64 noundef %i.db, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dc) #43
          to label %.cont297 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont297:                                         ; preds = %.invoke296
  unreachable

._crit_edge81:                                    ; preds = %_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit104, %bb.ad
  store i64 0, ptr %i.e, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !noundef !45
  %i.df = add i64 %i.de, 1                        ; 2 uses
  store i64 %i.df, ptr %i.dd, align 8
  %i.dg = icmp ugt i64 %i.df, 1
  br i1 %i.dg, label %bb.ae, label %bb.aq

bb.ae:                                            ; preds = %._crit_edge81
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !noundef !45
  %i.dj = load i64, ptr %i.g, align 8, !noundef !45
  %i.dk = add i64 %i.dj, %i.di
  store i64 %i.dk, ptr %i.dh, align 8
  br label %bb.aq

bb.af:                                            ; preds = %.lr.ph80, %_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit104
  %.sroa.036.178 = phi i64 [ 1, %.lr.ph80 ], [ %.sroa.036.1, %_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit104 ] ; 3 uses
  %.sroa.036.077 = phi i64 [ 0, %.lr.ph80 ], [ %.sroa.036.178, %_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit104 ] ; 10 uses
  %i.dl = icmp ult i64 %.sroa.036.077, %i.ax
  br i1 %i.dl, label %bb.ag, label %.invoke296

bb.ag:                                            ; preds = %bb.af
  %i.dm = add nuw i64 %i.cv, %.sroa.036.077       ; 3 uses
  %i.dn = icmp ult i64 %i.dm, %3
  br i1 %i.dn, label %bb.ah, label %.invoke

bb.ah:                                            ; preds = %bb.ag
  %i.do = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i, i64 %.sroa.036.077
  %i.dp = getelementptr inbounds nuw [1040 x i8], ptr %2, i64 %i.dm
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.dp, ptr noundef nonnull align 8 dereferenceable(1040) %i.do, i64 1040, i1 false)
  %i.dq = icmp samesign ult i64 %.sroa.036.077, 26
  br i1 %i.dq, label %bb.ai, label %.invoke

.invoke:                                          ; preds = %bb.ci, %bb.ck, %bb.al, %bb.aj, %bb.ah, %bb.ag, %bb.av, %bb.au, %bb.at, %bb.as
  %i.dr = phi i64 [ %i.dm, %bb.ag ], [ %i.fo, %bb.av ], [ %i.fd, %bb.as ], [ %.sroa.034.083, %bb.at ], [ %i.fb, %bb.au ], [ %i.ea, %bb.al ], [ %.sroa.036.077, %bb.ah ], [ %i.dx, %bb.aj ], [ %i.kx, %bb.ci ], [ %i.nf, %bb.ck ]
  %i.ds = phi i64 [ %3, %bb.ag ], [ %3, %bb.av ], [ %3, %bb.as ], [ 26, %bb.at ], [ 26, %bb.au ], [ %3, %bb.al ], [ 26, %bb.ah ], [ 26, %bb.aj ], [ %3, %bb.ck ], [ %3, %bb.ci ]
  %i.dt = phi ptr [ @1989, %bb.ag ], [ @2000, %bb.av ], [ @1997, %bb.as ], [ @1998, %bb.at ], [ @1999, %bb.au ], [ @1992, %bb.al ], [ @1990, %bb.ah ], [ @1991, %bb.aj ], [ @2009, %bb.ck ], [ @2009, %bb.ci ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.dr, i64 noundef %i.ds, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dt) #43
          to label %.cont.a unwind label %.thread.loopexit.split-lp.loopexit.split-lp

.cont.a:                                          ; preds = %.invoke
  unreachable

bb.ai:                                            ; preds = %bb.ah
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.036.077
  %i.dv = load float, ptr %i.du, align 4, !noundef !45 ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %.sroa.036.077
  store float %i.dv, ptr %i.dw, align 4
  br i1 %i.cx, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.dx = add i64 %.sroa.036.077, %i.d            ; 3 uses
  %i.dy = icmp ult i64 %i.dx, 26
  br i1 %i.dy, label %bb.ak, label %.invoke

bb.ak:                                            ; preds = %bb.aj
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.dx
  store float %i.dv, ptr %i.dz, align 4
  br label %bb.al

bb.al:                                            ; preds = %bb.ai, %bb.ak
  %i.ea = add nuw i64 %i.cz, %.sroa.036.077       ; 3 uses
  %i.eb = icmp ult i64 %i.ea, %3
  br i1 %i.eb, label %_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit104, label %.invoke

_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit104: ; preds = %bb.al
  %i.ec = getelementptr inbounds nuw [1040 x i8], ptr %2, i64 %i.ea ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ec, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %i.ed, align 8, !alias.scope !38014
  %i.ee = icmp ult i64 %.sroa.036.178, %i.d       ; 2 uses
  %i.ef = zext i1 %i.ee to i64
  %.sroa.036.1 = add nuw i64 %.sroa.036.178, %i.ef
  br i1 %i.ee, label %bb.af, label %._crit_edge81

bb.am:                                            ; preds = %bb.ab
  %i.eg = icmp ult i64 %i.cm, %.val116
  br i1 %i.eg, label %bb.an, label %.invoke296

bb.an:                                            ; preds = %bb.am
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val115 = load ptr, ptr %i.eh, align 8, !nonnull !45, !align !70, !noundef !45
  %i.ei = load i64, ptr %i.e, align 8, !noundef !45
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.val115, i64 %i.cm
  %i.ek = trunc i64 %i.ei to i32
  store i32 %i.ek, ptr %i.ej, align 4
  %.val123 = load ptr, ptr %1, align 8, !nonnull !45, !align !55, !noundef !45 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val124 = load i64, ptr %i.el, align 8, !noundef !45 ; 4 uses
  %i.em = add i64 %i.cm, -2                       ; 3 uses
  %i.en = icmp ult i64 %i.em, %.val124
  br i1 %i.en, label %bb.ao, label %.invoke296

bb.ao:                                            ; preds = %bb.an
  %i.eo = icmp ult i64 %i.cm, %.val124
  br i1 %i.eo, label %bb.ap, label %.invoke296

bb.ap:                                            ; preds = %bb.ao
  %i.ep = getelementptr inbounds nuw i8, ptr %.val123, i64 %i.em
  %i.eq = load i8, ptr %i.ep, align 1, !noundef !45
  %i.er = getelementptr inbounds nuw i8, ptr %.val123, i64 %i.cm
  store i8 %i.eq, ptr %i.er, align 1
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8
  %i.et = load i64, ptr %i.es, align 8            ; 2 uses
  store i64 %i.et, ptr %0, align 8
  store i64 %.sroa.0.0.copyload.i, ptr %i.es, align 8
  br i1 %.not96, label %._crit_edge87, label %.lr.ph86

.lr.ph86:                                         ; preds = %bb.ap
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ew = load i64, ptr %i.ev, align 8
  br label %bb.ar

._crit_edge87:                                    ; preds = %_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit, %bb.ap
  %i.ex = add i64 %i.cm, 1
  store i64 %i.ex, ptr %i.k, align 8
  store i64 0, ptr %i.e, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 0, ptr %i.ey, align 8
  %i.ez = load i64, ptr %i.g, align 8, !noundef !45
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.ez, ptr %i.fa, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge87, %._crit_edge81, %bb.ae, %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit142
  br i1 %.not10, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h14c94f2a1b156012E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i": ; preds = %bb.aq
  tail call void @mi_free(ptr noundef nonnull align 8 %.sroa.10.0.i.i.i) #38
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h14c94f2a1b156012E.exit"

bb.ar:                                            ; preds = %.lr.ph86, %_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit
end_hunk_0
begin_hunk_1_@_ZN6brotli3enc9metablock31ContextBlockSplitterFinishBlock17h66fa7f7da5e00ab8E:bb.a
  %exitcond173.8.not = icmp eq i64 %i.gl, 10
  br i1 %exitcond173.8.not, label %._crit_edge91, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jm = add nuw nsw i64 %i.d, 9                 ; 2 uses
  %exitcond171.9.not = icmp eq i64 %i.gk, 10
  br i1 %exitcond171.9.not, label %.invoke296, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.jo = load float, ptr %i.jn, align 4, !noundef !45
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.jm
  store float %i.jo, ptr %i.jp, align 4
  %i.jq = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.jr = load float, ptr %i.jq, align 4, !noundef !45
  store float %i.jr, ptr %i.jn, align 4
  %exitcond173.9.not = icmp eq i64 %i.gl, 11
  br i1 %exitcond173.9.not, label %._crit_edge91, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.js = add nuw nsw i64 %i.d, 10                ; 2 uses
  %exitcond171.10.not = icmp eq i64 %i.gk, 11
  br i1 %exitcond171.10.not, label %.invoke296, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ju = load float, ptr %i.jt, align 8, !noundef !45
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.js
  store float %i.ju, ptr %i.jv, align 4
  %i.jw = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.jx = load float, ptr %i.jw, align 4, !noundef !45
  store float %i.jx, ptr %i.jt, align 8
  %exitcond173.10.not = icmp eq i64 %i.gl, 12
  br i1 %exitcond173.10.not, label %._crit_edge91, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.jy = add nuw nsw i64 %i.d, 11                ; 2 uses
  %exitcond171.11.not = icmp eq i64 %i.gk, 12
  br i1 %exitcond171.11.not, label %.invoke296, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.ka = load float, ptr %i.jz, align 4, !noundef !45
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.jy
  store float %i.ka, ptr %i.kb, align 4
  %i.kc = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.kd = load float, ptr %i.kc, align 4, !noundef !45
  store float %i.kd, ptr %i.jz, align 4
  %exitcond173.11.not = icmp eq i64 %i.gl, 13
  br i1 %exitcond173.11.not, label %._crit_edge91, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ke = add nuw nsw i64 %i.d, 12                ; 2 uses
  %exitcond171.12.not = icmp eq i64 %i.gk, 13
  br i1 %exitcond171.12.not, label %.invoke296, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.kg = load float, ptr %i.kf, align 8, !noundef !45
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.ke
  store float %i.kg, ptr %i.kh, align 4
  %i.ki = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.kj = load float, ptr %i.ki, align 4, !noundef !45
  store float %i.kj, ptr %i.kf, align 8
  %exitcond173.12.not = icmp eq i64 %i.gl, 14
  br i1 %exitcond173.12.not, label %._crit_edge91, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.kk = add nuw nsw i64 %i.d, 13                ; 2 uses
  %exitcond171.13.not = icmp eq i64 %i.gk, 14
  br i1 %exitcond171.13.not, label %.invoke296, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.km = load float, ptr %i.kl, align 4, !noundef !45
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.kk
  store float %i.km, ptr %i.kn, align 4
  br label %.invoke296

bb.cf:                                            ; preds = %bb.z
  %i.ko = getelementptr inbounds nuw [1040 x i8], ptr %2, i64 %i.by ; 3 uses
  %i.kp = invoke { float, i64 } @_ZN6brotli3enc8bit_cost15shannon_entropy17hf421171ae783c7a0E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.ko, i64 noundef 256, i64 noundef %i.bs)
          to label %bb.cg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cg:                                            ; preds = %bb.cf
  %i.kq = icmp samesign ult i64 %.sroa.030.074, 13
  br i1 %i.kq, label %bb.ch, label %.invoke296

bb.ch:                                            ; preds = %bb.cg
  %i.kr = extractvalue { float, i64 } %i.kp, 0    ; 2 uses
  %i.ks = extractvalue { float, i64 } %i.kp, 1
  %i.kt = uitofp i64 %i.ks to float               ; 2 uses
  %i.ku = fcmp olt float %i.kr, %i.kt
  %spec.store.select1 = select i1 %i.ku, float %i.kt, float %i.kr ; 3 uses
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.sroa.030.074
  store float %spec.store.select1, ptr %i.kv, align 4
  %i.kw = load i64, ptr %0, align 8, !noundef !45
  %i.kx = add i64 %i.kw, %.sroa.030.074           ; 3 uses
  %i.ky = icmp ult i64 %.sroa.030.074, %i.ax
  br i1 %i.ky, label %bb.ci, label %.invoke296

bb.ci:                                            ; preds = %bb.ch
  %i.kz = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i, i64 %.sroa.030.074 ; 9 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.kz, ptr noundef nonnull align 8 dereferenceable(1040) %i.ko, i64 1040, i1 false)
  %i.la = icmp ult i64 %i.kx, %3
  br i1 %i.la, label %.noexc108, label %.invoke

.noexc108:                                        ; preds = %bb.ci
  %i.lb = getelementptr inbounds nuw [1040 x i8], ptr %2, i64 %i.kx ; 8 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kz, i64 1024 ; 2 uses
  %i.ld = load i64, ptr %i.lc, align 8, !alias.scope !38018, !noundef !45
  %i.le = getelementptr inbounds nuw i8, ptr %i.lb, i64 1024 ; 2 uses
  %i.lf = load i64, ptr %i.le, align 8, !alias.scope !38019, !noundef !45
  %i.lg = add i64 %i.lf, %i.ld
  store i64 %i.lg, ptr %i.lc, align 8, !alias.scope !38020
  %bound0334 = icmp ult ptr %.sroa.10.0.i.i.i, %i.le
  %bound1335 = icmp ult ptr %i.lb, %scevgep333
  %found.conflict336 = and i1 %bound0334, %bound1335
  br i1 %found.conflict336, label %scalar.ph337, label %vector.body339

vector.body339:                                   ; preds = %.noexc108, %vector.body339
  %index340 = phi i64 [ %index.next345.1, %vector.body339 ], [ 0, %.noexc108 ] ; 4 uses
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %index340 ; 3 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 16 ; 2 uses
  %wide.load341 = load <4 x i32>, ptr %i.lh, align 4, !alias.scope !38021, !noalias !38022
  %wide.load342 = load <4 x i32>, ptr %i.li, align 4, !alias.scope !38021, !noalias !38022
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %index340 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  %wide.load343 = load <4 x i32>, ptr %i.lj, align 8, !alias.scope !38022
  %wide.load344 = load <4 x i32>, ptr %i.lk, align 8, !alias.scope !38022
  %i.ll = add <4 x i32> %wide.load343, %wide.load341
  %i.lm = add <4 x i32> %wide.load344, %wide.load342
  store <4 x i32> %i.ll, ptr %i.lh, align 4, !alias.scope !38021, !noalias !38022
  store <4 x i32> %i.lm, ptr %i.li, align 4, !alias.scope !38021, !noalias !38022
  %index.next345 = or disjoint i64 %index340, 8   ; 2 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %index.next345 ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 16 ; 2 uses
  %wide.load341.1 = load <4 x i32>, ptr %i.ln, align 4, !alias.scope !38021, !noalias !38022
  %wide.load342.1 = load <4 x i32>, ptr %i.lo, align 4, !alias.scope !38021, !noalias !38022
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %index.next345 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  %wide.load343.1 = load <4 x i32>, ptr %i.lp, align 8, !alias.scope !38022
  %wide.load344.1 = load <4 x i32>, ptr %i.lq, align 8, !alias.scope !38022
  %i.lr = add <4 x i32> %wide.load343.1, %wide.load341.1
  %i.ls = add <4 x i32> %wide.load344.1, %wide.load342.1
  store <4 x i32> %i.lr, ptr %i.ln, align 4, !alias.scope !38021, !noalias !38022
  store <4 x i32> %i.ls, ptr %i.lo, align 4, !alias.scope !38021, !noalias !38022
  %index.next345.1 = add nuw nsw i64 %index340, 16 ; 2 uses
  %i.lt = icmp eq i64 %index.next345.1, 256
  br i1 %i.lt, label %middle.block346, label %vector.body339, !llvm.loop !38002

scalar.ph337:                                     ; preds = %.noexc108, %scalar.ph337
  %.sroa.01.0.i72 = phi i64 [ %i.mm, %scalar.ph337 ], [ 0, %.noexc108 ] ; 6 uses
  %i.lu = or disjoint i64 %.sroa.01.0.i72, 1      ; 2 uses
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %.sroa.01.0.i72 ; 2 uses
  %i.lw = load i32, ptr %i.lv, align 4, !noundef !45
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %.sroa.01.0.i72
  %i.ly = load i32, ptr %i.lx, align 8, !noundef !45
  %i.lz = add i32 %i.ly, %i.lw
  store i32 %i.lz, ptr %i.lv, align 4
  %i.ma = or disjoint i64 %.sroa.01.0.i72, 2      ; 2 uses
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %i.lu ; 2 uses
  %i.mc = load i32, ptr %i.mb, align 4, !noundef !45
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %i.lu
  %i.me = load i32, ptr %i.md, align 4, !noundef !45
  %i.mf = add i32 %i.me, %i.mc
  store i32 %i.mf, ptr %i.mb, align 4
  %i.mg = or disjoint i64 %.sroa.01.0.i72, 3      ; 2 uses
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %i.ma ; 2 uses
  %i.mi = load i32, ptr %i.mh, align 4, !noundef !45
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %i.ma
  %i.mk = load i32, ptr %i.mj, align 8, !noundef !45
  %i.ml = add i32 %i.mk, %i.mi
  store i32 %i.ml, ptr %i.mh, align 4
  %i.mm = add nuw nsw i64 %.sroa.01.0.i72, 4      ; 2 uses
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %i.mg ; 2 uses
  %i.mo = load i32, ptr %i.mn, align 4, !noundef !45
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %i.mg
  %i.mq = load i32, ptr %i.mp, align 4, !noundef !45
  %i.mr = add i32 %i.mq, %i.mo
  store i32 %i.mr, ptr %i.mn, align 4
  %exitcond.not.3 = icmp eq i64 %i.mm, 256
  br i1 %exitcond.not.3, label %middle.block346, label %scalar.ph337, !llvm.loop !38003

middle.block346:                                  ; preds = %vector.body339, %scalar.ph337
  %i.ms = invoke { float, i64 } @_ZN6brotli3enc8bit_cost15shannon_entropy17hf421171ae783c7a0E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.kz, i64 noundef 256, i64 noundef %i.bs)
          to label %bb.cj unwind label %.thread.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cj:                                            ; preds = %middle.block346
  %i.mt = extractvalue { float, i64 } %i.ms, 0    ; 2 uses
  %i.mu = extractvalue { float, i64 } %i.ms, 1
  %i.mv = uitofp i64 %i.mu to float               ; 2 uses
  %i.mw = fcmp olt float %i.mt, %i.mv
  %spec.store.select2 = select i1 %i.mw, float %i.mv, float %i.mt ; 2 uses
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.030.074
  store float %spec.store.select2, ptr %i.mx, align 4
  %i.my = fsub float %spec.store.select2, %spec.store.select1
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %.sroa.030.074
  %i.na = load float, ptr %i.mz, align 4, !noundef !45
  %i.nb = fsub float %i.my, %i.na
  %i.nc = fadd float %.sroa.0.0, %i.nb            ; 2 uses
  %i.nd = add i64 %i.d, %.sroa.030.074            ; 7 uses
  %i.ne = load i64, ptr %i.bu, align 8, !noundef !45
  %i.nf = add i64 %i.ne, %.sroa.030.074           ; 3 uses
  %i.ng = icmp ult i64 %i.nd, %i.ax
  br i1 %i.ng, label %bb.ck, label %.invoke296

bb.ck:                                            ; preds = %bb.cj
  %i.nh = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i, i64 %i.nd ; 9 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.nh, ptr noundef nonnull align 8 dereferenceable(1040) %i.ko, i64 1040, i1 false)
  %i.ni = icmp ult i64 %i.nf, %3
  br i1 %i.ni, label %.noexc108.1, label %.invoke

.noexc108.1:                                      ; preds = %bb.ck
  %i.nj = getelementptr inbounds nuw [1040 x i8], ptr %2, i64 %i.nf ; 8 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nh, i64 1024 ; 2 uses
  %i.nl = load i64, ptr %i.nk, align 8, !alias.scope !38018, !noundef !45
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nj, i64 1024 ; 2 uses
  %i.nn = load i64, ptr %i.nm, align 8, !alias.scope !38019, !noundef !45
  %i.no = add i64 %i.nn, %i.nl
  store i64 %i.no, ptr %i.nk, align 8, !alias.scope !38020
  %bound0 = icmp ult ptr %scevgep, %i.nm
  %bound1 = icmp ult ptr %i.nj, %scevgep328
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.noexc108.1, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %.noexc108.1 ] ; 4 uses
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %index ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.np, align 4, !alias.scope !38023, !noalias !38024
  %wide.load329 = load <4 x i32>, ptr %i.nq, align 4, !alias.scope !38023, !noalias !38024
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %index ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %wide.load330 = load <4 x i32>, ptr %i.nr, align 8, !alias.scope !38024
  %wide.load331 = load <4 x i32>, ptr %i.ns, align 8, !alias.scope !38024
  %i.nt = add <4 x i32> %wide.load330, %wide.load
  %i.nu = add <4 x i32> %wide.load331, %wide.load329
  store <4 x i32> %i.nt, ptr %i.np, align 4, !alias.scope !38023, !noalias !38024
  store <4 x i32> %i.nu, ptr %i.nq, align 4, !alias.scope !38023, !noalias !38024
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %index.next ; 3 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 16 ; 2 uses
  %wide.load.1 = load <4 x i32>, ptr %i.nv, align 4, !alias.scope !38023, !noalias !38024
  %wide.load329.1 = load <4 x i32>, ptr %i.nw, align 4, !alias.scope !38023, !noalias !38024
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %index.next ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 16
  %wide.load330.1 = load <4 x i32>, ptr %i.nx, align 8, !alias.scope !38024
  %wide.load331.1 = load <4 x i32>, ptr %i.ny, align 8, !alias.scope !38024
  %i.nz = add <4 x i32> %wide.load330.1, %wide.load.1
  %i.oa = add <4 x i32> %wide.load331.1, %wide.load329.1
  store <4 x i32> %i.nz, ptr %i.nv, align 4, !alias.scope !38023, !noalias !38024
  store <4 x i32> %i.oa, ptr %i.nw, align 4, !alias.scope !38023, !noalias !38024
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.ob = icmp eq i64 %index.next.1, 256
  br i1 %i.ob, label %middle.block, label %vector.body, !llvm.loop !38007

scalar.ph:                                        ; preds = %.noexc108.1, %scalar.ph
  %.sroa.01.0.i72.1 = phi i64 [ %i.ou, %scalar.ph ], [ 0, %.noexc108.1 ] ; 6 uses
  %i.oc = or disjoint i64 %.sroa.01.0.i72.1, 1    ; 2 uses
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %.sroa.01.0.i72.1 ; 2 uses
  %i.oe = load i32, ptr %i.od, align 4, !noundef !45
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %.sroa.01.0.i72.1
  %i.og = load i32, ptr %i.of, align 8, !noundef !45
  %i.oh = add i32 %i.og, %i.oe
  store i32 %i.oh, ptr %i.od, align 4
  %i.oi = or disjoint i64 %.sroa.01.0.i72.1, 2    ; 2 uses
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %i.oc ; 2 uses
  %i.ok = load i32, ptr %i.oj, align 4, !noundef !45
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.oc
  %i.om = load i32, ptr %i.ol, align 4, !noundef !45
  %i.on = add i32 %i.om, %i.ok
  store i32 %i.on, ptr %i.oj, align 4
  %i.oo = or disjoint i64 %.sroa.01.0.i72.1, 3    ; 2 uses
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %i.oi ; 2 uses
  %i.oq = load i32, ptr %i.op, align 4, !noundef !45
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.oi
  %i.os = load i32, ptr %i.or, align 8, !noundef !45
  %i.ot = add i32 %i.os, %i.oq
  store i32 %i.ot, ptr %i.op, align 4
  %i.ou = add nuw nsw i64 %.sroa.01.0.i72.1, 4    ; 2 uses
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %i.oo ; 2 uses
  %i.ow = load i32, ptr %i.ov, align 4, !noundef !45
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.oo
  %i.oy = load i32, ptr %i.ox, align 4, !noundef !45
  %i.oz = add i32 %i.oy, %i.ow
  store i32 %i.oz, ptr %i.ov, align 4
  %exitcond.1.not.3 = icmp eq i64 %i.ou, 256
  br i1 %exitcond.1.not.3, label %middle.block, label %scalar.ph, !llvm.loop !38008

middle.block:                                     ; preds = %vector.body, %scalar.ph
  %i.pa = invoke { float, i64 } @_ZN6brotli3enc8bit_cost15shannon_entropy17hf421171ae783c7a0E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.nh, i64 noundef 256, i64 noundef %i.bs)
          to label %bb.cl unwind label %.thread.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cl:                                            ; preds = %middle.block
  %i.pb = icmp ult i64 %i.nd, 26
  br i1 %i.pb, label %.loopexit, label %.invoke296

.loopexit:                                        ; preds = %bb.cl
  %i.pc = extractvalue { float, i64 } %i.pa, 0    ; 2 uses
  %i.pd = extractvalue { float, i64 } %i.pa, 1
  %i.pe = uitofp i64 %i.pd to float               ; 2 uses
  %i.pf = fcmp olt float %i.pc, %i.pe
  %spec.store.select2.1 = select i1 %i.pf, float %i.pe, float %i.pc ; 2 uses
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.nd
  store float %spec.store.select2.1, ptr %i.pg, align 4
  %i.ph = fsub float %spec.store.select2.1, %spec.store.select1
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.nd
  %i.pj = load float, ptr %i.pi, align 4, !noundef !45
  %i.pk = fsub float %i.ph, %i.pj
  %i.pl = fadd float %.sroa.7.0, %i.pk            ; 2 uses
  %i.pm = icmp ult i64 %.sroa.030.175, %i.d       ; 2 uses
  %i.pn = zext i1 %i.pm to i64
  %.sroa.030.1 = add nuw i64 %.sroa.030.175, %i.pn
  br i1 %i.pm, label %bb.z, label %._crit_edge

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
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.08.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.ag, %._crit_edge.loopexit ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.9.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.12.sroa.0)
  %i.ah = icmp eq i64 %7, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 176 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 240 ; 2 uses
  %i.ak = add nuw nsw i64 %.sroa.08.0.lcssa, 1    ; 8 uses
  br i1 %i.ah, label %bb.b, label %bb.l

bb.b:                                             ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38207)
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.ak, i64 257) ; 5 uses
  %.val60.i = load ptr, ptr %13, align 8, !alias.scope !38205, !nonnull !45, !align !55, !noundef !45 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %.val61.i.a = load i64, ptr %i.al, align 8, !alias.scope !38205, !noundef !45 ; 4 uses
  %.not.i = icmp ugt i64 %.val61.i.a, %.sroa.08.0.lcssa
  br i1 %.not.i, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = icmp eq i64 %.val61.i.a, 0              ; 2 uses
  %spec.select.i = select i1 %i.am, i64 %i.ak, i64 %.val61.i.a
  br label %bb.d

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i", %.thread14.i, %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %.val44.i = load ptr, ptr %i.an, align 8, !alias.scope !38205, !nonnull !45, !align !70, !noundef !45 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %.val45.i.a = load i64, ptr %i.ao, align 8, !alias.scope !38205, !noundef !45 ; 4 uses
  %.not28.i.a = icmp ugt i64 %.val45.i.a, %.sroa.08.0.lcssa
  br i1 %.not28.i.a, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i", label %bb.f

bb.d:                                             ; preds = %bb.d, %bb.c
  %.sroa.06.1.i.a = phi i64 [ %spec.select.i, %bb.c ], [ %i.ap, %bb.d ] ; 6 uses
  %.not26.i.a = icmp ugt i64 %.sroa.06.1.i.a, %.sroa.08.0.lcssa
  %i.ap = shl nuw nsw i64 %.sroa.06.1.i.a, 1
  br i1 %.not26.i.a, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, label %bb.d

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.d
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !38208
  %i.aq = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %.sroa.06.1.i.a, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !38208 ; 4 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %.noexc.i, label %bb.e

.noexc.i:                                         ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %.sroa.06.1.i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !38209
  unreachable

bb.e:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  br i1 %i.am, label %.thread14.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i"

.thread14.i:                                      ; preds = %bb.e
  store ptr %i.aq, ptr %13, align 8, !alias.scope !38205
  store i64 %.sroa.06.1.i.a, ptr %i.al, align 8, !alias.scope !38205
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i": ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aq, ptr nonnull readonly align 1 %.val60.i, i64 %.val61.i.a, i1 false), !alias.scope !38210, !noalias !38209
  store ptr %i.aq, ptr %13, align 8, !alias.scope !38205
  store i64 %.sroa.06.1.i.a, ptr %i.al, align 8, !alias.scope !38205
  tail call void @mi_free(ptr noundef nonnull align 1 %.val60.i) #38, !noalias !38209
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i"

bb.f:                                             ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i"
  %i.as = icmp eq i64 %.val45.i.a, 0              ; 2 uses
  %spec.select15.i = select i1 %i.as, i64 %i.ak, i64 %.val45.i.a
  br label %bb.h

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i71.i", %bb.k, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i"
  %i.at = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i64 %i.ak, ptr %i.at, align 8, !alias.scope !38205
  store i64 %.sroa.0.0.i.i, ptr %i.aj, align 8, !alias.scope !38207
  %i.au = mul nuw nsw i64 %.sroa.0.0.i.i, 1040    ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !38211
  %i.av = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.au, i64 noundef range(i64 1, 9) 8) #38, !noalias !38211 ; 7 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.g, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i"

bb.g:                                             ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i"
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.au, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !38212
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i"
  %.not16.i = icmp eq i64 %.sroa.08.0.lcssa, 0
  br i1 %.not16.i, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h88530c57ef19323aE.exit.i", label %.lr.ph.i.i.i.i.preheader

end_hunk_1
