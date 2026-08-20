inline.NumInlined: 17146
inline.NumDeleted: 6832
loop-unroll.NumCompletelyUnrolled: 148
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 290
begin_hunk_0_@"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$16FindLongestMatch17h7881c3bea613960fE":bb.a
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.bz = icmp eq i64 %6, %i.bl
  %i.ca = icmp ugt i64 %i.bm, %8
  %or.cond3 = or i1 %i.bz, %i.ca
  br i1 %or.cond3, label %bb.ak, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cb = icmp ugt i64 %i.bn, %2
  br i1 %i.cb, label %bb.ac, label %bb.ad, !prof !29

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.bn, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @285) #43
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 %i.bn
  %i.cd = sub nuw i64 %2, %i.bn
  %i.ce = tail call noundef i64 @_ZN6brotli3enc11static_dict28FindMatchLengthWithLimitMin417ha2aa6b8d31fd3d6aE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cc, i64 noundef %i.cd, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.i, i64 noundef %i.h, i64 noundef %7) ; 4 uses
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %.outer, label %bb.ae

.outer:                                           ; preds = %bb.ai, %bb.ag, %bb.ad
  %.sroa.039.4 = phi i1 [ %.sroa.039.2.ph17, %bb.ad ], [ true, %bb.ai ], [ %.sroa.039.2.ph17, %bb.ag ] ; 2 uses
  %.sroa.024.2 = phi i64 [ %.sroa.024.1.ph18, %bb.ad ], [ %.sroa.053.0, %bb.ai ], [ %.sroa.024.1.ph18, %bb.ag ]
  %.sroa.022.2 = phi i64 [ %.sroa.022.1.ph19, %bb.ad ], [ %i.cp, %bb.ai ], [ %.sroa.022.1.ph19, %bb.ag ]
  %.sroa.019.2 = phi i32 [ %.sroa.019.1.ph20, %bb.ad ], [ %i.cv, %bb.ai ], [ %.sroa.019.1.ph20, %bb.ag ]
  %i.cg = icmp eq i64 %.sroa.055.0.add15, 16
  %.sroa.055.0.add13 = add nuw nsw i64 %.sroa.055.0.add15, 4
  br i1 %i.cg, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.outer
  %.sroa.055.0.add1322 = phi i64 [ 4, %.preheader ], [ %.sroa.055.0.add13, %.outer ]
  %.sroa.055.0.idx.ph21 = phi i64 [ 0, %.preheader ], [ %.sroa.055.0.add15, %.outer ]
  %.sroa.019.1.ph20 = phi i32 [ %.sroa.019.0, %.preheader ], [ %.sroa.019.2, %.outer ] ; 3 uses
  %.sroa.022.1.ph19 = phi i64 [ %.sroa.022.0, %.preheader ], [ %.sroa.022.2, %.outer ] ; 3 uses
  %.sroa.024.1.ph18 = phi i64 [ %.sroa.024.0, %.preheader ], [ %.sroa.024.2, %.outer ] ; 3 uses
  %.sroa.039.2.ph17 = phi i1 [ %.sroa.039.0, %.preheader ], [ %.sroa.039.4, %.outer ] ; 3 uses
  br label %bb.v

bb.ae:                                            ; preds = %bb.ad
  br i1 %.not110, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ch = icmp ult i64 %i.bn, %4
  %i.ci = add i64 %i.ce, %i.bn
  %i.cj = icmp ugt i64 %i.ci, %4
  %or.cond10 = and i1 %i.ch, %i.cj
  %i.ck = sub nuw i64 %4, %i.bn
  %spec.select111 = select i1 %or.cond10, i64 %i.ck, i64 %i.ce
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.sroa.053.0 = phi i64 [ %i.ce, %bb.ae ], [ %spec.select111, %bb.af ] ; 4 uses
  %i.cl = mul i64 %.sroa.053.0, %i.bi
  %i.cm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bm, i1 true)
  %i.cn = xor i64 %i.cm, 63
  %.neg = mul nsw i64 %i.cn, -30
  %i.co = add nsw i64 %.neg, 1920
  %i.cp = add i64 %i.co, %i.cl                    ; 3 uses
  %i.cq = icmp ult i64 %.sroa.022.1.ph19, %i.cp
  br i1 %i.cq, label %bb.ah, label %.outer

bb.ah:                                            ; preds = %bb.ag
  store i64 %.sroa.053.0, ptr %9, align 8
  store i64 %i.bm, ptr %i.bj, align 8
  store i64 %i.cp, ptr %i.u, align 8
  %i.cr = add i64 %.sroa.053.0, %i.f              ; 3 uses
  %i.cs = icmp ult i64 %i.cr, %2
  br i1 %i.cs, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 %i.cr
  %i.cu = load i8, ptr %i.ct, align 1, !noundef !27
  %i.cv = zext i8 %i.cu to i32
  br label %.outer

bb.aj:                                            ; preds = %bb.ah
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.cr, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @284) #43
  unreachable

bb.ak:                                            ; preds = %bb.aa, %bb.y
  %i.cw = icmp eq i64 %.sroa.055.0.add15, 16
  %.sroa.055.0.add = add nuw nsw i64 %.sroa.055.0.add15, 4
  br i1 %i.cw, label %.outer._crit_edge, label %bb.v
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN118_$LT$brotli..enc..brotli_bit_stream..CommandQueue$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hd3f81be25cf7c6bdE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(1656) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !27 ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %.val15 = load i64, ptr %i.e, align 8, !noundef !27 ; 2 uses
  %i.f = icmp eq i64 %i.c, %.val15
  br i1 %i.f, label %bb.b, label %"._ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7e0b590a450b6ab8E.exit_crit_edge"

"._ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7e0b590a450b6ab8E.exit_crit_edge": ; preds = %bb.a
  %.val12.pre = load ptr, ptr %i.d, align 8
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7e0b590a450b6ab8E.exit"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7e0b590a450b6ab8E.exit": ; preds = %"._ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7e0b590a450b6ab8E.exit_crit_edge", %bb.g, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"
  %.val13 = phi i64 [ %.val15, %"._ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7e0b590a450b6ab8E.exit_crit_edge" ], [ 0, %bb.g ], [ %i.h, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i" ] ; 3 uses
  %.val12 = phi ptr [ %.val12.pre, %"._ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7e0b590a450b6ab8E.exit_crit_edge" ], [ %.sroa.10.0.i.i.i, %bb.g ], [ %.sroa.10.0.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i" ]
  %i.g = icmp eq i64 %i.c, %.val13
  br i1 %i.g, label %bb.s, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.h = shl i64 %i.c, 1                          ; 8 uses
  %i.i = mul i64 %i.c, 80                         ; 3 uses
  %or.cond.i.i.i.i.i = icmp ugt i64 %i.h, 230584300921369395
  br i1 %or.cond.i.i.i.i.i, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.b
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9d026597d16c7572E.exit.i.i.i", label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !5864
  %i.k = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.i, i64 noundef range(i64 1, 9) 8) #38, !noalias !5864 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9d026597d16c7572E.exit.i.i.i"

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.b ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !5872
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9d026597d16c7572E.exit.i.i.i": ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.k, %bb.c ] ; 7 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.h, %bb.c ]
  %i.m = icmp samesign ule i64 %i.h, %.sroa.4.0.i.i.i
  tail call void @llvm.assume(i1 %i.m)
  %.not33 = icmp eq i64 %i.h, 0                   ; 2 uses
  br i1 %.not33, label %._crit_edge.i.i.i, label %"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i.preheader"

"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i.preheader": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9d026597d16c7572E.exit.i.i.i"
  %i.n = add nsw i64 %i.h, -1                     ; 2 uses
  %i.o = add nsw i64 %i.h, -2
  %xtraiter = and i64 %i.n, 3
  %i.p = icmp ult i64 %i.o, 3
  br i1 %i.p, label %"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i.epil.preheader", label %"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i.preheader.new"

"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i.preheader.new": ; preds = %"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i.preheader"
  %unroll_iter = and i64 %i.n, -4
  br label %"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i"

"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i.epil.preheader": ; preds = %"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i", %"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i.preheader"
  %.sroa.0.018.i.i.i.epil.init = phi ptr [ %.sroa.10.0.i.i.i, %"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i.preheader" ], [ %i.u, %"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i" ]
  br label %"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i.epil"

"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i.epil": ; preds = %"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i.epil", %"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i.epil.preheader"
  %.sroa.0.018.i.i.i.epil = phi ptr [ %i.q, %"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i.epil" ], [ %.sroa.0.018.i.i.i.epil.init, %"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i.epil.preheader" ] ; 5 uses
  %epil.iter = phi i64 [ %epil.iter.next, %"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i.epil" ], [ 0, %"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i.epil.preheader" ]
  store i8 0, ptr %.sroa.0.018.i.i.i.epil, align 8, !noalias !5873
  %.sroa.87.0..sroa.0.0.sroa_idx.i.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.epil, i64 4
  store i64 1, ptr %.sroa.87.0..sroa.0.0.sroa_idx.i.i.i.epil, align 4, !noalias !5873
  %.sroa.1510.0..sroa.0.0.sroa_idx.i.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.epil, i64 24
  store i64 0, ptr %.sroa.1510.0..sroa.0.0.sroa_idx.i.i.i.epil, align 8, !noalias !5873
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.epil, i64 40 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread.i.i.i, label %"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i.epil", !llvm.loop !5877

._crit_edge.thread.i.i.i:                         ; preds = %"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i.epil"
  store i8 0, ptr %i.q, align 8, !noalias !5878
  %.sroa.75.0..sroa.0.0.lcssa29.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.epil, i64 44
  store i64 1, ptr %.sroa.75.0..sroa.0.0.lcssa29.i.sroa_idx.i.i, align 4, !noalias !5878
  br label %._crit_edge.i.i.i

"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i": ; preds = %"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i", %"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i.preheader.new"
  %.sroa.0.018.i.i.i = phi ptr [ %.sroa.10.0.i.i.i, %"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i.preheader.new" ], [ %i.u, %"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i" ] ; 13 uses
  %niter = phi i64 [ 0, %"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i.preheader.new" ], [ %niter.next.3, %"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i" ]
  store i8 0, ptr %.sroa.0.018.i.i.i, align 8, !noalias !5873
  %.sroa.87.0..sroa.0.0.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i, i64 4
  store i64 1, ptr %.sroa.87.0..sroa.0.0.sroa_idx.i.i.i, align 4, !noalias !5873
  %.sroa.1510.0..sroa.0.0.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i, i64 24
  store i64 0, ptr %.sroa.1510.0..sroa.0.0.sroa_idx.i.i.i, align 8, !noalias !5873
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i, i64 40
  store i8 0, ptr %i.r, align 8, !noalias !5873
  %.sroa.87.0..sroa.0.0.sroa_idx.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i, i64 44
  store i64 1, ptr %.sroa.87.0..sroa.0.0.sroa_idx.i.i.i.1, align 4, !noalias !5873
  %.sroa.1510.0..sroa.0.0.sroa_idx.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i, i64 64
  store i64 0, ptr %.sroa.1510.0..sroa.0.0.sroa_idx.i.i.i.1, align 8, !noalias !5873
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i, i64 80
  store i8 0, ptr %i.s, align 8, !noalias !5873
  %.sroa.87.0..sroa.0.0.sroa_idx.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i, i64 84
  store i64 1, ptr %.sroa.87.0..sroa.0.0.sroa_idx.i.i.i.2, align 4, !noalias !5873
  %.sroa.1510.0..sroa.0.0.sroa_idx.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i, i64 104
  store i64 0, ptr %.sroa.1510.0..sroa.0.0.sroa_idx.i.i.i.2, align 8, !noalias !5873
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i, i64 120
  store i8 0, ptr %i.t, align 8, !noalias !5873
  %.sroa.87.0..sroa.0.0.sroa_idx.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i, i64 124
  store i64 1, ptr %.sroa.87.0..sroa.0.0.sroa_idx.i.i.i.3, align 4, !noalias !5873
  %.sroa.1510.0..sroa.0.0.sroa_idx.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i, i64 144
  store i64 0, ptr %.sroa.1510.0..sroa.0.0.sroa_idx.i.i.i.3, align 8, !noalias !5873
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i, i64 160 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i.epil.preheader", label %"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i"

._crit_edge.i.i.i:                                ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9d026597d16c7572E.exit.i.i.i", %._crit_edge.thread.i.i.i
  %.val6 = load ptr, ptr %i.d, align 8, !nonnull !27, !align !148, !noundef !27 ; 2 uses
  %.not = icmp slt i64 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.g, !prof !29

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @186, ptr %i.a, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.y, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @294) #43
          to label %bb.f unwind label %bb.u

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.z = mul nuw nsw i64 %i.c, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.10.0.i.i.i, ptr nonnull readonly align 8 %.val6, i64 %i.z, i1 false), !alias.scope !5879
  store ptr %.sroa.10.0.i.i.i, ptr %i.d, align 8
  store i64 %i.h, ptr %i.e, align 8
  %i.aa = icmp eq i64 %i.c, 0
  br i1 %i.aa, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7e0b590a450b6ab8E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i": ; preds = %bb.g
  tail call void @mi_free(ptr noundef nonnull align 8 %.val6) #38
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7e0b590a450b6ab8E.exit"

bb.h:                                             ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7e0b590a450b6ab8E.exit"
  %i.ab = load i8, ptr %1, align 8, !range !591, !alias.scope !5883, !noalias !5886, !noundef !27 ; 2 uses
  switch i8 %i.ab, label %default.unreachable [
    i8 0, label %bb.i
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.l
    i8 4, label %bb.m
    i8 5, label %bb.n
    i8 6, label %bb.o
  ]

default.unreachable:                              ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = load <2 x i32>, ptr %i.ac, align 4, !alias.scope !5883, !noalias !5886
  br label %"_ZN6brotli3enc9interface24Command$LT$SliceType$GT$6freeze17h250cdf1fa769b72fE.exit"

bb.j:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.07.0.copyload.i53 = load <2 x i32>, ptr %i.ae, align 4, !alias.scope !5883, !noalias !5886
  br label %"_ZN6brotli3enc9interface24Command$LT$SliceType$GT$6freeze17h250cdf1fa769b72fE.exit"

bb.k:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val12.i = load i64, ptr %i.af, align 8, !alias.scope !5883, !noalias !5886, !noundef !27
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val13.i48 = load i32, ptr %i.ag, align 8
  %.sroa_idx49 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val13.i50 = load i32, ptr %.sroa_idx49, align 4
  %i.ah = trunc i64 %.val12.i to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aj = load i8, ptr %i.ai, align 8, !range !188, !alias.scope !5883, !noalias !5886, !noundef !27
  %.sroa.825.sroa.0.4.vec.insert52 = insertelement <2 x i32> <i32 undef, i32 poison>, i32 %.val13.i48, i64 1
  br label %"_ZN6brotli3enc9interface24Command$LT$SliceType$GT$6freeze17h250cdf1fa769b72fE.exit"

bb.l:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !alias.scope !5883, !noalias !5886, !noundef !27
  br label %"_ZN6brotli3enc9interface24Command$LT$SliceType$GT$6freeze17h250cdf1fa769b72fE.exit"

bb.m:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.an = load i8, ptr %i.am, align 1, !alias.scope !5883, !noalias !5886, !noundef !27
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ap = load i8, ptr %i.ao, align 2, !alias.scope !5883, !noalias !5886, !noundef !27
  br label %"_ZN6brotli3enc9interface24Command$LT$SliceType$GT$6freeze17h250cdf1fa769b72fE.exit"

bb.n:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !alias.scope !5883, !noalias !5886, !noundef !27
  br label %"_ZN6brotli3enc9interface24Command$LT$SliceType$GT$6freeze17h250cdf1fa769b72fE.exit"

bb.o:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val10.i = load i64, ptr %i.as, align 8, !alias.scope !5883, !noalias !5886, !noundef !27
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val11.i46 = load i32, ptr %i.at, align 8
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val11.i47 = load i32, ptr %.sroa_idx, align 4
  %i.au = trunc i64 %.val10.i to i32
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i = load i64, ptr %i.av, align 8, !alias.scope !5883, !noalias !5886, !noundef !27
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val9.i = load i64, ptr %i.aw, align 8, !alias.scope !5883, !noalias !5886, !noundef !27 ; 2 uses
  %i.ax = trunc i64 %.val.i to i32
  %.sroa.825.sroa.0.4.vec.insert = insertelement <2 x i32> <i32 undef, i32 poison>, i32 %.val11.i46, i64 1
  %.sroa.1528.sroa.0.0.extract.trunc = trunc i64 %.val9.i to i8
  %.sroa.1528.sroa.5.0.extract.shift = and i64 %.val9.i, -256
  br label %"_ZN6brotli3enc9interface24Command$LT$SliceType$GT$6freeze17h250cdf1fa769b72fE.exit"

"_ZN6brotli3enc9interface24Command$LT$SliceType$GT$6freeze17h250cdf1fa769b72fE.exit": ; preds = %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o
  %.sroa.825.sroa.7.0 = phi i32 [ undef, %bb.i ], [ undef, %bb.j ], [ %.val13.i50, %bb.k ], [ undef, %bb.l ], [ undef, %bb.m ], [ undef, %bb.n ], [ %.val11.i47, %bb.o ]
  %.sroa.825.sroa.0.0 = phi <2 x i32> [ %i.ad, %bb.i ], [ %.sroa.07.0.copyload.i53, %bb.j ], [ %.sroa.825.sroa.0.4.vec.insert52, %bb.k ], [ undef, %bb.l ], [ undef, %bb.m ], [ undef, %bb.n ], [ %.sroa.825.sroa.0.4.vec.insert, %bb.o ]
  %.sroa.1528.sroa.5.sroa.0.0 = phi i64 [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.m ], [ 0, %bb.n ], [ %.sroa.1528.sroa.5.0.extract.shift, %bb.o ]
  %.sroa.1528.sroa.0.0 = phi i8 [ undef, %bb.i ], [ undef, %bb.j ], [ %i.aj, %bb.k ], [ undef, %bb.l ], [ undef, %bb.m ], [ undef, %bb.n ], [ %.sroa.1528.sroa.0.0.extract.trunc, %bb.o ]
  %.sroa.17.0 = phi i32 [ undef, %bb.i ], [ undef, %bb.j ], [ undef, %bb.k ], [ undef, %bb.l ], [ undef, %bb.m ], [ undef, %bb.n ], [ %i.ax, %bb.o ]
  %.sroa.13.0 = phi i32 [ undef, %bb.i ], [ undef, %bb.j ], [ %i.ah, %bb.k ], [ undef, %bb.l ], [ undef, %bb.m ], [ undef, %bb.n ], [ %i.au, %bb.o ]
  %.sroa.7.0 = phi i8 [ undef, %bb.i ], [ undef, %bb.j ], [ undef, %bb.k ], [ undef, %bb.l ], [ %i.ap, %bb.m ], [ undef, %bb.n ], [ undef, %bb.o ]
  %.sroa.4.0 = phi i8 [ undef, %bb.i ], [ undef, %bb.j ], [ undef, %bb.k ], [ %i.al, %bb.l ], [ %i.an, %bb.m ], [ %i.ar, %bb.n ], [ undef, %bb.o ]
  %i.ay = icmp ult i64 %i.c, %.val13
  br i1 %i.ay, label %bb.p, label %bb.q

bb.p:                                             ; preds = %"_ZN6brotli3enc9interface24Command$LT$SliceType$GT$6freeze17h250cdf1fa769b72fE.exit"
  %i.az = getelementptr inbounds nuw [40 x i8], ptr %.val12, i64 %i.c ; 8 uses
  store i8 %i.ab, ptr %i.az, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store i8 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  store i8 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 2
  %.sroa.825.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  store <2 x i32> %.sroa.825.sroa.0.0, ptr %.sroa.825.0..sroa_idx, align 4
  %.sroa.825.sroa.7.0..sroa.825.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 %.sroa.825.sroa.7.0, ptr %.sroa.825.sroa.7.0..sroa.825.0..sroa_idx.sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i32 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.1528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %.sroa.1528.sroa.0.0.insert.ext = zext i8 %.sroa.1528.sroa.0.0 to i64
  %.sroa.1528.sroa.0.0.insert.insert = or disjoint i64 %.sroa.1528.sroa.5.sroa.0.0, %.sroa.1528.sroa.0.0.insert.ext
  store i64 %.sroa.1528.sroa.0.0.insert.insert, ptr %.sroa.1528.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  store i32 %.sroa.17.0, ptr %.sroa.17.0..sroa_idx, align 8
  %i.ba = add nuw i64 %i.c, 1
  store i64 %i.ba, ptr %i.b, align 8
  br label %bb.r

bb.q:                                             ; preds = %"_ZN6brotli3enc9interface24Command$LT$SliceType$GT$6freeze17h250cdf1fa769b72fE.exit"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.c, i64 noundef %.val13, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @295) #43
  unreachable

bb.r:                                             ; preds = %bb.s, %bb.p
  ret void

bb.s:                                             ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7e0b590a450b6ab8E.exit"
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1651
  store i8 1, ptr %i.bb, align 1
  br label %bb.r

bb.t:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i", %bb.u
  resume { ptr, i32 } %i.bc

bb.u:                                             ; preds = %bb.e
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br i1 %.not33, label %bb.t, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i": ; preds = %bb.u
  call void @mi_free(ptr noundef nonnull %.sroa.10.0.i.i.i) #38
  br label %bb.t
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN118_$LT$tracing_subscriber..fmt..format..json..SerializableSpan$LT$Span$C$N$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17hfc640114024da595E"(ptr captures(address, read_provenance) %.0.val, ptr noalias noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %.sroa.450 = alloca [88 x i8], align 8          ; 9 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 8 uses
  %i.g = alloca [72 x i8], align 8                ; 15 uses
  %i.h = alloca [96 x i8], align 8                ; 11 uses
  %.sroa.8 = alloca [88 x i8], align 8            ; 11 uses
  %i.i = alloca [32 x i8], align 8                ; 10 uses
  %i.j = alloca [16 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.k = tail call fastcc noundef ptr @_ZN3std2io5Write9write_all17habb299c3513606fdE(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @193, i64 noundef 1), !noalias !5888 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !222

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %i.k), !noalias !5888
  br label %"_ZN4core3ptr73drop_in_place$LT$tracing_subscriber..registry..extensions..Extensions$GT$17hb0dfebf2ab5a23a9E.exit150"

bb.c:                                             ; preds = %bb.a
  store i8 0, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 7 uses
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %0, ptr %.sroa.5.0..sroa_idx, align 8
end_hunk_0
begin_hunk_1_@"_ZN336_$LT$actix_web..app_service..AppInitService$LT$T$C$B$GT$$u20$as$u20$actix_service..Service$LT$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$GT$$GT$4call17hecb883afe6a62ec5E":bb.a
  %i.hx = icmp eq ptr %i.hw, null
  br i1 %i.hx, label %bb.ax, label %.lr.ph.i.i.i.i.i

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.hu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #43
          to label %.noexc15.i.i unwind label %bb.cn, !noalias !18199

.noexc15.i.i:                                     ; preds = %bb.ax
  unreachable

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.aw
  store i64 %.sink10.i.i.i.i.i.i, ptr %i.ag, align 8, !noalias !18258
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  store ptr %i.hw, ptr %i.hy, align 8, !noalias !18258
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 5 uses
  store i64 0, ptr %i.hz, align 8, !noalias !18258
  %i.ia = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.9.8..sroa_idx172.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.10174.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 17
  br label %bb.ay

.loopexit.i.i.i.i.i:                              ; preds = %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread182.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.loopexit.split-lp.loopexit.i.i.i.i.i:            ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit66.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bn
  %lpad.loopexit71.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i: ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.invoke.i.i.i.i.i"
  %lpad.loopexit.split-lp.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.cc, %bb.cc, %bb.cc, %common.resume.sink.split.i.i.i.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i.i, %.loopexit.split-lp.loopexit.i.i.i.i.i, %.loopexit.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %common.resume.op.ph.i.i.i.i.i.i.i, %common.resume.sink.split.i.i.i.i.i.i.i ], [ %i.ny, %bb.cc ], [ %i.ny, %bb.cc ], [ %i.ny, %bb.cc ], [ %lpad.loopexit.i.i.i.i.i, %.loopexit.i.i.i.i.i ], [ %lpad.loopexit66.i.i.i.i.i, %.loopexit.split-lp.loopexit.i.i.i.i.i ], [ %lpad.loopexit71.i.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i ]
  call fastcc void @"_ZN4core3ptr203drop_in_place$LT$alloc..vec..Vec$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$actix_web..http..header..encoding..Encoding$GT$$GT$$GT$$GT$17ha1f2c94c0eb17d3fE"(ptr noalias noundef align 8 dereferenceable(24) %i.ag) #44, !noalias !18258
  br label %.thread.i.i

bb.ay:                                            ; preds = %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hc6072f5912c23af7E.exit.i.i.i.i.i", %.lr.ph.i.i.i.i.i
  %.sroa.057.0126.i.i.i.i.i = phi ptr [ %.sink11.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ib, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hc6072f5912c23af7E.exit.i.i.i.i.i" ] ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.057.0126.i.i.i.i.i, i64 40 ; 2 uses
  %i.ic = getelementptr i8, ptr %.sroa.057.0126.i.i.i.i.i, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.ic, align 8, !noalias !18258, !nonnull !27, !noundef !27 ; 5 uses
  %i.id = getelementptr i8, ptr %.sroa.057.0126.i.i.i.i.i, i64 16
  %.val47.i.i.i.i.i = load i64, ptr %i.id, align 8, !noalias !18258, !noundef !27 ; 18 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.val47.i.i.i.i.i
  %i.if = icmp samesign eq i64 %.val47.i.i.i.i.i, 0
  br i1 %i.if, label %.lr.ph.i.i.i.i.lr.ph.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.az:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.03.01.i.i.i.i.i.i, i64 1 ; 2 uses
  %i.ih = icmp eq ptr %i.ig, %i.ie
  br i1 %i.ih, label %.lr.ph.i.i.i.i.lr.ph.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ay, %bb.az
  %.sroa.03.01.i.i.i.i.i.i = phi ptr [ %i.ig, %bb.az ], [ %.val.i.i.i.i.i, %bb.ay ] ; 2 uses
  %i.ii = load i8, ptr %.sroa.03.01.i.i.i.i.i.i, align 1, !noalias !18258, !noundef !27 ; 2 uses
  %i.ij = add i8 %i.ii, -32
  %or.cond.i.i.i.i.i.i = icmp ult i8 %i.ij, 95
  %i.ik = icmp eq i8 %i.ii, 9
  %or.cond1.i.i.i.i.i.i = or i1 %i.ik, %or.cond.i.i.i.i.i.i
  br i1 %or.cond1.i.i.i.i.i.i, label %bb.az, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !18266)
  %.val.i.i.i.i.i.i = load ptr, ptr %i.hy, align 8, !alias.scope !18266, !noalias !18258, !nonnull !27, !noundef !27 ; 2 uses
  %.val1.i.i.i.i.i.i = load i64, ptr %i.hz, align 8, !alias.scope !18266, !noalias !18258, !noundef !27 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18269)
  %i.il = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.il, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb656d2fb925a1861E.exit.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.ba, %"_ZN4core3ptr180drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$actix_web..http..header..encoding..Encoding$GT$$GT$$GT$17h1ce3404939445a69E.exit.i.i.i.i.i.i.i.i"
  %.sroa.0.011.i.i.i.i.i.i.i.i = phi i64 [ %i.in, %"_ZN4core3ptr180drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$actix_web..http..header..encoding..Encoding$GT$$GT$$GT$17h1ce3404939445a69E.exit.i.i.i.i.i.i.i.i" ], [ 0, %bb.ba ] ; 2 uses
  %i.im = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i.i.i ; 2 uses
  %i.in = add nuw i64 %.sroa.0.011.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i = load i64, ptr %i.im, align 8, !range !5394, !alias.scope !18269, !noalias !18272, !noundef !27
  %switch.i.i.i.i.i.i.i.i = icmp sgt i64 %.val8.i.i.i.i.i.i.i.i, 0
  br i1 %switch.i.i.i.i.i.i.i.i, label %bb.bb, label %"_ZN4core3ptr180drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$actix_web..http..header..encoding..Encoding$GT$$GT$$GT$17h1ce3404939445a69E.exit.i.i.i.i.i.i.i.i"

bb.bb:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.io = getelementptr i8, ptr %i.im, i64 8
  %.val9.i.i.i.i.i.i.i.i = load ptr, ptr %i.io, align 8, !alias.scope !18269, !noalias !18272, !nonnull !27, !noundef !27
  call void @mi_free(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i) #38, !noalias !18273
  br label %"_ZN4core3ptr180drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$actix_web..http..header..encoding..Encoding$GT$$GT$$GT$17h1ce3404939445a69E.exit.i.i.i.i.i.i.i.i"

"_ZN4core3ptr180drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$actix_web..http..header..encoding..Encoding$GT$$GT$$GT$17h1ce3404939445a69E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.bb, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ip = icmp eq i64 %i.in, %.val1.i.i.i.i.i.i
  br i1 %i.ip, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb656d2fb925a1861E.exit.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb656d2fb925a1861E.exit.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr180drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$actix_web..http..header..encoding..Encoding$GT$$GT$$GT$17h1ce3404939445a69E.exit.i.i.i.i.i.i.i.i", %bb.ba
  %.val2.i.i.i.i.i.i = load i64, ptr %i.ag, align 8, !range !28, !alias.scope !18266, !noalias !18258, !noundef !27
  %i.iq = icmp eq i64 %.val2.i.i.i.i.i.i, 0
  br i1 %i.iq, label %.thread16.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb656d2fb925a1861E.exit.i.i.i.i.i.i"
  call void @mi_free(ptr noundef nonnull %.val.i.i.i.i.i.i) #38, !noalias !18272
  br label %.thread16.i.i.i

.lr.ph.i.i.i.i.lr.ph.i.i.i.i.i.i.i:               ; preds = %bb.az, %bb.ay
  call void @llvm.experimental.noalias.scope.decl(metadata !18276)
  call void @llvm.experimental.noalias.scope.decl(metadata !18279)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.83.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10174.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.backedge, %.lr.ph.i.i.i.i.lr.ph.i.i.i.i.i.i.i
  %i.ir = phi i64 [ 0, %.lr.ph.i.i.i.i.lr.ph.i.i.i.i.i.i.i ], [ %i.jn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.backedge ]
  %.promoted58.i.i.i.i44.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.lr.ph.i.i.i.i.i.i.i ], [ %.promoted58.i.i.i.i43.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.backedge ] ; 5 uses
  %i.is = phi i1 [ false, %.lr.ph.i.i.i.i.lr.ph.i.i.i.i.i.i.i ], [ %.be, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.backedge ]
  %i.it = phi i64 [ 0, %.lr.ph.i.i.i.i.lr.ph.i.i.i.i.i.i.i ], [ %.be554, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.backedge ] ; 3 uses
  %.lcssa376061.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa376061.i.i.i.i.i.i.i.i.i.i.i.be, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.backedge ] ; 7 uses
  %i.iu = icmp ult i64 %.val47.i.i.i.i.i, %i.it
  br i1 %i.iu, label %select.unfold.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.be
  %i.iv = phi i64 [ %i.ji, %bb.be ], [ %i.it, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.iw = sub nuw i64 %.val47.i.i.i.i.i, %i.iv    ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.iv ; 2 uses
  %i.iy = icmp ult i64 %i.iw, 16
  br i1 %i.iy, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val47.i.i.i.i.i, %i.iv
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bd
  %.sroa.01.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.jc, %bb.bd ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 %.sroa.01.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ja = load i8, ptr %i.iz, align 1, !alias.scope !18282, !noalias !18285, !noundef !27
  %i.jb = icmp eq i8 %i.ja, 44
  br i1 %i.jb, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jc = add nuw i64 %.sroa.01.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.jc, %i.iw
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jd = invoke { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 44, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ix, i64 noundef %i.iw)
          to label %.noexc.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.i.i, !noalias !18258 ; 2 uses

.noexc.i.i.i.i.i:                                 ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.je = extractvalue { i64, i64 } %i.jd, 0
  %i.jf = extractvalue { i64, i64 } %i.jd, 1
  %i.jg = trunc nuw i64 %i.je to i1
  br i1 %i.jg, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i.i.i.i.i.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %.sroa.4.0.i27.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.jf, %.noexc.i.i.i.i.i ], [ %.sroa.01.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.jh = add i64 %i.iv, 1
  %i.ji = add i64 %i.jh, %.sroa.4.0.i27.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 8 uses
  %i.jj = add i64 %.sroa.4.0.i27.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.iv ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i.i.not.i.i.i.i.i = icmp ult i64 %i.jj, %.val47.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.not.i.i.i.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bf, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jk = icmp ult i64 %.val47.i.i.i.i.i, %i.ji
  br i1 %i.jk, label %select.unfold.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.bf:                                            ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jl = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.jj
  %lhsc.i.i.i.i.i = load i8, ptr %i.jl, align 1, !noalias !18258
  %i.jm = icmp eq i8 %lhsc.i.i.i.i.i, 44
  br i1 %i.jm, label %select.unfold.i.i.i.i.i.i.i.i.i.i.i, label %bb.be

select.unfold.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.bf, %bb.be, %.noexc.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.jn = phi i64 [ %.val47.i.i.i.i.i, %bb.bd ], [ %i.ir, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ji, %bb.bf ], [ %.val47.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.val47.i.i.i.i.i, %.noexc.i.i.i.i.i ], [ %i.ji, %bb.be ] ; 2 uses
  %.promoted58.i.i.i.i43.i.i.i.i.i.i.i = phi i64 [ %.promoted58.i.i.i.i44.i.i.i.i.i.i.i, %bb.bd ], [ %.promoted58.i.i.i.i44.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ji, %bb.bf ], [ %.promoted58.i.i.i.i44.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.promoted58.i.i.i.i44.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i ], [ %.promoted58.i.i.i.i44.i.i.i.i.i.i.i, %bb.be ] ; 2 uses
  %i.jo = phi i1 [ true, %bb.bd ], [ true, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.is, %bb.bf ], [ true, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ true, %.noexc.i.i.i.i.i ], [ true, %bb.be ] ; 2 uses
  %i.jp = phi i64 [ %.val47.i.i.i.i.i, %bb.bd ], [ %i.it, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ji, %bb.bf ], [ %.val47.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.val47.i.i.i.i.i, %.noexc.i.i.i.i.i ], [ %i.ji, %bb.be ]
  %.lcssa3759.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.lcssa376061.i.i.i.i.i.i.i.i.i.i.i, %bb.bd ], [ %.lcssa376061.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ji, %bb.bf ], [ %.lcssa376061.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa376061.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i ], [ %.lcssa376061.i.i.i.i.i.i.i.i.i.i.i, %bb.be ]
  %i.jq = phi i1 [ true, %bb.bd ], [ true, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ false, %bb.bf ], [ true, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ true, %.noexc.i.i.i.i.i ], [ true, %bb.be ]
  %.pn65.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.val47.i.i.i.i.i, %bb.bd ], [ %.val47.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jj, %bb.bf ], [ %.val47.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.val47.i.i.i.i.i, %.noexc.i.i.i.i.i ], [ %.val47.i.i.i.i.i, %bb.be ]
  %.sroa.4.1.i.i.i.i.i.i.i.i.i.i.i.i.i = sub nuw i64 %.pn65.i.i.i.i.i.i.i.i.i.i.i, %.lcssa376061.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.lcssa376061.i.i.i.i.i.i.i.i.i.i.i
  %i.jr = call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17hfb1e61c0e3c4d18eE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.4.1.i.i.i.i.i.i.i.i.i.i.i.i.i), !noalias !18307 ; 2 uses
  %i.js = extractvalue { ptr, i64 } %i.jr, 0      ; 2 uses
  %i.jt = extractvalue { ptr, i64 } %i.jr, 1      ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.jt, 0
  %.not1.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.js, null
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not1.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h9e5679709f744379E.exit.thread.i.i.i.i.i.i.i.i.i.i.i", label %bb.bg

bb.bg:                                            ; preds = %select.unfold.i.i.i.i.i.i.i.i.i.i.i
  %i.ju = call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17hfb1e61c0e3c4d18eE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.js, i64 noundef %i.jt), !noalias !18310 ; 2 uses
  %i.jv = extractvalue { ptr, i64 } %i.ju, 0      ; 11 uses
  %i.jw = extractvalue { ptr, i64 } %i.ju, 1      ; 13 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18317)
  br label %bb.bh

bb.bh:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bg
  %indvar = phi i64 [ %indvar.next, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.bg ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.jx, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.bg ] ; 8 uses
  %i.jx = add nuw i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.jx, %i.jw
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %bb.bh
  %i.jy = icmp ult i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.jw
  br i1 %i.jy, label %iter.check, label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread182.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

iter.check:                                       ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jz = shl i64 %indvar, 5
  %i.ka = sub i64 %i.jw, %i.jz                    ; 4 uses
  %min.iters.check = icmp ult i64 %i.ka, 4
  br i1 %min.iters.check, label %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check531 = icmp ult i64 %i.ka, 32
  br i1 %min.iters.check531, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.kb = and i64 %i.jw, 31                       ; 3 uses
  %n.vec = sub nuw i64 %i.ka, %i.kb               ; 3 uses
  %i.kc = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %n.vec
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jv, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.ki, %vector.body ]
  %vec.phi532 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.kj, %vector.body ]
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 %index ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %wide.load = load <16 x i8>, ptr %i.ke, align 1, !alias.scope !18320, !noalias !18323
  %wide.load533 = load <16 x i8>, ptr %i.kf, align 1, !alias.scope !18320, !noalias !18323
  %i.kg = icmp slt <16 x i8> %wide.load, zeroinitializer
  %i.kh = icmp slt <16 x i8> %wide.load533, zeroinitializer
  %i.ki = or <16 x i1> %vec.phi, %i.kg            ; 2 uses
  %i.kj = or <16 x i1> %vec.phi532, %i.kh         ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.kk = icmp eq i64 %index.next, %n.vec
  br i1 %i.kk, label %middle.block, label %vector.body, !llvm.loop !18325

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i1> %i.kj, %i.ki
  %bin.rdx.fr = freeze <16 x i1> %bin.rdx
  %i.kl = bitcast <16 x i1> %bin.rdx.fr to i16
  %.not = icmp eq i16 %i.kl, 0                    ; 3 uses
  %cmp.n = icmp eq i64 %i.kb, 0
  br i1 %cmp.n, label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp samesign ult i64 %i.kb, 4
  br i1 %min.epilog.iters.check, label %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !18326

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %.not, %vec.epilog.iter.check ], [ true, %vector.main.loop.iter.check ]
  %i.km = xor i1 %bc.merge.rdx, true
  %i.kn = and i64 %i.jw, 3                        ; 2 uses
  %n.vec534 = sub i64 %i.ka, %i.kn                ; 2 uses
  %i.ko = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %n.vec534
  %broadcast.splatinsert = insertelement <4 x i1> poison, i1 %i.km, i64 0
  %broadcast.splat = shufflevector <4 x i1> %broadcast.splatinsert, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jv, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index535 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next538, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi536 = phi <4 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %.fr543, %vec.epilog.vector.body ]
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 %index535
  %wide.load537 = load <4 x i8>, ptr %i.kq, align 1, !alias.scope !18320, !noalias !18323
  %i.kr = icmp slt <4 x i8> %wide.load537, zeroinitializer
  %i.ks = or <4 x i1> %vec.phi536, %i.kr
  %.fr543 = freeze <4 x i1> %i.ks                 ; 2 uses
  %index.next538 = add nuw i64 %index535, 4       ; 2 uses
  %i.kt = icmp eq i64 %index.next538, %n.vec534
  br i1 %i.kt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !18327

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ku = bitcast <4 x i1> %.fr543 to i4
  %.not544 = icmp eq i4 %i.ku, 0                  ; 2 uses
  %cmp.n539 = icmp eq i64 %i.kn, 0
  br i1 %cmp.n539, label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.124.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %iter.check ], [ %i.kc, %vec.epilog.iter.check ], [ %i.ko, %vec.epilog.middle.block ]
  %.sroa.011.023.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i1 [ true, %iter.check ], [ %.not, %vec.epilog.iter.check ], [ %.not544, %vec.epilog.middle.block ]
  br label %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.01.124.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ky, %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.01.124.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.011.023.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ %i.kx, %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.011.023.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.kv = getelementptr inbounds nuw i8, ptr %i.jv, i64 %.sroa.01.124.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.kw = load i8, ptr %i.kv, align 1, !alias.scope !18320, !noalias !18323, !noundef !27
  %.inv.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i8 %i.kw, -1
  %i.kx = select i1 %.inv.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 %.sroa.011.023.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 false ; 2 uses
  %i.ky = add nuw i64 %.sroa.01.124.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ky, %i.jw
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !18328

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:    ; preds = %bb.bh
  %i.kz = getelementptr inbounds nuw i8, ptr %i.jv, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.la = load <32 x i8>, ptr %i.kz, align 1, !alias.scope !18320, !noalias !18323
  %i.lb = icmp slt <32 x i8> %i.la, zeroinitializer
  %i.lc = bitcast <32 x i1> %i.lb to i32
  %i.ld = icmp eq i32 %i.lc, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ld, label %bb.bh, label %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h9e5679709f744379E.exit.thread.i.i.i.i.i.i.i.i.i.i.i"

_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %.lcssa466 = phi i1 [ %.not544, %vec.epilog.middle.block ], [ %.not, %middle.block ], [ %i.kx, %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  br i1 %.lcssa466, label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread182.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h9e5679709f744379E.exit.thread.i.i.i.i.i.i.i.i.i.i.i"

_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread182.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread182.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread182.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread182.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %bb.bi
  %i.le = phi i64 [ %i.li, %bb.bi ], [ %i.jw, %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread182.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.lf = invoke { i64, i64 } @_ZN4core5slice6memchr7memrchr17h0c3e43ac4b055a3eE(i8 noundef 59, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.jv, i64 noundef %i.le)
          to label %.noexc51.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i, !noalias !18258 ; 2 uses

.noexc51.i.i.i.i.i:                               ; preds = %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread182.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.lg = extractvalue { i64, i64 } %i.lf, 0
  %i.lh = trunc nuw i64 %i.lg to i1
  br i1 %i.lh, label %bb.bj, label %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.bi:                                            ; preds = %bb.bk, %bb.bj
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.li, %i.jw
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread182.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.bj:                                            ; preds = %.noexc51.i.i.i.i.i
  %i.li = extractvalue { i64, i64 } %i.lf, 1      ; 6 uses
  %or.cond25.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.li, %i.jw
  br i1 %or.cond25.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bk, label %bb.bi

bb.bk:                                            ; preds = %bb.bj
  %i.lj = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.li
  %lhsc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.lj, align 1, !alias.scope !18329, !noalias !18332
  %i.lk = icmp eq i8 %lhsc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 59
  br i1 %i.lk, label %bb.bl, label %bb.bi

bb.bl:                                            ; preds = %bb.bk
  %i.ll = add nuw i64 %i.li, 1                    ; 2 uses
  %i.lm = sub nuw i64 %i.jw, %i.ll
  %i.ln = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.ll
  %i.lo = call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17hfb1e61c0e3c4d18eE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.jv, i64 noundef %i.li), !noalias !18323 ; 2 uses
  %i.lp = extractvalue { ptr, i64 } %i.lo, 0
  %i.lq = extractvalue { ptr, i64 } %i.lo, 1
  %i.lr = call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17hfb1e61c0e3c4d18eE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ln, i64 noundef %i.lm), !noalias !18323 ; 2 uses
  %i.ls = extractvalue { ptr, i64 } %i.lr, 0      ; 7 uses
  %i.lt = extractvalue { ptr, i64 } %i.lr, 1      ; 5 uses
  %i.lu = icmp ult i64 %i.lt, 2
  br i1 %i.lu, label %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h9e5679709f744379E.exit.thread.i.i.i.i.i.i.i.i.i.i.i", label %bb.bo

.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %bb.bi, %.noexc51.i.i.i.i.i, %bb.bu, %bb.bs
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.nc, %bb.bu ], [ 1000, %bb.bs ], [ 1000, %.noexc51.i.i.i.i.i ], [ 1000, %bb.bi ]
  %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.lq, %bb.bu ], [ %i.jw, %bb.bs ], [ %i.jw, %.noexc51.i.i.i.i.i ], [ %i.jw, %bb.bi ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.lp, %bb.bu ], [ %i.jv, %bb.bs ], [ %i.jv, %.noexc51.i.i.i.i.i ], [ %i.jv, %bb.bi ]
  %i.lv = call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17hfb1e61c0e3c4d18eE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i), !noalias !18334 ; 2 uses
  %i.lw = extractvalue { ptr, i64 } %i.lv, 0      ; 2 uses
  %i.lx = extractvalue { ptr, i64 } %i.lv, 1      ; 2 uses
  %.not.i163.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.lx, 1
  br i1 %.not.i163.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %lhsc.i164.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.lw, align 1, !noalias !18334
  %i.ly = icmp eq i8 %lhsc.i164.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 42
  br i1 %i.ly, label %.loopexit18.i.i.i.i.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !18337
  invoke void @"_ZN90_$LT$actix_web..http..header..encoding..Encoding$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hfc3494dff0e72aa8E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.af, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.lw, i64 noundef %i.lx)
          to label %.noexc52.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i.i, !noalias !18258

.noexc52.i.i.i.i.i:                               ; preds = %bb.bn
  %i.lz = load i64, ptr %i.af, align 8, !range !5394, !noalias !18337, !noundef !27 ; 2 uses
  %i.ma = icmp eq i64 %i.lz, -9223372036854775807
  %.sroa.6170.8.copyload171.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ia, align 8, !noalias !18343 ; 4 uses
  %.sroa.9.8.copyload173.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.9.8..sroa_idx172.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !18343 ; 2 uses
  br i1 %i.ma, label %bb.bv, label %"_ZN103_$LT$actix_web..http..header..preference..Preference$LT$T$GT$$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h1029259d73c004abE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN103_$LT$actix_web..http..header..preference..Preference$LT$T$GT$$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h1029259d73c004abE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc52.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10174.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10174.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 7, i1 false), !noalias !18344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !18337
  br label %.loopexit18.i.i.i.i.i.i.i

bb.bo:                                            ; preds = %bb.bl
  %.not6.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.lt, 2 ; 2 uses
  br i1 %.not6.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ls, i64 2
  %i.mc = load i8, ptr %i.mb, align 1, !alias.scope !18345, !noalias !18323, !noundef !27
  %i.md = icmp sgt i8 %i.mc, -65
  br i1 %i.md, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.thread203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.invoke.i.i.i.i.i"

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.bo
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ls) ]
  br label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.thread203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.invoke.i.i.i.i.i": ; preds = %bb.br, %bb.bp
  %i.me = phi i64 [ 0, %bb.bp ], [ 2, %bb.br ]
  %i.mf = phi i64 [ 2, %bb.bp ], [ %i.lt, %bb.br ]
  %i.mg = phi ptr [ @57, %bb.bp ], [ @58, %bb.br ]
  invoke void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ls, i64 noundef %i.lt, i64 noundef %i.me, i64 noundef %i.mf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mg) #43
          to label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.cont.i.i.i.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i, !noalias !18258

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.cont.i.i.i.i.i": ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.invoke.i.i.i.i.i"
  unreachable

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.thread203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.bp
  %i.mh = load i16, ptr %i.ls, align 1
  %i.mi = icmp ne i16 %i.mh, 15729
  %i.mj = zext i1 %i.mi to i32
  %i.mk = icmp eq i32 %i.mj, 0
  br i1 %i.mk, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bs, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.thread203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  br i1 %.not6.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ls, i64 2
  %i.mm = load i8, ptr %i.ml, align 1, !alias.scope !18348, !noalias !18323, !noundef !27
  %i.mn = icmp sgt i8 %i.mm, -65
  br i1 %i.mn, label %bb.bt, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.invoke.i.i.i.i.i"

bb.bs:                                            ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.thread203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.mo = load i16, ptr %i.ls, align 1
  %i.mp = icmp ne i16 %i.mo, 15697
  %i.mq = zext i1 %i.mp to i32
  %i.mr = icmp eq i32 %i.mq, 0
  br i1 %i.mr, label %bb.bq, label %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.bt:                                            ; preds = %bb.br
  %i.ms = add i64 %i.lt, -2                       ; 2 uses
  %i.mt = icmp ugt i64 %i.ms, 5
  br i1 %i.mt, label %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h9e5679709f744379E.exit.thread.i.i.i.i.i.i.i.i.i.i.i", label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %bb.bt, %bb.bq
  %i.mu = phi i64 [ %i.ms, %bb.bt ], [ 0, %bb.bq ]
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ls, i64 2
  %i.mw = invoke i64 @"_ZN4core3num7dec2flt60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$f32$GT$8from_str17hd393ea1bf0d9426cE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.mv, i64 noundef %i.mu)
          to label %.noexc55.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i.i, !noalias !18258 ; 2 uses

.noexc55.i.i.i.i.i:                               ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mx = trunc i64 %i.mw to i1
  br i1 %i.mx, label %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h9e5679709f744379E.exit.thread.i.i.i.i.i.i.i.i.i.i.i", label %bb.bu

bb.bu:                                            ; preds = %.noexc55.i.i.i.i.i
  %.sroa.5155.0.extract.shift.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = lshr i64 %i.mw, 32
  %.sroa.5155.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc nuw i64 %.sroa.5155.0.extract.shift.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i32
  %i.my = bitcast i32 %.sroa.5155.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to float ; 3 uses
  %i.mz = fcmp oge float %i.my, 0.000000e+00
  %i.na = fcmp ole float %i.my, 1.000000e+00
  %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i1 %i.mz, %i.na
  %i.nb = fmul float %i.my, 1.000000e+03
  %i.nc = call i16 @llvm.fptoui.sat.i16.f32(float %i.nb)
  br i1 %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h9e5679709f744379E.exit.thread.i.i.i.i.i.i.i.i.i.i.i"

bb.bv:                                            ; preds = %.noexc52.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !18337
  %i.nd = inttoptr i64 %.sroa.6170.8.copyload171.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to ptr ; 3 uses
  %i.ne = icmp eq i8 %.sroa.9.8.copyload173.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 10
  br i1 %i.ne, label %bb.bw, label %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h9e5679709f744379E.exit.thread.i.i.i.i.i.i.i.i.i.i.i"

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.nd) ]
  %i.nf = and i64 %.sroa.6170.8.copyload171.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  switch i64 %i.nf, label %.unreachabledefault [
    i64 2, label %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h9e5679709f744379E.exit.thread.i.i.i.i.i.i.i.i.i.i.i"
    i64 3, label %bb.bx
    i64 0, label %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h9e5679709f744379E.exit.thread.i.i.i.i.i.i.i.i.i.i.i"
    i64 1, label %bb.by
  ], !prof !196

bb.bx:                                            ; preds = %bb.bw
  %i.ng = icmp ult i64 %.sroa.6170.8.copyload171.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 180388626432
  call void @llvm.assume(i1 %i.ng)
  br label %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h9e5679709f744379E.exit.thread.i.i.i.i.i.i.i.i.i.i.i"

bb.by:                                            ; preds = %bb.bw
  %i.nh = getelementptr i8, ptr %i.nd, i64 -1     ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.nh) ]
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.nh, align 8, !noalias !18351 ; 5 uses
  %i.ni = getelementptr i8, ptr %i.nd, i64 7
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ni, align 8, !noalias !18351, !nonnull !27, !align !148, !noundef !27 ; 3 uses
  %i.nj = load ptr, ptr %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !invariant.load !27, !noalias !18351 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.nj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  invoke void %i.nj(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.ca unwind label %bb.cb, !noalias !18351

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.nk = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.nl = load i64, ptr %i.nk, align 8, !range !28, !invariant.load !27, !noalias !18351
  %i.nm = icmp eq i64 %i.nl, 0
  br i1 %i.nm, label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hf9f3542050d139d7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ca
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @mi_free(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) #38, !noalias !18351
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hf9f3542050d139d7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.cb:                                            ; preds = %bb.bz
  %i.nn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.np = load i64, ptr %i.no, align 8, !range !28, !invariant.load !27, !noalias !18351
  %i.nq = icmp eq i64 %i.np, 0
  br i1 %i.nq, label %common.resume.sink.split.i.i.i.i.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.cb
  call void @mi_free(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) #38, !noalias !18351
  br label %common.resume.sink.split.i.i.i.i.i.i.i

common.resume.sink.split.i.i.i.i.i.i.i:           ; preds = %bb.cd, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.cb
  %.sink.i.i.i.i.i.i.i = phi ptr [ %i.nz, %bb.cd ], [ %i.nh, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.nh, %bb.cb ]
  %common.resume.op.ph.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ny, %bb.cd ], [ %i.nn, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.nn, %bb.cb ]
  call void @mi_free(ptr noundef nonnull %.sink.i.i.i.i.i.i.i) #38, !noalias !18354
  br label %.body.i.i.i.i.i

"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hf9f3542050d139d7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.ca
  call void @mi_free(ptr noundef nonnull %i.nh) #38, !noalias !18351
  br label %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h9e5679709f744379E.exit.thread.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h9e5679709f744379E.exit.thread.i.i.i.i.i.i.i.i.i.i.i": ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hf9f3542050d139d7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.bx, %bb.bw, %bb.bw, %bb.bv, %bb.bu, %.noexc55.i.i.i.i.i, %bb.bt, %bb.bl, %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %select.unfold.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.jq, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hc6072f5912c23af7E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.backedge

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.backedge:            ; preds = %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h9e5679709f744379E.exit.thread.i.i.i.i.i.i.i.i.i.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb4f0886b6e27c50eE.exit.i.i.i.i.i.i.i"
  %.be = phi i1 [ %i.jo, %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h9e5679709f744379E.exit.thread.i.i.i.i.i.i.i.i.i.i.i" ], [ false, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb4f0886b6e27c50eE.exit.i.i.i.i.i.i.i" ]
  %.be554 = phi i64 [ %i.jp, %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h9e5679709f744379E.exit.thread.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.jn, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb4f0886b6e27c50eE.exit.i.i.i.i.i.i.i" ]
  %.lcssa376061.i.i.i.i.i.i.i.i.i.i.i.be = phi i64 [ %.lcssa3759.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h9e5679709f744379E.exit.thread.i.i.i.i.i.i.i.i.i.i.i" ], [ %.promoted58.i.i.i.i43.i.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb4f0886b6e27c50eE.exit.i.i.i.i.i.i.i" ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.loopexit18.i.i.i.i.i.i.i:                        ; preds = %bb.bm, %"_ZN103_$LT$actix_web..http..header..preference..Preference$LT$T$GT$$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h1029259d73c004abE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.0169.1194.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.lz, %"_ZN103_$LT$actix_web..http..header..preference..Preference$LT$T$GT$$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h1029259d73c004abE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ -9223372036854775807, %bb.bm ] ; 2 uses
  %.sroa.6170.1193.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.6170.8.copyload171.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN103_$LT$actix_web..http..header..preference..Preference$LT$T$GT$$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h1029259d73c004abE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ undef, %bb.bm ] ; 2 uses
  %.sroa.9.1192.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.9.8.copyload173.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN103_$LT$actix_web..http..header..preference..Preference$LT$T$GT$$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h1029259d73c004abE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ undef, %bb.bm ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.83.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10174.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 7, i1 false), !noalias !18354
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10174.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  %i.nr = load i64, ptr %i.hz, align 8, !alias.scope !18355, !noalias !18356, !noundef !27 ; 5 uses
  %i.ns = icmp ult i64 %i.nr, 288230376151711744
  call void @llvm.assume(i1 %i.ns)
  %i.nt = load i64, ptr %i.ag, align 8, !range !28, !alias.scope !18355, !noalias !18356, !noundef !27
  %i.nu = icmp eq i64 %i.nr, %i.nt
  br i1 %i.nu, label %bb.ce, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb4f0886b6e27c50eE.exit.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb4f0886b6e27c50eE.exit.i.i.i.i.i.i.i": ; preds = %bb.ce, %.loopexit18.i.i.i.i.i.i.i
  %i.nv = load ptr, ptr %i.hy, align 8, !alias.scope !18355, !noalias !18356, !nonnull !27, !noundef !27
  %i.nw = getelementptr inbounds nuw [32 x i8], ptr %i.nv, i64 %i.nr ; 5 uses
  store i64 %.sroa.0169.1194.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.nw, align 8, !noalias !18354
  %.sroa.48.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  store i64 %.sroa.6170.1193.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.48.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !18354
  %.sroa.59.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nw, i64 16
  store i8 %.sroa.9.1192.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.59.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !18354
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nw, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.83.i.i.i.i.i.i.i, i64 7, i1 false), !noalias !18354
  %.sroa.710.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nw, i64 24
  store i16 %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.710.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !18354
  %i.nx = add nuw nsw i64 %i.nr, 1
  store i64 %i.nx, ptr %i.hz, align 8, !alias.scope !18355, !noalias !18356
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10174.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  br i1 %i.jo, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hc6072f5912c23af7E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.backedge

bb.cc:                                            ; preds = %bb.ce
  %i.ny = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  switch i64 %.sroa.0169.1194.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cd [
    i64 -9223372036854775807, label %.body.i.i.i.i.i
    i64 -9223372036854775808, label %.body.i.i.i.i.i
    i64 0, label %.body.i.i.i.i.i
  ]

bb.cd:                                            ; preds = %bb.cc
  %i.nz = inttoptr i64 %.sroa.6170.1193.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to ptr ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.nz) ]
  br label %common.resume.sink.split.i.i.i.i.i.i.i

bb.ce:                                            ; preds = %.loopexit18.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hef594eaabfc18d82E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag, i64 noundef %i.nr, i64 noundef 1, i64 noundef 8, i64 noundef 32)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb4f0886b6e27c50eE.exit.i.i.i.i.i.i.i" unwind label %bb.cc, !noalias !18356

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hc6072f5912c23af7E.exit.i.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb4f0886b6e27c50eE.exit.i.i.i.i.i.i.i", %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h9e5679709f744379E.exit.thread.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10174.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.83.i.i.i.i.i.i.i)
  %i.oa = icmp eq ptr %i.ib, %i.ht
  br i1 %i.oa, label %_ZN10actix_http6header5utils20from_comma_delimited17hc08baae044b67f80E.exit.i.i.i.i, label %bb.ay

.thread16.i.i.i:                                  ; preds = %bb.bc, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb656d2fb925a1861E.exit.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !18258
  br label %.noexc62.i

_ZN10actix_http6header5utils20from_comma_delimited17hc08baae044b67f80E.exit.i.i.i.i: ; preds = %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hc6072f5912c23af7E.exit.i.i.i.i.i"
  %.sroa.0.0.copyload1.pr.i.i.i.i = load i64, ptr %i.ag, align 8, !noalias !18201 ; 2 uses
  %.sroa.6.0.copyload3.i.i.i.i = load i64, ptr %i.hy, align 8, !noalias !18201 ; 4 uses
  %.sroa.7.0.copyload5.i.i.i.i = load i64, ptr %i.hz, align 8, !noalias !18201 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !18258
  %i.ob = icmp eq i64 %.sroa.0.0.copyload1.pr.i.i.i.i, -9223372036854775808
  br i1 %i.ob, label %bb.cf, label %bb.co

bb.cf:                                            ; preds = %_ZN10actix_http6header5utils20from_comma_delimited17hc08baae044b67f80E.exit.i.i.i.i
  %i.oc = inttoptr i64 %.sroa.6.0.copyload3.i.i.i.i to ptr ; 3 uses
  %i.od = and i64 %.sroa.7.0.copyload5.i.i.i.i, 255
  %i.oe = icmp eq i64 %i.od, 10
  br i1 %i.oe, label %bb.cg, label %.noexc62.i

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.oc) ]
  %i.of = and i64 %.sroa.6.0.copyload3.i.i.i.i, 3
  switch i64 %i.of, label %default.unreachable [
    i64 2, label %.noexc62.i
    i64 3, label %bb.ch
    i64 0, label %.noexc62.i
    i64 1, label %bb.ci
  ], !prof !196

bb.ch:                                            ; preds = %bb.cg
  %i.og = icmp ult i64 %.sroa.6.0.copyload3.i.i.i.i, 180388626432
  call void @llvm.assume(i1 %i.og)
  br label %.noexc62.i

bb.ci:                                            ; preds = %bb.cg
  %i.oh = getelementptr i8, ptr %i.oc, i64 -1     ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.oh) ]
  %.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.oh, align 8, !noalias !18357 ; 5 uses
  %i.oi = getelementptr i8, ptr %i.oc, i64 7
  %.val1.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.oi, align 8, !noalias !18357, !nonnull !27, !align !148, !noundef !27 ; 3 uses
  %i.oj = load ptr, ptr %.val1.i.i.i.i.i.i.i.i.i.i, align 8, !invariant.load !27, !noalias !18357 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i11.i.i.i = icmp eq ptr %i.oj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i11.i.i.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i.i) ]
  invoke void %i.oj(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i)
          to label %bb.ck unwind label %bb.cl, !noalias !18357

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.ok = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ol = load i64, ptr %i.ok, align 8, !range !28, !invariant.load !27, !noalias !18357
  %i.om = icmp eq i64 %i.ol, 0
  br i1 %i.om, label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hf9f3542050d139d7E.exit.i.i.i.i.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ck
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i.i) ]
  call void @mi_free(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i) #38, !noalias !18357
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hf9f3542050d139d7E.exit.i.i.i.i.i.i.i.i.i"

bb.cl:                                            ; preds = %bb.cj
  %i.on = landingpad { ptr, i32 }
          cleanup
  %i.oo = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.op = load i64, ptr %i.oo, align 8, !range !28, !invariant.load !27, !noalias !18357
  %i.oq = icmp eq i64 %i.op, 0
  br i1 %i.oq, label %bb.cm, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.cl
  call void @mi_free(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i) #38, !noalias !18357
  br label %bb.cm

bb.cm:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i", %bb.cl
  call void @mi_free(ptr noundef nonnull %i.oh) #38, !noalias !18357
  br label %.thread.i.i

"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hf9f3542050d139d7E.exit.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.ck
  call void @mi_free(ptr noundef nonnull %i.oh) #38, !noalias !18357
  br label %.noexc62.i

bb.cn:                                            ; preds = %bb.ax, %bb.as, %bb.am
  %i.or = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.co:                                            ; preds = %_ZN10actix_http6header5utils20from_comma_delimited17hc08baae044b67f80E.exit.i.i.i.i, %_ZN10actix_http6header5utils20from_comma_delimited17hc08baae044b67f80E.exit.thread15.i.i.i.i
  %.sroa.10.0.i.i = phi i64 [ %.sroa.7.0.copyload5.i.i.i.i, %_ZN10actix_http6header5utils20from_comma_delimited17hc08baae044b67f80E.exit.i.i.i.i ], [ 0, %_ZN10actix_http6header5utils20from_comma_delimited17hc08baae044b67f80E.exit.thread15.i.i.i.i ] ; 5 uses
  %.sroa.9.0.i.i = phi i64 [ %.sroa.6.0.copyload3.i.i.i.i, %_ZN10actix_http6header5utils20from_comma_delimited17hc08baae044b67f80E.exit.i.i.i.i ], [ 8, %_ZN10actix_http6header5utils20from_comma_delimited17hc08baae044b67f80E.exit.thread15.i.i.i.i ]
  %.sroa.0.0140.i.i = phi i64 [ %.sroa.0.0.copyload1.pr.i.i.i.i, %_ZN10actix_http6header5utils20from_comma_delimited17hc08baae044b67f80E.exit.i.i.i.i ], [ 0, %_ZN10actix_http6header5utils20from_comma_delimited17hc08baae044b67f80E.exit.thread15.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !18199
  store i64 %.sroa.0.0140.i.i, ptr %i.at, align 8, !noalias !18199
  %.sroa.481.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  store i64 %.sroa.9.0.i.i, ptr %.sroa.481.0..sroa_idx.i.i, align 8, !noalias !18199
  %.sroa.582.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 %.sroa.10.0.i.i, ptr %.sroa.582.0..sroa_idx.i.i, align 8, !noalias !18199
  %i.os = load ptr, ptr @_ZN9actix_web10middleware8compress19SUPPORTED_ENCODINGS17h33675e1e0690e36cE, align 8, !noalias !18199, !nonnull !27, !align !148, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !18362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !18366
  %i.ot = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 16 ; 2 uses
  %i.ov = load i8, ptr %i.ou, align 8, !range !188, !noalias !18371, !noundef !27
  %i.ow = trunc nuw i8 %i.ov to i1
  br i1 %i.ow, label %._ZN4core3ops8function6FnOnce9call_once17h75088166343159feE.exit_crit_edge.i.i.i.i.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17ha3cc336d5feaf555E.exit.i.i.i.i.i.i.i.i", !prof !222

._ZN4core3ops8function6FnOnce9call_once17h75088166343159feE.exit_crit_edge.i.i.i.i.i.i.i.i: ; preds = %bb.co
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.ot, align 8, !noalias !18380
  %.phi.trans.insert.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ot, i64 8
  %.pre1.i.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i, align 8, !noalias !18380
  br label %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i.i.i.i.i"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17ha3cc336d5feaf555E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.co
  %i.ox = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc33.i.i unwind label %bb.dy, !noalias !18199 ; 2 uses

.noexc33.i.i:                                     ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17ha3cc336d5feaf555E.exit.i.i.i.i.i.i.i.i"
  %i.oy = extractvalue { i64, i64 } %i.ox, 0
  %i.oz = extractvalue { i64, i64 } %i.ox, 1      ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ot, i64 8
  store i64 %i.oz, ptr %i.pa, align 8, !noalias !18381
  store i8 1, ptr %i.ou, align 8, !noalias !18381
  br label %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i.i.i.i.i"

"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i.i.i.i.i": ; preds = %.noexc33.i.i, %._ZN4core3ops8function6FnOnce9call_once17h75088166343159feE.exit_crit_edge.i.i.i.i.i.i.i.i
  %.pre-phi14.i.i.i.i.i = phi i64 [ %.pre1.i.i.i.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h75088166343159feE.exit_crit_edge.i.i.i.i.i.i.i.i ], [ %i.oz, %.noexc33.i.i ]
  %i.pb = phi i64 [ %.pre.i.i.i.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h75088166343159feE.exit_crit_edge.i.i.i.i.i.i.i.i ], [ %i.oy, %.noexc33.i.i ] ; 2 uses
  %i.pc = add i64 %i.pb, 1
  store i64 %i.pc, ptr %i.ot, align 8, !noalias !18380
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) @86, i64 32, i1 false), !noalias !18366
  %.sroa.43.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 4 uses
  store i64 %i.pb, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i, align 8, !noalias !18366
  %.sroa.54.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 40 ; 2 uses
  store i64 %.pre-phi14.i.i.i.i.i, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i, align 8, !noalias !18366
  call void @llvm.experimental.noalias.scope.decl(metadata !18384)
  call void @llvm.experimental.noalias.scope.decl(metadata !18387)
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 3 uses
  %i.pe = invoke fastcc i64 @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h1cc17ae5e0fe2548E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ab, i64 noundef 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.43.0..sroa_idx.i.i.i.i.i)
          to label %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i.i.i.i.i._crit_edge" unwind label %.loopexit.split-lp.i.i.i.i.i ; 0 uses

"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i.i.i.i.i._crit_edge": ; preds = %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i.i.i.i.i"
end_hunk_1
begin_hunk_2_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
  %i.w = alloca [2832 x i8], align 8              ; 8 uses
  %i.x = alloca [256 x i8], align 4               ; 5 uses
  %i.y = alloca [256 x i8], align 4               ; 6 uses
  %i.z = alloca [256 x i8], align 4               ; 6 uses
  %i.aa = alloca [256 x i8], align 4              ; 6 uses
  %i.ab = alloca [2832 x i8], align 8             ; 9 uses
  %i.ac = alloca [48 x i8], align 8               ; 6 uses
  %i.ad = alloca [48 x i8], align 8               ; 6 uses
  %i.ae = alloca [48 x i8], align 8               ; 6 uses
  %i.af = alloca [48 x i8], align 8               ; 6 uses
  %i.ag = alloca [48 x i8], align 8               ; 6 uses
  %i.ah = alloca [48 x i8], align 8               ; 6 uses
  %i.ai = alloca [1040 x i8], align 8             ; 12 uses
  %i.aj = alloca [1040 x i8], align 8             ; 12 uses
  %i.ak = alloca [1040 x i8], align 8             ; 8 uses
  %i.al = alloca [256 x i8], align 4              ; 5 uses
  %i.am = alloca [256 x i8], align 4              ; 6 uses
  %i.an = alloca [256 x i8], align 4              ; 6 uses
  %i.ao = alloca [256 x i8], align 4              ; 6 uses
  %i.ap = alloca [1040 x i8], align 8             ; 9 uses
  %i.aq = tail call noundef i64 @_ZN6brotli3enc14block_splitter13CountLiterals17h2de983e874a42e41E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %2) ; 42 uses
  %i.ar = icmp slt i64 %i.aq, 0
  %.sink.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sink.i.sroa.gep14 = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sink.i.sroa.gep15 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sink.i.sroa.gep16 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sink.i.sroa.gep17 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sink.i.sroa.gep18 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sink.i.sroa.gep20 = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %.sink.i.sroa.gep21 = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %.sink.i.sroa.gep22 = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %.sink.i.sroa.gep23 = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %.sink.i.sroa.gep24 = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %.sink.i.sroa.gep25 = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %.sink.i.sroa.gep27 = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sink.i.sroa.gep28 = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sink.i.sroa.gep29 = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sink.i.sroa.gep30 = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sink.i.sroa.gep31 = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sink.i.sroa.gep32 = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sink.i.sroa.gep34 = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sink.i.sroa.gep35 = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %.sink.i.sroa.gep36 = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.sink.i.sroa.gep37 = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sink.i.sroa.gep38 = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.sink.i.sroa.gep39 = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.sink.i123.sroa.gep = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sink.i123.sroa.gep40 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sink.i123.sroa.gep41 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sink.i123.sroa.gep42 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sink.i123.sroa.gep43 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sink.i123.sroa.gep44 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sink.i123.sroa.gep46 = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sink.i123.sroa.gep47 = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sink.i123.sroa.gep48 = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.sink.i123.sroa.gep49 = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sink.i123.sroa.gep50 = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.sink.i123.sroa.gep51 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sink.i123.sroa.gep53 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sink.i123.sroa.gep54 = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sink.i123.sroa.gep55 = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sink.i123.sroa.gep56 = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sink.i123.sroa.gep57 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sink.i123.sroa.gep58 = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sink.i123.sroa.gep60 = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sink.i123.sroa.gep61 = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sink.i123.sroa.gep62 = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sink.i123.sroa.gep63 = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sink.i123.sroa.gep64 = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sink.i123.sroa.gep65 = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sink.i553.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sink.i553.sroa.gep66 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sink.i553.sroa.gep67 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sink.i553.sroa.gep68 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sink.i553.sroa.gep69 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sink.i553.sroa.gep70 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sink.i553.sroa.gep72 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sink.i553.sroa.gep73 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sink.i553.sroa.gep74 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sink.i553.sroa.gep75 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sink.i553.sroa.gep76 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sink.i553.sroa.gep77 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sink.i553.sroa.gep79 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sink.i553.sroa.gep80 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sink.i553.sroa.gep81 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sink.i553.sroa.gep82 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sink.i553.sroa.gep83 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sink.i553.sroa.gep84 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sink.i553.sroa.gep86 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sink.i553.sroa.gep87 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sink.i553.sroa.gep88 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sink.i553.sroa.gep89 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sink.i553.sroa.gep90 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sink.i553.sroa.gep91 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br i1 %i.ar, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.as = icmp eq i64 %i.aq, 0                    ; 3 uses
  br i1 %i.as, label %bb.f, label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34243
  %i.at = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.aq, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !34243 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.av = ptrtoint ptr %i.at to i64
  br label %bb.f

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.aq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !34248
  unreachable

bb.e:                                             ; preds = %.invoke2924, %.invoke, %bb.f
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %.sroa.10.0.i.i = phi i64 [ %i.av, %bb.c ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ]
  %i.ax = inttoptr i64 %.sroa.10.0.i.i to ptr     ; 12 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ax) ]
  invoke void @_ZN6brotli3enc14block_splitter23CopyLiteralsToByteArray17h2efc995e39fc9311E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 1 %i.ax, i64 noundef %i.aq)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34252)
  %i.ay = udiv i64 %i.aq, 544
  %i.az = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 99) ; 8 uses
  %spec.store.select.i = add nuw nsw i64 %i.az, 1 ; 17 uses
  br i1 %i.as, label %_ZN6brotli3enc14block_splitter15SplitByteVector17hd353c100c5629803E.exit.thread, label %bb.h

_ZN6brotli3enc14block_splitter15SplitByteVector17hd353c100c5629803E.exit.thread: ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 1, ptr %i.ba, align 8, !alias.scope !34252, !noalias !34249
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit"

bb.h:                                             ; preds = %bb.g
  %i.bb = icmp samesign ult i64 %i.aq, 128
  br i1 %i.bb, label %bb.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.h
  %i.bc = mul nuw nsw i64 %spec.store.select.i, 1040 ; 3 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34254
  %i.bd = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.bc, i64 noundef range(i64 1, 9) 8) #38, !noalias !34254 ; 17 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %.invoke2924, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.not101.i = icmp samesign ult i64 %i.aq, 544
  br i1 %.not101.i, label %.loopexit115.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i"
  %i.bf = add nsw i64 %i.az, -1
  %xtraiter = and i64 %i.az, 7                    ; 3 uses
  %i.bg = icmp ult i64 %i.bf, 7
  br i1 %i.bg, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter = and i64 %i.az, 120
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %.sroa.0.08.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.preheader.new ], [ %i.bo, %.lr.ph.i.i.i.i ] ; 17 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i.i, i8 0, i64 1032, i1 false), !noalias !34262
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i, align 8, !noalias !34263
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 1040
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bh, i8 0, i64 1032, i1 false), !noalias !34262
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.1, align 8, !noalias !34263
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 2080
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bi, i8 0, i64 1032, i1 false), !noalias !34262
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.2, align 8, !noalias !34263
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 3120
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 4152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bj, i8 0, i64 1032, i1 false), !noalias !34262
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.3, align 8, !noalias !34263
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 4160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 5192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bk, i8 0, i64 1032, i1 false), !noalias !34262
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.4, align 8, !noalias !34263
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 5200
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 6232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bl, i8 0, i64 1032, i1 false), !noalias !34262
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.5, align 8, !noalias !34263
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 6240
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 7272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bm, i8 0, i64 1032, i1 false), !noalias !34262
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.6, align 8, !noalias !34263
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 7280
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 8312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bn, i8 0, i64 1032, i1 false), !noalias !34262
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.7, align 8, !noalias !34263
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 8320 ; 3 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit115.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %.val110.i = load ptr, ptr %7, align 8, !alias.scope !34252, !noalias !34249, !nonnull !27, !align !206, !noundef !27 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %.val111.i = load i64, ptr %i.bp, align 8, !alias.scope !34252, !noalias !34249, !noundef !27 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !34252, !noalias !34249, !noundef !27 ; 6 uses
  %i.bs = add i64 %i.br, 1                        ; 7 uses
  %i.bt = icmp ult i64 %.val111.i, %i.bs
  br i1 %i.bt, label %bb.gh, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit226.i"

.thread.i:                                        ; preds = %bb.m, %.split24.us.i.invoke.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit.i"

.loopexit115.i.loopexit.unr-lcssa:                ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit115.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %.loopexit115.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %.sroa.0.08.i.i.i.i.epil.init = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.preheader ], [ %i.bo, %.loopexit115.i.loopexit.unr-lcssa ]
  %lcmp.mod4656 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod4656)
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %.sroa.0.08.i.i.i.i.epil = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.epil ], [ %.sroa.0.08.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.epil, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i.i.epil, i8 0, i64 1032, i1 false), !noalias !34262
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.epil, align 8, !noalias !34263
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.epil, i64 1040 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit115.i, label %.lr.ph.i.i.i.i.epil, !llvm.loop !34266

.loopexit115.i:                                   ; preds = %.loopexit115.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i"
  %.sroa.0.0.lcssa15.i.i.i.i = phi ptr [ %i.bd, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i" ], [ %i.bo, %.loopexit115.i.loopexit.unr-lcssa ], [ %i.bv, %.lr.ph.i.i.i.i.epil ] ; 2 uses
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.0.lcssa15.i.i.i.i, i8 0, i64 1032, i1 false), !noalias !34262
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i, align 8, !noalias !34263
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34270)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bc
  %xtraiter4657 = and i64 %spec.store.select.i, 7 ; 2 uses
  %lcmp.mod4658.not = icmp eq i64 %xtraiter4657, 0
  br i1 %lcmp.mod4658.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.loopexit115.i, %.lr.ph.i.i.i.prol
  %.sroa.02.05.i.i.i.prol = phi ptr [ %i.bx, %.lr.ph.i.i.i.prol ], [ %i.bd, %.loopexit115.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.loopexit115.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.prol, i64 1040 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.prol, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %.sroa.02.05.i.i.i.prol, i8 0, i64 1032, i1 false), !alias.scope !34272, !noalias !34275
  store float 3.402000e+38, ptr %i.by, align 8, !alias.scope !34276, !noalias !34275
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter4657
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !34279

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.loopexit115.i
  %.sroa.02.05.i.i.i.unr = phi ptr [ %i.bd, %.loopexit115.i ], [ %i.bx, %.lr.ph.i.i.i.prol ]
  %i.bz = icmp ult i64 %i.aq, 3808
  br i1 %i.bz, label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.preheader.split.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.sroa.02.05.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i ], [ %.sroa.02.05.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 17 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 1040
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %.sroa.02.05.i.i.i, i8 0, i64 1032, i1 false), !alias.scope !34272, !noalias !34275
  store float 3.402000e+38, ptr %i.cb, align 8, !alias.scope !34276, !noalias !34275
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 2080
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.ca, i8 0, i64 1032, i1 false), !alias.scope !34272, !noalias !34275
  store float 3.402000e+38, ptr %i.cd, align 8, !alias.scope !34276, !noalias !34275
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 3120
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.cc, i8 0, i64 1032, i1 false), !alias.scope !34272, !noalias !34275
  store float 3.402000e+38, ptr %i.cf, align 8, !alias.scope !34276, !noalias !34275
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 4160
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 4152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.ce, i8 0, i64 1032, i1 false), !alias.scope !34272, !noalias !34275
  store float 3.402000e+38, ptr %i.ch, align 8, !alias.scope !34276, !noalias !34275
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 5200
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 5192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.cg, i8 0, i64 1032, i1 false), !alias.scope !34272, !noalias !34275
  store float 3.402000e+38, ptr %i.cj, align 8, !alias.scope !34276, !noalias !34275
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 6240
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 6232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.ci, i8 0, i64 1032, i1 false), !alias.scope !34272, !noalias !34275
  store float 3.402000e+38, ptr %i.cl, align 8, !alias.scope !34276, !noalias !34275
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 7280
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 7272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.ck, i8 0, i64 1032, i1 false), !alias.scope !34272, !noalias !34275
  store float 3.402000e+38, ptr %i.cn, align 8, !alias.scope !34276, !noalias !34275
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 8320 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 8312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.cm, i8 0, i64 1032, i1 false), !alias.scope !34272, !noalias !34275
  store float 3.402000e+38, ptr %i.cp, align 8, !alias.scope !34276, !noalias !34275
  %i.cq = icmp eq ptr %i.co, %i.bw
  br i1 %i.cq, label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.preheader.split.i.i, label %.lr.ph.i.i.i

_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.preheader.split.i.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %i.cr = udiv i64 %i.aq, %spec.store.select.i
  %i.cs = add nsw i64 %i.aq, -71
  br label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.preheader.split.split.i.i

_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.loopexit.i.i: ; preds = %.preheader.i.i.i
  %exitcond.not.i.i = icmp eq i64 %.sroa.07.019.i.i, %i.az
  br i1 %exitcond.not.i.i, label %.lr.ph.i.i, label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.preheader.split.split.i.i

_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.preheader.split.split.i.i: ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.loopexit.i.i, %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.preheader.split.i.i
  %.sroa.0.020.i.i = phi i32 [ %.sroa.0.1.i.i, %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.loopexit.i.i ], [ 7, %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.preheader.split.i.i ] ; 3 uses
  %.sroa.07.019.i.i = phi i64 [ %i.ct, %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.loopexit.i.i ], [ 0, %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.preheader.split.i.i ] ; 5 uses
  %i.ct = add nuw nsw i64 %.sroa.07.019.i.i, 1
  %i.cu = mul i64 %.sroa.07.019.i.i, %i.aq
  %i.cv = udiv i64 %i.cu, %spec.store.select.i    ; 2 uses
  %i.cw = icmp eq i64 %.sroa.07.019.i.i, 0
  br i1 %i.cw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.k, %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.preheader.split.split.i.i
  %.sroa.04.0.i.i = phi i64 [ %i.cv, %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.preheader.split.split.i.i ], [ %i.dd, %bb.k ] ; 2 uses
  %.sroa.0.1.i.i = phi i32 [ %.sroa.0.020.i.i, %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.preheader.split.split.i.i ], [ %spec.store.select.i.i, %bb.k ]
  %i.cx = add i64 %.sroa.04.0.i.i, 70
  %.not.i.i = icmp ult i64 %i.cx, %i.aq
  %spec.select.i.i = select i1 %.not.i.i, i64 %.sroa.04.0.i.i, i64 %i.cs ; 4 uses
  %i.cy = icmp ugt i64 %spec.select.i.i, %i.aq
  br i1 %i.cy, label %.split24.us.i.invoke.i, label %bb.l, !prof !29

bb.k:                                             ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.preheader.split.split.i.i
  %i.cz = icmp eq i32 %.sroa.0.020.i.i, 0
  %i.da = mul i32 %.sroa.0.020.i.i, 16807
  %spec.store.select.i.i = select i1 %i.cz, i32 1, i32 %i.da ; 2 uses
  %i.db = zext i32 %spec.store.select.i.i to i64
  %i.dc = urem i64 %i.db, %i.cr
  %i.dd = add i64 %i.dc, %i.cv
  br label %bb.j

bb.l:                                             ; preds = %bb.j
  %i.de = getelementptr inbounds nuw [1040 x i8], ptr %i.bd, i64 %.sroa.07.019.i.i ; 3 uses
  %i.df = sub nuw nsw i64 %i.aq, %spec.select.i.i ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ax, i64 %spec.select.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34283)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 1024 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !alias.scope !34285, !noalias !34288, !noundef !27
  %i.dj = add i64 %i.di, 70
  store i64 %i.dj, ptr %i.dh, align 8, !alias.scope !34289, !noalias !34288
  %i.dk = icmp ugt i64 %i.df, 69
  br i1 %i.dk, label %.preheader.i.i.i, label %.split24.us.i.invoke.i, !prof !202

.split24.us.i.invoke.i:                           ; preds = %bb.l, %bb.j
  %.ph220 = phi i64 [ 0, %bb.l ], [ %spec.select.i.i, %bb.j ]
  %.ph221 = phi i64 [ 70, %bb.l ], [ %i.aq, %bb.j ]
  %.ph222 = phi i64 [ %i.df, %bb.l ], [ %i.aq, %bb.j ]
  %.ph223 = phi ptr [ @1934, %bb.l ], [ @1573, %bb.j ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.ph220, i64 noundef %.ph221, i64 noundef %.ph222, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.ph223) #43
          to label %.split24.us.i.cont.i unwind label %.thread.i, !noalias !34262

.split24.us.i.cont.i:                             ; preds = %.split24.us.i.invoke.i
  unreachable

.preheader.i.i.i:                                 ; preds = %bb.l, %.preheader.i.i.i
  %.sroa.02.0.idx7.i.i.i = phi i64 [ %.sroa.02.0.add.i.i.i.1, %.preheader.i.i.i ], [ 0, %bb.l ] ; 3 uses
  %.sroa.02.0.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.sroa.02.0.idx7.i.i.i
  %i.dl = load i8, ptr %.sroa.02.0.ptr.i.i.i, align 1, !alias.scope !34292, !noalias !34295, !noundef !27
  %i.dm = zext i8 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.dm ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !alias.scope !34296, !noalias !34288, !noundef !27
  %i.dp = add i32 %i.do, 1
  store i32 %i.dp, ptr %i.dn, align 4, !alias.scope !34296, !noalias !34288
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.sroa.02.0.idx7.i.i.i
  %.sroa.02.0.ptr.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  %i.dr = load i8, ptr %.sroa.02.0.ptr.i.i.i.1, align 1, !alias.scope !34292, !noalias !34295, !noundef !27
  %i.ds = zext i8 %i.dr to i64
  %.sroa.02.0.add.i.i.i.1 = add nuw nsw i64 %.sroa.02.0.idx7.i.i.i, 2 ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.ds ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !alias.scope !34296, !noalias !34288, !noundef !27
  %i.dv = add i32 %i.du, 1
  store i32 %i.dv, ptr %i.dt, align 4, !alias.scope !34296, !noalias !34288
  %i.dw = icmp eq i64 %.sroa.02.0.add.i.i.i.1, 70
  br i1 %i.dw, label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.loopexit.i.i, label %.preheader.i.i.i

.lr.ph.i.i:                                       ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.loopexit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34300)
  %i.dx = udiv i64 %i.aq, 35
  %i.dy = add nuw nsw i64 %i.dx, 99
  %i.dz = add nuw nsw i64 %i.dy, %spec.store.select.i ; 2 uses
  %i.ea = urem i64 %i.dz, %spec.store.select.i
  %i.eb = sub nuw nsw i64 %i.dz, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ap, i64 1024
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ap, i64 1032
  %i.ee = add nsw i64 %i.aq, -69
  br label %_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit.i.i

_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit.i.i: ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17h8a3e084d90ebfcb6E.exit.i.i, %.lr.ph.i.i
  %.sroa.03.018.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.fo, %_ZN6brotli3enc9histogram21HistogramAddHistogram17h8a3e084d90ebfcb6E.exit.i.i ] ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
          cleanup
  tail call void @mi_free(ptr noundef nonnull %i.fz) #38, !noalias !34262
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i"

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i156.i: ; preds = %bb.r, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i150.i
  %.sroa.10.0.i.i151.i = phi i64 [ %i.gj, %bb.r ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i150.i ]
  %i.gl = inttoptr i64 %.sroa.10.0.i.i151.i to ptr ; 8 uses
  %i.gm = shl nuw nsw i64 %spec.store.select.i, 1 ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34360
  %i.gn = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.gm, i64 noundef range(i64 1, -9223372036854775807) 2) #38, !noalias !34360 ; 4 uses
  %i.go = icmp eq ptr %i.gn, null
  br i1 %i.go, label %bb.t, label %.split.i

bb.t:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i156.i
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 2, i64 %i.gm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc159.i unwind label %.thread55.i, !noalias !34262

.noexc159.i:                                      ; preds = %bb.t
  unreachable

.thread55.i:                                      ; preds = %bb.t
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

.split.i:                                         ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i156.i
  %i.gq = icmp slt i32 %.72.val, 12
  %..i = select i1 %i.gq, i64 3, i64 10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gl) ]
  %i.gr = add nuw nsw i64 %i.az, 2                ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.aq
  %i.gt = add nsw i64 %i.aq, -1                   ; 4 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.gt
  %i.gv = add nuw i64 %i.aq, 1
  %i.gw = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 %i.gt) ; 2 uses
  %min.iters.check = icmp ult i64 %i.gw, 32
  %i.gx = add nuw i64 %i.gw, 1                    ; 2 uses
  %i.gy = and i64 %i.gx, 31                       ; 2 uses
  %i.gz = icmp eq i64 %i.gy, 0
  %i.ha = select i1 %i.gz, i64 32, i64 %i.gy
  %n.vec = sub i64 %i.gx, %i.ha                   ; 3 uses
  %i.hb = add i64 %n.vec, 1
  br label %bb.dq

_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h033cc48a226f8774E.exit.loopexit.i: ; preds = %bb.gf
  %i.hc = icmp samesign ult i64 %.sroa.032.1424.i, %..i ; 2 uses
  %i.hd = zext i1 %i.hc to i64
  %.sroa.032.1.i = add nuw nsw i64 %.sroa.032.1424.i, %i.hd
  br i1 %i.hc, label %bb.dq, label %bb.u

.body.i:                                          ; preds = %bb.x
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit217.i"

bb.u:                                             ; preds = %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h033cc48a226f8774E.exit.loopexit.i
  tail call void @mi_free(ptr noundef nonnull align 4 %i.fv) #38, !noalias !34262
  tail call void @mi_free(ptr noundef nonnull align 4 %i.fz) #38, !noalias !34262
  br i1 %i.gg, label %bb.v, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i161.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i161.i": ; preds = %bb.u
  tail call void @mi_free(ptr noundef nonnull align 1 %i.gl) #38, !noalias !34262
  br label %bb.v

bb.v:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i161.i", %bb.u
  tail call void @mi_free(ptr noundef nonnull align 2 %i.gn) #38, !noalias !34262
  tail call void @mi_free(ptr noundef nonnull align 8 %i.bd) #38, !noalias !34262
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34370)
  %i.he = shl i64 %.sroa.0.0.i.i, 2               ; 6 uses
  %i.hf = icmp ugt i64 %.sroa.0.0.i.i, 4611686018427387903
  %i.hg = icmp ugt i64 %i.he, 9223372036854775804
  %or.cond.i.i.i.i.i164.i = or i1 %i.hf, %i.hg
  br i1 %or.cond.i.i.i.i.i164.i, label %bb.x, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i165.i, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i165.i: ; preds = %bb.v
  %i.hh = icmp eq i64 %i.he, 0
  br i1 %i.hh, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i410.thread.i.i, label %bb.w

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i410.thread.i.i: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i165.i
  %i.hi = icmp samesign ult i64 %.sroa.0.0.i.i, 2305843009213693952
  tail call void @llvm.assume(i1 %i.hi)
  br label %bb.aa

bb.w:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i165.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34372
  %i.hj = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.he, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !34372 ; 3 uses
  %i.hk = icmp eq ptr %i.hj, null
  br i1 %i.hk, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sroa.4.0.ph.i.i.i171.i = phi i64 [ 4, %bb.w ], [ 0, %bb.v ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i171.i, i64 %i.he, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc172.i unwind label %.body.i, !noalias !34262

.noexc172.i:                                      ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.hl = icmp samesign ult i64 %.sroa.0.0.i.i, 2305843009213693952
  tail call void @llvm.assume(i1 %i.hl)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34377
  %i.hm = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.he, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !34377 ; 2 uses
  %i.hn = icmp eq ptr %i.hm, null
  br i1 %i.hn, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.he, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc413.i.i unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.i.i", !noalias !34382

.noexc413.i.i:                                    ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.y, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i410.thread.i.i
  %i.ho = phi ptr [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i410.thread.i.i ], [ %i.hj, %bb.y ] ; 11 uses
  %.sroa.10.0.i.i411.i.i = phi ptr [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i410.thread.i.i ], [ %i.hm, %bb.y ] ; 6 uses
  %i.hp = shl i64 %.sroa.0.0.i.i, 4
  %i.hq = add i64 %i.hp, 1008                     ; 3 uses
  %i.hr = lshr i64 %i.hq, 6                       ; 17 uses
  %i.hs = mul i64 %i.hr, 1040                     ; 3 uses
  %or.cond.i.i.i.i.i.i.i = icmp ugt i64 %i.hq, 567592125344909311
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.ac, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.aa
  %i.ht = icmp eq i64 %i.hs, 0
  br i1 %i.ht, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i.i", label %bb.ab

bb.ab:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34383
  %i.hu = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.hs, i64 noundef range(i64 1, 9) 8) #38, !noalias !34383 ; 2 uses
  %i.hv = icmp eq ptr %i.hu, null
  br i1 %i.hv, label %bb.ac, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i.i"

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.ab ], [ 0, %bb.aa ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.hs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc415.i.i unwind label %.thread86.i.i, !noalias !34382

.noexc415.i.i:                                    ; preds = %bb.ac
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i.i": ; preds = %bb.ab, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.hu, %bb.ab ] ; 8 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.hr, %bb.ab ]
  %i.hw = icmp samesign ule i64 %i.hr, %.sroa.4.0.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.hw)
  %i.hx = icmp samesign ugt i64 %i.hq, 127
  br i1 %i.hx, label %.lr.ph.i.i.i.i.i.preheader, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i.i"
  %i.hy = add nsw i64 %i.hr, -1                   ; 2 uses
  %i.hz = add nsw i64 %i.hr, -2
  %xtraiter4662 = and i64 %i.hy, 7                ; 3 uses
  %i.ia = icmp ult i64 %i.hz, 7
  br i1 %i.ia, label %.lr.ph.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.preheader.new:                   ; preds = %.lr.ph.i.i.i.i.i.preheader
  %unroll_iter4667 = and i64 %i.hy, -8
  br label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i.i"
  %.not.i.i.i.i.i = icmp eq i64 %i.hr, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.new
  %.sroa.0.08.i.i.i.i.i = phi ptr [ %.sroa.10.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.new ], [ %i.ii, %.lr.ph.i.i.i.i.i ] ; 17 uses
  %niter4668 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.preheader.new ], [ %niter4668.next.7, %.lr.ph.i.i.i.i.i ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i.i.i, i8 0, i64 1032, i1 false), !noalias !34382
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i, align 8, !noalias !34391
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i, i64 1040
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ib, i8 0, i64 1032, i1 false), !noalias !34382
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.1, align 8, !noalias !34391
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i, i64 2080
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i, i64 3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ic, i8 0, i64 1032, i1 false), !noalias !34382
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.2, align 8, !noalias !34391
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i, i64 3120
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i, i64 4152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.id, i8 0, i64 1032, i1 false), !noalias !34382
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.3, align 8, !noalias !34391
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i, i64 4160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i, i64 5192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ie, i8 0, i64 1032, i1 false), !noalias !34382
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.4, align 8, !noalias !34391
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i, i64 5200
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i, i64 6232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.if, i8 0, i64 1032, i1 false), !noalias !34382
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.5, align 8, !noalias !34391
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i, i64 6240
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i, i64 7272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ig, i8 0, i64 1032, i1 false), !noalias !34382
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.6, align 8, !noalias !34391
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i, i64 7280
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i, i64 8312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ih, i8 0, i64 1032, i1 false), !noalias !34382
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.7, align 8, !noalias !34391
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i, i64 8320 ; 3 uses
  %niter4668.next.7 = add nuw i64 %niter4668, 8   ; 2 uses
  %niter4668.ncmp.7 = icmp eq i64 %niter4668.next.7, %unroll_iter4667
  br i1 %niter4668.ncmp.7, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i

.thread86.i.i:                                    ; preds = %bb.ac
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i
  %lcmp.mod4664.not = icmp eq i64 %xtraiter4662, 0
  br i1 %lcmp.mod4664.not, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.i.i, label %.lr.ph.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.epil.preheader:                  ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %.sroa.0.08.i.i.i.i.i.epil.init = phi ptr [ %.sroa.10.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ii, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.i.i.loopexit.unr-lcssa ]
  %lcmp.mod4666 = icmp ne i64 %xtraiter4662, 0
  tail call void @llvm.assume(i1 %lcmp.mod4666)
  br label %.lr.ph.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.epil:                            ; preds = %.lr.ph.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.epil.preheader
  %.sroa.0.08.i.i.i.i.i.epil = phi ptr [ %i.ik, %.lr.ph.i.i.i.i.i.epil ], [ %.sroa.0.08.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter4663 = phi i64 [ %epil.iter4663.next, %.lr.ph.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.epil, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i.i.i.epil, i8 0, i64 1032, i1 false), !noalias !34382
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.epil, align 8, !noalias !34391
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.epil, i64 1040 ; 2 uses
  %epil.iter4663.next = add i64 %epil.iter4663, 1 ; 2 uses
  %epil.iter4663.cmp.not = icmp eq i64 %epil.iter4663.next, %xtraiter4662
  br i1 %epil.iter4663.cmp.not, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.i.i, label %.lr.ph.i.i.i.i.i.epil, !llvm.loop !34394

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.i.i: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.epil, %._crit_edge.i.i.i.i.i
  %.sroa.0.0.lcssa15.i.i.i.i.i = phi ptr [ %.sroa.10.0.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.ii, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.i.i.loopexit.unr-lcssa ], [ %i.ik, %.lr.ph.i.i.i.i.i.epil ] ; 2 uses
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i.i.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.0.lcssa15.i.i.i.i.i, i8 0, i64 1032, i1 false), !noalias !34382
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i.i, align 8, !noalias !34391
  %i.il = shl nuw nsw i64 %i.hr, 2                ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34395
  %i.im = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.il, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !34395 ; 2 uses
  %i.in = icmp eq ptr %i.im, null
  br i1 %i.in, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.i.i
  %i.io = ptrtoint ptr %i.im to i64
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i

bb.ae:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.i.i
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.il, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc420.i.i unwind label %.thread93.i.i, !noalias !34382

.noexc420.i.i:                                    ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i423.i.i", %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit446.i.i"
  %i.ip = icmp eq i64 %.sroa.14.1.i.i, 0
  br i1 %i.ip, label %bb.dp, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i166.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i166.i": ; preds = %.thread93.i.i, %bb.af
  %.pn230.pn.pn.pn.pn100.i.i = phi { ptr, i32 } [ %i.iq, %.thread93.i.i ], [ %.pn230.pn.pn.pn.i.i, %bb.af ]
  %.sroa.016.099.i.i = phi ptr [ %.sroa.10.0.i.i.i.i.i, %.thread93.i.i ], [ %.sroa.016.1.i.i, %bb.af ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.099.i.i) ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.016.099.i.i) #38, !noalias !34382
  br label %bb.dp

.thread93.i.i:                                    ; preds = %bb.ae
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i166.i"

"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit446.i.i": ; preds = %bb.bn, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i", %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i", %bb.ag
  %.sroa.12.0.i.i = phi i64 [ %i.hr, %bb.ag ], [ %.sroa.12.1.i.i, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i" ], [ %.sroa.12.1.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i" ], [ %.sroa.12.3151.i.i, %bb.bn ]
  %.sroa.026.0.i.i = phi ptr [ %i.it, %bb.ag ], [ %.sroa.026.1.i.i, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i" ], [ %.sroa.026.1.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i" ], [ %.sroa.026.3152.i.i, %bb.bn ] ; 2 uses
  %.sroa.14.1.i.i = phi i64 [ %i.hr, %bb.ag ], [ %.sroa.14.2.i.i, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i" ], [ %.sroa.14.2.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i" ], [ %.sroa.14.4153.i.i, %bb.bn ]
  %.sroa.016.1.i.i = phi ptr [ %.sroa.10.0.i.i.i.i.i, %bb.ag ], [ %.sroa.016.2.i.i, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i" ], [ %.sroa.016.2.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i" ], [ %.sroa.016.4154.i.i, %bb.bn ]
  %.pn230.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.is, %bb.ag ], [ %.pn230.pn.pn.i.i, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i" ], [ %.pn230.pn.pn.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i" ], [ %.pn230155.i.i, %bb.bn ] ; 2 uses
  %i.ir = icmp eq i64 %.sroa.12.0.i.i, 0
  br i1 %i.ir, label %bb.af, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i423.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i423.i.i": ; preds = %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit446.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.0.i.i) ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.026.0.i.i) #38, !noalias !34382
  br label %bb.af

bb.ag:                                            ; preds = %bb.ai
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit446.i.i"

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i: ; preds = %bb.ad, %._crit_edge.i.i.i.i.i
  %.sroa.10.0.i.i418.i.i = phi i64 [ %i.io, %bb.ad ], [ 4, %._crit_edge.i.i.i.i.i ]
  %i.it = inttoptr i64 %.sroa.10.0.i.i418.i.i to ptr ; 4 uses
  %.sroa.0.0.i422.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i.i, i64 64) ; 17 uses
  %i.iu = mul nuw nsw i64 %.sroa.0.0.i422.i.i, 1040 ; 2 uses
  %i.iv = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %i.iv, label %._crit_edge.i.i.i429.thread.i.i, label %bb.ah

bb.ah:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34400
  %i.iw = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.iu, i64 noundef range(i64 1, 9) 8) #38, !noalias !34400 ; 5 uses
  %i.ix = icmp eq ptr %i.iw, null
  br i1 %i.ix, label %bb.ai, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i426.i.i"

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.iu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc440.i.i unwind label %bb.ag, !noalias !34382

.noexc440.i.i:                                    ; preds = %bb.ai
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i426.i.i": ; preds = %bb.ah
  %.not1138.i.i = icmp eq i64 %.sroa.0.0.i.i, 1
  br i1 %.not1138.i.i, label %._crit_edge.thread.i.i.i431.i.i, label %.lr.ph.i.i.i434.i.i.preheader

.lr.ph.i.i.i434.i.i.preheader:                    ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i426.i.i"
  %i.iy = add nsw i64 %.sroa.0.0.i422.i.i, -1     ; 2 uses
  %i.iz = add nsw i64 %.sroa.0.0.i422.i.i, -2
  %xtraiter4669 = and i64 %i.iy, 7                ; 3 uses
  %i.ja = icmp ult i64 %i.iz, 7
  br i1 %i.ja, label %.lr.ph.i.i.i434.i.i.epil.preheader, label %.lr.ph.i.i.i434.i.i.preheader.new

.lr.ph.i.i.i434.i.i.preheader.new:                ; preds = %.lr.ph.i.i.i434.i.i.preheader
  %unroll_iter4674 = and i64 %i.iy, -8
  br label %.lr.ph.i.i.i434.i.i

._crit_edge.thread.i.i.i431.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i434.i.i
  %lcmp.mod4671.not = icmp eq i64 %xtraiter4669, 0
  br i1 %lcmp.mod4671.not, label %._crit_edge.thread.i.i.i431.i.i, label %.lr.ph.i.i.i434.i.i.epil.preheader

.lr.ph.i.i.i434.i.i.epil.preheader:               ; preds = %._crit_edge.thread.i.i.i431.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i434.i.i.preheader
  %.sroa.0.08.i.i.i435.i.i.epil.init = phi ptr [ %i.iw, %.lr.ph.i.i.i434.i.i.preheader ], [ %i.jj, %._crit_edge.thread.i.i.i431.i.i.loopexit.unr-lcssa ]
  %lcmp.mod4673 = icmp ne i64 %xtraiter4669, 0
  tail call void @llvm.assume(i1 %lcmp.mod4673)
  br label %.lr.ph.i.i.i434.i.i.epil

.lr.ph.i.i.i434.i.i.epil:                         ; preds = %.lr.ph.i.i.i434.i.i.epil, %.lr.ph.i.i.i434.i.i.epil.preheader
  %.sroa.0.08.i.i.i435.i.i.epil = phi ptr [ %i.jb, %.lr.ph.i.i.i434.i.i.epil ], [ %.sroa.0.08.i.i.i435.i.i.epil.init, %.lr.ph.i.i.i434.i.i.epil.preheader ] ; 3 uses
  %epil.iter4670 = phi i64 [ %epil.iter4670.next, %.lr.ph.i.i.i434.i.i.epil ], [ 0, %.lr.ph.i.i.i434.i.i.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i.epil, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i435.i.i.epil, i8 0, i64 1032, i1 false), !noalias !34382
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.epil, align 8, !noalias !34408
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i.epil, i64 1040 ; 2 uses
  %epil.iter4670.next = add i64 %epil.iter4670, 1 ; 2 uses
  %epil.iter4670.cmp.not = icmp eq i64 %epil.iter4670.next, %xtraiter4669
  br i1 %epil.iter4670.cmp.not, label %._crit_edge.thread.i.i.i431.i.i, label %.lr.ph.i.i.i434.i.i.epil, !llvm.loop !34411

._crit_edge.thread.i.i.i431.i.i:                  ; preds = %._crit_edge.thread.i.i.i431.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i434.i.i.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i426.i.i"
  %.sroa.0.0.lcssa15.i.i.i432.i.i = phi ptr [ %i.iw, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i426.i.i" ], [ %i.jj, %._crit_edge.thread.i.i.i431.i.i.loopexit.unr-lcssa ], [ %i.jb, %.lr.ph.i.i.i434.i.i.epil ] ; 2 uses
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i433.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i432.i.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.0.lcssa15.i.i.i432.i.i, i8 0, i64 1032, i1 false), !noalias !34382
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i433.i.i, align 8, !noalias !34408
  br label %._crit_edge.i.i.i429.thread.i.i

.lr.ph.i.i.i434.i.i:                              ; preds = %.lr.ph.i.i.i434.i.i, %.lr.ph.i.i.i434.i.i.preheader.new
  %.sroa.0.08.i.i.i435.i.i = phi ptr [ %i.iw, %.lr.ph.i.i.i434.i.i.preheader.new ], [ %i.jj, %.lr.ph.i.i.i434.i.i ] ; 17 uses
  %niter4675 = phi i64 [ 0, %.lr.ph.i.i.i434.i.i.preheader.new ], [ %niter4675.next.7, %.lr.ph.i.i.i434.i.i ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i435.i.i, i8 0, i64 1032, i1 false), !noalias !34382
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i, align 8, !noalias !34408
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 1040
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.jc, i8 0, i64 1032, i1 false), !noalias !34382
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.1, align 8, !noalias !34408
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 2080
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.jd, i8 0, i64 1032, i1 false), !noalias !34382
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.2, align 8, !noalias !34408
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 3120
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 4152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.je, i8 0, i64 1032, i1 false), !noalias !34382
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.3, align 8, !noalias !34408
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 4160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 5192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.jf, i8 0, i64 1032, i1 false), !noalias !34382
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.4, align 8, !noalias !34408
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 5200
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 6232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.jg, i8 0, i64 1032, i1 false), !noalias !34382
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.5, align 8, !noalias !34408
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 6240
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 7272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.jh, i8 0, i64 1032, i1 false), !noalias !34382
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.6, align 8, !noalias !34408
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 7280
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 8312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ji, i8 0, i64 1032, i1 false), !noalias !34382
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.7, align 8, !noalias !34408
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 8320 ; 3 uses
  %niter4675.next.7 = add nuw i64 %niter4675, 8   ; 2 uses
  %niter4675.ncmp.7 = icmp eq i64 %niter4675.next.7, %unroll_iter4674
  br i1 %niter4675.ncmp.7, label %._crit_edge.thread.i.i.i431.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i434.i.i

._crit_edge.i.i.i429.thread.i.i:                  ; preds = %._crit_edge.thread.i.i.i431.i.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i
  %.sroa.10.0.i.i.i427915.i.i = phi ptr [ %i.iw, %._crit_edge.thread.i.i.i431.i.i ], [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i ] ; 15 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34412
  %i.jk = tail call noundef ptr @mi_malloc_aligned(i64 noundef 32784, i64 noundef range(i64 1, 9) 4) #38, !noalias !34412 ; 16 uses
  %i.jl = icmp eq ptr %i.jk, null
  br i1 %i.jl, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %._crit_edge.i.i.i429.thread.i.i
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 32784, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc444.i.i unwind label %bb.ak, !noalias !34382

.noexc444.i.i:                                    ; preds = %bb.aj
  unreachable

"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i", %bb.ak
  %.sroa.1335.0.i.i = phi i64 [ %.sroa.0.0.i422.i.i, %bb.ak ], [ %.sroa.1335.1123199.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i" ]
  %.sroa.034.0.i.i = phi ptr [ %.sroa.10.0.i.i.i427915.i.i, %bb.ak ], [ %.sroa.034.1124197.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i" ] ; 2 uses
  %.sroa.12.1.i.i = phi i64 [ %i.hr, %bb.ak ], [ %.sroa.12.3125195.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i" ] ; 2 uses
  %.sroa.026.1.i.i = phi ptr [ %i.it, %bb.ak ], [ %.sroa.026.3126193.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i" ] ; 2 uses
  %.sroa.14.2.i.i = phi i64 [ %i.hr, %bb.ak ], [ %.sroa.14.4127191.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i" ] ; 2 uses
  %.sroa.016.2.i.i = phi ptr [ %.sroa.10.0.i.i.i.i.i, %bb.ak ], [ %.sroa.016.4128189.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i" ] ; 2 uses
  %.pn230.pn.pn.i.i = phi { ptr, i32 } [ %i.jn, %bb.ak ], [ %.pn230.pn202.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i" ] ; 2 uses
  %i.jm = icmp eq i64 %.sroa.1335.0.i.i, 0
  br i1 %i.jm, label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit446.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i": ; preds = %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.034.0.i.i) ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.034.0.i.i) #38, !noalias !34382
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit446.i.i"

bb.ak:                                            ; preds = %bb.aj
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i"

bb.al:                                            ; preds = %._crit_edge.i.i.i429.thread.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32784) %i.jk, i8 0, i64 32784, i1 false), !noalias !34382
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !34382
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.ao, i8 0, i64 256, i1 false), !noalias !34382
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !34382
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.an, i8 0, i64 256, i1 false), !noalias !34382
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !34382
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.am, i8 0, i64 256, i1 false), !noalias !34382
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !34382
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.al, i8 0, i64 256, i1 false), !noalias !34382
  br label %bb.dk

.split.i.i:                                       ; preds = %bb.dn, %._crit_edge568.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %._crit_edge568.i.i ], [ %.sroa.0.0.i.i, %bb.dn ] ; 2 uses
  %.sroa.0.0579.i.i = phi i64 [ %.sroa.0.1.lcssa.i.i, %._crit_edge568.i.i ], [ 0, %bb.dn ] ; 4 uses
  %.sroa.012.0578.i.i = phi i64 [ %.sroa.012.1.i.i, %._crit_edge568.i.i ], [ %i.hr, %bb.dn ] ; 7 uses
  %.sroa.018.0577.i.i = phi i64 [ %.sroa.018.1.lcssa.i.i, %._crit_edge568.i.i ], [ 0, %bb.dn ] ; 4 uses
  %.sroa.023.0576.i.i = phi i64 [ %.sroa.023.1.i.i, %._crit_edge568.i.i ], [ %i.hr, %bb.dn ] ; 7 uses
  %.sroa.029.0575.i.i = phi i64 [ %i.uo, %._crit_edge568.i.i ], [ 0, %bb.dn ] ; 2 uses
  %.sroa.043.0574.i.i = phi i64 [ %.sroa.043.3.lcssa.i.i, %._crit_edge568.i.i ], [ 0, %bb.dn ] ; 2 uses
  %.sroa.047.1573.i.i = phi i64 [ %i.up, %._crit_edge568.i.i ], [ 0, %bb.dn ] ; 5 uses
  %.sroa.016.3572.i.i = phi ptr [ %.sroa.016.7.i.i, %._crit_edge568.i.i ], [ %.sroa.10.0.i.i.i.i.i, %bb.dn ] ; 9 uses
  %.sroa.14.3571.i.i = phi i64 [ %.sroa.14.7.i.i, %._crit_edge568.i.i ], [ %i.hr, %bb.dn ] ; 9 uses
  %.sroa.026.2570.i.i = phi ptr [ %.sroa.026.5.i.i, %._crit_edge568.i.i ], [ %i.it, %bb.dn ] ; 11 uses
  %.sroa.12.2569.i.i = phi i64 [ %.sroa.12.5.i.i, %._crit_edge568.i.i ], [ %i.hr, %bb.dn ] ; 11 uses
  %i.jo = tail call i64 @llvm.umax.i64(i64 %indvars.iv.i.i, i64 1)
  %umax836.i.i = tail call i64 @llvm.umin.i64(i64 %i.jo, i64 64)
  %i.jp = sub nuw i64 %.sroa.0.0.i.i, %.sroa.047.1573.i.i
  %.sroa.0.0.i447.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.jp, i64 64) ; 3 uses
  %.not910.i.i = icmp eq i64 %.sroa.0.0.i.i, %.sroa.047.1573.i.i ; 2 uses
  br i1 %.not910.i.i, label %._crit_edge558.i.i, label %.lr.ph557.i.i

.thread163.loopexit.i.i:                          ; preds = %._crit_edge.i.i
  %lpad.loopexit255.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i"

.thread163.loopexit.split-lp.loopexit.i.i:        ; preds = %._crit_edge558.i.i
  %lpad.loopexit258.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i"

.thread163.loopexit.split-lp.loopexit.split-lp.i.i: ; preds = %.invoke3973, %.invoke3971, %.invoke.i.i, %bb.ct, %bb.cl, %bb.at, %bb.ap
  %.sroa.044.1.ph.ph.ph.i.i = phi ptr [ %i.jk, %bb.ap ], [ %.sroa.044.2.i.i, %bb.at ], [ %i.jk, %.invoke.i.i ], [ %i.jk, %.invoke3971 ], [ %i.jk, %bb.cl ], [ %i.jk, %.invoke3973 ], [ %i.jk, %bb.ct ]
  %.sroa.1335.2.ph.ph.ph.i.i = phi i64 [ 0, %bb.ap ], [ 0, %bb.at ], [ %.sroa.0.0.i422.i.i, %.invoke.i.i ], [ %.sroa.0.0.i422.i.i, %.invoke3971 ], [ %.sroa.0.0.i422.i.i, %bb.cl ], [ %.sroa.0.0.i422.i.i, %.invoke3973 ], [ %.sroa.0.0.i422.i.i, %bb.ct ]
  %.sroa.034.2.ph.ph.ph.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.ap ], [ inttoptr (i64 8 to ptr), %bb.at ], [ %.sroa.10.0.i.i.i427915.i.i, %.invoke.i.i ], [ %.sroa.10.0.i.i.i427915.i.i, %.invoke3971 ], [ %.sroa.10.0.i.i.i427915.i.i, %bb.cl ], [ %.sroa.10.0.i.i.i427915.i.i, %.invoke3973 ], [ %.sroa.10.0.i.i.i427915.i.i, %bb.ct ]
  %.sroa.12.4.ph.ph.ph.i.i = phi i64 [ %.sroa.12.5.i.i, %bb.ap ], [ %.sroa.12.5.i.i, %bb.at ], [ %i.hr, %.invoke.i.i ], [ %.sroa.12.2569.i.i, %.invoke3971 ], [ %.sroa.12.2569.i.i, %bb.cl ], [ %.sroa.12.5.i.i, %.invoke3973 ], [ %.sroa.12.2569.i.i, %bb.ct ]
  %.sroa.026.4.ph.ph.ph.i.i = phi ptr [ %.sroa.026.5.i.i, %bb.ap ], [ %.sroa.026.5.i.i, %bb.at ], [ %i.it, %.invoke.i.i ], [ %.sroa.026.2570.i.i, %.invoke3971 ], [ %.sroa.026.2570.i.i, %bb.cl ], [ %.sroa.026.5.i.i, %.invoke3973 ], [ %.sroa.026.2570.i.i, %bb.ct ]
  %.sroa.14.5.ph.ph.ph.i.i = phi i64 [ %.sroa.14.7.i.i, %bb.ap ], [ %.sroa.14.7.i.i, %bb.at ], [ %i.hr, %.invoke.i.i ], [ %.sroa.14.3571.i.i, %.invoke3971 ], [ %.sroa.14.3571.i.i, %bb.cl ], [ %.sroa.14.7.i.i, %.invoke3973 ], [ %.sroa.14.7.i.i, %bb.ct ]
  %.sroa.016.5.ph.ph.ph.i.i = phi ptr [ %.sroa.016.7.i.i, %bb.ap ], [ %.sroa.016.7.i.i, %bb.at ], [ %.sroa.10.0.i.i.i.i.i, %.invoke.i.i ], [ %.sroa.016.3572.i.i, %.invoke3971 ], [ %.sroa.016.3572.i.i, %bb.cl ], [ %.sroa.016.7.i.i, %.invoke3973 ], [ %.sroa.016.7.i.i, %bb.ct ]
  %lpad.loopexit.split-lp259.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i"

bb.am:                                            ; preds = %bb.ay, %._crit_edge584.i.i
  %.sroa.11.1.ph159.i.i = phi i1 [ false, %._crit_edge584.i.i ], [ true, %bb.ay ]
  %.sroa.044.1.ph160.i.i = phi ptr [ %.sroa.044.2.i.i, %._crit_edge584.i.i ], [ inttoptr (i64 4 to ptr), %bb.ay ]
  %.sroa.12.4.ph161.i.i = phi i64 [ %.sroa.12.5.i.i, %._crit_edge584.i.i ], [ 0, %bb.ay ]
  %.sroa.026.4.ph162.i.i = phi ptr [ %.sroa.026.5.i.i, %._crit_edge584.i.i ], [ inttoptr (i64 4 to ptr), %bb.ay ]
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread130.i.i

bb.an:                                            ; preds = %._crit_edge568.i.i
  tail call void @mi_free(ptr noundef nonnull align 8 %.sroa.10.0.i.i.i427915.i.i) #38, !noalias !34382
  %i.jq = shl i64 %i.uo, 6
  %i.jr = lshr i64 %i.uo, 1
  %i.js = mul i64 %i.jr, %i.uo
  %.sroa.0.0.i448.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.js, i64 %i.jq) ; 5 uses
  %i.jt = add nuw i64 %.sroa.0.0.i448.i.i, 1      ; 2 uses
  %i.ju = icmp ugt i64 %.sroa.0.0.i448.i.i, 2048
  br i1 %i.ju, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.jv = shl i64 %i.jt, 4                        ; 5 uses
  %i.jw = icmp ugt i64 %.sroa.0.0.i448.i.i, 1152921504606846974
  %i.jx = icmp ugt i64 %i.jv, 9223372036854775804
  %or.cond.i.i.i.i.i449.i.i = or i1 %i.jw, %i.jx
  br i1 %or.cond.i.i.i.i.i449.i.i, label %bb.ap, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i: ; preds = %bb.ao
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34420
  %i.jy = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.jv, i64 noundef range(i64 1, 9) 4) #38, !noalias !34420 ; 5 uses
  %i.jz = icmp eq ptr %i.jy, null
  br i1 %i.jz, label %bb.ap, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i"

bb.ap:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i, %bb.ao
  %.sroa.4.0.ph.i.i.i455.i.i = phi i64 [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i ], [ 0, %bb.ao ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i455.i.i, i64 %i.jv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc456.i.i unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !34382

.noexc456.i.i:                                    ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i", %bb.an
  %.sroa.11.2.i.i = phi i64 [ %i.jt, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i" ], [ 2049, %bb.an ]
  %.sroa.044.2.i.i = phi ptr [ %i.jy, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i" ], [ %i.jk, %bb.an ] ; 4 uses
  %i.ka = shl i64 %i.uo, 2                        ; 9 uses
  %i.kb = icmp ugt i64 %i.uo, 4611686018427387903
  %i.kc = icmp ugt i64 %i.ka, 9223372036854775804
  %or.cond.i.i.i.i458.i.i = or i1 %i.kb, %i.kc
  br i1 %or.cond.i.i.i.i458.i.i, label %bb.at, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i: ; preds = %bb.aq
  %i.kd = icmp eq i64 %i.ka, 0                    ; 2 uses
  br i1 %i.kd, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34428
  %i.ke = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.ka, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !34428 ; 2 uses
  %i.kf = icmp eq ptr %i.ke, null
  br i1 %i.kf, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.kg = ptrtoint ptr %i.ke to i64
  br label %bb.au

bb.at:                                            ; preds = %bb.ar, %bb.aq
  %.sroa.4.0.ph.i.i461.i.i = phi i64 [ 4, %bb.ar ], [ 0, %bb.aq ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i461.i.i, i64 %i.ka, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc462.i.i unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !34382

.noexc462.i.i:                                    ; preds = %bb.at
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i
  %i.kh = add nsw i64 %i.jv, -16                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.jy, i8 0, i64 %i.kh, i1 false), !noalias !34433
  %i.ki = getelementptr i8, ptr %i.jy, i64 %i.jv  ; 2 uses
  %scevgep11.i451.i.i = getelementptr i8, ptr %i.jy, i64 %i.kh
  store i32 0, ptr %scevgep11.i451.i.i, align 4, !noalias !34433
  %.sroa.55.0..sroa_idx.i452.i.i = getelementptr i8, ptr %i.ki, i64 -12
  store i32 0, ptr %.sroa.55.0..sroa_idx.i452.i.i, align 4, !noalias !34433
  %.sroa.67.0..sroa_idx.i453.i.i = getelementptr i8, ptr %i.ki, i64 -8
  store <2 x float> zeroinitializer, ptr %.sroa.67.0..sroa_idx.i453.i.i, align 4, !noalias !34433
  %i.kj = icmp samesign ult i64 %.sroa.0.0.i448.i.i, 576460752303423487
  tail call void @llvm.assume(i1 %i.kj)
  tail call void @mi_free(ptr noundef nonnull align 4 %i.jk) #38, !noalias !34382
  br label %bb.aq

bb.au:                                            ; preds = %bb.as, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i
  %.sroa.10.0.i.i460.i.i = phi i64 [ %i.kg, %bb.as ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i ]
  %i.kk = inttoptr i64 %.sroa.10.0.i.i460.i.i to ptr ; 13 uses
  %i.kl = icmp samesign ult i64 %i.uo, 2305843009213693952
  tail call void @llvm.assume(i1 %i.kl)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kk) ]
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.ka
  %i.kn = icmp eq i64 %i.uo, 0                    ; 3 uses
  br i1 %i.kn, label %._crit_edge584.i.i, label %.lr.ph583.i.i.preheader

.lr.ph583.i.i.preheader:                          ; preds = %bb.au
  %i.ko = add nsw i64 %i.ka, -4                   ; 2 uses
  %i.kp = lshr exact i64 %i.ko, 2
  %i.kq = add nuw nsw i64 %i.kp, 1                ; 2 uses
  %min.iters.check3752 = icmp ult i64 %i.ko, 28
  br i1 %min.iters.check3752, label %.lr.ph583.i.i.preheader4463, label %vector.ph3753

vector.ph3753:                                    ; preds = %.lr.ph583.i.i.preheader
  %n.vec3754 = and i64 %i.kq, 9223372036854775800 ; 4 uses
  %i.kr = trunc i64 %n.vec3754 to i32
  %i.ks = shl i64 %n.vec3754, 2
  %i.kt = getelementptr i8, ptr %i.kk, i64 %i.ks
end_hunk_3
begin_hunk_4_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.sroa.01.0.i263599.i.i ; 2 uses
  %i.rg = load i32, ptr %i.rf, align 8, !noalias !34382, !noundef !27
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %.sroa.01.0.i263599.i.i
  %i.ri = load i32, ptr %i.rh, align 4, !noalias !34382, !noundef !27
  %i.rj = add i32 %i.ri, %i.rg
  store i32 %i.rj, ptr %i.rf, align 8, !noalias !34382
  %i.rk = or disjoint i64 %.sroa.01.0.i263599.i.i, 2 ; 2 uses
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.re ; 2 uses
  %i.rm = load i32, ptr %i.rl, align 4, !noalias !34382, !noundef !27
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %i.re
  %i.ro = load i32, ptr %i.rn, align 4, !noalias !34382, !noundef !27
  %i.rp = add i32 %i.ro, %i.rm
  store i32 %i.rp, ptr %i.rl, align 4, !noalias !34382
  %i.rq = or disjoint i64 %.sroa.01.0.i263599.i.i, 3 ; 2 uses
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.rk ; 2 uses
  %i.rs = load i32, ptr %i.rr, align 8, !noalias !34382, !noundef !27
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %i.rk
  %i.ru = load i32, ptr %i.rt, align 4, !noalias !34382, !noundef !27
  %i.rv = add i32 %i.ru, %i.rs
  store i32 %i.rv, ptr %i.rr, align 8, !noalias !34382
  %i.rw = add nuw nsw i64 %.sroa.01.0.i263599.i.i, 4 ; 2 uses
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.rq ; 2 uses
  %i.ry = load i32, ptr %i.rx, align 4, !noalias !34382, !noundef !27
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %i.rq
  %i.sa = load i32, ptr %i.rz, align 4, !noalias !34382, !noundef !27
  %i.sb = add i32 %i.sa, %i.ry
  store i32 %i.sb, ptr %i.rx, align 4, !noalias !34382
  %exitcond842.not.i.i.3 = icmp eq i64 %i.rw, 256
  br i1 %exitcond842.not.i.i.3, label %.noexc240.i.i, label %scalar.ph3762, !llvm.loop !34524

.noexc240.i.i:                                    ; preds = %vector.body3764, %scalar.ph3762
  %i.sc = invoke fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17h56fd6c289f2ade0fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1040) %i.aj)
          to label %.noexc242.i.i unwind label %.loopexit.split-lp.thread.i.i, !noalias !34382

.noexc242.i.i:                                    ; preds = %.noexc240.i.i
  %i.sd = getelementptr inbounds nuw i8, ptr %i.qm, i64 1032
  %i.se = load float, ptr %i.sd, align 8, !alias.scope !34525, !noalias !34382, !noundef !27
  %i.sf = fsub float %i.sc, %i.se                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !34499
  %i.sg = fcmp olt float %i.sf, %.sroa.093.0601.i.i
  br i1 %i.sg, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.ce, %.noexc242.i.i
  %.sroa.093.1.i.i = phi float [ %i.sf, %bb.ce ], [ %.sroa.093.0601.i.i, %.noexc242.i.i ]
  %.sroa.089.1.i.i = phi i32 [ %i.sj, %bb.ce ], [ %.sroa.089.0602.i.i, %.noexc242.i.i ] ; 3 uses
  %i.sh = icmp samesign ult i64 %.sroa.0141.1603.i.i, %i.kz ; 2 uses
  %i.si = zext i1 %i.sh to i64
  %.sroa.0141.1.i.i = add nuw nsw i64 %.sroa.0141.1603.i.i, %i.si
  br i1 %i.sh, label %.lr.ph604.i.i, label %._crit_edge605.loopexit.i.i.loopexit1022

bb.ce:                                            ; preds = %.noexc242.i.i
  %i.sj = load i32, ptr %i.qi, align 4, !noalias !34382, !noundef !27
  br label %bb.cd

.invoke1136.i.i:                                  ; preds = %._crit_edge605.i.i, %._crit_edge595.i.thread.i, %._crit_edge595.i.i, %.lr.ph594.i.i, %bb.cc, %.lr.ph604.i.i, %bb.by, %.lr.ph604.i.us.i
  %i.sk = phi i64 [ %i.qk, %bb.cc ], [ %i.pv, %bb.by ], [ %.sroa.043.2592.i.i, %.lr.ph594.i.i ], [ %i.uo, %.lr.ph604.i.us.i ], [ %.sroa.0141.0600.i.i, %.lr.ph604.i.i ], [ %.pre-phi.i.i, %._crit_edge605.i.i ], [ %i.nw, %._crit_edge595.i.thread.i ], [ %i.nr, %._crit_edge595.i.i ]
  %i.sl = phi i64 [ %.sroa.14.7.i.i, %bb.cc ], [ %.sroa.14.7.i.i, %bb.by ], [ %i.aq, %.lr.ph594.i.i ], [ %i.uo, %.lr.ph604.i.us.i ], [ %i.uo, %.lr.ph604.i.i ], [ %i.uo, %._crit_edge605.i.i ], [ %.sroa.14.7.i.i, %._crit_edge595.i.thread.i ], [ %.sroa.14.7.i.i, %._crit_edge595.i.i ]
  %i.sm = phi ptr [ @1555, %bb.cc ], [ @1555, %bb.by ], [ @1556, %.lr.ph594.i.i ], [ @1554, %.lr.ph604.i.us.i ], [ @1554, %.lr.ph604.i.i ], [ @1553, %._crit_edge605.i.i ], [ @1552, %._crit_edge595.i.thread.i ], [ @1552, %._crit_edge595.i.i ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.sk, i64 noundef %i.sl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.sm) #43
          to label %.cont1137.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !34382

.cont1137.i.i:                                    ; preds = %.invoke1136.i.i
  unreachable

bb.cf:                                            ; preds = %.lr.ph594.i.i
  %i.sn = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sroa.043.2592.i.i
  %i.so = load i8, ptr %i.sn, align 1, !alias.scope !34528, !noalias !34531, !noundef !27
  %i.sp = zext i8 %i.so to i64
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.sp ; 2 uses
  %i.sr = load i32, ptr %i.sq, align 4, !alias.scope !34532, !noalias !34382, !noundef !27
  %i.ss = add i32 %i.sr, 1
  store i32 %i.ss, ptr %i.sq, align 4, !alias.scope !34532, !noalias !34382
  %i.st = add nuw nsw i64 %i.nn, 1                ; 2 uses
  %i.su = add nuw i64 %.sroa.043.2592.i.i, 1      ; 3 uses
  %exitcond840.not.i.i = icmp eq i64 %i.st, %i.nl
  br i1 %exitcond840.not.i.i, label %._crit_edge595.i.i, label %.lr.ph594.i.i

.loopexit.split-lp.i.i:                           ; preds = %.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.i.i, %bb.az
  %.sroa.1152.2.i.i = phi i64 [ 0, %bb.az ], [ %i.uo, %.loopexit.split-lp.loopexit.split-lp.i.i ], [ %i.uo, %.loopexit.split-lp.loopexit.i.i ] ; 2 uses
  %.sroa.051.2.i.i = phi ptr [ inttoptr (i64 4 to ptr), %bb.az ], [ %i.kk, %.loopexit.split-lp.loopexit.split-lp.i.i ], [ %i.kk, %.loopexit.split-lp.loopexit.i.i ] ; 2 uses
  %.sroa.14.6.i.i = phi i64 [ 0, %bb.az ], [ %.sroa.14.7.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i ], [ %.sroa.14.7.i.i, %.loopexit.split-lp.loopexit.i.i ] ; 2 uses
  %.sroa.016.6.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.az ], [ %.sroa.016.7.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i ], [ %.sroa.016.7.i.i, %.loopexit.split-lp.loopexit.i.i ] ; 2 uses
  %.pn.i.i = phi { ptr, i32 } [ %i.le, %bb.az ], [ %lpad.loopexit.split-lp251.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i ], [ %lpad.loopexit250.i.i, %.loopexit.split-lp.loopexit.i.i ] ; 2 uses
  br i1 %i.kn, label %.thread130.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i": ; preds = %.loopexit.split-lp.i.i, %.loopexit.split-lp.thread.i.i
  %.pn926.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.split-lp.thread.i.i ], [ %.pn.i.i, %.loopexit.split-lp.i.i ]
  %.sroa.016.6925.i.i = phi ptr [ %.sroa.016.7.i.i, %.loopexit.split-lp.thread.i.i ], [ %.sroa.016.6.i.i, %.loopexit.split-lp.i.i ]
  %.sroa.14.6924.i.i = phi i64 [ %.sroa.14.7.i.i, %.loopexit.split-lp.thread.i.i ], [ %.sroa.14.6.i.i, %.loopexit.split-lp.i.i ]
  %.sroa.051.2923.i.i = phi ptr [ %i.kk, %.loopexit.split-lp.thread.i.i ], [ %.sroa.051.2.i.i, %.loopexit.split-lp.i.i ]
  %.sroa.1152.2922.i.i = phi i64 [ %i.uo, %.loopexit.split-lp.thread.i.i ], [ %.sroa.1152.2.i.i, %.loopexit.split-lp.i.i ]
  tail call void @mi_free(ptr noundef nonnull %i.lf) #38, !noalias !34382
  br label %.thread130.i.i

._crit_edge558.i.i:                               ; preds = %bb.di, %.split.i.i
  %.sroa.043.3.lcssa.i.i = phi i64 [ %.sroa.043.0574.i.i, %.split.i.i ], [ %.sroa.043.4.lcssa.i.i, %bb.di ]
  %i.sv = invoke fastcc noundef i64 @_ZN6brotli3enc7cluster22BrotliHistogramCombine17h927b250c66d009c4E(ptr noalias noundef nonnull align 8 %.sroa.10.0.i.i.i427915.i.i, i64 noundef %.sroa.0.0.i422.i.i, ptr noalias noundef nonnull align 4 %i.ao, i64 noundef 64, ptr noalias noundef nonnull align 4 %i.am, i64 noundef 64, ptr noalias noundef nonnull align 4 %i.an, i64 noundef 64, ptr noalias noundef nonnull align 4 %i.jk, i64 noundef 2049, i64 noundef %.sroa.0.0.i447.i.i, i64 noundef %.sroa.0.0.i447.i.i, i64 noundef 64, i64 noundef 2048)
          to label %bb.cg unwind label %.thread163.loopexit.split-lp.loopexit.i.i, !noalias !34382 ; 5 uses

bb.cg:                                            ; preds = %._crit_edge558.i.i
  %i.sw = add i64 %i.sv, %.sroa.0.0579.i.i        ; 3 uses
  %i.sx = icmp ult i64 %.sroa.012.0578.i.i, %i.sw
  br i1 %i.sx, label %bb.ch, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h14c94f2a1b156012E.exit537.i.i"

bb.ch:                                            ; preds = %bb.cg
  %i.sy = icmp eq i64 %.sroa.012.0578.i.i, 0      ; 2 uses
  %..sroa.012.0.i.i = select i1 %i.sy, i64 %i.sw, i64 %.sroa.012.0578.i.i
  br label %bb.ci

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h14c94f2a1b156012E.exit537.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i536.i.i", %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h1bce71309496fbdfE.exit.i.i", %bb.cg
  %.sroa.14.7.i.i = phi i64 [ %.sroa.14.3571.i.i, %bb.cg ], [ %.sroa.066.1.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i536.i.i" ], [ %.sroa.066.1.i.i, %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h1bce71309496fbdfE.exit.i.i" ] ; 22 uses
  %.sroa.016.7.i.i = phi ptr [ %.sroa.016.3572.i.i, %bb.cg ], [ %.sroa.10.0.i.i.i520.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i536.i.i" ], [ %.sroa.10.0.i.i.i520.i.i, %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h1bce71309496fbdfE.exit.i.i" ] ; 18 uses
  %.sroa.012.1.i.i = phi i64 [ %.sroa.012.0578.i.i, %bb.cg ], [ %.sroa.066.1.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i536.i.i" ], [ %.sroa.066.1.i.i, %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h1bce71309496fbdfE.exit.i.i" ]
  %i.sz = add i64 %i.sv, %.sroa.018.0577.i.i      ; 3 uses
  %i.ta = icmp ult i64 %.sroa.023.0576.i.i, %i.sz
  br i1 %i.ta, label %bb.co, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit546.i.i"

bb.ci:                                            ; preds = %bb.ci, %bb.ch
  %.sroa.066.1.i.i = phi i64 [ %..sroa.012.0.i.i, %bb.ch ], [ %i.tc, %bb.ci ] ; 13 uses
  %i.tb = icmp ult i64 %.sroa.066.1.i.i, %i.sw
  %i.tc = shl i64 %.sroa.066.1.i.i, 1
  br i1 %i.tb, label %bb.ci, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.td = mul i64 %.sroa.066.1.i.i, 1040          ; 3 uses
  %or.cond.i.i.i.i.i517.i.i = icmp ugt i64 %.sroa.066.1.i.i, 8868626958514207
  br i1 %or.cond.i.i.i.i.i517.i.i, label %bb.cl, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i518.i.i, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i518.i.i: ; preds = %bb.cj
  %i.te = icmp eq i64 %i.td, 0
  br i1 %i.te, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i519.i.i", label %bb.ck

bb.ck:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i518.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34535
  %i.tf = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.td, i64 noundef range(i64 1, 9) 8) #38, !noalias !34535 ; 2 uses
  %i.tg = icmp eq ptr %i.tf, null
  br i1 %i.tg, label %bb.cl, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i519.i.i"

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.sroa.4.0.ph.i.i.i532.i.i = phi i64 [ 8, %bb.ck ], [ 0, %bb.cj ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i532.i.i, i64 %i.td, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc533.i.i unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !34382

.noexc533.i.i:                                    ; preds = %bb.cl
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i519.i.i": ; preds = %bb.ck, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i518.i.i
  %.sroa.10.0.i.i.i520.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i518.i.i ], [ %i.tf, %bb.ck ] ; 7 uses
  %.sroa.4.0.i.i.i521.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i518.i.i ], [ %.sroa.066.1.i.i, %bb.ck ]
  %i.th = icmp samesign ule i64 %.sroa.066.1.i.i, %.sroa.4.0.i.i.i521.i.i
  tail call void @llvm.assume(i1 %i.th)
  %i.ti = icmp samesign ugt i64 %.sroa.066.1.i.i, 1
  br i1 %i.ti, label %.lr.ph.i.i.i527.i.i.preheader, label %.loopexit254.i.i

.lr.ph.i.i.i527.i.i.preheader:                    ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i519.i.i"
  %i.tj = add nsw i64 %.sroa.066.1.i.i, -1        ; 2 uses
  %i.tk = add nsw i64 %.sroa.066.1.i.i, -2
  %xtraiter4677 = and i64 %i.tj, 7                ; 3 uses
  %i.tl = icmp ult i64 %i.tk, 7
  br i1 %i.tl, label %.lr.ph.i.i.i527.i.i.epil.preheader, label %.lr.ph.i.i.i527.i.i.preheader.new

.lr.ph.i.i.i527.i.i.preheader.new:                ; preds = %.lr.ph.i.i.i527.i.i.preheader
  %unroll_iter4682 = and i64 %i.tj, -8
  br label %.lr.ph.i.i.i527.i.i

.lr.ph.i.i.i527.i.i:                              ; preds = %.lr.ph.i.i.i527.i.i, %.lr.ph.i.i.i527.i.i.preheader.new
  %.sroa.0.08.i.i.i528.i.i = phi ptr [ %.sroa.10.0.i.i.i520.i.i, %.lr.ph.i.i.i527.i.i.preheader.new ], [ %i.tt, %.lr.ph.i.i.i527.i.i ] ; 17 uses
  %niter4683 = phi i64 [ 0, %.lr.ph.i.i.i527.i.i.preheader.new ], [ %niter4683.next.7, %.lr.ph.i.i.i527.i.i ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i528.i.i, i8 0, i64 1032, i1 false), !noalias !34382
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i, align 8, !noalias !34543
  %i.tm = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 1040
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.tm, i8 0, i64 1032, i1 false), !noalias !34382
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.1, align 8, !noalias !34543
  %i.tn = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 2080
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.tn, i8 0, i64 1032, i1 false), !noalias !34382
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.2, align 8, !noalias !34543
  %i.to = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 3120
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 4152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.to, i8 0, i64 1032, i1 false), !noalias !34382
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.3, align 8, !noalias !34543
  %i.tp = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 4160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 5192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.tp, i8 0, i64 1032, i1 false), !noalias !34382
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.4, align 8, !noalias !34543
  %i.tq = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 5200
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 6232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.tq, i8 0, i64 1032, i1 false), !noalias !34382
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.5, align 8, !noalias !34543
  %i.tr = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 6240
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 7272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.tr, i8 0, i64 1032, i1 false), !noalias !34382
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.6, align 8, !noalias !34543
  %i.ts = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 7280
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 8312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ts, i8 0, i64 1032, i1 false), !noalias !34382
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.7, align 8, !noalias !34543
  %i.tt = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 8320 ; 3 uses
  %niter4683.next.7 = add nuw i64 %niter4683, 8   ; 2 uses
  %niter4683.ncmp.7 = icmp eq i64 %niter4683.next.7, %unroll_iter4682
  br i1 %niter4683.ncmp.7, label %.loopexit254.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i527.i.i

.loopexit254.i.i.loopexit.unr-lcssa:              ; preds = %.lr.ph.i.i.i527.i.i
  %lcmp.mod4679.not = icmp eq i64 %xtraiter4677, 0
  br i1 %lcmp.mod4679.not, label %.loopexit254.i.i, label %.lr.ph.i.i.i527.i.i.epil.preheader

.lr.ph.i.i.i527.i.i.epil.preheader:               ; preds = %.loopexit254.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i527.i.i.preheader
  %.sroa.0.08.i.i.i528.i.i.epil.init = phi ptr [ %.sroa.10.0.i.i.i520.i.i, %.lr.ph.i.i.i527.i.i.preheader ], [ %i.tt, %.loopexit254.i.i.loopexit.unr-lcssa ]
  %lcmp.mod4681 = icmp ne i64 %xtraiter4677, 0
  tail call void @llvm.assume(i1 %lcmp.mod4681)
  br label %.lr.ph.i.i.i527.i.i.epil

.lr.ph.i.i.i527.i.i.epil:                         ; preds = %.lr.ph.i.i.i527.i.i.epil, %.lr.ph.i.i.i527.i.i.epil.preheader
  %.sroa.0.08.i.i.i528.i.i.epil = phi ptr [ %i.tu, %.lr.ph.i.i.i527.i.i.epil ], [ %.sroa.0.08.i.i.i528.i.i.epil.init, %.lr.ph.i.i.i527.i.i.epil.preheader ] ; 3 uses
  %epil.iter4678 = phi i64 [ %epil.iter4678.next, %.lr.ph.i.i.i527.i.i.epil ], [ 0, %.lr.ph.i.i.i527.i.i.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i.epil, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i528.i.i.epil, i8 0, i64 1032, i1 false), !noalias !34382
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.epil, align 8, !noalias !34543
  %i.tu = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i.epil, i64 1040 ; 2 uses
  %epil.iter4678.next = add i64 %epil.iter4678, 1 ; 2 uses
  %epil.iter4678.cmp.not = icmp eq i64 %epil.iter4678.next, %xtraiter4677
  br i1 %epil.iter4678.cmp.not, label %.loopexit254.i.i, label %.lr.ph.i.i.i527.i.i.epil, !llvm.loop !34546

.loopexit254.i.i:                                 ; preds = %.loopexit254.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i527.i.i.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i519.i.i"
  %.sroa.0.0.lcssa15.i.i.i525.i.i = phi ptr [ %.sroa.10.0.i.i.i520.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i519.i.i" ], [ %i.tt, %.loopexit254.i.i.loopexit.unr-lcssa ], [ %i.tu, %.lr.ph.i.i.i527.i.i.epil ] ; 2 uses
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i526.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i525.i.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.0.lcssa15.i.i.i525.i.i, i8 0, i64 1032, i1 false), !noalias !34382
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i526.i.i, align 8, !noalias !34543
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.3572.i.i) ]
  %.not227.i.i = icmp ugt i64 %.sroa.012.0578.i.i, %.sroa.14.3571.i.i
  br i1 %.not227.i.i, label %bb.cn, label %bb.cm, !prof !2480

bb.cm:                                            ; preds = %.loopexit254.i.i
  br i1 %i.sy, label %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h1bce71309496fbdfE.exit.i.i", label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.cm
  %i.tv = mul nuw nsw i64 %.sroa.012.0578.i.i, 1040
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.10.0.i.i.i520.i.i, ptr nonnull readonly align 8 %.sroa.016.3572.i.i, i64 %i.tv, i1 false), !alias.scope !34547, !noalias !34382
  br label %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h1bce71309496fbdfE.exit.i.i"

bb.cn:                                            ; preds = %.loopexit254.i.i
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.012.0578.i.i, i64 noundef %.sroa.14.3571.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1565) #43
          to label %bb.bp unwind label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit550.i.i", !noalias !34382

"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h1bce71309496fbdfE.exit.i.i": ; preds = %.lr.ph.preheader.i.i.i, %bb.cm
  %i.tw = icmp eq i64 %.sroa.14.3571.i.i, 0
  br i1 %i.tw, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h14c94f2a1b156012E.exit537.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i536.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i536.i.i": ; preds = %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h1bce71309496fbdfE.exit.i.i"
  tail call void @mi_free(ptr noundef nonnull align 8 %.sroa.016.3572.i.i) #38, !noalias !34382
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h14c94f2a1b156012E.exit537.i.i"

bb.co:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h14c94f2a1b156012E.exit537.i.i"
  %i.tx = icmp eq i64 %.sroa.023.0576.i.i, 0
  %..sroa.023.0.i.i = select i1 %i.tx, i64 %i.sz, i64 %.sroa.023.0576.i.i
  br label %bb.cp

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit546.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i545.i.i", %bb.cw, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h14c94f2a1b156012E.exit537.i.i"
  %.sroa.12.5.i.i = phi i64 [ %.sroa.12.2569.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h14c94f2a1b156012E.exit537.i.i" ], [ %.sroa.070.1.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i545.i.i" ], [ %.sroa.070.1.i.i, %bb.cw ] ; 10 uses
  %.sroa.026.5.i.i = phi ptr [ %.sroa.026.2570.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h14c94f2a1b156012E.exit537.i.i" ], [ %i.uj, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i545.i.i" ], [ %i.uj, %bb.cw ] ; 11 uses
  %.sroa.023.1.i.i = phi i64 [ %.sroa.023.0576.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h14c94f2a1b156012E.exit537.i.i" ], [ %.sroa.070.1.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i545.i.i" ], [ %.sroa.070.1.i.i, %bb.cw ]
  %.not615.i.i = icmp eq i64 %i.sv, 0
  br i1 %.not615.i.i, label %.preheader253.i.i, label %.lr.ph563.preheader.i.i

.lr.ph563.preheader.i.i:                          ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit546.i.i"
  %reass.sub428.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.14.7.i.i, i64 %.sroa.0.0579.i.i)
  %i.ty = add nuw nsw i64 %reass.sub428.i, 1
  %reass.sub429.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.12.5.i.i, i64 %.sroa.018.0577.i.i)
  %i.tz = add nuw nsw i64 %reass.sub429.i, 1
  br label %.lr.ph563.i.i

bb.cp:                                            ; preds = %bb.cp, %bb.co
  %.sroa.070.1.i.i = phi i64 [ %..sroa.023.0.i.i, %bb.co ], [ %i.ub, %bb.cp ] ; 9 uses
  %i.ua = icmp ult i64 %.sroa.070.1.i.i, %i.sz
  %i.ub = shl i64 %.sroa.070.1.i.i, 1
  br i1 %i.ua, label %bb.cp, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.uc = shl i64 %.sroa.070.1.i.i, 2             ; 4 uses
  %i.ud = icmp ugt i64 %.sroa.070.1.i.i, 4611686018427387903
  %i.ue = icmp ugt i64 %i.uc, 9223372036854775804
  %or.cond.i.i.i.i538.i.i = or i1 %i.ud, %i.ue
  br i1 %or.cond.i.i.i.i538.i.i, label %bb.ct, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i539.i.i, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i539.i.i: ; preds = %bb.cq
  %i.uf = icmp eq i64 %i.uc, 0
  br i1 %i.uf, label %bb.cu, label %bb.cr

bb.cr:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i539.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34554
  %i.ug = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.uc, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !34554 ; 2 uses
  %i.uh = icmp eq ptr %i.ug, null
  br i1 %i.uh, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ui = ptrtoint ptr %i.ug to i64
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cr, %bb.cq
  %.sroa.4.0.ph.i.i541.i.i = phi i64 [ 4, %bb.cr ], [ 0, %bb.cq ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i541.i.i, i64 %i.uc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc542.i.i unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !34382

.noexc542.i.i:                                    ; preds = %bb.ct
  unreachable

bb.cu:                                            ; preds = %bb.cs, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i539.i.i
  %.sroa.10.0.i.i540.i.i = phi i64 [ %i.ui, %bb.cs ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i539.i.i ]
  %i.uj = inttoptr i64 %.sroa.10.0.i.i540.i.i to ptr ; 5 uses
  %i.uk = icmp samesign ult i64 %.sroa.070.1.i.i, 2305843009213693952
  tail call void @llvm.assume(i1 %i.uk)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.uj) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.2570.i.i) ]
  %.not229.i.i = icmp ugt i64 %.sroa.023.0576.i.i, %.sroa.12.2569.i.i
  br i1 %.not229.i.i, label %bb.cv, label %bb.cw, !prof !2480

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.023.0576.i.i, i64 noundef %.sroa.12.2569.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1564) #43
          to label %bb.bp unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit548.i.i", !noalias !34382

bb.cw:                                            ; preds = %bb.cu
  %i.ul = shl nuw nsw i64 %.sroa.023.0576.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.uj, ptr nonnull readonly align 4 %.sroa.026.2570.i.i, i64 %i.ul, i1 false), !alias.scope !34559, !noalias !34563
  %i.um = icmp eq i64 %.sroa.12.2569.i.i, 0
  br i1 %i.um, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit546.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i545.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i545.i.i": ; preds = %bb.cw
  tail call void @mi_free(ptr noundef nonnull align 4 %.sroa.026.2570.i.i) #38, !noalias !34382
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit546.i.i"

.preheader253.i.i:                                ; preds = %bb.dg, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit546.i.i"
  %.sroa.018.1.lcssa.i.i = phi i64 [ %.sroa.018.0577.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit546.i.i" ], [ %i.vs, %bb.dg ]
  %.sroa.0.1.lcssa.i.i = phi i64 [ %.sroa.0.0579.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit546.i.i" ], [ %i.vl, %bb.dg ]
  br i1 %.not910.i.i, label %._crit_edge568.i.i, label %.lr.ph567.i.i

.lr.ph567.i.i:                                    ; preds = %.preheader253.i.i
  %i.un = trunc i64 %.sroa.029.0575.i.i to i32
  br label %bb.cx

._crit_edge568.i.i:                               ; preds = %bb.cz, %.preheader253.i.i
  %i.uo = add i64 %i.sv, %.sroa.029.0575.i.i      ; 23 uses
  %i.up = add i64 %.sroa.047.1573.i.i, 64         ; 2 uses
  %i.uq = icmp ult i64 %i.up, %.sroa.0.0.i.i
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, -64
  br i1 %i.uq, label %.split.i.i, label %bb.an

bb.cx:                                            ; preds = %bb.cz, %.lr.ph567.i.i
  %i.ur = phi i64 [ 1, %.lr.ph567.i.i ], [ %i.vc, %bb.cz ] ; 3 uses
  %.sroa.0133.0566.i.i = phi i64 [ 0, %.lr.ph567.i.i ], [ %i.ur, %bb.cz ] ; 2 uses
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %.sroa.0133.0566.i.i
  %i.ut = load i32, ptr %i.us, align 4, !noalias !34382, !noundef !27 ; 2 uses
  %i.uu = zext i32 %i.ut to i64                   ; 2 uses
  %i.uv = icmp ult i32 %i.ut, 64
  br i1 %i.uv, label %bb.cy, label %.invoke3973

bb.cy:                                            ; preds = %bb.cx
  %i.uw = or disjoint i64 %.sroa.0133.0566.i.i, %.sroa.047.1573.i.i ; 3 uses
  %i.ux = icmp ult i64 %i.uw, %.sroa.0.0.i.i
  br i1 %i.ux, label %bb.cz, label %.invoke3973

bb.cz:                                            ; preds = %bb.cy
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.uu
  %i.uz = load i32, ptr %i.uy, align 4, !noalias !34382, !noundef !27
  %i.va = add i32 %i.uz, %i.un
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.uw
  store i32 %i.va, ptr %i.vb, align 4, !noalias !34382
  %i.vc = add nuw nsw i64 %i.ur, 1
  %exitcond837.not.i.i = icmp eq i64 %i.ur, %umax836.i.i
  br i1 %exitcond837.not.i.i, label %._crit_edge568.i.i, label %bb.cx

.lr.ph563.i.i:                                    ; preds = %bb.dg, %.lr.ph563.preheader.i.i
  %i.vd = phi i64 [ %i.vv, %bb.dg ], [ 1, %.lr.ph563.preheader.i.i ] ; 6 uses
  %.sroa.0.1562.i.i = phi i64 [ %i.vl, %bb.dg ], [ %.sroa.0.0579.i.i, %.lr.ph563.preheader.i.i ] ; 3 uses
  %.sroa.018.1561.i.i = phi i64 [ %i.vs, %bb.dg ], [ %.sroa.018.0577.i.i, %.lr.ph563.preheader.i.i ] ; 3 uses
  %.sroa.0131.0560.i.i = phi i64 [ %i.vd, %bb.dg ], [ 0, %.lr.ph563.preheader.i.i ] ; 2 uses
  %exitcond830.not.i.i = icmp eq i64 %i.vd, 65
  br i1 %exitcond830.not.i.i, label %.invoke3973, label %bb.da

bb.da:                                            ; preds = %.lr.ph563.i.i
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.sroa.0131.0560.i.i ; 2 uses
  %i.vf = load i32, ptr %i.ve, align 4, !noalias !34382, !noundef !27
  %i.vg = zext i32 %i.vf to i64                   ; 4 uses
  %i.vh = icmp samesign ugt i64 %.sroa.0.0.i422.i.i, %i.vg
  br i1 %i.vh, label %bb.dc, label %.invoke3973

bb.db:                                            ; preds = %bb.dd
  %i.vi = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i"

bb.dc:                                            ; preds = %bb.da
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.7.i.i) ]
  %exitcond832.not.i.i = icmp eq i64 %i.vd, %i.ty
  br i1 %exitcond832.not.i.i, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.0.1562.i.i, i64 noundef %.sroa.14.7.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1561) #43
          to label %bb.bp unwind label %bb.db, !noalias !34382

end_hunk_4
begin_hunk_5_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
  %i.aqy = icmp eq ptr %i.aqx, null
  br i1 %i.aqy, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.aqz = ptrtoint ptr %i.aqx to i64
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17hc6759c00225004c5E.exit"

bb.gu:                                            ; preds = %bb.gs, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit"
  %.sroa.4.0.ph.i.i43 = phi i64 [ 2, %bb.gs ], [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit" ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i43, i64 %i.aqt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !34678
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17hc6759c00225004c5E.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i41, %bb.gt
  %.sroa.10.0.i.i42 = phi i64 [ %i.aqz, %bb.gt ], [ 2, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i41 ]
  %i.ara = inttoptr i64 %.sroa.10.0.i.i42 to ptr  ; 22 uses
  %i.arb = icmp samesign ult i64 %2, 4611686018427387904
  tail call void @llvm.assume(i1 %i.arb)
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 %2) ; 9 uses
  %.not = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17hc6759c00225004c5E.exit"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ara) ]
  %min.iters.check3793 = icmp samesign ult i64 %.sroa.0.0.i, 17
  br i1 %min.iters.check3793, label %scalar.ph3792.preheader, label %vector.memcheck3786

scalar.ph3792.preheader:                          ; preds = %vector.body3796, %vector.memcheck3786, %.lr.ph
  %.sroa.09.0931.ph = phi i64 [ 0, %vector.memcheck3786 ], [ 0, %.lr.ph ], [ %n.vec3795, %vector.body3796 ] ; 4 uses
  %i.arc = sub i64 %.sroa.0.0.i, %.sroa.09.0931.ph
  %xtraiter4684 = and i64 %i.arc, 3               ; 2 uses
  %lcmp.mod4685.not = icmp eq i64 %xtraiter4684, 0
  br i1 %lcmp.mod4685.not, label %scalar.ph3792.prol.loopexit, label %scalar.ph3792.prol

scalar.ph3792.prol:                               ; preds = %scalar.ph3792.preheader, %scalar.ph3792.prol
  %.sroa.09.0931.prol = phi i64 [ %i.ard, %scalar.ph3792.prol ], [ %.sroa.09.0931.ph, %scalar.ph3792.preheader ] ; 3 uses
  %prol.iter4686 = phi i64 [ %prol.iter4686.next, %scalar.ph3792.prol ], [ 0, %scalar.ph3792.preheader ]
  %i.ard = add nuw i64 %.sroa.09.0931.prol, 1     ; 2 uses
  %i.are = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0931.prol
  %i.arf = getelementptr inbounds nuw i8, ptr %i.are, i64 12
  %i.arg = load i16, ptr %i.arf, align 4, !noundef !27
  %i.arh = getelementptr inbounds nuw [2 x i8], ptr %i.ara, i64 %.sroa.09.0931.prol
  store i16 %i.arg, ptr %i.arh, align 2
  %prol.iter4686.next = add i64 %prol.iter4686, 1 ; 2 uses
  %prol.iter4686.cmp.not = icmp eq i64 %prol.iter4686.next, %xtraiter4684
  br i1 %prol.iter4686.cmp.not, label %scalar.ph3792.prol.loopexit, label %scalar.ph3792.prol, !llvm.loop !34679

scalar.ph3792.prol.loopexit:                      ; preds = %scalar.ph3792.prol, %scalar.ph3792.preheader
  %.sroa.09.0931.unr = phi i64 [ %.sroa.09.0931.ph, %scalar.ph3792.preheader ], [ %i.ard, %scalar.ph3792.prol ]
  %i.ari = sub i64 %.sroa.09.0931.ph, %.sroa.0.0.i
  %i.arj = icmp ugt i64 %i.ari, -4
  br i1 %i.arj, label %._crit_edge, label %scalar.ph3792

vector.memcheck3786:                              ; preds = %.lr.ph
  %i.ark = shl nuw nsw i64 %.sroa.0.0.i, 1
  %scevgep = getelementptr i8, ptr %i.ara, i64 %i.ark
  %scevgep3787 = getelementptr i8, ptr %0, i64 12
  %i.arl = shl i64 %.sroa.0.0.i, 4
  %i.arm = getelementptr i8, ptr %0, i64 %i.arl
  %scevgep3788 = getelementptr i8, ptr %i.arm, i64 -2
  %bound03789 = icmp ugt ptr %scevgep3788, %i.ara
  %bound13790 = icmp ult ptr %scevgep3787, %scevgep
  %found.conflict3791 = and i1 %bound03789, %bound13790
  br i1 %found.conflict3791, label %scalar.ph3792.preheader, label %vector.ph3794

vector.ph3794:                                    ; preds = %vector.memcheck3786
  %i.arn = and i64 %.sroa.0.0.i, 7                ; 2 uses
  %i.aro = icmp eq i64 %i.arn, 0
  %i.arp = select i1 %i.aro, i64 8, i64 %i.arn
  %n.vec3795 = sub nsw i64 %.sroa.0.0.i, %i.arp   ; 2 uses
  br label %vector.body3796

vector.body3796:                                  ; preds = %vector.body3796, %vector.ph3794
  %index3797 = phi i64 [ 0, %vector.ph3794 ], [ %index.next3798, %vector.body3796 ] ; 10 uses
  %i.arq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index3797
  %i.arr = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index3797
  %i.ars = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index3797
  %i.art = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index3797
  %i.aru = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index3797
  %i.arv = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index3797
  %i.arw = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index3797
  %i.arx = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index3797
  %i.ary = getelementptr inbounds nuw i8, ptr %i.arq, i64 12
  %i.arz = getelementptr inbounds nuw i8, ptr %i.arr, i64 28
  %i.asa = getelementptr inbounds nuw i8, ptr %i.ars, i64 44
  %i.asb = getelementptr inbounds nuw i8, ptr %i.art, i64 60
  %i.asc = getelementptr inbounds nuw i8, ptr %i.aru, i64 76
  %i.asd = getelementptr inbounds nuw i8, ptr %i.arv, i64 92
  %i.ase = getelementptr inbounds nuw i8, ptr %i.arw, i64 108
  %i.asf = getelementptr inbounds nuw i8, ptr %i.arx, i64 124
  %i.asg = load i16, ptr %i.ary, align 4, !alias.scope !34680, !noundef !27
  %i.ash = load i16, ptr %i.arz, align 4, !alias.scope !34680, !noundef !27
  %i.asi = load i16, ptr %i.asa, align 4, !alias.scope !34680, !noundef !27
  %i.asj = load i16, ptr %i.asb, align 4, !alias.scope !34680, !noundef !27
  %i.ask = load i16, ptr %i.asc, align 4, !alias.scope !34680, !noundef !27
  %i.asl = load i16, ptr %i.asd, align 4, !alias.scope !34680, !noundef !27
  %i.asm = load i16, ptr %i.ase, align 4, !alias.scope !34680, !noundef !27
  %i.asn = load i16, ptr %i.asf, align 4, !alias.scope !34680, !noundef !27
  %i.aso = insertelement <8 x i16> poison, i16 %i.asg, i64 0
  %i.asp = insertelement <8 x i16> %i.aso, i16 %i.ash, i64 1
  %i.asq = insertelement <8 x i16> %i.asp, i16 %i.asi, i64 2
  %i.asr = insertelement <8 x i16> %i.asq, i16 %i.asj, i64 3
  %i.ass = insertelement <8 x i16> %i.asr, i16 %i.ask, i64 4
  %i.ast = insertelement <8 x i16> %i.ass, i16 %i.asl, i64 5
  %i.asu = insertelement <8 x i16> %i.ast, i16 %i.asm, i64 6
  %i.asv = insertelement <8 x i16> %i.asu, i16 %i.asn, i64 7
  %i.asw = getelementptr inbounds nuw [2 x i8], ptr %i.ara, i64 %index3797
  store <8 x i16> %i.asv, ptr %i.asw, align 2, !alias.scope !34683, !noalias !34680
  %index.next3798 = add nuw i64 %index3797, 8     ; 2 uses
  %i.asx = icmp eq i64 %index.next3798, %n.vec3795
  br i1 %i.asx, label %scalar.ph3792.preheader, label %vector.body3796, !llvm.loop !34685

.body434.thread:                                  ; preds = %.invoke2928, %.invoke2926
  %i.asy = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.sink.split"

._crit_edge:                                      ; preds = %scalar.ph3792.prol.loopexit, %scalar.ph3792, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17hc6759c00225004c5E.exit"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ara) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34689)
  %i.asz = udiv i64 %2, 530
  %i.ata = tail call i64 @llvm.umin.i64(i64 %i.asz, i64 49) ; 8 uses
  %spec.store.select.i44 = add nuw nsw i64 %i.ata, 1 ; 18 uses
  %i.atb = icmp eq i64 %2, 0                      ; 2 uses
  br i1 %i.atb, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17hc6759c00225004c5E.exit446.thread", label %bb.gv

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17hc6759c00225004c5E.exit446.thread": ; preds = %._crit_edge
  %i.atc = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 1, ptr %i.atc, align 8, !alias.scope !34689, !noalias !34686
  br label %bb.op

bb.gv:                                            ; preds = %._crit_edge
  %i.atd = icmp samesign ult i64 %2, 128
  br i1 %i.atd, label %bb.gw, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i45

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i45: ; preds = %bb.gv
  %i.ate = mul nuw nsw i64 %spec.store.select.i44, 2832 ; 3 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34691
  %i.atf = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.ate, i64 noundef range(i64 1, 9) 8) #38, !noalias !34691 ; 17 uses
  %i.atg = icmp eq ptr %i.atf, null
  br i1 %i.atg, label %.invoke2926, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i"

.invoke2926:                                      ; preds = %bb.og, %bb.oh, %bb.oc, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i222.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i45
  %i.ath = phi i64 [ 0, %bb.oc ], [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i45 ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i222.i ], [ 4, %bb.oh ], [ 0, %bb.og ]
  %i.ati = phi i64 [ %.sroa.014.1.i432, %bb.oc ], [ %i.ate, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i45 ], [ %.sroa.014.1.i432, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i222.i ], [ %i.ciq, %bb.oh ], [ %i.ciq, %bb.og ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.ath, i64 %i.ati, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.cont2927 unwind label %.body434.thread

.cont2927:                                        ; preds = %.invoke2926
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i45
  %.not92.i = icmp samesign ult i64 %2, 530
  br i1 %.not92.i, label %.loopexit109.i, label %.lr.ph.i.i.i.i46.preheader

.lr.ph.i.i.i.i46.preheader:                       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i"
  %i.atj = add nsw i64 %i.ata, -1
  %xtraiter4687 = and i64 %i.ata, 7               ; 3 uses
  %i.atk = icmp ult i64 %i.atj, 7
  br i1 %i.atk, label %.lr.ph.i.i.i.i46.epil.preheader, label %.lr.ph.i.i.i.i46.preheader.new

.lr.ph.i.i.i.i46.preheader.new:                   ; preds = %.lr.ph.i.i.i.i46.preheader
  %unroll_iter4692 = and i64 %i.ata, 56
  br label %.lr.ph.i.i.i.i46

.lr.ph.i.i.i.i46:                                 ; preds = %.lr.ph.i.i.i.i46, %.lr.ph.i.i.i.i46.preheader.new
  %.sroa.0.08.i.i.i.i47 = phi ptr [ %i.atf, %.lr.ph.i.i.i.i46.preheader.new ], [ %i.ats, %.lr.ph.i.i.i.i46 ] ; 17 uses
  %niter4693 = phi i64 [ 0, %.lr.ph.i.i.i.i46.preheader.new ], [ %niter4693.next.7, %.lr.ph.i.i.i.i46 ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.08.i.i.i.i47, i8 0, i64 2824, i1 false), !noalias !34699
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49, align 8, !noalias !34700
  %i.atl = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 2832
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 5656
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.atl, i8 0, i64 2824, i1 false), !noalias !34699
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.1, align 8, !noalias !34700
  %i.atm = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 5664
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 8488
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.atm, i8 0, i64 2824, i1 false), !noalias !34699
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.2, align 8, !noalias !34700
  %i.atn = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 8496
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 11320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.atn, i8 0, i64 2824, i1 false), !noalias !34699
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.3, align 8, !noalias !34700
  %i.ato = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 11328
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 14152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.ato, i8 0, i64 2824, i1 false), !noalias !34699
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.4, align 8, !noalias !34700
  %i.atp = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 14160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 16984
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.atp, i8 0, i64 2824, i1 false), !noalias !34699
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.5, align 8, !noalias !34700
  %i.atq = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 16992
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 19816
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.atq, i8 0, i64 2824, i1 false), !noalias !34699
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.6, align 8, !noalias !34700
  %i.atr = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 19824
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 22648
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.atr, i8 0, i64 2824, i1 false), !noalias !34699
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.7, align 8, !noalias !34700
  %i.ats = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 22656 ; 3 uses
  %niter4693.next.7 = add nuw i64 %niter4693, 8   ; 2 uses
  %niter4693.ncmp.7 = icmp eq i64 %niter4693.next.7, %unroll_iter4692
  br i1 %niter4693.ncmp.7, label %.loopexit109.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i46

bb.gw:                                            ; preds = %bb.gv
  %.val110.i421 = load ptr, ptr %8, align 8, !alias.scope !34689, !noalias !34686, !nonnull !27, !align !206, !noundef !27 ; 3 uses
  %i.att = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %.val111.i422 = load i64, ptr %i.att, align 8, !alias.scope !34689, !noalias !34686, !noundef !27 ; 5 uses
  %i.atu = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.atv = load i64, ptr %i.atu, align 8, !alias.scope !34689, !noalias !34686, !noundef !27 ; 6 uses
  %i.atw = add i64 %i.atv, 1                      ; 7 uses
  %i.atx = icmp ult i64 %.val111.i422, %i.atw
  br i1 %i.atx, label %bb.oa, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit229.i"

.thread.i60:                                      ; preds = %bb.hc, %.split32.us.i.invoke.i, %.split29.us.i.invoke.i
  %i.aty = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit.i"

.loopexit109.i.loopexit.unr-lcssa:                ; preds = %.lr.ph.i.i.i.i46
  %lcmp.mod4689.not = icmp eq i64 %xtraiter4687, 0
  br i1 %lcmp.mod4689.not, label %.loopexit109.i, label %.lr.ph.i.i.i.i46.epil.preheader

.lr.ph.i.i.i.i46.epil.preheader:                  ; preds = %.loopexit109.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i46.preheader
  %.sroa.0.08.i.i.i.i47.epil.init = phi ptr [ %i.atf, %.lr.ph.i.i.i.i46.preheader ], [ %i.ats, %.loopexit109.i.loopexit.unr-lcssa ]
  %lcmp.mod4691 = icmp ne i64 %xtraiter4687, 0
  call void @llvm.assume(i1 %lcmp.mod4691)
  br label %.lr.ph.i.i.i.i46.epil

.lr.ph.i.i.i.i46.epil:                            ; preds = %.lr.ph.i.i.i.i46.epil, %.lr.ph.i.i.i.i46.epil.preheader
  %.sroa.0.08.i.i.i.i47.epil = phi ptr [ %i.atz, %.lr.ph.i.i.i.i46.epil ], [ %.sroa.0.08.i.i.i.i47.epil.init, %.lr.ph.i.i.i.i46.epil.preheader ] ; 3 uses
  %epil.iter4688 = phi i64 [ %epil.iter4688.next, %.lr.ph.i.i.i.i46.epil ], [ 0, %.lr.ph.i.i.i.i46.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47.epil, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.08.i.i.i.i47.epil, i8 0, i64 2824, i1 false), !noalias !34699
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.epil, align 8, !noalias !34700
  %i.atz = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47.epil, i64 2832 ; 2 uses
  %epil.iter4688.next = add i64 %epil.iter4688, 1 ; 2 uses
  %epil.iter4688.cmp.not = icmp eq i64 %epil.iter4688.next, %xtraiter4687
  br i1 %epil.iter4688.cmp.not, label %.loopexit109.i, label %.lr.ph.i.i.i.i46.epil, !llvm.loop !34703

.loopexit109.i:                                   ; preds = %.loopexit109.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i46.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i"
  %.sroa.0.0.lcssa15.i.i.i.i51 = phi ptr [ %i.atf, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i" ], [ %i.ats, %.loopexit109.i.loopexit.unr-lcssa ], [ %i.atz, %.lr.ph.i.i.i.i46.epil ] ; 2 uses
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i52 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i.i51, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.0.lcssa15.i.i.i.i51, i8 0, i64 2824, i1 false), !noalias !34699
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i52, align 8, !noalias !34700
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34704)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34707)
  %i.aua = getelementptr inbounds nuw i8, ptr %i.atf, i64 %i.ate
  %xtraiter4694 = and i64 %spec.store.select.i44, 7 ; 2 uses
  %lcmp.mod4695.not = icmp eq i64 %xtraiter4694, 0
  br i1 %lcmp.mod4695.not, label %.lr.ph.i.i.i53.prol.loopexit, label %.lr.ph.i.i.i53.prol

.lr.ph.i.i.i53.prol:                              ; preds = %.loopexit109.i, %.lr.ph.i.i.i53.prol
  %.sroa.02.05.i.i.i54.prol = phi ptr [ %i.aub, %.lr.ph.i.i.i53.prol ], [ %i.atf, %.loopexit109.i ] ; 3 uses
  %prol.iter4696 = phi i64 [ %prol.iter4696.next, %.lr.ph.i.i.i53.prol ], [ 0, %.loopexit109.i ]
  %i.aub = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54.prol, i64 2832 ; 2 uses
  %i.auc = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54.prol, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %.sroa.02.05.i.i.i54.prol, i8 0, i64 2824, i1 false), !alias.scope !34709, !noalias !34712
  store float 3.402000e+38, ptr %i.auc, align 8, !alias.scope !34713, !noalias !34712
  %prol.iter4696.next = add i64 %prol.iter4696, 1 ; 2 uses
  %prol.iter4696.cmp.not = icmp eq i64 %prol.iter4696.next, %xtraiter4694
  br i1 %prol.iter4696.cmp.not, label %.lr.ph.i.i.i53.prol.loopexit, label %.lr.ph.i.i.i53.prol, !llvm.loop !34716

.lr.ph.i.i.i53.prol.loopexit:                     ; preds = %.lr.ph.i.i.i53.prol, %.loopexit109.i
  %.sroa.02.05.i.i.i54.unr = phi ptr [ %i.atf, %.loopexit109.i ], [ %i.aub, %.lr.ph.i.i.i53.prol ]
  %i.aud = icmp samesign ult i64 %2, 3710
  br i1 %i.aud, label %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.preheader.split.i.i, label %.lr.ph.i.i.i53

.lr.ph.i.i.i53:                                   ; preds = %.lr.ph.i.i.i53.prol.loopexit, %.lr.ph.i.i.i53
  %.sroa.02.05.i.i.i54 = phi ptr [ %i.aus, %.lr.ph.i.i.i53 ], [ %.sroa.02.05.i.i.i54.unr, %.lr.ph.i.i.i53.prol.loopexit ] ; 17 uses
  %i.aue = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 2832
  %i.auf = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %.sroa.02.05.i.i.i54, i8 0, i64 2824, i1 false), !alias.scope !34709, !noalias !34712
  store float 3.402000e+38, ptr %i.auf, align 8, !alias.scope !34713, !noalias !34712
  %i.aug = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 5664
  %i.auh = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 5656
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %i.aue, i8 0, i64 2824, i1 false), !alias.scope !34709, !noalias !34712
  store float 3.402000e+38, ptr %i.auh, align 8, !alias.scope !34713, !noalias !34712
  %i.aui = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 8496
  %i.auj = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 8488
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %i.aug, i8 0, i64 2824, i1 false), !alias.scope !34709, !noalias !34712
  store float 3.402000e+38, ptr %i.auj, align 8, !alias.scope !34713, !noalias !34712
  %i.auk = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 11328
  %i.aul = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 11320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %i.aui, i8 0, i64 2824, i1 false), !alias.scope !34709, !noalias !34712
  store float 3.402000e+38, ptr %i.aul, align 8, !alias.scope !34713, !noalias !34712
  %i.aum = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 14160
  %i.aun = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 14152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %i.auk, i8 0, i64 2824, i1 false), !alias.scope !34709, !noalias !34712
  store float 3.402000e+38, ptr %i.aun, align 8, !alias.scope !34713, !noalias !34712
  %i.auo = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 16992
  %i.aup = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 16984
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %i.aum, i8 0, i64 2824, i1 false), !alias.scope !34709, !noalias !34712
  store float 3.402000e+38, ptr %i.aup, align 8, !alias.scope !34713, !noalias !34712
  %i.auq = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 19824
  %i.aur = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 19816
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %i.auo, i8 0, i64 2824, i1 false), !alias.scope !34709, !noalias !34712
  store float 3.402000e+38, ptr %i.aur, align 8, !alias.scope !34713, !noalias !34712
  %i.aus = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 22656 ; 2 uses
  %i.aut = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 22648
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %i.auq, i8 0, i64 2824, i1 false), !alias.scope !34709, !noalias !34712
  store float 3.402000e+38, ptr %i.aut, align 8, !alias.scope !34713, !noalias !34712
  %i.auu = icmp eq ptr %i.aus, %i.aua
  br i1 %i.auu, label %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.preheader.split.i.i, label %.lr.ph.i.i.i53

_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.preheader.split.i.i: ; preds = %.lr.ph.i.i.i53, %.lr.ph.i.i.i53.prol.loopexit
  %i.auv = udiv i64 %2, %spec.store.select.i44
  %i.auw = add nsw i64 %2, -41
  br label %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.preheader.split.split.i.i

_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.loopexit.i.i: ; preds = %bb.ha
  %exitcond.not.i.i67 = icmp eq i64 %.sroa.07.024.i.i, %i.ata
  br i1 %exitcond.not.i.i67, label %.lr.ph.i.i68, label %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.preheader.split.split.i.i

_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.preheader.split.split.i.i: ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.loopexit.i.i, %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.preheader.split.i.i
  %.sroa.0.025.i.i = phi i32 [ %.sroa.0.1.i.i57, %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.loopexit.i.i ], [ 7, %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.preheader.split.i.i ] ; 3 uses
  %.sroa.07.024.i.i = phi i64 [ %i.aux, %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.loopexit.i.i ], [ 0, %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.preheader.split.i.i ] ; 5 uses
  %i.aux = add nuw nsw i64 %.sroa.07.024.i.i, 1
  %i.auy = mul i64 %.sroa.07.024.i.i, %2
  %i.auz = udiv i64 %i.auy, %spec.store.select.i44 ; 2 uses
  %i.ava = icmp eq i64 %.sroa.07.024.i.i, 0
  br i1 %i.ava, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gy, %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.preheader.split.split.i.i
  %.sroa.04.0.i.i56 = phi i64 [ %i.auz, %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.preheader.split.split.i.i ], [ %i.avh, %bb.gy ] ; 2 uses
  %.sroa.0.1.i.i57 = phi i32 [ %.sroa.0.025.i.i, %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.preheader.split.split.i.i ], [ %spec.store.select.i.i55, %bb.gy ]
  %i.avb = add i64 %.sroa.04.0.i.i56, 40
  %.not.i.i58 = icmp ult i64 %i.avb, %2
  %spec.select.i.i59 = select i1 %.not.i.i58, i64 %.sroa.04.0.i.i56, i64 %i.auw ; 4 uses
  %i.avc = icmp ugt i64 %spec.select.i.i59, %2
  br i1 %i.avc, label %.split29.us.i.invoke.i, label %bb.gz, !prof !29

bb.gy:                                            ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.preheader.split.split.i.i
  %i.avd = icmp eq i32 %.sroa.0.025.i.i, 0
  %i.ave = mul i32 %.sroa.0.025.i.i, 16807
  %spec.store.select.i.i55 = select i1 %i.avd, i32 1, i32 %i.ave ; 2 uses
  %i.avf = zext i32 %spec.store.select.i.i55 to i64
  %i.avg = urem i64 %i.avf, %i.auv
  %i.avh = add i64 %i.avg, %i.auz
  br label %bb.gx

bb.gz:                                            ; preds = %bb.gx
  %i.avi = getelementptr inbounds nuw [2832 x i8], ptr %i.atf, i64 %.sroa.07.024.i.i ; 3 uses
  %i.avj = sub nuw nsw i64 %2, %spec.select.i.i59 ; 2 uses
  %i.avk = getelementptr inbounds nuw [2 x i8], ptr %i.ara, i64 %spec.select.i.i59 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34717)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34720)
  %i.avl = getelementptr inbounds nuw i8, ptr %i.avi, i64 2816 ; 2 uses
  %i.avm = load i64, ptr %i.avl, align 8, !alias.scope !34722, !noalias !34725, !noundef !27
  %i.avn = add i64 %i.avm, 40
  store i64 %i.avn, ptr %i.avl, align 8, !alias.scope !34726, !noalias !34725
  %i.avo = icmp samesign ugt i64 %i.avj, 39
  br i1 %i.avo, label %.preheader.i.i.i63, label %.split29.us.i.invoke.i, !prof !202

.split29.us.i.invoke.i:                           ; preds = %bb.gz, %bb.gx
  %.ph180 = phi i64 [ 0, %bb.gz ], [ %spec.select.i.i59, %bb.gx ]
  %.ph181 = phi i64 [ 40, %bb.gz ], [ %2, %bb.gx ]
  %.ph182 = phi i64 [ %i.avj, %bb.gz ], [ %2, %bb.gx ]
  %.ph183 = phi ptr [ @1934, %bb.gz ], [ @1573, %bb.gx ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.ph180, i64 noundef %.ph181, i64 noundef %.ph182, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.ph183) #43
          to label %.split29.us.i.cont.i unwind label %.thread.i60, !noalias !34699

.split29.us.i.cont.i:                             ; preds = %.split29.us.i.invoke.i
  unreachable

.preheader.i.i.i63:                               ; preds = %bb.gz, %bb.ha
  %.sroa.02.0.idx7.i.i.i64 = phi i64 [ %.sroa.02.0.add.i.i.i66.1, %bb.ha ], [ 0, %bb.gz ] ; 3 uses
  %.sroa.02.0.ptr.i.i.i65 = getelementptr inbounds nuw i8, ptr %i.avk, i64 %.sroa.02.0.idx7.i.i.i64
  %i.avp = load i16, ptr %.sroa.02.0.ptr.i.i.i65, align 2, !alias.scope !34729, !noalias !34732, !noundef !27 ; 2 uses
  %i.avq = zext i16 %i.avp to i64                 ; 2 uses
  %i.avr = icmp ult i16 %i.avp, 704
  br i1 %i.avr, label %.preheader.i.i.i63.1, label %.split32.us.i.invoke.i

.preheader.i.i.i63.1:                             ; preds = %.preheader.i.i.i63
  %i.avs = getelementptr inbounds nuw [4 x i8], ptr %i.avi, i64 %i.avq ; 2 uses
  %i.avt = load i32, ptr %i.avs, align 4, !alias.scope !34733, !noalias !34725, !noundef !27
  %i.avu = add i32 %i.avt, 1
  store i32 %i.avu, ptr %i.avs, align 4, !alias.scope !34733, !noalias !34725
  %i.avv = getelementptr inbounds nuw i8, ptr %i.avk, i64 %.sroa.02.0.idx7.i.i.i64
  %.sroa.02.0.ptr.i.i.i65.1 = getelementptr inbounds nuw i8, ptr %i.avv, i64 2
  %i.avw = load i16, ptr %.sroa.02.0.ptr.i.i.i65.1, align 2, !alias.scope !34729, !noalias !34732, !noundef !27 ; 2 uses
  %i.avx = zext i16 %i.avw to i64                 ; 2 uses
  %i.avy = icmp ult i16 %i.avw, 704
  br i1 %i.avy, label %bb.ha, label %.split32.us.i.invoke.i

bb.ha:                                            ; preds = %.preheader.i.i.i63.1
  %.sroa.02.0.add.i.i.i66.1 = add nuw nsw i64 %.sroa.02.0.idx7.i.i.i64, 4 ; 2 uses
  %i.avz = getelementptr inbounds nuw [4 x i8], ptr %i.avi, i64 %i.avx ; 2 uses
  %i.awa = load i32, ptr %i.avz, align 4, !alias.scope !34733, !noalias !34725, !noundef !27
  %i.awb = add i32 %i.awa, 1
  store i32 %i.awb, ptr %i.avz, align 4, !alias.scope !34733, !noalias !34725
  %i.awc = icmp eq i64 %.sroa.02.0.add.i.i.i66.1, 80
  br i1 %i.awc, label %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.loopexit.i.i, label %.preheader.i.i.i63

.split32.us.i.invoke.i:                           ; preds = %.preheader.i.i.i63, %.preheader.i.i.i63.1, %.preheader.i.i.i.i70, %.preheader.i.i.i.i70.1
  %i.awd = phi i64 [ %i.axa, %.preheader.i.i.i.i70.1 ], [ %i.awt, %.preheader.i.i.i.i70 ], [ %i.avq, %.preheader.i.i.i63 ], [ %i.avx, %.preheader.i.i.i63.1 ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.awd, i64 noundef 704, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1933) #43
          to label %.split32.us.i.cont.i unwind label %.thread.i60, !noalias !34699

.split32.us.i.cont.i:                             ; preds = %.split32.us.i.invoke.i
  unreachable
end_hunk_5
begin_hunk_6_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
          cleanup
  tail call void @mi_free(ptr noundef nonnull %i.ayj) #38, !noalias !34699
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i96"

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i158.i: ; preds = %bb.hh, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i152.i
  %.sroa.10.0.i.i153.i = phi i64 [ %i.ayt, %bb.hh ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i152.i ]
  %i.ayv = inttoptr i64 %.sroa.10.0.i.i153.i to ptr ; 8 uses
  %i.ayw = shl nuw nsw i64 %spec.store.select.i44, 1 ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34800
  %i.ayx = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.ayw, i64 noundef range(i64 1, -9223372036854775807) 2) #38, !noalias !34800 ; 4 uses
  %i.ayy = icmp eq ptr %i.ayx, null
  br i1 %i.ayy, label %bb.hj, label %.split.i77

bb.hj:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i158.i
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 2, i64 %i.ayw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc161.i unwind label %.thread55.i416, !noalias !34699

.noexc161.i:                                      ; preds = %bb.hj
  unreachable

.thread55.i416:                                   ; preds = %bb.hj
  %i.ayz = landingpad { ptr, i32 }
          cleanup
  br label %bb.nz

.split.i77:                                       ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i158.i
  %i.aza = icmp slt i32 %.72.val, 12
  %..i78 = select i1 %i.aza, i64 3, i64 10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ayv) ]
  %i.azb = add nuw nsw i64 %i.ata, 2              ; 2 uses
  %i.azc = getelementptr inbounds nuw i8, ptr %i.ara, i64 %i.aqt
  %i.azd = add nsw i64 %2, -1                     ; 4 uses
  %i.aze = getelementptr inbounds nuw i8, ptr %i.axz, i64 %i.azd
  %i.azf = add nuw nsw i64 %2, 1
  %i.azg = call i64 @llvm.umin.i64(i64 %2, i64 %i.azd) ; 2 uses
  %min.iters.check3812 = icmp samesign ult i64 %i.azg, 32
  %i.azh = add nuw nsw i64 %i.azg, 1              ; 2 uses
  %i.azi = and i64 %i.azh, 31                     ; 2 uses
  %i.azj = icmp eq i64 %i.azi, 0
  %i.azk = select i1 %i.azj, i64 32, i64 %i.azi
  %n.vec3814 = sub nsw i64 %i.azh, %i.azk         ; 3 uses
  %i.azl = add i64 %n.vec3814, 1
  br label %bb.li

_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h6c59ba65453f6d9bE.exit.loopexit.i: ; preds = %_ZN6brotli3enc9histogram16HistogramAddItem17hd4bb9e12450b56bfE.exit.i.i
  %i.azm = icmp samesign ult i64 %.sroa.032.1442.i, %..i78 ; 2 uses
  %i.azn = zext i1 %i.azm to i64
  %.sroa.032.1.i207 = add nuw nsw i64 %.sroa.032.1442.i, %i.azn
  br i1 %i.azm, label %bb.li, label %bb.hk

.body.i406:                                       ; preds = %bb.hn
  %lpad.thr_comm.split-lp.i407 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit220.i"

bb.hk:                                            ; preds = %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h6c59ba65453f6d9bE.exit.loopexit.i
  tail call void @mi_free(ptr noundef nonnull align 4 %i.ayf) #38, !noalias !34699
  tail call void @mi_free(ptr noundef nonnull align 4 %i.ayj) #38, !noalias !34699
  br i1 %i.ayq, label %bb.hl, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i163.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i163.i": ; preds = %bb.hk
  tail call void @mi_free(ptr noundef nonnull align 1 %i.ayv) #38, !noalias !34699
  br label %bb.hl

bb.hl:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i163.i", %bb.hk
  tail call void @mi_free(ptr noundef nonnull align 2 %i.ayx) #38, !noalias !34699
  tail call void @mi_free(ptr noundef nonnull align 8 %i.atf) #38, !noalias !34699
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34805)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34808)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34810)
  %i.azo = shl i64 %.sroa.0.0.i.i205, 2           ; 6 uses
  %i.azp = icmp ugt i64 %.sroa.0.0.i.i205, 4611686018427387903
  %i.azq = icmp ugt i64 %i.azo, 9223372036854775804
  %or.cond.i.i.i.i.i166.i = or i1 %i.azp, %i.azq
  br i1 %or.cond.i.i.i.i.i166.i, label %bb.hn, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i167.i, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i167.i: ; preds = %bb.hl
  %i.azr = icmp eq i64 %i.azo, 0
  br i1 %i.azr, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i410.thread.i.i408, label %bb.hm

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i410.thread.i.i408: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i167.i
  %i.azs = icmp samesign ult i64 %.sroa.0.0.i.i205, 2305843009213693952
  tail call void @llvm.assume(i1 %i.azs)
  br label %bb.hq

bb.hm:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i167.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34812
  %i.azt = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.azo, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !34812 ; 3 uses
  %i.azu = icmp eq ptr %i.azt, null
  br i1 %i.azu, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  %.sroa.4.0.ph.i.i.i173.i = phi i64 [ 4, %bb.hm ], [ 0, %bb.hl ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i173.i, i64 %i.azo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc174.i unwind label %.body.i406, !noalias !34699

.noexc174.i:                                      ; preds = %bb.hn
  unreachable

bb.ho:                                            ; preds = %bb.hm
  %i.azv = icmp samesign ult i64 %.sroa.0.0.i.i205, 2305843009213693952
  tail call void @llvm.assume(i1 %i.azv)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34817
  %i.azw = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.azo, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !34817 ; 2 uses
  %i.azx = icmp eq ptr %i.azw, null
  br i1 %i.azx, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.azo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc413.i.i405 unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i", !noalias !34822

.noexc413.i.i405:                                 ; preds = %bb.hp
  unreachable

bb.hq:                                            ; preds = %bb.ho, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i410.thread.i.i408
  %i.azy = phi ptr [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i410.thread.i.i408 ], [ %i.azt, %bb.ho ] ; 11 uses
  %.sroa.10.0.i.i411.i.i208 = phi ptr [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i410.thread.i.i408 ], [ %i.azw, %bb.ho ] ; 6 uses
  %i.azz = shl i64 %.sroa.0.0.i.i205, 4
  %i.baa = add i64 %i.azz, 1008                   ; 3 uses
  %i.bab = lshr i64 %i.baa, 6                     ; 17 uses
  %i.bac = mul i64 %i.bab, 2832                   ; 3 uses
  %or.cond.i.i.i.i.i.i.i209 = icmp ugt i64 %i.baa, 208437786143610815
  br i1 %or.cond.i.i.i.i.i.i.i209, label %bb.hs, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i210, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i210: ; preds = %bb.hq
  %i.bad = icmp eq i64 %i.bac, 0
  br i1 %i.bad, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i.i", label %bb.hr

bb.hr:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i210
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34823
  %i.bae = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.bac, i64 noundef range(i64 1, 9) 8) #38, !noalias !34823 ; 2 uses
  %i.baf = icmp eq ptr %i.bae, null
  br i1 %i.baf, label %bb.hs, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i.i"

bb.hs:                                            ; preds = %bb.hr, %bb.hq
  %.sroa.4.0.ph.i.i.i.i.i402 = phi i64 [ 8, %bb.hr ], [ 0, %bb.hq ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i402, i64 %i.bac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc415.i.i404 unwind label %.thread86.i.i403, !noalias !34822

.noexc415.i.i404:                                 ; preds = %bb.hs
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i.i": ; preds = %bb.hr, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i210
  %.sroa.10.0.i.i.i.i.i211 = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i210 ], [ %i.bae, %bb.hr ] ; 8 uses
  %.sroa.4.0.i.i.i.i.i212 = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i210 ], [ %i.bab, %bb.hr ]
  %i.bag = icmp samesign ule i64 %i.bab, %.sroa.4.0.i.i.i.i.i212
  tail call void @llvm.assume(i1 %i.bag)
  %i.bah = icmp samesign ugt i64 %i.baa, 127
  br i1 %i.bah, label %.lr.ph.i.i.i.i.i397.preheader, label %._crit_edge.i.i.i.i.i213

.lr.ph.i.i.i.i.i397.preheader:                    ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i.i"
  %i.bai = add nsw i64 %i.bab, -1                 ; 2 uses
  %i.baj = add nsw i64 %i.bab, -2
  %xtraiter4700 = and i64 %i.bai, 7               ; 3 uses
  %i.bak = icmp ult i64 %i.baj, 7
  br i1 %i.bak, label %.lr.ph.i.i.i.i.i397.epil.preheader, label %.lr.ph.i.i.i.i.i397.preheader.new

.lr.ph.i.i.i.i.i397.preheader.new:                ; preds = %.lr.ph.i.i.i.i.i397.preheader
  %unroll_iter4705 = and i64 %i.bai, -8
  br label %.lr.ph.i.i.i.i.i397

._crit_edge.i.i.i.i.i213:                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i.i"
  %.not.i.i.i.i.i214 = icmp eq i64 %i.bab, 0
  br i1 %.not.i.i.i.i.i214, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i218, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.i.i215

.lr.ph.i.i.i.i.i397:                              ; preds = %.lr.ph.i.i.i.i.i397, %.lr.ph.i.i.i.i.i397.preheader.new
  %.sroa.0.08.i.i.i.i.i398 = phi ptr [ %.sroa.10.0.i.i.i.i.i211, %.lr.ph.i.i.i.i.i397.preheader.new ], [ %i.bas, %.lr.ph.i.i.i.i.i397 ] ; 17 uses
  %niter4706 = phi i64 [ 0, %.lr.ph.i.i.i.i.i397.preheader.new ], [ %niter4706.next.7, %.lr.ph.i.i.i.i.i397 ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i400 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i398, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.08.i.i.i.i.i398, i8 0, i64 2824, i1 false), !noalias !34822
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i400, align 8, !noalias !34831
  %i.bal = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i398, i64 2832
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i400.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i398, i64 5656
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bal, i8 0, i64 2824, i1 false), !noalias !34822
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i400.1, align 8, !noalias !34831
  %i.bam = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i398, i64 5664
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i400.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i398, i64 8488
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bam, i8 0, i64 2824, i1 false), !noalias !34822
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i400.2, align 8, !noalias !34831
  %i.ban = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i398, i64 8496
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i400.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i398, i64 11320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.ban, i8 0, i64 2824, i1 false), !noalias !34822
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i400.3, align 8, !noalias !34831
  %i.bao = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i398, i64 11328
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i400.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i398, i64 14152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bao, i8 0, i64 2824, i1 false), !noalias !34822
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i400.4, align 8, !noalias !34831
  %i.bap = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i398, i64 14160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i400.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i398, i64 16984
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bap, i8 0, i64 2824, i1 false), !noalias !34822
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i400.5, align 8, !noalias !34831
  %i.baq = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i398, i64 16992
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i400.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i398, i64 19816
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.baq, i8 0, i64 2824, i1 false), !noalias !34822
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i400.6, align 8, !noalias !34831
  %i.bar = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i398, i64 19824
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i400.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i398, i64 22648
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bar, i8 0, i64 2824, i1 false), !noalias !34822
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i400.7, align 8, !noalias !34831
  %i.bas = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i398, i64 22656 ; 3 uses
  %niter4706.next.7 = add nuw i64 %niter4706, 8   ; 2 uses
  %niter4706.ncmp.7 = icmp eq i64 %niter4706.next.7, %unroll_iter4705
  br i1 %niter4706.ncmp.7, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.i.i215.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i397

.thread86.i.i403:                                 ; preds = %bb.hs
  %i.bat = landingpad { ptr, i32 }
          cleanup
  br label %bb.lh

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.i.i215.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i397
  %lcmp.mod4702.not = icmp eq i64 %xtraiter4700, 0
  br i1 %lcmp.mod4702.not, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.i.i215, label %.lr.ph.i.i.i.i.i397.epil.preheader

.lr.ph.i.i.i.i.i397.epil.preheader:               ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.i.i215.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i397.preheader
  %.sroa.0.08.i.i.i.i.i398.epil.init = phi ptr [ %.sroa.10.0.i.i.i.i.i211, %.lr.ph.i.i.i.i.i397.preheader ], [ %i.bas, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.i.i215.loopexit.unr-lcssa ]
  %lcmp.mod4704 = icmp ne i64 %xtraiter4700, 0
  call void @llvm.assume(i1 %lcmp.mod4704)
  br label %.lr.ph.i.i.i.i.i397.epil

.lr.ph.i.i.i.i.i397.epil:                         ; preds = %.lr.ph.i.i.i.i.i397.epil, %.lr.ph.i.i.i.i.i397.epil.preheader
  %.sroa.0.08.i.i.i.i.i398.epil = phi ptr [ %i.bau, %.lr.ph.i.i.i.i.i397.epil ], [ %.sroa.0.08.i.i.i.i.i398.epil.init, %.lr.ph.i.i.i.i.i397.epil.preheader ] ; 3 uses
  %epil.iter4701 = phi i64 [ %epil.iter4701.next, %.lr.ph.i.i.i.i.i397.epil ], [ 0, %.lr.ph.i.i.i.i.i397.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i400.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i398.epil, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.08.i.i.i.i.i398.epil, i8 0, i64 2824, i1 false), !noalias !34822
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i400.epil, align 8, !noalias !34831
  %i.bau = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i398.epil, i64 2832 ; 2 uses
  %epil.iter4701.next = add i64 %epil.iter4701, 1 ; 2 uses
  %epil.iter4701.cmp.not = icmp eq i64 %epil.iter4701.next, %xtraiter4700
  br i1 %epil.iter4701.cmp.not, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.i.i215, label %.lr.ph.i.i.i.i.i397.epil, !llvm.loop !34834

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.i.i215: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.i.i215.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i397.epil, %._crit_edge.i.i.i.i.i213
  %.sroa.0.0.lcssa15.i.i.i.i.i216 = phi ptr [ %.sroa.10.0.i.i.i.i.i211, %._crit_edge.i.i.i.i.i213 ], [ %i.bas, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.i.i215.loopexit.unr-lcssa ], [ %i.bau, %.lr.ph.i.i.i.i.i397.epil ] ; 2 uses
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i.i217 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i.i.i216, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.0.lcssa15.i.i.i.i.i216, i8 0, i64 2824, i1 false), !noalias !34822
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i.i217, align 8, !noalias !34831
  %i.bav = shl nuw nsw i64 %i.bab, 2              ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34835
  %i.baw = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.bav, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !34835 ; 2 uses
  %i.bax = icmp eq ptr %i.baw, null
  br i1 %i.bax, label %bb.hu, label %bb.ht

bb.ht:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.i.i215
  %i.bay = ptrtoint ptr %i.baw to i64
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i218

bb.hu:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.i.i215
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.bav, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc420.i.i396 unwind label %.thread93.i.i395, !noalias !34822

.noexc420.i.i396:                                 ; preds = %bb.hu
  unreachable

bb.hv:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i423.i.i263", %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit446.i.i"
  %i.baz = icmp eq i64 %.sroa.14.1.i.i260, 0
  br i1 %i.baz, label %bb.lh, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i168.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i168.i": ; preds = %.thread93.i.i395, %bb.hv
  %.pn230.pn.pn.pn.pn100.i.i264 = phi { ptr, i32 } [ %i.bba, %.thread93.i.i395 ], [ %.pn230.pn.pn.pn.i.i262, %bb.hv ]
  %.sroa.016.099.i.i265 = phi ptr [ %.sroa.10.0.i.i.i.i.i211, %.thread93.i.i395 ], [ %.sroa.016.1.i.i261, %bb.hv ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.099.i.i265) ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.016.099.i.i265) #38, !noalias !34822
  br label %bb.lh

.thread93.i.i395:                                 ; preds = %bb.hu
  %i.bba = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i168.i"

"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit446.i.i": ; preds = %bb.jd, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i257", %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i249", %bb.hw
  %.sroa.12.0.i.i258 = phi i64 [ %i.bab, %bb.hw ], [ %.sroa.12.1.i.i252, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i249" ], [ %.sroa.12.1.i.i252, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i257" ], [ %.sroa.12.3151.i.i311, %bb.jd ]
  %.sroa.026.0.i.i259 = phi ptr [ %i.bbd, %bb.hw ], [ %.sroa.026.1.i.i253, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i249" ], [ %.sroa.026.1.i.i253, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i257" ], [ %.sroa.026.3152.i.i310, %bb.jd ] ; 2 uses
  %.sroa.14.1.i.i260 = phi i64 [ %i.bab, %bb.hw ], [ %.sroa.14.2.i.i254, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i249" ], [ %.sroa.14.2.i.i254, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i257" ], [ %.sroa.14.4153.i.i309, %bb.jd ]
  %.sroa.016.1.i.i261 = phi ptr [ %.sroa.10.0.i.i.i.i.i211, %bb.hw ], [ %.sroa.016.2.i.i255, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i249" ], [ %.sroa.016.2.i.i255, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i257" ], [ %.sroa.016.4154.i.i308, %bb.jd ]
  %.pn230.pn.pn.pn.i.i262 = phi { ptr, i32 } [ %i.bbc, %bb.hw ], [ %.pn230.pn.pn.i.i256, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i249" ], [ %.pn230.pn.pn.i.i256, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i257" ], [ %.pn230155.i.i307, %bb.jd ] ; 2 uses
  %i.bbb = icmp eq i64 %.sroa.12.0.i.i258, 0
  br i1 %i.bbb, label %bb.hv, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i423.i.i263"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i423.i.i263": ; preds = %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit446.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.0.i.i259) ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.026.0.i.i259) #38, !noalias !34822
  br label %bb.hv

bb.hw:                                            ; preds = %bb.hy
  %i.bbc = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit446.i.i"

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i218: ; preds = %bb.ht, %._crit_edge.i.i.i.i.i213
  %.sroa.10.0.i.i418.i.i219 = phi i64 [ %i.bay, %bb.ht ], [ 4, %._crit_edge.i.i.i.i.i213 ]
  %i.bbd = inttoptr i64 %.sroa.10.0.i.i418.i.i219 to ptr ; 4 uses
  %.sroa.0.0.i422.i.i220 = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i.i205, i64 64) ; 17 uses
  %i.bbe = mul nuw nsw i64 %.sroa.0.0.i422.i.i220, 2832 ; 2 uses
  %i.bbf = icmp eq i64 %.sroa.0.0.i.i205, 0
  br i1 %i.bbf, label %._crit_edge.i.i.i429.thread.i.i229, label %bb.hx

bb.hx:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i218
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34840
  %i.bbg = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.bbe, i64 noundef range(i64 1, 9) 8) #38, !noalias !34840 ; 5 uses
  %i.bbh = icmp eq ptr %i.bbg, null
  br i1 %i.bbh, label %bb.hy, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i426.i.i"

bb.hy:                                            ; preds = %bb.hx
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.bbe, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc440.i.i394 unwind label %bb.hw, !noalias !34822

.noexc440.i.i394:                                 ; preds = %bb.hy
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i426.i.i": ; preds = %bb.hx
  %.not1174.i.i = icmp eq i64 %.sroa.0.0.i.i205, 1
  br i1 %.not1174.i.i, label %._crit_edge.thread.i.i.i431.i.i226, label %.lr.ph.i.i.i434.i.i221.preheader

.lr.ph.i.i.i434.i.i221.preheader:                 ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i426.i.i"
  %i.bbi = add nsw i64 %.sroa.0.0.i422.i.i220, -1 ; 2 uses
  %i.bbj = add nsw i64 %.sroa.0.0.i422.i.i220, -2
  %xtraiter4707 = and i64 %i.bbi, 7               ; 3 uses
  %i.bbk = icmp ult i64 %i.bbj, 7
  br i1 %i.bbk, label %.lr.ph.i.i.i434.i.i221.epil.preheader, label %.lr.ph.i.i.i434.i.i221.preheader.new

.lr.ph.i.i.i434.i.i221.preheader.new:             ; preds = %.lr.ph.i.i.i434.i.i221.preheader
  %unroll_iter4712 = and i64 %i.bbi, -8
  br label %.lr.ph.i.i.i434.i.i221

._crit_edge.thread.i.i.i431.i.i226.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i434.i.i221
  %lcmp.mod4709.not = icmp eq i64 %xtraiter4707, 0
  br i1 %lcmp.mod4709.not, label %._crit_edge.thread.i.i.i431.i.i226, label %.lr.ph.i.i.i434.i.i221.epil.preheader

.lr.ph.i.i.i434.i.i221.epil.preheader:            ; preds = %._crit_edge.thread.i.i.i431.i.i226.loopexit.unr-lcssa, %.lr.ph.i.i.i434.i.i221.preheader
  %.sroa.0.08.i.i.i435.i.i222.epil.init = phi ptr [ %i.bbg, %.lr.ph.i.i.i434.i.i221.preheader ], [ %i.bbt, %._crit_edge.thread.i.i.i431.i.i226.loopexit.unr-lcssa ]
  %lcmp.mod4711 = icmp ne i64 %xtraiter4707, 0
  call void @llvm.assume(i1 %lcmp.mod4711)
  br label %.lr.ph.i.i.i434.i.i221.epil

.lr.ph.i.i.i434.i.i221.epil:                      ; preds = %.lr.ph.i.i.i434.i.i221.epil, %.lr.ph.i.i.i434.i.i221.epil.preheader
  %.sroa.0.08.i.i.i435.i.i222.epil = phi ptr [ %i.bbl, %.lr.ph.i.i.i434.i.i221.epil ], [ %.sroa.0.08.i.i.i435.i.i222.epil.init, %.lr.ph.i.i.i434.i.i221.epil.preheader ] ; 3 uses
  %epil.iter4708 = phi i64 [ %epil.iter4708.next, %.lr.ph.i.i.i434.i.i221.epil ], [ 0, %.lr.ph.i.i.i434.i.i221.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i224.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i222.epil, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.08.i.i.i435.i.i222.epil, i8 0, i64 2824, i1 false), !noalias !34822
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i224.epil, align 8, !noalias !34848
  %i.bbl = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i222.epil, i64 2832 ; 2 uses
  %epil.iter4708.next = add i64 %epil.iter4708, 1 ; 2 uses
  %epil.iter4708.cmp.not = icmp eq i64 %epil.iter4708.next, %xtraiter4707
  br i1 %epil.iter4708.cmp.not, label %._crit_edge.thread.i.i.i431.i.i226, label %.lr.ph.i.i.i434.i.i221.epil, !llvm.loop !34851

._crit_edge.thread.i.i.i431.i.i226:               ; preds = %._crit_edge.thread.i.i.i431.i.i226.loopexit.unr-lcssa, %.lr.ph.i.i.i434.i.i221.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i426.i.i"
  %.sroa.0.0.lcssa15.i.i.i432.i.i227 = phi ptr [ %i.bbg, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i426.i.i" ], [ %i.bbt, %._crit_edge.thread.i.i.i431.i.i226.loopexit.unr-lcssa ], [ %i.bbl, %.lr.ph.i.i.i434.i.i221.epil ] ; 2 uses
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i433.i.i228 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i432.i.i227, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.0.lcssa15.i.i.i432.i.i227, i8 0, i64 2824, i1 false), !noalias !34822
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i433.i.i228, align 8, !noalias !34848
  br label %._crit_edge.i.i.i429.thread.i.i229

.lr.ph.i.i.i434.i.i221:                           ; preds = %.lr.ph.i.i.i434.i.i221, %.lr.ph.i.i.i434.i.i221.preheader.new
  %.sroa.0.08.i.i.i435.i.i222 = phi ptr [ %i.bbg, %.lr.ph.i.i.i434.i.i221.preheader.new ], [ %i.bbt, %.lr.ph.i.i.i434.i.i221 ] ; 17 uses
  %niter4713 = phi i64 [ 0, %.lr.ph.i.i.i434.i.i221.preheader.new ], [ %niter4713.next.7, %.lr.ph.i.i.i434.i.i221 ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i224 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i222, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.08.i.i.i435.i.i222, i8 0, i64 2824, i1 false), !noalias !34822
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i224, align 8, !noalias !34848
  %i.bbm = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i222, i64 2832
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i224.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i222, i64 5656
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bbm, i8 0, i64 2824, i1 false), !noalias !34822
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i224.1, align 8, !noalias !34848
  %i.bbn = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i222, i64 5664
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i224.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i222, i64 8488
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bbn, i8 0, i64 2824, i1 false), !noalias !34822
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i224.2, align 8, !noalias !34848
  %i.bbo = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i222, i64 8496
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i224.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i222, i64 11320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bbo, i8 0, i64 2824, i1 false), !noalias !34822
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i224.3, align 8, !noalias !34848
  %i.bbp = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i222, i64 11328
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i224.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i222, i64 14152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bbp, i8 0, i64 2824, i1 false), !noalias !34822
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i224.4, align 8, !noalias !34848
  %i.bbq = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i222, i64 14160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i224.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i222, i64 16984
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bbq, i8 0, i64 2824, i1 false), !noalias !34822
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i224.5, align 8, !noalias !34848
  %i.bbr = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i222, i64 16992
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i224.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i222, i64 19816
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bbr, i8 0, i64 2824, i1 false), !noalias !34822
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i224.6, align 8, !noalias !34848
  %i.bbs = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i222, i64 19824
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i224.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i222, i64 22648
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bbs, i8 0, i64 2824, i1 false), !noalias !34822
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i224.7, align 8, !noalias !34848
  %i.bbt = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i222, i64 22656 ; 3 uses
  %niter4713.next.7 = add nuw i64 %niter4713, 8   ; 2 uses
  %niter4713.ncmp.7 = icmp eq i64 %niter4713.next.7, %unroll_iter4712
  br i1 %niter4713.ncmp.7, label %._crit_edge.thread.i.i.i431.i.i226.loopexit.unr-lcssa, label %.lr.ph.i.i.i434.i.i221

._crit_edge.i.i.i429.thread.i.i229:               ; preds = %._crit_edge.thread.i.i.i431.i.i226, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i218
  %.sroa.10.0.i.i.i427933.i.i = phi ptr [ %i.bbg, %._crit_edge.thread.i.i.i431.i.i226 ], [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i218 ] ; 15 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34852
  %i.bbu = tail call noundef ptr @mi_malloc_aligned(i64 noundef 32784, i64 noundef range(i64 1, 9) 4) #38, !noalias !34852 ; 16 uses
  %i.bbv = icmp eq ptr %i.bbu, null
  br i1 %i.bbv, label %bb.hz, label %bb.ib

bb.hz:                                            ; preds = %._crit_edge.i.i.i429.thread.i.i229
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 32784, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc444.i.i393 unwind label %bb.ia, !noalias !34822

.noexc444.i.i393:                                 ; preds = %bb.hz
  unreachable

"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i249": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i240", %bb.ia
  %.sroa.1335.0.i.i250 = phi i64 [ %.sroa.0.0.i422.i.i220, %bb.ia ], [ %.sroa.1335.1123199.i.i243, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i240" ]
  %.sroa.034.0.i.i251 = phi ptr [ %.sroa.10.0.i.i.i427933.i.i, %bb.ia ], [ %.sroa.034.1124197.i.i244, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i240" ] ; 2 uses
  %.sroa.12.1.i.i252 = phi i64 [ %i.bab, %bb.ia ], [ %.sroa.12.3125195.i.i245, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i240" ] ; 2 uses
  %.sroa.026.1.i.i253 = phi ptr [ %i.bbd, %bb.ia ], [ %.sroa.026.3126193.i.i246, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i240" ] ; 2 uses
  %.sroa.14.2.i.i254 = phi i64 [ %i.bab, %bb.ia ], [ %.sroa.14.4127191.i.i247, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i240" ] ; 2 uses
  %.sroa.016.2.i.i255 = phi ptr [ %.sroa.10.0.i.i.i.i.i211, %bb.ia ], [ %.sroa.016.4128189.i.i248, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i240" ] ; 2 uses
  %.pn230.pn.pn.i.i256 = phi { ptr, i32 } [ %i.bbx, %bb.ia ], [ %.pn230.pn202.i.i241, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i240" ] ; 2 uses
  %i.bbw = icmp eq i64 %.sroa.1335.0.i.i250, 0
  br i1 %i.bbw, label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit446.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i257"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i257": ; preds = %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i249"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.034.0.i.i251) ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.034.0.i.i251) #38, !noalias !34822
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit446.i.i"

bb.ia:                                            ; preds = %bb.hz
  %i.bbx = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i249"

bb.ib:                                            ; preds = %._crit_edge.i.i.i429.thread.i.i229
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32784) %i.bbu, i8 0, i64 32784, i1 false), !noalias !34822
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !34822
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.aa, i8 0, i64 256, i1 false), !noalias !34822
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !34822
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.z, i8 0, i64 256, i1 false), !noalias !34822
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !34822
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.y, i8 0, i64 256, i1 false), !noalias !34822
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !34822
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.x, i8 0, i64 256, i1 false), !noalias !34822
  br label %bb.lc

.split.i.i271:                                    ; preds = %bb.lf, %._crit_edge582.i.i
  %indvars.iv.i.i272 = phi i64 [ %indvars.iv.next.i.i293, %._crit_edge582.i.i ], [ %.sroa.0.0.i.i205, %bb.lf ] ; 2 uses
  %.sroa.0.0593.i.i = phi i64 [ %.sroa.0.1.lcssa.i.i292, %._crit_edge582.i.i ], [ 0, %bb.lf ] ; 4 uses
  %.sroa.012.0592.i.i = phi i64 [ %.sroa.012.1.i.i286, %._crit_edge582.i.i ], [ %i.bab, %bb.lf ] ; 7 uses
  %.sroa.018.0591.i.i = phi i64 [ %.sroa.018.1.lcssa.i.i291, %._crit_edge582.i.i ], [ 0, %bb.lf ] ; 4 uses
  %.sroa.023.0590.i.i = phi i64 [ %.sroa.023.1.i.i289, %._crit_edge582.i.i ], [ %i.bab, %bb.lf ] ; 7 uses
  %.sroa.029.0589.i.i = phi i64 [ %i.bnf, %._crit_edge582.i.i ], [ 0, %bb.lf ] ; 2 uses
  %.sroa.043.0588.i.i = phi i64 [ %.sroa.043.3.lcssa.i.i281, %._crit_edge582.i.i ], [ 0, %bb.lf ] ; 2 uses
  %.sroa.047.1587.i.i = phi i64 [ %i.bng, %._crit_edge582.i.i ], [ 0, %bb.lf ] ; 5 uses
  %.sroa.016.3586.i.i = phi ptr [ %.sroa.016.7.i.i285, %._crit_edge582.i.i ], [ %.sroa.10.0.i.i.i.i.i211, %bb.lf ] ; 9 uses
  %.sroa.14.3585.i.i = phi i64 [ %.sroa.14.7.i.i284, %._crit_edge582.i.i ], [ %i.bab, %bb.lf ] ; 9 uses
  %.sroa.026.2584.i.i = phi ptr [ %.sroa.026.5.i.i288, %._crit_edge582.i.i ], [ %i.bbd, %bb.lf ] ; 11 uses
  %.sroa.12.2583.i.i = phi i64 [ %.sroa.12.5.i.i287, %._crit_edge582.i.i ], [ %i.bab, %bb.lf ] ; 11 uses
  %i.bby = tail call i64 @llvm.umax.i64(i64 %indvars.iv.i.i272, i64 1)
  %umax856.i.i = tail call i64 @llvm.umin.i64(i64 %i.bby, i64 64)
  %i.bbz = sub nuw i64 %.sroa.0.0.i.i205, %.sroa.047.1587.i.i
  %.sroa.0.0.i447.i.i273 = tail call noundef i64 @llvm.umin.i64(i64 %i.bbz, i64 64) ; 3 uses
  %.not928.i.i = icmp eq i64 %.sroa.0.0.i.i205, %.sroa.047.1587.i.i ; 2 uses
  br i1 %.not928.i.i, label %._crit_edge572.i.i, label %.lr.ph571.i.i

.thread163.loopexit.i.i278:                       ; preds = %._crit_edge.i.i276
  %lpad.loopexit255.i.i279 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i240"

.thread163.loopexit.split-lp.loopexit.i.i282:     ; preds = %._crit_edge572.i.i
  %lpad.loopexit258.i.i283 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i240"

.thread163.loopexit.split-lp.loopexit.split-lp.i.i231: ; preds = %.invoke3977, %.invoke3975, %.invoke.i.i230, %bb.kk, %bb.kc, %bb.ij, %bb.if
  %.sroa.044.1.ph.ph.ph.i.i232 = phi ptr [ %i.bbu, %bb.if ], [ %.sroa.044.2.i.i296, %bb.ij ], [ %i.bbu, %.invoke.i.i230 ], [ %i.bbu, %.invoke3975 ], [ %i.bbu, %bb.kc ], [ %i.bbu, %.invoke3977 ], [ %i.bbu, %bb.kk ]
  %.sroa.1335.2.ph.ph.ph.i.i233 = phi i64 [ 0, %bb.if ], [ 0, %bb.ij ], [ %.sroa.0.0.i422.i.i220, %.invoke.i.i230 ], [ %.sroa.0.0.i422.i.i220, %.invoke3975 ], [ %.sroa.0.0.i422.i.i220, %bb.kc ], [ %.sroa.0.0.i422.i.i220, %.invoke3977 ], [ %.sroa.0.0.i422.i.i220, %bb.kk ]
  %.sroa.034.2.ph.ph.ph.i.i234 = phi ptr [ inttoptr (i64 8 to ptr), %bb.if ], [ inttoptr (i64 8 to ptr), %bb.ij ], [ %.sroa.10.0.i.i.i427933.i.i, %.invoke.i.i230 ], [ %.sroa.10.0.i.i.i427933.i.i, %.invoke3975 ], [ %.sroa.10.0.i.i.i427933.i.i, %bb.kc ], [ %.sroa.10.0.i.i.i427933.i.i, %.invoke3977 ], [ %.sroa.10.0.i.i.i427933.i.i, %bb.kk ]
  %.sroa.12.4.ph.ph.ph.i.i235 = phi i64 [ %.sroa.12.5.i.i287, %bb.if ], [ %.sroa.12.5.i.i287, %bb.ij ], [ %i.bab, %.invoke.i.i230 ], [ %.sroa.12.2583.i.i, %.invoke3975 ], [ %.sroa.12.2583.i.i, %bb.kc ], [ %.sroa.12.5.i.i287, %.invoke3977 ], [ %.sroa.12.2583.i.i, %bb.kk ]
  %.sroa.026.4.ph.ph.ph.i.i236 = phi ptr [ %.sroa.026.5.i.i288, %bb.if ], [ %.sroa.026.5.i.i288, %bb.ij ], [ %i.bbd, %.invoke.i.i230 ], [ %.sroa.026.2584.i.i, %.invoke3975 ], [ %.sroa.026.2584.i.i, %bb.kc ], [ %.sroa.026.5.i.i288, %.invoke3977 ], [ %.sroa.026.2584.i.i, %bb.kk ]
  %.sroa.14.5.ph.ph.ph.i.i237 = phi i64 [ %.sroa.14.7.i.i284, %bb.if ], [ %.sroa.14.7.i.i284, %bb.ij ], [ %i.bab, %.invoke.i.i230 ], [ %.sroa.14.3585.i.i, %.invoke3975 ], [ %.sroa.14.3585.i.i, %bb.kc ], [ %.sroa.14.7.i.i284, %.invoke3977 ], [ %.sroa.14.7.i.i284, %bb.kk ]
  %.sroa.016.5.ph.ph.ph.i.i238 = phi ptr [ %.sroa.016.7.i.i285, %bb.if ], [ %.sroa.016.7.i.i285, %bb.ij ], [ %.sroa.10.0.i.i.i.i.i211, %.invoke.i.i230 ], [ %.sroa.016.3586.i.i, %.invoke3975 ], [ %.sroa.016.3586.i.i, %bb.kc ], [ %.sroa.016.7.i.i285, %.invoke3977 ], [ %.sroa.016.7.i.i285, %bb.kk ]
  %lpad.loopexit.split-lp259.i.i239 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i240"

bb.ic:                                            ; preds = %bb.io, %._crit_edge598.i.i
  %.sroa.11.1.ph159.i.i301 = phi i1 [ true, %bb.io ], [ false, %._crit_edge598.i.i ]
  %.sroa.044.1.ph160.i.i302 = phi ptr [ inttoptr (i64 4 to ptr), %bb.io ], [ %.sroa.044.2.i.i296, %._crit_edge598.i.i ]
  %.sroa.12.4.ph161.i.i303 = phi i64 [ 0, %bb.io ], [ %.sroa.12.5.i.i287, %._crit_edge598.i.i ]
  %.sroa.026.4.ph162.i.i304 = phi ptr [ inttoptr (i64 4 to ptr), %bb.io ], [ %.sroa.026.5.i.i288, %._crit_edge598.i.i ]
  %lpad.thr_comm.split-lp.i.i305 = landingpad { ptr, i32 }
          cleanup
  br label %.thread130.i.i306

bb.id:                                            ; preds = %._crit_edge582.i.i
  tail call void @mi_free(ptr noundef nonnull align 8 %.sroa.10.0.i.i.i427933.i.i) #38, !noalias !34822
  %i.bca = shl i64 %i.bnf, 6
  %i.bcb = lshr i64 %i.bnf, 1
  %i.bcc = mul i64 %i.bcb, %i.bnf
  %.sroa.0.0.i448.i.i294 = tail call noundef i64 @llvm.umin.i64(i64 %i.bcc, i64 %i.bca) ; 5 uses
  %i.bcd = add nuw i64 %.sroa.0.0.i448.i.i294, 1  ; 2 uses
  %i.bce = icmp ugt i64 %.sroa.0.0.i448.i.i294, 2048
  br i1 %i.bce, label %bb.ie, label %bb.ig

bb.ie:                                            ; preds = %bb.id
  %i.bcf = shl i64 %i.bcd, 4                      ; 5 uses
  %i.bcg = icmp ugt i64 %.sroa.0.0.i448.i.i294, 1152921504606846974
  %i.bch = icmp ugt i64 %i.bcf, 9223372036854775804
  %or.cond.i.i.i.i.i449.i.i376 = or i1 %i.bcg, %i.bch
  br i1 %or.cond.i.i.i.i.i449.i.i376, label %bb.if, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i377, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i377: ; preds = %bb.ie
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34860
  %i.bci = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.bcf, i64 noundef range(i64 1, 9) 4) #38, !noalias !34860 ; 5 uses
  %i.bcj = icmp eq ptr %i.bci, null
  br i1 %i.bcj, label %bb.if, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i378"

bb.if:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i377, %bb.ie
  %.sroa.4.0.ph.i.i.i455.i.i383 = phi i64 [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i377 ], [ 0, %bb.ie ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i455.i.i383, i64 %i.bcf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc456.i.i384 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i231, !noalias !34822

.noexc456.i.i384:                                 ; preds = %bb.if
  unreachable

bb.ig:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i378", %bb.id
  %.sroa.11.2.i.i295 = phi i64 [ %i.bcd, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i378" ], [ 2049, %bb.id ]
  %.sroa.044.2.i.i296 = phi ptr [ %i.bci, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i378" ], [ %i.bbu, %bb.id ] ; 4 uses
  %i.bck = shl i64 %i.bnf, 2                      ; 9 uses
  %i.bcl = icmp ugt i64 %i.bnf, 4611686018427387903
  %i.bcm = icmp ugt i64 %i.bck, 9223372036854775804
  %or.cond.i.i.i.i458.i.i297 = or i1 %i.bcl, %i.bcm
  br i1 %or.cond.i.i.i.i458.i.i297, label %bb.ij, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i298, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i298: ; preds = %bb.ig
  %i.bcn = icmp eq i64 %i.bck, 0                  ; 2 uses
  br i1 %i.bcn, label %bb.ik, label %bb.ih

bb.ih:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i298
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34868
  %i.bco = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.bck, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !34868 ; 2 uses
  %i.bcp = icmp eq ptr %i.bco, null
  br i1 %i.bcp, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.bcq = ptrtoint ptr %i.bco to i64
  br label %bb.ik

bb.ij:                                            ; preds = %bb.ih, %bb.ig
  %.sroa.4.0.ph.i.i461.i.i374 = phi i64 [ 4, %bb.ih ], [ 0, %bb.ig ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i461.i.i374, i64 %i.bck, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc462.i.i375 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i231, !noalias !34822

.noexc462.i.i375:                                 ; preds = %bb.ij
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i378": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i377
  %i.bcr = add nsw i64 %i.bcf, -16                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bci, i8 0, i64 %i.bcr, i1 false), !noalias !34873
  %i.bcs = getelementptr i8, ptr %i.bci, i64 %i.bcf ; 2 uses
  %scevgep11.i451.i.i379 = getelementptr i8, ptr %i.bci, i64 %i.bcr
  store i32 0, ptr %scevgep11.i451.i.i379, align 4, !noalias !34873
  %.sroa.55.0..sroa_idx.i452.i.i380 = getelementptr i8, ptr %i.bcs, i64 -12
  store i32 0, ptr %.sroa.55.0..sroa_idx.i452.i.i380, align 4, !noalias !34873
  %.sroa.67.0..sroa_idx.i453.i.i381 = getelementptr i8, ptr %i.bcs, i64 -8
  store <2 x float> zeroinitializer, ptr %.sroa.67.0..sroa_idx.i453.i.i381, align 4, !noalias !34873
  %i.bct = icmp samesign ult i64 %.sroa.0.0.i448.i.i294, 576460752303423487
  tail call void @llvm.assume(i1 %i.bct)
  tail call void @mi_free(ptr noundef nonnull align 4 %i.bbu) #38, !noalias !34822
  br label %bb.ig

bb.ik:                                            ; preds = %bb.ii, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i298
  %.sroa.10.0.i.i460.i.i299 = phi i64 [ %i.bcq, %bb.ii ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i298 ]
  %i.bcu = inttoptr i64 %.sroa.10.0.i.i460.i.i299 to ptr ; 13 uses
  %i.bcv = icmp samesign ult i64 %i.bnf, 2305843009213693952
  tail call void @llvm.assume(i1 %i.bcv)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bcu) ]
  %i.bcw = getelementptr inbounds nuw i8, ptr %i.bcu, i64 %i.bck
  %i.bcx = icmp eq i64 %i.bnf, 0                  ; 3 uses
  br i1 %i.bcx, label %._crit_edge598.i.i, label %.lr.ph597.i.i.preheader

.lr.ph597.i.i.preheader:                          ; preds = %bb.ik
  %i.bcy = add nsw i64 %i.bck, -4                 ; 2 uses
  %i.bcz = lshr exact i64 %i.bcy, 2
  %i.bda = add nuw nsw i64 %i.bcz, 1              ; 2 uses
  %min.iters.check3844 = icmp ult i64 %i.bcy, 28
  br i1 %min.iters.check3844, label %.lr.ph597.i.i.preheader4244, label %vector.ph3845

vector.ph3845:                                    ; preds = %.lr.ph597.i.i.preheader
  %n.vec3846 = and i64 %i.bda, 9223372036854775800 ; 4 uses
  %i.bdb = trunc i64 %n.vec3846 to i32
  %i.bdc = shl i64 %n.vec3846, 2
  %i.bdd = getelementptr i8, ptr %i.bcu, i64 %i.bdc
end_hunk_6
begin_hunk_7_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
  %i.bjz = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bjs ; 2 uses
  %i.bka = load i32, ptr %i.bjz, align 4, !noalias !34822, !noundef !27
  %i.bkb = getelementptr inbounds nuw [4 x i8], ptr %i.bja, i64 %i.bjs
  %i.bkc = load i32, ptr %i.bkb, align 4, !noalias !34822, !noundef !27
  %i.bkd = add i32 %i.bkc, %i.bka
  store i32 %i.bkd, ptr %i.bjz, align 4, !noalias !34822
  %i.bke = or disjoint i64 %.sroa.01.0.i263609.i.i, 3 ; 2 uses
  %i.bkf = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bjy ; 2 uses
  %i.bkg = load i32, ptr %i.bkf, align 8, !noalias !34822, !noundef !27
  %i.bkh = getelementptr inbounds nuw [4 x i8], ptr %i.bja, i64 %i.bjy
  %i.bki = load i32, ptr %i.bkh, align 4, !noalias !34822, !noundef !27
  %i.bkj = add i32 %i.bki, %i.bkg
  store i32 %i.bkj, ptr %i.bkf, align 8, !noalias !34822
  %i.bkk = add nuw nsw i64 %.sroa.01.0.i263609.i.i, 4 ; 2 uses
  %i.bkl = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bke ; 2 uses
  %i.bkm = load i32, ptr %i.bkl, align 4, !noalias !34822, !noundef !27
  %i.bkn = getelementptr inbounds nuw [4 x i8], ptr %i.bja, i64 %i.bke
  %i.bko = load i32, ptr %i.bkn, align 4, !noalias !34822, !noundef !27
  %i.bkp = add i32 %i.bko, %i.bkm
  store i32 %i.bkp, ptr %i.bkl, align 4, !noalias !34822
  %exitcond862.not.i.i.3 = icmp eq i64 %i.bkk, 704
  br i1 %exitcond862.not.i.i.3, label %.noexc240.i.i335, label %scalar.ph3862, !llvm.loop !34964

.noexc240.i.i335:                                 ; preds = %vector.body3864, %scalar.ph3862
  %i.bkq = invoke fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17ha8491ed593501ad1E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2832) %i.v)
          to label %.noexc242.i.i338 unwind label %.loopexit.split-lp.thread.i.i336, !noalias !34822

.noexc242.i.i338:                                 ; preds = %.noexc240.i.i335
  %i.bkr = getelementptr inbounds nuw i8, ptr %i.bja, i64 2824
  %i.bks = load float, ptr %i.bkr, align 8, !alias.scope !34965, !noalias !34822, !noundef !27
  %i.bkt = fsub float %i.bkq, %i.bks              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !34939
  %i.bku = fcmp olt float %i.bkt, %.sroa.093.0611.i.i
  br i1 %i.bku, label %bb.ju, label %bb.jt

bb.jt:                                            ; preds = %bb.ju, %.noexc242.i.i338
  %.sroa.093.1.i.i339 = phi float [ %i.bkt, %bb.ju ], [ %.sroa.093.0611.i.i, %.noexc242.i.i338 ]
  %.sroa.089.1.i.i340 = phi i32 [ %i.bkx, %bb.ju ], [ %.sroa.089.0612.i.i, %.noexc242.i.i338 ] ; 2 uses
  %i.bkv = icmp samesign ult i64 %.sroa.0141.1613.i.i, %i.bdj ; 2 uses
  %i.bkw = zext i1 %i.bkv to i64
  %.sroa.0141.1.i.i341 = add nuw nsw i64 %.sroa.0141.1613.i.i, %i.bkw
  br i1 %i.bkv, label %.lr.ph614.i.i, label %._crit_edge615.loopexit.i.i

bb.ju:                                            ; preds = %.noexc242.i.i338
  %i.bkx = load i32, ptr %i.biw, align 4, !noalias !34822, !noundef !27
  br label %bb.jt

bb.jv:                                            ; preds = %.lr.ph605.i.i
  %i.bky = getelementptr inbounds nuw [2 x i8], ptr %i.ara, i64 %.sroa.043.2603.i.i
  %i.bkz = load i16, ptr %i.bky, align 2, !alias.scope !34968, !noalias !34971, !noundef !27 ; 2 uses
  %i.bla = zext i16 %i.bkz to i64                 ; 2 uses
  %i.blb = icmp ult i16 %i.bkz, 704
  br i1 %i.blb, label %bb.jw, label %.invoke1172.i.i

.invoke1172.i.i:                                  ; preds = %._crit_edge615.i.i, %._crit_edge606.thread.i.i, %._crit_edge606.i.i, %bb.jv, %.lr.ph605.i.i, %bb.js, %.lr.ph614.i.i, %bb.jo, %.lr.ph614.i.us.i
  %i.blc = phi i64 [ %i.biy, %bb.js ], [ %i.bii, %bb.jo ], [ %.sroa.043.2603.i.i, %.lr.ph605.i.i ], [ %i.bnf, %.lr.ph614.i.us.i ], [ %.sroa.0141.0610.i.i, %.lr.ph614.i.i ], [ %i.bla, %bb.jv ], [ %i.bgg, %._crit_edge606.thread.i.i ], [ %i.bgb, %._crit_edge606.i.i ], [ %.pre-phi.i.i343, %._crit_edge615.i.i ]
  %i.bld = phi i64 [ %.sroa.14.7.i.i284, %bb.js ], [ %.sroa.14.7.i.i284, %bb.jo ], [ %2, %.lr.ph605.i.i ], [ %i.bnf, %.lr.ph614.i.us.i ], [ %i.bnf, %.lr.ph614.i.i ], [ 704, %bb.jv ], [ %.sroa.14.7.i.i284, %._crit_edge606.thread.i.i ], [ %.sroa.14.7.i.i284, %._crit_edge606.i.i ], [ %i.bnf, %._crit_edge615.i.i ]
  %i.ble = phi ptr [ @1555, %bb.js ], [ @1555, %bb.jo ], [ @1556, %.lr.ph605.i.i ], [ @1554, %.lr.ph614.i.us.i ], [ @1554, %.lr.ph614.i.i ], [ @1932, %bb.jv ], [ @1552, %._crit_edge606.thread.i.i ], [ @1552, %._crit_edge606.i.i ], [ @1553, %._crit_edge615.i.i ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.blc, i64 noundef %i.bld, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ble) #43
          to label %.cont1173.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i320, !noalias !34822

.cont1173.i.i:                                    ; preds = %.invoke1172.i.i
  unreachable

bb.jw:                                            ; preds = %bb.jv
  %i.blf = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bla ; 2 uses
  %i.blg = load i32, ptr %i.blf, align 4, !alias.scope !34972, !noalias !34822, !noundef !27
  %i.blh = add i32 %i.blg, 1
  store i32 %i.blh, ptr %i.blf, align 4, !alias.scope !34972, !noalias !34822
  %i.bli = load i64, ptr %i.bdq, align 8, !alias.scope !34975, !noalias !34822, !noundef !27
  %i.blj = add i64 %i.bli, 1                      ; 2 uses
  store i64 %i.blj, ptr %i.bdq, align 8, !alias.scope !34978, !noalias !34822
  %i.blk = add nuw i64 %.sroa.043.2603.i.i, 1     ; 4 uses
  %i.bll = add nuw nsw i64 %i.bfx, 1
  %exitcond860.not.i.i = icmp eq i64 %i.bfx, %i.bfv
  br i1 %exitcond860.not.i.i, label %._crit_edge606.i.i, label %.lr.ph605.i.i

.loopexit.split-lp.i.i322:                        ; preds = %.loopexit.split-lp.loopexit.split-lp.i.i320, %.loopexit.split-lp.loopexit.i.i332, %bb.ip
  %.sroa.1152.2.i.i323 = phi i64 [ 0, %bb.ip ], [ %i.bnf, %.loopexit.split-lp.loopexit.split-lp.i.i320 ], [ %i.bnf, %.loopexit.split-lp.loopexit.i.i332 ] ; 2 uses
  %.sroa.051.2.i.i324 = phi ptr [ inttoptr (i64 4 to ptr), %bb.ip ], [ %i.bcu, %.loopexit.split-lp.loopexit.split-lp.i.i320 ], [ %i.bcu, %.loopexit.split-lp.loopexit.i.i332 ] ; 2 uses
  %.sroa.14.6.i.i325 = phi i64 [ 0, %bb.ip ], [ %.sroa.14.7.i.i284, %.loopexit.split-lp.loopexit.split-lp.i.i320 ], [ %.sroa.14.7.i.i284, %.loopexit.split-lp.loopexit.i.i332 ] ; 2 uses
  %.sroa.016.6.i.i326 = phi ptr [ inttoptr (i64 8 to ptr), %bb.ip ], [ %.sroa.016.7.i.i285, %.loopexit.split-lp.loopexit.split-lp.i.i320 ], [ %.sroa.016.7.i.i285, %.loopexit.split-lp.loopexit.i.i332 ] ; 2 uses
  %.pn.i.i327 = phi { ptr, i32 } [ %i.bdo, %bb.ip ], [ %lpad.loopexit.split-lp251.i.i321, %.loopexit.split-lp.loopexit.split-lp.i.i320 ], [ %lpad.loopexit250.i.i333, %.loopexit.split-lp.loopexit.i.i332 ] ; 2 uses
  br i1 %i.bcx, label %.thread130.i.i306, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i": ; preds = %.loopexit.split-lp.i.i322, %.loopexit.split-lp.thread.i.i336
  %.pn953.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i337, %.loopexit.split-lp.thread.i.i336 ], [ %.pn.i.i327, %.loopexit.split-lp.i.i322 ]
  %.sroa.016.6952.i.i = phi ptr [ %.sroa.016.7.i.i285, %.loopexit.split-lp.thread.i.i336 ], [ %.sroa.016.6.i.i326, %.loopexit.split-lp.i.i322 ]
  %.sroa.14.6951.i.i = phi i64 [ %.sroa.14.7.i.i284, %.loopexit.split-lp.thread.i.i336 ], [ %.sroa.14.6.i.i325, %.loopexit.split-lp.i.i322 ]
  %.sroa.051.2950.i.i = phi ptr [ %i.bcu, %.loopexit.split-lp.thread.i.i336 ], [ %.sroa.051.2.i.i324, %.loopexit.split-lp.i.i322 ]
  %.sroa.1152.2949.i.i = phi i64 [ %i.bnf, %.loopexit.split-lp.thread.i.i336 ], [ %.sroa.1152.2.i.i323, %.loopexit.split-lp.i.i322 ]
  tail call void @mi_free(ptr noundef nonnull %i.bdp) #38, !noalias !34822
  br label %.thread130.i.i306

._crit_edge572.i.i:                               ; preds = %bb.kz, %.split.i.i271
  %.sroa.043.3.lcssa.i.i281 = phi i64 [ %.sroa.043.0588.i.i, %.split.i.i271 ], [ %.sroa.043.4.lcssa.i.i277, %bb.kz ]
  %i.blm = invoke fastcc noundef i64 @_ZN6brotli3enc7cluster22BrotliHistogramCombine17h357bcc83faeb8dfbE(ptr noalias noundef nonnull align 8 %.sroa.10.0.i.i.i427933.i.i, i64 noundef %.sroa.0.0.i422.i.i220, ptr noalias noundef nonnull align 4 %i.aa, i64 noundef 64, ptr noalias noundef nonnull align 4 %i.y, i64 noundef 64, ptr noalias noundef nonnull align 4 %i.z, i64 noundef 64, ptr noalias noundef nonnull align 4 %i.bbu, i64 noundef 2049, i64 noundef %.sroa.0.0.i447.i.i273, i64 noundef %.sroa.0.0.i447.i.i273, i64 noundef 64, i64 noundef 2048)
          to label %bb.jx unwind label %.thread163.loopexit.split-lp.loopexit.i.i282, !noalias !34822 ; 5 uses

bb.jx:                                            ; preds = %._crit_edge572.i.i
  %i.bln = add i64 %i.blm, %.sroa.0.0593.i.i      ; 3 uses
  %i.blo = icmp ult i64 %.sroa.012.0592.i.i, %i.bln
  br i1 %i.blo, label %bb.jy, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hfd622555539a5c88E.exit538.i.i"

bb.jy:                                            ; preds = %bb.jx
  %i.blp = icmp eq i64 %.sroa.012.0592.i.i, 0     ; 2 uses
  %..sroa.012.0.i.i388 = select i1 %i.blp, i64 %i.bln, i64 %.sroa.012.0592.i.i
  br label %bb.jz

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hfd622555539a5c88E.exit538.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i537.i.i", %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h141b1da56c8f9adbE.exit.i.i", %bb.jx
  %.sroa.14.7.i.i284 = phi i64 [ %.sroa.14.3585.i.i, %bb.jx ], [ %.sroa.066.1.i.i389, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i537.i.i" ], [ %.sroa.066.1.i.i389, %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h141b1da56c8f9adbE.exit.i.i" ] ; 22 uses
  %.sroa.016.7.i.i285 = phi ptr [ %.sroa.016.3586.i.i, %bb.jx ], [ %.sroa.10.0.i.i.i521.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i537.i.i" ], [ %.sroa.10.0.i.i.i521.i.i, %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h141b1da56c8f9adbE.exit.i.i" ] ; 18 uses
  %.sroa.012.1.i.i286 = phi i64 [ %.sroa.012.0592.i.i, %bb.jx ], [ %.sroa.066.1.i.i389, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i537.i.i" ], [ %.sroa.066.1.i.i389, %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h141b1da56c8f9adbE.exit.i.i" ]
  %i.blq = add i64 %i.blm, %.sroa.018.0591.i.i    ; 3 uses
  %i.blr = icmp ult i64 %.sroa.023.0590.i.i, %i.blq
  br i1 %i.blr, label %bb.kf, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit547.i.i"

bb.jz:                                            ; preds = %bb.jz, %bb.jy
  %.sroa.066.1.i.i389 = phi i64 [ %..sroa.012.0.i.i388, %bb.jy ], [ %i.blt, %bb.jz ] ; 13 uses
  %i.bls = icmp ult i64 %.sroa.066.1.i.i389, %i.bln
  %i.blt = shl i64 %.sroa.066.1.i.i389, 1
  br i1 %i.bls, label %bb.jz, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.blu = mul i64 %.sroa.066.1.i.i389, 2832      ; 3 uses
  %or.cond.i.i.i.i.i518.i.i = icmp ugt i64 %.sroa.066.1.i.i389, 3256840408493918
  br i1 %or.cond.i.i.i.i.i518.i.i, label %bb.kc, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i519.i.i, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i519.i.i: ; preds = %bb.ka
  %i.blv = icmp eq i64 %i.blu, 0
  br i1 %i.blv, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i520.i.i", label %bb.kb

bb.kb:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i519.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34981
  %i.blw = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.blu, i64 noundef range(i64 1, 9) 8) #38, !noalias !34981 ; 2 uses
  %i.blx = icmp eq ptr %i.blw, null
  br i1 %i.blx, label %bb.kc, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i520.i.i"

bb.kc:                                            ; preds = %bb.kb, %bb.ka
  %.sroa.4.0.ph.i.i.i533.i.i = phi i64 [ 8, %bb.kb ], [ 0, %bb.ka ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i533.i.i, i64 %i.blu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc534.i.i unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i231, !noalias !34822

.noexc534.i.i:                                    ; preds = %bb.kc
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i520.i.i": ; preds = %bb.kb, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i519.i.i
  %.sroa.10.0.i.i.i521.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i519.i.i ], [ %i.blw, %bb.kb ] ; 7 uses
  %.sroa.4.0.i.i.i522.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i519.i.i ], [ %.sroa.066.1.i.i389, %bb.kb ]
  %i.bly = icmp samesign ule i64 %.sroa.066.1.i.i389, %.sroa.4.0.i.i.i522.i.i
  tail call void @llvm.assume(i1 %i.bly)
  %i.blz = icmp samesign ugt i64 %.sroa.066.1.i.i389, 1
  br i1 %i.blz, label %.lr.ph.i.i.i528.i.i.preheader, label %.loopexit254.i.i390

.lr.ph.i.i.i528.i.i.preheader:                    ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i520.i.i"
  %i.bma = add nsw i64 %.sroa.066.1.i.i389, -1    ; 2 uses
  %i.bmb = add nsw i64 %.sroa.066.1.i.i389, -2
  %xtraiter4715 = and i64 %i.bma, 7               ; 3 uses
  %i.bmc = icmp ult i64 %i.bmb, 7
  br i1 %i.bmc, label %.lr.ph.i.i.i528.i.i.epil.preheader, label %.lr.ph.i.i.i528.i.i.preheader.new

.lr.ph.i.i.i528.i.i.preheader.new:                ; preds = %.lr.ph.i.i.i528.i.i.preheader
  %unroll_iter4720 = and i64 %i.bma, -8
  br label %.lr.ph.i.i.i528.i.i

.lr.ph.i.i.i528.i.i:                              ; preds = %.lr.ph.i.i.i528.i.i, %.lr.ph.i.i.i528.i.i.preheader.new
  %.sroa.0.08.i.i.i529.i.i = phi ptr [ %.sroa.10.0.i.i.i521.i.i, %.lr.ph.i.i.i528.i.i.preheader.new ], [ %i.bmk, %.lr.ph.i.i.i528.i.i ] ; 17 uses
  %niter4721 = phi i64 [ 0, %.lr.ph.i.i.i528.i.i.preheader.new ], [ %niter4721.next.7, %.lr.ph.i.i.i528.i.i ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.08.i.i.i529.i.i, i8 0, i64 2824, i1 false), !noalias !34822
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i, align 8, !noalias !34989
  %i.bmd = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 2832
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 5656
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bmd, i8 0, i64 2824, i1 false), !noalias !34822
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.1, align 8, !noalias !34989
  %i.bme = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 5664
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 8488
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bme, i8 0, i64 2824, i1 false), !noalias !34822
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.2, align 8, !noalias !34989
  %i.bmf = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 8496
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 11320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bmf, i8 0, i64 2824, i1 false), !noalias !34822
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.3, align 8, !noalias !34989
  %i.bmg = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 11328
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 14152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bmg, i8 0, i64 2824, i1 false), !noalias !34822
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.4, align 8, !noalias !34989
  %i.bmh = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 14160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 16984
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bmh, i8 0, i64 2824, i1 false), !noalias !34822
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.5, align 8, !noalias !34989
  %i.bmi = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 16992
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 19816
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bmi, i8 0, i64 2824, i1 false), !noalias !34822
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.6, align 8, !noalias !34989
  %i.bmj = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 19824
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 22648
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bmj, i8 0, i64 2824, i1 false), !noalias !34822
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.7, align 8, !noalias !34989
  %i.bmk = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 22656 ; 3 uses
  %niter4721.next.7 = add nuw i64 %niter4721, 8   ; 2 uses
  %niter4721.ncmp.7 = icmp eq i64 %niter4721.next.7, %unroll_iter4720
  br i1 %niter4721.ncmp.7, label %.loopexit254.i.i390.loopexit.unr-lcssa, label %.lr.ph.i.i.i528.i.i

.loopexit254.i.i390.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i.i528.i.i
  %lcmp.mod4717.not = icmp eq i64 %xtraiter4715, 0
  br i1 %lcmp.mod4717.not, label %.loopexit254.i.i390, label %.lr.ph.i.i.i528.i.i.epil.preheader

.lr.ph.i.i.i528.i.i.epil.preheader:               ; preds = %.loopexit254.i.i390.loopexit.unr-lcssa, %.lr.ph.i.i.i528.i.i.preheader
  %.sroa.0.08.i.i.i529.i.i.epil.init = phi ptr [ %.sroa.10.0.i.i.i521.i.i, %.lr.ph.i.i.i528.i.i.preheader ], [ %i.bmk, %.loopexit254.i.i390.loopexit.unr-lcssa ]
  %lcmp.mod4719 = icmp ne i64 %xtraiter4715, 0
  call void @llvm.assume(i1 %lcmp.mod4719)
  br label %.lr.ph.i.i.i528.i.i.epil

.lr.ph.i.i.i528.i.i.epil:                         ; preds = %.lr.ph.i.i.i528.i.i.epil, %.lr.ph.i.i.i528.i.i.epil.preheader
  %.sroa.0.08.i.i.i529.i.i.epil = phi ptr [ %i.bml, %.lr.ph.i.i.i528.i.i.epil ], [ %.sroa.0.08.i.i.i529.i.i.epil.init, %.lr.ph.i.i.i528.i.i.epil.preheader ] ; 3 uses
  %epil.iter4716 = phi i64 [ %epil.iter4716.next, %.lr.ph.i.i.i528.i.i.epil ], [ 0, %.lr.ph.i.i.i528.i.i.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i.epil, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.08.i.i.i529.i.i.epil, i8 0, i64 2824, i1 false), !noalias !34822
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.epil, align 8, !noalias !34989
  %i.bml = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i.epil, i64 2832 ; 2 uses
  %epil.iter4716.next = add i64 %epil.iter4716, 1 ; 2 uses
  %epil.iter4716.cmp.not = icmp eq i64 %epil.iter4716.next, %xtraiter4715
  br i1 %epil.iter4716.cmp.not, label %.loopexit254.i.i390, label %.lr.ph.i.i.i528.i.i.epil, !llvm.loop !34992

.loopexit254.i.i390:                              ; preds = %.loopexit254.i.i390.loopexit.unr-lcssa, %.lr.ph.i.i.i528.i.i.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i520.i.i"
  %.sroa.0.0.lcssa15.i.i.i526.i.i = phi ptr [ %.sroa.10.0.i.i.i521.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i520.i.i" ], [ %i.bmk, %.loopexit254.i.i390.loopexit.unr-lcssa ], [ %i.bml, %.lr.ph.i.i.i528.i.i.epil ] ; 2 uses
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i527.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i526.i.i, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.0.lcssa15.i.i.i526.i.i, i8 0, i64 2824, i1 false), !noalias !34822
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i527.i.i, align 8, !noalias !34989
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.3586.i.i) ]
  %.not227.i.i391 = icmp ugt i64 %.sroa.012.0592.i.i, %.sroa.14.3585.i.i
  br i1 %.not227.i.i391, label %bb.ke, label %bb.kd, !prof !2480

bb.kd:                                            ; preds = %.loopexit254.i.i390
  br i1 %i.blp, label %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h141b1da56c8f9adbE.exit.i.i", label %.lr.ph.preheader.i.i.i392

.lr.ph.preheader.i.i.i392:                        ; preds = %bb.kd
  %i.bmm = mul nuw nsw i64 %.sroa.012.0592.i.i, 2832
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.10.0.i.i.i521.i.i, ptr nonnull readonly align 8 %.sroa.016.3586.i.i, i64 %i.bmm, i1 false), !alias.scope !34993, !noalias !34822
  br label %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h141b1da56c8f9adbE.exit.i.i"

bb.ke:                                            ; preds = %.loopexit254.i.i390
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.012.0592.i.i, i64 noundef %.sroa.14.3585.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1565) #43
          to label %bb.jf unwind label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit551.i.i", !noalias !34822

"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h141b1da56c8f9adbE.exit.i.i": ; preds = %.lr.ph.preheader.i.i.i392, %bb.kd
  %i.bmn = icmp eq i64 %.sroa.14.3585.i.i, 0
  br i1 %i.bmn, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hfd622555539a5c88E.exit538.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i537.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i537.i.i": ; preds = %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h141b1da56c8f9adbE.exit.i.i"
  tail call void @mi_free(ptr noundef nonnull align 8 %.sroa.016.3586.i.i) #38, !noalias !34822
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hfd622555539a5c88E.exit538.i.i"

bb.kf:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hfd622555539a5c88E.exit538.i.i"
  %i.bmo = icmp eq i64 %.sroa.023.0590.i.i, 0
  %..sroa.023.0.i.i385 = select i1 %i.bmo, i64 %i.blq, i64 %.sroa.023.0590.i.i
  br label %bb.kg

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit547.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i", %bb.kn, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hfd622555539a5c88E.exit538.i.i"
  %.sroa.12.5.i.i287 = phi i64 [ %.sroa.12.2583.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hfd622555539a5c88E.exit538.i.i" ], [ %.sroa.070.1.i.i386, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i" ], [ %.sroa.070.1.i.i386, %bb.kn ] ; 10 uses
  %.sroa.026.5.i.i288 = phi ptr [ %.sroa.026.2584.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hfd622555539a5c88E.exit538.i.i" ], [ %i.bna, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i" ], [ %i.bna, %bb.kn ] ; 11 uses
  %.sroa.023.1.i.i289 = phi i64 [ %.sroa.023.0590.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hfd622555539a5c88E.exit538.i.i" ], [ %.sroa.070.1.i.i386, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i" ], [ %.sroa.070.1.i.i386, %bb.kn ]
  %.not625.i.i = icmp eq i64 %i.blm, 0
  br i1 %.not625.i.i, label %.preheader253.i.i290, label %.lr.ph577.preheader.i.i

.lr.ph577.preheader.i.i:                          ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit547.i.i"
  %reass.sub446.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.14.7.i.i284, i64 %.sroa.0.0593.i.i)
  %i.bmp = add nuw nsw i64 %reass.sub446.i, 1
  %reass.sub447.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.12.5.i.i287, i64 %.sroa.018.0591.i.i)
  %i.bmq = add nuw nsw i64 %reass.sub447.i, 1
  br label %.lr.ph577.i.i

bb.kg:                                            ; preds = %bb.kg, %bb.kf
  %.sroa.070.1.i.i386 = phi i64 [ %..sroa.023.0.i.i385, %bb.kf ], [ %i.bms, %bb.kg ] ; 9 uses
  %i.bmr = icmp ult i64 %.sroa.070.1.i.i386, %i.blq
  %i.bms = shl i64 %.sroa.070.1.i.i386, 1
  br i1 %i.bmr, label %bb.kg, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %i.bmt = shl i64 %.sroa.070.1.i.i386, 2         ; 4 uses
  %i.bmu = icmp ugt i64 %.sroa.070.1.i.i386, 4611686018427387903
  %i.bmv = icmp ugt i64 %i.bmt, 9223372036854775804
  %or.cond.i.i.i.i539.i.i = or i1 %i.bmu, %i.bmv
  br i1 %or.cond.i.i.i.i539.i.i, label %bb.kk, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i540.i.i, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i540.i.i: ; preds = %bb.kh
  %i.bmw = icmp eq i64 %i.bmt, 0
  br i1 %i.bmw, label %bb.kl, label %bb.ki

bb.ki:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i540.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35000
  %i.bmx = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.bmt, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !35000 ; 2 uses
  %i.bmy = icmp eq ptr %i.bmx, null
  br i1 %i.bmy, label %bb.kk, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.bmz = ptrtoint ptr %i.bmx to i64
  br label %bb.kl

bb.kk:                                            ; preds = %bb.ki, %bb.kh
  %.sroa.4.0.ph.i.i542.i.i = phi i64 [ 4, %bb.ki ], [ 0, %bb.kh ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i542.i.i, i64 %i.bmt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc543.i.i unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i231, !noalias !34822

.noexc543.i.i:                                    ; preds = %bb.kk
  unreachable

bb.kl:                                            ; preds = %bb.kj, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i540.i.i
  %.sroa.10.0.i.i541.i.i = phi i64 [ %i.bmz, %bb.kj ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i540.i.i ]
  %i.bna = inttoptr i64 %.sroa.10.0.i.i541.i.i to ptr ; 5 uses
  %i.bnb = icmp samesign ult i64 %.sroa.070.1.i.i386, 2305843009213693952
  tail call void @llvm.assume(i1 %i.bnb)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bna) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.2584.i.i) ]
  %.not229.i.i387 = icmp ugt i64 %.sroa.023.0590.i.i, %.sroa.12.2583.i.i
  br i1 %.not229.i.i387, label %bb.km, label %bb.kn, !prof !2480

bb.km:                                            ; preds = %bb.kl
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.023.0590.i.i, i64 noundef %.sroa.12.2583.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1564) #43
          to label %bb.jf unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit549.i.i", !noalias !34822

bb.kn:                                            ; preds = %bb.kl
  %i.bnc = shl nuw nsw i64 %.sroa.023.0590.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bna, ptr nonnull readonly align 4 %.sroa.026.2584.i.i, i64 %i.bnc, i1 false), !alias.scope !35005, !noalias !35009
  %i.bnd = icmp eq i64 %.sroa.12.2583.i.i, 0
  br i1 %i.bnd, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit547.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i": ; preds = %bb.kn
  tail call void @mi_free(ptr noundef nonnull align 4 %.sroa.026.2584.i.i) #38, !noalias !34822
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit547.i.i"

.preheader253.i.i290:                             ; preds = %bb.kx, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit547.i.i"
  %.sroa.018.1.lcssa.i.i291 = phi i64 [ %.sroa.018.0591.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit547.i.i" ], [ %i.boj, %bb.kx ]
  %.sroa.0.1.lcssa.i.i292 = phi i64 [ %.sroa.0.0593.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit547.i.i" ], [ %i.boc, %bb.kx ]
  br i1 %.not928.i.i, label %._crit_edge582.i.i, label %.lr.ph581.i.i

.lr.ph581.i.i:                                    ; preds = %.preheader253.i.i290
  %i.bne = trunc i64 %.sroa.029.0589.i.i to i32
  br label %bb.ko

._crit_edge582.i.i:                               ; preds = %bb.kq, %.preheader253.i.i290
  %i.bnf = add i64 %i.blm, %.sroa.029.0589.i.i    ; 23 uses
  %i.bng = add i64 %.sroa.047.1587.i.i, 64        ; 2 uses
  %i.bnh = icmp ult i64 %i.bng, %.sroa.0.0.i.i205
  %indvars.iv.next.i.i293 = add i64 %indvars.iv.i.i272, -64
  br i1 %i.bnh, label %.split.i.i271, label %bb.id

bb.ko:                                            ; preds = %bb.kq, %.lr.ph581.i.i
  %i.bni = phi i64 [ 1, %.lr.ph581.i.i ], [ %i.bnt, %bb.kq ] ; 3 uses
  %.sroa.0133.0580.i.i = phi i64 [ 0, %.lr.ph581.i.i ], [ %i.bni, %bb.kq ] ; 2 uses
  %i.bnj = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.sroa.0133.0580.i.i
  %i.bnk = load i32, ptr %i.bnj, align 4, !noalias !34822, !noundef !27 ; 2 uses
  %i.bnl = zext i32 %i.bnk to i64                 ; 2 uses
  %i.bnm = icmp ult i32 %i.bnk, 64
  br i1 %i.bnm, label %bb.kp, label %.invoke3977

bb.kp:                                            ; preds = %bb.ko
  %i.bnn = or disjoint i64 %.sroa.0133.0580.i.i, %.sroa.047.1587.i.i ; 3 uses
  %i.bno = icmp ult i64 %i.bnn, %.sroa.0.0.i.i205
  br i1 %i.bno, label %bb.kq, label %.invoke3977

bb.kq:                                            ; preds = %bb.kp
  %i.bnp = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.bnl
  %i.bnq = load i32, ptr %i.bnp, align 4, !noalias !34822, !noundef !27
  %i.bnr = add i32 %i.bnq, %i.bne
  %i.bns = getelementptr inbounds nuw [4 x i8], ptr %i.azy, i64 %i.bnn
  store i32 %i.bnr, ptr %i.bns, align 4, !noalias !34822
  %i.bnt = add nuw nsw i64 %i.bni, 1
  %exitcond857.not.i.i = icmp eq i64 %i.bni, %umax856.i.i
  br i1 %exitcond857.not.i.i, label %._crit_edge582.i.i, label %bb.ko

.lr.ph577.i.i:                                    ; preds = %bb.kx, %.lr.ph577.preheader.i.i
  %i.bnu = phi i64 [ %i.bom, %bb.kx ], [ 1, %.lr.ph577.preheader.i.i ] ; 6 uses
  %.sroa.0.1576.i.i = phi i64 [ %i.boc, %bb.kx ], [ %.sroa.0.0593.i.i, %.lr.ph577.preheader.i.i ] ; 3 uses
  %.sroa.018.1575.i.i = phi i64 [ %i.boj, %bb.kx ], [ %.sroa.018.0591.i.i, %.lr.ph577.preheader.i.i ] ; 3 uses
  %.sroa.0131.0574.i.i = phi i64 [ %i.bnu, %bb.kx ], [ 0, %.lr.ph577.preheader.i.i ] ; 2 uses
  %exitcond850.not.i.i = icmp eq i64 %i.bnu, 65
  br i1 %exitcond850.not.i.i, label %.invoke3977, label %bb.kr

bb.kr:                                            ; preds = %.lr.ph577.i.i
  %i.bnv = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.sroa.0131.0574.i.i ; 2 uses
  %i.bnw = load i32, ptr %i.bnv, align 4, !noalias !34822, !noundef !27
  %i.bnx = zext i32 %i.bnw to i64                 ; 4 uses
  %i.bny = icmp samesign ugt i64 %.sroa.0.0.i422.i.i220, %i.bnx
  br i1 %i.bny, label %bb.kt, label %.invoke3977

bb.ks:                                            ; preds = %bb.ku
  %i.bnz = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i240"

bb.kt:                                            ; preds = %bb.kr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.7.i.i285) ]
  %exitcond852.not.i.i = icmp eq i64 %i.bnu, %i.bmp
  br i1 %exitcond852.not.i.i, label %bb.ku, label %bb.kv

bb.ku:                                            ; preds = %bb.kt
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.0.1576.i.i, i64 noundef %.sroa.14.7.i.i284, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1561) #43
          to label %bb.jf unwind label %bb.ks, !noalias !34822

end_hunk_7
begin_hunk_8_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
  %.val94.i428 = phi ptr [ %i.cix, %bb.oj ], [ %i.cix, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i236.i" ], [ %.val90.i425, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit229.i" ]
  %.val95.i429 = phi i64 [ %.sroa.017.1.i430, %bb.oj ], [ %.sroa.017.1.i430, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i236.i" ], [ %.val91.i426, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit229.i" ] ; 2 uses
  %i.cim = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 1, ptr %i.cim, align 8, !alias.scope !34689, !noalias !34686
  %i.cin = icmp ult i64 %i.atv, %.val63.i424
  br i1 %i.cin, label %bb.ok, label %.invoke2928

bb.of:                                            ; preds = %bb.of, %bb.oe
  %.sroa.017.1.i430 = phi i64 [ %spec.select91.i, %bb.oe ], [ %i.cip, %bb.of ] ; 8 uses
  %i.cio = icmp ult i64 %.sroa.017.1.i430, %i.atw
  %i.cip = shl i64 %.sroa.017.1.i430, 1
  br i1 %i.cio, label %bb.of, label %bb.og

bb.og:                                            ; preds = %bb.of
  %i.ciq = shl i64 %.sroa.017.1.i430, 2           ; 5 uses
  %i.cir = icmp ugt i64 %.sroa.017.1.i430, 4611686018427387903
  %i.cis = icmp ugt i64 %i.ciq, 9223372036854775804
  %or.cond.i.i.i.i230.i = or i1 %i.cir, %i.cis
  br i1 %or.cond.i.i.i.i230.i, label %.invoke2926, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i231.i, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i231.i: ; preds = %bb.og
  %i.cit = icmp eq i64 %i.ciq, 0
  br i1 %i.cit, label %bb.oj, label %bb.oh

bb.oh:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i231.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35111
  %i.ciu = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.ciq, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !35111 ; 2 uses
  %i.civ = icmp eq ptr %i.ciu, null
  br i1 %i.civ, label %.invoke2926, label %bb.oi

bb.oi:                                            ; preds = %bb.oh
  %i.ciw = ptrtoint ptr %i.ciu to i64
  br label %bb.oj

bb.oj:                                            ; preds = %bb.oi, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i231.i
  %.sroa.10.0.i.i232.i = phi i64 [ %i.ciw, %bb.oi ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i231.i ]
  %i.cix = inttoptr i64 %.sroa.10.0.i.i232.i to ptr ; 5 uses
  %i.ciy = icmp samesign ult i64 %.sroa.017.1.i430, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ciy)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cix) ]
  %i.ciz = shl nuw nsw i64 %.val91.i426, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cix, ptr nonnull readonly align 4 %.val90.i425, i64 %i.ciz, i1 false), !alias.scope !35116, !noalias !35120
  store ptr %i.cix, ptr %i.cid, align 8, !alias.scope !34689, !noalias !34686
  store i64 %.sroa.017.1.i430, ptr %i.cie, align 8, !alias.scope !34689, !noalias !34686
  br i1 %i.cil, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i427", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i236.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i236.i": ; preds = %bb.oj
  tail call void @mi_free(ptr noundef nonnull align 4 %.val90.i425) #38, !noalias !34699
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i427"

bb.ok:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i427"
  %i.cja = getelementptr inbounds nuw i8, ptr %.val.i423, i64 %i.atv
  store i8 0, ptr %i.cja, align 1, !noalias !34699
  %i.cjb = icmp ult i64 %i.atv, %.val95.i429
  br i1 %i.cjb, label %_ZN6brotli3enc14block_splitter15SplitByteVector17he88e5a9ef69dcbe2E.exit.thread93, label %.invoke2928

.invoke2928:                                      ; preds = %bb.ok, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i427"
  %i.cjc = phi i64 [ %.val63.i424, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i427" ], [ %.val95.i429, %bb.ok ]
  %i.cjd = phi ptr [ @1569, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i427" ], [ @1570, %bb.ok ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.atv, i64 noundef %i.cjc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cjd) #43
          to label %.cont2929 unwind label %.body434.thread

.cont2929:                                        ; preds = %.invoke2928
  unreachable

_ZN6brotli3enc14block_splitter15SplitByteVector17he88e5a9ef69dcbe2E.exit.thread93: ; preds = %bb.ok
  %i.cje = getelementptr inbounds nuw [4 x i8], ptr %.val94.i428, i64 %i.atv
  %i.cjf = trunc nuw nsw i64 %2 to i32
  store i32 %i.cjf, ptr %i.cje, align 4, !noalias !34699
  store i64 %i.atw, ptr %i.atu, align 8, !alias.scope !34689, !noalias !34686
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i443

_ZN6brotli3enc14block_splitter15SplitByteVector17he88e5a9ef69dcbe2E.exit: ; preds = %bb.ji
  %i.cjg = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 %.sroa.0109.1.i.i359, ptr %i.cjg, align 8, !alias.scope !34883, !noalias !34884
  %i.cjh = zext i8 %.sroa.0113.1.i.i358 to i64
  %i.cji = add nuw nsw i64 %i.cjh, 1
  %i.cjj = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 %i.cji, ptr %i.cjj, align 8, !alias.scope !34883, !noalias !34884
  tail call void @mi_free(ptr noundef nonnull align 4 %i.bdp) #38, !noalias !34822
  tail call void @mi_free(ptr noundef nonnull align 4 %.sroa.10.0.i.i411.i.i208) #38, !noalias !34822
  tail call void @mi_free(ptr noundef nonnull align 4 %i.azy) #38, !noalias !34822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !34822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !34822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !34822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !34822
  tail call void @mi_free(ptr noundef nonnull align 1 %i.axz) #38, !noalias !34699
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i443

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i443: ; preds = %_ZN6brotli3enc14block_splitter15SplitByteVector17he88e5a9ef69dcbe2E.exit, %_ZN6brotli3enc14block_splitter15SplitByteVector17he88e5a9ef69dcbe2E.exit.thread93
  tail call void @mi_free(ptr noundef nonnull align 2 %i.ara) #38
  br i1 %i.aqw, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17hc6759c00225004c5E.exit446", label %bb.ol

bb.ol:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i443
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35122
  %i.cjk = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.aqt, i64 noundef range(i64 1, -9223372036854775807) 2) #38, !noalias !35122 ; 2 uses
  %i.cjl = icmp eq ptr %i.cjk, null
  br i1 %i.cjl, label %bb.on, label %bb.om

bb.om:                                            ; preds = %bb.ol
  %i.cjm = ptrtoint ptr %i.cjk to i64
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17hc6759c00225004c5E.exit446"

bb.on:                                            ; preds = %bb.ol
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 2, i64 %i.aqt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !35127
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17hc6759c00225004c5E.exit446": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i443, %bb.om
  %.sroa.10.0.i.i444 = phi i64 [ %i.cjm, %bb.om ], [ 2, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i443 ]
  %i.cjn = inttoptr i64 %.sroa.10.0.i.i444 to ptr ; 16 uses
  br label %.lr.ph934

.lr.ph934:                                        ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17hc6759c00225004c5E.exit446", %bb.wl
  %.sroa.01.0933 = phi i64 [ %.sroa.01.1, %bb.wl ], [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17hc6759c00225004c5E.exit446" ] ; 6 uses
  %.sroa.011.0932 = phi i64 [ %i.cjo, %bb.wl ], [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17hc6759c00225004c5E.exit446" ] ; 3 uses
  %i.cjo = add nuw i64 %.sroa.011.0932, 1         ; 2 uses
  %exitcond1731.not = icmp eq i64 %.sroa.011.0932, %1
  br i1 %exitcond1731.not, label %.invoke2930, label %bb.wj

bb.oo:                                            ; preds = %.invoke2932, %.invoke2930
  %i.cjp = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

._crit_edge935:                                   ; preds = %bb.wl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cjn) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35131)
  %i.cjq = udiv i64 %.sroa.01.1, 544
  %i.cjr = tail call i64 @llvm.umin.i64(i64 %i.cjq, i64 49) ; 8 uses
  %spec.store.select.i447 = add nuw nsw i64 %i.cjr, 1 ; 18 uses
  %i.cjs = icmp eq i64 %.sroa.01.1, 0
  br i1 %i.cjs, label %bb.op, label %bb.oq

bb.op:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17hc6759c00225004c5E.exit446.thread", %._crit_edge935
  %i.cjt = phi ptr [ inttoptr (i64 2 to ptr), %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17hc6759c00225004c5E.exit446.thread" ], [ %i.cjn, %._crit_edge935 ]
  %i.cju = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 1, ptr %i.cju, align 8, !alias.scope !35131, !noalias !35128
  br label %_ZN6brotli3enc14block_splitter15SplitByteVector17h458edd1a9d7c9482E.exit

bb.oq:                                            ; preds = %._crit_edge935
  %i.cjv = icmp ult i64 %.sroa.01.1, 128
  br i1 %i.cjv, label %bb.or, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i448

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i448: ; preds = %bb.oq
  %i.cjw = mul nuw nsw i64 %spec.store.select.i447, 2192 ; 3 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35133
  %i.cjx = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.cjw, i64 noundef range(i64 1, 9) 8) #38, !noalias !35133 ; 17 uses
  %i.cjy = icmp eq ptr %i.cjx, null
  br i1 %i.cjy, label %.invoke2932, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i448
  %.not92.i449 = icmp ult i64 %.sroa.01.1, 544
  br i1 %.not92.i449, label %.loopexit109.i454, label %.lr.ph.i.i.i.i450.preheader

.lr.ph.i.i.i.i450.preheader:                      ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i"
  %i.cjz = add nsw i64 %i.cjr, -1
  %xtraiter4722 = and i64 %i.cjr, 7               ; 3 uses
  %i.cka = icmp ult i64 %i.cjz, 7
  br i1 %i.cka, label %.lr.ph.i.i.i.i450.epil.preheader, label %.lr.ph.i.i.i.i450.preheader.new

.lr.ph.i.i.i.i450.preheader.new:                  ; preds = %.lr.ph.i.i.i.i450.preheader
  %unroll_iter4727 = and i64 %i.cjr, 56
  br label %.lr.ph.i.i.i.i450

.lr.ph.i.i.i.i450:                                ; preds = %.lr.ph.i.i.i.i450, %.lr.ph.i.i.i.i450.preheader.new
  %.sroa.0.08.i.i.i.i451 = phi ptr [ %i.cjx, %.lr.ph.i.i.i.i450.preheader.new ], [ %i.cki, %.lr.ph.i.i.i.i450 ] ; 17 uses
  %niter4728 = phi i64 [ 0, %.lr.ph.i.i.i.i450.preheader.new ], [ %niter4728.next.7, %.lr.ph.i.i.i.i450 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i.i451, i8 0, i64 2184, i1 false), !noalias !35141
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i451, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i, align 8, !noalias !35142
  %i.ckb = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i451, i64 2192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ckb, i8 0, i64 2184, i1 false), !noalias !35141
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i451, i64 4376
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.1, align 8, !noalias !35142
  %i.ckc = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i451, i64 4384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ckc, i8 0, i64 2184, i1 false), !noalias !35141
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i451, i64 6568
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.2, align 8, !noalias !35142
  %i.ckd = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i451, i64 6576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ckd, i8 0, i64 2184, i1 false), !noalias !35141
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i451, i64 8760
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.3, align 8, !noalias !35142
  %i.cke = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i451, i64 8768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.cke, i8 0, i64 2184, i1 false), !noalias !35141
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i451, i64 10952
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.4, align 8, !noalias !35142
  %i.ckf = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i451, i64 10960
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ckf, i8 0, i64 2184, i1 false), !noalias !35141
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i451, i64 13144
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.5, align 8, !noalias !35142
  %i.ckg = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i451, i64 13152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ckg, i8 0, i64 2184, i1 false), !noalias !35141
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i451, i64 15336
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.6, align 8, !noalias !35142
  %i.ckh = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i451, i64 15344
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ckh, i8 0, i64 2184, i1 false), !noalias !35141
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i451, i64 17528
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.7, align 8, !noalias !35142
  %i.cki = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i451, i64 17536 ; 3 uses
  %niter4728.next.7 = add nuw i64 %niter4728, 8   ; 2 uses
  %niter4728.ncmp.7 = icmp eq i64 %niter4728.next.7, %unroll_iter4727
  br i1 %niter4728.ncmp.7, label %.loopexit109.i454.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i450

bb.or:                                            ; preds = %bb.oq
  %.val110.i1003 = load ptr, ptr %9, align 8, !alias.scope !35131, !noalias !35128, !nonnull !27, !align !206, !noundef !27 ; 3 uses
  %i.ckj = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.val111.i1004 = load i64, ptr %i.ckj, align 8, !alias.scope !35131, !noalias !35128, !noundef !27 ; 5 uses
  %i.ckk = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  %i.ckl = load i64, ptr %i.ckk, align 8, !alias.scope !35131, !noalias !35128, !noundef !27 ; 7 uses
  %i.ckm = add i64 %i.ckl, 1                      ; 7 uses
  %i.ckn = icmp ult i64 %.val111.i1004, %i.ckm
  br i1 %i.ckn, label %bb.vy, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit229.i1005"

.thread.i466:                                     ; preds = %bb.oy, %.split32.us.i.invoke.i473, %.split29.us.i.invoke.i465
  %i.cko = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit.i"

.loopexit109.i454.loopexit.unr-lcssa:             ; preds = %.lr.ph.i.i.i.i450
  %lcmp.mod4724.not = icmp eq i64 %xtraiter4722, 0
  br i1 %lcmp.mod4724.not, label %.loopexit109.i454, label %.lr.ph.i.i.i.i450.epil.preheader

.lr.ph.i.i.i.i450.epil.preheader:                 ; preds = %.loopexit109.i454.loopexit.unr-lcssa, %.lr.ph.i.i.i.i450.preheader
  %.sroa.0.08.i.i.i.i451.epil.init = phi ptr [ %i.cjx, %.lr.ph.i.i.i.i450.preheader ], [ %i.cki, %.loopexit109.i454.loopexit.unr-lcssa ]
  %lcmp.mod4726 = icmp ne i64 %xtraiter4722, 0
  call void @llvm.assume(i1 %lcmp.mod4726)
  br label %.lr.ph.i.i.i.i450.epil

.lr.ph.i.i.i.i450.epil:                           ; preds = %.lr.ph.i.i.i.i450.epil, %.lr.ph.i.i.i.i450.epil.preheader
  %.sroa.0.08.i.i.i.i451.epil = phi ptr [ %i.ckp, %.lr.ph.i.i.i.i450.epil ], [ %.sroa.0.08.i.i.i.i451.epil.init, %.lr.ph.i.i.i.i450.epil.preheader ] ; 3 uses
  %epil.iter4723 = phi i64 [ %epil.iter4723.next, %.lr.ph.i.i.i.i450.epil ], [ 0, %.lr.ph.i.i.i.i450.epil.preheader ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i.i451.epil, i8 0, i64 2184, i1 false), !noalias !35141
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i451.epil, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.epil, align 8, !noalias !35142
  %i.ckp = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i451.epil, i64 2192 ; 2 uses
  %epil.iter4723.next = add i64 %epil.iter4723, 1 ; 2 uses
  %epil.iter4723.cmp.not = icmp eq i64 %epil.iter4723.next, %xtraiter4722
  br i1 %epil.iter4723.cmp.not, label %.loopexit109.i454, label %.lr.ph.i.i.i.i450.epil, !llvm.loop !35145

.loopexit109.i454:                                ; preds = %.loopexit109.i454.loopexit.unr-lcssa, %.lr.ph.i.i.i.i450.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i"
  %.sroa.0.0.lcssa15.i.i.i.i455 = phi ptr [ %i.cjx, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i" ], [ %i.cki, %.loopexit109.i454.loopexit.unr-lcssa ], [ %i.ckp, %.lr.ph.i.i.i.i450.epil ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.0.lcssa15.i.i.i.i455, i8 0, i64 2184, i1 false), !noalias !35141
  %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i.i455, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i, align 8, !noalias !35142
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35149)
  %i.ckq = getelementptr inbounds nuw i8, ptr %i.cjx, i64 %i.cjw
  %xtraiter4729 = and i64 %spec.store.select.i447, 7 ; 2 uses
  %lcmp.mod4730.not = icmp eq i64 %xtraiter4729, 0
  br i1 %lcmp.mod4730.not, label %.lr.ph.i.i.i456.prol.loopexit, label %.lr.ph.i.i.i456.prol

.lr.ph.i.i.i456.prol:                             ; preds = %.loopexit109.i454, %.lr.ph.i.i.i456.prol
  %.sroa.02.05.i.i.i457.prol = phi ptr [ %i.ckr, %.lr.ph.i.i.i456.prol ], [ %i.cjx, %.loopexit109.i454 ] ; 3 uses
  %prol.iter4731 = phi i64 [ %prol.iter4731.next, %.lr.ph.i.i.i456.prol ], [ 0, %.loopexit109.i454 ]
  %i.ckr = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i457.prol, i64 2192 ; 2 uses
  %i.cks = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i457.prol, i64 2184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %.sroa.02.05.i.i.i457.prol, i8 0, i64 2184, i1 false), !alias.scope !35151, !noalias !35154
  store float 3.402000e+38, ptr %i.cks, align 8, !alias.scope !35155, !noalias !35154
  %prol.iter4731.next = add i64 %prol.iter4731, 1 ; 2 uses
  %prol.iter4731.cmp.not = icmp eq i64 %prol.iter4731.next, %xtraiter4729
  br i1 %prol.iter4731.cmp.not, label %.lr.ph.i.i.i456.prol.loopexit, label %.lr.ph.i.i.i456.prol, !llvm.loop !35158

.lr.ph.i.i.i456.prol.loopexit:                    ; preds = %.lr.ph.i.i.i456.prol, %.loopexit109.i454
  %.sroa.02.05.i.i.i457.unr = phi ptr [ %i.cjx, %.loopexit109.i454 ], [ %i.ckr, %.lr.ph.i.i.i456.prol ]
  %i.ckt = icmp ult i64 %.sroa.01.1, 3808
  br i1 %i.ckt, label %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.preheader.split.i.i, label %.lr.ph.i.i.i456

.lr.ph.i.i.i456:                                  ; preds = %.lr.ph.i.i.i456.prol.loopexit, %.lr.ph.i.i.i456
  %.sroa.02.05.i.i.i457 = phi ptr [ %i.cli, %.lr.ph.i.i.i456 ], [ %.sroa.02.05.i.i.i457.unr, %.lr.ph.i.i.i456.prol.loopexit ] ; 17 uses
  %i.cku = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i457, i64 2192
  %i.ckv = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i457, i64 2184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %.sroa.02.05.i.i.i457, i8 0, i64 2184, i1 false), !alias.scope !35151, !noalias !35154
  store float 3.402000e+38, ptr %i.ckv, align 8, !alias.scope !35155, !noalias !35154
  %i.ckw = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i457, i64 4384
  %i.ckx = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i457, i64 4376
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %i.cku, i8 0, i64 2184, i1 false), !alias.scope !35151, !noalias !35154
  store float 3.402000e+38, ptr %i.ckx, align 8, !alias.scope !35155, !noalias !35154
  %i.cky = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i457, i64 6576
  %i.ckz = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i457, i64 6568
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %i.ckw, i8 0, i64 2184, i1 false), !alias.scope !35151, !noalias !35154
  store float 3.402000e+38, ptr %i.ckz, align 8, !alias.scope !35155, !noalias !35154
  %i.cla = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i457, i64 8768
  %i.clb = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i457, i64 8760
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %i.cky, i8 0, i64 2184, i1 false), !alias.scope !35151, !noalias !35154
  store float 3.402000e+38, ptr %i.clb, align 8, !alias.scope !35155, !noalias !35154
  %i.clc = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i457, i64 10960
  %i.cld = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i457, i64 10952
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %i.cla, i8 0, i64 2184, i1 false), !alias.scope !35151, !noalias !35154
  store float 3.402000e+38, ptr %i.cld, align 8, !alias.scope !35155, !noalias !35154
  %i.cle = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i457, i64 13152
  %i.clf = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i457, i64 13144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %i.clc, i8 0, i64 2184, i1 false), !alias.scope !35151, !noalias !35154
  store float 3.402000e+38, ptr %i.clf, align 8, !alias.scope !35155, !noalias !35154
  %i.clg = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i457, i64 15344
  %i.clh = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i457, i64 15336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %i.cle, i8 0, i64 2184, i1 false), !alias.scope !35151, !noalias !35154
  store float 3.402000e+38, ptr %i.clh, align 8, !alias.scope !35155, !noalias !35154
  %i.cli = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i457, i64 17536 ; 2 uses
  %i.clj = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i457, i64 17528
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %i.clg, i8 0, i64 2184, i1 false), !alias.scope !35151, !noalias !35154
  store float 3.402000e+38, ptr %i.clj, align 8, !alias.scope !35155, !noalias !35154
  %i.clk = icmp eq ptr %i.cli, %i.ckq
  br i1 %i.clk, label %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.preheader.split.i.i, label %.lr.ph.i.i.i456

_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.preheader.split.i.i: ; preds = %.lr.ph.i.i.i456, %.lr.ph.i.i.i456.prol.loopexit
  %i.cll = udiv i64 %.sroa.01.1, %spec.store.select.i447
  %i.clm = add i64 %.sroa.01.1, -41
  br label %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.preheader.split.split.i.i

_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.loopexit.i.i: ; preds = %bb.ov
  %exitcond.not.i.i476 = icmp eq i64 %.sroa.07.024.i.i459, %i.cjr
  br i1 %exitcond.not.i.i476, label %.lr.ph.i.i477, label %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.preheader.split.split.i.i

_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.preheader.split.split.i.i: ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.loopexit.i.i, %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.preheader.split.i.i
  %.sroa.0.025.i.i458 = phi i32 [ %.sroa.0.1.i.i462, %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.loopexit.i.i ], [ 7, %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.preheader.split.i.i ] ; 3 uses
  %.sroa.07.024.i.i459 = phi i64 [ %i.cln, %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.loopexit.i.i ], [ 0, %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.preheader.split.i.i ] ; 5 uses
  %i.cln = add nuw nsw i64 %.sroa.07.024.i.i459, 1
  %i.clo = mul i64 %.sroa.07.024.i.i459, %.sroa.01.1
  %i.clp = udiv i64 %i.clo, %spec.store.select.i447 ; 2 uses
  %i.clq = icmp eq i64 %.sroa.07.024.i.i459, 0
  br i1 %i.clq, label %bb.os, label %bb.ot

bb.os:                                            ; preds = %bb.ot, %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.preheader.split.split.i.i
  %.sroa.04.0.i.i461 = phi i64 [ %i.clp, %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.preheader.split.split.i.i ], [ %i.clx, %bb.ot ] ; 2 uses
  %.sroa.0.1.i.i462 = phi i32 [ %.sroa.0.025.i.i458, %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.preheader.split.split.i.i ], [ %spec.store.select.i.i460, %bb.ot ]
  %i.clr = add i64 %.sroa.04.0.i.i461, 40
  %.not.i.i463 = icmp ult i64 %i.clr, %.sroa.01.1
  %spec.select.i.i464 = select i1 %.not.i.i463, i64 %.sroa.04.0.i.i461, i64 %i.clm ; 4 uses
  %i.cls = icmp ugt i64 %spec.select.i.i464, %2
  br i1 %i.cls, label %.split29.us.i.invoke.i465, label %bb.ou, !prof !29

bb.ot:                                            ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.preheader.split.split.i.i
  %i.clt = icmp eq i32 %.sroa.0.025.i.i458, 0
  %i.clu = mul i32 %.sroa.0.025.i.i458, 16807
  %spec.store.select.i.i460 = select i1 %i.clt, i32 1, i32 %i.clu ; 2 uses
  %i.clv = zext i32 %spec.store.select.i.i460 to i64
  %i.clw = urem i64 %i.clv, %i.cll
  %i.clx = add i64 %i.clw, %i.clp
  br label %bb.os

bb.ou:                                            ; preds = %bb.os
  %i.cly = getelementptr inbounds nuw [2192 x i8], ptr %i.cjx, i64 %.sroa.07.024.i.i459 ; 3 uses
  %i.clz = sub nuw nsw i64 %2, %spec.select.i.i464 ; 2 uses
  %i.cma = getelementptr inbounds nuw [2 x i8], ptr %i.cjn, i64 %spec.select.i.i464 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35162)
  %i.cmb = getelementptr inbounds nuw i8, ptr %i.cly, i64 2176 ; 2 uses
  %i.cmc = load i64, ptr %i.cmb, align 8, !alias.scope !35164, !noalias !35167, !noundef !27
  %i.cmd = add i64 %i.cmc, 40
  store i64 %i.cmd, ptr %i.cmb, align 8, !alias.scope !35168, !noalias !35167
  %i.cme = icmp samesign ugt i64 %i.clz, 39
  br i1 %i.cme, label %.preheader.i.i.i470, label %.split29.us.i.invoke.i465, !prof !202

.split29.us.i.invoke.i465:                        ; preds = %bb.ou, %bb.os, %bb.ow, %_ZN6brotli3enc9histogram14HistogramClear17hf9145d293705796bE.exit.i.i
  %i.cmf = phi i64 [ 0, %bb.ow ], [ %i.cnl, %_ZN6brotli3enc9histogram14HistogramClear17hf9145d293705796bE.exit.i.i ], [ 0, %bb.ou ], [ %spec.select.i.i464, %bb.os ]
  %i.cmg = phi i64 [ 40, %bb.ow ], [ %2, %_ZN6brotli3enc9histogram14HistogramClear17hf9145d293705796bE.exit.i.i ], [ 40, %bb.ou ], [ %2, %bb.os ]
  %i.cmh = phi i64 [ %i.cnn, %bb.ow ], [ %2, %_ZN6brotli3enc9histogram14HistogramClear17hf9145d293705796bE.exit.i.i ], [ %i.clz, %bb.ou ], [ %2, %bb.os ]
  %i.cmi = phi ptr [ @1934, %bb.ow ], [ @1547, %_ZN6brotli3enc9histogram14HistogramClear17hf9145d293705796bE.exit.i.i ], [ @1934, %bb.ou ], [ @1573, %bb.os ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.cmf, i64 noundef %i.cmg, i64 noundef %i.cmh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cmi) #43
          to label %.split29.us.i.cont.i469 unwind label %.thread.i466, !noalias !35141

.split29.us.i.cont.i469:                          ; preds = %.split29.us.i.invoke.i465
  unreachable

.preheader.i.i.i470:                              ; preds = %bb.ou, %bb.ov
  %.sroa.02.0.idx7.i.i.i471 = phi i64 [ %.sroa.02.0.add.i.i.i475.1, %bb.ov ], [ 0, %bb.ou ] ; 3 uses
  %.sroa.02.0.ptr.i.i.i472 = getelementptr inbounds nuw i8, ptr %i.cma, i64 %.sroa.02.0.idx7.i.i.i471
  %i.cmj = load i16, ptr %.sroa.02.0.ptr.i.i.i472, align 2, !alias.scope !35171, !noalias !35174, !noundef !27 ; 2 uses
  %i.cmk = zext i16 %i.cmj to i64                 ; 2 uses
  %i.cml = icmp ult i16 %i.cmj, 544
  br i1 %i.cml, label %.preheader.i.i.i470.1, label %.split32.us.i.invoke.i473

.preheader.i.i.i470.1:                            ; preds = %.preheader.i.i.i470
  %i.cmm = getelementptr inbounds nuw [4 x i8], ptr %i.cly, i64 %i.cmk ; 2 uses
  %i.cmn = load i32, ptr %i.cmm, align 4, !alias.scope !35175, !noalias !35167, !noundef !27
  %i.cmo = add i32 %i.cmn, 1
  store i32 %i.cmo, ptr %i.cmm, align 4, !alias.scope !35175, !noalias !35167
  %i.cmp = getelementptr inbounds nuw i8, ptr %i.cma, i64 %.sroa.02.0.idx7.i.i.i471
  %.sroa.02.0.ptr.i.i.i472.1 = getelementptr inbounds nuw i8, ptr %i.cmp, i64 2
  %i.cmq = load i16, ptr %.sroa.02.0.ptr.i.i.i472.1, align 2, !alias.scope !35171, !noalias !35174, !noundef !27 ; 2 uses
  %i.cmr = zext i16 %i.cmq to i64                 ; 2 uses
  %i.cms = icmp ult i16 %i.cmq, 544
  br i1 %i.cms, label %bb.ov, label %.split32.us.i.invoke.i473

bb.ov:                                            ; preds = %.preheader.i.i.i470.1
  %.sroa.02.0.add.i.i.i475.1 = add nuw nsw i64 %.sroa.02.0.idx7.i.i.i471, 4 ; 2 uses
  %i.cmt = getelementptr inbounds nuw [4 x i8], ptr %i.cly, i64 %i.cmr ; 2 uses
  %i.cmu = load i32, ptr %i.cmt, align 4, !alias.scope !35175, !noalias !35167, !noundef !27
  %i.cmv = add i32 %i.cmu, 1
  store i32 %i.cmv, ptr %i.cmt, align 4, !alias.scope !35175, !noalias !35167
  %i.cmw = icmp eq i64 %.sroa.02.0.add.i.i.i475.1, 80
  br i1 %i.cmw, label %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.loopexit.i.i, label %.preheader.i.i.i470

.split32.us.i.invoke.i473:                        ; preds = %.preheader.i.i.i470, %.preheader.i.i.i470.1, %.preheader.i.i.i.i481, %.preheader.i.i.i.i481.1
  %i.cmx = phi i64 [ %i.cny, %.preheader.i.i.i.i481.1 ], [ %i.cnr, %.preheader.i.i.i.i481 ], [ %i.cmk, %.preheader.i.i.i470 ], [ %i.cmr, %.preheader.i.i.i470.1 ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.cmx, i64 noundef 544, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1933) #43
          to label %.split32.us.i.cont.i474 unwind label %.thread.i466, !noalias !35141

.split32.us.i.cont.i474:                          ; preds = %.split32.us.i.invoke.i473
  unreachable
end_hunk_8
begin_hunk_9_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
  tail call void @mi_free(ptr noundef nonnull %i.cpi) #38, !noalias !35141
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i521"

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i158.i494: ; preds = %bb.pd, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i152.i493
  %.sroa.10.0.i.i153.i495 = phi i64 [ %i.cps, %bb.pd ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i152.i493 ]
  %i.cpu = inttoptr i64 %.sroa.10.0.i.i153.i495 to ptr ; 8 uses
  %i.cpv = shl nuw nsw i64 %spec.store.select.i447, 1 ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35242
  %i.cpw = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.cpv, i64 noundef range(i64 1, -9223372036854775807) 2) #38, !noalias !35242 ; 4 uses
  %i.cpx = icmp eq ptr %i.cpw, null
  br i1 %i.cpx, label %bb.pf, label %.split.i496

bb.pf:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i158.i494
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 2, i64 %i.cpv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc161.i991 unwind label %.thread55.i990, !noalias !35141

.noexc161.i991:                                   ; preds = %bb.pf
  unreachable

.thread55.i990:                                   ; preds = %bb.pf
  %i.cpy = landingpad { ptr, i32 }
          cleanup
  br label %bb.vx

.split.i496:                                      ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i158.i494
  %i.cpz = icmp slt i32 %.72.val, 12
  %..i497 = select i1 %i.cpz, i64 3, i64 10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cpu) ]
  %i.cqa = add nuw nsw i64 %i.cjr, 2              ; 2 uses
  %.not126.i.i498 = icmp ugt i64 %.sroa.01.1, %2
  %i.cqb = getelementptr inbounds nuw i8, ptr %i.cjn, i64 %i.cmy
  %i.cqc = add nsw i64 %.sroa.01.1, -1            ; 4 uses
  %i.cqd = getelementptr inbounds nuw i8, ptr %i.coy, i64 %i.cqc
  %i.cqe = add nuw i64 %.sroa.01.1, 1
  %i.cqf = call i64 @llvm.umin.i64(i64 %.sroa.01.1, i64 %i.cqc) ; 2 uses
  %min.iters.check3897 = icmp ult i64 %i.cqf, 32
  %i.cqg = add nuw i64 %i.cqf, 1                  ; 2 uses
  %i.cqh = and i64 %i.cqg, 31                     ; 2 uses
  %i.cqi = icmp eq i64 %i.cqh, 0
  %i.cqj = select i1 %i.cqi, i64 32, i64 %i.cqh
  %n.vec3899 = sub i64 %i.cqg, %i.cqj             ; 3 uses
  %i.cqk = add i64 %n.vec3899, 1
  br label %bb.tf

_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h8c4688d43053fe9dE.exit.loopexit.i: ; preds = %_ZN6brotli3enc9histogram16HistogramAddItem17hec39d7e5b6a97acdE.exit.i.i
  %i.cql = icmp samesign ult i64 %.sroa.032.1442.i499, %..i497 ; 2 uses
  %i.cqm = zext i1 %i.cql to i64
  %.sroa.032.1.i646 = add nuw nsw i64 %.sroa.032.1442.i499, %i.cqm
  br i1 %i.cql, label %bb.tf, label %bb.pg

.body.i976:                                       ; preds = %bb.pj
  %lpad.thr_comm.split-lp.i977 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit220.i714"

bb.pg:                                            ; preds = %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h8c4688d43053fe9dE.exit.loopexit.i
  tail call void @mi_free(ptr noundef nonnull align 4 %i.cpe) #38, !noalias !35141
  tail call void @mi_free(ptr noundef nonnull align 4 %i.cpi) #38, !noalias !35141
  br i1 %i.cpp, label %bb.ph, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i163.i647"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i163.i647": ; preds = %bb.pg
  tail call void @mi_free(ptr noundef nonnull align 1 %i.cpu) #38, !noalias !35141
  br label %bb.ph

bb.ph:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i163.i647", %bb.pg
  tail call void @mi_free(ptr noundef nonnull align 2 %i.cpw) #38, !noalias !35141
  tail call void @mi_free(ptr noundef nonnull align 8 %i.cjx) #38, !noalias !35141
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35252)
  %i.cqn = shl i64 %.sroa.0.0.i.i635, 2           ; 6 uses
  %i.cqo = icmp ugt i64 %.sroa.0.0.i.i635, 4611686018427387903
  %i.cqp = icmp ugt i64 %i.cqn, 9223372036854775804
  %or.cond.i.i.i.i.i166.i648 = or i1 %i.cqo, %i.cqp
  br i1 %or.cond.i.i.i.i.i166.i648, label %bb.pj, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i167.i649, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i167.i649: ; preds = %bb.ph
  %i.cqq = icmp eq i64 %i.cqn, 0
  br i1 %i.cqq, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i410.thread.i.i979, label %bb.pi

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i410.thread.i.i979: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i167.i649
  %i.cqr = icmp samesign ult i64 %.sroa.0.0.i.i635, 2305843009213693952
  tail call void @llvm.assume(i1 %i.cqr)
  br label %bb.pm

bb.pi:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i167.i649
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35254
  %i.cqs = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.cqn, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !35254 ; 3 uses
  %i.cqt = icmp eq ptr %i.cqs, null
  br i1 %i.cqt, label %bb.pj, label %bb.pk

bb.pj:                                            ; preds = %bb.pi, %bb.ph
  %.sroa.4.0.ph.i.i.i173.i975 = phi i64 [ 4, %bb.pi ], [ 0, %bb.ph ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i173.i975, i64 %i.cqn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc174.i978 unwind label %.body.i976, !noalias !35141

.noexc174.i978:                                   ; preds = %bb.pj
  unreachable

bb.pk:                                            ; preds = %bb.pi
  %i.cqu = icmp samesign ult i64 %.sroa.0.0.i.i635, 2305843009213693952
  tail call void @llvm.assume(i1 %i.cqu)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35259
  %i.cqv = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.cqn, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !35259 ; 2 uses
  %i.cqw = icmp eq ptr %i.cqv, null
  br i1 %i.cqw, label %bb.pl, label %bb.pm

bb.pl:                                            ; preds = %bb.pk
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.cqn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc413.i.i974 unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i973", !noalias !35264

.noexc413.i.i974:                                 ; preds = %bb.pl
  unreachable

bb.pm:                                            ; preds = %bb.pk, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i410.thread.i.i979
  %i.cqx = phi ptr [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i410.thread.i.i979 ], [ %i.cqs, %bb.pk ] ; 11 uses
  %.sroa.10.0.i.i411.i.i650 = phi ptr [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i410.thread.i.i979 ], [ %i.cqv, %bb.pk ] ; 6 uses
  %i.cqy = shl i64 %.sroa.0.0.i.i635, 4
  %i.cqz = add i64 %i.cqy, 1008                   ; 3 uses
  %i.cra = lshr i64 %i.cqz, 6                     ; 17 uses
  %i.crb = mul i64 %i.cra, 2192                   ; 3 uses
  %or.cond.i.i.i.i.i.i.i651 = icmp ugt i64 %i.cqz, 269295533922767231
  br i1 %or.cond.i.i.i.i.i.i.i651, label %bb.po, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i652, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i652: ; preds = %bb.pm
  %i.crc = icmp eq i64 %i.crb, 0
  br i1 %i.crc, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i.i", label %bb.pn

bb.pn:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i652
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35265
  %i.crd = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.crb, i64 noundef range(i64 1, 9) 8) #38, !noalias !35265 ; 2 uses
  %i.cre = icmp eq ptr %i.crd, null
  br i1 %i.cre, label %bb.po, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i.i"

bb.po:                                            ; preds = %bb.pn, %bb.pm
  %.sroa.4.0.ph.i.i.i.i.i970 = phi i64 [ 8, %bb.pn ], [ 0, %bb.pm ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i970, i64 %i.crb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc415.i.i972 unwind label %.thread86.i.i971, !noalias !35264

.noexc415.i.i972:                                 ; preds = %bb.po
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i.i": ; preds = %bb.pn, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i652
  %.sroa.10.0.i.i.i.i.i653 = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i652 ], [ %i.crd, %bb.pn ] ; 8 uses
  %.sroa.4.0.i.i.i.i.i654 = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i652 ], [ %i.cra, %bb.pn ]
  %i.crf = icmp samesign ule i64 %i.cra, %.sroa.4.0.i.i.i.i.i654
  tail call void @llvm.assume(i1 %i.crf)
  %i.crg = icmp samesign ugt i64 %i.cqz, 127
  br i1 %i.crg, label %.lr.ph.i.i.i.i.i966.preheader, label %._crit_edge.i.i.i.i.i655

.lr.ph.i.i.i.i.i966.preheader:                    ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i.i"
  %i.crh = add nsw i64 %i.cra, -1                 ; 2 uses
  %i.cri = add nsw i64 %i.cra, -2
  %xtraiter4735 = and i64 %i.crh, 7               ; 3 uses
  %i.crj = icmp ult i64 %i.cri, 7
  br i1 %i.crj, label %.lr.ph.i.i.i.i.i966.epil.preheader, label %.lr.ph.i.i.i.i.i966.preheader.new

.lr.ph.i.i.i.i.i966.preheader.new:                ; preds = %.lr.ph.i.i.i.i.i966.preheader
  %unroll_iter4740 = and i64 %i.crh, -8
  br label %.lr.ph.i.i.i.i.i966

._crit_edge.i.i.i.i.i655:                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i.i"
  %.not.i.i.i.i.i656 = icmp eq i64 %i.cra, 0
  br i1 %.not.i.i.i.i.i656, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i659, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.i.i657

.lr.ph.i.i.i.i.i966:                              ; preds = %.lr.ph.i.i.i.i.i966, %.lr.ph.i.i.i.i.i966.preheader.new
  %.sroa.0.08.i.i.i.i.i967 = phi ptr [ %.sroa.10.0.i.i.i.i.i653, %.lr.ph.i.i.i.i.i966.preheader.new ], [ %i.crr, %.lr.ph.i.i.i.i.i966 ] ; 17 uses
  %niter4741 = phi i64 [ 0, %.lr.ph.i.i.i.i.i966.preheader.new ], [ %niter4741.next.7, %.lr.ph.i.i.i.i.i966 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i.i.i967, i8 0, i64 2184, i1 false), !noalias !35264
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i967, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i, align 8, !noalias !35273
  %i.crk = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i967, i64 2192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.crk, i8 0, i64 2184, i1 false), !noalias !35264
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i967, i64 4376
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.1, align 8, !noalias !35273
  %i.crl = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i967, i64 4384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.crl, i8 0, i64 2184, i1 false), !noalias !35264
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i967, i64 6568
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.2, align 8, !noalias !35273
  %i.crm = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i967, i64 6576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.crm, i8 0, i64 2184, i1 false), !noalias !35264
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i967, i64 8760
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.3, align 8, !noalias !35273
  %i.crn = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i967, i64 8768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.crn, i8 0, i64 2184, i1 false), !noalias !35264
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i967, i64 10952
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.4, align 8, !noalias !35273
  %i.cro = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i967, i64 10960
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.cro, i8 0, i64 2184, i1 false), !noalias !35264
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i967, i64 13144
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.5, align 8, !noalias !35273
  %i.crp = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i967, i64 13152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.crp, i8 0, i64 2184, i1 false), !noalias !35264
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i967, i64 15336
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.6, align 8, !noalias !35273
  %i.crq = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i967, i64 15344
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.crq, i8 0, i64 2184, i1 false), !noalias !35264
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i967, i64 17528
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.7, align 8, !noalias !35273
  %i.crr = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i967, i64 17536 ; 3 uses
  %niter4741.next.7 = add nuw i64 %niter4741, 8   ; 2 uses
  %niter4741.ncmp.7 = icmp eq i64 %niter4741.next.7, %unroll_iter4740
  br i1 %niter4741.ncmp.7, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.i.i657.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i966

.thread86.i.i971:                                 ; preds = %bb.po
  %i.crs = landingpad { ptr, i32 }
          cleanup
  br label %bb.td

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.i.i657.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i966
  %lcmp.mod4737.not = icmp eq i64 %xtraiter4735, 0
  br i1 %lcmp.mod4737.not, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.i.i657, label %.lr.ph.i.i.i.i.i966.epil.preheader

.lr.ph.i.i.i.i.i966.epil.preheader:               ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.i.i657.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i966.preheader
  %.sroa.0.08.i.i.i.i.i967.epil.init = phi ptr [ %.sroa.10.0.i.i.i.i.i653, %.lr.ph.i.i.i.i.i966.preheader ], [ %i.crr, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.i.i657.loopexit.unr-lcssa ]
  %lcmp.mod4739 = icmp ne i64 %xtraiter4735, 0
  call void @llvm.assume(i1 %lcmp.mod4739)
  br label %.lr.ph.i.i.i.i.i966.epil

.lr.ph.i.i.i.i.i966.epil:                         ; preds = %.lr.ph.i.i.i.i.i966.epil, %.lr.ph.i.i.i.i.i966.epil.preheader
  %.sroa.0.08.i.i.i.i.i967.epil = phi ptr [ %i.crt, %.lr.ph.i.i.i.i.i966.epil ], [ %.sroa.0.08.i.i.i.i.i967.epil.init, %.lr.ph.i.i.i.i.i966.epil.preheader ] ; 3 uses
  %epil.iter4736 = phi i64 [ %epil.iter4736.next, %.lr.ph.i.i.i.i.i966.epil ], [ 0, %.lr.ph.i.i.i.i.i966.epil.preheader ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i.i.i967.epil, i8 0, i64 2184, i1 false), !noalias !35264
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i967.epil, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.epil, align 8, !noalias !35273
  %i.crt = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i967.epil, i64 2192 ; 2 uses
  %epil.iter4736.next = add i64 %epil.iter4736, 1 ; 2 uses
  %epil.iter4736.cmp.not = icmp eq i64 %epil.iter4736.next, %xtraiter4735
  br i1 %epil.iter4736.cmp.not, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.i.i657, label %.lr.ph.i.i.i.i.i966.epil, !llvm.loop !35276

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.i.i657: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.i.i657.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i966.epil, %._crit_edge.i.i.i.i.i655
  %.sroa.0.0.lcssa15.i.i.i.i.i658 = phi ptr [ %.sroa.10.0.i.i.i.i.i653, %._crit_edge.i.i.i.i.i655 ], [ %i.crr, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.i.i657.loopexit.unr-lcssa ], [ %i.crt, %.lr.ph.i.i.i.i.i966.epil ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.0.lcssa15.i.i.i.i.i658, i8 0, i64 2184, i1 false), !noalias !35264
  %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i.i.i658, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i.i, align 8, !noalias !35273
  %i.cru = shl nuw nsw i64 %i.cra, 2              ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35277
  %i.crv = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.cru, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !35277 ; 2 uses
  %i.crw = icmp eq ptr %i.crv, null
  br i1 %i.crw, label %bb.pq, label %bb.pp

bb.pp:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.i.i657
  %i.crx = ptrtoint ptr %i.crv to i64
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i659

bb.pq:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.i.i657
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.cru, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc420.i.i965 unwind label %.thread93.i.i964, !noalias !35264

.noexc420.i.i965:                                 ; preds = %bb.pq
  unreachable

bb.pr:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i423.i.i706", %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit446.i.i"
  %i.cry = icmp eq i64 %.sroa.14.1.i.i703, 0
  br i1 %i.cry, label %bb.td, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i168.i707"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i168.i707": ; preds = %.thread93.i.i964, %bb.pr
  %.pn230.pn.pn.pn.pn100.i.i708 = phi { ptr, i32 } [ %i.crz, %.thread93.i.i964 ], [ %.pn230.pn.pn.pn.i.i705, %bb.pr ]
  %.sroa.016.099.i.i709 = phi ptr [ %.sroa.10.0.i.i.i.i.i653, %.thread93.i.i964 ], [ %.sroa.016.1.i.i704, %bb.pr ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.099.i.i709) ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.016.099.i.i709) #38, !noalias !35264
  br label %bb.td

.thread93.i.i964:                                 ; preds = %bb.pq
  %i.crz = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i168.i707"

"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit446.i.i": ; preds = %bb.qz, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i700", %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i692", %bb.ps
  %.sroa.12.0.i.i701 = phi i64 [ %i.cra, %bb.ps ], [ %.sroa.12.1.i.i695, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i692" ], [ %.sroa.12.1.i.i695, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i700" ], [ %.sroa.12.3151.i.i804, %bb.qz ]
  %.sroa.026.0.i.i702 = phi ptr [ %i.csc, %bb.ps ], [ %.sroa.026.1.i.i696, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i692" ], [ %.sroa.026.1.i.i696, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i700" ], [ %.sroa.026.3152.i.i803, %bb.qz ] ; 2 uses
  %.sroa.14.1.i.i703 = phi i64 [ %i.cra, %bb.ps ], [ %.sroa.14.2.i.i697, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i692" ], [ %.sroa.14.2.i.i697, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i700" ], [ %.sroa.14.4153.i.i802, %bb.qz ]
  %.sroa.016.1.i.i704 = phi ptr [ %.sroa.10.0.i.i.i.i.i653, %bb.ps ], [ %.sroa.016.2.i.i698, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i692" ], [ %.sroa.016.2.i.i698, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i700" ], [ %.sroa.016.4154.i.i801, %bb.qz ]
  %.pn230.pn.pn.pn.i.i705 = phi { ptr, i32 } [ %i.csb, %bb.ps ], [ %.pn230.pn.pn.i.i699, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i692" ], [ %.pn230.pn.pn.i.i699, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i700" ], [ %.pn230155.i.i800, %bb.qz ] ; 2 uses
  %i.csa = icmp eq i64 %.sroa.12.0.i.i701, 0
  br i1 %i.csa, label %bb.pr, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i423.i.i706"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i423.i.i706": ; preds = %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit446.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.0.i.i702) ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.026.0.i.i702) #38, !noalias !35264
  br label %bb.pr

bb.ps:                                            ; preds = %bb.pu
  %i.csb = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit446.i.i"

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i659: ; preds = %bb.pp, %._crit_edge.i.i.i.i.i655
  %.sroa.10.0.i.i418.i.i660 = phi i64 [ %i.crx, %bb.pp ], [ 4, %._crit_edge.i.i.i.i.i655 ]
  %i.csc = inttoptr i64 %.sroa.10.0.i.i418.i.i660 to ptr ; 4 uses
  %.sroa.0.0.i422.i.i661 = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i.i635, i64 64) ; 17 uses
  %i.csd = mul nuw nsw i64 %.sroa.0.0.i422.i.i661, 2192 ; 2 uses
  %i.cse = icmp eq i64 %.sroa.0.0.i.i635, 0
  br i1 %i.cse, label %._crit_edge.i.i.i429.thread.i.i669, label %bb.pt

bb.pt:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i659
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35282
  %i.csf = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.csd, i64 noundef range(i64 1, 9) 8) #38, !noalias !35282 ; 5 uses
  %i.csg = icmp eq ptr %i.csf, null
  br i1 %i.csg, label %bb.pu, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i426.i.i"

bb.pu:                                            ; preds = %bb.pt
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.csd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc440.i.i963 unwind label %bb.ps, !noalias !35264

.noexc440.i.i963:                                 ; preds = %bb.pu
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i426.i.i": ; preds = %bb.pt
  %.not1174.i.i662 = icmp eq i64 %.sroa.0.0.i.i635, 1
  br i1 %.not1174.i.i662, label %._crit_edge.thread.i.i.i431.i.i667, label %.lr.ph.i.i.i434.i.i663.preheader

.lr.ph.i.i.i434.i.i663.preheader:                 ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i426.i.i"
  %i.csh = add nsw i64 %.sroa.0.0.i422.i.i661, -1 ; 2 uses
  %i.csi = add nsw i64 %.sroa.0.0.i422.i.i661, -2
  %xtraiter4742 = and i64 %i.csh, 7               ; 3 uses
  %i.csj = icmp ult i64 %i.csi, 7
  br i1 %i.csj, label %.lr.ph.i.i.i434.i.i663.epil.preheader, label %.lr.ph.i.i.i434.i.i663.preheader.new

.lr.ph.i.i.i434.i.i663.preheader.new:             ; preds = %.lr.ph.i.i.i434.i.i663.preheader
  %unroll_iter4747 = and i64 %i.csh, -8
  br label %.lr.ph.i.i.i434.i.i663

._crit_edge.thread.i.i.i431.i.i667.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i434.i.i663
  %lcmp.mod4744.not = icmp eq i64 %xtraiter4742, 0
  br i1 %lcmp.mod4744.not, label %._crit_edge.thread.i.i.i431.i.i667, label %.lr.ph.i.i.i434.i.i663.epil.preheader

.lr.ph.i.i.i434.i.i663.epil.preheader:            ; preds = %._crit_edge.thread.i.i.i431.i.i667.loopexit.unr-lcssa, %.lr.ph.i.i.i434.i.i663.preheader
  %.sroa.0.08.i.i.i435.i.i664.epil.init = phi ptr [ %i.csf, %.lr.ph.i.i.i434.i.i663.preheader ], [ %i.css, %._crit_edge.thread.i.i.i431.i.i667.loopexit.unr-lcssa ]
  %lcmp.mod4746 = icmp ne i64 %xtraiter4742, 0
  call void @llvm.assume(i1 %lcmp.mod4746)
  br label %.lr.ph.i.i.i434.i.i663.epil

.lr.ph.i.i.i434.i.i663.epil:                      ; preds = %.lr.ph.i.i.i434.i.i663.epil, %.lr.ph.i.i.i434.i.i663.epil.preheader
  %.sroa.0.08.i.i.i435.i.i664.epil = phi ptr [ %i.csk, %.lr.ph.i.i.i434.i.i663.epil ], [ %.sroa.0.08.i.i.i435.i.i664.epil.init, %.lr.ph.i.i.i434.i.i663.epil.preheader ] ; 3 uses
  %epil.iter4743 = phi i64 [ %epil.iter4743.next, %.lr.ph.i.i.i434.i.i663.epil ], [ 0, %.lr.ph.i.i.i434.i.i663.epil.preheader ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i435.i.i664.epil, i8 0, i64 2184, i1 false), !noalias !35264
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i664.epil, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.epil, align 8, !noalias !35290
  %i.csk = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i664.epil, i64 2192 ; 2 uses
  %epil.iter4743.next = add i64 %epil.iter4743, 1 ; 2 uses
  %epil.iter4743.cmp.not = icmp eq i64 %epil.iter4743.next, %xtraiter4742
  br i1 %epil.iter4743.cmp.not, label %._crit_edge.thread.i.i.i431.i.i667, label %.lr.ph.i.i.i434.i.i663.epil, !llvm.loop !35293

._crit_edge.thread.i.i.i431.i.i667:               ; preds = %._crit_edge.thread.i.i.i431.i.i667.loopexit.unr-lcssa, %.lr.ph.i.i.i434.i.i663.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i426.i.i"
  %.sroa.0.0.lcssa15.i.i.i432.i.i668 = phi ptr [ %i.csf, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i426.i.i" ], [ %i.css, %._crit_edge.thread.i.i.i431.i.i667.loopexit.unr-lcssa ], [ %i.csk, %.lr.ph.i.i.i434.i.i663.epil ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.0.lcssa15.i.i.i432.i.i668, i8 0, i64 2184, i1 false), !noalias !35264
  %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i433.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i432.i.i668, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i433.i.i, align 8, !noalias !35290
  br label %._crit_edge.i.i.i429.thread.i.i669

.lr.ph.i.i.i434.i.i663:                           ; preds = %.lr.ph.i.i.i434.i.i663, %.lr.ph.i.i.i434.i.i663.preheader.new
  %.sroa.0.08.i.i.i435.i.i664 = phi ptr [ %i.csf, %.lr.ph.i.i.i434.i.i663.preheader.new ], [ %i.css, %.lr.ph.i.i.i434.i.i663 ] ; 17 uses
  %niter4748 = phi i64 [ 0, %.lr.ph.i.i.i434.i.i663.preheader.new ], [ %niter4748.next.7, %.lr.ph.i.i.i434.i.i663 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i435.i.i664, i8 0, i64 2184, i1 false), !noalias !35264
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i664, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i, align 8, !noalias !35290
  %i.csl = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i664, i64 2192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.csl, i8 0, i64 2184, i1 false), !noalias !35264
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i664, i64 4376
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.1, align 8, !noalias !35290
  %i.csm = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i664, i64 4384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.csm, i8 0, i64 2184, i1 false), !noalias !35264
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i664, i64 6568
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.2, align 8, !noalias !35290
  %i.csn = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i664, i64 6576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.csn, i8 0, i64 2184, i1 false), !noalias !35264
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i664, i64 8760
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.3, align 8, !noalias !35290
  %i.cso = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i664, i64 8768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.cso, i8 0, i64 2184, i1 false), !noalias !35264
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i664, i64 10952
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.4, align 8, !noalias !35290
  %i.csp = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i664, i64 10960
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.csp, i8 0, i64 2184, i1 false), !noalias !35264
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i664, i64 13144
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.5, align 8, !noalias !35290
  %i.csq = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i664, i64 13152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.csq, i8 0, i64 2184, i1 false), !noalias !35264
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i664, i64 15336
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.6, align 8, !noalias !35290
  %i.csr = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i664, i64 15344
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.csr, i8 0, i64 2184, i1 false), !noalias !35264
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i664, i64 17528
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.7, align 8, !noalias !35290
  %i.css = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i664, i64 17536 ; 3 uses
  %niter4748.next.7 = add nuw i64 %niter4748, 8   ; 2 uses
  %niter4748.ncmp.7 = icmp eq i64 %niter4748.next.7, %unroll_iter4747
  br i1 %niter4748.ncmp.7, label %._crit_edge.thread.i.i.i431.i.i667.loopexit.unr-lcssa, label %.lr.ph.i.i.i434.i.i663

._crit_edge.i.i.i429.thread.i.i669:               ; preds = %._crit_edge.thread.i.i.i431.i.i667, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i659
  %.sroa.10.0.i.i.i427933.i.i670 = phi ptr [ %i.csf, %._crit_edge.thread.i.i.i431.i.i667 ], [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i659 ] ; 15 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35294
  %i.cst = tail call noundef ptr @mi_malloc_aligned(i64 noundef 32784, i64 noundef range(i64 1, 9) 4) #38, !noalias !35294 ; 16 uses
  %i.csu = icmp eq ptr %i.cst, null
  br i1 %i.csu, label %bb.pv, label %bb.px

bb.pv:                                            ; preds = %._crit_edge.i.i.i429.thread.i.i669
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 32784, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc444.i.i962 unwind label %bb.pw, !noalias !35264

.noexc444.i.i962:                                 ; preds = %bb.pv
  unreachable

"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i692": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i683", %bb.pw
  %.sroa.1335.0.i.i693 = phi i64 [ %.sroa.0.0.i422.i.i661, %bb.pw ], [ %.sroa.1335.1123199.i.i686, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i683" ]
  %.sroa.034.0.i.i694 = phi ptr [ %.sroa.10.0.i.i.i427933.i.i670, %bb.pw ], [ %.sroa.034.1124197.i.i687, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i683" ] ; 2 uses
  %.sroa.12.1.i.i695 = phi i64 [ %i.cra, %bb.pw ], [ %.sroa.12.3125195.i.i688, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i683" ] ; 2 uses
  %.sroa.026.1.i.i696 = phi ptr [ %i.csc, %bb.pw ], [ %.sroa.026.3126193.i.i689, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i683" ] ; 2 uses
  %.sroa.14.2.i.i697 = phi i64 [ %i.cra, %bb.pw ], [ %.sroa.14.4127191.i.i690, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i683" ] ; 2 uses
  %.sroa.016.2.i.i698 = phi ptr [ %.sroa.10.0.i.i.i.i.i653, %bb.pw ], [ %.sroa.016.4128189.i.i691, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i683" ] ; 2 uses
  %.pn230.pn.pn.i.i699 = phi { ptr, i32 } [ %i.csw, %bb.pw ], [ %.pn230.pn202.i.i684, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i683" ] ; 2 uses
  %i.csv = icmp eq i64 %.sroa.1335.0.i.i693, 0
  br i1 %i.csv, label %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit446.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i700"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i700": ; preds = %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i692"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.034.0.i.i694) ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.034.0.i.i694) #38, !noalias !35264
  br label %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit446.i.i"

bb.pw:                                            ; preds = %bb.pv
  %i.csw = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i692"

bb.px:                                            ; preds = %._crit_edge.i.i.i429.thread.i.i669
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32784) %i.cst, i8 0, i64 32784, i1 false), !noalias !35264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !35264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.m, i8 0, i64 256, i1 false), !noalias !35264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !35264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.l, i8 0, i64 256, i1 false), !noalias !35264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !35264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.k, i8 0, i64 256, i1 false), !noalias !35264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !35264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.j, i8 0, i64 256, i1 false), !noalias !35264
  br label %bb.sy

.split.i.i719:                                    ; preds = %bb.tb, %._crit_edge582.i.i781
  %indvars.iv.i.i720 = phi i64 [ %indvars.iv.next.i.i782, %._crit_edge582.i.i781 ], [ %.sroa.0.0.i.i635, %bb.tb ] ; 2 uses
  %.sroa.0.0593.i.i721 = phi i64 [ %.sroa.0.1.lcssa.i.i777, %._crit_edge582.i.i781 ], [ 0, %bb.tb ] ; 4 uses
  %.sroa.012.0592.i.i722 = phi i64 [ %.sroa.012.1.i.i758, %._crit_edge582.i.i781 ], [ %i.cra, %bb.tb ] ; 7 uses
  %.sroa.018.0591.i.i723 = phi i64 [ %.sroa.018.1.lcssa.i.i776, %._crit_edge582.i.i781 ], [ 0, %bb.tb ] ; 4 uses
  %.sroa.023.0590.i.i724 = phi i64 [ %.sroa.023.1.i.i762, %._crit_edge582.i.i781 ], [ %i.cra, %bb.tb ] ; 7 uses
  %.sroa.029.0589.i.i725 = phi i64 [ %i.dee, %._crit_edge582.i.i781 ], [ 0, %bb.tb ] ; 2 uses
  %.sroa.043.0588.i.i726 = phi i64 [ %.sroa.043.3.lcssa.i.i753, %._crit_edge582.i.i781 ], [ 0, %bb.tb ] ; 2 uses
  %.sroa.047.1587.i.i727 = phi i64 [ %i.def, %._crit_edge582.i.i781 ], [ 0, %bb.tb ] ; 5 uses
  %.sroa.016.3586.i.i728 = phi ptr [ %.sroa.016.7.i.i757, %._crit_edge582.i.i781 ], [ %.sroa.10.0.i.i.i.i.i653, %bb.tb ] ; 9 uses
  %.sroa.14.3585.i.i729 = phi i64 [ %.sroa.14.7.i.i756, %._crit_edge582.i.i781 ], [ %i.cra, %bb.tb ] ; 9 uses
  %.sroa.026.2584.i.i730 = phi ptr [ %.sroa.026.5.i.i761, %._crit_edge582.i.i781 ], [ %i.csc, %bb.tb ] ; 11 uses
  %.sroa.12.2583.i.i731 = phi i64 [ %.sroa.12.5.i.i760, %._crit_edge582.i.i781 ], [ %i.cra, %bb.tb ] ; 11 uses
  %i.csx = tail call i64 @llvm.umax.i64(i64 %indvars.iv.i.i720, i64 1)
  %umax856.i.i732 = tail call i64 @llvm.umin.i64(i64 %i.csx, i64 64)
  %i.csy = sub nuw i64 %.sroa.0.0.i.i635, %.sroa.047.1587.i.i727
  %.sroa.0.0.i447.i.i733 = tail call noundef i64 @llvm.umin.i64(i64 %i.csy, i64 64) ; 3 uses
  %.not928.i.i734 = icmp eq i64 %.sroa.0.0.i.i635, %.sroa.047.1587.i.i727 ; 2 uses
  br i1 %.not928.i.i734, label %._crit_edge572.i.i752, label %.lr.ph571.i.i735

.thread163.loopexit.i.i749:                       ; preds = %._crit_edge.i.i747
  %lpad.loopexit255.i.i750 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i683"

.thread163.loopexit.split-lp.loopexit.i.i754:     ; preds = %._crit_edge572.i.i752
  %lpad.loopexit258.i.i755 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i683"

.thread163.loopexit.split-lp.loopexit.split-lp.i.i674: ; preds = %.invoke3981, %.invoke3979, %.invoke.i.i673, %bb.sg, %bb.ry, %bb.qf, %bb.qb
  %.sroa.044.1.ph.ph.ph.i.i675 = phi ptr [ %i.cst, %bb.qb ], [ %.sroa.044.2.i.i785, %bb.qf ], [ %i.cst, %.invoke.i.i673 ], [ %i.cst, %.invoke3979 ], [ %i.cst, %bb.ry ], [ %i.cst, %.invoke3981 ], [ %i.cst, %bb.sg ]
  %.sroa.1335.2.ph.ph.ph.i.i676 = phi i64 [ 0, %bb.qb ], [ 0, %bb.qf ], [ %.sroa.0.0.i422.i.i661, %.invoke.i.i673 ], [ %.sroa.0.0.i422.i.i661, %.invoke3979 ], [ %.sroa.0.0.i422.i.i661, %bb.ry ], [ %.sroa.0.0.i422.i.i661, %.invoke3981 ], [ %.sroa.0.0.i422.i.i661, %bb.sg ]
  %.sroa.034.2.ph.ph.ph.i.i677 = phi ptr [ inttoptr (i64 8 to ptr), %bb.qb ], [ inttoptr (i64 8 to ptr), %bb.qf ], [ %.sroa.10.0.i.i.i427933.i.i670, %.invoke.i.i673 ], [ %.sroa.10.0.i.i.i427933.i.i670, %.invoke3979 ], [ %.sroa.10.0.i.i.i427933.i.i670, %bb.ry ], [ %.sroa.10.0.i.i.i427933.i.i670, %.invoke3981 ], [ %.sroa.10.0.i.i.i427933.i.i670, %bb.sg ]
  %.sroa.12.4.ph.ph.ph.i.i678 = phi i64 [ %.sroa.12.5.i.i760, %bb.qb ], [ %.sroa.12.5.i.i760, %bb.qf ], [ %i.cra, %.invoke.i.i673 ], [ %.sroa.12.2583.i.i731, %.invoke3979 ], [ %.sroa.12.2583.i.i731, %bb.ry ], [ %.sroa.12.5.i.i760, %.invoke3981 ], [ %.sroa.12.2583.i.i731, %bb.sg ]
  %.sroa.026.4.ph.ph.ph.i.i679 = phi ptr [ %.sroa.026.5.i.i761, %bb.qb ], [ %.sroa.026.5.i.i761, %bb.qf ], [ %i.csc, %.invoke.i.i673 ], [ %.sroa.026.2584.i.i730, %.invoke3979 ], [ %.sroa.026.2584.i.i730, %bb.ry ], [ %.sroa.026.5.i.i761, %.invoke3981 ], [ %.sroa.026.2584.i.i730, %bb.sg ]
  %.sroa.14.5.ph.ph.ph.i.i680 = phi i64 [ %.sroa.14.7.i.i756, %bb.qb ], [ %.sroa.14.7.i.i756, %bb.qf ], [ %i.cra, %.invoke.i.i673 ], [ %.sroa.14.3585.i.i729, %.invoke3979 ], [ %.sroa.14.3585.i.i729, %bb.ry ], [ %.sroa.14.7.i.i756, %.invoke3981 ], [ %.sroa.14.7.i.i756, %bb.sg ]
  %.sroa.016.5.ph.ph.ph.i.i681 = phi ptr [ %.sroa.016.7.i.i757, %bb.qb ], [ %.sroa.016.7.i.i757, %bb.qf ], [ %.sroa.10.0.i.i.i.i.i653, %.invoke.i.i673 ], [ %.sroa.016.3586.i.i728, %.invoke3979 ], [ %.sroa.016.3586.i.i728, %bb.ry ], [ %.sroa.016.7.i.i757, %.invoke3981 ], [ %.sroa.016.7.i.i757, %bb.sg ]
  %lpad.loopexit.split-lp259.i.i682 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i683"

bb.py:                                            ; preds = %bb.qk, %._crit_edge598.i.i793
  %.sroa.11.1.ph159.i.i794 = phi i1 [ true, %bb.qk ], [ false, %._crit_edge598.i.i793 ]
  %.sroa.044.1.ph160.i.i795 = phi ptr [ inttoptr (i64 4 to ptr), %bb.qk ], [ %.sroa.044.2.i.i785, %._crit_edge598.i.i793 ]
  %.sroa.12.4.ph161.i.i796 = phi i64 [ 0, %bb.qk ], [ %.sroa.12.5.i.i760, %._crit_edge598.i.i793 ]
  %.sroa.026.4.ph162.i.i797 = phi ptr [ inttoptr (i64 4 to ptr), %bb.qk ], [ %.sroa.026.5.i.i761, %._crit_edge598.i.i793 ]
  %lpad.thr_comm.split-lp.i.i798 = landingpad { ptr, i32 }
          cleanup
  br label %.thread130.i.i799

bb.pz:                                            ; preds = %._crit_edge582.i.i781
  tail call void @mi_free(ptr noundef nonnull align 8 %.sroa.10.0.i.i.i427933.i.i670) #38, !noalias !35264
  %i.csz = shl i64 %i.dee, 6
  %i.cta = lshr i64 %i.dee, 1
  %i.ctb = mul i64 %i.cta, %i.dee
  %.sroa.0.0.i448.i.i783 = tail call noundef i64 @llvm.umin.i64(i64 %i.ctb, i64 %i.csz) ; 5 uses
  %i.ctc = add nuw i64 %.sroa.0.0.i448.i.i783, 1  ; 2 uses
  %i.ctd = icmp ugt i64 %.sroa.0.0.i448.i.i783, 2048
  br i1 %i.ctd, label %bb.qa, label %bb.qc

bb.qa:                                            ; preds = %bb.pz
  %i.cte = shl i64 %i.ctc, 4                      ; 5 uses
  %i.ctf = icmp ugt i64 %.sroa.0.0.i448.i.i783, 1152921504606846974
  %i.ctg = icmp ugt i64 %i.cte, 9223372036854775804
  %or.cond.i.i.i.i.i449.i.i926 = or i1 %i.ctf, %i.ctg
  br i1 %or.cond.i.i.i.i.i449.i.i926, label %bb.qb, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i927, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i927: ; preds = %bb.qa
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35302
  %i.cth = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.cte, i64 noundef range(i64 1, 9) 4) #38, !noalias !35302 ; 5 uses
  %i.cti = icmp eq ptr %i.cth, null
  br i1 %i.cti, label %bb.qb, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i928"

bb.qb:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i927, %bb.qa
  %.sroa.4.0.ph.i.i.i455.i.i933 = phi i64 [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i927 ], [ 0, %bb.qa ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i455.i.i933, i64 %i.cte, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc456.i.i934 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i674, !noalias !35264

.noexc456.i.i934:                                 ; preds = %bb.qb
  unreachable

bb.qc:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i928", %bb.pz
  %.sroa.11.2.i.i784 = phi i64 [ %i.ctc, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i928" ], [ 2049, %bb.pz ]
  %.sroa.044.2.i.i785 = phi ptr [ %i.cth, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i928" ], [ %i.cst, %bb.pz ] ; 4 uses
  %i.ctj = shl i64 %i.dee, 2                      ; 9 uses
  %i.ctk = icmp ugt i64 %i.dee, 4611686018427387903
  %i.ctl = icmp ugt i64 %i.ctj, 9223372036854775804
  %or.cond.i.i.i.i458.i.i786 = or i1 %i.ctk, %i.ctl
  br i1 %or.cond.i.i.i.i458.i.i786, label %bb.qf, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i787, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i787: ; preds = %bb.qc
  %i.ctm = icmp eq i64 %i.ctj, 0                  ; 2 uses
  br i1 %i.ctm, label %bb.qg, label %bb.qd

bb.qd:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i787
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35310
  %i.ctn = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.ctj, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !35310 ; 2 uses
  %i.cto = icmp eq ptr %i.ctn, null
  br i1 %i.cto, label %bb.qf, label %bb.qe

bb.qe:                                            ; preds = %bb.qd
  %i.ctp = ptrtoint ptr %i.ctn to i64
  br label %bb.qg

bb.qf:                                            ; preds = %bb.qd, %bb.qc
  %.sroa.4.0.ph.i.i461.i.i924 = phi i64 [ 4, %bb.qd ], [ 0, %bb.qc ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i461.i.i924, i64 %i.ctj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc462.i.i925 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i674, !noalias !35264

.noexc462.i.i925:                                 ; preds = %bb.qf
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i928": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i927
  %i.ctq = add nsw i64 %i.cte, -16                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cth, i8 0, i64 %i.ctq, i1 false), !noalias !35315
  %i.ctr = getelementptr i8, ptr %i.cth, i64 %i.cte ; 2 uses
  %scevgep11.i451.i.i929 = getelementptr i8, ptr %i.cth, i64 %i.ctq
  store i32 0, ptr %scevgep11.i451.i.i929, align 4, !noalias !35315
  %.sroa.55.0..sroa_idx.i452.i.i930 = getelementptr i8, ptr %i.ctr, i64 -12
  store i32 0, ptr %.sroa.55.0..sroa_idx.i452.i.i930, align 4, !noalias !35315
  %.sroa.67.0..sroa_idx.i453.i.i931 = getelementptr i8, ptr %i.ctr, i64 -8
  store <2 x float> zeroinitializer, ptr %.sroa.67.0..sroa_idx.i453.i.i931, align 4, !noalias !35315
  %i.cts = icmp samesign ult i64 %.sroa.0.0.i448.i.i783, 576460752303423487
  tail call void @llvm.assume(i1 %i.cts)
  tail call void @mi_free(ptr noundef nonnull align 4 %i.cst) #38, !noalias !35264
  br label %bb.qc

bb.qg:                                            ; preds = %bb.qe, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i787
  %.sroa.10.0.i.i460.i.i788 = phi i64 [ %i.ctp, %bb.qe ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i787 ]
  %i.ctt = inttoptr i64 %.sroa.10.0.i.i460.i.i788 to ptr ; 13 uses
  %i.ctu = icmp samesign ult i64 %i.dee, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ctu)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ctt) ]
  %i.ctv = getelementptr inbounds nuw i8, ptr %i.ctt, i64 %i.ctj
  %i.ctw = icmp eq i64 %i.dee, 0                  ; 3 uses
  br i1 %i.ctw, label %._crit_edge598.i.i793, label %.lr.ph597.i.i789.preheader

.lr.ph597.i.i789.preheader:                       ; preds = %bb.qg
  %i.ctx = add nsw i64 %i.ctj, -4                 ; 2 uses
  %i.cty = lshr exact i64 %i.ctx, 2
  %i.ctz = add nuw nsw i64 %i.cty, 1              ; 2 uses
  %min.iters.check3929 = icmp ult i64 %i.ctx, 28
  br i1 %min.iters.check3929, label %.lr.ph597.i.i789.preheader4009, label %vector.ph3930

vector.ph3930:                                    ; preds = %.lr.ph597.i.i789.preheader
  %n.vec3931 = and i64 %i.ctz, 9223372036854775800 ; 4 uses
  %i.cua = trunc i64 %n.vec3931 to i32
  %i.cub = shl i64 %n.vec3931, 2
  %i.cuc = getelementptr i8, ptr %i.ctt, i64 %i.cub
end_hunk_9
begin_hunk_10_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
  %i.day = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.dar ; 2 uses
  %i.daz = load i32, ptr %i.day, align 4, !noalias !35264, !noundef !27
  %i.dba = getelementptr inbounds nuw [4 x i8], ptr %i.czz, i64 %i.dar
  %i.dbb = load i32, ptr %i.dba, align 4, !noalias !35264, !noundef !27
  %i.dbc = add i32 %i.dbb, %i.daz
  store i32 %i.dbc, ptr %i.day, align 4, !noalias !35264
  %i.dbd = or disjoint i64 %.sroa.01.0.i263609.i.i859, 3 ; 2 uses
  %i.dbe = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.dax ; 2 uses
  %i.dbf = load i32, ptr %i.dbe, align 8, !noalias !35264, !noundef !27
  %i.dbg = getelementptr inbounds nuw [4 x i8], ptr %i.czz, i64 %i.dax
  %i.dbh = load i32, ptr %i.dbg, align 4, !noalias !35264, !noundef !27
  %i.dbi = add i32 %i.dbh, %i.dbf
  store i32 %i.dbi, ptr %i.dbe, align 8, !noalias !35264
  %i.dbj = add nuw nsw i64 %.sroa.01.0.i263609.i.i859, 4 ; 2 uses
  %i.dbk = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.dbd ; 2 uses
  %i.dbl = load i32, ptr %i.dbk, align 4, !noalias !35264, !noundef !27
  %i.dbm = getelementptr inbounds nuw [4 x i8], ptr %i.czz, i64 %i.dbd
  %i.dbn = load i32, ptr %i.dbm, align 4, !noalias !35264, !noundef !27
  %i.dbo = add i32 %i.dbn, %i.dbl
  store i32 %i.dbo, ptr %i.dbk, align 4, !noalias !35264
  %exitcond862.not.i.i860.3 = icmp eq i64 %i.dbj, 544
  br i1 %exitcond862.not.i.i860.3, label %.noexc240.i.i861, label %scalar.ph3947, !llvm.loop !35406

.noexc240.i.i861:                                 ; preds = %vector.body3949, %scalar.ph3947
  %i.dbp = invoke fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17h6e6faa88087b3713E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2192) %i.h)
          to label %.noexc242.i.i864 unwind label %.loopexit.split-lp.thread.i.i862, !noalias !35264

.noexc242.i.i864:                                 ; preds = %.noexc240.i.i861
  %i.dbq = getelementptr inbounds nuw i8, ptr %i.czz, i64 2184
  %i.dbr = load float, ptr %i.dbq, align 8, !alias.scope !35407, !noalias !35264, !noundef !27
  %i.dbs = fsub float %i.dbp, %i.dbr              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !35381
  %i.dbt = fcmp olt float %i.dbs, %.sroa.093.0611.i.i856
  br i1 %i.dbt, label %bb.rq, label %bb.rp

bb.rp:                                            ; preds = %bb.rq, %.noexc242.i.i864
  %.sroa.093.1.i.i865 = phi float [ %i.dbs, %bb.rq ], [ %.sroa.093.0611.i.i856, %.noexc242.i.i864 ]
  %.sroa.089.1.i.i866 = phi i32 [ %i.dbw, %bb.rq ], [ %.sroa.089.0612.i.i855, %.noexc242.i.i864 ] ; 2 uses
  %i.dbu = icmp samesign ult i64 %.sroa.0141.1613.i.i854, %i.cui ; 2 uses
  %i.dbv = zext i1 %i.dbu to i64
  %.sroa.0141.1.i.i867 = add nuw nsw i64 %.sroa.0141.1613.i.i854, %i.dbv
  br i1 %i.dbu, label %.lr.ph614.i.i853, label %._crit_edge615.loopexit.i.i868

bb.rq:                                            ; preds = %.noexc242.i.i864
  %i.dbw = load i32, ptr %i.czv, align 4, !noalias !35264, !noundef !27
  br label %bb.rp

bb.rr:                                            ; preds = %.lr.ph605.i.i823
  %i.dbx = getelementptr inbounds nuw [2 x i8], ptr %i.cjn, i64 %.sroa.043.2603.i.i824
  %i.dby = load i16, ptr %i.dbx, align 2, !alias.scope !35410, !noalias !35413, !noundef !27 ; 2 uses
  %i.dbz = zext i16 %i.dby to i64                 ; 2 uses
  %i.dca = icmp ult i16 %i.dby, 544
  br i1 %i.dca, label %bb.rs, label %.invoke1172.i.i826

.invoke1172.i.i826:                               ; preds = %._crit_edge615.i.i872, %._crit_edge606.thread.i.i920, %._crit_edge606.i.i843, %bb.rr, %.lr.ph605.i.i823, %bb.ro, %.lr.ph614.i.i853, %bb.rk, %.lr.ph614.i.us.i915
  %i.dcb = phi i64 [ %i.czx, %bb.ro ], [ %i.czh, %bb.rk ], [ %.sroa.043.2603.i.i824, %.lr.ph605.i.i823 ], [ %i.dee, %.lr.ph614.i.us.i915 ], [ %.sroa.0141.0610.i.i857, %.lr.ph614.i.i853 ], [ %i.dbz, %bb.rr ], [ %i.cxf, %._crit_edge606.thread.i.i920 ], [ %i.cxa, %._crit_edge606.i.i843 ], [ %.pre-phi.i.i874, %._crit_edge615.i.i872 ]
  %i.dcc = phi i64 [ %.sroa.14.7.i.i756, %bb.ro ], [ %.sroa.14.7.i.i756, %bb.rk ], [ %2, %.lr.ph605.i.i823 ], [ %i.dee, %.lr.ph614.i.us.i915 ], [ %i.dee, %.lr.ph614.i.i853 ], [ 544, %bb.rr ], [ %.sroa.14.7.i.i756, %._crit_edge606.thread.i.i920 ], [ %.sroa.14.7.i.i756, %._crit_edge606.i.i843 ], [ %i.dee, %._crit_edge615.i.i872 ]
  %i.dcd = phi ptr [ @1555, %bb.ro ], [ @1555, %bb.rk ], [ @1556, %.lr.ph605.i.i823 ], [ @1554, %.lr.ph614.i.us.i915 ], [ @1554, %.lr.ph614.i.i853 ], [ @1932, %bb.rr ], [ @1552, %._crit_edge606.thread.i.i920 ], [ @1552, %._crit_edge606.i.i843 ], [ @1553, %._crit_edge615.i.i872 ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.dcb, i64 noundef %i.dcc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dcd) #43
          to label %.cont1173.i.i841 unwind label %.loopexit.split-lp.loopexit.split-lp.i.i827, !noalias !35264

.cont1173.i.i841:                                 ; preds = %.invoke1172.i.i826
  unreachable

bb.rs:                                            ; preds = %bb.rr
  %i.dce = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.dbz ; 2 uses
  %i.dcf = load i32, ptr %i.dce, align 4, !alias.scope !35414, !noalias !35264, !noundef !27
  %i.dcg = add i32 %i.dcf, 1
  store i32 %i.dcg, ptr %i.dce, align 4, !alias.scope !35414, !noalias !35264
  %i.dch = load i64, ptr %i.cuq, align 8, !alias.scope !35417, !noalias !35264, !noundef !27
  %i.dci = add i64 %i.dch, 1                      ; 2 uses
  store i64 %i.dci, ptr %i.cuq, align 8, !alias.scope !35420, !noalias !35264
  %i.dcj = add nuw i64 %.sroa.043.2603.i.i824, 1  ; 4 uses
  %i.dck = add nuw nsw i64 %i.cww, 1
  %exitcond860.not.i.i842 = icmp eq i64 %i.cww, %i.cwu
  br i1 %exitcond860.not.i.i842, label %._crit_edge606.i.i843, label %.lr.ph605.i.i823

.loopexit.split-lp.i.i829:                        ; preds = %.loopexit.split-lp.loopexit.split-lp.i.i827, %.loopexit.split-lp.loopexit.i.i851, %bb.ql
  %.sroa.1152.2.i.i830 = phi i64 [ 0, %bb.ql ], [ %i.dee, %.loopexit.split-lp.loopexit.split-lp.i.i827 ], [ %i.dee, %.loopexit.split-lp.loopexit.i.i851 ] ; 2 uses
  %.sroa.051.2.i.i831 = phi ptr [ inttoptr (i64 4 to ptr), %bb.ql ], [ %i.ctt, %.loopexit.split-lp.loopexit.split-lp.i.i827 ], [ %i.ctt, %.loopexit.split-lp.loopexit.i.i851 ] ; 2 uses
  %.sroa.14.6.i.i832 = phi i64 [ 0, %bb.ql ], [ %.sroa.14.7.i.i756, %.loopexit.split-lp.loopexit.split-lp.i.i827 ], [ %.sroa.14.7.i.i756, %.loopexit.split-lp.loopexit.i.i851 ] ; 2 uses
  %.sroa.016.6.i.i833 = phi ptr [ inttoptr (i64 8 to ptr), %bb.ql ], [ %.sroa.016.7.i.i757, %.loopexit.split-lp.loopexit.split-lp.i.i827 ], [ %.sroa.016.7.i.i757, %.loopexit.split-lp.loopexit.i.i851 ] ; 2 uses
  %.pn.i.i834 = phi { ptr, i32 } [ %i.cun, %bb.ql ], [ %lpad.loopexit.split-lp251.i.i828, %.loopexit.split-lp.loopexit.split-lp.i.i827 ], [ %lpad.loopexit250.i.i852, %.loopexit.split-lp.loopexit.i.i851 ] ; 2 uses
  br i1 %i.ctw, label %.thread130.i.i799, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i835"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i835": ; preds = %.loopexit.split-lp.i.i829, %.loopexit.split-lp.thread.i.i862
  %.pn953.i.i836 = phi { ptr, i32 } [ %lpad.loopexit.i.i863, %.loopexit.split-lp.thread.i.i862 ], [ %.pn.i.i834, %.loopexit.split-lp.i.i829 ]
  %.sroa.016.6952.i.i837 = phi ptr [ %.sroa.016.7.i.i757, %.loopexit.split-lp.thread.i.i862 ], [ %.sroa.016.6.i.i833, %.loopexit.split-lp.i.i829 ]
  %.sroa.14.6951.i.i838 = phi i64 [ %.sroa.14.7.i.i756, %.loopexit.split-lp.thread.i.i862 ], [ %.sroa.14.6.i.i832, %.loopexit.split-lp.i.i829 ]
  %.sroa.051.2950.i.i839 = phi ptr [ %i.ctt, %.loopexit.split-lp.thread.i.i862 ], [ %.sroa.051.2.i.i831, %.loopexit.split-lp.i.i829 ]
  %.sroa.1152.2949.i.i840 = phi i64 [ %i.dee, %.loopexit.split-lp.thread.i.i862 ], [ %.sroa.1152.2.i.i830, %.loopexit.split-lp.i.i829 ]
  tail call void @mi_free(ptr noundef nonnull %i.cuo) #38, !noalias !35264
  br label %.thread130.i.i799

._crit_edge572.i.i752:                            ; preds = %bb.sv, %.split.i.i719
  %.sroa.043.3.lcssa.i.i753 = phi i64 [ %.sroa.043.0588.i.i726, %.split.i.i719 ], [ %.sroa.043.4.lcssa.i.i748, %bb.sv ]
  %i.dcl = invoke fastcc noundef i64 @_ZN6brotli3enc7cluster22BrotliHistogramCombine17h74b2081842603b54E(ptr noalias noundef nonnull align 8 %.sroa.10.0.i.i.i427933.i.i670, i64 noundef %.sroa.0.0.i422.i.i661, ptr noalias noundef nonnull align 4 %i.m, i64 noundef 64, ptr noalias noundef nonnull align 4 %i.k, i64 noundef 64, ptr noalias noundef nonnull align 4 %i.l, i64 noundef 64, ptr noalias noundef nonnull align 4 %i.cst, i64 noundef 2049, i64 noundef %.sroa.0.0.i447.i.i733, i64 noundef %.sroa.0.0.i447.i.i733, i64 noundef 64, i64 noundef 2048)
          to label %bb.rt unwind label %.thread163.loopexit.split-lp.loopexit.i.i754, !noalias !35264 ; 5 uses

bb.rt:                                            ; preds = %._crit_edge572.i.i752
  %i.dcm = add i64 %i.dcl, %.sroa.0.0593.i.i721   ; 3 uses
  %i.dcn = icmp ult i64 %.sroa.012.0592.i.i722, %i.dcm
  br i1 %i.dcn, label %bb.ru, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h42872dbc42a50229E.exit538.i.i"

bb.ru:                                            ; preds = %bb.rt
  %i.dco = icmp eq i64 %.sroa.012.0592.i.i722, 0  ; 2 uses
  %..sroa.012.0.i.i945 = select i1 %i.dco, i64 %i.dcm, i64 %.sroa.012.0592.i.i722
  br label %bb.rv

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h42872dbc42a50229E.exit538.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i537.i.i955", %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hc325a368fbda3a67E.exit.i.i", %bb.rt
  %.sroa.14.7.i.i756 = phi i64 [ %.sroa.14.3585.i.i729, %bb.rt ], [ %.sroa.066.1.i.i946, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i537.i.i955" ], [ %.sroa.066.1.i.i946, %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hc325a368fbda3a67E.exit.i.i" ] ; 22 uses
  %.sroa.016.7.i.i757 = phi ptr [ %.sroa.016.3586.i.i728, %bb.rt ], [ %.sroa.10.0.i.i.i521.i.i949, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i537.i.i955" ], [ %.sroa.10.0.i.i.i521.i.i949, %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hc325a368fbda3a67E.exit.i.i" ] ; 18 uses
  %.sroa.012.1.i.i758 = phi i64 [ %.sroa.012.0592.i.i722, %bb.rt ], [ %.sroa.066.1.i.i946, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i537.i.i955" ], [ %.sroa.066.1.i.i946, %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hc325a368fbda3a67E.exit.i.i" ]
  %i.dcp = add i64 %i.dcl, %.sroa.018.0591.i.i723 ; 3 uses
  %i.dcq = icmp ult i64 %.sroa.023.0590.i.i724, %i.dcp
  br i1 %i.dcq, label %bb.sb, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit547.i.i759"

bb.rv:                                            ; preds = %bb.rv, %bb.ru
  %.sroa.066.1.i.i946 = phi i64 [ %..sroa.012.0.i.i945, %bb.ru ], [ %i.dcs, %bb.rv ] ; 13 uses
  %i.dcr = icmp ult i64 %.sroa.066.1.i.i946, %i.dcm
  %i.dcs = shl i64 %.sroa.066.1.i.i946, 1
  br i1 %i.dcr, label %bb.rv, label %bb.rw

bb.rw:                                            ; preds = %bb.rv
  %i.dct = mul i64 %.sroa.066.1.i.i946, 2192      ; 3 uses
  %or.cond.i.i.i.i.i518.i.i947 = icmp ugt i64 %.sroa.066.1.i.i946, 4207742717543237
  br i1 %or.cond.i.i.i.i.i518.i.i947, label %bb.ry, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i519.i.i948, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i519.i.i948: ; preds = %bb.rw
  %i.dcu = icmp eq i64 %i.dct, 0
  br i1 %i.dcu, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i520.i.i", label %bb.rx

bb.rx:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i519.i.i948
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35423
  %i.dcv = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.dct, i64 noundef range(i64 1, 9) 8) #38, !noalias !35423 ; 2 uses
  %i.dcw = icmp eq ptr %i.dcv, null
  br i1 %i.dcw, label %bb.ry, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i520.i.i"

bb.ry:                                            ; preds = %bb.rx, %bb.rw
  %.sroa.4.0.ph.i.i.i533.i.i960 = phi i64 [ 8, %bb.rx ], [ 0, %bb.rw ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i533.i.i960, i64 %i.dct, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc534.i.i961 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i674, !noalias !35264

.noexc534.i.i961:                                 ; preds = %bb.ry
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i520.i.i": ; preds = %bb.rx, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i519.i.i948
  %.sroa.10.0.i.i.i521.i.i949 = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i519.i.i948 ], [ %i.dcv, %bb.rx ] ; 7 uses
  %.sroa.4.0.i.i.i522.i.i950 = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i519.i.i948 ], [ %.sroa.066.1.i.i946, %bb.rx ]
  %i.dcx = icmp samesign ule i64 %.sroa.066.1.i.i946, %.sroa.4.0.i.i.i522.i.i950
  tail call void @llvm.assume(i1 %i.dcx)
  %i.dcy = icmp samesign ugt i64 %.sroa.066.1.i.i946, 1
  br i1 %i.dcy, label %.lr.ph.i.i.i528.i.i956.preheader, label %.loopexit254.i.i951

.lr.ph.i.i.i528.i.i956.preheader:                 ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i520.i.i"
  %i.dcz = add nsw i64 %.sroa.066.1.i.i946, -1    ; 2 uses
  %i.dda = add nsw i64 %.sroa.066.1.i.i946, -2
  %xtraiter4750 = and i64 %i.dcz, 7               ; 3 uses
  %i.ddb = icmp ult i64 %i.dda, 7
  br i1 %i.ddb, label %.lr.ph.i.i.i528.i.i956.epil.preheader, label %.lr.ph.i.i.i528.i.i956.preheader.new

.lr.ph.i.i.i528.i.i956.preheader.new:             ; preds = %.lr.ph.i.i.i528.i.i956.preheader
  %unroll_iter4755 = and i64 %i.dcz, -8
  br label %.lr.ph.i.i.i528.i.i956

.lr.ph.i.i.i528.i.i956:                           ; preds = %.lr.ph.i.i.i528.i.i956, %.lr.ph.i.i.i528.i.i956.preheader.new
  %.sroa.0.08.i.i.i529.i.i957 = phi ptr [ %.sroa.10.0.i.i.i521.i.i949, %.lr.ph.i.i.i528.i.i956.preheader.new ], [ %i.ddj, %.lr.ph.i.i.i528.i.i956 ] ; 17 uses
  %niter4756 = phi i64 [ 0, %.lr.ph.i.i.i528.i.i956.preheader.new ], [ %niter4756.next.7, %.lr.ph.i.i.i528.i.i956 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i529.i.i957, i8 0, i64 2184, i1 false), !noalias !35264
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i957, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i, align 8, !noalias !35431
  %i.ddc = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i957, i64 2192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ddc, i8 0, i64 2184, i1 false), !noalias !35264
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i957, i64 4376
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.1, align 8, !noalias !35431
  %i.ddd = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i957, i64 4384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ddd, i8 0, i64 2184, i1 false), !noalias !35264
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i957, i64 6568
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.2, align 8, !noalias !35431
  %i.dde = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i957, i64 6576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.dde, i8 0, i64 2184, i1 false), !noalias !35264
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i957, i64 8760
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.3, align 8, !noalias !35431
  %i.ddf = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i957, i64 8768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ddf, i8 0, i64 2184, i1 false), !noalias !35264
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i957, i64 10952
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.4, align 8, !noalias !35431
  %i.ddg = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i957, i64 10960
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ddg, i8 0, i64 2184, i1 false), !noalias !35264
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i957, i64 13144
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.5, align 8, !noalias !35431
  %i.ddh = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i957, i64 13152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ddh, i8 0, i64 2184, i1 false), !noalias !35264
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i957, i64 15336
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.6, align 8, !noalias !35431
  %i.ddi = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i957, i64 15344
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ddi, i8 0, i64 2184, i1 false), !noalias !35264
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i957, i64 17528
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.7, align 8, !noalias !35431
  %i.ddj = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i957, i64 17536 ; 3 uses
  %niter4756.next.7 = add nuw i64 %niter4756, 8   ; 2 uses
  %niter4756.ncmp.7 = icmp eq i64 %niter4756.next.7, %unroll_iter4755
  br i1 %niter4756.ncmp.7, label %.loopexit254.i.i951.loopexit.unr-lcssa, label %.lr.ph.i.i.i528.i.i956

.loopexit254.i.i951.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i.i528.i.i956
  %lcmp.mod4752.not = icmp eq i64 %xtraiter4750, 0
  br i1 %lcmp.mod4752.not, label %.loopexit254.i.i951, label %.lr.ph.i.i.i528.i.i956.epil.preheader

.lr.ph.i.i.i528.i.i956.epil.preheader:            ; preds = %.loopexit254.i.i951.loopexit.unr-lcssa, %.lr.ph.i.i.i528.i.i956.preheader
  %.sroa.0.08.i.i.i529.i.i957.epil.init = phi ptr [ %.sroa.10.0.i.i.i521.i.i949, %.lr.ph.i.i.i528.i.i956.preheader ], [ %i.ddj, %.loopexit254.i.i951.loopexit.unr-lcssa ]
  %lcmp.mod4754 = icmp ne i64 %xtraiter4750, 0
  call void @llvm.assume(i1 %lcmp.mod4754)
  br label %.lr.ph.i.i.i528.i.i956.epil

.lr.ph.i.i.i528.i.i956.epil:                      ; preds = %.lr.ph.i.i.i528.i.i956.epil, %.lr.ph.i.i.i528.i.i956.epil.preheader
  %.sroa.0.08.i.i.i529.i.i957.epil = phi ptr [ %i.ddk, %.lr.ph.i.i.i528.i.i956.epil ], [ %.sroa.0.08.i.i.i529.i.i957.epil.init, %.lr.ph.i.i.i528.i.i956.epil.preheader ] ; 3 uses
  %epil.iter4751 = phi i64 [ %epil.iter4751.next, %.lr.ph.i.i.i528.i.i956.epil ], [ 0, %.lr.ph.i.i.i528.i.i956.epil.preheader ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i529.i.i957.epil, i8 0, i64 2184, i1 false), !noalias !35264
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i957.epil, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.epil, align 8, !noalias !35431
  %i.ddk = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i957.epil, i64 2192 ; 2 uses
  %epil.iter4751.next = add i64 %epil.iter4751, 1 ; 2 uses
  %epil.iter4751.cmp.not = icmp eq i64 %epil.iter4751.next, %xtraiter4750
  br i1 %epil.iter4751.cmp.not, label %.loopexit254.i.i951, label %.lr.ph.i.i.i528.i.i956.epil, !llvm.loop !35434

.loopexit254.i.i951:                              ; preds = %.loopexit254.i.i951.loopexit.unr-lcssa, %.lr.ph.i.i.i528.i.i956.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i520.i.i"
  %.sroa.0.0.lcssa15.i.i.i526.i.i952 = phi ptr [ %.sroa.10.0.i.i.i521.i.i949, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i520.i.i" ], [ %i.ddj, %.loopexit254.i.i951.loopexit.unr-lcssa ], [ %i.ddk, %.lr.ph.i.i.i528.i.i956.epil ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.0.lcssa15.i.i.i526.i.i952, i8 0, i64 2184, i1 false), !noalias !35264
  %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i527.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i526.i.i952, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i527.i.i, align 8, !noalias !35431
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.3586.i.i728) ]
  %.not227.i.i953 = icmp ugt i64 %.sroa.012.0592.i.i722, %.sroa.14.3585.i.i729
  br i1 %.not227.i.i953, label %bb.sa, label %bb.rz, !prof !2480

bb.rz:                                            ; preds = %.loopexit254.i.i951
  br i1 %i.dco, label %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hc325a368fbda3a67E.exit.i.i", label %.lr.ph.preheader.i.i.i954

.lr.ph.preheader.i.i.i954:                        ; preds = %bb.rz
  %i.ddl = mul nuw nsw i64 %.sroa.012.0592.i.i722, 2192
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.10.0.i.i.i521.i.i949, ptr nonnull readonly align 8 %.sroa.016.3586.i.i728, i64 %i.ddl, i1 false), !alias.scope !35435, !noalias !35264
  br label %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hc325a368fbda3a67E.exit.i.i"

bb.sa:                                            ; preds = %.loopexit254.i.i951
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.012.0592.i.i722, i64 noundef %.sroa.14.3585.i.i729, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1565) #43
          to label %bb.rb unwind label %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit551.i.i", !noalias !35264

"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hc325a368fbda3a67E.exit.i.i": ; preds = %.lr.ph.preheader.i.i.i954, %bb.rz
  %i.ddm = icmp eq i64 %.sroa.14.3585.i.i729, 0
  br i1 %i.ddm, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h42872dbc42a50229E.exit538.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i537.i.i955"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i537.i.i955": ; preds = %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hc325a368fbda3a67E.exit.i.i"
  tail call void @mi_free(ptr noundef nonnull align 8 %.sroa.016.3586.i.i728) #38, !noalias !35264
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h42872dbc42a50229E.exit538.i.i"

bb.sb:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h42872dbc42a50229E.exit538.i.i"
  %i.ddn = icmp eq i64 %.sroa.023.0590.i.i724, 0
  %..sroa.023.0.i.i935 = select i1 %i.ddn, i64 %i.dcp, i64 %.sroa.023.0590.i.i724
  br label %bb.sc

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit547.i.i759": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i941", %bb.sj, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h42872dbc42a50229E.exit538.i.i"
  %.sroa.12.5.i.i760 = phi i64 [ %.sroa.12.2583.i.i731, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h42872dbc42a50229E.exit538.i.i" ], [ %.sroa.070.1.i.i936, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i941" ], [ %.sroa.070.1.i.i936, %bb.sj ] ; 10 uses
  %.sroa.026.5.i.i761 = phi ptr [ %.sroa.026.2584.i.i730, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h42872dbc42a50229E.exit538.i.i" ], [ %i.ddz, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i941" ], [ %i.ddz, %bb.sj ] ; 11 uses
  %.sroa.023.1.i.i762 = phi i64 [ %.sroa.023.0590.i.i724, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h42872dbc42a50229E.exit538.i.i" ], [ %.sroa.070.1.i.i936, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i941" ], [ %.sroa.070.1.i.i936, %bb.sj ]
  %.not625.i.i763 = icmp eq i64 %i.dcl, 0
  br i1 %.not625.i.i763, label %.preheader253.i.i775, label %.lr.ph577.preheader.i.i764

.lr.ph577.preheader.i.i764:                       ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit547.i.i759"
  %reass.sub446.i765 = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.14.7.i.i756, i64 %.sroa.0.0593.i.i721)
  %i.ddo = add nuw nsw i64 %reass.sub446.i765, 1
  %reass.sub447.i766 = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.12.5.i.i760, i64 %.sroa.018.0591.i.i723)
  %i.ddp = add nuw nsw i64 %reass.sub447.i766, 1
  br label %.lr.ph577.i.i767

bb.sc:                                            ; preds = %bb.sc, %bb.sb
  %.sroa.070.1.i.i936 = phi i64 [ %..sroa.023.0.i.i935, %bb.sb ], [ %i.ddr, %bb.sc ] ; 9 uses
  %i.ddq = icmp ult i64 %.sroa.070.1.i.i936, %i.dcp
  %i.ddr = shl i64 %.sroa.070.1.i.i936, 1
  br i1 %i.ddq, label %bb.sc, label %bb.sd

bb.sd:                                            ; preds = %bb.sc
  %i.dds = shl i64 %.sroa.070.1.i.i936, 2         ; 4 uses
  %i.ddt = icmp ugt i64 %.sroa.070.1.i.i936, 4611686018427387903
  %i.ddu = icmp ugt i64 %i.dds, 9223372036854775804
  %or.cond.i.i.i.i539.i.i937 = or i1 %i.ddt, %i.ddu
  br i1 %or.cond.i.i.i.i539.i.i937, label %bb.sg, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i540.i.i938, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i540.i.i938: ; preds = %bb.sd
  %i.ddv = icmp eq i64 %i.dds, 0
  br i1 %i.ddv, label %bb.sh, label %bb.se

bb.se:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i540.i.i938
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35442
  %i.ddw = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.dds, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !35442 ; 2 uses
  %i.ddx = icmp eq ptr %i.ddw, null
  br i1 %i.ddx, label %bb.sg, label %bb.sf

bb.sf:                                            ; preds = %bb.se
  %i.ddy = ptrtoint ptr %i.ddw to i64
  br label %bb.sh

bb.sg:                                            ; preds = %bb.se, %bb.sd
  %.sroa.4.0.ph.i.i542.i.i943 = phi i64 [ 4, %bb.se ], [ 0, %bb.sd ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i542.i.i943, i64 %i.dds, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc543.i.i944 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i674, !noalias !35264

.noexc543.i.i944:                                 ; preds = %bb.sg
  unreachable

bb.sh:                                            ; preds = %bb.sf, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i540.i.i938
  %.sroa.10.0.i.i541.i.i939 = phi i64 [ %i.ddy, %bb.sf ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i540.i.i938 ]
  %i.ddz = inttoptr i64 %.sroa.10.0.i.i541.i.i939 to ptr ; 5 uses
  %i.dea = icmp samesign ult i64 %.sroa.070.1.i.i936, 2305843009213693952
  tail call void @llvm.assume(i1 %i.dea)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ddz) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.2584.i.i730) ]
  %.not229.i.i940 = icmp ugt i64 %.sroa.023.0590.i.i724, %.sroa.12.2583.i.i731
  br i1 %.not229.i.i940, label %bb.si, label %bb.sj, !prof !2480

bb.si:                                            ; preds = %bb.sh
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.023.0590.i.i724, i64 noundef %.sroa.12.2583.i.i731, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1564) #43
          to label %bb.rb unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit549.i.i942", !noalias !35264

bb.sj:                                            ; preds = %bb.sh
  %i.deb = shl nuw nsw i64 %.sroa.023.0590.i.i724, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ddz, ptr nonnull readonly align 4 %.sroa.026.2584.i.i730, i64 %i.deb, i1 false), !alias.scope !35447, !noalias !35451
  %i.dec = icmp eq i64 %.sroa.12.2583.i.i731, 0
  br i1 %i.dec, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit547.i.i759", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i941"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i941": ; preds = %bb.sj
  tail call void @mi_free(ptr noundef nonnull align 4 %.sroa.026.2584.i.i730) #38, !noalias !35264
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit547.i.i759"

.preheader253.i.i775:                             ; preds = %bb.st, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit547.i.i759"
  %.sroa.018.1.lcssa.i.i776 = phi i64 [ %.sroa.018.0591.i.i723, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit547.i.i759" ], [ %i.dfi, %bb.st ]
  %.sroa.0.1.lcssa.i.i777 = phi i64 [ %.sroa.0.0593.i.i721, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit547.i.i759" ], [ %i.dfb, %bb.st ]
  br i1 %.not928.i.i734, label %._crit_edge582.i.i781, label %.lr.ph581.i.i778

.lr.ph581.i.i778:                                 ; preds = %.preheader253.i.i775
  %i.ded = trunc i64 %.sroa.029.0589.i.i725 to i32
  br label %bb.sk

._crit_edge582.i.i781:                            ; preds = %bb.sm, %.preheader253.i.i775
  %i.dee = add i64 %i.dcl, %.sroa.029.0589.i.i725 ; 23 uses
  %i.def = add i64 %.sroa.047.1587.i.i727, 64     ; 2 uses
  %i.deg = icmp ult i64 %i.def, %.sroa.0.0.i.i635
  %indvars.iv.next.i.i782 = add i64 %indvars.iv.i.i720, -64
  br i1 %i.deg, label %.split.i.i719, label %bb.pz

bb.sk:                                            ; preds = %bb.sm, %.lr.ph581.i.i778
  %i.deh = phi i64 [ 1, %.lr.ph581.i.i778 ], [ %i.des, %bb.sm ] ; 3 uses
  %.sroa.0133.0580.i.i779 = phi i64 [ 0, %.lr.ph581.i.i778 ], [ %i.deh, %bb.sm ] ; 2 uses
  %i.dei = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.sroa.0133.0580.i.i779
  %i.dej = load i32, ptr %i.dei, align 4, !noalias !35264, !noundef !27 ; 2 uses
  %i.dek = zext i32 %i.dej to i64                 ; 2 uses
  %i.del = icmp ult i32 %i.dej, 64
  br i1 %i.del, label %bb.sl, label %.invoke3981

bb.sl:                                            ; preds = %bb.sk
  %i.dem = or disjoint i64 %.sroa.0133.0580.i.i779, %.sroa.047.1587.i.i727 ; 3 uses
  %i.den = icmp ult i64 %i.dem, %.sroa.0.0.i.i635
  br i1 %i.den, label %bb.sm, label %.invoke3981

bb.sm:                                            ; preds = %bb.sl
  %i.deo = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.dek
  %i.dep = load i32, ptr %i.deo, align 4, !noalias !35264, !noundef !27
  %i.deq = add i32 %i.dep, %i.ded
  %i.der = getelementptr inbounds nuw [4 x i8], ptr %i.cqx, i64 %i.dem
  store i32 %i.deq, ptr %i.der, align 4, !noalias !35264
  %i.des = add nuw nsw i64 %i.deh, 1
  %exitcond857.not.i.i780 = icmp eq i64 %i.deh, %umax856.i.i732
  br i1 %exitcond857.not.i.i780, label %._crit_edge582.i.i781, label %bb.sk

.lr.ph577.i.i767:                                 ; preds = %bb.st, %.lr.ph577.preheader.i.i764
  %i.det = phi i64 [ %i.dfl, %bb.st ], [ 1, %.lr.ph577.preheader.i.i764 ] ; 6 uses
  %.sroa.0.1576.i.i768 = phi i64 [ %i.dfb, %bb.st ], [ %.sroa.0.0593.i.i721, %.lr.ph577.preheader.i.i764 ] ; 3 uses
  %.sroa.018.1575.i.i769 = phi i64 [ %i.dfi, %bb.st ], [ %.sroa.018.0591.i.i723, %.lr.ph577.preheader.i.i764 ] ; 3 uses
  %.sroa.0131.0574.i.i770 = phi i64 [ %i.det, %bb.st ], [ 0, %.lr.ph577.preheader.i.i764 ] ; 2 uses
  %exitcond850.not.i.i771 = icmp eq i64 %i.det, 65
  br i1 %exitcond850.not.i.i771, label %.invoke3981, label %bb.sn

bb.sn:                                            ; preds = %.lr.ph577.i.i767
  %i.deu = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.sroa.0131.0574.i.i770 ; 2 uses
  %i.dev = load i32, ptr %i.deu, align 4, !noalias !35264, !noundef !27
  %i.dew = zext i32 %i.dev to i64                 ; 4 uses
  %i.dex = icmp samesign ugt i64 %.sroa.0.0.i422.i.i661, %i.dew
  br i1 %i.dex, label %bb.sp, label %.invoke3981

bb.so:                                            ; preds = %bb.sq
  %i.dey = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i683"

bb.sp:                                            ; preds = %bb.sn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.7.i.i757) ]
  %exitcond852.not.i.i772 = icmp eq i64 %i.det, %i.ddo
  br i1 %exitcond852.not.i.i772, label %bb.sq, label %bb.sr

bb.sq:                                            ; preds = %bb.sp
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.0.1576.i.i768, i64 noundef %.sroa.14.7.i.i756, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1561) #43
          to label %bb.rb unwind label %bb.so, !noalias !35264

end_hunk_10
begin_hunk_11_@_ZN6brotli3enc17brotli_bit_stream12LogMetaBlock17h8d6ec10e9474062aE:bb.a
  %i.dg = alloca [96 x i8], align 16              ; 14 uses
  %i.dh = alloca [48 x i8], align 8               ; 6 uses
  %i.di = alloca [48 x i8], align 8               ; 13 uses
  %i.dj = alloca [96 x i8], align 8               ; 8 uses
  %i.dk = alloca [48 x i8], align 8               ; 7 uses
  %i.dl = alloca [48 x i8], align 8               ; 10 uses
  %i.dm = alloca [384 x i8], align 4              ; 4 uses
  %i.dn = alloca [920 x i8], align 8              ; 118 uses
  %i.do = alloca [48 x i8], align 8               ; 6 uses
  %i.dp = alloca [48 x i8], align 8               ; 6 uses
  %i.dq = alloca [56 x i8], align 8               ; 10 uses
  %i.dr = alloca [56 x i8], align 8               ; 8 uses
  %i.ds = alloca [56 x i8], align 8               ; 8 uses
  %i.dt = alloca [56 x i8], align 8               ; 8 uses
  %i.du = alloca [56 x i8], align 8               ; 8 uses
  %i.dv = alloca [56 x i8], align 8               ; 7 uses
  %i.dw = alloca [56 x i8], align 8               ; 7 uses
  %i.dx = alloca [56 x i8], align 8               ; 6 uses
  %i.dy = alloca [56 x i8], align 8               ; 6 uses
  %i.dz = alloca [56 x i8], align 8               ; 6 uses
  %i.ea = alloca [56 x i8], align 8               ; 6 uses
  %i.eb = alloca [56 x i8], align 8               ; 6 uses
  %i.ec = alloca [56 x i8], align 8               ; 6 uses
  %i.ed = alloca [56 x i8], align 8               ; 6 uses
  %i.ee = alloca [56 x i8], align 8               ; 6 uses
  %i.ef = alloca [56 x i8], align 8               ; 6 uses
  %i.eg = alloca [48 x i8], align 8               ; 7 uses
  %i.eh = alloca [96 x i8], align 8               ; 6 uses
  %i.ei = alloca [56 x i8], align 8               ; 5 uses
  %i.ej = alloca [56 x i8], align 8               ; 5 uses
  %i.ek = alloca [16 x i8], align 4               ; 7 uses
  %i.el = alloca [56 x i8], align 8               ; 6 uses
  %i.em = alloca [48 x i8], align 8               ; 2 uses
  %i.en = alloca [96 x i8], align 8               ; 5 uses
  %i.eo = alloca [48 x i8], align 8               ; 8 uses
  %i.ep = alloca [96 x i8], align 8               ; 7 uses
  %i.eq = alloca [48 x i8], align 8               ; 2 uses
  %i.er = alloca [96 x i8], align 8               ; 5 uses
  %i.es = alloca [48 x i8], align 8               ; 9 uses
  %i.et = alloca [56 x i8], align 8               ; 9 uses
  %i.eu = alloca [38 x i8], align 1               ; 6 uses
  %i.ev = alloca [96 x i8], align 16              ; 14 uses
  %i.ew = alloca [48 x i8], align 8               ; 6 uses
  %i.ex = alloca [48 x i8], align 8               ; 13 uses
  %i.ey = alloca [96 x i8], align 8               ; 8 uses
  %i.ez = alloca [48 x i8], align 8               ; 7 uses
  %i.fa = alloca [48 x i8], align 8               ; 10 uses
  %i.fb = alloca [240 x i8], align 8              ; 54 uses
  %i.fc = alloca [24 x i8], align 8               ; 13 uses
  %i.fd = alloca [24 x i8], align 8               ; 7 uses
  %i.fe = alloca [24 x i8], align 8               ; 7 uses
  %i.ff = alloca [24 x i8], align 8               ; 7 uses
  %i.fg = alloca [24 x i8], align 8               ; 6 uses
  %i.fh = alloca [96 x i8], align 8               ; 4 uses
  %i.fi = alloca [96 x i8], align 8               ; 4 uses
  %i.fj = alloca [96 x i8], align 8               ; 4 uses
  %i.fk = alloca [24 x i8], align 8               ; 6 uses
  %i.fl = alloca [96 x i8], align 8               ; 4 uses
  %i.fm = alloca [96 x i8], align 8               ; 4 uses
  %i.fn = alloca [96 x i8], align 8               ; 4 uses
  %i.fo = alloca [24 x i8], align 8               ; 6 uses
  %i.fp = alloca [96 x i8], align 8               ; 4 uses
  %i.fq = alloca [96 x i8], align 8               ; 4 uses
  %i.fr = alloca [96 x i8], align 8               ; 4 uses
  %i.fs = alloca [24 x i8], align 8               ; 6 uses
  %i.ft = alloca [96 x i8], align 8               ; 4 uses
  %i.fu = alloca [96 x i8], align 8               ; 4 uses
  %i.fv = alloca [96 x i8], align 8               ; 4 uses
  %i.fw = alloca [24 x i8], align 8               ; 6 uses
  %i.fx = alloca [96 x i8], align 8               ; 4 uses
  %i.fy = alloca [96 x i8], align 8               ; 4 uses
  %i.fz = alloca [96 x i8], align 8               ; 4 uses
  %i.ga = alloca [24 x i8], align 8               ; 6 uses
  %i.gb = alloca [96 x i8], align 8               ; 4 uses
  %i.gc = alloca [96 x i8], align 8               ; 4 uses
  %i.gd = alloca [96 x i8], align 8               ; 4 uses
  %i.ge = alloca [24 x i8], align 8               ; 6 uses
  %i.gf = alloca [96 x i8], align 8               ; 4 uses
  %i.gg = alloca [96 x i8], align 8               ; 4 uses
  %i.gh = alloca [96 x i8], align 8               ; 4 uses
  %i.gi = alloca [96 x i8], align 8               ; 4 uses
  %i.gj = alloca [96 x i8], align 8               ; 4 uses
  %i.gk = alloca [96 x i8], align 8               ; 4 uses
  %i.gl = alloca [24 x i8], align 8               ; 6 uses
  %i.gm = alloca [96 x i8], align 8               ; 4 uses
  %i.gn = alloca [96 x i8], align 8               ; 4 uses
  %i.go = alloca [24 x i8], align 8               ; 6 uses
  %i.gp = alloca [96 x i8], align 8               ; 4 uses
  %i.gq = alloca [96 x i8], align 8               ; 4 uses
  %i.gr = alloca [24 x i8], align 8               ; 6 uses
  %i.gs = alloca [24 x i8], align 8               ; 6 uses
  %i.gt = alloca [96 x i8], align 8               ; 4 uses
  %i.gu = alloca [96 x i8], align 8               ; 4 uses
  %i.gv = alloca [24 x i8], align 8               ; 6 uses
  %i.gw = alloca [96 x i8], align 8               ; 4 uses
  %i.gx = alloca [24 x i8], align 8               ; 6 uses
  %i.gy = alloca [96 x i8], align 8               ; 4 uses
  %i.gz = alloca [24 x i8], align 8               ; 6 uses
  %i.ha = alloca [96 x i8], align 8               ; 4 uses
  %i.hb = alloca [48 x i8], align 8               ; 23 uses
  %i.hc = alloca [48 x i8], align 8               ; 7 uses
  %i.hd = alloca [48 x i8], align 8               ; 7 uses
  %i.he = alloca [376 x i8], align 8              ; 5 uses
  %i.hf = alloca [192 x i8], align 8              ; 35 uses
  %.sroa.0163 = alloca [96 x i8], align 8         ; 4 uses
  %.sroa.8176 = alloca [792 x i8], align 8        ; 4 uses
  %i.hg = alloca [1656 x i8], align 8             ; 98 uses
  %i.hh = alloca [48 x i8], align 8               ; 2 uses
  %.sroa.0153 = alloca [24 x i8], align 8         ; 5 uses
  %i.hi = alloca [296 x i8], align 8              ; 70 uses
  %i.hj = alloca [48 x i8], align 8               ; 5 uses
  %i.hk = alloca [920 x i8], align 8              ; 44 uses
  %i.hl = alloca [240 x i8], align 8              ; 29 uses
  %i.hm = alloca [376 x i8], align 8              ; 96 uses
  %i.hn = alloca [48 x i8], align 8               ; 10 uses
  %i.ho = alloca [48 x i8], align 8               ; 3 uses
  %i.hp = alloca [4 x i8], align 4                ; 2 uses
  %i.hq = alloca [48 x i8], align 8               ; 3 uses
  %i.hr = alloca [4 x i8], align 4                ; 2 uses
  %i.hs = alloca [48 x i8], align 8               ; 3 uses
  %i.ht = alloca [4 x i8], align 4                ; 2 uses
  %i.hu = alloca [24592 x i8], align 1            ; 10 uses
  %i.hv = alloca [16384 x i8], align 1            ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hv)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16384) %i.hv, i8 0, i64 16384, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hu)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24592) %i.hu, i8 0, i64 24592, i1 false)
  %i.hw = load ptr, ptr %9, align 8, !nonnull !27, !align !206, !noundef !27 ; 13 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.hy = load i64, ptr %i.hx, align 8, !noundef !27 ; 12 uses
  %i.hz = icmp samesign eq i64 %i.hy, 0
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %.sink.sroa.gep1187 = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.sink.sroa.gep1189 = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  %.sink.sroa.gep1190 = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %.sink.sroa.gep1192 = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %.sink.sroa.gep1193 = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %.sink.sroa.gep1195 = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %.sink.sroa.gep1196 = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %.sink877.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sink877.sroa.gep1197 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sink877.sroa.gep1199 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sink877.sroa.gep1200 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sink877.sroa.gep1202 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sink877.sroa.gep1203 = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sink877.sroa.gep1205 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sink877.sroa.gep1206 = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  br i1 %i.hz, label %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hw, i64 1 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35565)
  %i.ib = icmp samesign eq i64 %i.hy, 1
  br i1 %i.ib, label %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val.i.i.i.i.i.pre.i.i = load i8, ptr %i.hw, align 1, !alias.scope !35568, !noalias !35573 ; 2 uses
  %i.ic = add i64 %i.hy, -2
  %i.id = add i64 %i.hy, -1                       ; 2 uses
  %xtraiter = and i64 %i.id, 3                    ; 3 uses
  %i.ie = icmp ult i64 %i.ic, 3
  br i1 %i.ie, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.c
  %unroll_iter = and i64 %i.id, -4
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.new
  %.val.i.i.i.i.i.i.i = phi i8 [ %.val.i.i.i.i.i.pre.i.i, %.new ], [ %i.iu, %bb.d ] ; 2 uses
  %.sroa.09.0.i.i = phi i64 [ 0, %.new ], [ %i.it, %bb.d ] ; 5 uses
  %.sroa.07.0.i.i = phi ptr [ %i.hw, %.new ], [ %.sroa.0.0.i.i.i.i.3, %bb.d ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.d ]
  %i.if = getelementptr inbounds nuw i8, ptr %i.ia, i64 %.sroa.09.0.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35576)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35577)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35578)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35579)
  %.val1.i.i.i.i.i.i.i = load i8, ptr %i.if, align 1, !alias.scope !35573, !noalias !35568, !noundef !27 ; 2 uses
  %i.ig = icmp ugt i8 %.val.i.i.i.i.i.i.i, %.val1.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i = select i1 %i.ig, ptr %.sroa.07.0.i.i, ptr %i.if
  %i.ih = tail call i8 @llvm.umax.i8(i8 %.val.i.i.i.i.i.i.i, i8 %.val1.i.i.i.i.i.i.i) ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ia, i64 %.sroa.09.0.i.i
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 1 ; 2 uses
  %.val1.i.i.i.i.i.i.i.1 = load i8, ptr %i.ij, align 1, !alias.scope !35580, !noalias !35583, !noundef !27 ; 2 uses
  %i.ik = icmp ugt i8 %i.ih, %.val1.i.i.i.i.i.i.i.1
  %.sroa.0.0.i.i.i.i.1 = select i1 %i.ik, ptr %.sroa.0.0.i.i.i.i, ptr %i.ij
  %i.il = tail call i8 @llvm.umax.i8(i8 %i.ih, i8 %.val1.i.i.i.i.i.i.i.1) ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ia, i64 %.sroa.09.0.i.i
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 2 ; 2 uses
  %.val1.i.i.i.i.i.i.i.2 = load i8, ptr %i.in, align 1, !alias.scope !35586, !noalias !35589, !noundef !27 ; 2 uses
  %i.io = icmp ugt i8 %i.il, %.val1.i.i.i.i.i.i.i.2
  %.sroa.0.0.i.i.i.i.2 = select i1 %i.io, ptr %.sroa.0.0.i.i.i.i.1, ptr %i.in
  %i.ip = tail call i8 @llvm.umax.i8(i8 %i.il, i8 %.val1.i.i.i.i.i.i.i.2) ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ia, i64 %.sroa.09.0.i.i
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 3 ; 2 uses
  %.val1.i.i.i.i.i.i.i.3 = load i8, ptr %i.ir, align 1, !alias.scope !35592, !noalias !35595, !noundef !27 ; 2 uses
  %i.is = icmp ugt i8 %i.ip, %.val1.i.i.i.i.i.i.i.3
  %.sroa.0.0.i.i.i.i.3 = select i1 %i.is, ptr %.sroa.0.0.i.i.i.i.2, ptr %i.ir ; 3 uses
  %i.it = add nuw i64 %.sroa.09.0.i.i, 4          ; 2 uses
  %i.iu = tail call i8 @llvm.umax.i8(i8 %i.ip, i8 %.val1.i.i.i.i.i.i.i.3) ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit.loopexit.unr-lcssa, label %bb.d

_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit.loopexit.unr-lcssa, %bb.c
  %.val.i.i.i.i.i.i.i.epil.init = phi i8 [ %.val.i.i.i.i.i.pre.i.i, %bb.c ], [ %i.iu, %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit.loopexit.unr-lcssa ]
  %.sroa.09.0.i.i.epil.init = phi i64 [ 0, %bb.c ], [ %i.it, %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit.loopexit.unr-lcssa ]
  %.sroa.07.0.i.i.epil.init = phi ptr [ %i.hw, %bb.c ], [ %.sroa.0.0.i.i.i.i.3, %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit.loopexit.unr-lcssa ]
  %lcmp.mod1137 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1137)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %.val.i.i.i.i.i.i.i.epil = phi i8 [ %.val.i.i.i.i.i.i.i.epil.init, %.epil.preheader ], [ %i.iy, %bb.e ] ; 2 uses
  %.sroa.09.0.i.i.epil = phi i64 [ %.sroa.09.0.i.i.epil.init, %.epil.preheader ], [ %i.ix, %bb.e ] ; 2 uses
  %.sroa.07.0.i.i.epil = phi ptr [ %.sroa.07.0.i.i.epil.init, %.epil.preheader ], [ %.sroa.0.0.i.i.i.i.epil, %bb.e ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ia, i64 %.sroa.09.0.i.i.epil ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35576)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35577)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35578)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35579)
  %.val1.i.i.i.i.i.i.i.epil = load i8, ptr %i.iv, align 1, !alias.scope !35573, !noalias !35568, !noundef !27 ; 2 uses
  %i.iw = icmp ugt i8 %.val.i.i.i.i.i.i.i.epil, %.val1.i.i.i.i.i.i.i.epil
  %.sroa.0.0.i.i.i.i.epil = select i1 %i.iw, ptr %.sroa.07.0.i.i.epil, ptr %i.iv ; 2 uses
  %i.ix = add nuw i64 %.sroa.09.0.i.i.epil, 1
  %i.iy = tail call i8 @llvm.umax.i8(i8 %.val.i.i.i.i.i.i.i.epil, i8 %.val1.i.i.i.i.i.i.i.epil)
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit, label %bb.e, !llvm.loop !35598

_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit: ; preds = %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit.loopexit.unr-lcssa, %bb.e, %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ %i.hw, %bb.b ], [ %.sroa.0.0.i.i.i.i.3, %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i.i.i.epil, %bb.e ] ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0.i, null
  %. = select i1 %.not, ptr @706, ptr %.sroa.0.0.i
  %i.iz = load i8, ptr %., align 1, !noundef !27  ; 5 uses
  %i.ja = zext i8 %i.iz to i32
  %i.jb = add nuw nsw i32 %i.ja, 1                ; 2 uses
  store i32 %i.jb, ptr %i.ht, align 4
  %i.jc = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.jd = load i32, ptr %i.jc, align 8, !noundef !27
  %i.je = icmp eq i32 %i.jb, %i.jd
  br i1 %i.je, label %bb.g, label %bb.f, !prof !222

bb.f:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hs)
  store ptr null, ptr %i.hs, align 8
  call void @_ZN4core9panicking13assert_failed17hc1cbb4b42d1dde38E(i8 noundef 0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ht, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.jc, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.hs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1584) #43
  unreachable

bb.g:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit
  %i.jf = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.jg = load ptr, ptr %i.jf, align 8, !nonnull !27, !align !206, !noundef !27 ; 9 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.ji = load i64, ptr %i.jh, align 8, !noundef !27 ; 8 uses
  %i.jj = icmp samesign eq i64 %i.ji, 0
  br i1 %i.jj, label %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit207, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jg, i64 1 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35599)
  %i.jl = icmp samesign eq i64 %i.ji, 1
  br i1 %i.jl, label %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit207, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val.i.i.i.i.i.pre.i.i200 = load i8, ptr %i.jg, align 1, !alias.scope !35602, !noalias !35607 ; 2 uses
  %i.jm = add i64 %i.ji, -2
  %i.jn = add i64 %i.ji, -1                       ; 2 uses
  %xtraiter1140 = and i64 %i.jn, 3                ; 3 uses
  %i.jo = icmp ult i64 %i.jm, 3
  br i1 %i.jo, label %.epil.preheader1139, label %.new1138

.new1138:                                         ; preds = %bb.i
  %unroll_iter1145 = and i64 %i.jn, -4
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.new1138
  %.val.i.i.i.i.i.i.i201 = phi i8 [ %.val.i.i.i.i.i.pre.i.i200, %.new1138 ], [ %i.ke, %bb.j ] ; 2 uses
  %.sroa.09.0.i.i202 = phi i64 [ 0, %.new1138 ], [ %i.kd, %bb.j ] ; 5 uses
  %.sroa.07.0.i.i203 = phi ptr [ %i.jg, %.new1138 ], [ %.sroa.0.0.i.i.i.i205.3, %bb.j ]
  %niter1146 = phi i64 [ 0, %.new1138 ], [ %niter1146.next.3, %bb.j ]
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jk, i64 %.sroa.09.0.i.i202 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35610)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35611)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35612)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35613)
  %.val1.i.i.i.i.i.i.i204 = load i8, ptr %i.jp, align 1, !alias.scope !35607, !noalias !35602, !noundef !27 ; 2 uses
  %i.jq = icmp ugt i8 %.val.i.i.i.i.i.i.i201, %.val1.i.i.i.i.i.i.i204
  %.sroa.0.0.i.i.i.i205 = select i1 %i.jq, ptr %.sroa.07.0.i.i203, ptr %i.jp
  %i.jr = tail call i8 @llvm.umax.i8(i8 %.val.i.i.i.i.i.i.i201, i8 %.val1.i.i.i.i.i.i.i204) ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jk, i64 %.sroa.09.0.i.i202
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 1 ; 2 uses
  %.val1.i.i.i.i.i.i.i204.1 = load i8, ptr %i.jt, align 1, !alias.scope !35614, !noalias !35617, !noundef !27 ; 2 uses
  %i.ju = icmp ugt i8 %i.jr, %.val1.i.i.i.i.i.i.i204.1
  %.sroa.0.0.i.i.i.i205.1 = select i1 %i.ju, ptr %.sroa.0.0.i.i.i.i205, ptr %i.jt
  %i.jv = tail call i8 @llvm.umax.i8(i8 %i.jr, i8 %.val1.i.i.i.i.i.i.i204.1) ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jk, i64 %.sroa.09.0.i.i202
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 2 ; 2 uses
  %.val1.i.i.i.i.i.i.i204.2 = load i8, ptr %i.jx, align 1, !alias.scope !35620, !noalias !35623, !noundef !27 ; 2 uses
  %i.jy = icmp ugt i8 %i.jv, %.val1.i.i.i.i.i.i.i204.2
  %.sroa.0.0.i.i.i.i205.2 = select i1 %i.jy, ptr %.sroa.0.0.i.i.i.i205.1, ptr %i.jx
  %i.jz = tail call i8 @llvm.umax.i8(i8 %i.jv, i8 %.val1.i.i.i.i.i.i.i204.2) ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jk, i64 %.sroa.09.0.i.i202
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 3 ; 2 uses
  %.val1.i.i.i.i.i.i.i204.3 = load i8, ptr %i.kb, align 1, !alias.scope !35626, !noalias !35629, !noundef !27 ; 2 uses
  %i.kc = icmp ugt i8 %i.jz, %.val1.i.i.i.i.i.i.i204.3
  %.sroa.0.0.i.i.i.i205.3 = select i1 %i.kc, ptr %.sroa.0.0.i.i.i.i205.2, ptr %i.kb ; 3 uses
  %i.kd = add nuw i64 %.sroa.09.0.i.i202, 4       ; 2 uses
  %i.ke = tail call i8 @llvm.umax.i8(i8 %i.jz, i8 %.val1.i.i.i.i.i.i.i204.3) ; 2 uses
  %niter1146.next.3 = add nuw i64 %niter1146, 4   ; 2 uses
  %niter1146.ncmp.3 = icmp eq i64 %niter1146.next.3, %unroll_iter1145
  br i1 %niter1146.ncmp.3, label %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit207.loopexit.unr-lcssa, label %bb.j

_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit207.loopexit.unr-lcssa: ; preds = %bb.j
  %lcmp.mod1142.not = icmp eq i64 %xtraiter1140, 0
  br i1 %lcmp.mod1142.not, label %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit207, label %.epil.preheader1139

.epil.preheader1139:                              ; preds = %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit207.loopexit.unr-lcssa, %bb.i
  %.val.i.i.i.i.i.i.i201.epil.init = phi i8 [ %.val.i.i.i.i.i.pre.i.i200, %bb.i ], [ %i.ke, %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit207.loopexit.unr-lcssa ]
  %.sroa.09.0.i.i202.epil.init = phi i64 [ 0, %bb.i ], [ %i.kd, %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit207.loopexit.unr-lcssa ]
  %.sroa.07.0.i.i203.epil.init = phi ptr [ %i.jg, %bb.i ], [ %.sroa.0.0.i.i.i.i205.3, %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit207.loopexit.unr-lcssa ]
  %lcmp.mod1144 = icmp ne i64 %xtraiter1140, 0
  tail call void @llvm.assume(i1 %lcmp.mod1144)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader1139
  %.val.i.i.i.i.i.i.i201.epil = phi i8 [ %.val.i.i.i.i.i.i.i201.epil.init, %.epil.preheader1139 ], [ %i.ki, %bb.k ] ; 2 uses
  %.sroa.09.0.i.i202.epil = phi i64 [ %.sroa.09.0.i.i202.epil.init, %.epil.preheader1139 ], [ %i.kh, %bb.k ] ; 2 uses
  %.sroa.07.0.i.i203.epil = phi ptr [ %.sroa.07.0.i.i203.epil.init, %.epil.preheader1139 ], [ %.sroa.0.0.i.i.i.i205.epil, %bb.k ]
  %epil.iter1141 = phi i64 [ 0, %.epil.preheader1139 ], [ %epil.iter1141.next, %bb.k ]
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jk, i64 %.sroa.09.0.i.i202.epil ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35610)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35611)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35612)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35613)
  %.val1.i.i.i.i.i.i.i204.epil = load i8, ptr %i.kf, align 1, !alias.scope !35607, !noalias !35602, !noundef !27 ; 2 uses
  %i.kg = icmp ugt i8 %.val.i.i.i.i.i.i.i201.epil, %.val1.i.i.i.i.i.i.i204.epil
  %.sroa.0.0.i.i.i.i205.epil = select i1 %i.kg, ptr %.sroa.07.0.i.i203.epil, ptr %i.kf ; 2 uses
  %i.kh = add nuw i64 %.sroa.09.0.i.i202.epil, 1
  %i.ki = tail call i8 @llvm.umax.i8(i8 %.val.i.i.i.i.i.i.i201.epil, i8 %.val1.i.i.i.i.i.i.i204.epil)
  %epil.iter1141.next = add i64 %epil.iter1141, 1 ; 2 uses
  %epil.iter1141.cmp.not = icmp eq i64 %epil.iter1141.next, %xtraiter1140
  br i1 %epil.iter1141.cmp.not, label %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit207, label %bb.k, !llvm.loop !35632

_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit207: ; preds = %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit207.loopexit.unr-lcssa, %bb.k, %bb.g, %bb.h
  %.sroa.0.0.i206 = phi ptr [ null, %bb.g ], [ %i.jg, %bb.h ], [ %.sroa.0.0.i.i.i.i205.3, %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit207.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i.i.i205.epil, %bb.k ] ; 2 uses
  %.not164 = icmp eq ptr %.sroa.0.0.i206, null
  %.178 = select i1 %.not164, ptr @706, ptr %.sroa.0.0.i206
  %i.kj = load i8, ptr %.178, align 1, !noundef !27 ; 5 uses
  %i.kk = zext i8 %i.kj to i32
  %i.kl = add nuw nsw i32 %i.kk, 1                ; 2 uses
  store i32 %i.kl, ptr %i.hr, align 4
  %i.km = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
  %i.kn = load i32, ptr %i.km, align 8, !noundef !27
  %i.ko = icmp eq i32 %i.kl, %i.kn
  br i1 %i.ko, label %bb.m, label %bb.l, !prof !222

bb.l:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hq)
  store ptr null, ptr %i.hq, align 8
  call void @_ZN4core9panicking13assert_failed17hc1cbb4b42d1dde38E(i8 noundef 0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.hr, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.km, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.hq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1585) #43
  unreachable

bb.m:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit207
  %i.kp = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.kq = load ptr, ptr %i.kp, align 8, !nonnull !27, !align !206, !noundef !27 ; 9 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.ks = load i64, ptr %i.kr, align 8, !noundef !27 ; 8 uses
  %i.kt = icmp samesign eq i64 %i.ks, 0
  br i1 %i.kt, label %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit215, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kq, i64 1 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35633)
  %i.kv = icmp samesign eq i64 %i.ks, 1
  br i1 %i.kv, label %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit215, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val.i.i.i.i.i.pre.i.i208 = load i8, ptr %i.kq, align 1, !alias.scope !35636, !noalias !35641 ; 2 uses
  %i.kw = add i64 %i.ks, -2
  %i.kx = add i64 %i.ks, -1                       ; 2 uses
  %xtraiter1149 = and i64 %i.kx, 3                ; 3 uses
  %i.ky = icmp ult i64 %i.kw, 3
  br i1 %i.ky, label %.epil.preheader1148, label %.new1147

.new1147:                                         ; preds = %bb.o
  %unroll_iter1154 = and i64 %i.kx, -4
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.new1147
  %.val.i.i.i.i.i.i.i209 = phi i8 [ %.val.i.i.i.i.i.pre.i.i208, %.new1147 ], [ %i.lo, %bb.p ] ; 2 uses
  %.sroa.09.0.i.i210 = phi i64 [ 0, %.new1147 ], [ %i.ln, %bb.p ] ; 5 uses
  %.sroa.07.0.i.i211 = phi ptr [ %i.kq, %.new1147 ], [ %.sroa.0.0.i.i.i.i213.3, %bb.p ]
  %niter1155 = phi i64 [ 0, %.new1147 ], [ %niter1155.next.3, %bb.p ]
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ku, i64 %.sroa.09.0.i.i210 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35644)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35645)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35647)
  %.val1.i.i.i.i.i.i.i212 = load i8, ptr %i.kz, align 1, !alias.scope !35641, !noalias !35636, !noundef !27 ; 2 uses
  %i.la = icmp ugt i8 %.val.i.i.i.i.i.i.i209, %.val1.i.i.i.i.i.i.i212
  %.sroa.0.0.i.i.i.i213 = select i1 %i.la, ptr %.sroa.07.0.i.i211, ptr %i.kz
  %i.lb = tail call i8 @llvm.umax.i8(i8 %.val.i.i.i.i.i.i.i209, i8 %.val1.i.i.i.i.i.i.i212) ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ku, i64 %.sroa.09.0.i.i210
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 1 ; 2 uses
  %.val1.i.i.i.i.i.i.i212.1 = load i8, ptr %i.ld, align 1, !alias.scope !35648, !noalias !35651, !noundef !27 ; 2 uses
  %i.le = icmp ugt i8 %i.lb, %.val1.i.i.i.i.i.i.i212.1
  %.sroa.0.0.i.i.i.i213.1 = select i1 %i.le, ptr %.sroa.0.0.i.i.i.i213, ptr %i.ld
  %i.lf = tail call i8 @llvm.umax.i8(i8 %i.lb, i8 %.val1.i.i.i.i.i.i.i212.1) ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ku, i64 %.sroa.09.0.i.i210
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 2 ; 2 uses
  %.val1.i.i.i.i.i.i.i212.2 = load i8, ptr %i.lh, align 1, !alias.scope !35654, !noalias !35657, !noundef !27 ; 2 uses
  %i.li = icmp ugt i8 %i.lf, %.val1.i.i.i.i.i.i.i212.2
  %.sroa.0.0.i.i.i.i213.2 = select i1 %i.li, ptr %.sroa.0.0.i.i.i.i213.1, ptr %i.lh
  %i.lj = tail call i8 @llvm.umax.i8(i8 %i.lf, i8 %.val1.i.i.i.i.i.i.i212.2) ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ku, i64 %.sroa.09.0.i.i210
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 3 ; 2 uses
  %.val1.i.i.i.i.i.i.i212.3 = load i8, ptr %i.ll, align 1, !alias.scope !35660, !noalias !35663, !noundef !27 ; 2 uses
  %i.lm = icmp ugt i8 %i.lj, %.val1.i.i.i.i.i.i.i212.3
  %.sroa.0.0.i.i.i.i213.3 = select i1 %i.lm, ptr %.sroa.0.0.i.i.i.i213.2, ptr %i.ll ; 3 uses
  %i.ln = add nuw i64 %.sroa.09.0.i.i210, 4       ; 2 uses
  %i.lo = tail call i8 @llvm.umax.i8(i8 %i.lj, i8 %.val1.i.i.i.i.i.i.i212.3) ; 2 uses
  %niter1155.next.3 = add nuw i64 %niter1155, 4   ; 2 uses
  %niter1155.ncmp.3 = icmp eq i64 %niter1155.next.3, %unroll_iter1154
  br i1 %niter1155.ncmp.3, label %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit215.loopexit.unr-lcssa, label %bb.p

_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit215.loopexit.unr-lcssa: ; preds = %bb.p
  %lcmp.mod1151.not = icmp eq i64 %xtraiter1149, 0
  br i1 %lcmp.mod1151.not, label %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit215, label %.epil.preheader1148

.epil.preheader1148:                              ; preds = %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit215.loopexit.unr-lcssa, %bb.o
  %.val.i.i.i.i.i.i.i209.epil.init = phi i8 [ %.val.i.i.i.i.i.pre.i.i208, %bb.o ], [ %i.lo, %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit215.loopexit.unr-lcssa ]
  %.sroa.09.0.i.i210.epil.init = phi i64 [ 0, %bb.o ], [ %i.ln, %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit215.loopexit.unr-lcssa ]
  %.sroa.07.0.i.i211.epil.init = phi ptr [ %i.kq, %bb.o ], [ %.sroa.0.0.i.i.i.i213.3, %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit215.loopexit.unr-lcssa ]
  %lcmp.mod1153 = icmp ne i64 %xtraiter1149, 0
  tail call void @llvm.assume(i1 %lcmp.mod1153)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader1148
  %.val.i.i.i.i.i.i.i209.epil = phi i8 [ %.val.i.i.i.i.i.i.i209.epil.init, %.epil.preheader1148 ], [ %i.ls, %bb.q ] ; 2 uses
  %.sroa.09.0.i.i210.epil = phi i64 [ %.sroa.09.0.i.i210.epil.init, %.epil.preheader1148 ], [ %i.lr, %bb.q ] ; 2 uses
  %.sroa.07.0.i.i211.epil = phi ptr [ %.sroa.07.0.i.i211.epil.init, %.epil.preheader1148 ], [ %.sroa.0.0.i.i.i.i213.epil, %bb.q ]
  %epil.iter1150 = phi i64 [ 0, %.epil.preheader1148 ], [ %epil.iter1150.next, %bb.q ]
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ku, i64 %.sroa.09.0.i.i210.epil ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35644)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35645)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35647)
  %.val1.i.i.i.i.i.i.i212.epil = load i8, ptr %i.lp, align 1, !alias.scope !35641, !noalias !35636, !noundef !27 ; 2 uses
  %i.lq = icmp ugt i8 %.val.i.i.i.i.i.i.i209.epil, %.val1.i.i.i.i.i.i.i212.epil
  %.sroa.0.0.i.i.i.i213.epil = select i1 %i.lq, ptr %.sroa.07.0.i.i211.epil, ptr %i.lp ; 2 uses
  %i.lr = add nuw i64 %.sroa.09.0.i.i210.epil, 1
  %i.ls = tail call i8 @llvm.umax.i8(i8 %.val.i.i.i.i.i.i.i209.epil, i8 %.val1.i.i.i.i.i.i.i212.epil)
  %epil.iter1150.next = add i64 %epil.iter1150, 1 ; 2 uses
  %epil.iter1150.cmp.not = icmp eq i64 %epil.iter1150.next, %xtraiter1149
  br i1 %epil.iter1150.cmp.not, label %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit215, label %bb.q, !llvm.loop !35666

_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit215: ; preds = %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit215.loopexit.unr-lcssa, %bb.q, %bb.m, %bb.n
  %.sroa.0.0.i214 = phi ptr [ null, %bb.m ], [ %i.kq, %bb.n ], [ %.sroa.0.0.i.i.i.i213.3, %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit215.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i.i.i213.epil, %bb.q ] ; 2 uses
  %.not165 = icmp eq ptr %.sroa.0.0.i214, null
  %.179 = select i1 %.not165, ptr @706, ptr %.sroa.0.0.i214
  %i.lt = load i8, ptr %.179, align 1, !noundef !27 ; 5 uses
  %i.lu = zext i8 %i.lt to i32
  %i.lv = add nuw nsw i32 %i.lu, 1                ; 2 uses
  store i32 %i.lv, ptr %i.hp, align 4
  %i.lw = getelementptr inbounds nuw i8, ptr %9, i64 128 ; 2 uses
  %i.lx = load i32, ptr %i.lw, align 8, !noundef !27
  %i.ly = icmp eq i32 %i.lv, %i.lx
  br i1 %i.ly, label %bb.s, label %bb.r, !prof !222

bb.r:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ho)
  store ptr null, ptr %i.ho, align 8
  call void @_ZN4core9panicking13assert_failed17hc1cbb4b42d1dde38E(i8 noundef 0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.hp, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.lw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.ho, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1586) #43
  unreachable

bb.s:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator6reduce17h6673a97b21911859E.exit215
  %i.lz = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.ma = load i64, ptr %i.lz, align 8, !noundef !27 ; 4 uses
  %i.mb = icmp ult i64 %i.ma, 16385               ; 2 uses
  br i1 %i.mb, label %bb.t, label %.loopexit353

.loopexit353:                                     ; preds = %.lr.ph.preheader, %middle.block, %bb.t, %bb.s
  %i.mc = getelementptr inbounds nuw i8, ptr %9, i64 144
  %i.md = load i64, ptr %i.mc, align 8, !noundef !27 ; 4 uses
  %i.me = icmp ult i64 %i.md, 16385
  br i1 %i.me, label %bb.u, label %.loopexit352

bb.t:                                             ; preds = %bb.s
  %i.mf = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.mg = load ptr, ptr %i.mf, align 8, !nonnull !27, !align !603, !noundef !27 ; 6 uses
  %.idx = shl nuw nsw i64 %i.ma, 2                ; 3 uses
  %i.mh = getelementptr i8, ptr %i.mg, i64 %.idx  ; 2 uses
  %i.mi = icmp eq i64 %i.ma, 0
  br i1 %i.mi, label %.loopexit353, label %.lr.ph.preheader.preheader

.lr.ph.preheader.preheader:                       ; preds = %bb.t
  %i.mj = add nsw i64 %.idx, -4                   ; 2 uses
  %i.mk = lshr exact i64 %i.mj, 2
  %i.ml = add nuw nsw i64 %i.mk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.mj, 60
  br i1 %min.iters.check, label %.lr.ph.preheader.preheader1135, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.preheader
  %i.mm = add nsw i64 %.idx, -4
  %i.mn = lshr exact i64 %i.mm, 2
  %i.mo = getelementptr i8, ptr %i.hv, i64 %i.mn
  %scevgep986 = getelementptr i8, ptr %i.mo, i64 1
  %bound0 = icmp ult ptr %i.hv, %i.mh
  %bound1 = icmp ult ptr %i.mg, %scevgep986
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader.preheader1135, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ml, 9223372036854775800     ; 4 uses
  %i.mp = shl i64 %n.vec, 2
  %i.mq = getelementptr i8, ptr %i.mg, i64 %i.mp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.mr = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.mg, i64 %i.mr ; 2 uses
  %i.ms = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !alias.scope !35667
  %wide.load987 = load <4 x i32>, ptr %i.ms, align 4, !alias.scope !35667
  %i.mt = getelementptr inbounds nuw i8, ptr %i.hv, i64 %index ; 2 uses
  %i.mu = trunc <4 x i32> %wide.load to <4 x i8>
  %i.mv = trunc <4 x i32> %wide.load987 to <4 x i8>
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mt, i64 4
  store <4 x i8> %i.mu, ptr %i.mt, align 1, !alias.scope !35670, !noalias !35667
  store <4 x i8> %i.mv, ptr %i.mw, align 1, !alias.scope !35670, !noalias !35667
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.mx = icmp eq i64 %index.next, %n.vec
  br i1 %i.mx, label %middle.block, label %vector.body, !llvm.loop !35672

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ml, %n.vec
  br i1 %cmp.n, label %.loopexit353, label %.lr.ph.preheader.preheader1135

.lr.ph.preheader.preheader1135:                   ; preds = %vector.memcheck, %.lr.ph.preheader.preheader, %middle.block
  %.sroa.0.0455.ph = phi ptr [ %i.mg, %vector.memcheck ], [ %i.mg, %.lr.ph.preheader.preheader ], [ %i.mq, %middle.block ]
  %.sroa.7.0454.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.preheader

.loopexit352:                                     ; preds = %.lr.ph458.preheader, %middle.block1005, %bb.u, %.loopexit353
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hn)
  br i1 %i.mb, label %bb.w, label %bb.v, !prof !222

bb.u:                                             ; preds = %.loopexit353
  %i.my = getelementptr inbounds nuw i8, ptr %9, i64 136
  %i.mz = load ptr, ptr %i.my, align 8, !nonnull !27, !align !603, !noundef !27 ; 6 uses
  %.idx460 = shl nuw nsw i64 %i.md, 2             ; 3 uses
  %i.na = getelementptr i8, ptr %i.mz, i64 %.idx460 ; 2 uses
  %i.nb = icmp eq i64 %i.md, 0
  br i1 %i.nb, label %.loopexit352, label %.lr.ph458.preheader.preheader

.lr.ph458.preheader.preheader:                    ; preds = %bb.u
  %i.nc = add nsw i64 %.idx460, -4                ; 2 uses
  %i.nd = lshr exact i64 %i.nc, 2
  %i.ne = add nuw nsw i64 %i.nd, 1                ; 2 uses
  %min.iters.check996 = icmp ult i64 %i.nc, 60
  br i1 %min.iters.check996, label %.lr.ph458.preheader.preheader1134, label %vector.memcheck989

vector.memcheck989:                               ; preds = %.lr.ph458.preheader.preheader
  %scevgep990 = getelementptr inbounds nuw i8, ptr %i.hu, i64 8208
  %i.nf = add nsw i64 %.idx460, -4
  %i.ng = lshr exact i64 %i.nf, 2
  %i.nh = getelementptr i8, ptr %i.hu, i64 %i.ng
  %scevgep991 = getelementptr i8, ptr %i.nh, i64 8209
  %bound0992 = icmp ult ptr %scevgep990, %i.na
  %bound1993 = icmp ult ptr %i.mz, %scevgep991
  %found.conflict994 = and i1 %bound0992, %bound1993
  br i1 %found.conflict994, label %.lr.ph458.preheader.preheader1134, label %vector.ph997

vector.ph997:                                     ; preds = %vector.memcheck989
  %n.vec998 = and i64 %i.ne, 9223372036854775800  ; 4 uses
  %i.ni = shl i64 %n.vec998, 2
  %i.nj = getelementptr i8, ptr %i.mz, i64 %i.ni
  br label %vector.body999

vector.body999:                                   ; preds = %vector.body999, %vector.ph997
  %index1000 = phi i64 [ 0, %vector.ph997 ], [ %index.next1004, %vector.body999 ] ; 3 uses
  %i.nk = shl i64 %index1000, 2
  %next.gep1001 = getelementptr i8, ptr %i.mz, i64 %i.nk ; 2 uses
  %i.nl = getelementptr i8, ptr %next.gep1001, i64 16
  %wide.load1002 = load <4 x i32>, ptr %next.gep1001, align 4, !alias.scope !35673
  %wide.load1003 = load <4 x i32>, ptr %i.nl, align 4, !alias.scope !35673
  %i.nm = getelementptr inbounds nuw i8, ptr %i.hu, i64 %index1000 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 8208
  %i.no = trunc <4 x i32> %wide.load1002 to <4 x i8>
  %i.np = trunc <4 x i32> %wide.load1003 to <4 x i8>
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nm, i64 8212
  store <4 x i8> %i.no, ptr %i.nn, align 1, !alias.scope !35676, !noalias !35673
  store <4 x i8> %i.np, ptr %i.nq, align 1, !alias.scope !35676, !noalias !35673
  %index.next1004 = add nuw i64 %index1000, 8     ; 2 uses
  %i.nr = icmp eq i64 %index.next1004, %n.vec998
  br i1 %i.nr, label %middle.block1005, label %vector.body999, !llvm.loop !35678

middle.block1005:                                 ; preds = %vector.body999
  %cmp.n1006 = icmp eq i64 %i.ne, %n.vec998
  br i1 %cmp.n1006, label %.loopexit352, label %.lr.ph458.preheader.preheader1134

.lr.ph458.preheader.preheader1134:                ; preds = %vector.memcheck989, %.lr.ph458.preheader.preheader, %middle.block1005
  %.sroa.01.0457.ph = phi ptr [ %i.mz, %vector.memcheck989 ], [ %i.mz, %.lr.ph458.preheader.preheader ], [ %i.nj, %middle.block1005 ]
  %.sroa.73.0456.ph = phi i64 [ 0, %vector.memcheck989 ], [ 0, %.lr.ph458.preheader.preheader ], [ %n.vec998, %middle.block1005 ]
  br label %.lr.ph458.preheader

bb.v:                                             ; preds = %.loopexit352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hd)
  store ptr @186, ptr %i.hd, align 8
  %i.ns = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  store i64 1, ptr %i.ns, align 8
  %i.nt = getelementptr inbounds nuw i8, ptr %i.hd, i64 32
  store ptr null, ptr %i.nt, align 8
  %i.nu = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.nu, align 8
  %i.nv = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  store i64 0, ptr %i.nv, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.hd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1587) #43
  unreachable

bb.w:                                             ; preds = %.loopexit352
end_hunk_11
begin_hunk_12_@_ZN6brotli3enc17brotli_bit_stream12LogMetaBlock17h8d6ec10e9474062aE:bb.a
  %i.brr = fadd float %i.bqp, 6.000000e+00        ; 3 uses
  %i.brs = fcmp olt float %i.brr, %i.brl
  %i.brt = fcmp olt float %i.brr, %i.bqn
  %or.cond3.i = and i1 %i.brt, %i.brs
  %i.bru = fcmp olt float %i.brr, %i.bqs
  %or.cond4.i = and i1 %i.bru, %or.cond3.i
  br i1 %or.cond4.i, label %bb.ov, label %bb.ou

bb.ot:                                            ; preds = %.lr.ph.i824
  %i.brv = icmp samesign ult i64 %.sroa.7.039.i, 8192
  br i1 %i.brv, label %bb.pf, label %.invoke845

bb.ou:                                            ; preds = %bb.os
  %i.brw = fadd float %i.bqs, 6.000000e+00        ; 2 uses
  %i.brx = fcmp olt float %i.brw, %i.brl
  %i.bry = fcmp olt float %i.brw, %i.bqn
  %or.cond5.i826 = and i1 %i.bry, %i.brx
  br i1 %or.cond5.i826, label %bb.ox, label %bb.ow

bb.ov:                                            ; preds = %bb.os
  %i.brz = icmp samesign ult i64 %.sroa.7.039.i, 8192
  br i1 %i.brz, label %bb.pc, label %.invoke845

bb.ow:                                            ; preds = %bb.ou
  %i.bsa = fadd float %i.brl, 6.000000e+00
  %i.bsb = fcmp olt float %i.bsa, %i.bqn
  %i.bsc = icmp samesign ult i64 %.sroa.7.039.i, 8192 ; 2 uses
  br i1 %i.bsb, label %bb.oz, label %bb.oy

bb.ox:                                            ; preds = %bb.ou
  %i.bsd = icmp samesign ult i64 %.sroa.7.039.i, 8192
  br i1 %i.bsd, label %bb.pb, label %.invoke845

bb.oy:                                            ; preds = %bb.ow
  br i1 %i.bsc, label %bb.pa, label %.invoke845

bb.oz:                                            ; preds = %bb.ow
  br i1 %i.bsc, label %condstore.split.i, label %.invoke845

bb.pa:                                            ; preds = %bb.oy
  %i.bse = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.7.039.i
  store i8 0, ptr %i.bse, align 1, !noalias !36162
  br label %bb.pe

condstore.split.i:                                ; preds = %bb.oz
  %i.bsf = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.7.039.i ; 2 uses
  %i.bsg = icmp eq i64 %.sroa.0.0.i25.i, %i.brg
  %spec.store.select.i = select i1 %i.bsg, i8 7, i8 4 ; 2 uses
  store i8 %spec.store.select.i, ptr %i.bsf, align 1, !noalias !36162
  %i.bsh = icmp eq i64 %.sroa.0.0.i25.i, %i.brf
  %i.bsi = icmp eq i64 %.sroa.0.0.i25.i, %i.bre   ; 2 uses
  %i.bsj = or i1 %i.bsh, %i.bsi
  %i.bsk = icmp ule i64 %i.brd, %.sroa.0.0.i24.i  ; 2 uses
  %i.bsl = or i1 %i.bsk, %i.bsj
  br i1 %i.bsl, label %bb.pd, label %bb.pe

bb.pb:                                            ; preds = %bb.ox
  %i.bsm = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.7.039.i
  store i8 3, ptr %i.bsm, align 1, !noalias !36162
  br label %bb.pe

bb.pc:                                            ; preds = %bb.ov
  %i.bsn = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.7.039.i
  store i8 2, ptr %i.bsn, align 1, !noalias !36162
  br label %bb.pe

bb.pd:                                            ; preds = %condstore.split.i
  %spec.select.i = select i1 %i.bsi, i8 5, i8 6
  %spec.select16.i = select i1 %i.bsk, i8 4, i8 %spec.select.i ; 2 uses
  store i8 %spec.select16.i, ptr %i.bsf, align 1, !noalias !36162
  br label %bb.pe

bb.pe:                                            ; preds = %bb.pf, %bb.pd, %bb.pc, %bb.pb, %condstore.split.i, %bb.pa
  %i.bso = phi i8 [ %spec.select16.i, %bb.pd ], [ %spec.store.select.i, %condstore.split.i ], [ 2, %bb.pc ], [ 0, %bb.pa ], [ 3, %bb.pb ], [ 1, %bb.pf ] ; 2 uses
  %i.bsp = icmp eq i64 %.sroa.0.0.i25.i, 0
  br i1 %i.bsp, label %bb.pg, label %bb.pi

bb.pf:                                            ; preds = %bb.ot
  %i.bsq = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.7.039.i
  store i8 1, ptr %i.bsq, align 1, !noalias !36162
  br label %bb.pe

bb.pg:                                            ; preds = %bb.pe
  %i.bsr = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.7.039.i
  store i8 %.sroa.06.041.i, ptr %i.bsr, align 1, !noalias !36162
  br label %bb.ph

bb.ph:                                            ; preds = %bb.pi, %bb.pg
  %.sroa.06.1.i = phi i8 [ %.sroa.06.041.i, %bb.pg ], [ %spec.select17.i, %bb.pi ]
  %.sroa.0.1.i827 = phi i32 [ %.sroa.0.042.i, %bb.pg ], [ %spec.select18.i, %bb.pi ]
  %i.bss = icmp eq ptr %i.bql, %i.bqj
  br i1 %i.bss, label %._crit_edge.i828, label %.lr.ph.i824

bb.pi:                                            ; preds = %bb.pe
  %i.bst = zext nneg i8 %i.bso to i64
  %i.bsu = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.bst ; 2 uses
  %i.bsv = load i32, ptr %i.bsu, align 4, !noalias !36162, !noundef !27
  %i.bsw = add i32 %i.bsv, 1                      ; 3 uses
  store i32 %i.bsw, ptr %i.bsu, align 4, !noalias !36162
  %i.bsx = icmp ugt i32 %i.bsw, %.sroa.0.042.i
  %spec.select17.i = select i1 %i.bsx, i8 %i.bso, i8 %.sroa.06.041.i
  %spec.select18.i = call i32 @llvm.umax.i32(i32 %i.bsw, i32 %.sroa.0.042.i)
  br label %bb.ph

"_ZN6brotli3enc10prior_eval22PriorEval$LT$Alloc$GT$14choose_bitmask17h5b45d79d60bf73beE.exit": ; preds = %._crit_edge.i828
  %.val20.i = load ptr, ptr %.sroa.0.i.sroa.17.0..sroa_idx, align 8, !alias.scope !36162, !nonnull !27, !align !206, !noundef !27
  %i.bsy = getelementptr inbounds nuw i8, ptr %.val20.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(8192) %i.bsy, ptr noundef nonnull readonly align 1 dereferenceable(8192) %i.an, i64 8192, i1 false), !alias.scope !36165, !noalias !36169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !36162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !36162
  br label %bb.or

"_ZN6brotli3enc10prior_eval22PriorEval$LT$Alloc$GT$4free17h4d63e47e14daabf5E.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i14.i", %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h906a7d13e30b1e92E.exit13.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hg)
  %i.bsz = getelementptr inbounds nuw i8, ptr %10, i64 93
  %i.bta = load i8, ptr %i.bsz, align 1, !noundef !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0163)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8176)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0163, ptr noundef nonnull align 8 dereferenceable(96) %i.hk, i64 96, i1 false)
  %.sroa.4164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hk, i64 96
  %.sroa.4164.0.copyload = load ptr, ptr %.sroa.4164.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hk, i64 104
  %.sroa.5167.0.copyload = load i64, ptr %.sroa.5167.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hk, i64 112
  %.sroa.6170.0.copyload = load ptr, ptr %.sroa.6170.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hk, i64 120
  %.sroa.7173.0.copyload = load i64, ptr %.sroa.7173.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hk, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(792) %.sroa.8176, ptr noundef nonnull align 8 dereferenceable(792) %.sroa.8176.0..sroa_idx, i64 792, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.he)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %i.he, ptr noundef nonnull align 8 dereferenceable(376) %i.hm, i64 376, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !36171)
  call void @llvm.experimental.noalias.scope.decl(metadata !36174)
  call void @llvm.experimental.noalias.scope.decl(metadata !36176)
  call void @llvm.experimental.noalias.scope.decl(metadata !36178)
  call void @llvm.experimental.noalias.scope.decl(metadata !36180)
  %i.btb = mul i64 %2, 17                         ; 2 uses
  %i.btc = lshr i64 %i.btb, 4                     ; 3 uses
  %i.btd = add nuw nsw i64 %i.btc, 4              ; 2 uses
  %i.bte = mul i64 %i.btd, 40                     ; 3 uses
  %or.cond.i.i.i.i.i.i = icmp ugt i64 %i.btb, 3689348814741910271
  br i1 %or.cond.i.i.i.i.i.i, label %bb.pk, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %"_ZN6brotli3enc10prior_eval22PriorEval$LT$Alloc$GT$4free17h4d63e47e14daabf5E.exit"
  %i.btf = icmp ne i64 %i.bte, 0                  ; 2 uses
  br i1 %i.btf, label %bb.pj, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9d026597d16c7572E.exit.i.i.i.i"

bb.pj:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !36182
  %i.btg = call noundef ptr @mi_malloc_aligned(i64 noundef %i.bte, i64 noundef range(i64 1, 9) 8) #38, !noalias !36182 ; 2 uses
  %i.bth = icmp eq ptr %i.btg, null
  br i1 %i.bth, label %bb.pk, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9d026597d16c7572E.exit.i.i.i.i"

bb.pk:                                            ; preds = %bb.pj, %"_ZN6brotli3enc10prior_eval22PriorEval$LT$Alloc$GT$4free17h4d63e47e14daabf5E.exit"
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %bb.pj ], [ 0, %"_ZN6brotli3enc10prior_eval22PriorEval$LT$Alloc$GT$4free17h4d63e47e14daabf5E.exit" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.bte, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc.i835 unwind label %bb.pl, !noalias !36193

.noexc.i835:                                      ; preds = %bb.pk
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9d026597d16c7572E.exit.i.i.i.i": ; preds = %bb.pj, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.btg, %bb.pj ] ; 3 uses
  call void @llvm.assume(i1 %i.btf)
  %i.bti = add nuw nsw i64 %i.btc, 3              ; 2 uses
  %xtraiter1179 = and i64 %i.bti, 3               ; 3 uses
  %i.btj = icmp eq i64 %i.btc, 0
  br i1 %i.btj, label %"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i.i.epil.preheader", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9d026597d16c7572E.exit.i.i.i.i.new"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9d026597d16c7572E.exit.i.i.i.i.new": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9d026597d16c7572E.exit.i.i.i.i"
  %unroll_iter1185 = and i64 %i.bti, 576460752303423484
  br label %"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i.i"

"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i.i": ; preds = %"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9d026597d16c7572E.exit.i.i.i.i.new"
  %.sroa.0.018.i.i.i.i = phi ptr [ %.sroa.10.0.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9d026597d16c7572E.exit.i.i.i.i.new" ], [ %i.btn, %"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i.i" ] ; 14 uses
  %niter1186 = phi i64 [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9d026597d16c7572E.exit.i.i.i.i.new" ], [ %niter1186.next.3, %"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i.i" ]
  store i8 0, ptr %.sroa.0.018.i.i.i.i, align 8, !noalias !36194
  %.sroa.87.0..sroa.0.0.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i, i64 4
  store i64 1, ptr %.sroa.87.0..sroa.0.0.sroa_idx.i.i.i.i, align 4, !noalias !36194
  %.sroa.1510.0..sroa.0.0.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i, i64 24
  store i64 0, ptr %.sroa.1510.0..sroa.0.0.sroa_idx.i.i.i.i, align 8, !noalias !36194
  %i.btk = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i, i64 40
  store i8 0, ptr %i.btk, align 8, !noalias !36194
  %.sroa.87.0..sroa.0.0.sroa_idx.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i, i64 44
  store i64 1, ptr %.sroa.87.0..sroa.0.0.sroa_idx.i.i.i.i.1, align 4, !noalias !36194
  %.sroa.1510.0..sroa.0.0.sroa_idx.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i, i64 64
  store i64 0, ptr %.sroa.1510.0..sroa.0.0.sroa_idx.i.i.i.i.1, align 8, !noalias !36194
  %i.btl = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i, i64 80
  store i8 0, ptr %i.btl, align 8, !noalias !36194
  %.sroa.87.0..sroa.0.0.sroa_idx.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i, i64 84
  store i64 1, ptr %.sroa.87.0..sroa.0.0.sroa_idx.i.i.i.i.2, align 4, !noalias !36194
  %.sroa.1510.0..sroa.0.0.sroa_idx.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i, i64 104
  store i64 0, ptr %.sroa.1510.0..sroa.0.0.sroa_idx.i.i.i.i.2, align 8, !noalias !36194
  %i.btm = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i, i64 120
  store i8 0, ptr %i.btm, align 8, !noalias !36194
  %.sroa.87.0..sroa.0.0.sroa_idx.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i, i64 124
  store i64 1, ptr %.sroa.87.0..sroa.0.0.sroa_idx.i.i.i.i.3, align 4, !noalias !36194
  %.sroa.1510.0..sroa.0.0.sroa_idx.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i, i64 144
  store i64 0, ptr %.sroa.1510.0..sroa.0.0.sroa_idx.i.i.i.i.3, align 8, !noalias !36194
  %i.btn = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i, i64 160 ; 3 uses
  %niter1186.next.3 = add nuw i64 %niter1186, 4   ; 2 uses
  %niter1186.ncmp.3 = icmp eq i64 %niter1186.next.3, %unroll_iter1185
  br i1 %niter1186.ncmp.3, label %.unr-lcssa, label %"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i.i"

bb.pl:                                            ; preds = %bb.pk
  %i.bto = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call fastcc void @"_ZN4core3ptr107drop_in_place$LT$brotli..enc..find_stride..EntropyPyramid$LT$alloc_stdlib..std_alloc..StandardAlloc$GT$$GT$17h6f7ab5793428619cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(376) %i.he) #44, !noalias !36198
  call fastcc void @"_ZN4core3ptr105drop_in_place$LT$brotli..enc..find_stride..EntropyTally$LT$alloc_stdlib..std_alloc..StandardAlloc$GT$$GT$17hf17df843c6014837E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(192) %i.hf) #44
  %i.btp = icmp eq i64 %.sroa.9149.0, 0
  br i1 %i.btp, label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i": ; preds = %bb.pl
  call void @mi_free(ptr noundef nonnull align 1 %.sroa.0148.0) #38, !noalias !36199
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit.i"

"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i", %bb.pl
  %i.btq = icmp eq i64 %.sroa.5167.0.copyload, 0
  br i1 %i.btq, label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.i1022", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i1021"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i1021": ; preds = %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4164.0.copyload) ]
  call void @mi_free(ptr noundef nonnull %.sroa.4164.0.copyload) #38, !noalias !36200
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.i1022"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.i1022": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i1021", %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit.i"
  %i.btr = icmp eq i64 %.sroa.7173.0.copyload, 0
  br i1 %i.btr, label %.body642.thread716, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i8.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i8.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.i1022"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6170.0.copyload) ]
  call void @mi_free(ptr noundef nonnull %.sroa.6170.0.copyload) #38, !noalias !36200
  br label %.body642.thread716

.unr-lcssa:                                       ; preds = %"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i.i"
  %i.bts = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i, i64 120
  %lcmp.mod1181.not = icmp eq i64 %xtraiter1179, 0
  br i1 %lcmp.mod1181.not, label %.epilog-lcssa, label %"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i.i.epil.preheader"

"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i.i.epil.preheader": ; preds = %.unr-lcssa, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9d026597d16c7572E.exit.i.i.i.i"
  %.sroa.0.018.i.i.i.i.epil.init = phi ptr [ %.sroa.10.0.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9d026597d16c7572E.exit.i.i.i.i" ], [ %i.btn, %.unr-lcssa ]
  %lcmp.mod1184 = icmp ne i64 %xtraiter1179, 0
  call void @llvm.assume(i1 %lcmp.mod1184)
  br label %"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i.i.epil"

"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i.i.epil": ; preds = %"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i.i.epil", %"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i.i.epil.preheader"
  %.sroa.0.018.i.i.i.i.epil = phi ptr [ %i.btt, %"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i.i.epil" ], [ %.sroa.0.018.i.i.i.i.epil.init, %"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i.i.epil.preheader" ] ; 5 uses
  %epil.iter1180 = phi i64 [ %epil.iter1180.next, %"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i.i.epil" ], [ 0, %"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i.i.epil.preheader" ]
  store i8 0, ptr %.sroa.0.018.i.i.i.i.epil, align 8, !noalias !36194
  %.sroa.87.0..sroa.0.0.sroa_idx.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i.epil, i64 4
  store i64 1, ptr %.sroa.87.0..sroa.0.0.sroa_idx.i.i.i.i.epil, align 4, !noalias !36194
  %.sroa.1510.0..sroa.0.0.sroa_idx.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i.epil, i64 24
  store i64 0, ptr %.sroa.1510.0..sroa.0.0.sroa_idx.i.i.i.i.epil, align 8, !noalias !36194
  %i.btt = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i.epil, i64 40 ; 2 uses
  %epil.iter1180.next = add i64 %epil.iter1180, 1 ; 2 uses
  %epil.iter1180.cmp.not = icmp eq i64 %epil.iter1180.next, %xtraiter1179
  br i1 %epil.iter1180.cmp.not, label %.epilog-lcssa, label %"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i.i.epil", !llvm.loop !36203

.epilog-lcssa:                                    ; preds = %"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i.i.epil", %.unr-lcssa
  %.sroa.0.018.i.i.i.i.lcssa = phi ptr [ %i.bts, %.unr-lcssa ], [ %.sroa.0.018.i.i.i.i.epil, %"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i.i.epil" ]
  %.lcssa1051 = phi ptr [ %i.btn, %.unr-lcssa ], [ %i.btt, %"_ZN87_$LT$brotli..enc..interface..Command$LT$SliceType$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6620140140d948a1E.exit.i.i.i.i.epil" ]
  store i8 0, ptr %.lcssa1051, align 8, !noalias !36204
  %.sroa.75.0..sroa.0.0.lcssa29.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i.lcssa, i64 44
  store i64 1, ptr %.sroa.75.0..sroa.0.0.lcssa29.i.sroa_idx.i.i.i, align 4, !noalias !36204
  %i.btu = getelementptr inbounds nuw i8, ptr %i.hg, i64 192
  store ptr %3, ptr %i.btu, align 8, !alias.scope !36205, !noalias !36206
  %.sroa.4233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hg, i64 200
  store i64 %4, ptr %.sroa.4233.0..sroa_idx, align 8, !alias.scope !36205, !noalias !36206
  %.sroa.5234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hg, i64 208
  store i64 0, ptr %.sroa.5234.0..sroa_idx, align 8, !alias.scope !36205, !noalias !36206
  %.sroa.6235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hg, i64 216
  store ptr %5, ptr %.sroa.6235.0..sroa_idx, align 8, !alias.scope !36205, !noalias !36206
  %.sroa.7236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hg, i64 224
  store i64 %6, ptr %.sroa.7236.0..sroa_idx, align 8, !alias.scope !36205, !noalias !36206
  %.sroa.8237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hg, i64 232
  store i64 %4, ptr %.sroa.8237.0..sroa_idx, align 8, !alias.scope !36205, !noalias !36206
  %i.btv = getelementptr inbounds nuw i8, ptr %i.hg, i64 320
  store i64 0, ptr %i.btv, align 8, !alias.scope !36171, !noalias !36207
  %i.btw = getelementptr inbounds nuw i8, ptr %i.hg, i64 1640
  store ptr %0, ptr %i.btw, align 8, !alias.scope !36171, !noalias !36207
  %i.btx = getelementptr inbounds nuw i8, ptr %i.hg, i64 288 ; 3 uses
  store ptr %.sroa.10.0.i.i.i.i, ptr %i.btx, align 8, !alias.scope !36171, !noalias !36207
  %i.bty = getelementptr inbounds nuw i8, ptr %i.hg, i64 296 ; 4 uses
  store i64 %i.btd, ptr %i.bty, align 8, !alias.scope !36171, !noalias !36207
  %i.btz = getelementptr inbounds nuw i8, ptr %i.hg, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.btz, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.hh, i64 48, i1 false), !alias.scope !36208, !noalias !36209
  %i.bua = getelementptr inbounds nuw i8, ptr %i.hg, i64 328 ; 3 uses
  store i64 0, ptr %i.bua, align 8, !alias.scope !36171, !noalias !36207
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.hg, ptr noundef nonnull align 8 dereferenceable(192) %i.hf, i64 192, i1 false)
  %i.bub = getelementptr inbounds nuw i8, ptr %i.hg, i64 304 ; 3 uses
  store ptr %.sroa.0148.0, ptr %i.bub, align 8, !alias.scope !36171, !noalias !36207
  %i.buc = getelementptr inbounds nuw i8, ptr %i.hg, i64 312 ; 3 uses
  store i64 %.sroa.9149.0, ptr %i.buc, align 8, !alias.scope !36171, !noalias !36207
  %i.bud = getelementptr inbounds nuw i8, ptr %i.hg, i64 1264 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %i.bud, ptr noundef nonnull readonly align 8 dereferenceable(376) %i.he, i64 376, i1 false), !alias.scope !36210, !noalias !36211
  %i.bue = getelementptr inbounds nuw i8, ptr %i.hg, i64 344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bue, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0163, i64 96, i1 false), !alias.scope !36212, !noalias !36213
  %.sroa.4164.0..sroa_idx165 = getelementptr inbounds nuw i8, ptr %i.hg, i64 440 ; 3 uses
  store ptr %.sroa.4164.0.copyload, ptr %.sroa.4164.0..sroa_idx165, align 8, !alias.scope !36212, !noalias !36213
  %.sroa.5167.0..sroa_idx168 = getelementptr inbounds nuw i8, ptr %i.hg, i64 448 ; 3 uses
  store i64 %.sroa.5167.0.copyload, ptr %.sroa.5167.0..sroa_idx168, align 8, !alias.scope !36212, !noalias !36213
  %.sroa.6170.0..sroa_idx171 = getelementptr inbounds nuw i8, ptr %i.hg, i64 456 ; 3 uses
  store ptr %.sroa.6170.0.copyload, ptr %.sroa.6170.0..sroa_idx171, align 8, !alias.scope !36212, !noalias !36213
  %.sroa.7173.0..sroa_idx174 = getelementptr inbounds nuw i8, ptr %i.hg, i64 464 ; 3 uses
  store i64 %.sroa.7173.0.copyload, ptr %.sroa.7173.0..sroa_idx174, align 8, !alias.scope !36212, !noalias !36213
  %.sroa.8176.0..sroa_idx177 = getelementptr inbounds nuw i8, ptr %i.hg, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(792) %.sroa.8176.0..sroa_idx177, ptr noundef nonnull align 8 dereferenceable(792) %.sroa.8176, i64 792, i1 false), !alias.scope !36212, !noalias !36213
  %i.buf = getelementptr inbounds nuw i8, ptr %i.hg, i64 1648
  store i8 %i.ov, ptr %i.buf, align 8, !alias.scope !36171, !noalias !36207
  %i.bug = getelementptr inbounds nuw i8, ptr %i.hg, i64 1649
  store i8 %i.bta, ptr %i.bug, align 1, !alias.scope !36171, !noalias !36207
  %i.buh = getelementptr inbounds nuw i8, ptr %i.hg, i64 1650 ; 2 uses
  store i8 0, ptr %i.buh, align 2, !alias.scope !36171, !noalias !36207
  %i.bui = getelementptr inbounds nuw i8, ptr %i.hg, i64 336
  store i64 0, ptr %i.bui, align 8, !alias.scope !36171, !noalias !36207
  %i.buj = getelementptr inbounds nuw i8, ptr %i.hg, i64 1651 ; 2 uses
  store i8 0, ptr %i.buj, align 1, !alias.scope !36171, !noalias !36207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.he)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0163)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8176)
  %i.buk = load i64, ptr %8, align 8, !noundef !27 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36214)
  call void @llvm.experimental.noalias.scope.decl(metadata !36217)
  call void @llvm.experimental.noalias.scope.decl(metadata !36219)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !36221
  store ptr %3, ptr %i.am, align 8, !noalias !36225
  %.sroa.973.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %4, ptr %.sroa.973.0..sroa_idx86, align 8, !noalias !36225
  %.sroa.1188.0..sroa_idx101 = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 0, ptr %.sroa.1188.0..sroa_idx101, align 8, !noalias !36225
  %.sroa.12103.0..sroa_idx116 = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr %5, ptr %.sroa.12103.0..sroa_idx116, align 8, !noalias !36225
  %.sroa.13118.0..sroa_idx131 = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store i64 %6, ptr %.sroa.13118.0..sroa_idx131, align 8, !noalias !36225
  %.sroa.15133.0..sroa_idx146 = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store i64 %4, ptr %.sroa.15133.0..sroa_idx146, align 8, !noalias !36225
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.w, ptr noundef nonnull readonly align 4 dereferenceable(16) %7, i64 16, i1 false), !noalias !36226
  %i.bul = icmp eq i8 %i.iz, 0
  br i1 %i.bul, label %bb.pn, label %bb.pm

bb.pm:                                            ; preds = %.epilog-lcssa
  %i.bum = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.bun = load i64, ptr %i.bum, align 8, !alias.scope !36217, !noalias !36227, !noundef !27
  %.not.i838 = icmp eq i64 %i.bun, 0
  br i1 %.not.i838, label %.invoke858, label %bb.po

bb.pn:                                            ; preds = %bb.po, %.epilog-lcssa
  %.sroa.016.0.i839 = phi i32 [ %i.bur, %bb.po ], [ -2147483648, %.epilog-lcssa ]
  %i.buo = icmp eq i8 %i.kj, 0
  br i1 %i.buo, label %bb.pq, label %bb.pp

bb.po:                                            ; preds = %bb.pm
  %i.bup = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.buq = load ptr, ptr %i.bup, align 8, !alias.scope !36217, !noalias !36227, !nonnull !27, !align !603, !noundef !27
  %i.bur = load i32, ptr %i.buq, align 4, !noalias !36228, !noundef !27
  br label %bb.pn

.invoke858:                                       ; preds = %bb.sg, %bb.rz, %bb.pw, %bb.sm, %bb.ql, %bb.ps, %bb.pp, %bb.pm
  %i.bus = phi i64 [ %i.byz, %bb.ql ], [ 0, %bb.pm ], [ 0, %bb.pp ], [ 0, %bb.ps ], [ %i.cct, %bb.sm ], [ %i.bye, %bb.pw ], [ %i.cbt, %bb.rz ], [ %i.ccl, %bb.sg ]
  %i.but = phi i64 [ %i.bvz, %bb.ql ], [ 0, %bb.pm ], [ 0, %bb.pp ], [ 0, %bb.ps ], [ %i.bvz, %bb.sm ], [ 4, %bb.pw ], [ %i.bww, %bb.rz ], [ %i.bxb, %bb.sg ]
  %i.buu = phi ptr [ @1627, %bb.ql ], [ @1609, %bb.pm ], [ @1610, %bb.pp ], [ @1611, %bb.ps ], [ @1627, %bb.sm ], [ @1612, %bb.pw ], [ @1624, %bb.rz ], [ @1625, %bb.sg ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bus, i64 noundef %i.but, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.buu) #43
          to label %.cont859 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont859:                                         ; preds = %.invoke858
  unreachable

bb.pp:                                            ; preds = %bb.pn
  %i.buv = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.buw = load i64, ptr %i.buv, align 8, !alias.scope !36217, !noalias !36227, !noundef !27
  %.not105.i840 = icmp eq i64 %i.buw, 0
  br i1 %.not105.i840, label %.invoke858, label %bb.pr

bb.pq:                                            ; preds = %bb.pr, %bb.pn
  %.sroa.019.0.i841 = phi i32 [ %i.bva, %bb.pr ], [ -2147483648, %bb.pn ]
  %i.bux = icmp eq i8 %i.lt, 0
  br i1 %i.bux, label %bb.pt, label %bb.ps

bb.pr:                                            ; preds = %bb.pp
  %i.buy = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.buz = load ptr, ptr %i.buy, align 8, !alias.scope !36217, !noalias !36227, !nonnull !27, !align !603, !noundef !27
  %i.bva = load i32, ptr %i.buz, align 4, !noalias !36228, !noundef !27
  br label %bb.pq

bb.ps:                                            ; preds = %bb.pq
  %i.bvb = getelementptr inbounds nuw i8, ptr %9, i64 120
  %i.bvc = load i64, ptr %i.bvb, align 8, !alias.scope !36217, !noalias !36227, !noundef !27
  %.not106.i842 = icmp eq i64 %i.bvc, 0
  br i1 %.not106.i842, label %.invoke858, label %bb.pu

bb.pt:                                            ; preds = %bb.pu, %bb.pq
  %.sroa.021.0.i843 = phi i32 [ %i.bxk, %bb.pu ], [ -2147483648, %bb.pq ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !36229
  %i.bvd = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store i8 0, ptr %i.bvd, align 1, !noalias !36229
  %i.bve = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  store i8 0, ptr %i.bve, align 2, !noalias !36229
  store i8 4, ptr %i.r, align 8, !noalias !36229
  invoke fastcc void @"_ZN118_$LT$brotli..enc..brotli_bit_stream..CommandQueue$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hd3f81be25cf7c6bdE"(ptr noalias noundef nonnull align 8 dereferenceable(1656) %i.hg, ptr noalias noundef readonly align 8 captures(address) dereferenceable(56) %i.r)
end_hunk_12
begin_hunk_13_@_ZN6brotli3enc19backward_references30BrotliCreateBackwardReferences17hda9e5271d10c6767E:bb.a
  %i.dxu = add i64 %.sroa.05.09.i.i.i, 8          ; 2 uses
  %i.dxv = icmp ult i64 %i.dxu, %spec.select.i.i.i
  br i1 %i.dxv, label %.lr.ph.i.i.i558, label %.loopexit.i.i.i

.lr.ph11.i.i.i:                                   ; preds = %.loopexit.i.i.i, %.noexc57.i.i
  %.sroa.0.110.i.i.i = phi i64 [ %i.dxx, %.noexc57.i.i ], [ %spec.select.i.i.i, %.loopexit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !37415
  store i64 0, ptr %i.o, align 8, !noalias !37415
  %i.dxw = invoke fastcc noundef i64 @_ZN6brotli3enc19backward_references19hash_to_binary_tree22StoreAndFindMatchesH1017h1a8db7e0f3094503E(ptr noalias noundef nonnull readonly align 8 dereferenceable(104) %i.dtw, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %.sroa.0.110.i.i.i, i64 noundef range(i64 0, 4294967296) %4, i64 noundef %i.dvh, i64 noundef 128, i64 noundef %i.dvf, ptr noalias noundef align 8 dereferenceable(8) %i.o, ptr noalias noundef nonnull align 8 inttoptr (i64 8 to ptr), i64 noundef 0)
          to label %.noexc57.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !37419 ; 0 uses

.noexc57.i.i:                                     ; preds = %.lr.ph11.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !37415
  %i.dxx = add nuw i64 %.sroa.0.110.i.i.i, 1      ; 2 uses
  %i.dxy = icmp ult i64 %i.dxx, %.sroa.0.0.i55.i.i
  br i1 %i.dxy, label %.lr.ph11.i.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.noexc57.i.i, %.loopexit.i.i.i
  %.sroa.012.129.i.i = add i64 %.sroa.012.0.i.i5149, -1
  br label %.lr.ph.i.i557

.lr.ph.i.i557:                                    ; preds = %_ZN6brotli3enc19backward_references2hq12EvaluateNode17hf4bbd34eaae1782fE.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.012.131.i.i = phi i64 [ %.sroa.012.1.i.i, %_ZN6brotli3enc19backward_references2hq12EvaluateNode17hf4bbd34eaae1782fE.exit.i.i ], [ %.sroa.012.129.i.i, %.lr.ph.preheader.i.i ]
  %.sroa.01.230.i.i = phi i64 [ %i.dxz, %_ZN6brotli3enc19backward_references2hq12EvaluateNode17hf4bbd34eaae1782fE.exit.i.i ], [ %.sroa.01.034.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.dxz = add i64 %.sroa.01.230.i.i, 1           ; 15 uses
  %i.dya = add i64 %.sroa.01.230.i.i, 4
  %.not41.i.i = icmp ult i64 %i.dya, %0
  br i1 %.not41.i.i, label %bb.abk, label %.loopexit.i.i

bb.abk:                                           ; preds = %.lr.ph.i.i557
  call void @llvm.experimental.noalias.scope.decl(metadata !37420)
  %.not7.i = icmp ugt i64 %i.dxz, %0
  br i1 %.not7.i, label %.invoke.i.i, label %bb.abl

bb.abl:                                           ; preds = %bb.abk
  %i.dyb = getelementptr inbounds nuw [20 x i8], ptr %i.dul, i64 %i.dxz ; 7 uses
  %i.dyc = load i32, ptr %i.dyb, align 4, !range !15262, !alias.scope !37423, !noalias !37424, !noundef !27
  %i.dyd = icmp eq i32 %i.dyc, 0
  br i1 %i.dyd, label %bb.abm, label %bb.abn

bb.abm:                                           ; preds = %bb.abl
  %i.dye = getelementptr inbounds nuw i8, ptr %i.dyb, i64 4
  %i.dyf = load float, ptr %i.dye, align 4, !alias.scope !37423, !noalias !37424, !noundef !27
  br label %bb.abn

bb.abn:                                           ; preds = %bb.abm, %bb.abl
  %.sroa.0.0.i58.i.i = phi float [ %i.dyf, %bb.abm ], [ 0.000000e+00, %bb.abl ] ; 3 uses
  %i.dyg = getelementptr inbounds nuw i8, ptr %i.dyb, i64 8
  %i.dyh = load i32, ptr %i.dyg, align 4, !alias.scope !37427, !noalias !37424, !noundef !27
  %i.dyi = and i32 %i.dyh, 33554431               ; 2 uses
  %i.dyj = getelementptr inbounds nuw i8, ptr %i.dyb, i64 16
  %i.dyk = load i32, ptr %i.dyj, align 4, !alias.scope !37427, !noalias !37424, !noundef !27 ; 2 uses
  %i.dyl = and i32 %i.dyk, 134217727
  %i.dym = getelementptr inbounds nuw i8, ptr %i.dyb, i64 12
  %i.dyn = load i32, ptr %i.dym, align 4, !alias.scope !37427, !noalias !37424, !noundef !27 ; 2 uses
  %i.dyo = icmp eq i64 %i.dxz, 0
  br i1 %i.dyo, label %_ZN6brotli3enc19backward_references2hq23ComputeDistanceShortcut17h874cc0a1454c5946E.exit.i.i.i, label %bb.abo

bb.abo:                                           ; preds = %bb.abn
  %i.dyp = zext nneg i32 %i.dyi to i64
  %i.dyq = zext i32 %i.dyn to i64                 ; 2 uses
  %i.dyr = add nuw nsw i64 %i.dyq, %i.dyp
  %i.dys = add nuw nsw i64 %i.dxz, %1
  %i.dyt = icmp ule i64 %i.dyr, %i.dys
  %i.dyu = icmp uge i64 %i.dui, %i.dyq
  %or.cond.i.i.i.i = and i1 %i.dyu, %i.dyt
  br i1 %or.cond.i.i.i.i, label %bb.abq, label %bb.abp

bb.abp:                                           ; preds = %bb.abq, %bb.abo
  %narrow.i.i.i.i = add nuw nsw i32 %i.dyl, %i.dyi
  %i.dyv = zext nneg i32 %narrow.i.i.i.i to i64
  %i.dyw = sub nsw i64 %i.dxz, %i.dyv             ; 3 uses
  %.not8.i = icmp ugt i64 %i.dyw, %0
  br i1 %.not8.i, label %.invoke.i.i, label %bb.abs

bb.abq:                                           ; preds = %bb.abo
  %i.dyx = lshr i32 %i.dyk, 27                    ; 2 uses
  %i.dyy = icmp eq i32 %i.dyx, 0
  %i.dyz = add i32 %i.dyn, 15
  %i.dza = add nsw i32 %i.dyx, -1
  %.sroa.02.0.i.i.i.i = select i1 %i.dyy, i32 %i.dyz, i32 %i.dza
  %.not.i.i.i.i = icmp eq i32 %.sroa.02.0.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %bb.abp, label %bb.abr

bb.abr:                                           ; preds = %bb.abq
  %i.dzb = trunc nuw i64 %i.dxz to i32
  br label %_ZN6brotli3enc19backward_references2hq23ComputeDistanceShortcut17h874cc0a1454c5946E.exit.i.i.i

bb.abs:                                           ; preds = %bb.abp
  %i.dzc = getelementptr inbounds nuw [20 x i8], ptr %i.dul, i64 %i.dyw ; 2 uses
  %i.dzd = load i32, ptr %i.dzc, align 4, !range !15262, !alias.scope !37427, !noalias !37424, !noundef !27
  %i.dze = icmp eq i32 %i.dzd, 2
  br i1 %i.dze, label %bb.abt, label %_ZN6brotli3enc19backward_references2hq23ComputeDistanceShortcut17h874cc0a1454c5946E.exit.i.i.i

bb.abt:                                           ; preds = %bb.abs
  %i.dzf = getelementptr inbounds nuw i8, ptr %i.dzc, i64 4
  %i.dzg = load i32, ptr %i.dzf, align 4, !alias.scope !37427, !noalias !37424, !noundef !27
  br label %_ZN6brotli3enc19backward_references2hq23ComputeDistanceShortcut17h874cc0a1454c5946E.exit.i.i.i

_ZN6brotli3enc19backward_references2hq23ComputeDistanceShortcut17h874cc0a1454c5946E.exit.i.i.i: ; preds = %bb.abt, %bb.abs, %bb.abr, %bb.abn
  %.sroa.0.0.i.i.i.i = phi i32 [ 0, %bb.abn ], [ %i.dzb, %bb.abr ], [ %i.dzg, %bb.abt ], [ 0, %bb.abs ]
  store i32 2, ptr %i.dyb, align 4, !alias.scope !37423, !noalias !37424
  %.sroa.4.0..sroa_idx.i59.i.i = getelementptr inbounds nuw i8, ptr %i.dyb, i64 4
  store i32 %.sroa.0.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i59.i.i, align 4, !alias.scope !37423, !noalias !37424
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val48.i.i) ]
  %i.dzh = icmp ult i64 %i.dxz, %.val49.i.i
  br i1 %i.dzh, label %"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17get_literal_costs17hf5624ff4da68ef36E.exit6.i.i.i", label %.invoke.i.i

"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17get_literal_costs17hf5624ff4da68ef36E.exit6.i.i.i": ; preds = %_ZN6brotli3enc19backward_references2hq23ComputeDistanceShortcut17h874cc0a1454c5946E.exit.i.i.i
  %i.dzi = getelementptr inbounds nuw [4 x i8], ptr %.val48.i.i, i64 %i.dxz
  %i.dzj = load float, ptr %i.dzi, align 4, !noalias !37430, !noundef !27
  %i.dzk = load float, ptr %.val48.i.i, align 4, !noalias !37430, !noundef !27
  %i.dzl = fsub float %i.dzj, %i.dzk              ; 2 uses
  %i.dzm = fcmp ugt float %.sroa.0.0.i58.i.i, %i.dzl
  br i1 %i.dzm, label %_ZN6brotli3enc19backward_references2hq12EvaluateNode17hf4bbd34eaae1782fE.exit.i.i, label %"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17get_literal_costs17hf5624ff4da68ef36E.exit.i.i.i"

"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17get_literal_costs17hf5624ff4da68ef36E.exit.i.i.i": ; preds = %"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17get_literal_costs17hf5624ff4da68ef36E.exit6.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !37431
  %i.dzn = fsub float %.sroa.0.0.i58.i.i, %i.dzl
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false), !noalias !37431
  store i64 %i.dxz, ptr %i.dvk, align 8, !noalias !37431
  store float %i.dzn, ptr %i.dvl, align 8, !noalias !37431
  store float %.sroa.0.0.i58.i.i, ptr %i.dvm, align 4, !noalias !37431
  invoke void @_ZN6brotli3enc19backward_references2hq20ComputeDistanceCache17hb778d3737a798c6aE(i64 noundef %i.dxz, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %8, i64 noundef 16, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.dul, i64 noundef range(i64 1, 0) %i.duj, ptr noalias noundef nonnull align 4 %i.n, i64 noundef 4)
          to label %.noexc63.i.i unwind label %.loopexit5.i.i, !noalias !37403

.noexc63.i.i:                                     ; preds = %"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17get_literal_costs17hf5624ff4da68ef36E.exit.i.i.i"
  invoke void @_ZN6brotli3enc19backward_references2hq13StartPosQueue4push17hfb5ef7c96d67ff19E(ptr noalias noundef nonnull align 8 dereferenceable(264) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n)
          to label %.noexc64.i.i unwind label %.loopexit5.i.i, !noalias !37403

.noexc64.i.i:                                     ; preds = %.noexc63.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !37431
  br label %_ZN6brotli3enc19backward_references2hq12EvaluateNode17hf4bbd34eaae1782fE.exit.i.i

_ZN6brotli3enc19backward_references2hq12EvaluateNode17hf4bbd34eaae1782fE.exit.i.i: ; preds = %.noexc64.i.i, %"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17get_literal_costs17hf5624ff4da68ef36E.exit6.i.i.i"
  %.sroa.012.1.i.i = add i64 %.sroa.012.131.i.i, -1 ; 2 uses
  %i.dzo = icmp eq i64 %.sroa.012.1.i.i, 0
  br i1 %i.dzo, label %.loopexit.i.i, label %.lr.ph.i.i557

.loopexit5.i.i:                                   ; preds = %.noexc63.i.i, %"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17get_literal_costs17hf5624ff4da68ef36E.exit.i.i.i"
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.i.i:                  ; preds = %.lr.ph11.i.i.i
  %lpad.loopexit6.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %.lr.ph.i.i.i558
  %lpad.loopexit9.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %bb.aba, %bb.abd
  %lpad.loopexit11.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i: ; preds = %.invoke.i.i, %.noexc.i
  %lpad.loopexit.split-lp12.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i:                           ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.i.i, %.loopexit5.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit5.i.i ], [ %lpad.loopexit6.i.i, %.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit9.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit11.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.split-lp12.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ]
  call fastcc void @"_ZN4core3ptr120drop_in_place$LT$brotli..enc..backward_references..hq..ZopfliCostModel$LT$alloc_stdlib..std_alloc..StandardAlloc$GT$$GT$17h4a80bcf68e0e39d0E"(ptr noalias noundef align 8 dereferenceable(2864) %i.s) #44, !noalias !37403
  br label %common.resume.sink.split

.loopexit.i:                                      ; preds = %bb.aaz, %bb.aax
  %.sroa.08.0.i.lcssa.i.i = phi i64 [ 0, %bb.aax ], [ %i.dwr, %bb.aaz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !37396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !37396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !37396
  %i.dzp = add i64 %.sroa.08.0.i.lcssa.i.i, %i.duy
  store i64 %i.dzp, ptr %12, align 8, !alias.scope !37365, !noalias !37388
  invoke void @_ZN6brotli3enc19backward_references2hq26BrotliZopfliCreateCommands17h0cfaebb68bc5bb36E(i64 noundef range(i64 0, 4294967296) %0, i64 noundef range(i64 0, 4294967296) %1, i64 noundef %i.dui, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.dul, i64 noundef %i.duj, ptr noalias noundef nonnull align 4 %8, i64 noundef 16, ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %6, ptr noalias noundef nonnull align 4 %10, i64 noundef %11, ptr noalias noundef nonnull align 8 dereferenceable(8) %13)
          to label %_ZN6brotli3enc19backward_references2hq36BrotliCreateZopfliBackwardReferences17hc34a52b31568f793E.exit unwind label %bb.aas, !noalias !37432

bb.abu:                                           ; preds = %bb.abu, %.loopexit19.i.new
  %.sroa.02.029.i = phi i64 [ 0, %.loopexit19.i.new ], [ %i.dzt, %bb.abu ] ; 3 uses
  %niter4526 = phi i64 [ 0, %.loopexit19.i.new ], [ %niter4526.next.1, %bb.abu ]
  %i.dzq = getelementptr inbounds nuw [20 x i8], ptr %i.dul, i64 %.sroa.02.029.i ; 4 uses
  store i64 9151254648282152960, ptr %i.dzq, align 4, !noalias !37387
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dzq, i64 8
  store i32 1, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !37387
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dzq, i64 12
  store i32 0, ptr %.sroa.5.0..sroa_idx.i, align 4, !noalias !37387
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dzq, i64 16
  store i32 0, ptr %.sroa.6.0..sroa_idx.i, align 4, !noalias !37387
  %i.dzr = getelementptr inbounds nuw [20 x i8], ptr %i.dul, i64 %.sroa.02.029.i ; 4 uses
  %i.dzs = getelementptr inbounds nuw i8, ptr %i.dzr, i64 20
  store i64 9151254648282152960, ptr %i.dzs, align 4, !noalias !37387
  %.sroa.4.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.dzr, i64 28
  store i32 1, ptr %.sroa.4.0..sroa_idx.i.1, align 4, !noalias !37387
  %.sroa.5.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.dzr, i64 32
  store i32 0, ptr %.sroa.5.0..sroa_idx.i.1, align 4, !noalias !37387
  %.sroa.6.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.dzr, i64 36
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.1, align 4, !noalias !37387
  %i.dzt = add nuw nsw i64 %.sroa.02.029.i, 2     ; 2 uses
  %niter4526.next.1 = add nuw i64 %niter4526, 2   ; 2 uses
  %niter4526.ncmp.1 = icmp eq i64 %niter4526.next.1, %unroll_iter4525
  br i1 %niter4526.ncmp.1, label %.unr-lcssa, label %bb.abu

common.resume.sink.split:                         ; preds = %bb.aas, %.loopexit.split-lp.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i218.i"
  %.sink = phi ptr [ %i.emm, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i218.i" ], [ %i.dul, %.loopexit.split-lp.i.i ], [ %i.dul, %bb.aas ]
  %common.resume.op.ph = phi { ptr, i32 } [ %.pn95.pn.pn.ph491.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i218.i" ], [ %lpad.phi.i.i, %.loopexit.split-lp.i.i ], [ %i.dus, %bb.aas ]
  call void @mi_free(ptr noundef nonnull %.sink) #38, !noalias !27
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.aef
  %common.resume.op = phi { ptr, i32 } [ %.pn95.i, %bb.aef ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_ZN6brotli3enc19backward_references2hq36BrotliCreateZopfliBackwardReferences17hc34a52b31568f793E.exit: ; preds = %.loopexit.i
  call void @mi_free(ptr noundef nonnull align 4 %i.dul) #38, !noalias !37432
  br label %bb.aap

bb.abv:                                           ; preds = %bb.aao
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37440)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37446)
  %i.dzu = getelementptr inbounds nuw i8, ptr %6, i64 76
  %i.dzv = load i32, ptr %i.dzu, align 4, !alias.scope !37436, !noalias !37448, !noundef !27
  %i.dzw = and i32 %i.dzv, 63
  %i.dzx = zext nneg i32 %i.dzw to i64
  %i.dzy = shl nuw i64 1, %i.dzx
  %i.dzz = add i64 %i.dzy, -16                    ; 4 uses
  %.not.i559 = icmp eq i64 %0, 0                  ; 4 uses
  br i1 %.not.i559, label %_ZN6brotli3enc14combined_alloc8alloc_if17h7f728a489d1db66aE.exit.thread.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i

_ZN6brotli3enc14combined_alloc8alloc_if17h7f728a489d1db66aE.exit.thread.i: ; preds = %bb.abv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !37451
  br label %._crit_edge290.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.abv
  %i.eaa = shl nuw nsw i64 %0, 2                  ; 5 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !37452
  %i.eab = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.eaa, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !37452 ; 13 uses
  %i.eac = icmp eq ptr %i.eab, null
  br i1 %i.eac, label %bb.abw, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i141.i

bb.abw:                                           ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.eaa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !37457
  unreachable

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i141.i: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %i.ead = tail call i64 @llvm.usub.sat.i64(i64 range(i64 0, 4294967296) %0, i64 127)
  %.sroa.07.0.i = add nuw nsw i64 %1, %i.ead
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !noalias !37451
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !37451
  %i.eae = shl nuw nsw i64 %0, 5                  ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !37458
  %i.eaf = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.eae, i64 noundef range(i64 1, -9223372036854775807) 8) #38, !noalias !37458 ; 3 uses
  %i.eag = icmp eq ptr %i.eaf, null
  br i1 %i.eag, label %bb.abx, label %_ZN6brotli3enc14combined_alloc8alloc_if17h7f728a489d1db66aE.exit.i

bb.abx:                                           ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i141.i
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.eae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc144.i unwind label %.thread489.i, !noalias !37463

.noexc144.i:                                      ; preds = %bb.abx
  unreachable

.thread489.i:                                     ; preds = %bb.abx
  %i.eah = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i218.i"

_ZN6brotli3enc14combined_alloc8alloc_if17h7f728a489d1db66aE.exit.i: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i141.i
  %i.eai = icmp samesign ugt i64 %0, 3
  br i1 %i.eai, label %.lr.ph289.i, label %._crit_edge290.i

.lr.ph289.i:                                      ; preds = %_ZN6brotli3enc14combined_alloc8alloc_if17h7f728a489d1db66aE.exit.i
  %i.eaj = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.eak = load i64, ptr %i.eaj, align 8, !alias.scope !37438, !noalias !37464
  %i.eal = add i64 %i.eak, -15                    ; 2 uses
  %i.eam = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ean = load i64, ptr %i.eam, align 8, !alias.scope !37438, !noalias !37464 ; 2 uses
  br label %bb.adk

.loopexit131.i:                                   ; preds = %.lr.ph11.i.i
  %lpad.loopexit132.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit.split-lp.loopexit.i:                    ; preds = %.lr.ph.i211.i
  %lpad.loopexit136.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %bb.adt
  %lpad.loopexit139.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u64$GT$$GT$17hc830dd20d031bb73E.exit215.i"

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %.invoke, %bb.aec, %bb.adu, %bb.ado, %bb.abz
  %i.eao = phi ptr [ %i.eaq, %bb.abz ], [ %i.eab, %.invoke ], [ %i.eab, %bb.adu ], [ %i.eab, %bb.ado ], [ %i.eab, %bb.aec ]
  %.sroa.16.2.ph.ph.ph.i = phi i64 [ %.sroa.16.0.lcssa.i, %bb.abz ], [ %.sroa.16.3.i, %.invoke ], [ %.sroa.16.3.i, %bb.adu ], [ %.sroa.16.0284.i, %bb.ado ], [ %.sroa.16.3.i, %bb.aec ]
  %.sroa.06.2.ph.ph.ph.i = phi ptr [ %.sroa.06.0.lcssa.i, %bb.abz ], [ %.sroa.06.3.i, %.invoke ], [ %.sroa.06.3.i, %bb.adu ], [ %.sroa.06.0285.i, %bb.ado ], [ %.sroa.06.3.i, %bb.aec ]
  %lpad.loopexit.split-lp140.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u64$GT$$GT$17hc830dd20d031bb73E.exit215.i"

bb.aby:                                           ; preds = %bb.aec, %bb.adu, %bb.adq
  unreachable

._crit_edge290.i:                                 ; preds = %bb.adx, %_ZN6brotli3enc14combined_alloc8alloc_if17h7f728a489d1db66aE.exit.i, %_ZN6brotli3enc14combined_alloc8alloc_if17h7f728a489d1db66aE.exit.thread.i
  %i.eap = phi i1 [ false, %_ZN6brotli3enc14combined_alloc8alloc_if17h7f728a489d1db66aE.exit.i ], [ false, %_ZN6brotli3enc14combined_alloc8alloc_if17h7f728a489d1db66aE.exit.thread.i ], [ true, %bb.adx ]
  %i.eaq = phi ptr [ %i.eab, %_ZN6brotli3enc14combined_alloc8alloc_if17h7f728a489d1db66aE.exit.i ], [ inttoptr (i64 4 to ptr), %_ZN6brotli3enc14combined_alloc8alloc_if17h7f728a489d1db66aE.exit.thread.i ], [ %i.eab, %bb.adx ] ; 5 uses
  %.sroa.16.0.lcssa.i = phi i64 [ %i.eaa, %_ZN6brotli3enc14combined_alloc8alloc_if17h7f728a489d1db66aE.exit.i ], [ 0, %_ZN6brotli3enc14combined_alloc8alloc_if17h7f728a489d1db66aE.exit.thread.i ], [ %.sroa.16.3.i, %bb.adx ] ; 9 uses
  %.sroa.06.0.lcssa.i = phi ptr [ %i.eaf, %_ZN6brotli3enc14combined_alloc8alloc_if17h7f728a489d1db66aE.exit.i ], [ inttoptr (i64 8 to ptr), %_ZN6brotli3enc14combined_alloc8alloc_if17h7f728a489d1db66aE.exit.thread.i ], [ %.sroa.06.3.i, %bb.adx ] ; 5 uses
  %i.ear = load i64, ptr %13, align 8, !alias.scope !37446, !noalias !37465, !noundef !27
  %i.eas = load i64, ptr %9, align 8, !alias.scope !37440, !noalias !37466, !noundef !27 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(16) %8, i64 16, i1 false), !noalias !37467
  %i.eat = load i64, ptr %12, align 8, !alias.scope !37444, !noalias !37468, !noundef !27 ; 5 uses
  %i.eau = add nuw nsw i64 %0, 1                  ; 8 uses
  %i.eav = mul nuw nsw i64 %i.eau, 20             ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !37469
  %i.eaw = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.eav, i64 noundef range(i64 1, 9) 4) #38, !noalias !37469 ; 20 uses
  %i.eax = icmp eq ptr %i.eaw, null
  br i1 %i.eax, label %bb.abz, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h817cfe93670aa9b5E.exit.i.i.i.i.i560"

bb.abz:                                           ; preds = %._crit_edge290.i
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.eav, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc146.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !37463

.noexc146.i:                                      ; preds = %bb.abz
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h817cfe93670aa9b5E.exit.i.i.i.i.i560": ; preds = %._crit_edge290.i
  br i1 %.not.i559, label %.loopexit130.i, label %.lr.ph.i.i.i.i.i561.preheader

.lr.ph.i.i.i.i.i561.preheader:                    ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h817cfe93670aa9b5E.exit.i.i.i.i.i560"
  %xtraiter4529 = and i64 %0, 3                   ; 3 uses
  %i.eay = icmp samesign ult i64 %0, 4
  br i1 %i.eay, label %.lr.ph.i.i.i.i.i561.epil.preheader, label %.lr.ph.i.i.i.i.i561.preheader.new

.lr.ph.i.i.i.i.i561.preheader.new:                ; preds = %.lr.ph.i.i.i.i.i561.preheader
  %unroll_iter4534 = and i64 %0, 4294967292
  br label %.lr.ph.i.i.i.i.i561

.lr.ph.i.i.i.i.i561:                              ; preds = %.lr.ph.i.i.i.i.i561, %.lr.ph.i.i.i.i.i561.preheader.new
  %.sroa.0.06.i.i.i.i.i562 = phi ptr [ %i.eaw, %.lr.ph.i.i.i.i.i561.preheader.new ], [ %i.ebc, %.lr.ph.i.i.i.i.i561 ] ; 21 uses
  %niter4535 = phi i64 [ 0, %.lr.ph.i.i.i.i.i561.preheader.new ], [ %niter4535.next.3, %.lr.ph.i.i.i.i.i561 ]
  store i32 0, ptr %.sroa.0.06.i.i.i.i.i562, align 4, !noalias !37477
  %.sroa.56.0..sroa.0.06.i.i.sroa_idx.i.i.i564 = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i.i562, i64 4
  store float 1.700000e+38, ptr %.sroa.56.0..sroa.0.06.i.i.sroa_idx.i.i.i564, align 4, !noalias !37477
  %.sroa.68.0..sroa.0.06.i.i.sroa_idx.i.i.i565 = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i.i562, i64 8
  store i32 1, ptr %.sroa.68.0..sroa.0.06.i.i.sroa_idx.i.i.i565, align 4, !noalias !37477
  %.sroa.710.0..sroa.0.06.i.i.sroa_idx.i.i.i566 = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i.i562, i64 12
  store i32 0, ptr %.sroa.710.0..sroa.0.06.i.i.sroa_idx.i.i.i566, align 4, !noalias !37477
  %.sroa.8.0..sroa.0.06.i.i.sroa_idx.i.i.i567 = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i.i562, i64 16
  store i32 0, ptr %.sroa.8.0..sroa.0.06.i.i.sroa_idx.i.i.i567, align 4, !noalias !37477
  %i.eaz = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i.i562, i64 20
  store i32 0, ptr %i.eaz, align 4, !noalias !37477
  %.sroa.56.0..sroa.0.06.i.i.sroa_idx.i.i.i564.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i.i562, i64 24
  store float 1.700000e+38, ptr %.sroa.56.0..sroa.0.06.i.i.sroa_idx.i.i.i564.1, align 4, !noalias !37477
  %.sroa.68.0..sroa.0.06.i.i.sroa_idx.i.i.i565.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i.i562, i64 28
  store i32 1, ptr %.sroa.68.0..sroa.0.06.i.i.sroa_idx.i.i.i565.1, align 4, !noalias !37477
  %.sroa.710.0..sroa.0.06.i.i.sroa_idx.i.i.i566.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i.i562, i64 32
  store i32 0, ptr %.sroa.710.0..sroa.0.06.i.i.sroa_idx.i.i.i566.1, align 4, !noalias !37477
  %.sroa.8.0..sroa.0.06.i.i.sroa_idx.i.i.i567.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i.i562, i64 36
  store i32 0, ptr %.sroa.8.0..sroa.0.06.i.i.sroa_idx.i.i.i567.1, align 4, !noalias !37477
  %i.eba = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i.i562, i64 40
  store i32 0, ptr %i.eba, align 4, !noalias !37477
  %.sroa.56.0..sroa.0.06.i.i.sroa_idx.i.i.i564.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i.i562, i64 44
  store float 1.700000e+38, ptr %.sroa.56.0..sroa.0.06.i.i.sroa_idx.i.i.i564.2, align 4, !noalias !37477
  %.sroa.68.0..sroa.0.06.i.i.sroa_idx.i.i.i565.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i.i562, i64 48
  store i32 1, ptr %.sroa.68.0..sroa.0.06.i.i.sroa_idx.i.i.i565.2, align 4, !noalias !37477
  %.sroa.710.0..sroa.0.06.i.i.sroa_idx.i.i.i566.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i.i562, i64 52
  store i32 0, ptr %.sroa.710.0..sroa.0.06.i.i.sroa_idx.i.i.i566.2, align 4, !noalias !37477
  %.sroa.8.0..sroa.0.06.i.i.sroa_idx.i.i.i567.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i.i562, i64 56
  store i32 0, ptr %.sroa.8.0..sroa.0.06.i.i.sroa_idx.i.i.i567.2, align 4, !noalias !37477
  %i.ebb = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i.i562, i64 60
  store i32 0, ptr %i.ebb, align 4, !noalias !37477
  %.sroa.56.0..sroa.0.06.i.i.sroa_idx.i.i.i564.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i.i562, i64 64
  store float 1.700000e+38, ptr %.sroa.56.0..sroa.0.06.i.i.sroa_idx.i.i.i564.3, align 4, !noalias !37477
  %.sroa.68.0..sroa.0.06.i.i.sroa_idx.i.i.i565.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i.i562, i64 68
  store i32 1, ptr %.sroa.68.0..sroa.0.06.i.i.sroa_idx.i.i.i565.3, align 4, !noalias !37477
  %.sroa.710.0..sroa.0.06.i.i.sroa_idx.i.i.i566.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i.i562, i64 72
  store i32 0, ptr %.sroa.710.0..sroa.0.06.i.i.sroa_idx.i.i.i566.3, align 4, !noalias !37477
  %.sroa.8.0..sroa.0.06.i.i.sroa_idx.i.i.i567.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i.i562, i64 76
  store i32 0, ptr %.sroa.8.0..sroa.0.06.i.i.sroa_idx.i.i.i567.3, align 4, !noalias !37477
  %i.ebc = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i.i562, i64 80 ; 3 uses
  %niter4535.next.3 = add nuw nsw i64 %niter4535, 4 ; 2 uses
  %niter4535.ncmp.3 = icmp eq i64 %niter4535.next.3, %unroll_iter4534
  br i1 %niter4535.ncmp.3, label %.loopexit130.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i561

.loopexit130.i.loopexit.unr-lcssa:                ; preds = %.lr.ph.i.i.i.i.i561
  %lcmp.mod4531.not = icmp eq i64 %xtraiter4529, 0
  br i1 %lcmp.mod4531.not, label %.loopexit130.i, label %.lr.ph.i.i.i.i.i561.epil.preheader

.lr.ph.i.i.i.i.i561.epil.preheader:               ; preds = %.loopexit130.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i561.preheader
  %.sroa.0.06.i.i.i.i.i562.epil.init = phi ptr [ %i.eaw, %.lr.ph.i.i.i.i.i561.preheader ], [ %i.ebc, %.loopexit130.i.loopexit.unr-lcssa ]
end_hunk_13
begin_hunk_14_@_ZN6brotli3enc19backward_references30BrotliCreateBackwardReferences17hda9e5271d10c6767E:bb.a
.noexc181.i:                                      ; preds = %bb.acx
  %i.egg = icmp ult i64 %i.egf, 16384             ; 2 uses
  %spec.store.select.i.i587 = select i1 %i.egg, i64 0, i64 %i.egf ; 2 uses
  %i.egh = add nuw nsw i64 %.sroa.0.085.i.i, %i.egc ; 3 uses
  %i.egi = icmp eq i32 %i.egb, 1
  br i1 %i.egi, label %bb.acz, label %bb.adb

bb.acy:                                           ; preds = %bb.acw
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.0.085.i.i, i64 noundef %.sroa.16.0.lcssa.i, i64 noundef %.sroa.16.0.lcssa.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1750) #43
          to label %.noexc182.i unwind label %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i", !noalias !37463

.noexc182.i:                                      ; preds = %bb.acy
  unreachable

bb.acz:                                           ; preds = %.noexc181.i
  %i.egj = add nsw i64 %i.egh, -1                 ; 3 uses
  %i.egk = icmp ult i64 %i.egj, %.sroa.16.0.lcssa.i
  br i1 %i.egk, label %bb.ada, label %.invoke.i

bb.ada:                                           ; preds = %bb.acz
  %i.egl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.0.lcssa.i, i64 %i.egj
  %i.egm = load i64, ptr %i.egl, align 8, !alias.scope !37511, !noalias !37525, !noundef !27 ; 2 uses
  %i.egn = icmp ugt i64 %i.egm, 44805098831871
  br i1 %i.egn, label %.thread5150, label %bb.adb

bb.adb:                                           ; preds = %bb.ada, %.noexc181.i
  br i1 %i.egg, label %.loopexit.i.i589, label %.lr.ph.preheader.i.i588

.lr.ph.preheader.i.i588:                          ; preds = %.thread5150, %bb.adb
  %.sroa.018.0.i.i5153 = phi i64 [ %.sroa.0.0.i40.i.i, %.thread5150 ], [ %spec.store.select.i.i587, %bb.adb ]
  %.sroa.018.176.i.i = add i64 %.sroa.018.0.i.i5153, -1
  br label %.lr.ph.i174.i

.thread5150:                                      ; preds = %bb.ada
  %sum.shift.i.i598 = lshr i64 %i.egm, 37
  %.sroa.0.0.i40.i.i = call noundef i64 @llvm.umax.i64(i64 %spec.store.select.i.i587, i64 %sum.shift.i.i598)
  br label %.lr.ph.preheader.i.i588

.loopexit.i.i589:                                 ; preds = %_ZN6brotli3enc19backward_references2hq12EvaluateNode17hf4bbd34eaae1782fE.exit.i.i595, %.lr.ph.i174.i, %bb.adb
  %.sroa.05.1.i.i = phi i64 [ %.sroa.05.084.i.i, %bb.adb ], [ %i.egr, %.lr.ph.i174.i ], [ %i.egr, %_ZN6brotli3enc19backward_references2hq12EvaluateNode17hf4bbd34eaae1782fE.exit.i.i595 ] ; 2 uses
  %.sroa.0.1.i.i = phi i64 [ %i.egh, %bb.adb ], [ %i.eii, %_ZN6brotli3enc19backward_references2hq12EvaluateNode17hf4bbd34eaae1782fE.exit.i.i595 ], [ %.sroa.0.278.i.i, %.lr.ph.i174.i ]
  %i.ego = add i64 %.sroa.05.1.i.i, 1
  %i.egp = add i64 %.sroa.05.1.i.i, 4
  %i.egq = icmp ult i64 %i.egp, %0
  br i1 %i.egq, label %bb.acv, label %.lr.ph89.i.i.preheader

.lr.ph.i174.i:                                    ; preds = %_ZN6brotli3enc19backward_references2hq12EvaluateNode17hf4bbd34eaae1782fE.exit.i.i595, %.lr.ph.preheader.i.i588
  %.sroa.018.179.i.i = phi i64 [ %.sroa.018.1.i.i, %_ZN6brotli3enc19backward_references2hq12EvaluateNode17hf4bbd34eaae1782fE.exit.i.i595 ], [ %.sroa.018.176.i.i, %.lr.ph.preheader.i.i588 ]
  %.sroa.0.278.i.i = phi i64 [ %i.eii, %_ZN6brotli3enc19backward_references2hq12EvaluateNode17hf4bbd34eaae1782fE.exit.i.i595 ], [ %i.egh, %.lr.ph.preheader.i.i588 ] ; 2 uses
  %.sroa.05.277.i.i = phi i64 [ %i.egr, %_ZN6brotli3enc19backward_references2hq12EvaluateNode17hf4bbd34eaae1782fE.exit.i.i595 ], [ %.sroa.05.084.i.i, %.lr.ph.preheader.i.i588 ] ; 2 uses
  %i.egr = add nuw nsw i64 %.sroa.05.277.i.i, 1   ; 13 uses
  %i.egs = add nuw nsw i64 %.sroa.05.277.i.i, 4
  %.not38.i.i = icmp ult i64 %i.egs, %0
  br i1 %.not38.i.i, label %bb.adc, label %.loopexit.i.i589

bb.adc:                                           ; preds = %.lr.ph.i174.i
  call void @llvm.experimental.noalias.scope.decl(metadata !37526)
  %i.egt = getelementptr inbounds nuw [20 x i8], ptr %i.eaw, i64 %i.egr ; 7 uses
  %i.egu = load i32, ptr %i.egt, align 4, !range !15262, !alias.scope !37529, !noalias !37530, !noundef !27
  %i.egv = icmp eq i32 %i.egu, 0
  br i1 %i.egv, label %bb.add, label %bb.ade

bb.add:                                           ; preds = %bb.adc
  %i.egw = getelementptr inbounds nuw i8, ptr %i.egt, i64 4
  %i.egx = load float, ptr %i.egw, align 4, !alias.scope !37529, !noalias !37530, !noundef !27
  br label %bb.ade

bb.ade:                                           ; preds = %bb.add, %bb.adc
  %.sroa.0.0.i41.i.i = phi float [ %i.egx, %bb.add ], [ 0.000000e+00, %bb.adc ] ; 3 uses
  %i.egy = getelementptr inbounds nuw i8, ptr %i.egt, i64 8
  %i.egz = load i32, ptr %i.egy, align 4, !alias.scope !37533, !noalias !37530, !noundef !27
  %i.eha = and i32 %i.egz, 33554431               ; 2 uses
  %i.ehb = getelementptr inbounds nuw i8, ptr %i.egt, i64 16
  %i.ehc = load i32, ptr %i.ehb, align 4, !alias.scope !37533, !noalias !37530, !noundef !27 ; 2 uses
  %i.ehd = and i32 %i.ehc, 134217727
  %i.ehe = getelementptr inbounds nuw i8, ptr %i.egt, i64 12
  %i.ehf = load i32, ptr %i.ehe, align 4, !alias.scope !37533, !noalias !37530, !noundef !27 ; 2 uses
  %i.ehg = zext nneg i32 %i.eha to i64
  %i.ehh = zext i32 %i.ehf to i64                 ; 2 uses
  %i.ehi = add nuw nsw i64 %i.ehh, %i.ehg
  %i.ehj = add nuw nsw i64 %i.egr, %1
  %i.ehk = icmp ule i64 %i.ehi, %i.ehj
  %i.ehl = icmp uge i64 %i.dzz, %i.ehh
  %or.cond.i.i.i.i590 = and i1 %i.ehl, %i.ehk
  br i1 %or.cond.i.i.i.i590, label %bb.adg, label %bb.adf

bb.adf:                                           ; preds = %bb.adg, %bb.ade
  %narrow.i.i.i.i591 = add nuw nsw i32 %i.ehd, %i.eha
  %i.ehm = zext nneg i32 %narrow.i.i.i.i591 to i64
  %i.ehn = sub nsw i64 %i.egr, %i.ehm             ; 3 uses
  %.not120.i = icmp ugt i64 %i.ehn, %0
  br i1 %.not120.i, label %.invoke.i, label %bb.adi

bb.adg:                                           ; preds = %bb.ade
  %i.eho = lshr i32 %i.ehc, 27                    ; 2 uses
  %i.ehp = icmp eq i32 %i.eho, 0
  %i.ehq = add i32 %i.ehf, 15
  %i.ehr = add nsw i32 %i.eho, -1
  %.sroa.02.0.i.i.i.i596 = select i1 %i.ehp, i32 %i.ehq, i32 %i.ehr
  %.not.i.i.i.i597 = icmp eq i32 %.sroa.02.0.i.i.i.i596, 0
  br i1 %.not.i.i.i.i597, label %bb.adf, label %bb.adh

bb.adh:                                           ; preds = %bb.adg
  %i.ehs = trunc nuw i64 %i.egr to i32
  br label %_ZN6brotli3enc19backward_references2hq23ComputeDistanceShortcut17h874cc0a1454c5946E.exit.i.i.i592

bb.adi:                                           ; preds = %bb.adf
  %i.eht = getelementptr inbounds nuw [20 x i8], ptr %i.eaw, i64 %i.ehn ; 2 uses
  %i.ehu = load i32, ptr %i.eht, align 4, !range !15262, !alias.scope !37533, !noalias !37530, !noundef !27
  %i.ehv = icmp eq i32 %i.ehu, 2
  br i1 %i.ehv, label %bb.adj, label %_ZN6brotli3enc19backward_references2hq23ComputeDistanceShortcut17h874cc0a1454c5946E.exit.i.i.i592

bb.adj:                                           ; preds = %bb.adi
  %i.ehw = getelementptr inbounds nuw i8, ptr %i.eht, i64 4
  %i.ehx = load i32, ptr %i.ehw, align 4, !alias.scope !37533, !noalias !37530, !noundef !27
  br label %_ZN6brotli3enc19backward_references2hq23ComputeDistanceShortcut17h874cc0a1454c5946E.exit.i.i.i592

_ZN6brotli3enc19backward_references2hq23ComputeDistanceShortcut17h874cc0a1454c5946E.exit.i.i.i592: ; preds = %bb.adj, %bb.adi, %bb.adh
  %.sroa.0.0.i.i.i175.i = phi i32 [ 0, %bb.adi ], [ %i.ehs, %bb.adh ], [ %i.ehx, %bb.adj ]
  store i32 2, ptr %i.egt, align 4, !alias.scope !37529, !noalias !37530
  %.sroa.4.0..sroa_idx.i42.i.i = getelementptr inbounds nuw i8, ptr %i.egt, i64 4
  store i32 %.sroa.0.0.i.i.i175.i, ptr %.sroa.4.0..sroa_idx.i42.i.i, align 4, !alias.scope !37529, !noalias !37530
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i173.i) ]
  %i.ehy = icmp ult i64 %i.egr, %.val39.i.i
  br i1 %i.ehy, label %"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17get_literal_costs17hf5624ff4da68ef36E.exit6.i.i.i593", label %.invoke.i

"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17get_literal_costs17hf5624ff4da68ef36E.exit6.i.i.i593": ; preds = %_ZN6brotli3enc19backward_references2hq23ComputeDistanceShortcut17h874cc0a1454c5946E.exit.i.i.i592
  %i.ehz = getelementptr inbounds nuw [4 x i8], ptr %.val.i173.i, i64 %i.egr
  %i.eia = load float, ptr %i.ehz, align 4, !noalias !37536, !noundef !27
  %i.eib = load float, ptr %.val.i173.i, align 4, !noalias !37536, !noundef !27
  %i.eic = fsub float %i.eia, %i.eib              ; 2 uses
  %i.eid = fcmp ugt float %.sroa.0.0.i41.i.i, %i.eic
  br i1 %i.eid, label %_ZN6brotli3enc19backward_references2hq12EvaluateNode17hf4bbd34eaae1782fE.exit.i.i595, label %"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17get_literal_costs17hf5624ff4da68ef36E.exit.i.i.i594"

"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17get_literal_costs17hf5624ff4da68ef36E.exit.i.i.i594": ; preds = %"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17get_literal_costs17hf5624ff4da68ef36E.exit6.i.i.i593"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !37537
  %i.eie = fsub float %.sroa.0.0.i41.i.i, %i.eic
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !noalias !37537
  store i64 %i.egr, ptr %i.ebo, align 8, !noalias !37537
  store float %i.eie, ptr %i.ebp, align 8, !noalias !37537
  store float %.sroa.0.0.i41.i.i, ptr %i.ebq, align 4, !noalias !37537
  invoke void @_ZN6brotli3enc19backward_references2hq20ComputeDistanceCache17hb778d3737a798c6aE(i64 noundef %i.egr, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %8, i64 noundef 16, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.eaw, i64 noundef range(i64 1, 0) %i.eau, ptr noalias noundef nonnull align 4 %i.c, i64 noundef 4)
          to label %.noexc187.i unwind label %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.loopexit.i", !noalias !37463

.noexc187.i:                                      ; preds = %"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17get_literal_costs17hf5624ff4da68ef36E.exit.i.i.i594"
  invoke void @_ZN6brotli3enc19backward_references2hq13StartPosQueue4push17hfb5ef7c96d67ff19E(ptr noalias noundef nonnull align 8 dereferenceable(264) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
          to label %.noexc188.i unwind label %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.loopexit.i", !noalias !37463

.noexc188.i:                                      ; preds = %.noexc187.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !37537
  br label %_ZN6brotli3enc19backward_references2hq12EvaluateNode17hf4bbd34eaae1782fE.exit.i.i595

_ZN6brotli3enc19backward_references2hq12EvaluateNode17hf4bbd34eaae1782fE.exit.i.i595: ; preds = %.noexc188.i, %"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17get_literal_costs17hf5624ff4da68ef36E.exit6.i.i.i593"
  %i.eif = getelementptr inbounds nuw [4 x i8], ptr %i.eaq, i64 %i.egr
  %i.eig = load i32, ptr %i.eif, align 4, !alias.scope !37509, !noalias !37524, !noundef !27
  %i.eih = zext i32 %i.eig to i64
  %i.eii = add i64 %.sroa.0.278.i.i, %i.eih       ; 2 uses
  %.sroa.018.1.i.i = add i64 %.sroa.018.179.i.i, -1 ; 2 uses
  %i.eij = icmp eq i64 %.sroa.018.1.i.i, 0
  br i1 %i.eij, label %.loopexit.i.i589, label %.lr.ph.i174.i

.invoke.i:                                        ; preds = %.loopexit2277, %bb.acm, %bb.acj, %.lr.ph63.i.i, %bb.ach, %.lr.ph70.i.i, %bb.acz, %bb.acv, %bb.acr, %bb.act, %.lr.ph95.i.i, %.lr.ph.i.i580, %_ZN6brotli3enc19backward_references2hq23ComputeDistanceShortcut17h874cc0a1454c5946E.exit.i.i.i592, %bb.adf
  %i.eik = phi i64 [ %.val42.i.i, %bb.ach ], [ %i.efu, %bb.act ], [ %i.egr, %_ZN6brotli3enc19backward_references2hq23ComputeDistanceShortcut17h874cc0a1454c5946E.exit.i.i.i592 ], [ %i.efj, %bb.acr ], [ %i.eep, %.lr.ph.i.i580 ], [ %i.egj, %bb.acz ], [ %11, %.lr.ph63.i.i ], [ %i.ehn, %bb.adf ], [ %.sroa.0.1.i93.i.i, %.lr.ph95.i.i ], [ %.sroa.05.084.i.i, %bb.acv ], [ %i.ecz, %.lr.ph70.i.i ], [ %i.eea, %bb.acm ], [ %i.eed, %bb.acj ], [ 0, %.loopexit2277 ]
  %i.eil = phi i64 [ %.val42.i.i, %bb.ach ], [ %i.eau, %bb.act ], [ %.val39.i.i, %_ZN6brotli3enc19backward_references2hq23ComputeDistanceShortcut17h874cc0a1454c5946E.exit.i.i.i592 ], [ %i.eau, %bb.acr ], [ %3, %.lr.ph.i.i580 ], [ %.sroa.16.0.lcssa.i, %bb.acz ], [ %11, %.lr.ph63.i.i ], [ %i.eau, %bb.adf ], [ %i.eau, %.lr.ph95.i.i ], [ %0, %bb.acv ], [ %3, %.lr.ph70.i.i ], [ 140, %bb.acm ], [ 704, %bb.acj ], [ 0, %.loopexit2277 ]
  %i.eim = phi ptr [ @1770, %bb.ach ], [ @1765, %bb.act ], [ @1766, %_ZN6brotli3enc19backward_references2hq23ComputeDistanceShortcut17h874cc0a1454c5946E.exit.i.i.i592 ], [ @1763, %bb.acr ], [ @1774, %.lr.ph.i.i580 ], [ @1749, %bb.acz ], [ @1771, %.lr.ph63.i.i ], [ @1761, %bb.adf ], [ @1764, %.lr.ph95.i.i ], [ @1748, %bb.acv ], [ @1769, %.lr.ph70.i.i ], [ @1773, %bb.acm ], [ @1772, %bb.acj ], [ @1768, %.loopexit2277 ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.eik, i64 noundef %i.eil, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eim) #43
          to label %.cont.i unwind label %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i", !noalias !37463

.cont.i:                                          ; preds = %.invoke.i
  unreachable

.loopexit.i585:                                   ; preds = %bb.acu, %bb.acs
  %.sroa.08.0.i.lcssa.i.i586 = phi i64 [ 0, %bb.acs ], [ %i.efw, %bb.acu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !37515
  %i.ein = add i64 %.sroa.08.0.i.lcssa.i.i586, %i.eat ; 2 uses
  store i64 %i.ein, ptr %12, align 8, !alias.scope !37444, !noalias !37468
  invoke void @_ZN6brotli3enc19backward_references2hq26BrotliZopfliCreateCommands17h0cfaebb68bc5bb36E(i64 noundef range(i64 0, 4294967296) %0, i64 noundef range(i64 0, 4294967296) %1, i64 noundef %i.dzz, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.eaw, i64 noundef %i.eau, ptr noalias noundef nonnull align 4 %8, i64 noundef 16, ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %6, ptr noalias noundef nonnull align 4 %10, i64 noundef %11, ptr noalias noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.acb unwind label %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.i", !noalias !37463

.preheader.i577:                                  ; preds = %.preheader.i577.preheader, %.preheader.i577
  %.sroa.054.0293.i = phi i64 [ %i.eir, %.preheader.i577 ], [ 0, %.preheader.i577.preheader ] ; 3 uses
  %niter4543 = phi i64 [ %niter4543.next.1, %.preheader.i577 ], [ 0, %.preheader.i577.preheader ]
  %i.eio = getelementptr inbounds nuw [20 x i8], ptr %i.eaw, i64 %.sroa.054.0293.i ; 4 uses
  store i64 9151254648282152960, ptr %i.eio, align 4, !noalias !37463
  %.sroa.4.0..sroa_idx.i578 = getelementptr inbounds nuw i8, ptr %i.eio, i64 8
  store i32 1, ptr %.sroa.4.0..sroa_idx.i578, align 4, !noalias !37463
  %.sroa.5.0..sroa_idx.i579 = getelementptr inbounds nuw i8, ptr %i.eio, i64 12
  store i32 0, ptr %.sroa.5.0..sroa_idx.i579, align 4, !noalias !37463
  %.sroa.653.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eio, i64 16
  store i32 0, ptr %.sroa.653.0..sroa_idx.i, align 4, !noalias !37463
  %i.eip = getelementptr inbounds nuw [20 x i8], ptr %i.eaw, i64 %.sroa.054.0293.i ; 4 uses
  %i.eiq = getelementptr inbounds nuw i8, ptr %i.eip, i64 20
  store i64 9151254648282152960, ptr %i.eiq, align 4, !noalias !37463
  %.sroa.4.0..sroa_idx.i578.1 = getelementptr inbounds nuw i8, ptr %i.eip, i64 28
  store i32 1, ptr %.sroa.4.0..sroa_idx.i578.1, align 4, !noalias !37463
  %.sroa.5.0..sroa_idx.i579.1 = getelementptr inbounds nuw i8, ptr %i.eip, i64 32
  store i32 0, ptr %.sroa.5.0..sroa_idx.i579.1, align 4, !noalias !37463
  %.sroa.653.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.eip, i64 36
  store i32 0, ptr %.sroa.653.0..sroa_idx.i.1, align 4, !noalias !37463
  %i.eir = add nuw nsw i64 %.sroa.054.0293.i, 2   ; 2 uses
  %niter4543.next.1 = add nuw i64 %niter4543, 2   ; 2 uses
  %niter4543.ncmp.1 = icmp eq i64 %niter4543.next.1, %unroll_iter4542
  br i1 %niter4543.ncmp.1, label %.unr-lcssa4536, label %.preheader.i577

"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.loopexit.i": ; preds = %.noexc187.i, %"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17get_literal_costs17hf5624ff4da68ef36E.exit.i.i.i594"
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.i"

"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.loopexit.split-lp.loopexit.i": ; preds = %bb.acx
  %lpad.loopexit125.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.i"

"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.i": ; preds = %.loopexit.i585, %.noexc156.i, %.noexc155.i, %._crit_edge64.i.i, %bb.ace
  %lpad.loopexit128.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.i"

"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i": ; preds = %.invoke.i, %bb.acy, %.loopexit130.i
  %.sroa.046.2.ph.ph.ph.i = phi i1 [ false, %.loopexit130.i ], [ true, %bb.acy ], [ true, %.invoke.i ]
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.i"

"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.i": ; preds = %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i", %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.i", %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.loopexit.split-lp.loopexit.i", %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.loopexit.i"
  %.sroa.046.2.i = phi i1 [ true, %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.loopexit.i" ], [ true, %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.loopexit.split-lp.loopexit.i" ], [ true, %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.i" ], [ %.sroa.046.2.ph.ph.ph.i, %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i" ]
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.loopexit.i" ], [ %lpad.loopexit125.i, %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.loopexit.split-lp.loopexit.i" ], [ %lpad.loopexit128.i, %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.i" ], [ %lpad.loopexit.split-lp.i, %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i" ]
  call void @mi_free(ptr noundef nonnull %i.eaw) #38, !noalias !37463
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u64$GT$$GT$17hc830dd20d031bb73E.exit215.i"

bb.adk:                                           ; preds = %bb.adx, %.lr.ph289.i
  %.sroa.0.0288.i = phi i64 [ %i.eaa, %.lr.ph289.i ], [ %.sroa.0.1.i600, %bb.adx ] ; 6 uses
  %.sroa.08.0287.i = phi i64 [ 0, %.lr.ph289.i ], [ %.sroa.08.1.i, %bb.adx ] ; 10 uses
  %.sroa.016.0286.i = phi i64 [ 0, %.lr.ph289.i ], [ %i.ela, %bb.adx ] ; 9 uses
  %.sroa.06.0285.i = phi ptr [ %i.eaf, %.lr.ph289.i ], [ %.sroa.06.3.i, %bb.adx ] ; 11 uses
  %.sroa.16.0284.i = phi i64 [ %i.eaa, %.lr.ph289.i ], [ %.sroa.16.3.i, %bb.adx ] ; 4 uses
  %.sroa.06.0285.i2266 = ptrtoaddr ptr %.sroa.06.0285.i to i64
  %i.eis = add i64 %.sroa.016.0286.i, %1          ; 6 uses
  %.sroa.0.0.i.i599 = tail call noundef i64 @llvm.umin.i64(i64 %i.dzz, i64 %i.eis)
  %i.eit = sub i64 %0, %.sroa.016.0286.i
  %i.eiu = add i64 %.sroa.08.0287.i, 128          ; 2 uses
  %i.eiv = icmp ult i64 %.sroa.0.0288.i, %i.eiu
  br i1 %i.eiv, label %.preheader, label %bb.ads

.preheader:                                       ; preds = %bb.adk, %.preheader
  %.sroa.026.1.i = phi i64 [ %i.eix, %.preheader ], [ %.sroa.0.0288.i, %bb.adk ] ; 7 uses
  %i.eiw = icmp ult i64 %.sroa.026.1.i, %i.eiu
  %i.eix = shl i64 %.sroa.026.1.i, 1
  br i1 %i.eiw, label %.preheader, label %bb.adl

bb.adl:                                           ; preds = %.preheader
  %i.eiy = shl i64 %.sroa.026.1.i, 3              ; 4 uses
  %i.eiz = icmp ugt i64 %.sroa.026.1.i, 2305843009213693951
  %i.eja = icmp ugt i64 %i.eiy, 9223372036854775800
  %or.cond.i.i.i.i.i191.i = or i1 %i.eiz, %i.eja
  br i1 %or.cond.i.i.i.i.i191.i, label %bb.ado, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i192.i, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i192.i: ; preds = %bb.adl
  %i.ejb = icmp eq i64 %i.eiy, 0
  br i1 %i.ejb, label %bb.adp, label %bb.adm

bb.adm:                                           ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i192.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !37538
  %i.ejc = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.eiy, i64 noundef range(i64 1, -9223372036854775807) 8) #38, !noalias !37538 ; 2 uses
  %i.ejd = icmp eq ptr %i.ejc, null
  br i1 %i.ejd, label %bb.ado, label %bb.adn

bb.adn:                                           ; preds = %bb.adm
  %i.eje = ptrtoint ptr %i.ejc to i64
  br label %bb.adp

bb.ado:                                           ; preds = %bb.adm, %bb.adl
  %.sroa.4.0.ph.i.i.i195.i = phi i64 [ 8, %bb.adm ], [ 0, %bb.adl ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i195.i, i64 %i.eiy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc196.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !37463

.noexc196.i:                                      ; preds = %bb.ado
  unreachable

bb.adp:                                           ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i192.i, %bb.adn
  %.sroa.10.0.i.i.i194.i = phi i64 [ %i.eje, %bb.adn ], [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i192.i ] ; 4 uses
  %i.ejf = inttoptr i64 %.sroa.10.0.i.i.i194.i to ptr ; 10 uses
  %i.ejg = icmp samesign ult i64 %.sroa.026.1.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ejg)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ejf) ]
  %.not88.i = icmp samesign ugt i64 %.sroa.0.0288.i, %.sroa.16.0284.i
  br i1 %.not88.i, label %bb.adq, label %bb.adr, !prof !29

bb.adq:                                           ; preds = %bb.adp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !37451
  store ptr @186, ptr %i.j, align 8, !noalias !37451
  %i.ejh = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %i.ejh, align 8, !noalias !37451
  %i.eji = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr null, ptr %i.eji, align 8, !noalias !37451
  %i.ejj = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ejj, align 8, !noalias !37451
  %i.ejk = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 0, ptr %i.ejk, align 8, !noalias !37451
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1779) #43
          to label %bb.aby unwind label %.thread117.i, !noalias !37463

.thread117.i:                                     ; preds = %bb.adq
  %i.ejl = landingpad { ptr, i32 }
          cleanup
  call void @mi_free(ptr noundef nonnull %i.ejf) #38, !noalias !37463
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u64$GT$$GT$17hc830dd20d031bb73E.exit215.i"

bb.adr:                                           ; preds = %bb.adp
  %i.ejm = getelementptr inbounds nuw [8 x i8], ptr %i.ejf, i64 %.sroa.0.0288.i
  %i.ejn = ptrtoint ptr %i.ejm to i64             ; 2 uses
  %.not295.i = icmp eq i64 %.sroa.10.0.i.i.i194.i, %i.ejn
  br i1 %.not295.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i203.i", label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.adr
  %i.ejo = sub nuw i64 %i.ejn, %.sroa.10.0.i.i.i194.i
  %i.ejp = lshr exact i64 %i.ejo, 3
  %.sroa.0.0.i.i.i198.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0288.i, i64 %i.ejp) ; 6 uses
  %min.iters.check = icmp samesign ult i64 %.sroa.0.0.i.i.i198.i, 4
  %i.ejq = sub i64 %.sroa.06.0285.i2266, %.sroa.10.0.i.i.i194.i
  %diff.check = icmp ugt i64 %i.ejq, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i601.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %.sroa.0.0.i.i.i198.i, 1152921504606846972 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ejr = getelementptr inbounds nuw [8 x i8], ptr %i.ejf, i64 %index ; 2 uses
  %i.ejs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.0285.i, i64 %index ; 2 uses
  %i.ejt = getelementptr inbounds nuw i8, ptr %i.ejs, i64 16
  %wide.load = load <2 x i64>, ptr %i.ejs, align 8, !noalias !37463
  %wide.load2267 = load <2 x i64>, ptr %i.ejt, align 8, !noalias !37463
  %i.eju = getelementptr inbounds nuw i8, ptr %i.ejr, i64 16
  store <2 x i64> %wide.load, ptr %i.ejr, align 8, !noalias !37463
  store <2 x i64> %wide.load2267, ptr %i.eju, align 8, !noalias !37463
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ejv = icmp eq i64 %index.next, %n.vec
  br i1 %i.ejv, label %middle.block, label %vector.body, !llvm.loop !37543

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.sroa.0.0.i.i.i198.i, %n.vec
  br i1 %cmp.n, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i203.i", label %.lr.ph.i601.preheader

.lr.ph.i601.preheader:                            ; preds = %.lr.ph.preheader.i, %middle.block
  %.sroa.8.0281.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter4527 = and i64 %.sroa.0.0.i.i.i198.i, 3 ; 2 uses
  %lcmp.mod4528.not = icmp eq i64 %xtraiter4527, 0
  br i1 %lcmp.mod4528.not, label %.lr.ph.i601.prol.loopexit, label %.lr.ph.i601.prol

.lr.ph.i601.prol:                                 ; preds = %.lr.ph.i601.preheader, %.lr.ph.i601.prol
  %.sroa.8.0281.i.prol = phi i64 [ %i.ejy, %.lr.ph.i601.prol ], [ %.sroa.8.0281.i.ph, %.lr.ph.i601.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i601.prol ], [ 0, %.lr.ph.i601.preheader ]
  %i.ejw = getelementptr inbounds nuw [8 x i8], ptr %i.ejf, i64 %.sroa.8.0281.i.prol
  %i.ejx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.0285.i, i64 %.sroa.8.0281.i.prol
  %i.ejy = add nuw nsw i64 %.sroa.8.0281.i.prol, 1 ; 2 uses
  %i.ejz = load i64, ptr %i.ejx, align 8, !noalias !37463, !noundef !27
  store i64 %i.ejz, ptr %i.ejw, align 8, !noalias !37463
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter4527
  br i1 %prol.iter.cmp.not, label %.lr.ph.i601.prol.loopexit, label %.lr.ph.i601.prol, !llvm.loop !37544

.lr.ph.i601.prol.loopexit:                        ; preds = %.lr.ph.i601.prol, %.lr.ph.i601.preheader
  %.sroa.8.0281.i.unr = phi i64 [ %.sroa.8.0281.i.ph, %.lr.ph.i601.preheader ], [ %i.ejy, %.lr.ph.i601.prol ]
  %i.eka = sub nsw i64 %.sroa.8.0281.i.ph, %.sroa.0.0.i.i.i198.i
  %i.ekb = icmp ugt i64 %i.eka, -4
  br i1 %i.ekb, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i203.i", label %.lr.ph.i601

.lr.ph.i601:                                      ; preds = %.lr.ph.i601.prol.loopexit, %.lr.ph.i601
  %.sroa.8.0281.i = phi i64 [ %i.ekq, %.lr.ph.i601 ], [ %.sroa.8.0281.i.unr, %.lr.ph.i601.prol.loopexit ] ; 6 uses
  %i.ekc = getelementptr inbounds nuw [8 x i8], ptr %i.ejf, i64 %.sroa.8.0281.i
  %i.ekd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.0285.i, i64 %.sroa.8.0281.i
  %i.eke = add nuw nsw i64 %.sroa.8.0281.i, 1     ; 2 uses
  %i.ekf = load i64, ptr %i.ekd, align 8, !noalias !37463, !noundef !27
  store i64 %i.ekf, ptr %i.ekc, align 8, !noalias !37463
  %i.ekg = getelementptr inbounds nuw [8 x i8], ptr %i.ejf, i64 %i.eke
  %i.ekh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.0285.i, i64 %i.eke
  %i.eki = add nuw nsw i64 %.sroa.8.0281.i, 2     ; 2 uses
  %i.ekj = load i64, ptr %i.ekh, align 8, !noalias !37463, !noundef !27
  store i64 %i.ekj, ptr %i.ekg, align 8, !noalias !37463
  %i.ekk = getelementptr inbounds nuw [8 x i8], ptr %i.ejf, i64 %i.eki
  %i.ekl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.0285.i, i64 %i.eki
  %i.ekm = add nuw nsw i64 %.sroa.8.0281.i, 3     ; 2 uses
  %i.ekn = load i64, ptr %i.ekl, align 8, !noalias !37463, !noundef !27
  store i64 %i.ekn, ptr %i.ekk, align 8, !noalias !37463
  %i.eko = getelementptr inbounds nuw [8 x i8], ptr %i.ejf, i64 %i.ekm
  %i.ekp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.0285.i, i64 %i.ekm
  %i.ekq = add nuw nsw i64 %.sroa.8.0281.i, 4     ; 2 uses
  %i.ekr = load i64, ptr %i.ekp, align 8, !noalias !37463, !noundef !27
  store i64 %i.ekr, ptr %i.eko, align 8, !noalias !37463
  %exitcond.not.i602.3 = icmp eq i64 %i.ekq, %.sroa.0.0.i.i.i198.i
  br i1 %exitcond.not.i602.3, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i203.i", label %.lr.ph.i601, !llvm.loop !37545

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i203.i": ; preds = %.lr.ph.i601.prol.loopexit, %.lr.ph.i601, %middle.block, %bb.adr
  tail call void @mi_free(ptr noundef nonnull align 8 %.sroa.06.0285.i) #38, !noalias !37463
  br label %bb.ads

bb.ads:                                           ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i203.i", %bb.adk
end_hunk_14
begin_hunk_15_@_ZN6brotli3enc6encode22WriteMetaBlockInternal17h7952d72b2f7e6cd4E:bb.a
  store double 0.000000e+00, ptr %i.v, align 8, !noalias !37724
  invoke void @_ZN6brotli3enc9metablock24BrotliInitDistanceParams17hec63d00aadbafeaaE(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.w, i32 noundef 3, i32 noundef %i.ik)
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc39:                                         ; preds = %bb.av
  %i.il = icmp ne i32 %i.ik, %i.hc
  %or.cond.not.3.i = select i1 %i.ij, i1 true, i1 %i.il
  %spec.select.3.i = select i1 %or.cond.not.3.i, i1 %.sroa.013.1444.3.i, i1 false ; 3 uses
  %i.im = invoke noundef zeroext i1 @_ZN6brotli3enc9metablock19ComputeDistanceCost17h236488a253e13cbcE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %14, i64 noundef %15, i64 noundef %13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hd, ptr noalias noundef nonnull align 1 %9, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc40:                                         ; preds = %.noexc39
  br i1 %i.im, label %bb.aw, label %.split870.i

bb.aw:                                            ; preds = %.noexc40
  %i.in = load double, ptr %i.v, align 8, !noalias !37724, !noundef !27 ; 3 uses
  %i.io = fcmp ogt double %i.in, %.sroa.014.1443.3.i
  br i1 %i.io, label %.split870.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.he, ptr noundef nonnull align 8 dereferenceable(24) %i.hd, i64 24, i1 false), !noalias !37721
  %i.ip = add nuw nsw i32 %.sroa.08.1445.3.i, 1   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !37724
  %exitcond.3.not.i = icmp eq i32 %i.ip, 16
  br i1 %exitcond.3.not.i, label %.loopexit295.3.i, label %bb.av

.split870.i:                                      ; preds = %bb.aw, %.noexc40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !37724
  br i1 %spec.select.3.i, label %bb.ak, label %bb.aj

.loopexit295.3.i:                                 ; preds = %bb.ax, %.loopexit295.2.i
  %.sroa.014.1442.3.i = phi double [ %.sroa.014.1442.2.i, %.loopexit295.2.i ], [ %i.in, %bb.ax ]
  %.sroa.013.2.3.i = phi i1 [ %.sroa.013.2.2.i, %.loopexit295.2.i ], [ %spec.select.3.i, %bb.ax ]
  br i1 %.sroa.013.2.3.i, label %bb.ak, label %bb.aj

bb.ay:                                            ; preds = %.noexc34
  %i.iq = load double, ptr %i.v, align 8, !noalias !37724, !noundef !27 ; 3 uses
  %i.ir = fcmp ogt double %i.iq, %.sroa.014.1443.i
  br i1 %i.ir, label %.loopexit295.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.he, ptr noundef nonnull align 8 dereferenceable(24) %i.hd, i64 24, i1 false), !noalias !37721
  %i.is = add nuw nsw i32 %.sroa.08.1445.i, 1     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !37724
  %exitcond.not.i = icmp eq i32 %i.is, 16
  br i1 %exitcond.not.i, label %.lr.ph.1.i, label %bb.an

bb.ba:                                            ; preds = %.noexc
  %i.it = icmp slt i64 %i.gx, 0
  br i1 %i.it, label %.noexc.i.invoke, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.ba
  %i.iu = icmp eq i64 %i.gx, 0
  br i1 %i.iu, label %._crit_edge.i.i.i83.thread.i, label %bb.bb

bb.bb:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !37725
  %i.iv = call noundef ptr @mi_malloc_aligned(i64 noundef %i.gx, i64 noundef range(i64 1, 9) 1) #38, !noalias !37725 ; 6 uses
  %i.iw = icmp eq ptr %i.iv, null
  br i1 %i.iw, label %.noexc.i.invoke, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he15aefe39cdda893E.exit.i.i.i.i"

.noexc.i.invoke:                                  ; preds = %bb.ba, %bb.bb, %.noexc80
  %i.ix = phi i64 [ 4, %.noexc80 ], [ 1, %bb.bb ], [ 0, %bb.ba ]
  %i.iy = phi i64 [ 11272, %.noexc80 ], [ %i.gx, %bb.bb ], [ %i.gx, %bb.ba ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.ix, i64 %i.iy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc.i.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i.cont:                                    ; preds = %.noexc.i.invoke
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he15aefe39cdda893E.exit.i.i.i.i": ; preds = %bb.bb
  %.not.i.i.i = icmp eq i64 %i.gx, 1
  br i1 %.not.i.i.i, label %.lr.ph455.preheader.i, label %._crit_edge.thread.i.i.i.i

._crit_edge.thread.i.i.i.i:                       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he15aefe39cdda893E.exit.i.i.i.i"
  %i.iz = add nsw i64 %i.gx, -1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.iv, i8 range(i8 0, 4) 0, i64 %i.iz, i1 false), !noalias !37732
  %i.ja = getelementptr i8, ptr %i.iv, i64 %i.gx
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.ja, i64 -1
  br label %.lr.ph455.preheader.i

.lr.ph455.preheader.i:                            ; preds = %._crit_edge.thread.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he15aefe39cdda893E.exit.i.i.i.i"
  %.sroa.0.0.lcssa16.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.thread.i.i.i.i ], [ %i.iv, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he15aefe39cdda893E.exit.i.i.i.i" ]
  store i8 0, ptr %.sroa.0.0.lcssa16.i.i.i.i, align 1, !noalias !37732
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.iv, i8 range(i8 0, 4) %7, i64 %i.gx, i1 false), !noalias !37719
  %i.jb = shl i64 %i.gx, 6
  br label %.loopexit294.i

.loopexit294.i:                                   ; preds = %.lr.ph455.preheader.i, %.noexc
  %i.jc = phi i64 [ %i.jb, %.lr.ph455.preheader.i ], [ %i.gx, %.noexc ] ; 10 uses
  %.sroa.10.3.i = phi i64 [ %i.gx, %.lr.ph455.preheader.i ], [ 0, %.noexc ] ; 3 uses
  %.sroa.09.3.i = phi ptr [ %i.iv, %.lr.ph455.preheader.i ], [ inttoptr (i64 1 to ptr), %.noexc ] ; 3 uses
  %i.jd = mul i64 %i.jc, 1040                     ; 3 uses
  %or.cond.i.i.i.i.i.i = icmp ugt i64 %i.jc, 8868626958514207
  br i1 %or.cond.i.i.i.i.i.i, label %bb.bd, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i82.i, !prof !37735

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i82.i: ; preds = %.loopexit294.i
  %i.je = icmp eq i64 %i.jd, 0
  br i1 %i.je, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i", label %bb.bc

bb.bc:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i82.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !37736
  %i.jf = call noundef ptr @mi_malloc_aligned(i64 noundef %i.jd, i64 noundef range(i64 1, 9) 8) #38, !noalias !37736 ; 2 uses
  %i.jg = icmp eq ptr %i.jf, null
  br i1 %i.jg, label %bb.bd, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i"

bb.bd:                                            ; preds = %bb.bc, %.loopexit294.i
  %.sroa.4.0.ph.i.i.i85.i = phi i64 [ 8, %bb.bc ], [ 0, %.loopexit294.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i85.i, i64 %i.jd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc86.i unwind label %bb.he, !noalias !37719

.noexc86.i:                                       ; preds = %bb.bd
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i": ; preds = %bb.bc, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i82.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i82.i ], [ %i.jf, %bb.bc ] ; 5 uses
  %.sroa.4.0.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i82.i ], [ %i.jc, %bb.bc ]
  %i.jh = icmp samesign ule i64 %i.jc, %.sroa.4.0.i.i.i.i
  call void @llvm.assume(i1 %i.jh)
  %i.ji = icmp samesign ugt i64 %i.jc, 1
  br i1 %i.ji, label %.lr.ph.i.i.i.i.preheader, label %._crit_edge.i.i.i83.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i"
  %i.jj = add nsw i64 %i.jc, -1                   ; 2 uses
  %i.jk = add nsw i64 %i.jc, -2
  %xtraiter = and i64 %i.jj, 7                    ; 3 uses
  %i.jl = icmp ult i64 %i.jk, 7
  br i1 %i.jl, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter = and i64 %i.jj, -8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i83.i:                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i"
  %.not.i.i.i.i = icmp eq i64 %i.jc, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i83.thread.i, label %._crit_edge.thread.i.i.i84.i

._crit_edge.thread.i.i.i84.i.loopexit.unr-lcssa:  ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.thread.i.i.i84.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %._crit_edge.thread.i.i.i84.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %.sroa.0.08.i.i.i.i.epil.init = phi ptr [ %.sroa.10.0.i.i.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ju, %._crit_edge.thread.i.i.i84.i.loopexit.unr-lcssa ]
  %lcmp.mod1342 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1342)
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %.sroa.0.08.i.i.i.i.epil = phi ptr [ %i.jm, %.lr.ph.i.i.i.i.epil ], [ %.sroa.0.08.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.epil, i64 1032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i.i.epil, i8 0, i64 1032, i1 false), !noalias !37719
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.epil, align 8, !noalias !37744
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.epil, i64 1040 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread.i.i.i84.i, label %.lr.ph.i.i.i.i.epil, !llvm.loop !37747

._crit_edge.thread.i.i.i84.i:                     ; preds = %._crit_edge.thread.i.i.i84.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.epil, %._crit_edge.i.i.i83.i
  %.sroa.0.0.lcssa15.i.i.i.i = phi ptr [ %.sroa.10.0.i.i.i.i, %._crit_edge.i.i.i83.i ], [ %i.ju, %._crit_edge.thread.i.i.i84.i.loopexit.unr-lcssa ], [ %i.jm, %.lr.ph.i.i.i.i.epil ] ; 2 uses
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i.i, i64 1032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.0.lcssa15.i.i.i.i, i8 0, i64 1032, i1 false), !noalias !37719
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i, align 8, !noalias !37744
  br label %._crit_edge.i.i.i83.thread.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %.sroa.0.08.i.i.i.i = phi ptr [ %.sroa.10.0.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new ], [ %i.ju, %.lr.ph.i.i.i.i ] ; 17 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 1032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i.i, i8 0, i64 1032, i1 false), !noalias !37719
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i, align 8, !noalias !37744
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 1040
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 2072
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.jn, i8 0, i64 1032, i1 false), !noalias !37719
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.1, align 8, !noalias !37744
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 2080
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 3112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.jo, i8 0, i64 1032, i1 false), !noalias !37719
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.2, align 8, !noalias !37744
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 3120
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 4152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.jp, i8 0, i64 1032, i1 false), !noalias !37719
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.3, align 8, !noalias !37744
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 4160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 5192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.jq, i8 0, i64 1032, i1 false), !noalias !37719
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.4, align 8, !noalias !37744
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 5200
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 6232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.jr, i8 0, i64 1032, i1 false), !noalias !37719
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.5, align 8, !noalias !37744
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 6240
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 7272
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.js, i8 0, i64 1032, i1 false), !noalias !37719
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.6, align 8, !noalias !37744
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 7280
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 8312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.jt, i8 0, i64 1032, i1 false), !noalias !37719
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.7, align 8, !noalias !37744
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 8320 ; 3 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.thread.i.i.i84.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i83.thread.i:                     ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, %._crit_edge.thread.i.i.i84.i, %._crit_edge.i.i.i83.i
  %.sroa.10.0.i.i.i899.i = phi ptr [ %.sroa.10.0.i.i.i.i, %._crit_edge.thread.i.i.i84.i ], [ %.sroa.10.0.i.i.i.i, %._crit_edge.i.i.i83.i ], [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ] ; 15 uses
  %.sroa.09.3880885895.i = phi ptr [ %.sroa.09.3.i, %._crit_edge.thread.i.i.i84.i ], [ %.sroa.09.3.i, %._crit_edge.i.i.i83.i ], [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ] ; 6 uses
  %.sroa.10.3877886892.i = phi i64 [ %.sroa.10.3.i, %._crit_edge.thread.i.i.i84.i ], [ %.sroa.10.3.i, %._crit_edge.i.i.i83.i ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ] ; 7 uses
  %i.jv = phi i64 [ %i.jc, %._crit_edge.thread.i.i.i84.i ], [ 0, %._crit_edge.i.i.i83.i ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ] ; 34 uses
  %i.jw = load i64, ptr %.sroa.737.0..sroa_idx.i, align 8, !alias.scope !37719, !noalias !37723, !noundef !27 ; 2 uses
  %i.jx = shl i64 %i.jw, 2                        ; 31 uses
  %i.jy = mul i64 %i.jw, 8768                     ; 3 uses
  %or.cond.i.i.i.i.i87.i = icmp ugt i64 %i.jx, 4207742717543237
  br i1 %or.cond.i.i.i.i.i87.i, label %bb.bf, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i88.i, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i88.i: ; preds = %._crit_edge.i.i.i83.thread.i
  %i.jz = icmp eq i64 %i.jy, 0
  br i1 %i.jz, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i", label %bb.be

bb.be:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i88.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !37748
  %i.ka = call noundef ptr @mi_malloc_aligned(i64 noundef %i.jy, i64 noundef range(i64 1, 9) 8) #38, !noalias !37748 ; 2 uses
  %i.kb = icmp eq ptr %i.ka, null
  br i1 %i.kb, label %bb.bf, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i"

bb.bf:                                            ; preds = %bb.be, %._crit_edge.i.i.i83.thread.i
  %.sroa.4.0.ph.i.i.i99.i = phi i64 [ 8, %bb.be ], [ 0, %._crit_edge.i.i.i83.thread.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i99.i, i64 %i.jy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc100.i unwind label %bb.he, !noalias !37719

.noexc100.i:                                      ; preds = %bb.bf
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i": ; preds = %bb.be, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i88.i
  %.sroa.10.0.i.i.i89.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i88.i ], [ %i.ka, %bb.be ] ; 19 uses
  %.sroa.4.0.i.i.i90.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i88.i ], [ %i.jx, %bb.be ]
  %i.kc = icmp samesign ule i64 %i.jx, %.sroa.4.0.i.i.i90.i
  call void @llvm.assume(i1 %i.kc)
  %.not232.i = icmp eq i64 %i.jx, 0               ; 2 uses
  br i1 %.not232.i, label %._crit_edge.i.i.i91.i, label %.lr.ph.i.i.i95.i.preheader

.lr.ph.i.i.i95.i.preheader:                       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i"
  %i.kd = add nsw i64 %i.jx, -1                   ; 2 uses
  %i.ke = add nsw i64 %i.jx, -2
  %xtraiter1343 = and i64 %i.kd, 7
  %i.kf = icmp ult i64 %i.ke, 7
  br i1 %i.kf, label %.lr.ph.i.i.i95.i.epil.preheader, label %.lr.ph.i.i.i95.i.preheader.new

.lr.ph.i.i.i95.i.preheader.new:                   ; preds = %.lr.ph.i.i.i95.i.preheader
  %unroll_iter1349 = and i64 %i.kd, -8
  br label %.lr.ph.i.i.i95.i

.lr.ph.i.i.i95.i.epil.preheader:                  ; preds = %.lr.ph.i.i.i95.i, %.lr.ph.i.i.i95.i.preheader
  %.sroa.0.08.i.i.i96.i.epil.init = phi ptr [ %.sroa.10.0.i.i.i89.i, %.lr.ph.i.i.i95.i.preheader ], [ %i.ko, %.lr.ph.i.i.i95.i ]
  br label %.lr.ph.i.i.i95.i.epil

.lr.ph.i.i.i95.i.epil:                            ; preds = %.lr.ph.i.i.i95.i.epil, %.lr.ph.i.i.i95.i.epil.preheader
  %.sroa.0.08.i.i.i96.i.epil = phi ptr [ %i.kg, %.lr.ph.i.i.i95.i.epil ], [ %.sroa.0.08.i.i.i96.i.epil.init, %.lr.ph.i.i.i95.i.epil.preheader ] ; 4 uses
  %epil.iter1344 = phi i64 [ %epil.iter1344.next, %.lr.ph.i.i.i95.i.epil ], [ 0, %.lr.ph.i.i.i95.i.epil.preheader ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i96.i.epil, i8 0, i64 2184, i1 false), !noalias !37719
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i96.i.epil, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.epil, align 8, !noalias !37756
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i96.i.epil, i64 2192 ; 2 uses
  %epil.iter1344.next = add i64 %epil.iter1344, 1 ; 2 uses
  %epil.iter1344.cmp.not = icmp eq i64 %epil.iter1344.next, %xtraiter1343
  br i1 %epil.iter1344.cmp.not, label %._crit_edge.thread.i.i.i93.i, label %.lr.ph.i.i.i95.i.epil, !llvm.loop !37759

._crit_edge.thread.i.i.i93.i:                     ; preds = %.lr.ph.i.i.i95.i.epil
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.kg, i8 0, i64 2184, i1 false), !noalias !37719
  %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i96.i.epil, i64 4376
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i, align 8, !noalias !37756
  br label %._crit_edge.i.i.i91.i

.lr.ph.i.i.i95.i:                                 ; preds = %.lr.ph.i.i.i95.i, %.lr.ph.i.i.i95.i.preheader.new
  %.sroa.0.08.i.i.i96.i = phi ptr [ %.sroa.10.0.i.i.i89.i, %.lr.ph.i.i.i95.i.preheader.new ], [ %i.ko, %.lr.ph.i.i.i95.i ] ; 17 uses
  %niter1350 = phi i64 [ 0, %.lr.ph.i.i.i95.i.preheader.new ], [ %niter1350.next.7, %.lr.ph.i.i.i95.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i96.i, i8 0, i64 2184, i1 false), !noalias !37719
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i96.i, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i, align 8, !noalias !37756
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i96.i, i64 2192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.kh, i8 0, i64 2184, i1 false), !noalias !37719
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i96.i, i64 4376
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.1, align 8, !noalias !37756
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i96.i, i64 4384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ki, i8 0, i64 2184, i1 false), !noalias !37719
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i96.i, i64 6568
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.2, align 8, !noalias !37756
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i96.i, i64 6576
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.kj, i8 0, i64 2184, i1 false), !noalias !37719
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i96.i, i64 8760
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.3, align 8, !noalias !37756
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i96.i, i64 8768
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.kk, i8 0, i64 2184, i1 false), !noalias !37719
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i96.i, i64 10952
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.4, align 8, !noalias !37756
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i96.i, i64 10960
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.kl, i8 0, i64 2184, i1 false), !noalias !37719
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i96.i, i64 13144
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.5, align 8, !noalias !37756
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i96.i, i64 13152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.km, i8 0, i64 2184, i1 false), !noalias !37719
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i96.i, i64 15336
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.6, align 8, !noalias !37756
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i96.i, i64 15344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.kn, i8 0, i64 2184, i1 false), !noalias !37719
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i96.i, i64 17528
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.7, align 8, !noalias !37756
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i96.i, i64 17536 ; 2 uses
  %niter1350.next.7 = add nuw i64 %niter1350, 8   ; 2 uses
  %niter1350.ncmp.7 = icmp eq i64 %niter1350.next.7, %unroll_iter1349
  br i1 %niter1350.ncmp.7, label %.lr.ph.i.i.i95.i.epil.preheader, label %.lr.ph.i.i.i95.i

._crit_edge.i.i.i91.i:                            ; preds = %._crit_edge.thread.i.i.i93.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i"
  %i.kp = load i64, ptr %.sroa.732.0..sroa_idx.i, align 8, !alias.scope !37719, !noalias !37723, !noundef !27 ; 12 uses
  store i64 %i.kp, ptr %i.fj, align 8, !alias.scope !37719, !noalias !37723
  %i.kq = mul i64 %i.kp, 2832                     ; 3 uses
  %or.cond.i.i.i.i.i101.i = icmp ugt i64 %i.kp, 3256840408493918
  br i1 %or.cond.i.i.i.i.i101.i, label %bb.bh, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i102.i, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i102.i: ; preds = %._crit_edge.i.i.i91.i
  %i.kr = icmp eq i64 %i.kq, 0
  br i1 %i.kr, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i", label %bb.bg

bb.bg:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i102.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !37760
  %i.ks = call noundef ptr @mi_malloc_aligned(i64 noundef %i.kq, i64 noundef range(i64 1, 9) 8) #38, !noalias !37760 ; 2 uses
  %i.kt = icmp eq ptr %i.ks, null
  br i1 %i.kt, label %bb.bh, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i"

bb.bh:                                            ; preds = %bb.bg, %._crit_edge.i.i.i91.i
  %.sroa.4.0.ph.i.i.i115.i = phi i64 [ 8, %bb.bg ], [ 0, %._crit_edge.i.i.i91.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i115.i, i64 %i.kq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc116.i unwind label %bb.he, !noalias !37719

.noexc116.i:                                      ; preds = %bb.bh
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i": ; preds = %bb.bg, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i102.i
  %.sroa.10.0.i.i.i103.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i102.i ], [ %i.ks, %bb.bg ] ; 5 uses
  %.sroa.4.0.i.i.i104.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i102.i ], [ %i.kp, %bb.bg ]
  %i.ku = icmp samesign ule i64 %i.kp, %.sroa.4.0.i.i.i104.i
  call void @llvm.assume(i1 %i.ku)
  %i.kv = icmp samesign ugt i64 %i.kp, 1
  br i1 %i.kv, label %.lr.ph.i.i.i110.i.preheader, label %._crit_edge.i.i.i105.i

.lr.ph.i.i.i110.i.preheader:                      ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i"
  %i.kw = add nsw i64 %i.kp, -1                   ; 2 uses
  %i.kx = add nsw i64 %i.kp, -2
  %xtraiter1351 = and i64 %i.kw, 7                ; 3 uses
  %i.ky = icmp ult i64 %i.kx, 7
  br i1 %i.ky, label %.lr.ph.i.i.i110.i.epil.preheader, label %.lr.ph.i.i.i110.i.preheader.new

.lr.ph.i.i.i110.i.preheader.new:                  ; preds = %.lr.ph.i.i.i110.i.preheader
  %unroll_iter1356 = and i64 %i.kw, -8
  br label %.lr.ph.i.i.i110.i

._crit_edge.i.i.i105.i:                           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i"
  %.not.i.i.i106.i = icmp eq i64 %i.kp, 0
  br i1 %.not.i.i.i106.i, label %bb.bi, label %._crit_edge.thread.i.i.i107.i

._crit_edge.thread.i.i.i107.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i110.i
  %lcmp.mod1353.not = icmp eq i64 %xtraiter1351, 0
  br i1 %lcmp.mod1353.not, label %._crit_edge.thread.i.i.i107.i, label %.lr.ph.i.i.i110.i.epil.preheader

.lr.ph.i.i.i110.i.epil.preheader:                 ; preds = %._crit_edge.thread.i.i.i107.i.loopexit.unr-lcssa, %.lr.ph.i.i.i110.i.preheader
  %.sroa.0.08.i.i.i111.i.epil.init = phi ptr [ %.sroa.10.0.i.i.i103.i, %.lr.ph.i.i.i110.i.preheader ], [ %i.lh, %._crit_edge.thread.i.i.i107.i.loopexit.unr-lcssa ]
  %lcmp.mod1355 = icmp ne i64 %xtraiter1351, 0
  call void @llvm.assume(i1 %lcmp.mod1355)
  br label %.lr.ph.i.i.i110.i.epil

.lr.ph.i.i.i110.i.epil:                           ; preds = %.lr.ph.i.i.i110.i.epil, %.lr.ph.i.i.i110.i.epil.preheader
  %.sroa.0.08.i.i.i111.i.epil = phi ptr [ %i.kz, %.lr.ph.i.i.i110.i.epil ], [ %.sroa.0.08.i.i.i111.i.epil.init, %.lr.ph.i.i.i110.i.epil.preheader ] ; 3 uses
  %epil.iter1352 = phi i64 [ %epil.iter1352.next, %.lr.ph.i.i.i110.i.epil ], [ 0, %.lr.ph.i.i.i110.i.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i113.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i111.i.epil, i64 2824
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.08.i.i.i111.i.epil, i8 0, i64 2824, i1 false), !noalias !37719
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i113.i.epil, align 8, !noalias !37768
  %i.kz = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i111.i.epil, i64 2832 ; 2 uses
  %epil.iter1352.next = add i64 %epil.iter1352, 1 ; 2 uses
  %epil.iter1352.cmp.not = icmp eq i64 %epil.iter1352.next, %xtraiter1351
  br i1 %epil.iter1352.cmp.not, label %._crit_edge.thread.i.i.i107.i, label %.lr.ph.i.i.i110.i.epil, !llvm.loop !37771

._crit_edge.thread.i.i.i107.i:                    ; preds = %._crit_edge.thread.i.i.i107.i.loopexit.unr-lcssa, %.lr.ph.i.i.i110.i.epil, %._crit_edge.i.i.i105.i
  %.sroa.0.0.lcssa15.i.i.i108.i = phi ptr [ %.sroa.10.0.i.i.i103.i, %._crit_edge.i.i.i105.i ], [ %i.lh, %._crit_edge.thread.i.i.i107.i.loopexit.unr-lcssa ], [ %i.kz, %.lr.ph.i.i.i110.i.epil ] ; 2 uses
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i109.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i108.i, i64 2824
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.0.lcssa15.i.i.i108.i, i8 0, i64 2824, i1 false), !noalias !37719
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i109.i, align 8, !noalias !37768
  br label %bb.bi

.lr.ph.i.i.i110.i:                                ; preds = %.lr.ph.i.i.i110.i, %.lr.ph.i.i.i110.i.preheader.new
  %.sroa.0.08.i.i.i111.i = phi ptr [ %.sroa.10.0.i.i.i103.i, %.lr.ph.i.i.i110.i.preheader.new ], [ %i.lh, %.lr.ph.i.i.i110.i ] ; 17 uses
  %niter1357 = phi i64 [ 0, %.lr.ph.i.i.i110.i.preheader.new ], [ %niter1357.next.7, %.lr.ph.i.i.i110.i ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i113.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i111.i, i64 2824
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.08.i.i.i111.i, i8 0, i64 2824, i1 false), !noalias !37719
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i113.i, align 8, !noalias !37768
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i111.i, i64 2832
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i113.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i111.i, i64 5656
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.la, i8 0, i64 2824, i1 false), !noalias !37719
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i113.i.1, align 8, !noalias !37768
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i111.i, i64 5664
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i113.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i111.i, i64 8488
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.lb, i8 0, i64 2824, i1 false), !noalias !37719
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i113.i.2, align 8, !noalias !37768
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i111.i, i64 8496
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i113.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i111.i, i64 11320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.lc, i8 0, i64 2824, i1 false), !noalias !37719
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i113.i.3, align 8, !noalias !37768
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i111.i, i64 11328
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i113.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i111.i, i64 14152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.ld, i8 0, i64 2824, i1 false), !noalias !37719
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i113.i.4, align 8, !noalias !37768
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i111.i, i64 14160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i113.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i111.i, i64 16984
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.le, i8 0, i64 2824, i1 false), !noalias !37719
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i113.i.5, align 8, !noalias !37768
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i111.i, i64 16992
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i113.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i111.i, i64 19816
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.lf, i8 0, i64 2824, i1 false), !noalias !37719
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i113.i.6, align 8, !noalias !37768
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i111.i, i64 19824
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i113.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i111.i, i64 22648
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.lg, i8 0, i64 2824, i1 false), !noalias !37719
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i113.i.7, align 8, !noalias !37768
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i111.i, i64 22656 ; 3 uses
  %niter1357.next.7 = add nuw i64 %niter1357, 8   ; 2 uses
  %niter1357.ncmp.7 = icmp eq i64 %niter1357.next.7, %unroll_iter1356
  br i1 %niter1357.ncmp.7, label %._crit_edge.thread.i.i.i107.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i110.i

bb.bi:                                            ; preds = %._crit_edge.thread.i.i.i107.i, %._crit_edge.i.i.i105.i
  %.val54.i = load i64, ptr %i.fi, align 8, !alias.scope !37719, !noalias !37723, !noundef !27
  %i.li = icmp eq i64 %.val54.i, 0
  br i1 %i.li, label %bb.bj, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i117.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i117.i": ; preds = %bb.bi
  %.val53.i = load ptr, ptr %i.fh, align 8, !alias.scope !37719, !noalias !37723, !nonnull !27, !noundef !27
  call void @mi_free(ptr noundef nonnull %.val53.i) #38, !noalias !37719
  br label %bb.bj

bb.bj:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i117.i", %bb.bi
  store ptr %.sroa.10.0.i.i.i103.i, ptr %i.fh, align 8, !alias.scope !37719, !noalias !37723
  store i64 %i.kp, ptr %i.fi, align 8, !alias.scope !37719, !noalias !37723
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.3880885895.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !37772)
  call void @llvm.experimental.noalias.scope.decl(metadata !37775)
  call void @llvm.experimental.noalias.scope.decl(metadata !37777)
  call void @llvm.experimental.noalias.scope.decl(metadata !37779)
  call void @llvm.experimental.noalias.scope.decl(metadata !37781)
  call void @llvm.experimental.noalias.scope.decl(metadata !37783)
  call void @llvm.experimental.noalias.scope.decl(metadata !37785)
  call void @llvm.experimental.noalias.scope.decl(metadata !37787)
  call void @llvm.experimental.noalias.scope.decl(metadata !37789)
  call void @llvm.experimental.noalias.scope.decl(metadata !37791)
  %.val3.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !37794, !noalias !37795, !noundef !27 ; 5 uses
  %i.lj = icmp eq i64 %.val3.i.i.i, 0
  br i1 %i.lj, label %"_ZN6brotli3enc9histogram31BlockSplitIterator$LT$Alloc$GT$3new17hd7dc461b2741dafcE.exit.i.i", label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %.val2.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i25, align 8, !alias.scope !37794, !noalias !37795, !nonnull !27, !align !603, !noundef !27
  %i.lk = load i32, ptr %.val2.i.i.i, align 4, !noalias !37797, !noundef !27
  %i.ll = zext i32 %i.lk to i64
  br label %"_ZN6brotli3enc9histogram31BlockSplitIterator$LT$Alloc$GT$3new17hd7dc461b2741dafcE.exit.i.i"

"_ZN6brotli3enc9histogram31BlockSplitIterator$LT$Alloc$GT$3new17hd7dc461b2741dafcE.exit.i.i": ; preds = %bb.bk, %bb.bj
  %.sroa.0.0.i33.i.i = phi i64 [ %i.ll, %bb.bk ], [ 0, %bb.bj ]
  call void @llvm.experimental.noalias.scope.decl(metadata !37798)
  %.val3.i34.i.i = load i64, ptr %.sroa.631.0..sroa_idx.i, align 8, !alias.scope !37801, !noalias !37802, !noundef !27 ; 3 uses
  %i.lm = icmp eq i64 %.val3.i34.i.i, 0
  br i1 %i.lm, label %"_ZN6brotli3enc9histogram31BlockSplitIterator$LT$Alloc$GT$3new17hd7dc461b2741dafcE.exit37.i.i", label %bb.bl

bb.bl:                                            ; preds = %"_ZN6brotli3enc9histogram31BlockSplitIterator$LT$Alloc$GT$3new17hd7dc461b2741dafcE.exit.i.i"
  %.val2.i35.i.i = load ptr, ptr %.sroa.530.0..sroa_idx.i, align 8, !alias.scope !37801, !noalias !37802, !nonnull !27, !align !603, !noundef !27
  %i.ln = load i32, ptr %.val2.i35.i.i, align 4, !noalias !37804, !noundef !27
  %i.lo = zext i32 %i.ln to i64
  br label %"_ZN6brotli3enc9histogram31BlockSplitIterator$LT$Alloc$GT$3new17hd7dc461b2741dafcE.exit37.i.i"

"_ZN6brotli3enc9histogram31BlockSplitIterator$LT$Alloc$GT$3new17hd7dc461b2741dafcE.exit37.i.i": ; preds = %bb.bl, %"_ZN6brotli3enc9histogram31BlockSplitIterator$LT$Alloc$GT$3new17hd7dc461b2741dafcE.exit.i.i"
  %.sroa.0.0.i36.i.i = phi i64 [ %i.lo, %bb.bl ], [ 0, %"_ZN6brotli3enc9histogram31BlockSplitIterator$LT$Alloc$GT$3new17hd7dc461b2741dafcE.exit.i.i" ]
  call void @llvm.experimental.noalias.scope.decl(metadata !37805)
  %.val3.i38.i.i = load i64, ptr %.sroa.636.0..sroa_idx.i, align 8, !alias.scope !37808, !noalias !37809, !noundef !27 ; 3 uses
  %i.lp = icmp eq i64 %.val3.i38.i.i, 0
  br i1 %i.lp, label %"_ZN6brotli3enc9histogram31BlockSplitIterator$LT$Alloc$GT$3new17hd7dc461b2741dafcE.exit41.i.i", label %bb.bm

bb.bm:                                            ; preds = %"_ZN6brotli3enc9histogram31BlockSplitIterator$LT$Alloc$GT$3new17hd7dc461b2741dafcE.exit37.i.i"
  %.val2.i39.i.i = load ptr, ptr %.sroa.535.0..sroa_idx.i, align 8, !alias.scope !37808, !noalias !37809, !nonnull !27, !align !603, !noundef !27
  %i.lq = load i32, ptr %.val2.i39.i.i, align 4, !noalias !37811, !noundef !27
  %i.lr = zext i32 %i.lq to i64
  br label %"_ZN6brotli3enc9histogram31BlockSplitIterator$LT$Alloc$GT$3new17hd7dc461b2741dafcE.exit41.i.i"

"_ZN6brotli3enc9histogram31BlockSplitIterator$LT$Alloc$GT$3new17hd7dc461b2741dafcE.exit41.i.i": ; preds = %bb.bm, %"_ZN6brotli3enc9histogram31BlockSplitIterator$LT$Alloc$GT$3new17hd7dc461b2741dafcE.exit37.i.i"
  %.sroa.0.0.i40.i.i = phi i64 [ %i.lr, %bb.bm ], [ 0, %"_ZN6brotli3enc9histogram31BlockSplitIterator$LT$Alloc$GT$3new17hd7dc461b2741dafcE.exit37.i.i" ]
  %.not.i.i = icmp eq i64 %13, 0
  br i1 %.not.i.i, label %_ZN6brotli3enc9histogram32BrotliBuildHistogramsWithContext17he185d5f2a22180eeE.exit.i, label %.lr.ph219.i.i

.lr.ph219.i.i:                                    ; preds = %"_ZN6brotli3enc9histogram31BlockSplitIterator$LT$Alloc$GT$3new17hd7dc461b2741dafcE.exit41.i.i"
  %.val7.i.i.i = load i64, ptr %.sroa.429.0..sroa_idx.i, align 8, !alias.scope !37812, !noalias !37813 ; 2 uses
  %.val6.i.i.i = load ptr, ptr %i.ew, align 8, !alias.scope !37812, !noalias !37813, !nonnull !27, !align !206
  %.val.i.i.i = load ptr, ptr %.sroa.530.0..sroa_idx.i, align 8, !alias.scope !37812, !noalias !37813, !nonnull !27, !align !603
  %.val7.i42.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i24, align 8, !alias.scope !37814, !noalias !37815 ; 4 uses
  %.val6.i43.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !37814, !noalias !37815, !nonnull !27, !align !206 ; 2 uses
  %.val.i45.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i25, align 8, !alias.scope !37814, !noalias !37815, !nonnull !27, !align !603 ; 2 uses
  %i.ls = icmp eq i64 %.sroa.10.3877886892.i, 0
  %.val7.i47.i.i = load i64, ptr %.sroa.434.0..sroa_idx.i, align 8, !alias.scope !37816, !noalias !37817 ; 2 uses
  %.val6.i48.i.i = load ptr, ptr %i.ex, align 8, !alias.scope !37816, !noalias !37817, !nonnull !27, !align !206
  %.val.i50.i.i = load ptr, ptr %.sroa.535.0..sroa_idx.i, align 8, !alias.scope !37816, !noalias !37817, !nonnull !27, !align !603
  br label %bb.bn

bb.bn:                                            ; preds = %bb.cb, %.lr.ph219.i.i
  %.sroa.015.1218.i.i = phi i64 [ 1, %.lr.ph219.i.i ], [ %.sroa.015.1.i.i, %bb.cb ] ; 3 uses
  %.sroa.0.0217.i.i = phi i8 [ %10, %.lr.ph219.i.i ], [ %.sroa.0.2.i.i, %bb.cb ] ; 3 uses
  %.sroa.02.0216.i.i = phi i8 [ %11, %.lr.ph219.i.i ], [ %.sroa.02.2.i.i, %bb.cb ] ; 2 uses
  %.sroa.03.0215.i.i = phi i64 [ %i.gp, %.lr.ph219.i.i ], [ %i.oc, %bb.cb ] ; 3 uses
  %.sroa.015.0214.i.i = phi i64 [ 0, %.lr.ph219.i.i ], [ %.sroa.015.1218.i.i, %bb.cb ] ; 3 uses
  %.sroa.4.0213.i.i = phi i64 [ 0, %.lr.ph219.i.i ], [ %.sroa.4.1.lcssa.i.i, %bb.cb ] ; 3 uses
  %.sroa.6.0212.i.i = phi i64 [ 0, %.lr.ph219.i.i ], [ %.sroa.6.1.lcssa.i.i, %bb.cb ] ; 3 uses
  %.sroa.9.0211.i.i = phi i64 [ %.sroa.0.0.i33.i.i, %.lr.ph219.i.i ], [ %.sroa.9.1.lcssa.i.i, %bb.cb ] ; 3 uses
  %.sroa.454.0210.i.i = phi i64 [ 0, %.lr.ph219.i.i ], [ %.sroa.454.1.i.i, %bb.cb ] ; 2 uses
  %.sroa.655.0209.i.i = phi i64 [ 0, %.lr.ph219.i.i ], [ %.sroa.655.1.i.i, %bb.cb ]
  %.sroa.8.0208.i.i = phi i64 [ %.sroa.0.0.i36.i.i, %.lr.ph219.i.i ], [ %i.mg, %bb.cb ] ; 2 uses
  %.sroa.457.0207.i.i = phi i64 [ 0, %.lr.ph219.i.i ], [ %.sroa.457.1.i.i, %bb.cb ] ; 4 uses
  %.sroa.658.0206.i.i = phi i64 [ 0, %.lr.ph219.i.i ], [ %.sroa.658.1.i.i, %bb.cb ] ; 3 uses
  %.sroa.859.0205.i.i = phi i64 [ %.sroa.0.0.i40.i.i, %.lr.ph219.i.i ], [ %.sroa.859.1.i.i, %bb.cb ] ; 4 uses
  %i.lt = icmp ult i64 %.sroa.015.0214.i.i, %15
  br i1 %i.lt, label %bb.bo, label %.invoke1133.i

bb.bo:                                            ; preds = %bb.bn
  %i.lu = getelementptr inbounds nuw [16 x i8], ptr %14, i64 %.sroa.015.0214.i.i ; 4 uses
  %i.lv = icmp eq i64 %.sroa.8.0208.i.i, 0
  br i1 %i.lv, label %bb.bp, label %"_ZN6brotli3enc9histogram31BlockSplitIterator$LT$Alloc$GT$4next17hf1f758c6d0c94321E.exit.i.i"

bb.bp:                                            ; preds = %bb.bo
  %i.lw = add i64 %.sroa.454.0210.i.i, 1          ; 7 uses
  %i.lx = icmp ult i64 %i.lw, %.val7.i.i.i
  br i1 %i.lx, label %bb.bq, label %.invoke1133.i

bb.bq:                                            ; preds = %bb.bp
  %i.ly = icmp ult i64 %i.lw, %.val3.i34.i.i
  br i1 %i.ly, label %bb.br, label %.invoke1133.i

bb.br:                                            ; preds = %bb.bq
  %i.lz = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 %i.lw
  %i.ma = load i8, ptr %i.lz, align 1, !noalias !37818, !noundef !27
  %i.mb = zext i8 %i.ma to i64
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %i.lw
  %i.md = load i32, ptr %i.mc, align 4, !noalias !37818, !noundef !27
  %i.me = zext i32 %i.md to i64
  br label %"_ZN6brotli3enc9histogram31BlockSplitIterator$LT$Alloc$GT$4next17hf1f758c6d0c94321E.exit.i.i"

"_ZN6brotli3enc9histogram31BlockSplitIterator$LT$Alloc$GT$4next17hf1f758c6d0c94321E.exit.i.i": ; preds = %bb.br, %bb.bo
  %.sroa.655.1.i.i = phi i64 [ %i.mb, %bb.br ], [ %.sroa.655.0209.i.i, %bb.bo ] ; 4 uses
  %.sroa.454.1.i.i = phi i64 [ %i.lw, %bb.br ], [ %.sroa.454.0210.i.i, %bb.bo ]
  %i.mf = phi i64 [ %i.me, %bb.br ], [ %.sroa.8.0208.i.i, %bb.bo ]
  %i.mg = add i64 %i.mf, -1
  %i.mh = icmp ult i64 %.sroa.655.1.i.i, %i.kp
  br i1 %i.mh, label %bb.bs, label %.invoke1133.i

bb.bs:                                            ; preds = %"_ZN6brotli3enc9histogram31BlockSplitIterator$LT$Alloc$GT$4next17hf1f758c6d0c94321E.exit.i.i"
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lu, i64 12
  %i.mj = load i16, ptr %i.mi, align 4, !alias.scope !37821, !noalias !37822, !noundef !27 ; 4 uses
  %i.mk = zext i16 %i.mj to i64                   ; 2 uses
  %i.ml = icmp ult i16 %i.mj, 704
  br i1 %i.ml, label %_ZN6brotli3enc9histogram16HistogramAddItem17hd4bb9e12450b56bfE.exit.i.i, label %.invoke1133.i

_ZN6brotli3enc9histogram16HistogramAddItem17hd4bb9e12450b56bfE.exit.i.i: ; preds = %bb.bs
  %i.mm = getelementptr inbounds nuw [2832 x i8], ptr %.sroa.10.0.i.i.i103.i, i64 %.sroa.655.1.i.i ; 2 uses
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %i.mk ; 2 uses
  %i.mo = load i32, ptr %i.mn, align 4, !alias.scope !37823, !noalias !37826, !noundef !27
  %i.mp = add i32 %i.mo, 1
  store i32 %i.mp, ptr %i.mn, align 4, !alias.scope !37823, !noalias !37826
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mm, i64 2816 ; 2 uses
  %i.mr = load i64, ptr %i.mq, align 8, !alias.scope !37827, !noalias !37826, !noundef !27
  %i.ms = add i64 %i.mr, 1
  store i64 %i.ms, ptr %i.mq, align 8, !alias.scope !37830, !noalias !37826
  %i.mt = load i32, ptr %i.lu, align 4, !alias.scope !37821, !noalias !37822, !noundef !27 ; 2 uses
  %i.mu = icmp eq i32 %i.mt, 0
  br i1 %i.mu, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN6brotli3enc9histogram16HistogramAddItem17hd4bb9e12450b56bfE.exit.i.i
  %i.mv = zext i32 %i.mt to i64                   ; 2 uses
  br i1 %i.ls, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.bx
  %.sroa.0.1183.us.i.i = phi i8 [ %i.nn, %bb.bx ], [ %.sroa.0.0217.i.i, %.lr.ph.i.i ]
  %.sroa.03.1181.us.i.i = phi i64 [ %i.nv, %bb.bx ], [ %.sroa.03.0215.i.i, %.lr.ph.i.i ] ; 2 uses
  %.sroa.011.0180.us.i.i = phi i64 [ %i.nw, %bb.bx ], [ %i.mv, %.lr.ph.i.i ]
  %.sroa.4.1179.us.i.i = phi i64 [ %.sroa.4.2.us.i.i, %bb.bx ], [ %.sroa.4.0213.i.i, %.lr.ph.i.i ] ; 2 uses
  %.sroa.6.1178.us.i.i = phi i64 [ %.sroa.6.2.us.i.i, %bb.bx ], [ %.sroa.6.0212.i.i, %.lr.ph.i.i ]
  %.sroa.9.1177.us.i.i = phi i64 [ %i.nh, %bb.bx ], [ %.sroa.9.0211.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.mw = icmp eq i64 %.sroa.9.1177.us.i.i, 0
  br i1 %i.mw, label %bb.bt, label %"_ZN6brotli3enc9histogram31BlockSplitIterator$LT$Alloc$GT$4next17hf1f758c6d0c94321E.exit46.us.i.i"

bb.bt:                                            ; preds = %.lr.ph.split.us.i.i
  %i.mx = add i64 %.sroa.4.1179.us.i.i, 1         ; 7 uses
  %i.my = icmp ult i64 %i.mx, %.val7.i42.i.i
  br i1 %i.my, label %bb.bu, label %.invoke1133.i

bb.bu:                                            ; preds = %bb.bt
  %i.mz = icmp ult i64 %i.mx, %.val3.i.i.i
  br i1 %i.mz, label %bb.bv, label %.invoke1133.i

bb.bv:                                            ; preds = %bb.bu
  %i.na = getelementptr inbounds nuw i8, ptr %.val6.i43.i.i, i64 %i.mx
  %i.nb = load i8, ptr %i.na, align 1, !noalias !37833, !noundef !27
  %i.nc = zext i8 %i.nb to i64
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %.val.i45.i.i, i64 %i.mx
  %i.ne = load i32, ptr %i.nd, align 4, !noalias !37833, !noundef !27
  %i.nf = zext i32 %i.ne to i64
  br label %"_ZN6brotli3enc9histogram31BlockSplitIterator$LT$Alloc$GT$4next17hf1f758c6d0c94321E.exit46.us.i.i"

"_ZN6brotli3enc9histogram31BlockSplitIterator$LT$Alloc$GT$4next17hf1f758c6d0c94321E.exit46.us.i.i": ; preds = %bb.bv, %.lr.ph.split.us.i.i
  %.sroa.6.2.us.i.i = phi i64 [ %i.nc, %bb.bv ], [ %.sroa.6.1178.us.i.i, %.lr.ph.split.us.i.i ] ; 5 uses
  %.sroa.4.2.us.i.i = phi i64 [ %i.mx, %bb.bv ], [ %.sroa.4.1179.us.i.i, %.lr.ph.split.us.i.i ] ; 2 uses
  %i.ng = phi i64 [ %i.nf, %bb.bv ], [ %.sroa.9.1177.us.i.i, %.lr.ph.split.us.i.i ]
  %i.nh = add i64 %i.ng, -1                       ; 2 uses
  %i.ni = icmp ult i64 %.sroa.6.2.us.i.i, %i.jv
  br i1 %i.ni, label %bb.bw, label %.invoke1133.i

bb.bw:                                            ; preds = %"_ZN6brotli3enc9histogram31BlockSplitIterator$LT$Alloc$GT$4next17hf1f758c6d0c94321E.exit46.us.i.i"
  %i.nj = and i64 %.sroa.03.1181.us.i.i, %3       ; 3 uses
  %i.nk = icmp ult i64 %i.nj, %2
  br i1 %i.nk, label %bb.bx, label %.invoke1133.i

bb.bx:                                            ; preds = %bb.bw
  %i.nl = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i899.i, i64 %.sroa.6.2.us.i.i ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %1, i64 %i.nj
  %i.nn = load i8, ptr %i.nm, align 1, !alias.scope !37836, !noalias !37837, !noundef !27 ; 3 uses
end_hunk_15
begin_hunk_16_@_ZN6brotli3enc6encode22WriteMetaBlockInternal17h7952d72b2f7e6cd4E:bb.a
  %i.zi = load i64, ptr %i.zh, align 8, !alias.scope !37937, !noalias !37940, !noundef !27
  %i.zj = icmp eq i64 %i.zi, 0
  br i1 %i.zj, label %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h99ee51219cdbd5f5E.exit40.i.i.i, label %vector.ph1079

vector.ph1079:                                    ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !37944
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(1040) %i.zc, i64 1040, i1 false), !alias.scope !37946, !noalias !37940
  %i.zk = load i64, ptr %i.vb, align 8, !alias.scope !37950, !noalias !37953, !noundef !27
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zg, i64 1024
  %i.zm = load i64, ptr %i.zl, align 8, !alias.scope !37956, !noalias !37959, !noundef !27
  %i.zn = add i64 %i.zm, %i.zk
  store i64 %i.zn, ptr %i.vb, align 8, !alias.scope !37960, !noalias !37963
  br label %vector.body1080

vector.body1080:                                  ; preds = %vector.body1080, %vector.ph1079
  %index1081 = phi i64 [ 0, %vector.ph1079 ], [ %index.next1086.1, %vector.body1080 ] ; 4 uses
  %i.zo = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index1081 ; 3 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 16 ; 2 uses
  %wide.load1082 = load <4 x i32>, ptr %i.zo, align 8, !noalias !37963
  %wide.load1083 = load <4 x i32>, ptr %i.zp, align 8, !noalias !37963
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.zg, i64 %index1081 ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 16
  %wide.load1084 = load <4 x i32>, ptr %i.zq, align 4, !alias.scope !37964, !noalias !37959
  %wide.load1085 = load <4 x i32>, ptr %i.zr, align 4, !alias.scope !37964, !noalias !37959
  %i.zs = add <4 x i32> %wide.load1084, %wide.load1082
  %i.zt = add <4 x i32> %wide.load1085, %wide.load1083
  store <4 x i32> %i.zs, ptr %i.zo, align 8, !noalias !37963
  store <4 x i32> %i.zt, ptr %i.zp, align 8, !noalias !37963
  %index.next1086 = or disjoint i64 %index1081, 8 ; 2 uses
  %i.zu = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index.next1086 ; 3 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 16 ; 2 uses
  %wide.load1082.1 = load <4 x i32>, ptr %i.zu, align 8, !noalias !37963
  %wide.load1083.1 = load <4 x i32>, ptr %i.zv, align 8, !noalias !37963
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %i.zg, i64 %index.next1086 ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 16
  %wide.load1084.1 = load <4 x i32>, ptr %i.zw, align 4, !alias.scope !37964, !noalias !37959
  %wide.load1085.1 = load <4 x i32>, ptr %i.zx, align 4, !alias.scope !37964, !noalias !37959
  %i.zy = add <4 x i32> %wide.load1084.1, %wide.load1082.1
  %i.zz = add <4 x i32> %wide.load1085.1, %wide.load1083.1
  store <4 x i32> %i.zy, ptr %i.zu, align 8, !noalias !37963
  store <4 x i32> %i.zz, ptr %i.zv, align 8, !noalias !37963
  %index.next1086.1 = add nuw nsw i64 %index1081, 16 ; 2 uses
  %i.aaa = icmp eq i64 %index.next1086.1, 256
  br i1 %i.aaa, label %_ZN6brotli3enc9histogram21HistogramAddHistogram17h8a3e084d90ebfcb6E.exit.i.i.i, label %vector.body1080, !llvm.loop !38017

_ZN6brotli3enc9histogram21HistogramAddHistogram17h8a3e084d90ebfcb6E.exit.i.i.i: ; preds = %vector.body1080
  %i.aab = invoke fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17h56fd6c289f2ade0fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1040) %i.s)
          to label %.noexc107.i.i unwind label %.thread45.thread81.loopexit.i.i, !noalias !37899 ; 0 uses

.noexc107.i.i:                                    ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17h8a3e084d90ebfcb6E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !37944
  br label %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h99ee51219cdbd5f5E.exit40.i.i.i

_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h99ee51219cdbd5f5E.exit40.i.i.i: ; preds = %.noexc107.i.i, %bb.dy
  %exitcond136.not.i.i.i = icmp eq i64 %.sroa.010.034.i.i.i, %i.sc
  br i1 %exitcond136.not.i.i.i, label %.split31.us.i.invoke.i.i, label %bb.dz

bb.dz:                                            ; preds = %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h99ee51219cdbd5f5E.exit40.i.i.i
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %i.sm, i64 %.sroa.010.034.i.i.i
  store i32 %.sroa.01.0.i.i.i, ptr %i.aac, align 4, !alias.scope !37935, !noalias !37936
  %exitcond137.not.i.i.i = icmp eq i64 %i.xs, %i.jv
  br i1 %exitcond137.not.i.i.i, label %.preheader.i.i.i, label %.lr.ph36.split.i.i.i

.split31.us.i.invoke.i.i:                         ; preds = %._crit_edge.us.i.i.i, %bb.dn, %bb.dm, %bb.dk, %bb.dp, %.lr.ph.split.us44.i.i.i, %bb.dr, %.lr.ph.split.us.us.i.i.i, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h99ee51219cdbd5f5E.exit40.i.i.i, %bb.dw, %bb.dv, %bb.du, %bb.dt, %.lr.ph.i.i.i, %bb.ds, %.lr.ph69.i.i.i
  %i.aad = phi i64 [ %i.xq, %bb.dr ], [ %i.xy, %bb.ds ], [ %i.tp, %.lr.ph.split.us44.i.i.i ], [ %i.tp, %.lr.ph.i.i.i ], [ %i.sc, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h99ee51219cdbd5f5E.exit40.i.i.i ], [ %i.sc, %.lr.ph69.i.i.i ], [ %i.yw, %bb.dt ], [ 0, %bb.du ], [ %i.za, %bb.dv ], [ %i.zd, %bb.dw ], [ %i.tp, %.lr.ph.split.us.us.i.i.i ], [ %i.wn, %bb.dp ], [ %i.vf, %bb.dk ], [ %i.vj, %bb.dn ], [ 0, %bb.dm ], [ %i.sc, %._crit_edge.us.i.i.i ]
  %i.aae = phi i64 [ %i.sc, %bb.dr ], [ %i.sc, %bb.ds ], [ %i.tp, %.lr.ph.split.us44.i.i.i ], [ %i.tp, %.lr.ph.i.i.i ], [ %i.sc, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h99ee51219cdbd5f5E.exit40.i.i.i ], [ %i.sc, %.lr.ph69.i.i.i ], [ %i.sc, %bb.dt ], [ 0, %bb.du ], [ %i.sc, %bb.dv ], [ %i.sc, %bb.dw ], [ %i.tp, %.lr.ph.split.us.us.i.i.i ], [ %i.sc, %bb.dp ], [ %i.sc, %bb.dk ], [ %i.sc, %bb.dn ], [ 0, %bb.dm ], [ %i.sc, %._crit_edge.us.i.i.i ]
  %i.aaf = phi ptr [ @1892, %bb.dr ], [ @1882, %bb.ds ], [ @1891, %.lr.ph.split.us44.i.i.i ], [ @1884, %.lr.ph.i.i.i ], [ @1890, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h99ee51219cdbd5f5E.exit40.i.i.i ], [ @1881, %.lr.ph69.i.i.i ], [ @1885, %bb.dt ], [ @1886, %bb.du ], [ @1887, %bb.dv ], [ @1889, %bb.dw ], [ @1891, %.lr.ph.split.us.us.i.i.i ], [ @1892, %bb.dp ], [ @1887, %bb.dk ], [ @1889, %bb.dn ], [ @1886, %bb.dm ], [ @1890, %._crit_edge.us.i.i.i ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.aad, i64 noundef %i.aae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aaf) #43
          to label %.split31.us.i.cont.i.i unwind label %.thread45.thread81.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !37899

.split31.us.i.cont.i.i:                           ; preds = %.split31.us.i.invoke.i.i
  unreachable

_ZN6brotli3enc7cluster20BrotliHistogramRemap17hc1f23d1c2086fd09E.exit.i.i: ; preds = %middle.block1097, %_ZN6brotli3enc9histogram21HistogramAddHistogram17h8a3e084d90ebfcb6E.exit44.preheader.i.i.i
  %i.aag = icmp eq i64 %i.tp, 0
  br i1 %i.aag, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit113.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i112.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i112.i.i": ; preds = %_ZN6brotli3enc7cluster20BrotliHistogramRemap17hc1f23d1c2086fd09E.exit.i.i
  call void @mi_free(ptr noundef nonnull align 4 %i.to) #38, !noalias !37899
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit113.i.i"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit113.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i112.i.i", %_ZN6brotli3enc7cluster20BrotliHistogramRemap17hc1f23d1c2086fd09E.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !38018)
  br i1 %.not.i155.i, label %.thread90.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i116.i.i

.thread90.i:                                      ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit113.i.i"
  store i64 0, ptr %i.fg, align 8, !alias.scope !38021, !noalias !38022
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h14c94f2a1b156012E.exit.i"

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i116.i.i: ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit113.i.i"
  %i.aah = shl nuw nsw i64 %i.jv, 2               ; 3 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !38023
  %i.aai = call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.aah, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !38023 ; 10 uses
  %i.aaj = icmp eq ptr %i.aai, null
  br i1 %i.aaj, label %.invoke1131.i, label %.lr.ph.i117.i.preheader.i

.lr.ph.i117.i.preheader.i:                        ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i116.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aai, i8 -1, i64 %i.aah, i1 false), !noalias !38029
  %i.aak = or disjoint i64 %i.sc, 1               ; 3 uses
  br label %bb.ep

._crit_edge.i.i.i:                                ; preds = %bb.et
  %i.aal = zext i32 %.sroa.0.3.i.i.i to i64       ; 3 uses
  %.not42.i.i.i = icmp eq i32 %.sroa.0.3.i.i.i, 0
  br i1 %.not42.i.i.i, label %_ZN6brotli3enc14combined_alloc8alloc_if17hb5060acbbbf7c9f4E.exit.i.i.i, label %bb.ea

bb.ea:                                            ; preds = %._crit_edge.i.i.i
  %i.aam = mul nuw nsw i64 %i.aal, 1040           ; 2 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !38030
  %i.aan = call noundef ptr @mi_malloc_aligned(i64 noundef %i.aam, i64 noundef range(i64 1, 9) 8) #38, !noalias !38030 ; 5 uses
  %i.aao = icmp eq ptr %i.aan, null
  br i1 %i.aao, label %bb.eb, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i.i.i.i"

bb.eb:                                            ; preds = %bb.ea
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.aam, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc.i.i.i unwind label %.thread29.i.i.i, !noalias !38029

.noexc.i.i.i:                                     ; preds = %bb.eb
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i.i.i.i": ; preds = %bb.ea
  %.not.i.i.i161.i = icmp eq i32 %.sroa.0.3.i.i.i, 1
  br i1 %.not.i.i.i161.i, label %._crit_edge.thread.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i.i.i.i"
  %i.aap = add nsw i64 %i.aal, -1                 ; 2 uses
  %xtraiter1366 = and i64 %i.aap, 7               ; 3 uses
  %i.aaq = add i32 %.sroa.0.3.i.i.i, -2
  %i.aar = icmp ult i32 %i.aaq, 7
  br i1 %i.aar, label %.lr.ph.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.preheader.new:               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %unroll_iter1371 = and i64 %i.aap, -8
  br label %.lr.ph.i.i.i.i.i.i.i

._crit_edge.thread.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %lcmp.mod1368.not = icmp eq i64 %xtraiter1366, 0
  br i1 %lcmp.mod1368.not, label %._crit_edge.thread.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.epil.preheader:              ; preds = %._crit_edge.thread.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.preheader
  %.sroa.0.08.i.i.i.i.i.i.i.epil.init = phi ptr [ %i.aan, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.abc, %._crit_edge.thread.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod1370 = icmp ne i64 %xtraiter1366, 0
  call void @llvm.assume(i1 %lcmp.mod1370)
  br label %.lr.ph.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.epil:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.epil.preheader
  %.sroa.0.08.i.i.i.i.i.i.i.epil = phi ptr [ %i.aas, %.lr.ph.i.i.i.i.i.i.i.epil ], [ %.sroa.0.08.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter1367 = phi i64 [ %epil.iter1367.next, %.lr.ph.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i.epil, i64 1032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i.i.i.i.i.epil, i8 0, i64 1032, i1 false), !noalias !38029
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i.epil, align 8, !noalias !38038
  %i.aas = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i.epil, i64 1040 ; 2 uses
  %epil.iter1367.next = add i64 %epil.iter1367, 1 ; 2 uses
  %epil.iter1367.cmp.not = icmp eq i64 %epil.iter1367.next, %xtraiter1366
  br i1 %epil.iter1367.cmp.not, label %._crit_edge.thread.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.epil, !llvm.loop !38041

._crit_edge.thread.i.i.i.i.i.i.i:                 ; preds = %._crit_edge.thread.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i.i.i.i"
  %.sroa.0.0.lcssa15.i.i.i.i.i.i.i = phi ptr [ %i.aan, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i.i.i.i" ], [ %i.abc, %._crit_edge.thread.i.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.aas, %.lr.ph.i.i.i.i.i.i.i.epil ] ; 2 uses
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i.i.i.i.i, i64 1032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.0.lcssa15.i.i.i.i.i.i.i, i8 0, i64 1032, i1 false), !noalias !38029
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i.i.i.i, align 8, !noalias !38038
  %i.aat = insertvalue { ptr, i64 } poison, ptr %i.aan, 0
  %i.aau = insertvalue { ptr, i64 } %i.aat, i64 %i.aal, 1
  br label %_ZN6brotli3enc14combined_alloc8alloc_if17hb5060acbbbf7c9f4E.exit.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader.new
  %.sroa.0.08.i.i.i.i.i.i.i = phi ptr [ %i.aan, %.lr.ph.i.i.i.i.i.i.i.preheader.new ], [ %i.abc, %.lr.ph.i.i.i.i.i.i.i ] ; 17 uses
  %niter1372 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.new ], [ %niter1372.next.7, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, i64 1032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i.i.i.i.i, i8 0, i64 1032, i1 false), !noalias !38029
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i, align 8, !noalias !38038
  %i.aav = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, i64 1040
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, i64 2072
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.aav, i8 0, i64 1032, i1 false), !noalias !38029
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i.1, align 8, !noalias !38038
  %i.aaw = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, i64 2080
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, i64 3112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.aaw, i8 0, i64 1032, i1 false), !noalias !38029
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i.2, align 8, !noalias !38038
  %i.aax = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, i64 3120
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, i64 4152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.aax, i8 0, i64 1032, i1 false), !noalias !38029
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i.3, align 8, !noalias !38038
  %i.aay = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, i64 4160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, i64 5192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.aay, i8 0, i64 1032, i1 false), !noalias !38029
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i.4, align 8, !noalias !38038
  %i.aaz = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, i64 5200
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, i64 6232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.aaz, i8 0, i64 1032, i1 false), !noalias !38029
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i.5, align 8, !noalias !38038
  %i.aba = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, i64 6240
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, i64 7272
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.aba, i8 0, i64 1032, i1 false), !noalias !38029
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i.6, align 8, !noalias !38038
  %i.abb = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, i64 7280
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, i64 8312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.abb, i8 0, i64 1032, i1 false), !noalias !38029
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i.7, align 8, !noalias !38038
  %i.abc = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, i64 8320 ; 3 uses
  %niter1372.next.7 = add nuw i64 %niter1372, 8   ; 2 uses
  %niter1372.ncmp.7 = icmp eq i64 %niter1372.next.7, %unroll_iter1371
  br i1 %niter1372.ncmp.7, label %._crit_edge.thread.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i

.thread29.i.i.i:                                  ; preds = %.invoke.i.i.i, %bb.eb
  %lpad.thr_comm.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit127.sink.split.i.i"

_ZN6brotli3enc14combined_alloc8alloc_if17hb5060acbbbf7c9f4E.exit.i.i.i: ; preds = %._crit_edge.thread.i.i.i.i.i.i.i, %._crit_edge.i.i.i
  %.pn.i71.i.i.i = phi { ptr, i64 } [ %i.aau, %._crit_edge.thread.i.i.i.i.i.i.i ], [ { ptr inttoptr (i64 8 to ptr), i64 0 }, %._crit_edge.i.i.i ] ; 2 uses
  %i.abd = extractvalue { ptr, i64 } %.pn.i71.i.i.i, 0 ; 10 uses
  %i.abe = extractvalue { ptr, i64 } %.pn.i71.i.i.i, 1 ; 7 uses
  br label %bb.ei

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i.i.i": ; preds = %bb.eo
  call void @mi_free(ptr noundef nonnull align 4 %i.aai) #38, !noalias !38029
  %i.abf = zext i32 %.sroa.0.2.i.i.i to i64       ; 2 uses
  %.not84.i.i.i = icmp eq i32 %.sroa.0.2.i.i.i, 0
  br i1 %.not84.i.i.i, label %._crit_edge80.i.i.i, label %.lr.ph79.i.i.i

.lr.ph79.i.i.i:                                   ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.abd) ]
  %i.abg = add nuw nsw i64 %i.abe, 1
  br label %bb.ec

._crit_edge80.i.i.i:                              ; preds = %bb.eh, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.abd) ]
  %i.abh = icmp eq i64 %i.abe, 0
  br i1 %i.abh, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i164.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i72.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i72.i.i.i": ; preds = %._crit_edge80.i.i.i
  call void @mi_free(ptr noundef nonnull align 8 %i.abd) #38, !noalias !38029
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i164.i"

bb.ec:                                            ; preds = %bb.eh, %.lr.ph79.i.i.i
  %i.abi = phi i64 [ 1, %.lr.ph79.i.i.i ], [ %i.abm, %bb.eh ] ; 5 uses
  %.sroa.029.078.i.i.i = phi i64 [ 0, %.lr.ph79.i.i.i ], [ %i.abi, %bb.eh ] ; 4 uses
  %exitcond106.not.i.i.i = icmp eq i64 %i.abi, %i.abg
  br i1 %exitcond106.not.i.i.i, label %bb.ed, label %bb.ef

bb.ed:                                            ; preds = %bb.ec
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.029.078.i.i.i, i64 noundef %i.abe, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1905) #43
          to label %bb.ee unwind label %.thread.i.i.i, !noalias !38029

bb.ee:                                            ; preds = %bb.em, %bb.eg, %bb.ed
  unreachable

bb.ef:                                            ; preds = %bb.ec
  %exitcond107.not.i.i.i = icmp eq i64 %i.abi, %i.aak
  br i1 %exitcond107.not.i.i.i, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.029.078.i.i.i, i64 noundef %i.sc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1906) #43
          to label %bb.ee unwind label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread.i.i.i", !noalias !38029

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread.i.i.i": ; preds = %bb.eg
  %i.abj = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit127.sink.split.i.i"

bb.eh:                                            ; preds = %bb.ef
  %i.abk = getelementptr inbounds nuw [1040 x i8], ptr %i.abd, i64 %.sroa.029.078.i.i.i
  %i.abl = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i139.i, i64 %.sroa.029.078.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.abl, ptr noundef nonnull align 8 dereferenceable(1040) %i.abk, i64 1040, i1 false), !noalias !38042
  %i.abm = add nuw nsw i64 %i.abi, 1
  %exitcond108.not.i.i.i = icmp eq i64 %i.abi, %i.abf
  br i1 %exitcond108.not.i.i.i, label %._crit_edge80.i.i.i, label %bb.ec

bb.ei:                                            ; preds = %bb.eo, %_ZN6brotli3enc14combined_alloc8alloc_if17hb5060acbbbf7c9f4E.exit.i.i.i
  %i.abn = phi i64 [ 1, %_ZN6brotli3enc14combined_alloc8alloc_if17hb5060acbbbf7c9f4E.exit.i.i.i ], [ %i.ace, %bb.eo ] ; 4 uses
  %.sroa.0.173.i.i.i = phi i32 [ 0, %_ZN6brotli3enc14combined_alloc8alloc_if17hb5060acbbbf7c9f4E.exit.i.i.i ], [ %.sroa.0.2.i.i.i, %bb.eo ] ; 4 uses
  %.sroa.027.072.i.i.i = phi i64 [ 0, %_ZN6brotli3enc14combined_alloc8alloc_if17hb5060acbbbf7c9f4E.exit.i.i.i ], [ %i.abn, %bb.eo ]
  %exitcond104.not.i.i.i = icmp eq i64 %i.abn, %i.aak
  br i1 %exitcond104.not.i.i.i, label %.invoke176.i.i.i, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.abo = getelementptr inbounds nuw [4 x i8], ptr %i.sm, i64 %.sroa.027.072.i.i.i ; 2 uses
  %i.abp = load i32, ptr %i.abo, align 4, !alias.scope !38043, !noalias !38044, !noundef !27
  %i.abq = zext i32 %i.abp to i64                 ; 4 uses
  %i.abr = icmp samesign ugt i64 %i.jv, %i.abq
  br i1 %i.abr, label %bb.ek, label %.invoke176.i.i.i

.invoke176.i.i.i:                                 ; preds = %bb.ej, %bb.ei
  %i.abs = phi i64 [ %i.sc, %bb.ei ], [ %i.abq, %bb.ej ]
  %i.abt = phi i64 [ %i.sc, %bb.ei ], [ %i.jv, %bb.ej ]
  %i.abu = phi ptr [ @1907, %bb.ei ], [ @1908, %bb.ej ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.abs, i64 noundef %i.abt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.abu) #43
          to label %.cont177.i.i.i unwind label %.thread.i.i.i, !noalias !38029

.cont177.i.i.i:                                   ; preds = %.invoke176.i.i.i
  unreachable

bb.ek:                                            ; preds = %bb.ej
  %i.abv = getelementptr inbounds nuw [4 x i8], ptr %i.aai, i64 %i.abq ; 2 uses
  %i.abw = load i32, ptr %i.abv, align 4, !noalias !38029, !noundef !27 ; 2 uses
  %i.abx = icmp eq i32 %i.abw, %.sroa.0.173.i.i.i
  br i1 %i.abx, label %bb.el, label %bb.eo

bb.el:                                            ; preds = %bb.ek
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.abd) ]
  %i.aby = zext i32 %.sroa.0.173.i.i.i to i64     ; 3 uses
  %i.abz = icmp ugt i64 %i.abe, %i.aby
  br i1 %i.abz, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.aby, i64 noundef %i.abe, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1909) #43
          to label %bb.ee unwind label %.thread.thread.i.i.i, !noalias !38029

bb.en:                                            ; preds = %bb.el
  %i.aca = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i139.i, i64 %i.abq
  %i.acb = getelementptr inbounds nuw [1040 x i8], ptr %i.abd, i64 %i.aby
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.acb, ptr noundef nonnull align 8 dereferenceable(1040) %i.aca, i64 1040, i1 false), !noalias !38042
  %i.acc = add i32 %.sroa.0.173.i.i.i, 1
  %.pre.i.i.i = load i32, ptr %i.abv, align 4, !noalias !38029
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.ek
  %i.acd = phi i32 [ %.pre.i.i.i, %bb.en ], [ %i.abw, %bb.ek ]
  %.sroa.0.2.i.i.i = phi i32 [ %i.acc, %bb.en ], [ %.sroa.0.173.i.i.i, %bb.ek ] ; 3 uses
  store i32 %i.acd, ptr %i.abo, align 4, !alias.scope !38043, !noalias !38044
  %i.ace = add nuw i64 %i.abn, 1
  %exitcond105.not.i.i.i = icmp eq i64 %i.abn, %i.jv
  br i1 %exitcond105.not.i.i.i, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i.i.i", label %bb.ei

bb.ep:                                            ; preds = %bb.et, %.lr.ph.i117.i.preheader.i
  %i.acf = phi i64 [ 1, %.lr.ph.i117.i.preheader.i ], [ %i.aco, %bb.et ] ; 4 uses
  %.sroa.0.070.i.i.i = phi i32 [ 0, %.lr.ph.i117.i.preheader.i ], [ %.sroa.0.3.i.i.i, %bb.et ] ; 3 uses
  %.sroa.025.069.i.i.i = phi i64 [ 0, %.lr.ph.i117.i.preheader.i ], [ %i.acf, %bb.et ]
  %exitcond102.not.i.i.i = icmp eq i64 %i.acf, %i.aak
  br i1 %exitcond102.not.i.i.i, label %.invoke.i.i.i, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.acg = getelementptr inbounds nuw [4 x i8], ptr %i.sm, i64 %.sroa.025.069.i.i.i
  %i.ach = load i32, ptr %i.acg, align 4, !alias.scope !38043, !noalias !38044, !noundef !27
  %i.aci = zext i32 %i.ach to i64                 ; 3 uses
  %i.acj = icmp samesign ugt i64 %i.jv, %i.aci
  br i1 %i.acj, label %bb.er, label %.invoke.i.i.i

bb.er:                                            ; preds = %bb.eq
  %i.ack = getelementptr inbounds nuw [4 x i8], ptr %i.aai, i64 %i.aci ; 2 uses
  %i.acl = load i32, ptr %i.ack, align 4, !noalias !38029, !noundef !27
  %i.acm = icmp eq i32 %i.acl, -1
  br i1 %i.acm, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  store i32 %.sroa.0.070.i.i.i, ptr %i.ack, align 4, !noalias !38029
  %i.acn = add i32 %.sroa.0.070.i.i.i, 1
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %.sroa.0.3.i.i.i = phi i32 [ %i.acn, %bb.es ], [ %.sroa.0.070.i.i.i, %bb.er ] ; 5 uses
  %i.aco = add nuw nsw i64 %i.acf, 1
  %exitcond103.not.i.i.i = icmp eq i64 %i.acf, %i.jv
  br i1 %exitcond103.not.i.i.i, label %._crit_edge.i.i.i, label %bb.ep

.invoke.i.i.i:                                    ; preds = %bb.eq, %bb.ep
  %.ph.i.i = phi i64 [ %i.sc, %bb.ep ], [ %i.aci, %bb.eq ]
  %.ph165.i.i = phi i64 [ %i.sc, %bb.ep ], [ %i.jv, %bb.eq ]
  %.ph166.i.i = phi ptr [ @1910, %bb.ep ], [ @1911, %bb.eq ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.ph.i.i, i64 noundef %.ph165.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.ph166.i.i) #43
          to label %.cont.i.i.i unwind label %.thread29.i.i.i, !noalias !38029

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.eu:                                            ; preds = %.thread.i.i.i
  br i1 %i.acp, label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit127.sink.split.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i401.i.thread"

.thread.i.i.i:                                    ; preds = %.invoke176.i.i.i, %bb.ed
  %i.acp = phi i1 [ true, %.invoke176.i.i.i ], [ false, %bb.ed ] ; 2 uses
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.acq = icmp eq i64 %i.abe, 0
  br i1 %i.acq, label %bb.eu, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i120.i.i"

.thread.thread.i.i.i:                             ; preds = %bb.em
  %i.acr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.acs = icmp eq i64 %i.abe, 0
  br i1 %i.acs, label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit127.sink.split.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread161.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread161.i.i.i": ; preds = %.thread.thread.i.i.i
  call void @mi_free(ptr noundef nonnull %i.abd) #38, !noalias !38029
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit127.sink.split.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i120.i.i": ; preds = %.thread.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.abd) ]
  call void @mi_free(ptr noundef nonnull %i.abd) #38, !noalias !38029
  br i1 %i.acp, label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit127.sink.split.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i401.i.thread"

._crit_edge.i158.i:                               ; preds = %bb.ex
  %i.act = icmp ugt i64 %.sroa.0.0158.i.i, %i.tp
  br i1 %i.act, label %.invoke.i.i, label %bb.ev, !prof !29

.invoke.i.i:                                      ; preds = %._crit_edge.i158.i
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.0.0158.i.i, i64 noundef %i.tp, i64 noundef %i.tp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1912) #43
          to label %.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !37899

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable
end_hunk_16
begin_hunk_17_@_ZN6brotli3enc6encode22WriteMetaBlockInternal17h7952d72b2f7e6cd4E:bb.a
"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i126.i.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit.i.i", %.thread72.i.i
  %i.adv = phi ptr [ %i.tg, %.thread72.i.i ], [ %i.tn, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit.i.i" ] ; 2 uses
  %.pn.pn.pn2574.i.i = phi { ptr, i32 } [ %i.tm, %.thread72.i.i ], [ %.pn.pn31.i.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit.i.i" ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.adv) ]
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit127.sink.split.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i164.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i72.i.i.i", %._crit_edge80.i.i.i
  store i64 %i.abf, ptr %i.fg, align 8, !alias.scope !38021, !noalias !38022
  call void @mi_free(ptr noundef nonnull align 8 %.sroa.10.0.i.i.i899.i) #38, !noalias !37719
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h14c94f2a1b156012E.exit.i"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h14c94f2a1b156012E.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i164.i", %.thread90.i
  %i.adw = load i32, ptr %i.gu, align 4, !alias.scope !37715, !noalias !37721, !noundef !27
  %i.adx = icmp eq i32 %i.adw, 0
  br i1 %i.adx, label %.loopexit260.i, label %bb.fd

bb.fd:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h14c94f2a1b156012E.exit.i"
  %i.ady = load i64, ptr %.sroa.7.0..sroa_idx.i23, align 8, !alias.scope !37719, !noalias !37723, !noundef !27 ; 3 uses
  %i.adz = icmp eq i64 %i.ady, 0
  br i1 %i.adz, label %.loopexit260.i, label %.lr.ph459.i

.lr.ph459.i:                                      ; preds = %bb.fd
  %i.aea = add i64 %i.ady, -1                     ; 2 uses
  %.first_iter.i = icmp ult i64 %i.aea, %i.sc
  br i1 %.first_iter.i, label %.split457.i.preheader.us, label %.invoke.i

.split457.i.preheader.us:                         ; preds = %.lr.ph459.i, %.loopexit.i.us
  %.sroa.0.0458.i.us = phi i64 [ %i.aeb, %.loopexit.i.us ], [ %i.ady, %.lr.ph459.i ]
  %i.aeb = add i64 %.sroa.0.0458.i.us, -1         ; 4 uses
  %i.aec = shl i64 %i.aeb, 6                      ; 2 uses
  %i.aed = getelementptr inbounds nuw [4 x i8], ptr %i.sm, i64 %i.aeb ; 2 uses
  br label %.split457.i.us

.split457.i.us:                                   ; preds = %bb.fe, %.split457.i.preheader.us
  %.sroa.020.0456.i.us = phi i64 [ 0, %.split457.i.preheader.us ], [ %i.aen, %bb.fe ] ; 3 uses
  %i.aee = add nuw nsw i64 %.sroa.020.0456.i.us, %i.aec ; 3 uses
  %i.aef = icmp ult i64 %i.aee, %i.sc
  br i1 %i.aef, label %.split457.i.us.1, label %.invoke.i

.split457.i.us.1:                                 ; preds = %.split457.i.us
  %i.aeg = load i32, ptr %i.aed, align 4, !noalias !37719, !noundef !27
  %i.aeh = getelementptr inbounds nuw [4 x i8], ptr %i.sm, i64 %i.aee
  store i32 %i.aeg, ptr %i.aeh, align 4, !noalias !37719
  %i.aei = or disjoint i64 %.sroa.020.0456.i.us, 1
  %i.aej = add nuw nsw i64 %i.aei, %i.aec         ; 3 uses
  %i.aek = icmp ult i64 %i.aej, %i.sc
  br i1 %i.aek, label %bb.fe, label %.invoke.i

bb.fe:                                            ; preds = %.split457.i.us.1
  %i.ael = load i32, ptr %i.aed, align 4, !noalias !37719, !noundef !27
  %i.aem = getelementptr inbounds nuw [4 x i8], ptr %i.sm, i64 %i.aej
  store i32 %i.ael, ptr %i.aem, align 4, !noalias !37719
  %i.aen = add nuw nsw i64 %.sroa.020.0456.i.us, 2 ; 2 uses
  %exitcond671.not.i.us.1 = icmp eq i64 %i.aen, 64
  br i1 %exitcond671.not.i.us.1, label %.loopexit.i.us, label %.split457.i.us

.loopexit.i.us:                                   ; preds = %bb.fe
  %i.aeo = icmp eq i64 %i.aeb, 0
  br i1 %i.aeo, label %.loopexit260.i, label %.split457.i.preheader.us

.loopexit260.i:                                   ; preds = %.loopexit.i.us, %bb.fd, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h14c94f2a1b156012E.exit.i"
  %i.aep = load i64, ptr %.sroa.737.0..sroa_idx.i, align 8, !alias.scope !37719, !noalias !37723, !noundef !27 ; 3 uses
  %i.aeq = shl i64 %i.aep, 2                      ; 52 uses
  store i64 %i.aeq, ptr %i.fd, align 8, !alias.scope !37719, !noalias !37723
  %i.aer = shl i64 %i.aep, 4                      ; 12 uses
  %i.aes = icmp ugt i64 %i.aeq, 4611686018427387903
  %i.aet = icmp ugt i64 %i.aer, 9223372036854775804
  %or.cond.i.i.i.i165.i = or i1 %i.aes, %i.aet
  br i1 %or.cond.i.i.i.i165.i, label %.invoke1129.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i166.i, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i166.i: ; preds = %.loopexit260.i
  %i.aeu = icmp eq i64 %i.aer, 0
  br i1 %i.aeu, label %bb.fh, label %bb.ff

bb.ff:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i166.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !38055
  %i.aev = call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.aer, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !38055 ; 2 uses
  %i.aew = icmp eq ptr %i.aev, null
  br i1 %i.aew, label %.invoke1129.i, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.aex = ptrtoint ptr %i.aev to i64
  br label %bb.fh

.invoke1129.i:                                    ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i116.i299.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i194.i, %bb.fi, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit172.i", %bb.ff, %.loopexit260.i
  %i.aey = phi i64 [ 0, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit172.i" ], [ 0, %.loopexit260.i ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i116.i299.i ], [ 4, %bb.ff ], [ 8, %bb.fi ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i194.i ]
  %i.aez = phi i64 [ %i.afd, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit172.i" ], [ %i.aer, %.loopexit260.i ], [ %i.aer, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i116.i299.i ], [ %i.aer, %bb.ff ], [ %i.afd, %bb.fi ], [ %i.aer, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i194.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.aey, i64 %i.aez, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.cont1130.i unwind label %.split.thread.i, !noalias !37719

.cont1130.i:                                      ; preds = %.invoke1129.i
  unreachable

bb.fh:                                            ; preds = %bb.fg, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i166.i
  %.sroa.10.0.i.i167.i = phi i64 [ %i.aex, %bb.fg ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i166.i ]
  %i.afa = inttoptr i64 %.sroa.10.0.i.i167.i to ptr ; 12 uses
  %i.afb = icmp samesign ult i64 %i.aeq, 2305843009213693952
  call void @llvm.assume(i1 %i.afb)
  %.val40.i = load i64, ptr %i.fc, align 8, !alias.scope !37719, !noalias !37723, !noundef !27
  %i.afc = icmp eq i64 %.val40.i, 0
  br i1 %i.afc, label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit172.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i171.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i171.i": ; preds = %bb.fh
  %.val39.i = load ptr, ptr %i.fb, align 8, !alias.scope !37719, !noalias !37723, !nonnull !27, !noundef !27
  call void @mi_free(ptr noundef nonnull %.val39.i) #38, !noalias !37719
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit172.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit172.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i171.i", %bb.fh
  store ptr %i.afa, ptr %i.fb, align 8, !alias.scope !37719, !noalias !37723
  store i64 %i.aeq, ptr %i.fc, align 8, !alias.scope !37719, !noalias !37723
  store i64 %i.aeq, ptr %i.fm, align 8, !alias.scope !37719, !noalias !37723
  %i.afd = mul i64 %i.aep, 8768                   ; 4 uses
  %or.cond.i.i.i.i.i173.i = icmp samesign ugt i64 %i.aeq, 4207742717543237
  br i1 %or.cond.i.i.i.i.i173.i, label %.invoke1129.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i174.i, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i174.i: ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit172.i"
  %i.afe = icmp eq i64 %i.afd, 0
  br i1 %i.afe, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i175.i", label %bb.fi

bb.fi:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i174.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !38060
  %i.aff = call noundef ptr @mi_malloc_aligned(i64 noundef %i.afd, i64 noundef range(i64 1, 9) 8) #38, !noalias !38060 ; 2 uses
  %i.afg = icmp eq ptr %i.aff, null
  br i1 %i.afg, label %.invoke1129.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i175.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i175.i": ; preds = %bb.fi, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i174.i
  %.sroa.10.0.i.i.i176.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i174.i ], [ %i.aff, %bb.fi ] ; 13 uses
  %.sroa.4.0.i.i.i177.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i174.i ], [ %i.aeq, %bb.fi ]
  %i.afh = icmp samesign ule i64 %i.aeq, %.sroa.4.0.i.i.i177.i
  call void @llvm.assume(i1 %i.afh)
  %.not865.i = icmp eq i64 %i.aeq, 0              ; 7 uses
  br i1 %.not865.i, label %._crit_edge.i.i.i178.i, label %.lr.ph.i.i.i183.i.preheader

.lr.ph.i.i.i183.i.preheader:                      ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i175.i"
  %i.afi = add nsw i64 %i.aeq, -1                 ; 2 uses
  %i.afj = add nsw i64 %i.aeq, -2
  %xtraiter1373 = and i64 %i.afi, 7
  %i.afk = icmp ult i64 %i.afj, 7
  br i1 %i.afk, label %.lr.ph.i.i.i183.i.epil.preheader, label %.lr.ph.i.i.i183.i.preheader.new

.lr.ph.i.i.i183.i.preheader.new:                  ; preds = %.lr.ph.i.i.i183.i.preheader
  %unroll_iter1379 = and i64 %i.afi, -8
  br label %.lr.ph.i.i.i183.i

.lr.ph.i.i.i183.i.epil.preheader:                 ; preds = %.lr.ph.i.i.i183.i, %.lr.ph.i.i.i183.i.preheader
  %.sroa.0.08.i.i.i184.i.epil.init = phi ptr [ %.sroa.10.0.i.i.i176.i, %.lr.ph.i.i.i183.i.preheader ], [ %i.aft, %.lr.ph.i.i.i183.i ]
  br label %.lr.ph.i.i.i183.i.epil

.lr.ph.i.i.i183.i.epil:                           ; preds = %.lr.ph.i.i.i183.i.epil, %.lr.ph.i.i.i183.i.epil.preheader
  %.sroa.0.08.i.i.i184.i.epil = phi ptr [ %i.afl, %.lr.ph.i.i.i183.i.epil ], [ %.sroa.0.08.i.i.i184.i.epil.init, %.lr.ph.i.i.i183.i.epil.preheader ] ; 4 uses
  %epil.iter1374 = phi i64 [ %epil.iter1374.next, %.lr.ph.i.i.i183.i.epil ], [ 0, %.lr.ph.i.i.i183.i.epil.preheader ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i184.i.epil, i8 0, i64 2184, i1 false), !noalias !37719
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i.epil, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i.epil, align 8, !noalias !38068
  %i.afl = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i.epil, i64 2192 ; 2 uses
  %epil.iter1374.next = add i64 %epil.iter1374, 1 ; 2 uses
  %epil.iter1374.cmp.not = icmp eq i64 %epil.iter1374.next, %xtraiter1373
  br i1 %epil.iter1374.cmp.not, label %._crit_edge.thread.i.i.i180.i, label %.lr.ph.i.i.i183.i.epil, !llvm.loop !38071

._crit_edge.thread.i.i.i180.i:                    ; preds = %.lr.ph.i.i.i183.i.epil
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.afl, i8 0, i64 2184, i1 false), !noalias !37719
  %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i182.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i.epil, i64 4376
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i182.i, align 8, !noalias !38068
  br label %._crit_edge.i.i.i178.i

.lr.ph.i.i.i183.i:                                ; preds = %.lr.ph.i.i.i183.i, %.lr.ph.i.i.i183.i.preheader.new
  %.sroa.0.08.i.i.i184.i = phi ptr [ %.sroa.10.0.i.i.i176.i, %.lr.ph.i.i.i183.i.preheader.new ], [ %i.aft, %.lr.ph.i.i.i183.i ] ; 17 uses
  %niter1380 = phi i64 [ 0, %.lr.ph.i.i.i183.i.preheader.new ], [ %niter1380.next.7, %.lr.ph.i.i.i183.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i184.i, i8 0, i64 2184, i1 false), !noalias !37719
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i, align 8, !noalias !38068
  %i.afm = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i, i64 2192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.afm, i8 0, i64 2184, i1 false), !noalias !37719
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i, i64 4376
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i.1, align 8, !noalias !38068
  %i.afn = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i, i64 4384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.afn, i8 0, i64 2184, i1 false), !noalias !37719
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i, i64 6568
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i.2, align 8, !noalias !38068
  %i.afo = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i, i64 6576
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.afo, i8 0, i64 2184, i1 false), !noalias !37719
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i, i64 8760
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i.3, align 8, !noalias !38068
  %i.afp = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i, i64 8768
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.afp, i8 0, i64 2184, i1 false), !noalias !37719
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i, i64 10952
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i.4, align 8, !noalias !38068
  %i.afq = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i, i64 10960
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.afq, i8 0, i64 2184, i1 false), !noalias !37719
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i, i64 13144
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i.5, align 8, !noalias !38068
  %i.afr = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i, i64 13152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.afr, i8 0, i64 2184, i1 false), !noalias !37719
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i, i64 15336
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i.6, align 8, !noalias !38068
  %i.afs = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i, i64 15344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.afs, i8 0, i64 2184, i1 false), !noalias !37719
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i, i64 17528
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i.7, align 8, !noalias !38068
  %i.aft = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i, i64 17536 ; 2 uses
  %niter1380.next.7 = add nuw i64 %niter1380, 8   ; 2 uses
  %niter1380.ncmp.7 = icmp eq i64 %niter1380.next.7, %unroll_iter1379
  br i1 %niter1380.ncmp.7, label %.lr.ph.i.i.i183.i.epil.preheader, label %.lr.ph.i.i.i183.i

._crit_edge.i.i.i178.i:                           ; preds = %._crit_edge.thread.i.i.i180.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i175.i"
  %.val70.i = load i64, ptr %i.fl, align 8, !alias.scope !37719, !noalias !37723, !noundef !27
  %i.afu = icmp eq i64 %.val70.i, 0
  br i1 %i.afu, label %bb.fj, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i191.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i191.i": ; preds = %._crit_edge.i.i.i178.i
  %.val69.i = load ptr, ptr %i.fk, align 8, !alias.scope !37719, !noalias !37723, !nonnull !27, !noundef !27
  call void @mi_free(ptr noundef nonnull %.val69.i) #38, !noalias !37719
  br label %bb.fj

bb.fj:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i191.i", %._crit_edge.i.i.i178.i
  store ptr %.sroa.10.0.i.i.i176.i, ptr %i.fk, align 8, !alias.scope !37719, !noalias !37723
  store i64 %i.aeq, ptr %i.fl, align 8, !alias.scope !37719, !noalias !37723
  call void @llvm.experimental.noalias.scope.decl(metadata !38072)
  call void @llvm.experimental.noalias.scope.decl(metadata !38075)
  call void @llvm.experimental.noalias.scope.decl(metadata !38077)
  call void @llvm.experimental.noalias.scope.decl(metadata !38079)
  br i1 %.not865.i, label %_ZN6brotli3enc14combined_alloc8alloc_if17h15f2ab7bbce2f039E.exit88.i197.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i194.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i194.i: ; preds = %bb.fj
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !38081
  %i.afv = call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.aer, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !38081 ; 3 uses
  %i.afw = icmp eq ptr %i.afv, null
  br i1 %i.afw, label %.invoke1129.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i84.i195.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i84.i195.i: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i194.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !38086
  %i.afx = call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.aer, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !38086 ; 2 uses
  %i.afy = icmp eq ptr %i.afx, null
  br i1 %i.afy, label %bb.fk, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit.i85.i196.i"

bb.fk:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i84.i195.i
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.aer, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc.i389.i unwind label %.thread72.i388.i, !noalias !38091

.noexc.i389.i:                                    ; preds = %bb.fk
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit.i85.i196.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i84.i195.i
  %i.afz = insertvalue { ptr, i64 } poison, ptr %i.afx, 0
  %i.aga = insertvalue { ptr, i64 } %i.afz, i64 %i.aeq, 1
  br label %_ZN6brotli3enc14combined_alloc8alloc_if17h15f2ab7bbce2f039E.exit88.i197.i

.thread72.i388.i:                                 ; preds = %bb.fk
  %i.agb = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i126.i218.i"

_ZN6brotli3enc14combined_alloc8alloc_if17h15f2ab7bbce2f039E.exit88.i197.i: ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit.i85.i196.i", %bb.fj
  %i.agc = phi ptr [ %i.afv, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit.i85.i196.i" ], [ inttoptr (i64 4 to ptr), %bb.fj ] ; 6 uses
  %.pn.i82.i198.i = phi { ptr, i64 } [ %i.aga, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit.i85.i196.i" ], [ { ptr inttoptr (i64 4 to ptr), i64 0 }, %bb.fj ] ; 2 uses
  %i.agd = extractvalue { ptr, i64 } %.pn.i82.i198.i, 0 ; 12 uses
  %i.age = extractvalue { ptr, i64 } %.pn.i82.i198.i, 1 ; 18 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !38092
  %i.agf = call noundef ptr @mi_malloc_aligned(i64 noundef 32784, i64 noundef range(i64 1, 9) 4) #38, !noalias !38092 ; 11 uses
  %i.agg = icmp eq ptr %i.agf, null
  br i1 %i.agg, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %_ZN6brotli3enc14combined_alloc8alloc_if17h15f2ab7bbce2f039E.exit88.i197.i
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 32784, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc91.i387.i unwind label %.thread27.i386.i, !noalias !38091

.noexc91.i387.i:                                  ; preds = %bb.fl
  unreachable

.thread45.thread81.loopexit.i363.i:               ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17hbf6f595fe81a9aafE.exit.i.i.i
  %lpad.loopexit.i364.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread45.thread81.i212.i

.thread45.thread81.loopexit.split-lp.loopexit.i274.i: ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17hbf6f595fe81a9aafE.exit42.us.i.i.i
  %lpad.loopexit90.i275.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread45.thread81.i212.i

.thread45.thread81.loopexit.split-lp.loopexit.split-lp.loopexit.i264.i: ; preds = %.lr.ph.split.us44.preheader.i.i263.i
  %lpad.loopexit98.i265.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread45.thread81.i212.i

.thread45.thread81.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i256.i: ; preds = %.split.us.i.invoke.i.i
  %lpad.loopexit.split-lp.i257.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread45.thread81.i212.i

.thread27.i386.i:                                 ; preds = %bb.fl
  %i.agh = landingpad { ptr, i32 }
          cleanup
  br label %.thread45.thread81.i212.i

bb.fm:                                            ; preds = %_ZN6brotli3enc14combined_alloc8alloc_if17h15f2ab7bbce2f039E.exit88.i197.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32784) %i.agf, i8 0, i64 32784, i1 false), !noalias !38091
  br i1 %.not865.i, label %._crit_edge160.i242.i, label %.lr.ph.i199.i.preheader

.lr.ph.i199.i.preheader:                          ; preds = %bb.fm
  %min.iters.check1099 = icmp samesign ult i64 %i.aeq, 8
  br i1 %min.iters.check1099, label %.lr.ph.i199.i.preheader1248, label %vector.ph1100

vector.ph1100:                                    ; preds = %.lr.ph.i199.i.preheader
  %n.vec1101 = and i64 %i.aeq, 4503599627370488   ; 4 uses
  %i.agi = or disjoint i64 %n.vec1101, 1
  br label %vector.body1102

vector.body1102:                                  ; preds = %vector.body1102, %vector.ph1100
  %index1103 = phi i64 [ 0, %vector.ph1100 ], [ %index.next1104, %vector.body1102 ] ; 2 uses
  %i.agj = getelementptr inbounds nuw [4 x i8], ptr %i.agc, i64 %index1103 ; 2 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agj, i64 16
  store <4 x i32> splat (i32 1), ptr %i.agj, align 4, !noalias !38091
  store <4 x i32> splat (i32 1), ptr %i.agk, align 4, !noalias !38091
  %index.next1104 = add nuw i64 %index1103, 8     ; 2 uses
  %i.agl = icmp eq i64 %index.next1104, %n.vec1101
  br i1 %i.agl, label %middle.block1105, label %vector.body1102, !llvm.loop !38100

middle.block1105:                                 ; preds = %vector.body1102
  %cmp.n1106 = icmp eq i64 %i.aeq, %n.vec1101
  br i1 %cmp.n1106, label %.preheader105.i202.i, label %.lr.ph.i199.i.preheader1248

.lr.ph.i199.i.preheader1248:                      ; preds = %.lr.ph.i199.i.preheader, %middle.block1105
  %.ph1249 = phi i64 [ 1, %.lr.ph.i199.i.preheader ], [ %i.agi, %middle.block1105 ]
  %.sroa.029.0152.i200.i.ph = phi i64 [ 0, %.lr.ph.i199.i.preheader ], [ %n.vec1101, %middle.block1105 ]
  br label %.lr.ph.i199.i

.preheader105.i202.i:                             ; preds = %.lr.ph.i199.i, %middle.block1105
  %i.agm = or disjoint i64 %i.jx, 1
  br label %.lr.ph154.i203.i

.preheader101.i227.i:                             ; preds = %bb.hc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.agd) ]
  br label %.lr.ph156.i228.i

.lr.ph154.i203.i:                                 ; preds = %bb.hc, %.preheader105.i202.i
  %i.agn = phi i64 [ %i.aqj, %bb.hc ], [ 1, %.preheader105.i202.i ] ; 4 uses
  %.sroa.031.0153.i204.i = phi i64 [ %i.agn, %bb.hc ], [ 0, %.preheader105.i202.i ] ; 4 uses
  %exitcond221.not.i205.i = icmp eq i64 %i.agn, %i.agm
  br i1 %exitcond221.not.i205.i, label %.invoke336.i384.i, label %bb.hb

.lr.ph156.i228.i:                                 ; preds = %bb.gz, %.preheader101.i227.i
  %indvars.iv.i229.i = phi i64 [ %i.aeq, %.preheader101.i227.i ], [ %indvars.iv.next.i241.i, %bb.gz ] ; 2 uses
  %.sroa.0.0158.i230.i = phi i64 [ 0, %.preheader101.i227.i ], [ %i.apr, %bb.gz ] ; 8 uses
  %.sroa.08.0157.i231.i = phi i64 [ 0, %.preheader101.i227.i ], [ %i.aps, %bb.gz ] ; 5 uses
  %i.ago = call i64 @llvm.umax.i64(i64 %indvars.iv.i229.i, i64 1)
  %umax226.i232.i = call i64 @llvm.umin.i64(i64 %i.ago, i64 64) ; 2 uses
  %i.agp = sub nuw i64 %i.aeq, %.sroa.08.0157.i231.i ; 2 uses
  %.sroa.0.0.i92.i233.i = call noundef i64 @llvm.umin.i64(i64 %i.agp, i64 64) ; 2 uses
  %reass.sub462.i = call i64 @llvm.usub.sat.i64(i64 %i.age, i64 %.sroa.0.0158.i230.i) ; 2 uses
  %i.agq = add nuw nsw i64 %reass.sub462.i, 1
  %i.agr = add nsw i64 %umax226.i232.i, -1
  %i.ags = call i64 @llvm.umin.i64(i64 %reass.sub462.i, i64 %i.agr) ; 2 uses
  %min.iters.check1110 = icmp ult i64 %i.ags, 8
  br i1 %min.iters.check1110, label %scalar.ph1109.preheader, label %vector.ph1111

scalar.ph1109.preheader:                          ; preds = %vector.body1115, %.lr.ph156.i228.i
  %.ph1240 = phi i64 [ 1, %.lr.ph156.i228.i ], [ %i.agx, %vector.body1115 ]
  %.sroa.033.0155.i235.i.ph = phi i64 [ 0, %.lr.ph156.i228.i ], [ %n.vec1112, %vector.body1115 ]
  br label %scalar.ph1109

vector.ph1111:                                    ; preds = %.lr.ph156.i228.i
  %i.agt = add nuw nsw i64 %i.ags, 1              ; 2 uses
  %i.agu = and i64 %i.agt, 7                      ; 2 uses
  %i.agv = icmp eq i64 %i.agu, 0
  %i.agw = select i1 %i.agv, i64 8, i64 %i.agu
  %n.vec1112 = sub i64 %i.agt, %i.agw             ; 3 uses
  %i.agx = add i64 %n.vec1112, 1
  %broadcast.splatinsert1113 = insertelement <4 x i64> poison, i64 %.sroa.08.0157.i231.i, i64 0
  %broadcast.splat1114 = shufflevector <4 x i64> %broadcast.splatinsert1113, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op1516 = add nuw <4 x i64> splat (i64 4), %broadcast.splat1114
  %invariant.gep1518 = getelementptr [4 x i8], ptr %i.agd, i64 %.sroa.0.0158.i230.i
  br label %vector.body1115

vector.body1115:                                  ; preds = %vector.body1115, %vector.ph1111
  %index1116 = phi i64 [ 0, %vector.ph1111 ], [ %index.next1119, %vector.body1115 ] ; 2 uses
  %vec.ind1117 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1111 ], [ %vec.ind.next1120, %vector.body1115 ] ; 3 uses
  %i.agy = add nuw nsw <4 x i64> %vec.ind1117, %broadcast.splat1114
  %.reass1517 = add nuw <4 x i64> %vec.ind1117, %invariant.op1516
  %gep1519 = getelementptr [4 x i8], ptr %invariant.gep1518, i64 %index1116 ; 2 uses
  %i.agz = trunc <4 x i64> %i.agy to <4 x i32>
  %i.aha = trunc <4 x i64> %.reass1517 to <4 x i32>
  %i.ahb = getelementptr inbounds nuw i8, ptr %gep1519, i64 16
  store <4 x i32> %i.agz, ptr %gep1519, align 4, !noalias !38091
  store <4 x i32> %i.aha, ptr %i.ahb, align 4, !noalias !38091
  %index.next1119 = add nuw i64 %index1116, 8     ; 2 uses
  %vec.ind.next1120 = add <4 x i64> %vec.ind1117, splat (i64 8)
  %i.ahc = icmp eq i64 %index.next1119, %n.vec1112
  br i1 %i.ahc, label %scalar.ph1109.preheader, label %vector.body1115, !llvm.loop !38101

.loopexit.i239.i:                                 ; preds = %bb.gy
  %lpad.loopexit102.i240.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit124.i209.i"

.loopexit.split-lp.loopexit.i207.i:               ; preds = %bb.hb
  %lpad.loopexit106.i208.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit124.i209.i"

.loopexit.split-lp.loopexit.split-lp.i247.i:      ; preds = %.invoke336.i384.i, %.invoke.i382.i, %bb.fr
  %.sroa.011.1.ph.ph.ph.i248.i = phi ptr [ %i.agf, %.invoke336.i384.i ], [ %.sroa.011.3.i246.i, %bb.fr ], [ %i.agf, %.invoke.i382.i ]
end_hunk_17
begin_hunk_18_@_ZN6brotli3enc6encode22WriteMetaBlockInternal17h7952d72b2f7e6cd4E:bb.a
  %i.alr = zext i32 %.sroa.01.0.i.i359.i to i64   ; 3 uses
  %i.als = icmp samesign ugt i64 %i.aeq, %i.alr
  br i1 %i.als, label %bb.ga, label %.split.us.i.invoke.i.i

bb.ga:                                            ; preds = %bb.fz
  %i.alt = getelementptr inbounds nuw [2192 x i8], ptr %.sroa.10.0.i.i.i176.i, i64 %i.alr ; 3 uses
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alq, i64 2176
  %i.alv = load i64, ptr %i.alu, align 8, !alias.scope !38129, !noalias !38132, !noundef !27
  %i.alw = icmp eq i64 %i.alv, 0
  br i1 %i.alw, label %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h947b41782effd87bE.exit40.i.i.i, label %vector.ph1145

vector.ph1145:                                    ; preds = %bb.ga
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !38136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2192) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(2192) %i.alq, i64 2192, i1 false), !alias.scope !38138, !noalias !38132
  %i.alx = load i64, ptr %i.ahr, align 8, !alias.scope !38142, !noalias !38145, !noundef !27
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alt, i64 2176
  %i.alz = load i64, ptr %i.aly, align 8, !alias.scope !38148, !noalias !38151, !noundef !27
  %i.ama = add i64 %i.alz, %i.alx
  store i64 %i.ama, ptr %i.ahr, align 8, !alias.scope !38152, !noalias !38155
  br label %vector.body1146

vector.body1146:                                  ; preds = %vector.body1146, %vector.ph1145
  %index1147 = phi i64 [ 0, %vector.ph1145 ], [ %index.next1152.1, %vector.body1146 ] ; 4 uses
  %i.amb = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index1147 ; 3 uses
  %i.amc = getelementptr inbounds nuw i8, ptr %i.amb, i64 16 ; 2 uses
  %wide.load1148 = load <4 x i32>, ptr %i.amb, align 8, !noalias !38155
  %wide.load1149 = load <4 x i32>, ptr %i.amc, align 8, !noalias !38155
  %i.amd = getelementptr inbounds nuw [4 x i8], ptr %i.alt, i64 %index1147 ; 2 uses
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amd, i64 16
  %wide.load1150 = load <4 x i32>, ptr %i.amd, align 4, !alias.scope !38156, !noalias !38151
  %wide.load1151 = load <4 x i32>, ptr %i.ame, align 4, !alias.scope !38156, !noalias !38151
  %i.amf = add <4 x i32> %wide.load1150, %wide.load1148
  %i.amg = add <4 x i32> %wide.load1151, %wide.load1149
  store <4 x i32> %i.amf, ptr %i.amb, align 8, !noalias !38155
  store <4 x i32> %i.amg, ptr %i.amc, align 8, !noalias !38155
  %index.next1152 = or disjoint i64 %index1147, 8 ; 2 uses
  %i.amh = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index.next1152 ; 3 uses
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amh, i64 16 ; 2 uses
  %wide.load1148.1 = load <4 x i32>, ptr %i.amh, align 8, !noalias !38155
  %wide.load1149.1 = load <4 x i32>, ptr %i.ami, align 8, !noalias !38155
  %i.amj = getelementptr inbounds nuw [4 x i8], ptr %i.alt, i64 %index.next1152 ; 2 uses
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amj, i64 16
  %wide.load1150.1 = load <4 x i32>, ptr %i.amj, align 4, !alias.scope !38156, !noalias !38151
  %wide.load1151.1 = load <4 x i32>, ptr %i.amk, align 4, !alias.scope !38156, !noalias !38151
  %i.aml = add <4 x i32> %wide.load1150.1, %wide.load1148.1
  %i.amm = add <4 x i32> %wide.load1151.1, %wide.load1149.1
  store <4 x i32> %i.aml, ptr %i.amh, align 8, !noalias !38155
  store <4 x i32> %i.amm, ptr %i.ami, align 8, !noalias !38155
  %index.next1152.1 = add nuw nsw i64 %index1147, 16 ; 2 uses
  %i.amn = icmp eq i64 %index.next1152.1, 544
  br i1 %i.amn, label %_ZN6brotli3enc9histogram21HistogramAddHistogram17hbf6f595fe81a9aafE.exit.i.i.i, label %vector.body1146, !llvm.loop !38209

_ZN6brotli3enc9histogram21HistogramAddHistogram17hbf6f595fe81a9aafE.exit.i.i.i: ; preds = %vector.body1146
  %i.amo = invoke fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17h6e6faa88087b3713E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2192) %i.q)
          to label %.noexc107.i365.i unwind label %.thread45.thread81.loopexit.i363.i, !noalias !38091 ; 0 uses

.noexc107.i365.i:                                 ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17hbf6f595fe81a9aafE.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !38136
  br label %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h947b41782effd87bE.exit40.i.i.i

_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h947b41782effd87bE.exit40.i.i.i: ; preds = %.noexc107.i365.i, %bb.ga
  store i32 %.sroa.01.0.i.i359.i, ptr %i.aki, align 4, !alias.scope !38127, !noalias !38128
  %exitcond137.not.i.i367.i = icmp eq i64 %i.akg, %i.aeq
  br i1 %exitcond137.not.i.i367.i, label %.lr.ph69.i.i289.i.preheader, label %.lr.ph36.split.i.i356.i

.lr.ph69.i.i289.i.preheader:                      ; preds = %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h947b41782effd87bE.exit40.i.i.i, %_ZN6brotli3enc9histogram14HistogramClear17hf9145d293705796bE.exit.i.i.i
  br label %.lr.ph69.i.i289.i

.split.us.i.invoke.i.i:                           ; preds = %bb.ft, %.lr.ph36.split.us.i.i254.i, %bb.fv, %.lr.ph.split.us44.i.i267.i, %bb.fw, %.lr.ph.split.us.us.i.i352.i, %bb.fz, %.lr.ph36.split.i.i356.i, %bb.fy, %.lr.ph.i.i285.i, %bb.fx, %.lr.ph69.i.i289.i
  %i.amp = phi i64 [ %i.ajc, %bb.fv ], [ %i.ake, %bb.fw ], [ %i.jx, %bb.fx ], [ %i.alm, %bb.fy ], [ %i.alr, %bb.fz ], [ %i.ako, %.lr.ph69.i.i289.i ], [ %i.age, %.lr.ph.i.i285.i ], [ %i.jx, %.lr.ph36.split.i.i356.i ], [ %i.age, %.lr.ph.split.us.us.i.i352.i ], [ %i.age, %.lr.ph.split.us44.i.i267.i ], [ %i.jx, %.lr.ph36.split.us.i.i254.i ], [ %i.ahy, %bb.ft ]
  %i.amq = phi i64 [ %i.aeq, %bb.fv ], [ %i.aeq, %bb.fw ], [ %i.jx, %bb.fx ], [ %i.aeq, %bb.fy ], [ %i.aeq, %bb.fz ], [ %i.aeq, %.lr.ph69.i.i289.i ], [ %i.age, %.lr.ph.i.i285.i ], [ %i.jx, %.lr.ph36.split.i.i356.i ], [ %i.age, %.lr.ph.split.us.us.i.i352.i ], [ %i.age, %.lr.ph.split.us44.i.i267.i ], [ %i.jx, %.lr.ph36.split.us.i.i254.i ], [ %i.aeq, %bb.ft ]
  %i.amr = phi ptr [ @1892, %bb.fv ], [ @1892, %bb.fw ], [ @1883, %bb.fx ], [ @1885, %bb.fy ], [ @1889, %bb.fz ], [ @1882, %.lr.ph69.i.i289.i ], [ @1884, %.lr.ph.i.i285.i ], [ @1888, %.lr.ph36.split.i.i356.i ], [ @1891, %.lr.ph.split.us.us.i.i352.i ], [ @1891, %.lr.ph.split.us44.i.i267.i ], [ @1888, %.lr.ph36.split.us.i.i254.i ], [ @1889, %bb.ft ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.amp, i64 noundef %i.amq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.amr) #43
          to label %.split.us.i.cont.i.i unwind label %.thread45.thread81.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i256.i, !noalias !38091

.split.us.i.cont.i.i:                             ; preds = %.split.us.i.invoke.i.i
  unreachable

_ZN6brotli3enc7cluster20BrotliHistogramRemap17haaf936f10c9f9e6bE.exit.i.i: ; preds = %middle.block1163, %.preheader.i.i368.i.thread
  %i.ams = icmp eq i64 %i.age, 0
  br i1 %i.ams, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit113.i297.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i112.i296.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i112.i296.i": ; preds = %_ZN6brotli3enc7cluster20BrotliHistogramRemap17haaf936f10c9f9e6bE.exit.i.i
  call void @mi_free(ptr noundef nonnull align 4 %i.agd) #38, !noalias !38091
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit113.i297.i"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit113.i297.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i112.i296.i", %_ZN6brotli3enc7cluster20BrotliHistogramRemap17haaf936f10c9f9e6bE.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !38210)
  br i1 %.not865.i, label %bb.hd, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i116.i299.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i116.i299.i: ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit113.i297.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !38213
  %i.amt = call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.aer, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !38213 ; 11 uses
  %i.amu = icmp eq ptr %i.amt, null
  br i1 %i.amu, label %.invoke1129.i, label %.lr.ph.i117.i300.i

.lr.ph.i117.i300.i:                               ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i116.i299.i
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.amt, i8 -1, i64 %i.aer, i1 false), !noalias !38219
  %i.amv = or disjoint i64 %i.aeq, 1              ; 2 uses
  br label %bb.gq

._crit_edge.i.i316.i:                             ; preds = %bb.gw
  %i.amw = zext i32 %.sroa.0.3.i.i314.i.1 to i64  ; 3 uses
  %.not42.i.i317.i = icmp eq i32 %.sroa.0.3.i.i314.i.1, 0
  br i1 %.not42.i.i317.i, label %_ZN6brotli3enc14combined_alloc8alloc_if17h2865d3cc2bef66e4E.exit.i.i.i, label %bb.gb

bb.gb:                                            ; preds = %._crit_edge.i.i316.i
  %i.amx = mul nuw nsw i64 %i.amw, 2192           ; 2 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !38220
  %i.amy = call noundef ptr @mi_malloc_aligned(i64 noundef %i.amx, i64 noundef range(i64 1, 9) 8) #38, !noalias !38220 ; 5 uses
  %i.amz = icmp eq ptr %i.amy, null
  br i1 %i.amz, label %bb.gc, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i.i.i.i"

bb.gc:                                            ; preds = %bb.gb
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.amx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc.i.i349.i unwind label %.thread29.i.i311.i, !noalias !38219

.noexc.i.i349.i:                                  ; preds = %bb.gc
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i.i.i.i": ; preds = %bb.gb
  %.not.i.i.i318.i = icmp eq i32 %.sroa.0.3.i.i314.i.1, 1
  br i1 %.not.i.i.i318.i, label %._crit_edge.thread.i.i.i.i.i.i323.i, label %.lr.ph.i.i.i.i.i.i319.i.preheader

.lr.ph.i.i.i.i.i.i319.i.preheader:                ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i.i.i.i"
  %i.ana = add nsw i64 %i.amw, -1                 ; 2 uses
  %xtraiter1381 = and i64 %i.ana, 7               ; 3 uses
  %i.anb = add i32 %.sroa.0.3.i.i314.i.1, -2
  %i.anc = icmp ult i32 %i.anb, 7
  br i1 %i.anc, label %.lr.ph.i.i.i.i.i.i319.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i319.i.preheader.new

.lr.ph.i.i.i.i.i.i319.i.preheader.new:            ; preds = %.lr.ph.i.i.i.i.i.i319.i.preheader
  %unroll_iter1386 = and i64 %i.ana, -8
  br label %.lr.ph.i.i.i.i.i.i319.i

._crit_edge.thread.i.i.i.i.i.i323.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i319.i
  %lcmp.mod1383.not = icmp eq i64 %xtraiter1381, 0
  br i1 %lcmp.mod1383.not, label %._crit_edge.thread.i.i.i.i.i.i323.i, label %.lr.ph.i.i.i.i.i.i319.i.epil.preheader

.lr.ph.i.i.i.i.i.i319.i.epil.preheader:           ; preds = %._crit_edge.thread.i.i.i.i.i.i323.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i319.i.preheader
  %.sroa.0.08.i.i.i.i.i.i320.i.epil.init = phi ptr [ %i.amy, %.lr.ph.i.i.i.i.i.i319.i.preheader ], [ %i.ann, %._crit_edge.thread.i.i.i.i.i.i323.i.loopexit.unr-lcssa ]
  %lcmp.mod1385 = icmp ne i64 %xtraiter1381, 0
  call void @llvm.assume(i1 %lcmp.mod1385)
  br label %.lr.ph.i.i.i.i.i.i319.i.epil

.lr.ph.i.i.i.i.i.i319.i.epil:                     ; preds = %.lr.ph.i.i.i.i.i.i319.i.epil, %.lr.ph.i.i.i.i.i.i319.i.epil.preheader
  %.sroa.0.08.i.i.i.i.i.i320.i.epil = phi ptr [ %i.and, %.lr.ph.i.i.i.i.i.i319.i.epil ], [ %.sroa.0.08.i.i.i.i.i.i320.i.epil.init, %.lr.ph.i.i.i.i.i.i319.i.epil.preheader ] ; 3 uses
  %epil.iter1382 = phi i64 [ %epil.iter1382.next, %.lr.ph.i.i.i.i.i.i319.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i319.i.epil.preheader ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i.i.i.i320.i.epil, i8 0, i64 2184, i1 false), !noalias !38219
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i320.i.epil, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i.epil, align 8, !noalias !38228
  %i.and = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i320.i.epil, i64 2192 ; 2 uses
  %epil.iter1382.next = add i64 %epil.iter1382, 1 ; 2 uses
  %epil.iter1382.cmp.not = icmp eq i64 %epil.iter1382.next, %xtraiter1381
  br i1 %epil.iter1382.cmp.not, label %._crit_edge.thread.i.i.i.i.i.i323.i, label %.lr.ph.i.i.i.i.i.i319.i.epil, !llvm.loop !38231

._crit_edge.thread.i.i.i.i.i.i323.i:              ; preds = %._crit_edge.thread.i.i.i.i.i.i323.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i319.i.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i.i.i.i"
  %.sroa.0.0.lcssa15.i.i.i.i.i.i324.i = phi ptr [ %i.amy, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i.i.i.i" ], [ %i.ann, %._crit_edge.thread.i.i.i.i.i.i323.i.loopexit.unr-lcssa ], [ %i.and, %.lr.ph.i.i.i.i.i.i319.i.epil ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.0.lcssa15.i.i.i.i.i.i324.i, i8 0, i64 2184, i1 false), !noalias !38219
  %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i.i.i.i324.i, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i.i.i.i, align 8, !noalias !38228
  %i.ane = insertvalue { ptr, i64 } poison, ptr %i.amy, 0
  %i.anf = insertvalue { ptr, i64 } %i.ane, i64 %i.amw, 1
  br label %_ZN6brotli3enc14combined_alloc8alloc_if17h2865d3cc2bef66e4E.exit.i.i.i

.lr.ph.i.i.i.i.i.i319.i:                          ; preds = %.lr.ph.i.i.i.i.i.i319.i, %.lr.ph.i.i.i.i.i.i319.i.preheader.new
  %.sroa.0.08.i.i.i.i.i.i320.i = phi ptr [ %i.amy, %.lr.ph.i.i.i.i.i.i319.i.preheader.new ], [ %i.ann, %.lr.ph.i.i.i.i.i.i319.i ] ; 17 uses
  %niter1387 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i319.i.preheader.new ], [ %niter1387.next.7, %.lr.ph.i.i.i.i.i.i319.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i.i.i.i320.i, i8 0, i64 2184, i1 false), !noalias !38219
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i320.i, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i, align 8, !noalias !38228
  %i.ang = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i320.i, i64 2192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ang, i8 0, i64 2184, i1 false), !noalias !38219
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i320.i, i64 4376
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i.1, align 8, !noalias !38228
  %i.anh = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i320.i, i64 4384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.anh, i8 0, i64 2184, i1 false), !noalias !38219
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i320.i, i64 6568
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i.2, align 8, !noalias !38228
  %i.ani = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i320.i, i64 6576
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ani, i8 0, i64 2184, i1 false), !noalias !38219
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i320.i, i64 8760
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i.3, align 8, !noalias !38228
  %i.anj = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i320.i, i64 8768
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.anj, i8 0, i64 2184, i1 false), !noalias !38219
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i320.i, i64 10952
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i.4, align 8, !noalias !38228
  %i.ank = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i320.i, i64 10960
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ank, i8 0, i64 2184, i1 false), !noalias !38219
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i320.i, i64 13144
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i.5, align 8, !noalias !38228
  %i.anl = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i320.i, i64 13152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.anl, i8 0, i64 2184, i1 false), !noalias !38219
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i320.i, i64 15336
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i.6, align 8, !noalias !38228
  %i.anm = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i320.i, i64 15344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.anm, i8 0, i64 2184, i1 false), !noalias !38219
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i320.i, i64 17528
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.i.7, align 8, !noalias !38228
  %i.ann = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i320.i, i64 17536 ; 3 uses
  %niter1387.next.7 = add nuw i64 %niter1387, 8   ; 2 uses
  %niter1387.ncmp.7 = icmp eq i64 %niter1387.next.7, %unroll_iter1386
  br i1 %niter1387.ncmp.7, label %._crit_edge.thread.i.i.i.i.i.i323.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i319.i

.thread29.i.i311.i:                               ; preds = %.invoke.i.i307.i, %bb.gc
  %lpad.thr_comm.split-lp.i.i312.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit127.sink.split.i220.i"

_ZN6brotli3enc14combined_alloc8alloc_if17h2865d3cc2bef66e4E.exit.i.i.i: ; preds = %._crit_edge.thread.i.i.i.i.i.i323.i, %._crit_edge.i.i316.i
  %.pn.i71.i.i325.i = phi { ptr, i64 } [ %i.anf, %._crit_edge.thread.i.i.i.i.i.i323.i ], [ { ptr inttoptr (i64 8 to ptr), i64 0 }, %._crit_edge.i.i316.i ] ; 2 uses
  %i.ano = extractvalue { ptr, i64 } %.pn.i71.i.i325.i, 0 ; 10 uses
  %i.anp = extractvalue { ptr, i64 } %.pn.i71.i.i325.i, 1 ; 7 uses
  br label %bb.gj

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i.i336.i": ; preds = %bb.gp
  call void @mi_free(ptr noundef nonnull align 4 %i.amt) #38, !noalias !38219
  %i.anq = zext i32 %.sroa.0.2.i.i334.i to i64    ; 3 uses
  %.not84.i.i337.i = icmp eq i32 %.sroa.0.2.i.i334.i, 0
  br i1 %.not84.i.i337.i, label %._crit_edge80.i.i343.i, label %.lr.ph79.i.i338.i

.lr.ph79.i.i338.i:                                ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i.i336.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ano) ]
  %i.anr = add nuw nsw i64 %i.anp, 1
  br label %bb.gd

._crit_edge80.i.i343.i:                           ; preds = %bb.gi, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i.i336.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ano) ]
  %i.ans = icmp eq i64 %i.anp, 0
  br i1 %i.ans, label %bb.hd, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i72.i.i344.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i72.i.i344.i": ; preds = %._crit_edge80.i.i343.i
  call void @mi_free(ptr noundef nonnull align 8 %i.ano) #38, !noalias !38219
  br label %bb.hd

bb.gd:                                            ; preds = %bb.gi, %.lr.ph79.i.i338.i
  %i.ant = phi i64 [ 1, %.lr.ph79.i.i338.i ], [ %i.anx, %bb.gi ] ; 5 uses
  %.sroa.029.078.i.i339.i = phi i64 [ 0, %.lr.ph79.i.i338.i ], [ %i.ant, %bb.gi ] ; 4 uses
  %exitcond106.not.i.i340.i = icmp eq i64 %i.ant, %i.anr
  br i1 %exitcond106.not.i.i340.i, label %bb.ge, label %bb.gg

bb.ge:                                            ; preds = %bb.gd
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.029.078.i.i339.i, i64 noundef %i.anp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1905) #43
          to label %bb.gf unwind label %.thread.i.i330.i, !noalias !38219

bb.gf:                                            ; preds = %bb.gn, %bb.gh, %bb.ge
  unreachable

bb.gg:                                            ; preds = %bb.gd
  %exitcond107.not.i.i341.i = icmp eq i64 %i.ant, %i.amv
  br i1 %exitcond107.not.i.i341.i, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.029.078.i.i339.i, i64 noundef %i.aeq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1906) #43
          to label %bb.gf unwind label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread.i.i345.i", !noalias !38219

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread.i.i345.i": ; preds = %bb.gh
  %i.anu = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit127.sink.split.i220.i"

bb.gi:                                            ; preds = %bb.gg
  %i.anv = getelementptr inbounds nuw [2192 x i8], ptr %i.ano, i64 %.sroa.029.078.i.i339.i
  %i.anw = getelementptr inbounds nuw [2192 x i8], ptr %.sroa.10.0.i.i.i176.i, i64 %.sroa.029.078.i.i339.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2192) %i.anw, ptr noundef nonnull align 8 dereferenceable(2192) %i.anv, i64 2192, i1 false), !noalias !38232
  %i.anx = add nuw nsw i64 %i.ant, 1
  %exitcond108.not.i.i342.i = icmp eq i64 %i.ant, %i.anq
  br i1 %exitcond108.not.i.i342.i, label %._crit_edge80.i.i343.i, label %bb.gd

bb.gj:                                            ; preds = %bb.gp, %_ZN6brotli3enc14combined_alloc8alloc_if17h2865d3cc2bef66e4E.exit.i.i.i
  %i.any = phi i64 [ 1, %_ZN6brotli3enc14combined_alloc8alloc_if17h2865d3cc2bef66e4E.exit.i.i.i ], [ %i.aoo, %bb.gp ] ; 4 uses
  %.sroa.0.173.i.i326.i = phi i32 [ 0, %_ZN6brotli3enc14combined_alloc8alloc_if17h2865d3cc2bef66e4E.exit.i.i.i ], [ %.sroa.0.2.i.i334.i, %bb.gp ] ; 4 uses
  %.sroa.027.072.i.i327.i = phi i64 [ 0, %_ZN6brotli3enc14combined_alloc8alloc_if17h2865d3cc2bef66e4E.exit.i.i.i ], [ %i.any, %bb.gp ]
  %exitcond104.not.i.i328.i = icmp eq i64 %i.any, %i.amv
  br i1 %exitcond104.not.i.i328.i, label %.invoke176.i.i329.i, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.anz = getelementptr inbounds nuw [4 x i8], ptr %i.afa, i64 %.sroa.027.072.i.i327.i ; 2 uses
  %i.aoa = load i32, ptr %i.anz, align 4, !alias.scope !38233, !noalias !38234, !noundef !27
  %i.aob = zext i32 %i.aoa to i64                 ; 4 uses
  %i.aoc = icmp samesign ugt i64 %i.aeq, %i.aob
  br i1 %i.aoc, label %bb.gl, label %.invoke176.i.i329.i

bb.gl:                                            ; preds = %bb.gk
  %i.aod = getelementptr inbounds nuw [4 x i8], ptr %i.amt, i64 %i.aob ; 2 uses
  %i.aoe = load i32, ptr %i.aod, align 4, !noalias !38219, !noundef !27 ; 2 uses
  %i.aof = icmp eq i32 %i.aoe, %.sroa.0.173.i.i326.i
  br i1 %i.aof, label %bb.gm, label %bb.gp

.invoke176.i.i329.i:                              ; preds = %bb.gk, %bb.gj
  %i.aog = phi i64 [ %i.aob, %bb.gk ], [ %i.aeq, %bb.gj ]
  %i.aoh = phi ptr [ @1908, %bb.gk ], [ @1907, %bb.gj ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.aog, i64 noundef %i.aeq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aoh) #43
          to label %.cont177.i.i333.i unwind label %.thread.i.i330.i, !noalias !38219

.cont177.i.i333.i:                                ; preds = %.invoke176.i.i329.i
  unreachable

bb.gm:                                            ; preds = %bb.gl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ano) ]
  %i.aoi = zext i32 %.sroa.0.173.i.i326.i to i64  ; 3 uses
  %i.aoj = icmp ugt i64 %i.anp, %i.aoi
  br i1 %i.aoj, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.aoi, i64 noundef %i.anp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1909) #43
          to label %bb.gf unwind label %.thread.thread.i.i346.i, !noalias !38219

bb.go:                                            ; preds = %bb.gm
  %i.aok = getelementptr inbounds nuw [2192 x i8], ptr %.sroa.10.0.i.i.i176.i, i64 %i.aob
  %i.aol = getelementptr inbounds nuw [2192 x i8], ptr %i.ano, i64 %i.aoi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2192) %i.aol, ptr noundef nonnull align 8 dereferenceable(2192) %i.aok, i64 2192, i1 false), !noalias !38232
  %i.aom = add i32 %.sroa.0.173.i.i326.i, 1
  %.pre.i.i348.i = load i32, ptr %i.aod, align 4, !noalias !38219
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.gl
  %i.aon = phi i32 [ %.pre.i.i348.i, %bb.go ], [ %i.aoe, %bb.gl ]
  %.sroa.0.2.i.i334.i = phi i32 [ %i.aom, %bb.go ], [ %.sroa.0.173.i.i326.i, %bb.gl ] ; 3 uses
  store i32 %i.aon, ptr %i.anz, align 4, !alias.scope !38233, !noalias !38234
  %i.aoo = add nuw i64 %i.any, 1
  %exitcond105.not.i.i335.i = icmp eq i64 %i.any, %i.aeq
  br i1 %exitcond105.not.i.i335.i, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i.i336.i", label %bb.gj

bb.gq:                                            ; preds = %bb.gw, %.lr.ph.i117.i300.i
  %i.aop = phi i64 [ 1, %.lr.ph.i117.i300.i ], [ %i.aph, %bb.gw ] ; 3 uses
  %.sroa.0.070.i.i304.i = phi i32 [ 0, %.lr.ph.i117.i300.i ], [ %.sroa.0.3.i.i314.i.1, %bb.gw ] ; 3 uses
  %.sroa.025.069.i.i305.i = phi i64 [ 0, %.lr.ph.i117.i300.i ], [ %i.aoy, %bb.gw ]
  %i.aoq = getelementptr inbounds nuw [4 x i8], ptr %i.afa, i64 %.sroa.025.069.i.i305.i
  %i.aor = load i32, ptr %i.aoq, align 4, !alias.scope !38233, !noalias !38234, !noundef !27
  %i.aos = zext i32 %i.aor to i64                 ; 3 uses
  %i.aot = icmp samesign ugt i64 %i.aeq, %i.aos
  br i1 %i.aot, label %bb.gr, label %.invoke.i.i307.i

bb.gr:                                            ; preds = %bb.gq
  %i.aou = getelementptr inbounds nuw [4 x i8], ptr %i.amt, i64 %i.aos ; 2 uses
  %i.aov = load i32, ptr %i.aou, align 4, !noalias !38219, !noundef !27
  %i.aow = icmp eq i32 %i.aov, -1
  br i1 %i.aow, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  store i32 %.sroa.0.070.i.i304.i, ptr %i.aou, align 4, !noalias !38219
  %i.aox = add i32 %.sroa.0.070.i.i304.i, 1
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr
  %.sroa.0.3.i.i314.i = phi i32 [ %i.aox, %bb.gs ], [ %.sroa.0.070.i.i304.i, %bb.gr ] ; 3 uses
  %i.aoy = add nuw nsw i64 %i.aop, 1              ; 2 uses
  %i.aoz = getelementptr inbounds nuw [4 x i8], ptr %i.afa, i64 %i.aop
  %i.apa = load i32, ptr %i.aoz, align 4, !alias.scope !38233, !noalias !38234, !noundef !27
  %i.apb = zext i32 %i.apa to i64                 ; 3 uses
  %i.apc = icmp samesign ugt i64 %i.aeq, %i.apb
  br i1 %i.apc, label %bb.gu, label %.invoke.i.i307.i

bb.gu:                                            ; preds = %bb.gt
  %i.apd = getelementptr inbounds nuw [4 x i8], ptr %i.amt, i64 %i.apb ; 2 uses
  %i.ape = load i32, ptr %i.apd, align 4, !noalias !38219, !noundef !27
  %i.apf = icmp eq i32 %i.ape, -1
  br i1 %i.apf, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %bb.gu
  store i32 %.sroa.0.3.i.i314.i, ptr %i.apd, align 4, !noalias !38219
  %i.apg = add i32 %.sroa.0.3.i.i314.i, 1
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %bb.gu
  %.sroa.0.3.i.i314.i.1 = phi i32 [ %i.apg, %bb.gv ], [ %.sroa.0.3.i.i314.i, %bb.gu ] ; 5 uses
  %i.aph = add nuw nsw i64 %i.aop, 2
  %exitcond103.not.i.i315.i.1 = icmp eq i64 %i.aoy, %i.aeq
  br i1 %exitcond103.not.i.i315.i.1, label %._crit_edge.i.i316.i, label %bb.gq

.invoke.i.i307.i:                                 ; preds = %bb.gt, %bb.gq
  %.lcssa1213 = phi i64 [ %i.aos, %bb.gq ], [ %i.apb, %bb.gt ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.lcssa1213, i64 noundef %i.aeq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1911) #43
          to label %.cont.i.i313.i unwind label %.thread29.i.i311.i, !noalias !38219

.cont.i.i313.i:                                   ; preds = %.invoke.i.i307.i
  unreachable

bb.gx:                                            ; preds = %.thread.i.i330.i
  br i1 %i.api, label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit127.sink.split.i220.i", label %.thread.thread143.i

.thread.i.i330.i:                                 ; preds = %.invoke176.i.i329.i, %bb.ge
  %i.api = phi i1 [ false, %bb.ge ], [ true, %.invoke176.i.i329.i ] ; 2 uses
  %lpad.thr_comm.i.i331.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.apj = icmp eq i64 %i.anp, 0
  br i1 %i.apj, label %bb.gx, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i120.i332.i"

.thread.thread.i.i346.i:                          ; preds = %bb.gn
  %i.apk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.apl = icmp eq i64 %i.anp, 0
  br i1 %i.apl, label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit127.sink.split.i220.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread161.i.i347.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread161.i.i347.i": ; preds = %.thread.thread.i.i346.i
  call void @mi_free(ptr noundef nonnull %i.ano) #38, !noalias !38219
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit127.sink.split.i220.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i120.i332.i": ; preds = %.thread.i.i330.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ano) ]
end_hunk_18
begin_hunk_19_@_ZN6brotli3enc9metablock31ContextBlockSplitterFinishBlock17h66fa7f7da5e00ab8E:bb.a
.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.02.05.i.prol = phi ptr [ %i.aq, %.lr.ph.i.prol ], [ %i.ak, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter391 = phi i64 [ %prol.iter391.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.prol, i64 1040 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.prol, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %.sroa.02.05.i.prol, i8 0, i64 1032, i1 false), !alias.scope !39192
  store float 3.402000e+38, ptr %i.ar, align 8, !alias.scope !39195
  %prol.iter391.next = add i64 %prol.iter391, 1   ; 2 uses
  %prol.iter391.cmp.not = icmp eq i64 %prol.iter391.next, %xtraiter389
  br i1 %prol.iter391.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !39198

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.sroa.02.05.i.unr = phi ptr [ %i.ak, %.lr.ph.i.preheader ], [ %i.aq, %.lr.ph.i.prol ]
  %i.as = icmp ult i64 %i.an, 7280
  br i1 %i.as, label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit, label %.lr.ph.i

bb.n:                                             ; preds = %bb.l
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.aj, i64 noundef %i.ai, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1931) #43, !noalias !39192
  unreachable

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.02.05.i = phi ptr [ %i.bh, %.lr.ph.i ], [ %.sroa.02.05.i.unr, %.lr.ph.i.prol.loopexit ] ; 17 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 1040
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %.sroa.02.05.i, i8 0, i64 1032, i1 false), !alias.scope !39192
  store float 3.402000e+38, ptr %i.au, align 8, !alias.scope !39195
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 2080
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.at, i8 0, i64 1032, i1 false), !alias.scope !39192
  store float 3.402000e+38, ptr %i.aw, align 8, !alias.scope !39195
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 3120
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.av, i8 0, i64 1032, i1 false), !alias.scope !39192
  store float 3.402000e+38, ptr %i.ay, align 8, !alias.scope !39195
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 4160
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 4152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.ax, i8 0, i64 1032, i1 false), !alias.scope !39192
  store float 3.402000e+38, ptr %i.ba, align 8, !alias.scope !39195
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 5200
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 5192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.az, i8 0, i64 1032, i1 false), !alias.scope !39192
  store float 3.402000e+38, ptr %i.bc, align 8, !alias.scope !39195
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 6240
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 6232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.bb, i8 0, i64 1032, i1 false), !alias.scope !39192
  store float 3.402000e+38, ptr %i.be, align 8, !alias.scope !39195
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 7280
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 7272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.bd, i8 0, i64 1032, i1 false), !alias.scope !39192
  store float 3.402000e+38, ptr %i.bg, align 8, !alias.scope !39195
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 8320 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 8312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.bf, i8 0, i64 1032, i1 false), !alias.scope !39192
  store float 3.402000e+38, ptr %i.bi, align 8, !alias.scope !39195
  %i.bj = icmp eq ptr %i.bh, %i.al
  br i1 %i.bj, label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit, label %.lr.ph.i

bb.o:                                             ; preds = %bb.k
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.ae, i64 noundef %3, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1991) #43
  unreachable

bb.p:                                             ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h14c94f2a1b156012E.exit", %bb.e, %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit
  br i1 %5, label %bb.bd, label %bb.bc

bb.q:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw [1040 x i8], ptr %2, i64 %.sroa.026.092
  %i.bl = load i64, ptr %i.r, align 8, !noundef !27
  %i.bm = tail call { float, i64 } @_ZN6brotli3enc8bit_cost15shannon_entropy17hf421171ae783c7a0E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.bk, i64 noundef 256, i64 noundef %i.bl) ; 2 uses
  %i.bn = extractvalue { float, i64 } %i.bm, 0    ; 2 uses
  %i.bo = extractvalue { float, i64 } %i.bm, 1
  %i.bp = uitofp i64 %i.bo to float               ; 2 uses
  %i.bq = fcmp olt float %i.bn, %i.bp
  %.sroa.020.0 = select i1 %i.bq, float %i.bp, float %i.bn ; 2 uses
  %exitcond179.not = icmp eq i64 %i.w, 27
  br i1 %exitcond179.not, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.j
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.026.092, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1992) #43
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.sroa.026.092
  store float %.sroa.020.0, ptr %i.br, align 4
  %i.bs = add nuw nsw i64 %.sroa.026.092, %i.d    ; 2 uses
  %exitcond181.not = icmp eq i64 %i.w, %i.v
  br i1 %exitcond181.not, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.q
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.026.092, i64 noundef 26, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1993) #43
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.bs
  store float %.sroa.020.0, ptr %i.bt, align 4
  %i.bu = add nuw nsw i64 %i.w, 1
  %exitcond182.not = icmp eq i64 %i.w, %i.d
  br i1 %exitcond182.not, label %._crit_edge95, label %bb.j

bb.v:                                             ; preds = %bb.s
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bs, i64 noundef 26, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1994) #43
  unreachable

bb.w:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.b, i8 0, i64 52, i1 false)
  %i.bv = shl i64 %i.d, 1                         ; 14 uses
  %i.bw = mul i64 %i.d, 2080                      ; 4 uses
  %or.cond.i.i.i.i.i = icmp ugt i64 %i.bv, 8868626958514207
  br i1 %or.cond.i.i.i.i.i, label %bb.y, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.w
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i", label %bb.x

bb.x:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !39199
  %i.by = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.bw, i64 noundef range(i64 1, 9) 8) #38, !noalias !39199 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.y, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i"

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.x ], [ 0, %bb.w ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.bw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !39207
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i": ; preds = %bb.x, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.by, %bb.x ] ; 12 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.bv, %bb.x ]
  %i.ca = icmp samesign ule i64 %i.bv, %.sroa.4.0.i.i.i
  tail call void @llvm.assume(i1 %i.ca)
  %.not10 = icmp eq i64 %i.bv, 0                  ; 3 uses
  br i1 %.not10, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h88530c57ef19323aE.exit", label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i"
  %i.cb = add nsw i64 %i.bv, -1                   ; 2 uses
  %i.cc = add nsw i64 %i.bv, -2
  %xtraiter = and i64 %i.cb, 7
  %i.cd = icmp ult i64 %i.cc, 7
  br i1 %i.cd, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.cb, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader
  %.sroa.0.08.i.i.i.epil.init = phi ptr [ %.sroa.10.0.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.cm, %.lr.ph.i.i.i ]
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.sroa.0.08.i.i.i.epil = phi ptr [ %i.ce, %.lr.ph.i.i.i.epil ], [ %.sroa.0.08.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.epil, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i.epil, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.epil, align 8, !noalias !39208
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.epil, i64 1040 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !39211

._crit_edge.thread.i.i.i:                         ; preds = %.lr.ph.i.i.i.epil
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.epil, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ce, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i, align 8, !noalias !39208
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h88530c57ef19323aE.exit"

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.08.i.i.i = phi ptr [ %.sroa.10.0.i.i.i, %.lr.ph.i.i.i.preheader.new ], [ %i.cm, %.lr.ph.i.i.i ] ; 17 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i, align 8, !noalias !39208
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 1040
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cf, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.1, align 8, !noalias !39208
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 2080
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cg, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.2, align 8, !noalias !39208
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 3120
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 4152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ch, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.3, align 8, !noalias !39208
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 4160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 5192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ci, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.4, align 8, !noalias !39208
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 5200
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 6232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cj, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.5, align 8, !noalias !39208
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 6240
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 7272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ck, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.6, align 8, !noalias !39208
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 7280
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 8312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cl, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.7, align 8, !noalias !39208
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 8320 ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h88530c57ef19323aE.exit": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i", %._crit_edge.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(104) %i.a, i8 0, i64 104, i1 false)
  %.not96 = icmp eq i64 %i.d, 0                   ; 4 uses
  br i1 %.not96, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h88530c57ef19323aE.exit"
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cr = mul i64 %i.d, 1040                      ; 2 uses
  %scevgep334 = getelementptr i8, ptr %.sroa.10.0.i.i.i, i64 %i.cr
  %i.cs = getelementptr i8, ptr %.sroa.10.0.i.i.i, i64 %i.bw
  %scevgep335 = getelementptr i8, ptr %i.cs, i64 -16
  %i.ct = getelementptr i8, ptr %.sroa.10.0.i.i.i, i64 %i.cr
  %scevgep340 = getelementptr i8, ptr %i.ct, i64 -16
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph, %.loopexit
  %.sroa.0.0 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.pa, %.loopexit ]
  %.sroa.7.0 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.rk, %.loopexit ]
  %.sroa.028.175 = phi i64 [ 1, %.lr.ph ], [ %.sroa.028.1, %.loopexit ] ; 3 uses
  %.sroa.028.074 = phi i64 [ 0, %.lr.ph ], [ %.sroa.028.175, %.loopexit ] ; 12 uses
  %i.cu = load i64, ptr %i.cn, align 8, !noundef !27
  %i.cv = add i64 %i.cu, %.sroa.028.074           ; 3 uses
  %i.cw = icmp ult i64 %i.cv, %3
  br i1 %i.cw, label %bb.cf, label %.invoke305

._crit_edge:                                      ; preds = %.loopexit, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h88530c57ef19323aE.exit"
  %.sroa.0.1 = phi float [ 0.000000e+00, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h88530c57ef19323aE.exit" ], [ %i.pa, %.loopexit ] ; 2 uses
  %.sroa.7.1 = phi float [ 0.000000e+00, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h88530c57ef19323aE.exit" ], [ %i.rk, %.loopexit ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !noundef !27 ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.da = load i64, ptr %i.cz, align 8, !noundef !27
  %i.db = icmp ult i64 %i.cy, %i.da
  br i1 %i.db, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %._crit_edge
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.dd = load float, ptr %i.dc, align 8, !noundef !27 ; 2 uses
  %i.de = fcmp ogt float %.sroa.0.1, %i.dd
  %i.df = fcmp ogt float %.sroa.7.1, %i.dd
  %or.cond = select i1 %i.de, i1 %i.df, i1 false
  br i1 %or.cond, label %bb.aw, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge
  %i.dg = fadd float %.sroa.0.1, -2.000000e+01
  %i.dh = fcmp olt float %.sroa.7.1, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val120 = load i64, ptr %i.di, align 8, !noundef !27 ; 4 uses
  %i.dj = load i64, ptr %i.k, align 8, !noundef !27 ; 4 uses
  br i1 %i.dh, label %bb.am, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dk = add i64 %i.dj, -1                       ; 3 uses
  %i.dl = icmp ult i64 %i.dk, %.val120
  br i1 %i.dl, label %bb.ad, label %.invoke305

bb.ad:                                            ; preds = %bb.ac
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val121 = load ptr, ptr %i.dm, align 8, !nonnull !27, !align !603, !noundef !27
  %i.dn = load i64, ptr %i.e, align 8, !noundef !27
  %i.do = trunc i64 %i.dn to i32
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.val121, i64 %i.dk ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !noundef !27
  %i.dr = add i32 %i.dq, %i.do
  store i32 %i.dr, ptr %i.dp, align 4
  br i1 %.not96, label %._crit_edge81, label %.lr.ph80

.lr.ph80:                                         ; preds = %bb.ad
  %i.ds = load i64, ptr %0, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.du = icmp eq i64 %i.cy, 1
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dw = load i64, ptr %i.dv, align 8            ; 2 uses
  br label %bb.af

.invoke305:                                       ; preds = %bb.cl, %bb.ch, %bb.cj, %bb.cg, %bb.z, %bb.af, %bb.ar, %.lr.ph90, %bb.bf, %bb.bh, %bb.bj, %bb.bl, %bb.bn, %bb.bp, %bb.br, %bb.bt, %bb.bv, %bb.bx, %bb.bz, %bb.cb, %bb.cd, %bb.ax, %bb.aw, %bb.ao, %bb.an, %bb.am, %bb.ac, %bb.ce
  %i.dx = phi i64 [ %i.lo, %bb.bx ], [ %i.dk, %bb.ac ], [ %indvar, %bb.af ], [ %i.dj, %bb.am ], [ %i.fl, %bb.an ], [ %i.fk, %bb.ao ], [ %i.lu, %bb.bz ], [ %i.gv, %bb.aw ], [ %i.hc, %bb.ax ], [ 13, %bb.ce ], [ %i.mg, %bb.cd ], [ %i.ma, %bb.cb ], [ %i.gc, %bb.ar ], [ %i.d, %.lr.ph90 ], [ %i.hm, %bb.bf ], [ %i.js, %bb.bh ], [ %i.jy, %bb.bj ], [ %i.ke, %bb.bl ], [ %i.kk, %bb.bn ], [ %i.kq, %bb.bp ], [ %i.kw, %bb.br ], [ %i.lc, %bb.bt ], [ %i.li, %bb.bv ], [ %i.pb, %bb.cl ], [ %i.cv, %bb.z ], [ %.sroa.028.074, %bb.cg ], [ %.sroa.028.074, %bb.ch ], [ %i.pb, %bb.cj ]
  %i.dy = phi i64 [ 26, %bb.bx ], [ %.val120, %bb.ac ], [ %i.bv, %bb.af ], [ %.val120, %bb.am ], [ %.val128, %bb.an ], [ %.val128, %bb.ao ], [ 26, %bb.bz ], [ %.val124, %bb.aw ], [ %.val114, %bb.ax ], [ 13, %bb.ce ], [ 26, %bb.cd ], [ 26, %bb.cb ], [ %i.bv, %bb.ar ], [ 26, %.lr.ph90 ], [ 26, %bb.bf ], [ 26, %bb.bh ], [ 26, %bb.bj ], [ 26, %bb.bl ], [ 26, %bb.bn ], [ 26, %bb.bp ], [ 26, %bb.br ], [ 26, %bb.bt ], [ 26, %bb.bv ], [ 26, %bb.cl ], [ %3, %bb.z ], [ 13, %bb.cg ], [ %i.bv, %bb.ch ], [ %i.bv, %bb.cj ]
  %i.dz = phi ptr [ @2012, %bb.bx ], [ @1995, %bb.ac ], [ @1996, %bb.af ], [ @2001, %bb.am ], [ @2002, %bb.an ], [ @2003, %bb.ao ], [ @2012, %bb.bz ], [ @2009, %bb.aw ], [ @2010, %bb.ax ], [ @2013, %bb.ce ], [ @2012, %bb.cd ], [ @2012, %bb.cb ], [ @2004, %bb.ar ], [ @2012, %.lr.ph90 ], [ @2012, %bb.bf ], [ @2012, %bb.bh ], [ @2012, %bb.bj ], [ @2012, %bb.bl ], [ @2012, %bb.bn ], [ @2012, %bb.bp ], [ @2012, %bb.br ], [ @2012, %bb.bt ], [ @2012, %bb.bv ], [ @2018, %bb.cl ], [ @2014, %bb.z ], [ @2015, %bb.cg ], [ @2016, %bb.ch ], [ @2016, %bb.cj ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.dx, i64 noundef %i.dy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dz) #43
          to label %.cont306 unwind label %.loopexit.split-lp.loopexit.split-lp

.cont306:                                         ; preds = %.invoke305
  unreachable

._crit_edge81:                                    ; preds = %_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit108, %bb.ad
  store i64 0, ptr %i.e, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !noundef !27
  %i.ec = add i64 %i.eb, 1                        ; 2 uses
  store i64 %i.ec, ptr %i.ea, align 8
  %i.ed = icmp ugt i64 %i.ec, 1
  br i1 %i.ed, label %bb.ae, label %bb.aq

bb.ae:                                            ; preds = %._crit_edge81
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !noundef !27
  %i.eg = load i64, ptr %i.g, align 8, !noundef !27
  %i.eh = add i64 %i.eg, %i.ef
  store i64 %i.eh, ptr %i.ee, align 8
  br label %bb.aq

bb.af:                                            ; preds = %.lr.ph80, %_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit108
  %indvar = phi i64 [ 0, %.lr.ph80 ], [ %indvar.next, %_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit108 ] ; 12 uses
  %i.ei = add i64 %i.dw, %indvar
  %i.ej = mul i64 %i.ei, 1040
  %scevgep = getelementptr i8, ptr %2, i64 %i.ej
  %i.ek = icmp ult i64 %indvar, %i.bv
  br i1 %i.ek, label %bb.ag, label %.invoke305

bb.ag:                                            ; preds = %bb.af
  %i.el = add nuw i64 %i.ds, %indvar              ; 3 uses
  %i.em = icmp ult i64 %i.el, %3
  br i1 %i.em, label %bb.ah, label %.invoke

bb.ah:                                            ; preds = %bb.ag
  %i.en = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i, i64 %indvar
  %i.eo = getelementptr inbounds nuw [1040 x i8], ptr %2, i64 %i.el
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.eo, ptr noundef nonnull align 8 dereferenceable(1040) %i.en, i64 1040, i1 false)
  %i.ep = icmp samesign ult i64 %indvar, 26
  br i1 %i.ep, label %bb.ai, label %.invoke

.invoke:                                          ; preds = %bb.ci, %bb.ck, %bb.al, %bb.aj, %bb.ah, %bb.ag, %bb.av, %bb.au, %bb.at, %bb.as
  %i.eq = phi i64 [ %i.el, %bb.ag ], [ %i.gp, %bb.av ], [ %i.ge, %bb.as ], [ %indvar171, %bb.at ], [ %i.gc, %bb.au ], [ %i.ez, %bb.al ], [ %indvar, %bb.ah ], [ %i.ew, %bb.aj ], [ %i.mu, %bb.ci ], [ %i.pd, %bb.ck ]
  %i.er = phi i64 [ %3, %bb.ag ], [ %3, %bb.av ], [ %3, %bb.as ], [ 26, %bb.at ], [ 26, %bb.au ], [ %3, %bb.al ], [ 26, %bb.ah ], [ 26, %bb.aj ], [ %3, %bb.ck ], [ %3, %bb.ci ]
  %i.es = phi ptr [ @1997, %bb.ag ], [ @2008, %bb.av ], [ @2005, %bb.as ], [ @2006, %bb.at ], [ @2007, %bb.au ], [ @2000, %bb.al ], [ @1998, %bb.ah ], [ @1999, %bb.aj ], [ @2017, %bb.ck ], [ @2017, %bb.ci ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.eq, i64 noundef %i.er, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.es) #43
          to label %.cont unwind label %.thread

.cont:                                            ; preds = %.invoke
  unreachable

bb.ai:                                            ; preds = %bb.ah
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvar
  %i.eu = load float, ptr %i.et, align 4, !noundef !27 ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvar
  store float %i.eu, ptr %i.ev, align 4
  br i1 %i.du, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.ew = add i64 %indvar, %i.d                   ; 3 uses
  %i.ex = icmp ult i64 %i.ew, 26
  br i1 %i.ex, label %bb.ak, label %.invoke

bb.ak:                                            ; preds = %bb.aj
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.ew
  store float %i.eu, ptr %i.ey, align 4
  br label %bb.al

bb.al:                                            ; preds = %bb.ai, %bb.ak
  %i.ez = add nuw i64 %i.dw, %indvar              ; 3 uses
  %i.fa = icmp ult i64 %i.ez, %3
  br i1 %i.fa, label %_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit108, label %.invoke

_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit108: ; preds = %bb.al
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %scevgep, i8 0, i64 1024, i1 false)
  %i.fb = getelementptr inbounds nuw [1040 x i8], ptr %2, i64 %i.ez ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 1024
  store i64 0, ptr %i.fc, align 8, !alias.scope !39212
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 1032
  store float 3.402000e+38, ptr %i.fd, align 8, !alias.scope !39215
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %exitcond170.not = icmp eq i64 %indvar.next, %i.d
  br i1 %exitcond170.not, label %._crit_edge81, label %bb.af

bb.am:                                            ; preds = %bb.ab
  %i.fe = icmp ult i64 %i.dj, %.val120
  br i1 %i.fe, label %bb.an, label %.invoke305

bb.an:                                            ; preds = %bb.am
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val119 = load ptr, ptr %i.ff, align 8, !nonnull !27, !align !603, !noundef !27
  %i.fg = load i64, ptr %i.e, align 8, !noundef !27
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.val119, i64 %i.dj
  %i.fi = trunc i64 %i.fg to i32
  store i32 %i.fi, ptr %i.fh, align 4
  %.val127 = load ptr, ptr %1, align 8, !nonnull !27, !align !206, !noundef !27 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val128 = load i64, ptr %i.fj, align 8, !noundef !27 ; 4 uses
  %i.fk = load i64, ptr %i.k, align 8, !noundef !27 ; 4 uses
  %i.fl = add i64 %i.fk, -2                       ; 3 uses
  %i.fm = icmp ult i64 %i.fl, %.val128
  br i1 %i.fm, label %bb.ao, label %.invoke305

bb.ao:                                            ; preds = %bb.an
  %i.fn = icmp ult i64 %i.fk, %.val128
  br i1 %i.fn, label %bb.ap, label %.invoke305

bb.ap:                                            ; preds = %bb.ao
  %i.fo = getelementptr inbounds nuw i8, ptr %.val127, i64 %i.fl
  %i.fp = load i8, ptr %i.fo, align 1, !noundef !27
  %i.fq = getelementptr inbounds nuw i8, ptr %.val127, i64 %i.fk
  store i8 %i.fp, ptr %i.fq, align 1
end_hunk_19
begin_hunk_20_@_ZN6brotli3enc9metablock31ContextBlockSplitterFinishBlock17h66fa7f7da5e00ab8E:bb.a
  %wide.load = load <4 x i32>, ptr %i.pn, align 4, !alias.scope !39247, !noalias !39250
  %wide.load336 = load <4 x i32>, ptr %i.po, align 4, !alias.scope !39247, !noalias !39250
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.ph, i64 %index ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 16
  %wide.load337 = load <4 x i32>, ptr %i.pp, align 8, !alias.scope !39250
  %wide.load338 = load <4 x i32>, ptr %i.pq, align 8, !alias.scope !39250
  %i.pr = add <4 x i32> %wide.load337, %wide.load
  %i.ps = add <4 x i32> %wide.load338, %wide.load336
  store <4 x i32> %i.pr, ptr %i.pn, align 4, !alias.scope !39247, !noalias !39250
  store <4 x i32> %i.ps, ptr %i.po, align 4, !alias.scope !39247, !noalias !39250
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %index.next ; 3 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 16 ; 2 uses
  %wide.load.1 = load <4 x i32>, ptr %i.pt, align 4, !alias.scope !39247, !noalias !39250
  %wide.load336.1 = load <4 x i32>, ptr %i.pu, align 4, !alias.scope !39247, !noalias !39250
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.ph, i64 %index.next ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 16
  %wide.load337.1 = load <4 x i32>, ptr %i.pv, align 8, !alias.scope !39250
  %wide.load338.1 = load <4 x i32>, ptr %i.pw, align 8, !alias.scope !39250
  %i.px = add <4 x i32> %wide.load337.1, %wide.load.1
  %i.py = add <4 x i32> %wide.load338.1, %wide.load336.1
  store <4 x i32> %i.px, ptr %i.pt, align 4, !alias.scope !39247, !noalias !39250
  store <4 x i32> %i.py, ptr %i.pu, align 4, !alias.scope !39247, !noalias !39250
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.pz = icmp eq i64 %index.next.1, 256
  br i1 %i.pz, label %middle.block, label %vector.body, !llvm.loop !39252

scalar.ph:                                        ; preds = %.noexc112.1, %scalar.ph
  %.sroa.01.0.i72.1 = phi i64 [ %i.qs, %scalar.ph ], [ 0, %.noexc112.1 ] ; 6 uses
  %i.qa = or disjoint i64 %.sroa.01.0.i72.1, 1    ; 2 uses
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %.sroa.01.0.i72.1 ; 2 uses
  %i.qc = load i32, ptr %i.qb, align 4, !noundef !27
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.ph, i64 %.sroa.01.0.i72.1
  %i.qe = load i32, ptr %i.qd, align 8, !noundef !27
  %i.qf = add i32 %i.qe, %i.qc
  store i32 %i.qf, ptr %i.qb, align 4
  %i.qg = or disjoint i64 %.sroa.01.0.i72.1, 2    ; 2 uses
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %i.qa ; 2 uses
  %i.qi = load i32, ptr %i.qh, align 4, !noundef !27
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.ph, i64 %i.qa
  %i.qk = load i32, ptr %i.qj, align 4, !noundef !27
  %i.ql = add i32 %i.qk, %i.qi
  store i32 %i.ql, ptr %i.qh, align 4
  %i.qm = or disjoint i64 %.sroa.01.0.i72.1, 3    ; 2 uses
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %i.qg ; 2 uses
  %i.qo = load i32, ptr %i.qn, align 4, !noundef !27
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.ph, i64 %i.qg
  %i.qq = load i32, ptr %i.qp, align 8, !noundef !27
  %i.qr = add i32 %i.qq, %i.qo
  store i32 %i.qr, ptr %i.qn, align 4
  %i.qs = add nuw nsw i64 %.sroa.01.0.i72.1, 4    ; 2 uses
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %i.qm ; 2 uses
  %i.qu = load i32, ptr %i.qt, align 4, !noundef !27
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.ph, i64 %i.qm
  %i.qw = load i32, ptr %i.qv, align 4, !noundef !27
  %i.qx = add i32 %i.qw, %i.qu
  store i32 %i.qx, ptr %i.qt, align 4
  %exitcond.1.not.3 = icmp eq i64 %i.qs, 256
  br i1 %exitcond.1.not.3, label %middle.block, label %scalar.ph, !llvm.loop !39253

middle.block:                                     ; preds = %vector.body, %scalar.ph
  %i.qy = load i64, ptr %i.co, align 8, !noundef !27
  %i.qz = invoke { float, i64 } @_ZN6brotli3enc8bit_cost15shannon_entropy17hf421171ae783c7a0E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.pf, i64 noundef 256, i64 noundef %i.qy)
          to label %bb.cl unwind label %.loopexit.split-lp.thread ; 2 uses

bb.cl:                                            ; preds = %middle.block
  %i.ra = icmp ult i64 %i.pb, 26
  br i1 %i.ra, label %.loopexit, label %.invoke305

.loopexit:                                        ; preds = %bb.cl
  %i.rb = extractvalue { float, i64 } %i.qz, 0    ; 2 uses
  %i.rc = extractvalue { float, i64 } %i.qz, 1
  %i.rd = uitofp i64 %i.rc to float               ; 2 uses
  %i.re = fcmp olt float %i.rb, %i.rd
  %.sroa.024.0.1 = select i1 %i.re, float %i.rd, float %i.rb ; 2 uses
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.pb
  store float %.sroa.024.0.1, ptr %i.rf, align 4
  %i.rg = fsub float %.sroa.024.0.1, %.sroa.022.0
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.pb
  %i.ri = load float, ptr %i.rh, align 4, !noundef !27
  %i.rj = fsub float %i.rg, %i.ri
  %i.rk = fadd float %.sroa.7.0, %i.rj            ; 2 uses
  %i.rl = icmp ult i64 %.sroa.028.175, %i.d       ; 2 uses
  %i.rm = zext i1 %i.rl to i64
  %.sroa.028.1 = add nuw i64 %.sroa.028.175, %i.rm
  br i1 %i.rl, label %bb.z, label %._crit_edge

bb.cm:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i", %.loopexit.split-lp
  %lpad.phi9 = phi { ptr, i32 } [ %lpad.phi8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i" ], [ %lpad.phi, %.loopexit.split-lp ]
  resume { ptr, i32 } %lpad.phi9

.thread:                                          ; preds = %.invoke
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

.loopexit.split-lp.thread:                        ; preds = %middle.block353, %middle.block
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

.loopexit.split-lp.loopexit:                      ; preds = %bb.cf
  %lpad.loopexit12 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke307, %.invoke305
  %lpad.loopexit.split-lp13 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp13, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit12, %.loopexit.split-lp.loopexit ] ; 2 uses
  br i1 %.not10, label %bb.cm, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i": ; preds = %.loopexit.split-lp.thread, %.thread, %.loopexit.split-lp
  %lpad.phi8 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread ], [ %lpad.phi, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit.split-lp.thread ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.10.0.i.i.i) #38
  br label %bb.cm
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6brotli3enc9metablock34BrotliBuildMetaBlockGreedyInternal17h0916bdb0a16a6b62E(ptr noalias noundef nonnull readonly align 1 captures(none) %0, i64 noundef %1, i64 noundef range(i64 0, 4294967296) %2, i64 noundef range(i64 0, 4294967296) %3, i8 noundef %4, i8 noundef %5, i8 noundef range(i8 0, 4) %6, i64 noundef %7, ptr noalias noundef nonnull readonly align 4 captures(none) %8, i64 noundef %9, ptr noalias noundef nonnull readonly align 4 captures(none) %10, i64 noundef %11, i64 noundef %12, ptr noalias nofree noundef nonnull align 8 dereferenceable(264) %13) unnamed_addr #3 personality ptr @rust_eh_personality {
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
  %.not284.not = icmp ugt i64 %11, %i.d
  br i1 %.not284.not, label %.lr.ph.preheader548, label %bb.cl

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
  %i.h = load i32, ptr %i.g, align 4, !noundef !27
  %i.i = zext i32 %i.h to i64
  %i.j = add i64 %.sroa.08.0119, %i.i
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %10, i64 %i.f
  %i.l = load i32, ptr %i.k, align 4, !noundef !27
  %i.m = zext i32 %i.l to i64
  %i.n = add i64 %i.j, %i.m
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %10, i64 %i.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i32, ptr %i.p, align 4, !noundef !27
  %i.r = zext i32 %i.q to i64
  %i.s = add i64 %i.n, %i.r
  %i.t = add nuw i64 %i.f, 3                      ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %10, i64 %i.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load i32, ptr %i.v, align 4, !noundef !27
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
  %i.ac = load i32, ptr %i.ab, align 4, !noundef !27
  %i.ad = zext i32 %i.ac to i64
  %i.ae = add i64 %.sroa.08.0119.epil, %i.ad      ; 2 uses
  %i.af = add nuw i64 %i.aa, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %.lr.ph.epil, !llvm.loop !39254

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39260)
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.ak, i64 257) ; 5 uses
  %.val60.i = load ptr, ptr %13, align 8, !alias.scope !39255, !noalias !39262, !nonnull !27, !align !206, !noundef !27 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %.val61.i = load i64, ptr %i.al, align 8, !alias.scope !39255, !noalias !39262, !noundef !27 ; 4 uses
  %.not.i = icmp ugt i64 %.val61.i, %.sroa.08.0.lcssa
  br i1 %.not.i, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = icmp eq i64 %.val61.i, 0                ; 2 uses
  %spec.select.i = select i1 %i.am, i64 %i.ak, i64 %.val61.i
  br label %bb.d

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i", %.thread14.i, %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %.val44.i = load ptr, ptr %i.an, align 8, !alias.scope !39255, !noalias !39262, !nonnull !27, !align !603, !noundef !27 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %.val45.i = load i64, ptr %i.ao, align 8, !alias.scope !39255, !noalias !39262, !noundef !27 ; 4 uses
  %.not28.i = icmp ugt i64 %.val45.i, %.sroa.08.0.lcssa
  br i1 %.not28.i, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i", label %bb.f

bb.d:                                             ; preds = %bb.d, %bb.c
  %.sroa.06.1.i = phi i64 [ %spec.select.i, %bb.c ], [ %i.ap, %bb.d ] ; 6 uses
  %.not26.i = icmp ugt i64 %.sroa.06.1.i, %.sroa.08.0.lcssa
  %i.ap = shl nuw nsw i64 %.sroa.06.1.i, 1
  br i1 %.not26.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, label %bb.d

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.d
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !39264
  %i.aq = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %.sroa.06.1.i, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !39264 ; 4 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %.noexc.i, label %bb.e

.noexc.i:                                         ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %.sroa.06.1.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !39269
  unreachable

bb.e:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  br i1 %i.am, label %.thread14.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i"

.thread14.i:                                      ; preds = %bb.e
  store ptr %i.aq, ptr %13, align 8, !alias.scope !39255, !noalias !39262
  store i64 %.sroa.06.1.i, ptr %i.al, align 8, !alias.scope !39255, !noalias !39262
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i": ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aq, ptr nonnull readonly align 1 %.val60.i, i64 %.val61.i, i1 false), !alias.scope !39270, !noalias !39274
  store ptr %i.aq, ptr %13, align 8, !alias.scope !39255, !noalias !39262
  store i64 %.sroa.06.1.i, ptr %i.al, align 8, !alias.scope !39255, !noalias !39262
  tail call void @mi_free(ptr noundef nonnull align 1 %.val60.i) #38, !noalias !39269
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i"

bb.f:                                             ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i"
  %i.as = icmp eq i64 %.val45.i, 0                ; 2 uses
  %spec.select15.i = select i1 %i.as, i64 %i.ak, i64 %.val45.i
  br label %bb.h

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i71.i", %bb.k, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i"
  %i.at = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i64 %i.ak, ptr %i.at, align 8, !alias.scope !39255, !noalias !39262
  store i64 %.sroa.0.0.i.i, ptr %i.aj, align 8, !alias.scope !39260, !noalias !39276
  %i.au = mul nuw nsw i64 %.sroa.0.0.i.i, 1040    ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !39277
  %i.av = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.au, i64 noundef range(i64 1, 9) 8) #38, !noalias !39277 ; 7 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.g, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i"

bb.g:                                             ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i"
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.au, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !39285
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i"
  %.not16.i = icmp eq i64 %.sroa.08.0.lcssa, 0
  br i1 %.not16.i, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h88530c57ef19323aE.exit.i", label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i"
  %i.ax = add nsw i64 %.sroa.0.0.i.i, -1          ; 2 uses
  %i.ay = add nsw i64 %.sroa.0.0.i.i, -2
  %xtraiter562 = and i64 %i.ax, 7                 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 7
  br i1 %i.az, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter567 = and i64 %i.ax, -8
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %.sroa.0.08.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.preheader.new ], [ %i.bh, %.lr.ph.i.i.i.i ] ; 17 uses
  %niter568 = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter568.next.7, %.lr.ph.i.i.i.i ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i.i, i8 0, i64 1032, i1 false), !noalias !39269
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i, align 8, !noalias !39286
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 1040
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ba, i8 0, i64 1032, i1 false), !noalias !39269
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.1, align 8, !noalias !39286
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 2080
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bb, i8 0, i64 1032, i1 false), !noalias !39269
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.2, align 8, !noalias !39286
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 3120
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 4152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bc, i8 0, i64 1032, i1 false), !noalias !39269
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.3, align 8, !noalias !39286
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 4160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 5192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bd, i8 0, i64 1032, i1 false), !noalias !39269
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.4, align 8, !noalias !39286
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 5200
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 6232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.be, i8 0, i64 1032, i1 false), !noalias !39269
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.5, align 8, !noalias !39286
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 6240
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 7272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bf, i8 0, i64 1032, i1 false), !noalias !39269
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.6, align 8, !noalias !39286
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 7280
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 8312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bg, i8 0, i64 1032, i1 false), !noalias !39269
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.7, align 8, !noalias !39286
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 8320 ; 3 uses
  %niter568.next.7 = add nuw i64 %niter568, 8     ; 2 uses
  %niter568.ncmp.7 = icmp eq i64 %niter568.next.7, %unroll_iter567
  br i1 %niter568.ncmp.7, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h88530c57ef19323aE.exit.i.loopexit.unr-lcssa", label %.lr.ph.i.i.i.i

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h88530c57ef19323aE.exit.i.loopexit.unr-lcssa": ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod564.not = icmp eq i64 %xtraiter562, 0
  br i1 %lcmp.mod564.not, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h88530c57ef19323aE.exit.i", label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h88530c57ef19323aE.exit.i.loopexit.unr-lcssa", %.lr.ph.i.i.i.i.preheader
  %.sroa.0.08.i.i.i.i.epil.init = phi ptr [ %i.av, %.lr.ph.i.i.i.i.preheader ], [ %i.bh, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h88530c57ef19323aE.exit.i.loopexit.unr-lcssa" ]
  %lcmp.mod566 = icmp ne i64 %xtraiter562, 0
  tail call void @llvm.assume(i1 %lcmp.mod566)
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %.sroa.0.08.i.i.i.i.epil = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.epil ], [ %.sroa.0.08.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter563 = phi i64 [ %epil.iter563.next, %.lr.ph.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.epil, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i.i.epil, i8 0, i64 1032, i1 false), !noalias !39269
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.epil, align 8, !noalias !39286
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.epil, i64 1040 ; 2 uses
  %epil.iter563.next = add i64 %epil.iter563, 1   ; 2 uses
  %epil.iter563.cmp.not = icmp eq i64 %epil.iter563.next, %xtraiter562
  br i1 %epil.iter563.cmp.not, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h88530c57ef19323aE.exit.i", label %.lr.ph.i.i.i.i.epil, !llvm.loop !39289

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h88530c57ef19323aE.exit.i": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h88530c57ef19323aE.exit.i.loopexit.unr-lcssa", %.lr.ph.i.i.i.i.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i"
  %.sroa.0.0.lcssa15.i.i.i.i = phi ptr [ %i.av, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i" ], [ %i.bh, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h88530c57ef19323aE.exit.i.loopexit.unr-lcssa" ], [ %i.bi, %.lr.ph.i.i.i.i.epil ] ; 2 uses
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.0.lcssa15.i.i.i.i, i8 0, i64 1032, i1 false), !noalias !39269
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i, align 8, !noalias !39286
  %i.bj = load ptr, ptr %i.ai, align 8, !alias.scope !39258, !noalias !39290, !nonnull !27, !align !148, !noundef !27
  %i.bk = getelementptr inbounds nuw i8, ptr %13, i64 184 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !39258, !noalias !39290, !noundef !27
  store ptr %i.av, ptr %i.ai, align 8, !alias.scope !39258, !noalias !39290
  store i64 %.sroa.0.0.i.i, ptr %i.bk, align 8, !alias.scope !39258, !noalias !39290
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %_ZN6brotli3enc9metablock17InitBlockSplitter17hdf0774139b5bad6bE.exit, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i65.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i65.i": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h88530c57ef19323aE.exit.i"
  tail call void @mi_free(ptr noundef nonnull align 8 %i.bj) #38, !noalias !39269
  br label %_ZN6brotli3enc9metablock17InitBlockSplitter17hdf0774139b5bad6bE.exit

bb.h:                                             ; preds = %bb.h, %bb.f
  %.sroa.09.1.i = phi i64 [ %spec.select15.i, %bb.f ], [ %i.bn, %bb.h ] ; 6 uses
  %.not29.i = icmp ugt i64 %.sroa.09.1.i, %.sroa.08.0.lcssa
  %i.bn = shl nuw nsw i64 %.sroa.09.1.i, 1
  br i1 %.not29.i, label %bb.i, label %bb.h

bb.i:                                             ; preds = %bb.h
  %i.bo = shl i64 %.sroa.09.1.i, 2                ; 3 uses
  %i.bp = icmp ugt i64 %.sroa.09.1.i, 4611686018427387903
  %i.bq = icmp ugt i64 %i.bo, 9223372036854775804
  %or.cond.i.i.i.i.i = or i1 %i.bp, %i.bq
  br i1 %or.cond.i.i.i.i.i, label %bb.j, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i66.i, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i66.i: ; preds = %bb.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !39291
  %i.br = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.bo, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !39291 ; 3 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i66.i, %bb.i
  %.sroa.4.0.ph.i.i68.i = phi i64 [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i66.i ], [ 0, %bb.i ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i68.i, i64 %i.bo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !39296
  unreachable

bb.k:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i66.i
  %i.bt = icmp samesign ult i64 %.sroa.09.1.i, 2305843009213693952
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = shl nuw nsw i64 %.val45.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.br, ptr nonnull readonly align 4 %.val44.i, i64 %i.bu, i1 false), !alias.scope !39297, !noalias !39301
  store ptr %i.br, ptr %i.an, align 8, !alias.scope !39255, !noalias !39262
  store i64 %.sroa.09.1.i, ptr %i.ao, align 8, !alias.scope !39255, !noalias !39262
  br i1 %i.as, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i71.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i71.i": ; preds = %bb.k
  tail call void @mi_free(ptr noundef nonnull align 4 %.val44.i) #38, !noalias !39269
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i"

_ZN6brotli3enc9metablock17InitBlockSplitter17hdf0774139b5bad6bE.exit: ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h88530c57ef19323aE.exit.i", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i65.i"
  %i.bv = getelementptr inbounds nuw i8, ptr %i.av, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.av, i8 0, i64 1032, i1 false), !noalias !39269
  store float 3.402000e+38, ptr %i.bv, align 8, !alias.scope !39303, !noalias !39269
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.0, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.9.sroa.6, i8 0, i64 16, i1 false)
  br label %bb.aa

bb.l:                                             ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39311)
  %i.bw = icmp ult i64 %7, 14
  br i1 %i.bw, label %bb.n, label %bb.m, !prof !222

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1985, i64 noundef 60, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1986) #43, !noalias !39313
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bx = icmp eq i64 %7, 0
  br i1 %i.bx, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.rhs.trunc.i = trunc nuw nsw i64 %7 to i16
  %i.by = udiv i16 256, %.rhs.trunc.i
  %.zext.i = zext nneg i16 %i.by to i64           ; 2 uses
  %i.bz = add nuw nsw i64 %.zext.i, 1
  %.sroa.0.0.i.i50 = tail call noundef i64 @llvm.umin.i64(i64 %i.bz, i64 %i.ak)
  %.val61.i51 = load ptr, ptr %13, align 8, !alias.scope !39306, !noalias !39315, !nonnull !27, !align !206, !noundef !27 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %.val62.i = load i64, ptr %i.ca, align 8, !alias.scope !39306, !noalias !39315, !noundef !27 ; 4 uses
  %.not.i52 = icmp ugt i64 %.val62.i, %.sroa.08.0.lcssa
  br i1 %.not.i52, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i58", label %bb.q

bb.p:                                             ; preds = %bb.n
  tail call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17hd4705242238fd5f4E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1987) #43, !noalias !39313
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.cb = icmp eq i64 %.val62.i, 0                ; 2 uses
  %spec.select.i53 = select i1 %i.cb, i64 %i.ak, i64 %.val62.i
  br label %bb.r

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i58": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i57", %.thread.i, %bb.o
  %i.cc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %.val45.i59 = load ptr, ptr %i.cc, align 8, !alias.scope !39306, !noalias !39315, !nonnull !27, !align !603, !noundef !27 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  %.val46.i = load i64, ptr %i.cd, align 8, !alias.scope !39306, !noalias !39315, !noundef !27 ; 4 uses
  %.not28.i60 = icmp ugt i64 %.val46.i, %.sroa.08.0.lcssa
  br i1 %.not28.i60, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i64", label %bb.u

bb.r:                                             ; preds = %bb.r, %bb.q
  %.sroa.06.1.i54 = phi i64 [ %spec.select.i53, %bb.q ], [ %i.ce, %bb.r ] ; 6 uses
  %.not26.i55 = icmp ugt i64 %.sroa.06.1.i54, %.sroa.08.0.lcssa
  %i.ce = shl nuw nsw i64 %.sroa.06.1.i54, 1
  br i1 %.not26.i55, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i56, label %bb.r

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i56: ; preds = %bb.r
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !39316
  %i.cf = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %.sroa.06.1.i54, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !39316 ; 4 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i56
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %.sroa.06.1.i54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !39321
  unreachable

bb.t:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i56
  br i1 %i.cb, label %.thread.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i57"

.thread.i:                                        ; preds = %bb.t
  store ptr %i.cf, ptr %13, align 8, !alias.scope !39306, !noalias !39315
  store i64 %.sroa.06.1.i54, ptr %i.ca, align 8, !alias.scope !39306, !noalias !39315
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i58"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i57": ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cf, ptr nonnull readonly align 1 %.val61.i51, i64 %.val62.i, i1 false), !alias.scope !39322, !noalias !39326
  store ptr %i.cf, ptr %13, align 8, !alias.scope !39306, !noalias !39315
  store i64 %.sroa.06.1.i54, ptr %i.ca, align 8, !alias.scope !39306, !noalias !39315
  tail call void @mi_free(ptr noundef nonnull align 1 %.val61.i51) #38, !noalias !39313
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i58"

bb.u:                                             ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i58"
  %i.ch = icmp eq i64 %.val46.i, 0                ; 2 uses
  %spec.select7.i = select i1 %i.ch, i64 %i.ak, i64 %.val46.i
  br label %bb.w

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i64": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i70.i", %.thread14.i75, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i58"
  %i.ci = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i64 %i.ak, ptr %i.ci, align 8, !alias.scope !39306, !noalias !39315
  %i.cj = mul nuw nsw i64 %.sroa.0.0.i.i50, %7    ; 5 uses
  store i64 %i.cj, ptr %i.aj, align 8, !alias.scope !39311, !noalias !39328
  %i.ck = mul nuw nsw i64 %i.cj, 1040             ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !39329
  %i.cl = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.ck, i64 noundef range(i64 1, 9) 8) #38, !noalias !39329 ; 7 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.v, label %.lr.ph.i.i.i.i65.preheader

.lr.ph.i.i.i.i65.preheader:                       ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i64"
  %i.cn = add nsw i64 %i.cj, -1                   ; 2 uses
  %i.co = add nsw i64 %i.cj, -2
  %xtraiter552 = and i64 %i.cn, 7                 ; 3 uses
  %i.cp = icmp ult i64 %i.co, 7
  br i1 %i.cp, label %.lr.ph.i.i.i.i65.epil.preheader, label %.lr.ph.i.i.i.i65.preheader.new

.lr.ph.i.i.i.i65.preheader.new:                   ; preds = %.lr.ph.i.i.i.i65.preheader
  %unroll_iter558 = and i64 %i.cn, -8
  br label %.lr.ph.i.i.i.i65

bb.v:                                             ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i64"
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.ck, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !39337
  unreachable

._crit_edge.thread.i.i.i.i.unr-lcssa:             ; preds = %.lr.ph.i.i.i.i65
  %lcmp.mod554.not = icmp eq i64 %xtraiter552, 0
  br i1 %lcmp.mod554.not, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i.i65.epil.preheader

.lr.ph.i.i.i.i65.epil.preheader:                  ; preds = %._crit_edge.thread.i.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i65.preheader
  %.sroa.0.08.i.i.i.i66.epil.init = phi ptr [ %i.cl, %.lr.ph.i.i.i.i65.preheader ], [ %i.da, %._crit_edge.thread.i.i.i.i.unr-lcssa ]
  %lcmp.mod557 = icmp ne i64 %xtraiter552, 0
  tail call void @llvm.assume(i1 %lcmp.mod557)
  br label %.lr.ph.i.i.i.i65.epil

.lr.ph.i.i.i.i65.epil:                            ; preds = %.lr.ph.i.i.i.i65.epil, %.lr.ph.i.i.i.i65.epil.preheader
  %.sroa.0.08.i.i.i.i66.epil = phi ptr [ %i.cq, %.lr.ph.i.i.i.i65.epil ], [ %.sroa.0.08.i.i.i.i66.epil.init, %.lr.ph.i.i.i.i65.epil.preheader ] ; 4 uses
  %epil.iter553 = phi i64 [ %epil.iter553.next, %.lr.ph.i.i.i.i65.epil ], [ 0, %.lr.ph.i.i.i.i65.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66.epil, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i.i66.epil, i8 0, i64 1032, i1 false), !noalias !39313
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.epil, align 8, !noalias !39338
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66.epil, i64 1040 ; 2 uses
  %epil.iter553.next = add i64 %epil.iter553, 1   ; 2 uses
  %epil.iter553.cmp.not = icmp eq i64 %epil.iter553.next, %xtraiter552
  br i1 %epil.iter553.cmp.not, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i.i65.epil, !llvm.loop !39341

._crit_edge.thread.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i65.epil, %._crit_edge.thread.i.i.i.i.unr-lcssa
  %.sroa.0.08.i.i.i.i66.lcssa = phi ptr [ %i.cz, %._crit_edge.thread.i.i.i.i.unr-lcssa ], [ %.sroa.0.08.i.i.i.i66.epil, %.lr.ph.i.i.i.i65.epil ]
  %.lcssa547 = phi ptr [ %i.da, %._crit_edge.thread.i.i.i.i.unr-lcssa ], [ %i.cq, %.lr.ph.i.i.i.i65.epil ]
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i70 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66.lcssa, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.lcssa547, i8 0, i64 1032, i1 false), !noalias !39313
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i70, align 8, !noalias !39338
  %i.cr = getelementptr inbounds nuw i8, ptr %13, i64 184 ; 2 uses
  %.val64.i = load i64, ptr %i.cr, align 8, !alias.scope !39309, !noalias !39342, !noundef !27
  %i.cs = icmp eq i64 %.val64.i, 0
  br i1 %i.cs, label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"

.lr.ph.i.i.i.i65:                                 ; preds = %.lr.ph.i.i.i.i65, %.lr.ph.i.i.i.i65.preheader.new
  %.sroa.0.08.i.i.i.i66 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i65.preheader.new ], [ %i.da, %.lr.ph.i.i.i.i65 ] ; 17 uses
  %niter559 = phi i64 [ 0, %.lr.ph.i.i.i.i65.preheader.new ], [ %niter559.next.7, %.lr.ph.i.i.i.i65 ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i.i66, i8 0, i64 1032, i1 false), !noalias !39313
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68, align 8, !noalias !39338
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 1040
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ct, i8 0, i64 1032, i1 false), !noalias !39313
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.1, align 8, !noalias !39338
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 2080
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cu, i8 0, i64 1032, i1 false), !noalias !39313
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.2, align 8, !noalias !39338
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 3120
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 4152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cv, i8 0, i64 1032, i1 false), !noalias !39313
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.3, align 8, !noalias !39338
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 4160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 5192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cw, i8 0, i64 1032, i1 false), !noalias !39313
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.4, align 8, !noalias !39338
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 5200
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 6232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cx, i8 0, i64 1032, i1 false), !noalias !39313
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.5, align 8, !noalias !39338
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 6240
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 7272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cy, i8 0, i64 1032, i1 false), !noalias !39313
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.6, align 8, !noalias !39338
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 7280 ; 2 uses
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 8312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cz, i8 0, i64 1032, i1 false), !noalias !39313
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.7, align 8, !noalias !39338
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 8320 ; 3 uses
  %niter559.next.7 = add nuw i64 %niter559, 8     ; 2 uses
  %niter559.ncmp.7 = icmp eq i64 %niter559.next.7, %unroll_iter558
  br i1 %niter559.ncmp.7, label %._crit_edge.thread.i.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i65

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i": ; preds = %._crit_edge.thread.i.i.i.i
  %.val63.i = load ptr, ptr %i.ai, align 8, !alias.scope !39309, !noalias !39342, !nonnull !27, !noundef !27
  tail call void @mi_free(ptr noundef nonnull %.val63.i) #38, !noalias !39313
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit.i"

bb.w:                                             ; preds = %bb.w, %bb.u
  %.sroa.09.1.i61 = phi i64 [ %spec.select7.i, %bb.u ], [ %i.db, %bb.w ] ; 7 uses
  %.not29.i62 = icmp ugt i64 %.sroa.09.1.i61, %.sroa.08.0.lcssa
  %i.db = shl nuw nsw i64 %.sroa.09.1.i61, 1
  br i1 %.not29.i62, label %bb.x, label %bb.w

bb.x:                                             ; preds = %bb.w
  %i.dc = shl i64 %.sroa.09.1.i61, 2              ; 3 uses
  %i.dd = icmp ugt i64 %.sroa.09.1.i61, 4611686018427387903
  %i.de = icmp ugt i64 %i.dc, 9223372036854775804
  %or.cond.i.i.i.i.i63 = or i1 %i.dd, %i.de
  br i1 %or.cond.i.i.i.i.i63, label %bb.y, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i67.i, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i67.i: ; preds = %bb.x
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !39343
  %i.df = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.dc, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !39343 ; 4 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i67.i, %bb.x
  %.sroa.4.0.ph.i.i69.i = phi i64 [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i67.i ], [ 0, %bb.x ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i69.i, i64 %i.dc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !39348
  unreachable

bb.z:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i67.i
  %i.dh = icmp samesign ult i64 %.sroa.09.1.i61, 2305843009213693952
  tail call void @llvm.assume(i1 %i.dh)
  br i1 %i.ch, label %.thread14.i75, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i70.i"

.thread14.i75:                                    ; preds = %bb.z
  store ptr %i.df, ptr %i.cc, align 8, !alias.scope !39306, !noalias !39315
  store i64 %.sroa.09.1.i61, ptr %i.cd, align 8, !alias.scope !39306, !noalias !39315
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i64"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i70.i": ; preds = %bb.z
  %i.di = shl nuw nsw i64 %.val46.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.df, ptr nonnull readonly align 4 %.val45.i59, i64 %i.di, i1 false), !alias.scope !39349, !noalias !39353
  store ptr %i.df, ptr %i.cc, align 8, !alias.scope !39306, !noalias !39315
  store i64 %.sroa.09.1.i61, ptr %i.cd, align 8, !alias.scope !39306, !noalias !39315
  tail call void @mi_free(ptr noundef nonnull align 4 %.val45.i59) #38, !noalias !39313
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i64"

"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i", %._crit_edge.thread.i.i.i.i
  store ptr %i.cl, ptr %i.ai, align 8, !alias.scope !39309, !noalias !39342
  store i64 %i.cj, ptr %i.cr, align 8, !alias.scope !39309, !noalias !39342
  %.idx.i.i = mul nuw nsw i64 %7, 1040            ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.idx.i.i
  %i.dk = add nsw i64 %.idx.i.i, -1040            ; 2 uses
  %i.dl = udiv i64 %i.dk, 1040
  %i.dm = add nuw nsw i64 %i.dl, 1
  %xtraiter560 = and i64 %i.dm, 7                 ; 2 uses
  %lcmp.mod561.not = icmp eq i64 %xtraiter560, 0
  br i1 %lcmp.mod561.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit.i", %.lr.ph.i.i.prol
  %.sroa.02.05.i.i.prol = phi ptr [ %i.dn, %.lr.ph.i.i.prol ], [ %i.cl, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit.i" ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit.i" ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.prol, i64 1040 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.prol, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %.sroa.02.05.i.i.prol, i8 0, i64 1032, i1 false), !alias.scope !39355, !noalias !39313
  store float 3.402000e+38, ptr %i.do, align 8, !alias.scope !39358, !noalias !39313
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter560
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !39361

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit.i"
  %.sroa.02.05.i.i.unr = phi ptr [ %i.cl, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit.i" ], [ %i.dn, %.lr.ph.i.i.prol ]
  %i.dp = icmp ult i64 %i.dk, 7280
  br i1 %i.dp, label %_ZN6brotli3enc9metablock24InitContextBlockSplitter17h2093562fdaa35bf0E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.02.05.i.i = phi ptr [ %i.ee, %.lr.ph.i.i ], [ %.sroa.02.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 17 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 1040
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %.sroa.02.05.i.i, i8 0, i64 1032, i1 false), !alias.scope !39355, !noalias !39313
  store float 3.402000e+38, ptr %i.dr, align 8, !alias.scope !39358, !noalias !39313
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 2080
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.dq, i8 0, i64 1032, i1 false), !alias.scope !39355, !noalias !39313
  store float 3.402000e+38, ptr %i.dt, align 8, !alias.scope !39358, !noalias !39313
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 3120
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.ds, i8 0, i64 1032, i1 false), !alias.scope !39355, !noalias !39313
  store float 3.402000e+38, ptr %i.dv, align 8, !alias.scope !39358, !noalias !39313
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 4160
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 4152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.du, i8 0, i64 1032, i1 false), !alias.scope !39355, !noalias !39313
  store float 3.402000e+38, ptr %i.dx, align 8, !alias.scope !39358, !noalias !39313
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 5200
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 5192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.dw, i8 0, i64 1032, i1 false), !alias.scope !39355, !noalias !39313
  store float 3.402000e+38, ptr %i.dz, align 8, !alias.scope !39358, !noalias !39313
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 6240
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 6232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.dy, i8 0, i64 1032, i1 false), !alias.scope !39355, !noalias !39313
  store float 3.402000e+38, ptr %i.eb, align 8, !alias.scope !39358, !noalias !39313
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 7280
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 7272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.ea, i8 0, i64 1032, i1 false), !alias.scope !39355, !noalias !39313
  store float 3.402000e+38, ptr %i.ed, align 8, !alias.scope !39358, !noalias !39313
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 8320 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 8312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.ec, i8 0, i64 1032, i1 false), !alias.scope !39355, !noalias !39313
  store float 3.402000e+38, ptr %i.ef, align 8, !alias.scope !39358, !noalias !39313
  %i.eg = icmp eq ptr %i.ee, %i.dj
  br i1 %i.eg, label %_ZN6brotli3enc9metablock24InitContextBlockSplitter17h2093562fdaa35bf0E.exit, label %.lr.ph.i.i

_ZN6brotli3enc9metablock24InitContextBlockSplitter17h2093562fdaa35bf0E.exit: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.0, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.9.sroa.6, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.sroa.12.sroa.0, i8 0, i64 104, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN6brotli3enc9metablock24InitContextBlockSplitter17h2093562fdaa35bf0E.exit, %_ZN6brotli3enc9metablock17InitBlockSplitter17hdf0774139b5bad6bE.exit
  %.sroa.5.sroa.9.sroa.5.0 = phi i64 [ 0, %_ZN6brotli3enc9metablock17InitBlockSplitter17hdf0774139b5bad6bE.exit ], [ 512, %_ZN6brotli3enc9metablock24InitContextBlockSplitter17h2093562fdaa35bf0E.exit ]
  %.sroa.5.sroa.10.0 = phi float [ 4.000000e+02, %_ZN6brotli3enc9metablock17InitBlockSplitter17hdf0774139b5bad6bE.exit ], [ 0.000000e+00, %_ZN6brotli3enc9metablock24InitContextBlockSplitter17h2093562fdaa35bf0E.exit ]
  %.sroa.5.sroa.7.0 = phi i64 [ 0, %_ZN6brotli3enc9metablock17InitBlockSplitter17hdf0774139b5bad6bE.exit ], [ %.zext.i, %_ZN6brotli3enc9metablock24InitContextBlockSplitter17h2093562fdaa35bf0E.exit ]
  %.sroa.5.sroa.6.0 = phi i64 [ 512, %_ZN6brotli3enc9metablock17InitBlockSplitter17hdf0774139b5bad6bE.exit ], [ %7, %_ZN6brotli3enc9metablock24InitContextBlockSplitter17h2093562fdaa35bf0E.exit ]
  %.sroa.013.0 = phi i64 [ 0, %_ZN6brotli3enc9metablock17InitBlockSplitter17hdf0774139b5bad6bE.exit ], [ 1, %_ZN6brotli3enc9metablock24InitContextBlockSplitter17h2093562fdaa35bf0E.exit ] ; 2 uses
  store i64 %.sroa.013.0, ptr %i.c, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.0, i64 16, i1 false)
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 256, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %.sroa.5.sroa.6.0, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %.sroa.5.sroa.7.0, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store i64 512, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  store i64 0, ptr %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.9.sroa.5.0..sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 3 uses
  store i64 %.sroa.5.sroa.9.sroa.5.0, ptr %.sroa.5.sroa.9.sroa.5.0..sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.9.sroa.6.0..sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.9.sroa.6.0..sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.9.sroa.6, i64 16, i1 false)
  %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store float %.sroa.5.sroa.10.0, ptr %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.11.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  store i32 0, ptr %.sroa.5.sroa.11.0..sroa.5.0..sroa_idx.sroa_idx, align 4
  %.sroa.5.sroa.12.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.sroa.12.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.sroa.12.sroa.0, i64 104, i1 false)
  %.sroa.5.sroa.12.sroa.4.0..sroa.5.sroa.12.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  store float 4.000000e+02, ptr %.sroa.5.sroa.12.sroa.4.0..sroa.5.sroa.12.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.9.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.12.sroa.0)
  %i.eh = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %13, i64 192 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %13, i64 248 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39367)
  %i.ek = lshr i64 %12, 10                        ; 6 uses
  %i.el = add nuw nsw i64 %i.ek, 1                ; 4 uses
  %.sroa.0.0.i.i76 = tail call noundef i64 @llvm.umin.i64(i64 %i.el, i64 257) ; 5 uses
  %.val60.i77 = load ptr, ptr %i.eh, align 8, !alias.scope !39362, !noalias !39369, !nonnull !27, !align !206, !noundef !27 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 3 uses
  %.val61.i78 = load i64, ptr %i.em, align 8, !alias.scope !39362, !noalias !39369, !noundef !27 ; 4 uses
  %.not.i79 = icmp ugt i64 %.val61.i78, %i.ek
  br i1 %.not.i79, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i85", label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.en = icmp eq i64 %.val61.i78, 0              ; 2 uses
  %spec.select.i80 = select i1 %i.en, i64 %i.el, i64 %.val61.i78
  br label %bb.ac

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i85": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i84", %.thread14.i112, %bb.aa
  %i.eo = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 2 uses
  %.val44.i86 = load ptr, ptr %i.eo, align 8, !alias.scope !39362, !noalias !39369, !nonnull !27, !align !603, !noundef !27 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %13, i64 72 ; 2 uses
  %.val45.i87 = load i64, ptr %i.ep, align 8, !alias.scope !39362, !noalias !39369, !noundef !27 ; 4 uses
  %.not28.i88 = icmp ugt i64 %.val45.i87, %i.ek
  br i1 %.not28.i88, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i95", label %bb.ae

bb.ac:                                            ; preds = %bb.ac, %bb.ab
  %.sroa.06.1.i81 = phi i64 [ %spec.select.i80, %bb.ab ], [ %i.eq, %bb.ac ] ; 6 uses
  %.not26.i82 = icmp ugt i64 %.sroa.06.1.i81, %i.ek
  %i.eq = shl nuw nsw i64 %.sroa.06.1.i81, 1
  br i1 %.not26.i82, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i83, label %bb.ac

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i83: ; preds = %bb.ac
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !39371
  %i.er = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %.sroa.06.1.i81, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !39371 ; 4 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %.noexc.i113, label %bb.ad

.noexc.i113:                                      ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i83
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %.sroa.06.1.i81, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !39376
  unreachable

bb.ad:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i83
  br i1 %i.en, label %.thread14.i112, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i84"

.thread14.i112:                                   ; preds = %bb.ad
  store ptr %i.er, ptr %i.eh, align 8, !alias.scope !39362, !noalias !39369
  store i64 %.sroa.06.1.i81, ptr %i.em, align 8, !alias.scope !39362, !noalias !39369
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i85"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i84": ; preds = %bb.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.er, ptr nonnull readonly align 1 %.val60.i77, i64 %.val61.i78, i1 false), !alias.scope !39377, !noalias !39381
  store ptr %i.er, ptr %i.eh, align 8, !alias.scope !39362, !noalias !39369
  store i64 %.sroa.06.1.i81, ptr %i.em, align 8, !alias.scope !39362, !noalias !39369
  tail call void @mi_free(ptr noundef nonnull align 1 %.val60.i77) #38, !noalias !39376
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i85"

bb.ae:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i85"
  %i.et = icmp eq i64 %.val45.i87, 0              ; 2 uses
  %spec.select15.i89 = select i1 %i.et, i64 %i.el, i64 %.val45.i87
  br label %bb.ag

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i95": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i71.i94", %bb.aj, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i85"
  %i.eu = getelementptr inbounds nuw i8, ptr %13, i64 88
  store i64 %i.el, ptr %i.eu, align 8, !alias.scope !39362, !noalias !39369
  store i64 %.sroa.0.0.i.i76, ptr %i.ej, align 8, !alias.scope !39367, !noalias !39383
  %i.ev = mul nuw nsw i64 %.sroa.0.0.i.i76, 2832  ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !39384
  %i.ew = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.ev, i64 noundef range(i64 1, 9) 8) #38, !noalias !39384 ; 7 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %bb.af, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i"

bb.af:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i95"
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.ev, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !39392
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i95"
  %.not16.i96 = icmp eq i64 %i.ek, 0
  br i1 %.not16.i96, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h06f38fa9e0614b4aE.exit.i", label %.lr.ph.i.i.i.i97.preheader

.lr.ph.i.i.i.i97.preheader:                       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i"
  %i.ey = add nsw i64 %.sroa.0.0.i.i76, -1        ; 2 uses
  %i.ez = add nsw i64 %.sroa.0.0.i.i76, -2
  %xtraiter569 = and i64 %i.ey, 7                 ; 3 uses
  %i.fa = icmp ult i64 %i.ez, 7
  br i1 %i.fa, label %.lr.ph.i.i.i.i97.epil.preheader, label %.lr.ph.i.i.i.i97.preheader.new

.lr.ph.i.i.i.i97.preheader.new:                   ; preds = %.lr.ph.i.i.i.i97.preheader
  %unroll_iter574 = and i64 %i.ey, -8
  br label %.lr.ph.i.i.i.i97

.lr.ph.i.i.i.i97:                                 ; preds = %.lr.ph.i.i.i.i97, %.lr.ph.i.i.i.i97.preheader.new
  %.sroa.0.08.i.i.i.i98 = phi ptr [ %i.ew, %.lr.ph.i.i.i.i97.preheader.new ], [ %i.fi, %.lr.ph.i.i.i.i97 ] ; 17 uses
  %niter575 = phi i64 [ 0, %.lr.ph.i.i.i.i97.preheader.new ], [ %niter575.next.7, %.lr.ph.i.i.i.i97 ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.08.i.i.i.i98, i8 0, i64 2824, i1 false), !noalias !39376
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100, align 8, !noalias !39393
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 2832
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 5656
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.fb, i8 0, i64 2824, i1 false), !noalias !39376
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.1, align 8, !noalias !39393
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 5664
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 8488
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.fc, i8 0, i64 2824, i1 false), !noalias !39376
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.2, align 8, !noalias !39393
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 8496
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 11320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.fd, i8 0, i64 2824, i1 false), !noalias !39376
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.3, align 8, !noalias !39393
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 11328
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 14152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.fe, i8 0, i64 2824, i1 false), !noalias !39376
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.4, align 8, !noalias !39393
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 14160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 16984
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.ff, i8 0, i64 2824, i1 false), !noalias !39376
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.5, align 8, !noalias !39393
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 16992
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 19816
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.fg, i8 0, i64 2824, i1 false), !noalias !39376
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.6, align 8, !noalias !39393
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 19824
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 22648
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.fh, i8 0, i64 2824, i1 false), !noalias !39376
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.7, align 8, !noalias !39393
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 22656 ; 3 uses
  %niter575.next.7 = add nuw i64 %niter575, 8     ; 2 uses
  %niter575.ncmp.7 = icmp eq i64 %niter575.next.7, %unroll_iter574
  br i1 %niter575.ncmp.7, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h06f38fa9e0614b4aE.exit.i.loopexit.unr-lcssa", label %.lr.ph.i.i.i.i97

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h06f38fa9e0614b4aE.exit.i.loopexit.unr-lcssa": ; preds = %.lr.ph.i.i.i.i97
  %lcmp.mod571.not = icmp eq i64 %xtraiter569, 0
  br i1 %lcmp.mod571.not, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h06f38fa9e0614b4aE.exit.i", label %.lr.ph.i.i.i.i97.epil.preheader

.lr.ph.i.i.i.i97.epil.preheader:                  ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h06f38fa9e0614b4aE.exit.i.loopexit.unr-lcssa", %.lr.ph.i.i.i.i97.preheader
  %.sroa.0.08.i.i.i.i98.epil.init = phi ptr [ %i.ew, %.lr.ph.i.i.i.i97.preheader ], [ %i.fi, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h06f38fa9e0614b4aE.exit.i.loopexit.unr-lcssa" ]
  %lcmp.mod573 = icmp ne i64 %xtraiter569, 0
  tail call void @llvm.assume(i1 %lcmp.mod573)
  br label %.lr.ph.i.i.i.i97.epil

.lr.ph.i.i.i.i97.epil:                            ; preds = %.lr.ph.i.i.i.i97.epil, %.lr.ph.i.i.i.i97.epil.preheader
  %.sroa.0.08.i.i.i.i98.epil = phi ptr [ %i.fj, %.lr.ph.i.i.i.i97.epil ], [ %.sroa.0.08.i.i.i.i98.epil.init, %.lr.ph.i.i.i.i97.epil.preheader ] ; 3 uses
  %epil.iter570 = phi i64 [ %epil.iter570.next, %.lr.ph.i.i.i.i97.epil ], [ 0, %.lr.ph.i.i.i.i97.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98.epil, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.08.i.i.i.i98.epil, i8 0, i64 2824, i1 false), !noalias !39376
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.epil, align 8, !noalias !39393
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98.epil, i64 2832 ; 2 uses
  %epil.iter570.next = add i64 %epil.iter570, 1   ; 2 uses
  %epil.iter570.cmp.not = icmp eq i64 %epil.iter570.next, %xtraiter569
  br i1 %epil.iter570.cmp.not, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h06f38fa9e0614b4aE.exit.i", label %.lr.ph.i.i.i.i97.epil, !llvm.loop !39396

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h06f38fa9e0614b4aE.exit.i": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h06f38fa9e0614b4aE.exit.i.loopexit.unr-lcssa", %.lr.ph.i.i.i.i97.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i"
  %.sroa.0.0.lcssa15.i.i.i.i102 = phi ptr [ %i.ew, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i" ], [ %i.fi, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h06f38fa9e0614b4aE.exit.i.loopexit.unr-lcssa" ], [ %i.fj, %.lr.ph.i.i.i.i97.epil ] ; 2 uses
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i103 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i.i102, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.0.lcssa15.i.i.i.i102, i8 0, i64 2824, i1 false), !noalias !39376
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i103, align 8, !noalias !39393
  %i.fk = load ptr, ptr %i.ei, align 8, !alias.scope !39365, !noalias !39397, !nonnull !27, !align !148, !noundef !27
  %i.fl = getelementptr inbounds nuw i8, ptr %13, i64 200 ; 4 uses
  %i.fm = load i64, ptr %i.fl, align 8, !alias.scope !39365, !noalias !39397, !noundef !27
  store ptr %i.ew, ptr %i.ei, align 8, !alias.scope !39365, !noalias !39397
  store i64 %.sroa.0.0.i.i76, ptr %i.fl, align 8, !alias.scope !39365, !noalias !39397
  %i.fn = icmp eq i64 %i.fm, 0
  br i1 %i.fn, label %_ZN6brotli3enc9metablock17InitBlockSplitter17h48305f01e33bfc2fE.exit, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i65.i104"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i65.i104": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h06f38fa9e0614b4aE.exit.i"
  tail call void @mi_free(ptr noundef nonnull align 8 %i.fk) #38, !noalias !39376
  br label %_ZN6brotli3enc9metablock17InitBlockSplitter17h48305f01e33bfc2fE.exit

bb.ag:                                            ; preds = %bb.ag, %bb.ae
  %.sroa.09.1.i90 = phi i64 [ %spec.select15.i89, %bb.ae ], [ %i.fo, %bb.ag ] ; 6 uses
  %.not29.i91 = icmp ugt i64 %.sroa.09.1.i90, %i.ek
  %i.fo = shl nuw nsw i64 %.sroa.09.1.i90, 1
  br i1 %.not29.i91, label %bb.ah, label %bb.ag

bb.ah:                                            ; preds = %bb.ag
  %i.fp = shl i64 %.sroa.09.1.i90, 2              ; 3 uses
  %i.fq = icmp ugt i64 %.sroa.09.1.i90, 4611686018427387903
  %i.fr = icmp ugt i64 %i.fp, 9223372036854775804
  %or.cond.i.i.i.i.i92 = or i1 %i.fq, %i.fr
  br i1 %or.cond.i.i.i.i.i92, label %bb.ai, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i66.i93, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i66.i93: ; preds = %bb.ah
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !39398
  %i.fs = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.fp, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !39398 ; 3 uses
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i66.i93, %bb.ah
  %.sroa.4.0.ph.i.i68.i111 = phi i64 [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i66.i93 ], [ 0, %bb.ah ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i68.i111, i64 %i.fp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !39403
  unreachable

bb.aj:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i66.i93
  %i.fu = icmp samesign ult i64 %.sroa.09.1.i90, 2305843009213693952
  tail call void @llvm.assume(i1 %i.fu)
  %i.fv = shl nuw nsw i64 %.val45.i87, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fs, ptr nonnull readonly align 4 %.val44.i86, i64 %i.fv, i1 false), !alias.scope !39404, !noalias !39408
  store ptr %i.fs, ptr %i.eo, align 8, !alias.scope !39362, !noalias !39369
  store i64 %.sroa.09.1.i90, ptr %i.ep, align 8, !alias.scope !39362, !noalias !39369
  br i1 %i.et, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i95", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i71.i94"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i71.i94": ; preds = %bb.aj
  tail call void @mi_free(ptr noundef nonnull align 4 %.val44.i86) #38, !noalias !39376
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i95"

_ZN6brotli3enc9metablock17InitBlockSplitter17h48305f01e33bfc2fE.exit: ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h06f38fa9e0614b4aE.exit.i", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i65.i104"
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ew, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %i.ew, i8 0, i64 2824, i1 false), !noalias !39376
  store float 3.402000e+38, ptr %i.fw, align 8, !alias.scope !39410, !noalias !39376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.0..sroa_idx, i8 0, i64 32, i1 false)
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 704, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1024, ptr %.sroa.5.0..sroa_idx17, align 8
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 0, ptr %.sroa.618.0..sroa_idx, align 8
  %.sroa.719.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 1024, ptr %.sroa.719.0..sroa_idx, align 8
  %.sroa.920.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store float 5.000000e+02, ptr %.sroa.920.0..sroa_idx, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %13, i64 96 ; 5 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %13, i64 208 ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %13, i64 256 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39418)
  %i.ga = lshr i64 %12, 9                         ; 6 uses
  %i.gb = add nuw nsw i64 %i.ga, 1                ; 4 uses
  %.sroa.0.0.i.i114 = tail call noundef i64 @llvm.umin.i64(i64 %i.gb, i64 257) ; 5 uses
  %.val60.i115 = load ptr, ptr %i.fx, align 8, !alias.scope !39413, !noalias !39420, !nonnull !27, !align !206, !noundef !27 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %13, i64 104 ; 3 uses
  %.val61.i116 = load i64, ptr %i.gc, align 8, !alias.scope !39413, !noalias !39420, !noundef !27 ; 4 uses
  %.not.i117 = icmp ugt i64 %.val61.i116, %i.ga
  br i1 %.not.i117, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i123", label %bb.ak

bb.ak:                                            ; preds = %_ZN6brotli3enc9metablock17InitBlockSplitter17h48305f01e33bfc2fE.exit
  %i.gd = icmp eq i64 %.val61.i116, 0             ; 2 uses
  %spec.select.i118 = select i1 %i.gd, i64 %i.gb, i64 %.val61.i116
  br label %bb.al

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i123": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i122", %.thread14.i148, %_ZN6brotli3enc9metablock17InitBlockSplitter17h48305f01e33bfc2fE.exit
  %i.ge = getelementptr inbounds nuw i8, ptr %13, i64 112 ; 2 uses
  %.val44.i124 = load ptr, ptr %i.ge, align 8, !alias.scope !39413, !noalias !39420, !nonnull !27, !align !603, !noundef !27 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %13, i64 120 ; 2 uses
  %.val45.i125 = load i64, ptr %i.gf, align 8, !alias.scope !39413, !noalias !39420, !noundef !27 ; 4 uses
  %.not28.i126 = icmp ugt i64 %.val45.i125, %i.ga
  br i1 %.not28.i126, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i133", label %bb.an

bb.al:                                            ; preds = %bb.al, %bb.ak
  %.sroa.06.1.i119 = phi i64 [ %spec.select.i118, %bb.ak ], [ %i.gg, %bb.al ] ; 6 uses
  %.not26.i120 = icmp ugt i64 %.sroa.06.1.i119, %i.ga
  %i.gg = shl nuw nsw i64 %.sroa.06.1.i119, 1
  br i1 %.not26.i120, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i121, label %bb.al

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i121: ; preds = %bb.al
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !39422
  %i.gh = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %.sroa.06.1.i119, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !39422 ; 4 uses
  %i.gi = icmp eq ptr %i.gh, null
  br i1 %i.gi, label %.noexc.i149, label %bb.am

.noexc.i149:                                      ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i121
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %.sroa.06.1.i119, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !39427
  unreachable

bb.am:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i121
  br i1 %i.gd, label %.thread14.i148, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i122"

.thread14.i148:                                   ; preds = %bb.am
  store ptr %i.gh, ptr %i.fx, align 8, !alias.scope !39413, !noalias !39420
  store i64 %.sroa.06.1.i119, ptr %i.gc, align 8, !alias.scope !39413, !noalias !39420
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i123"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i122": ; preds = %bb.am
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gh, ptr nonnull readonly align 1 %.val60.i115, i64 %.val61.i116, i1 false), !alias.scope !39428, !noalias !39432
  store ptr %i.gh, ptr %i.fx, align 8, !alias.scope !39413, !noalias !39420
  store i64 %.sroa.06.1.i119, ptr %i.gc, align 8, !alias.scope !39413, !noalias !39420
  tail call void @mi_free(ptr noundef nonnull align 1 %.val60.i115) #38, !noalias !39427
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i123"

bb.an:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i123"
  %i.gj = icmp eq i64 %.val45.i125, 0             ; 2 uses
  %spec.select15.i127 = select i1 %i.gj, i64 %i.gb, i64 %.val45.i125
  br label %bb.ap

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i133": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i71.i132", %bb.as, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i123"
  %i.gk = getelementptr inbounds nuw i8, ptr %13, i64 136
  store i64 %i.gb, ptr %i.gk, align 8, !alias.scope !39413, !noalias !39420
  store i64 %.sroa.0.0.i.i114, ptr %i.fz, align 8, !alias.scope !39418, !noalias !39434
  %i.gl = mul nuw nsw i64 %.sroa.0.0.i.i114, 2192 ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !39435
  %i.gm = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.gl, i64 noundef range(i64 1, 9) 8) #38, !noalias !39435 ; 7 uses
  %i.gn = icmp eq ptr %i.gm, null
  br i1 %i.gn, label %bb.ao, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i"

bb.ao:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i133"
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.gl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !39443
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i133"
  %.not16.i134 = icmp eq i64 %i.ga, 0
  br i1 %.not16.i134, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h313698f4f8d71414E.exit.i", label %.lr.ph.i.i.i.i135.preheader

.lr.ph.i.i.i.i135.preheader:                      ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i"
  %i.go = add nsw i64 %.sroa.0.0.i.i114, -1       ; 2 uses
  %i.gp = add nsw i64 %.sroa.0.0.i.i114, -2
  %xtraiter576 = and i64 %i.go, 7                 ; 3 uses
  %i.gq = icmp ult i64 %i.gp, 7
  br i1 %i.gq, label %.lr.ph.i.i.i.i135.epil.preheader, label %.lr.ph.i.i.i.i135.preheader.new

.lr.ph.i.i.i.i135.preheader.new:                  ; preds = %.lr.ph.i.i.i.i135.preheader
  %unroll_iter581 = and i64 %i.go, -8
  br label %.lr.ph.i.i.i.i135

.lr.ph.i.i.i.i135:                                ; preds = %.lr.ph.i.i.i.i135, %.lr.ph.i.i.i.i135.preheader.new
  %.sroa.0.08.i.i.i.i136 = phi ptr [ %i.gm, %.lr.ph.i.i.i.i135.preheader.new ], [ %i.gy, %.lr.ph.i.i.i.i135 ] ; 17 uses
  %niter582 = phi i64 [ 0, %.lr.ph.i.i.i.i135.preheader.new ], [ %niter582.next.7, %.lr.ph.i.i.i.i135 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i.i136, i8 0, i64 2184, i1 false), !noalias !39427
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i136, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i, align 8, !noalias !39444
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i136, i64 2192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.gr, i8 0, i64 2184, i1 false), !noalias !39427
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i136, i64 4376
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.1, align 8, !noalias !39444
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i136, i64 4384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.gs, i8 0, i64 2184, i1 false), !noalias !39427
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i136, i64 6568
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.2, align 8, !noalias !39444
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i136, i64 6576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.gt, i8 0, i64 2184, i1 false), !noalias !39427
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i136, i64 8760
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.3, align 8, !noalias !39444
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i136, i64 8768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.gu, i8 0, i64 2184, i1 false), !noalias !39427
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i136, i64 10952
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.4, align 8, !noalias !39444
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i136, i64 10960
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.gv, i8 0, i64 2184, i1 false), !noalias !39427
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i136, i64 13144
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.5, align 8, !noalias !39444
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i136, i64 13152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.gw, i8 0, i64 2184, i1 false), !noalias !39427
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i136, i64 15336
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.6, align 8, !noalias !39444
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i136, i64 15344
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.gx, i8 0, i64 2184, i1 false), !noalias !39427
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i136, i64 17528
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.7, align 8, !noalias !39444
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i136, i64 17536 ; 3 uses
  %niter582.next.7 = add nuw i64 %niter582, 8     ; 2 uses
  %niter582.ncmp.7 = icmp eq i64 %niter582.next.7, %unroll_iter581
  br i1 %niter582.ncmp.7, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h313698f4f8d71414E.exit.i.loopexit.unr-lcssa", label %.lr.ph.i.i.i.i135

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h313698f4f8d71414E.exit.i.loopexit.unr-lcssa": ; preds = %.lr.ph.i.i.i.i135
  %lcmp.mod578.not = icmp eq i64 %xtraiter576, 0
  br i1 %lcmp.mod578.not, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h313698f4f8d71414E.exit.i", label %.lr.ph.i.i.i.i135.epil.preheader

.lr.ph.i.i.i.i135.epil.preheader:                 ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h313698f4f8d71414E.exit.i.loopexit.unr-lcssa", %.lr.ph.i.i.i.i135.preheader
  %.sroa.0.08.i.i.i.i136.epil.init = phi ptr [ %i.gm, %.lr.ph.i.i.i.i135.preheader ], [ %i.gy, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h313698f4f8d71414E.exit.i.loopexit.unr-lcssa" ]
  %lcmp.mod580 = icmp ne i64 %xtraiter576, 0
  tail call void @llvm.assume(i1 %lcmp.mod580)
  br label %.lr.ph.i.i.i.i135.epil

.lr.ph.i.i.i.i135.epil:                           ; preds = %.lr.ph.i.i.i.i135.epil, %.lr.ph.i.i.i.i135.epil.preheader
  %.sroa.0.08.i.i.i.i136.epil = phi ptr [ %i.gz, %.lr.ph.i.i.i.i135.epil ], [ %.sroa.0.08.i.i.i.i136.epil.init, %.lr.ph.i.i.i.i135.epil.preheader ] ; 3 uses
  %epil.iter577 = phi i64 [ %epil.iter577.next, %.lr.ph.i.i.i.i135.epil ], [ 0, %.lr.ph.i.i.i.i135.epil.preheader ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i.i136.epil, i8 0, i64 2184, i1 false), !noalias !39427
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i136.epil, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.epil, align 8, !noalias !39444
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i136.epil, i64 2192 ; 2 uses
  %epil.iter577.next = add i64 %epil.iter577, 1   ; 2 uses
  %epil.iter577.cmp.not = icmp eq i64 %epil.iter577.next, %xtraiter576
  br i1 %epil.iter577.cmp.not, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h313698f4f8d71414E.exit.i", label %.lr.ph.i.i.i.i135.epil, !llvm.loop !39447

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h313698f4f8d71414E.exit.i": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h313698f4f8d71414E.exit.i.loopexit.unr-lcssa", %.lr.ph.i.i.i.i135.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i"
  %.sroa.0.0.lcssa15.i.i.i.i139 = phi ptr [ %i.gm, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i" ], [ %i.gy, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h313698f4f8d71414E.exit.i.loopexit.unr-lcssa" ], [ %i.gz, %.lr.ph.i.i.i.i135.epil ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.0.lcssa15.i.i.i.i139, i8 0, i64 2184, i1 false), !noalias !39427
  %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i.i139, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i, align 8, !noalias !39444
  %i.ha = load ptr, ptr %i.fy, align 8, !alias.scope !39416, !noalias !39448, !nonnull !27, !align !148, !noundef !27
  %i.hb = getelementptr inbounds nuw i8, ptr %13, i64 216 ; 4 uses
  %i.hc = load i64, ptr %i.hb, align 8, !alias.scope !39416, !noalias !39448, !noundef !27
  store ptr %i.gm, ptr %i.fy, align 8, !alias.scope !39416, !noalias !39448
  store i64 %.sroa.0.0.i.i114, ptr %i.hb, align 8, !alias.scope !39416, !noalias !39448
  %i.hd = icmp eq i64 %i.hc, 0
  br i1 %i.hd, label %_ZN6brotli3enc9metablock17InitBlockSplitter17h12ef218aa38a5bc2E.exit, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i65.i140"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i65.i140": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h313698f4f8d71414E.exit.i"
  tail call void @mi_free(ptr noundef nonnull align 8 %i.ha) #38, !noalias !39427
  br label %_ZN6brotli3enc9metablock17InitBlockSplitter17h12ef218aa38a5bc2E.exit

bb.ap:                                            ; preds = %bb.ap, %bb.an
  %.sroa.09.1.i128 = phi i64 [ %spec.select15.i127, %bb.an ], [ %i.he, %bb.ap ] ; 6 uses
  %.not29.i129 = icmp ugt i64 %.sroa.09.1.i128, %i.ga
  %i.he = shl nuw nsw i64 %.sroa.09.1.i128, 1
  br i1 %.not29.i129, label %bb.aq, label %bb.ap

bb.aq:                                            ; preds = %bb.ap
  %i.hf = shl i64 %.sroa.09.1.i128, 2             ; 3 uses
  %i.hg = icmp ugt i64 %.sroa.09.1.i128, 4611686018427387903
  %i.hh = icmp ugt i64 %i.hf, 9223372036854775804
  %or.cond.i.i.i.i.i130 = or i1 %i.hg, %i.hh
  br i1 %or.cond.i.i.i.i.i130, label %bb.ar, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i66.i131, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i66.i131: ; preds = %bb.aq
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !39449
  %i.hi = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.hf, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !39449 ; 3 uses
  %i.hj = icmp eq ptr %i.hi, null
  br i1 %i.hj, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i66.i131, %bb.aq
  %.sroa.4.0.ph.i.i68.i147 = phi i64 [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i66.i131 ], [ 0, %bb.aq ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i68.i147, i64 %i.hf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !39454
  unreachable

bb.as:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i66.i131
  %i.hk = icmp samesign ult i64 %.sroa.09.1.i128, 2305843009213693952
  tail call void @llvm.assume(i1 %i.hk)
  %i.hl = shl nuw nsw i64 %.val45.i125, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.hi, ptr nonnull readonly align 4 %.val44.i124, i64 %i.hl, i1 false), !alias.scope !39455, !noalias !39459
  store ptr %i.hi, ptr %i.ge, align 8, !alias.scope !39413, !noalias !39420
  store i64 %.sroa.09.1.i128, ptr %i.gf, align 8, !alias.scope !39413, !noalias !39420
  br i1 %i.gj, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i133", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i71.i132"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i71.i132": ; preds = %bb.as
  tail call void @mi_free(ptr noundef nonnull align 4 %.val44.i124) #38, !noalias !39427
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i133"

_ZN6brotli3enc9metablock17InitBlockSplitter17h12ef218aa38a5bc2E.exit: ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h313698f4f8d71414E.exit.i", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i65.i140"
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gm, i64 2184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %i.gm, i8 0, i64 2184, i1 false), !noalias !39427
  store float 3.402000e+38, ptr %i.hm, align 8, !alias.scope !39461, !noalias !39427
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %.sroa.827.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.827.0..sroa_idx, i8 0, i64 32, i1 false)
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 64, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 512, ptr %.sroa.524.0..sroa_idx, align 8
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %.sroa.625.0..sroa_idx, align 8
  %.sroa.726.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 512, ptr %.sroa.726.0..sroa_idx, align 8
  %.sroa.928.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store float 1.000000e+02, ptr %.sroa.928.0..sroa_idx, align 8
  br i1 %.not, label %._crit_edge135, label %.lr.ph134

.lr.ph134:                                        ; preds = %_ZN6brotli3enc9metablock17InitBlockSplitter17h12ef218aa38a5bc2E.exit
  %i.hn = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ho = getelementptr inbounds nuw i8, ptr %13, i64 176 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %13, i64 184 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %13, i64 240 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.hs = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph134, %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc83d80dae1a0c44bE.exit
  %.sroa.021.1133 = phi i64 [ 1, %.lr.ph134 ], [ %.sroa.021.1, %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc83d80dae1a0c44bE.exit ] ; 3 uses
  %.sroa.0.0132 = phi i64 [ %2, %.lr.ph134 ], [ %i.kr, %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc83d80dae1a0c44bE.exit ] ; 2 uses
  %.sroa.05.0131 = phi i8 [ %4, %.lr.ph134 ], [ %.sroa.05.2, %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc83d80dae1a0c44bE.exit ] ; 2 uses
  %.sroa.07.0130 = phi i8 [ %5, %.lr.ph134 ], [ %.sroa.07.2, %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc83d80dae1a0c44bE.exit ] ; 2 uses
  %.sroa.021.0129 = phi i64 [ 0, %.lr.ph134 ], [ %.sroa.021.1133, %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc83d80dae1a0c44bE.exit ] ; 3 uses
  %i.ht = icmp ult i64 %.sroa.021.0129, %11
  br i1 %i.ht, label %bb.bf, label %bb.bk

._crit_edge135.loopexit:                          ; preds = %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc83d80dae1a0c44bE.exit
  %.pre = load i64, ptr %i.c, align 8, !range !223
  br label %._crit_edge135

._crit_edge135:                                   ; preds = %._crit_edge135.loopexit, %_ZN6brotli3enc9metablock17InitBlockSplitter17h12ef218aa38a5bc2E.exit
  %i.hu = phi i64 [ %.pre, %._crit_edge135.loopexit ], [ %.sroa.013.0, %_ZN6brotli3enc9metablock17InitBlockSplitter17h12ef218aa38a5bc2E.exit ]
  %i.hv = trunc nuw i64 %i.hu to i1
  %i.hw = getelementptr inbounds nuw i8, ptr %13, i64 176
  %.val40 = load ptr, ptr %i.hw, align 8, !nonnull !27, !align !148, !noundef !27 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %13, i64 184
  %.val41 = load i64, ptr %i.hx, align 8, !noundef !27 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %13, i64 240 ; 2 uses
  br i1 %i.hv, label %bb.au, label %bb.av

bb.au:                                            ; preds = %._crit_edge135
  call fastcc void @_ZN6brotli3enc9metablock31ContextBlockSplitterFinishBlock17h66fa7f7da5e00ab8E(ptr noalias noundef align 8 dereferenceable(200) %.sroa.5.0..sroa_idx, ptr noalias noundef align 8 dereferenceable(48) %13, ptr noalias noundef nonnull align 8 %.val40, i64 noundef %.val41, ptr noalias noundef align 8 dereferenceable(8) %i.hy, i1 noundef zeroext true)
  br label %bb.aw

bb.av:                                            ; preds = %._crit_edge135
  call fastcc void @_ZN6brotli3enc9metablock24BlockSplitterFinishBlock17h877de8a4e472dec8E(ptr noalias noundef align 8 dereferenceable(88) %.sroa.5.0..sroa_idx, ptr noalias noundef align 8 dereferenceable(48) %13, ptr noalias noundef nonnull align 8 %.val40, i64 noundef %.val41, ptr noalias noundef align 8 dereferenceable(8) %i.hy, i1 noundef zeroext true)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.val44 = load ptr, ptr %i.ei, align 8, !nonnull !27, !align !148, !noundef !27
  %.val45 = load i64, ptr %i.fl, align 8, !noundef !27
  call fastcc void @_ZN6brotli3enc9metablock24BlockSplitterFinishBlock17hfda3d414699dce3dE(ptr noalias noundef align 8 dereferenceable(88) %i.b, ptr noalias noundef align 8 dereferenceable(48) %i.eh, ptr noalias noundef nonnull align 8 %.val44, i64 noundef %.val45, ptr noalias noundef align 8 dereferenceable(8) %i.ej, i1 noundef zeroext true)
  %.val48 = load ptr, ptr %i.fy, align 8, !nonnull !27, !align !148, !noundef !27
  %.val49 = load i64, ptr %i.hb, align 8, !noundef !27
  call fastcc void @_ZN6brotli3enc9metablock24BlockSplitterFinishBlock17h04cabe4174c5f56fE(ptr noalias noundef align 8 dereferenceable(88) %i.a, ptr noalias noundef align 8 dereferenceable(48) %i.fx, ptr noalias noundef nonnull align 8 %.val48, i64 noundef %.val49, ptr noalias noundef align 8 dereferenceable(8) %i.fz, i1 noundef zeroext true)
  %i.hz = icmp ugt i64 %7, 1
  br i1 %i.hz, label %bb.ax, label %_ZN6brotli3enc9metablock17MapStaticContexts17h4e4a6d16511c8e67E.exit

_ZN6brotli3enc9metablock17MapStaticContexts17h4e4a6d16511c8e67E.exit: ; preds = %.loopexit.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i153", %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.experimental.noalias.scope.decl(metadata !39464)
  call void @llvm.experimental.noalias.scope.decl(metadata !39467)
  %i.ia = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.ib = load i64, ptr %i.ia, align 8, !alias.scope !39467, !noalias !39464, !noundef !27 ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %13, i64 224
  %i.id = shl i64 %i.ib, 6                        ; 7 uses
  store i64 %i.id, ptr %i.ic, align 8, !alias.scope !39467, !noalias !39464
  %i.ie = shl i64 %i.ib, 8                        ; 4 uses
  %i.if = icmp ugt i64 %i.id, 4611686018427387903
  %i.ig = icmp ugt i64 %i.ie, 9223372036854775804
  %or.cond.i.i.i.i.i150 = or i1 %i.if, %i.ig
  br i1 %or.cond.i.i.i.i.i150, label %bb.ba, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i151, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i151: ; preds = %bb.ax
  %i.ih = icmp eq i64 %i.ie, 0
  br i1 %i.ih, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit.i", label %bb.ay

bb.ay:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i151
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !39469
  %i.ii = call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.ie, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !39469 ; 2 uses
  %i.ij = icmp eq ptr %i.ii, null
  br i1 %i.ij, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ik = ptrtoint ptr %i.ii to i64
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit.i"

bb.ba:                                            ; preds = %bb.ay, %bb.ax
  %.sroa.4.0.ph.i.i.i = phi i64 [ 4, %bb.ay ], [ 0, %bb.ax ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.ie, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !39474
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit.i": ; preds = %bb.az, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i151
  %.sroa.10.0.i.i.i = phi i64 [ %i.ik, %bb.az ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i151 ]
  %i.il = inttoptr i64 %.sroa.10.0.i.i.i to ptr   ; 5 uses
  %i.im = icmp samesign ult i64 %i.id, 2305843009213693952
  call void @llvm.assume(i1 %i.im)
  %i.in = getelementptr inbounds nuw i8, ptr %13, i64 144 ; 2 uses
  %i.io = load ptr, ptr %i.in, align 8, !alias.scope !39467, !noalias !39464, !nonnull !27, !align !603, !noundef !27
  %i.ip = getelementptr inbounds nuw i8, ptr %13, i64 152 ; 2 uses
  %i.iq = load i64, ptr %i.ip, align 8, !alias.scope !39467, !noalias !39464, !noundef !27
  store ptr %i.il, ptr %i.in, align 8, !alias.scope !39467, !noalias !39464
  store i64 %i.id, ptr %i.ip, align 8, !alias.scope !39467, !noalias !39464
  %i.ir = icmp eq i64 %i.iq, 0
  br i1 %i.ir, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i153", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i152"

end_hunk_20
begin_hunk_21_@"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h6b17b2dbb7a285edE":bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br label %bb.cu

bb.ff:                                            ; preds = %bb.fd
  %i.ol = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h18449629bd6e4a0cE.exit109": ; preds = %bb.fd
  %i.om = ptrtoint ptr %i.oi to i64
  call void @mi_free(ptr noundef nonnull %.sroa.0.0.i102) #38, !noalias !41829
  br label %.thread415

bb.fg:                                            ; preds = %bb.cu
  store i64 %.sroa.0.1, ptr %0, align 8
  %.sroa.36.0..sroa_idx693 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.36.sroa.34.sroa.0.2.in.in, ptr %.sroa.36.0..sroa_idx693, align 8
  %.sroa.50.0..sroa_idx711 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.ic, ptr %.sroa.50.0..sroa_idx711, align 8
  %.sroa.56.0..sroa_idx740 = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.56.0..sroa_idx740, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.56, i64 40, i1 false)
  br label %bb.fh

bb.fh:                                            ; preds = %bb.bb, %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56)
  br label %bb.ah

bb.fi:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store i64 10, ptr %i.ap, align 8
  %i.on = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h5d3cc6f53410e852E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  %i.oo = ptrtoint ptr %i.on to i64
  br label %bb.bb

bb.fj:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17h8b84a0acf5a939faE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.ax, ptr noalias noundef align 8 dereferenceable(80) %1, i1 noundef zeroext true)
  %i.op = load i64, ptr %i.ax, align 8, !range !2688, !noundef !27 ; 2 uses
  %i.oq = icmp eq i64 %i.op, 3
  %i.or = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  br i1 %i.oq, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  %i.os = load ptr, ptr %i.or, align 8, !nonnull !27, !align !148, !noundef !27
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.os, ptr %i.ot, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  br label %bb.ai

bb.fl:                                            ; preds = %bb.fj
  %.sroa.2180.0.copyload = load i64, ptr %i.or, align 8 ; 3 uses
  switch i64 %i.op, label %default.unreachable1006 [
    i64 0, label %bb.fm
    i64 1, label %bb.fp
    i64 2, label %bb.fo
  ]

bb.fm:                                            ; preds = %bb.fl
  %i.ou = bitcast i64 %.sroa.2180.0.copyload to double
  %i.ov = tail call double @llvm.fabs.f64(double %i.ou)
  %i.ow = fcmp ueq double %i.ov, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !41832
  br i1 %i.ow, label %"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417h5ea71d253797ac99E.exit.i115", label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  store i64 -9223372036854775808, ptr %i.n, align 8, !noalias !41832
  call fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.n), !noalias !41838
  br label %"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417h5ea71d253797ac99E.exit.i115"

"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417h5ea71d253797ac99E.exit.i115": ; preds = %bb.fn, %bb.fm
  %.sroa.07.013.i.i116 = phi i64 [ 2, %bb.fn ], [ 3, %bb.fm ]
  %.sroa.0.0.i.i117 = phi i64 [ -9223372036854775806, %bb.fn ], [ -9223372036854775808, %bb.fm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !41832
  br label %bb.fp

bb.fo:                                            ; preds = %bb.fl
  %.lobit.i.i.i110 = lshr i64 %.sroa.2180.0.copyload, 63
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fl, %bb.fo, %"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417h5ea71d253797ac99E.exit.i115"
  %.sink666 = phi i64 [ -9223372036854775806, %bb.fo ], [ %.sroa.0.0.i.i117, %"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417h5ea71d253797ac99E.exit.i115" ], [ -9223372036854775806, %bb.fl ]
  %.lobit.i.i.i110.sink = phi i64 [ %.lobit.i.i.i110, %bb.fo ], [ %.sroa.07.013.i.i116, %"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417h5ea71d253797ac99E.exit.i115" ], [ 0, %bb.fl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  store i64 %.sink666, ptr %0, align 8
  %.sroa.36.0..sroa_idx695 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lobit.i.i.i110.sink, ptr %.sroa.36.0..sroa_idx695, align 8
  %.sroa.50.0..sroa_idx713 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.2180.0.copyload, ptr %.sroa.50.0..sroa_idx713, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56)
  br label %bb.ah
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @"_ZN99_$LT$actix_service..boxed..ServiceWrapper$LT$S$GT$$u20$as$u20$actix_service..Service$LT$Req$GT$$GT$10poll_ready17h6d8b2ecab53b587fE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nonnull readonly align 1 captures(none) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #25 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @"_ZN99_$LT$actix_service..boxed..ServiceWrapper$LT$S$GT$$u20$as$u20$actix_service..Service$LT$Req$GT$$GT$4call17he1f645be4e2ef759E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41842)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41845)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !alias.scope !41848
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 0, ptr %i.b, align 8, !alias.scope !41851, !noalias !41852
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !41853
  %i.c = tail call noundef ptr @mi_malloc_aligned(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #38, !noalias !41853 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17he117ec5aef266d33E.exit", !prof !304

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 40) #43
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$actix_web..service..ServiceRequest$GT$17h370c39c80f7b0027E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %"_ZN4core3ptr1373drop_in_place$LT$$LT$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$u20$as$u20$actix_service." unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

"_ZN4core3ptr1373drop_in_place$LT$$LT$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$u20$as$u20$actix_service.": ; preds = %bb.c
  resume { ptr, i32 } %i.e

"_ZN5alloc5boxed12Box$LT$T$GT$3new17he117ec5aef266d33E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr @2207, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @"_ZN99_$LT$rustls..conn..ConnectionCommon$LT$T$GT$$u20$as$u20$rustls..conn..connection..PlaintextSink$GT$14write_vectored17h6fb2776d83beabedE"(ptr noalias noundef align 8 dereferenceable(1168) %0, ptr noalias noundef nonnull readonly align 8 captures(none) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  switch i64 %2, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i [
    i64 0, label %bb.b
    i64 1, label %bb.d
  ]

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.a
  %.idx = shl nuw nsw i64 %2, 4                   ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !41856
  %i.e = tail call noundef ptr @mi_malloc_aligned(i64 noundef %.idx, i64 noundef range(i64 1, 9) 8) #38, !noalias !41856 ; 7 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.noexc, label %.preheader.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.preheader:                 ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %xtraiter = and i64 %2, 1
  %i.g = icmp eq i64 %2, 1
  br i1 %i.g, label %.preheader.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.preheader.new:             ; preds = %.preheader.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %2, -2
  br label %.preheader.i.i.i.i.i.i

.noexc:                                           ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %.idx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1055) #43
  unreachable

.preheader.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.preheader.new
  %i.h = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader.new ], [ %i.r, %.preheader.i.i.i.i.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i.i.i.i ]
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.h ; 2 uses
  %.val21.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !noalias !41869, !noundef !27
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val22.i.i.i.i.i.i.i.i.i = load i64, ptr %i.j, align 8, !noalias !41869, !noundef !27
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.h ; 2 uses
  store ptr %.val21.i.i.i.i.i.i.i.i.i, ptr %i.k, align 8, !noalias !41880
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %.val22.i.i.i.i.i.i.i.i.i, ptr %i.l, align 8, !noalias !41889
  %i.m = or disjoint i64 %i.h, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.m ; 2 uses
  %.val21.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.n, align 8, !noalias !41869, !noundef !27
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %.val22.i.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.o, align 8, !noalias !41869, !noundef !27
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.m ; 2 uses
  store ptr %.val21.i.i.i.i.i.i.i.i.i.1, ptr %i.p, align 8, !noalias !41880
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %.val22.i.i.i.i.i.i.i.i.i.1, ptr %i.q, align 8, !noalias !41889
  %i.r = add nuw i64 %i.h, 2                      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4core4iter6traits8iterator8Iterator7collect17h22966f73704411eeE.exit.unr-lcssa, label %.preheader.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr60drop_in_place$LT$alloc..vec..Vec$LT$$RF$$u5b$u8$u5d$$GT$$GT$17h227c095949049c54E.exit", %bb.b
  %.sroa.4.0 = phi ptr [ %i.an, %"_ZN4core3ptr60drop_in_place$LT$alloc..vec..Vec$LT$$RF$$u5b$u8$u5d$$GT$$GT$17h227c095949049c54E.exit" ], [ null, %bb.b ]
  %i.s = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %.sroa.4.0, 1
  ret { i64, ptr } %i.s

bb.d:                                             ; preds = %bb.a
  %i.t = load ptr, ptr %1, align 8, !noundef !27
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noundef !27
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.t, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.v, ptr %i.x, align 8
  store ptr null, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.z = call noundef i64 @_ZN6rustls12common_state11CommonState16buffer_plaintext17h3cf22a65d5c16bf3E(ptr noalias noundef nonnull align 8 dereferenceable(840) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !41890)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 831 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !range !188, !alias.scope !41890, !noundef !27
  %i.ac = trunc nuw i8 %i.ab to i1
  store i8 0, ptr %i.aa, align 1, !alias.scope !41890
  br i1 %i.ac, label %bb.e, label %"_ZN6rustls4conn26ConnectionCore$LT$Data$GT$26maybe_refresh_traffic_keys17h70329d46b38a5955E.exit"

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !41890
  call void @llvm.experimental.noalias.scope.decl(metadata !41893)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !range !11149, !alias.scope !41896, !noalias !41897, !noundef !27
  %.not.i.i = icmp eq i8 %i.ae, 22
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call fastcc void @"_ZN59_$LT$rustls..error..Error$u20$as$u20$core..clone..Clone$GT$5clone17hb497f4a19cbda983E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ad)
  br label %"_ZN6rustls4conn26ConnectionCore$LT$Data$GT$20refresh_traffic_keys17hb557aa587bab722fE.exit.i"

bb.g:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !41896, !noalias !41897, !nonnull !27, !align !206, !noundef !27
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !41896, !noalias !41897, !nonnull !27, !align !148, !noundef !27
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8, !invariant.load !27, !noalias !41899, !nonnull !27
  call void %i.ak(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.b, ptr noundef nonnull align 1 %i.ag, ptr noalias noundef nonnull align 8 dereferenceable(1080) %0), !inline_history !41900
  br label %"_ZN6rustls4conn26ConnectionCore$LT$Data$GT$20refresh_traffic_keys17hb557aa587bab722fE.exit.i"

"_ZN6rustls4conn26ConnectionCore$LT$Data$GT$20refresh_traffic_keys17hb557aa587bab722fE.exit.i": ; preds = %bb.f, %bb.g
  %i.al = load i8, ptr %i.b, align 8, !range !11149, !alias.scope !41901, !noalias !41890, !noundef !27
  %i.am = icmp eq i8 %i.al, 22
  br i1 %i.am, label %"_ZN4core3ptr80drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$rustls..error..Error$GT$$GT$17h572e6c0a14e08e63E.exit.i", label %bb.h

bb.h:                                             ; preds = %"_ZN6rustls4conn26ConnectionCore$LT$Data$GT$20refresh_traffic_keys17hb557aa587bab722fE.exit.i"
  call fastcc void @"_ZN4core3ptr41drop_in_place$LT$rustls..error..Error$GT$17h8bd0144596c8ddd2E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
  br label %"_ZN4core3ptr80drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$rustls..error..Error$GT$$GT$17h572e6c0a14e08e63E.exit.i"

"_ZN4core3ptr80drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$rustls..error..Error$GT$$GT$17h572e6c0a14e08e63E.exit.i": ; preds = %bb.h, %"_ZN6rustls4conn26ConnectionCore$LT$Data$GT$20refresh_traffic_keys17hb557aa587bab722fE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !41890
  br label %"_ZN6rustls4conn26ConnectionCore$LT$Data$GT$26maybe_refresh_traffic_keys17h70329d46b38a5955E.exit"

"_ZN6rustls4conn26ConnectionCore$LT$Data$GT$26maybe_refresh_traffic_keys17h70329d46b38a5955E.exit": ; preds = %"_ZN4core3ptr80drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$rustls..error..Error$GT$$GT$17h572e6c0a14e08e63E.exit.i", %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %"_ZN4core3ptr60drop_in_place$LT$alloc..vec..Vec$LT$$RF$$u5b$u8$u5d$$GT$$GT$17h227c095949049c54E.exit"

"_ZN4core3ptr60drop_in_place$LT$alloc..vec..Vec$LT$$RF$$u5b$u8$u5d$$GT$$GT$17h227c095949049c54E.exit": ; preds = %"_ZN6rustls4conn26ConnectionCore$LT$Data$GT$26maybe_refresh_traffic_keys17h70329d46b38a5955E.exit25", %"_ZN6rustls4conn26ConnectionCore$LT$Data$GT$26maybe_refresh_traffic_keys17h70329d46b38a5955E.exit"
  %.sroa.4.1 = phi i64 [ %i.z, %"_ZN6rustls4conn26ConnectionCore$LT$Data$GT$26maybe_refresh_traffic_keys17h70329d46b38a5955E.exit" ], [ %i.at, %"_ZN6rustls4conn26ConnectionCore$LT$Data$GT$26maybe_refresh_traffic_keys17h70329d46b38a5955E.exit25" ]
  %i.an = inttoptr i64 %.sroa.4.1 to ptr
  br label %bb.c

_ZN4core4iter6traits8iterator8Iterator7collect17h22966f73704411eeE.exit.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4core4iter6traits8iterator8Iterator7collect17h22966f73704411eeE.exit, label %.preheader.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.epil.preheader:            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h22966f73704411eeE.exit.unr-lcssa, %.preheader.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader ], [ %i.r, %_ZN4core4iter6traits8iterator8Iterator7collect17h22966f73704411eeE.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod39 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod39)
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.epil.init ; 2 uses
  %.val21.i.i.i.i.i.i.i.i.i.epil = load ptr, ptr %i.ao, align 8, !noalias !41869, !noundef !27
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %.val22.i.i.i.i.i.i.i.i.i.epil = load i64, ptr %i.ap, align 8, !noalias !41869, !noundef !27
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.epil.init ; 2 uses
  store ptr %.val21.i.i.i.i.i.i.i.i.i.epil, ptr %i.aq, align 8, !noalias !41880
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 %.val22.i.i.i.i.i.i.i.i.i.epil, ptr %i.ar, align 8, !noalias !41889
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h22966f73704411eeE.exit

_ZN4core4iter6traits8iterator8Iterator7collect17h22966f73704411eeE.exit: ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h22966f73704411eeE.exit.unr-lcssa, %.preheader.i.i.i.i.i.i.epil.preheader
  invoke void @_ZN6rustls4msgs7message8outbound14OutboundChunks3new17h39f44a1a5e957566E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.e, i64 noundef %2)
          to label %bb.i unwind label %"_ZN4core3ptr60drop_in_place$LT$alloc..vec..Vec$LT$$RF$$u5b$u8$u5d$$GT$$GT$17h227c095949049c54E.exit26"

bb.i:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h22966f73704411eeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.at = invoke noundef i64 @_ZN6rustls12common_state11CommonState16buffer_plaintext17h3cf22a65d5c16bf3E(ptr noalias noundef nonnull align 8 dereferenceable(840) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.as)
          to label %bb.j unwind label %"_ZN4core3ptr60drop_in_place$LT$alloc..vec..Vec$LT$$RF$$u5b$u8$u5d$$GT$$GT$17h227c095949049c54E.exit26"

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !41904)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 831 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !range !188, !alias.scope !41904, !noundef !27
  %i.aw = trunc nuw i8 %i.av to i1
  store i8 0, ptr %i.au, align 1, !alias.scope !41904
  br i1 %i.aw, label %bb.k, label %"_ZN6rustls4conn26ConnectionCore$LT$Data$GT$26maybe_refresh_traffic_keys17h70329d46b38a5955E.exit25"

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !41904
  call void @llvm.experimental.noalias.scope.decl(metadata !41907)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 8, !range !11149, !alias.scope !41910, !noalias !41911, !noundef !27
  %.not.i.i19 = icmp eq i8 %i.ay, 22
  br i1 %.not.i.i19, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke fastcc void @"_ZN59_$LT$rustls..error..Error$u20$as$u20$core..clone..Clone$GT$5clone17hb497f4a19cbda983E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ax)
          to label %"_ZN6rustls4conn26ConnectionCore$LT$Data$GT$20refresh_traffic_keys17hb557aa587bab722fE.exit.i20" unwind label %"_ZN4core3ptr60drop_in_place$LT$alloc..vec..Vec$LT$$RF$$u5b$u8$u5d$$GT$$GT$17h227c095949049c54E.exit26"

bb.m:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !41910, !noalias !41911, !nonnull !27, !align !206, !noundef !27
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !41910, !noalias !41911, !nonnull !27, !align !148, !noundef !27
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.be = load ptr, ptr %i.bd, align 8, !invariant.load !27, !noalias !41913, !nonnull !27
  invoke void %i.be(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noundef nonnull align 1 %i.ba, ptr noalias noundef nonnull align 8 dereferenceable(1080) %0)
          to label %"_ZN6rustls4conn26ConnectionCore$LT$Data$GT$20refresh_traffic_keys17hb557aa587bab722fE.exit.i20" unwind label %"_ZN4core3ptr60drop_in_place$LT$alloc..vec..Vec$LT$$RF$$u5b$u8$u5d$$GT$$GT$17h227c095949049c54E.exit26", !inline_history !41900

"_ZN6rustls4conn26ConnectionCore$LT$Data$GT$20refresh_traffic_keys17hb557aa587bab722fE.exit.i20": ; preds = %bb.m, %bb.l
  %i.bf = load i8, ptr %i.a, align 8, !range !11149, !alias.scope !41914, !noalias !41904, !noundef !27
  %i.bg = icmp eq i8 %i.bf, 22
  br i1 %i.bg, label %"_ZN4core3ptr80drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$rustls..error..Error$GT$$GT$17h572e6c0a14e08e63E.exit.i21", label %bb.n

bb.n:                                             ; preds = %"_ZN6rustls4conn26ConnectionCore$LT$Data$GT$20refresh_traffic_keys17hb557aa587bab722fE.exit.i20"
  invoke fastcc void @"_ZN4core3ptr41drop_in_place$LT$rustls..error..Error$GT$17h8bd0144596c8ddd2E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %"_ZN4core3ptr80drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$rustls..error..Error$GT$$GT$17h572e6c0a14e08e63E.exit.i21" unwind label %"_ZN4core3ptr60drop_in_place$LT$alloc..vec..Vec$LT$$RF$$u5b$u8$u5d$$GT$$GT$17h227c095949049c54E.exit26"

"_ZN4core3ptr80drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$rustls..error..Error$GT$$GT$17h572e6c0a14e08e63E.exit.i21": ; preds = %bb.n, %"_ZN6rustls4conn26ConnectionCore$LT$Data$GT$20refresh_traffic_keys17hb557aa587bab722fE.exit.i20"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !41904
  br label %"_ZN6rustls4conn26ConnectionCore$LT$Data$GT$26maybe_refresh_traffic_keys17h70329d46b38a5955E.exit25"

"_ZN6rustls4conn26ConnectionCore$LT$Data$GT$26maybe_refresh_traffic_keys17h70329d46b38a5955E.exit25": ; preds = %"_ZN4core3ptr80drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$rustls..error..Error$GT$$GT$17h572e6c0a14e08e63E.exit.i21", %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @mi_free(ptr noundef nonnull %i.e) #38
  br label %"_ZN4core3ptr60drop_in_place$LT$alloc..vec..Vec$LT$$RF$$u5b$u8$u5d$$GT$$GT$17h227c095949049c54E.exit"

"_ZN4core3ptr60drop_in_place$LT$alloc..vec..Vec$LT$$RF$$u5b$u8$u5d$$GT$$GT$17h227c095949049c54E.exit26": ; preds = %bb.n, %bb.i, %_ZN4core4iter6traits8iterator8Iterator7collect17h22966f73704411eeE.exit, %bb.l, %bb.m
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  call void @mi_free(ptr noundef nonnull %i.e) #38
  resume { ptr, i32 } %lpad.thr_comm
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef ptr @"_ZN99_$LT$rustls..conn..ConnectionCommon$LT$T$GT$$u20$as$u20$rustls..conn..connection..PlaintextSink$GT$5flush17ha6607ce37e112e55E"(ptr noalias nofree readnone align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @"_ZN99_$LT$rustls..conn..ConnectionCommon$LT$T$GT$$u20$as$u20$rustls..conn..connection..PlaintextSink$GT$5write17h813916869070207eE"(ptr noalias noundef align 8 dereferenceable(1168) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %2, ptr %i.d, align 8
  store ptr null, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.f = call noundef i64 @_ZN6rustls12common_state11CommonState16buffer_plaintext17h3cf22a65d5c16bf3E(ptr noalias noundef nonnull align 8 dereferenceable(840) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !41917)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 831 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !range !188, !alias.scope !41917, !noundef !27
  %i.i = trunc nuw i8 %i.h to i1
  store i8 0, ptr %i.g, align 1, !alias.scope !41917
  br i1 %i.i, label %bb.b, label %"_ZN6rustls4conn26ConnectionCore$LT$Data$GT$26maybe_refresh_traffic_keys17h70329d46b38a5955E.exit"

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !41917
  call void @llvm.experimental.noalias.scope.decl(metadata !41920)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !range !11149, !alias.scope !41923, !noalias !41924, !noundef !27
  %.not.i.i = icmp eq i8 %i.k, 22
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call fastcc void @"_ZN59_$LT$rustls..error..Error$u20$as$u20$core..clone..Clone$GT$5clone17hb497f4a19cbda983E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.j)
  br label %"_ZN6rustls4conn26ConnectionCore$LT$Data$GT$20refresh_traffic_keys17hb557aa587bab722fE.exit.i"
end_hunk_21
begin_hunk_22_@"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h1cc17ae5e0fe2548E":bb.a
.preheader:                                       ; preds = %.preheader.lr.ph, %bb.m
  %.sroa.032.063 = phi ptr [ %i.as, %.preheader.lr.ph ], [ %.sroa.032.1.lcssa, %bb.m ] ; 2 uses
  %.sroa.5.062 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %bb.m ] ; 2 uses
  %.sroa.9.061 = phi i64 [ %i.b, %.preheader.lr.ph ], [ %i.bu, %bb.m ]
  %.sroa.13.060 = phi i16 [ %i.au, %.preheader.lr.ph ], [ %i.bs, %bb.m ] ; 2 uses
  %.not.i255 = icmp eq i16 %.sroa.13.060, 0
  br i1 %.not.i255, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.032.157 = phi ptr [ %i.aw, %.noexc3 ], [ %.sroa.032.063, %.preheader ] ; 2 uses
  %.sroa.5.156 = phi i64 [ %i.az, %.noexc3 ], [ %.sroa.5.062, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.032.157) ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.032.157, i64 16 ; 3 uses
  %.val550 = load <16 x i8>, ptr %i.aw, align 16
  %i.ax = icmp sgt <16 x i8> %.val550, splat (i8 -1)
  %i.ay = bitcast <16 x i1> %i.ax to i16          ; 2 uses
  %i.az = add i64 %.sroa.5.156, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.ay, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge64:                                    ; preds = %bb.m, %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hd30adc59b05e473eE.exit.._crit_edge64_crit_edge
  %.sroa.0.0.copyload.i.i.i.i.i.ptr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr, %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hd30adc59b05e473eE.exit.._crit_edge64_crit_edge ], [ %i.as, %bb.m ] ; 2 uses
  %i.ba = sub i64 %.sroa.02.0.i.i, %i.b
  store i64 %i.aq, ptr %0, align 8, !alias.scope !42342, !noalias !42345
  store i64 %i.am, ptr %i.e, align 8, !alias.scope !42358, !noalias !42360
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ba, ptr %i.bb, align 8, !alias.scope !42362, !noalias !42364
  %i.bc = icmp eq i64 %i.f, 0
  br i1 %i.bc, label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h233deac8f02ba69cE.exit, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i: ; preds = %._crit_edge64
  %i.bd = shl i64 %i.f, 3                         ; 2 uses
  %i.be = add i64 %i.bd, 8
  %i.bf = add i64 %i.bd, 23                       ; 2 uses
  %i.bg = icmp uge i64 %i.bf, %i.be
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = and i64 %i.bf, -16                      ; 3 uses
  %i.bi = add i64 %i.f, 17
  %i.bj = add i64 %i.bi, %i.bh                    ; 3 uses
  %i.bk = icmp uge i64 %i.bj, %i.bh
  %i.bl = icmp ult i64 %i.bj, 9223372036854775793
  tail call void @llvm.assume(i1 %i.bk)
  tail call void @llvm.assume(i1 %i.bl)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr) ]
  %i.bm = icmp eq i64 %i.bj, 0
  br i1 %i.bm, label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h233deac8f02ba69cE.exit, label %bb.k

bb.k:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i
  %i.bn = sub nsw i64 0, %i.bh
  %i.bo = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr, i64 %i.bn
  tail call void @mi_free(ptr noundef nonnull %i.bo) #38, !noalias !42366
  br label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h233deac8f02ba69cE.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.060, %.preheader ], [ %i.ay, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.062, %.preheader ], [ %i.az, %.noexc3 ] ; 2 uses
  %.sroa.032.1.lcssa = phi ptr [ %.sroa.032.063, %.preheader ], [ %i.aw, %.noexc3 ]
  %i.bp = add i16 %.sroa.13.1.lcssa, -1
  %i.bq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.br = zext nneg i16 %i.bq to i64
  %i.bs = and i16 %i.bp, %.sroa.13.1.lcssa
  %i.bt = add i64 %.sroa.5.1.lcssa, %i.br         ; 2 uses
  %i.bu = add i64 %.sroa.9.061, -1                ; 2 uses
  %i.bv = sub nsw i64 0, %i.bt
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.bv
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -8
  %i.by = tail call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h33fb7f3f7faa971dE(i64 %.val.i.i10, i64 %.val1.i.i11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bx), !noalias !42371 ; 2 uses
  %.sroa.0.04.i.i = and i64 %i.by, %i.am          ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.al, i64 %.sroa.0.04.i.i
  %.sroa.0.0.copyload.i35.i.i = load <16 x i8>, ptr %i.bz, align 1, !noalias !42372
  %i.ca = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i.i, zeroinitializer
  %i.cb = bitcast <16 x i1> %i.ca to i16          ; 2 uses
  %.not.not.i.not6.i.i = icmp eq i16 %i.cb, 0
  br i1 %.not.not.i.not6.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !42375

.lr.ph.i.i:                                       ; preds = %._crit_edge, %.lr.ph.i.i
  %.sroa.0.07.i.i = phi i64 [ %.sroa.0.0.i.i12, %.lr.ph.i.i ], [ %.sroa.0.04.i.i, %._crit_edge ]
  %i.cc = phi i64 [ %i.cd, %.lr.ph.i.i ], [ 0, %._crit_edge ]
  %i.cd = add i64 %i.cc, 16                       ; 2 uses
  %i.ce = add i64 %i.cd, %.sroa.0.07.i.i
  %.sroa.0.0.i.i12 = and i64 %i.ce, %i.am         ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.al, i64 %.sroa.0.0.i.i12
  %.sroa.0.0.copyload.i3.i.i = load <16 x i8>, ptr %i.cf, align 1, !noalias !42372
  %i.cg = icmp slt <16 x i8> %.sroa.0.0.copyload.i3.i.i, zeroinitializer
  %i.ch = bitcast <16 x i1> %i.cg to i16          ; 2 uses
  %.not.not.i.not.i.i = icmp eq i16 %i.ch, 0
  br i1 %.not.not.i.not.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !42376

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %._crit_edge
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.04.i.i, %._crit_edge ], [ %.sroa.0.0.i.i12, %.lr.ph.i.i ]
  %.lcssa.i.i = phi i16 [ %i.cb, %._crit_edge ], [ %i.ch, %.lr.ph.i.i ]
  %i.ci = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.cj = zext nneg i16 %i.ci to i64
  %i.ck = add nuw nsw i64 %.sroa.0.0.lcssa.i.i, %i.cj
  %i.cl = and i64 %i.ck, %i.am                    ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !noundef !27
  %i.co = icmp sgt i8 %i.cn, -1
  br i1 %i.co, label %bb.l, label %bb.m, !prof !29

bb.l:                                             ; preds = %._crit_edge.i.i
  %.val62.i.i.i = load <16 x i8>, ptr %i.al, align 16
  %i.cp = icmp slt <16 x i8> %.val62.i.i.i, zeroinitializer
  %i.cq = bitcast <16 x i1> %i.cp to i16          ; 2 uses
  %i.cr = icmp ne i16 %i.cq, 0
  tail call void @llvm.assume(i1 %i.cr)
  %i.cs = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cq, i1 true)
  %i.ct = zext nneg i16 %i.cs to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.ct, %bb.l ], [ %i.cl, %._crit_edge.i.i ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.al, i64 %.sroa.0.0.i5.i.i
  %i.cv = lshr i64 %i.by, 57
  %i.cw = trunc nuw nsw i64 %i.cv to i8           ; 2 uses
  %i.cx = add nsw i64 %.sroa.0.0.i5.i.i, -16
  %i.cy = and i64 %i.cx, %i.am
  store i8 %i.cw, ptr %i.cu, align 1
  %i.cz = getelementptr i8, ptr %i.al, i64 %i.cy
  %i.da = getelementptr i8, ptr %i.cz, i64 16
  store i8 %i.cw, ptr %i.da, align 1
  %i.db = shl i64 %i.bt, 3
  %i.dc = sub nuw nsw i64 -8, %i.db
  %i.dd = getelementptr inbounds i8, ptr %i.as, i64 %i.dc
  %i.de = shl i64 %.sroa.0.0.i5.i.i, 3
  %i.df = sub nuw nsw i64 -8, %i.de
  %i.dg = getelementptr inbounds i8, ptr %i.al, i64 %i.df
  %i.dh = load i64, ptr %i.dd, align 1
  store i64 %i.dh, ptr %i.dg, align 1
  %i.di = icmp eq i64 %i.bu, 0
  br i1 %i.di, label %._crit_edge64, label %.preheader

bb.n:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42377)
  %.val10.i = load ptr, ptr %0, align 8, !alias.scope !42377 ; 19 uses
  %.not6.i.i = icmp eq i64 %i.h, 0
  br i1 %.not6.i.i, label %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit.thread, label %.lr.ph.i.i13

_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit.thread: ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i) ]
  br label %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit

.lr.ph.i.i13:                                     ; preds = %bb.n
  %i.dj = lshr i64 %i.h, 4
  %i.dk = and i64 %i.h, 15
  %.not9.i.i.i.i = icmp ne i64 %i.dk, 0
  %i.dl = zext i1 %.not9.i.i.i.i to i64
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.dj, %i.dl ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i.i, 1
  %i.dm = icmp eq i64 %.sroa.05.0.i.i.i.i, 1
  br i1 %i.dm, label %.epil.preheader, label %.lr.ph.i.i13.new

.lr.ph.i.i13.new:                                 ; preds = %.lr.ph.i.i13
  %unroll_iter = and i64 %.sroa.05.0.i.i.i.i, 2305843009213693950
  br label %bb.o

._crit_edge.i.i14.unr-lcssa:                      ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i14, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i14.unr-lcssa, %.lr.ph.i.i13
  %.sroa.0.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i13 ], [ %i.dv, %._crit_edge.i.i14.unr-lcssa ]
  %lcmp.mod15 = trunc i64 %.sroa.05.0.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod15)
  %i.dn = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %.sroa.0.08.i.i.epil.init ; 2 uses
  %.val5.i.i.epil = load <16 x i8>, ptr %i.dn, align 16, !noalias !42377
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val5.i.i.epil, splat (i8 7)
  %i.do = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>
  %i.dp = or <2 x i64> %i.do, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dp, ptr %i.dn, align 16, !noalias !42377
  br label %._crit_edge.i.i14

._crit_edge.i.i14:                                ; preds = %._crit_edge.i.i14.unr-lcssa, %.epil.preheader
  %..i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 16)
  %.29.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 16)
  %i.dq = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %..i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dq, ptr nonnull align 1 %.val10.i, i64 %.29.i, i1 false), !noalias !42377
  %.val.i.i.i = load i64, ptr %2, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1.i.i.i = load i64, ptr %i.dr, align 8
  br label %bb.p

bb.o:                                             ; preds = %bb.o, %.lr.ph.i.i13.new
  %.sroa.0.08.i.i = phi i64 [ 0, %.lr.ph.i.i13.new ], [ %i.dv, %bb.o ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i13.new ], [ %niter.next.1, %bb.o ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %.sroa.0.08.i.i ; 2 uses
  %.val5.i.i = load <16 x i8>, ptr %i.ds, align 16, !noalias !42377
  %.lobit.i.i.i = ashr <16 x i8> %.val5.i.i, splat (i8 7)
  %i.dt = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>
  %i.du = or <2 x i64> %i.dt, splat (i64 -9187201950435737472)
  store <2 x i64> %i.du, ptr %i.ds, align 16, !noalias !42377
  %i.dv = add i64 %.sroa.0.08.i.i, 32             ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %.sroa.0.08.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16 ; 2 uses
  %.val5.i.i.1 = load <16 x i8>, ptr %i.dx, align 16, !noalias !42377
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val5.i.i.1, splat (i8 7)
  %i.dy = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>
  %i.dz = or <2 x i64> %i.dy, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dz, ptr %i.dx, align 16, !noalias !42377
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i14.unr-lcssa, label %bb.o

bb.p:                                             ; preds = %bb.x, %._crit_edge.i.i14
  %.sroa.0.17.i = phi i64 [ 1, %._crit_edge.i.i14 ], [ %.sroa.0.1.i, %bb.x ] ; 3 uses
  %.sroa.0.06.i = phi i64 [ 0, %._crit_edge.i.i14 ], [ %.sroa.0.17.i, %bb.x ] ; 6 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %.sroa.0.06.i ; 3 uses
  %i.eb = load i8, ptr %i.ea, align 1, !noalias !42377, !noundef !27
  %.not.i15 = icmp eq i8 %i.eb, -128
  br i1 %.not.i15, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.ec = shl i64 %.sroa.0.06.i, 3
  %i.ed = sub nuw nsw i64 -8, %i.ec
  %i.ee = getelementptr inbounds i8, ptr %.val10.i, i64 %i.ed ; 3 uses
  %i.ef = sub nsw i64 0, %.sroa.0.06.i
  %i.eg = getelementptr inbounds [8 x i8], ptr %.val10.i, i64 %i.ef
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 -8
  br label %bb.r

bb.r:                                             ; preds = %bb.w, %bb.q
  %i.ei = tail call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h33fb7f3f7faa971dE(i64 %.val.i.i.i, i64 %.val1.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.eh), !noalias !42380 ; 3 uses
  %.sroa.0.04.i.i19 = and i64 %i.ei, %i.f         ; 5 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %.sroa.0.04.i.i19
  %.sroa.0.0.copyload.i35.i.i20 = load <16 x i8>, ptr %i.ej, align 1, !noalias !42384
  %i.ek = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i.i20, zeroinitializer
  %i.el = bitcast <16 x i1> %i.ek to i16          ; 2 uses
  %.not.not.i.not6.i.i21 = icmp eq i16 %i.el, 0
  br i1 %.not.not.i.not6.i.i21, label %.lr.ph.i13.i, label %._crit_edge.i12.i, !prof !42375

.lr.ph.i13.i:                                     ; preds = %bb.r, %.lr.ph.i13.i
  %.sroa.0.07.i.i28 = phi i64 [ %.sroa.0.0.i.i29, %.lr.ph.i13.i ], [ %.sroa.0.04.i.i19, %bb.r ]
  %i.em = phi i64 [ %i.en, %.lr.ph.i13.i ], [ 0, %bb.r ]
  %i.en = add i64 %i.em, 16                       ; 2 uses
  %i.eo = add i64 %i.en, %.sroa.0.07.i.i28
  %.sroa.0.0.i.i29 = and i64 %i.eo, %i.f          ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %.sroa.0.0.i.i29
  %.sroa.0.0.copyload.i3.i.i30 = load <16 x i8>, ptr %i.ep, align 1, !noalias !42384
  %i.eq = icmp slt <16 x i8> %.sroa.0.0.copyload.i3.i.i30, zeroinitializer
  %i.er = bitcast <16 x i1> %i.eq to i16          ; 2 uses
  %.not.not.i.not.i.i31 = icmp eq i16 %i.er, 0
  br i1 %.not.not.i.not.i.i31, label %.lr.ph.i13.i, label %._crit_edge.i12.i, !prof !42376

._crit_edge.i12.i:                                ; preds = %.lr.ph.i13.i, %bb.r
  %.sroa.0.0.lcssa.i.i22 = phi i64 [ %.sroa.0.04.i.i19, %bb.r ], [ %.sroa.0.0.i.i29, %.lr.ph.i13.i ]
  %.lcssa.i.i23 = phi i16 [ %i.el, %bb.r ], [ %i.er, %.lr.ph.i13.i ]
  %i.es = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i23, i1 true)
  %i.et = zext nneg i16 %i.es to i64
  %i.eu = add i64 %.sroa.0.0.lcssa.i.i22, %i.et
  %i.ev = and i64 %i.eu, %i.f                     ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !noalias !42377, !noundef !27
  %i.ey = icmp sgt i8 %i.ex, -1
  br i1 %i.ey, label %bb.s, label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit.i, !prof !29

bb.s:                                             ; preds = %._crit_edge.i12.i
  %.val62.i.i.i27 = load <16 x i8>, ptr %.val10.i, align 16, !noalias !42377
  %i.ez = icmp slt <16 x i8> %.val62.i.i.i27, zeroinitializer
  %i.fa = bitcast <16 x i1> %i.ez to i16          ; 2 uses
  %i.fb = icmp ne i16 %i.fa, 0
  tail call void @llvm.assume(i1 %i.fb)
  %i.fc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fa, i1 true)
  %i.fd = zext nneg i16 %i.fc to i64
  br label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit.i

_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit.i: ; preds = %bb.s, %._crit_edge.i12.i
  %.sroa.0.0.i5.i.i24 = phi i64 [ %i.fd, %bb.s ], [ %i.ev, %._crit_edge.i12.i ] ; 4 uses
  %i.fe = sub i64 %.sroa.0.06.i, %.sroa.0.04.i.i19
  %i.ff = sub i64 %.sroa.0.0.i5.i.i24, %.sroa.0.04.i.i19
  %i.fg = xor i64 %i.ff, %i.fe
  %.unshifted.i = and i64 %i.fg, %i.f
  %i.fh = icmp ult i64 %.unshifted.i, 16
  br i1 %i.fh, label %bb.u, label %bb.t, !prof !222

bb.t:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit.i
  %i.fi = shl i64 %.sroa.0.0.i5.i.i24, 3
  %i.fj = sub nuw nsw i64 -8, %i.fi
  %i.fk = getelementptr inbounds i8, ptr %.val10.i, i64 %i.fj ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %.sroa.0.0.i5.i.i24 ; 2 uses
  %i.fm = load i8, ptr %i.fl, align 1, !noalias !42377, !noundef !27
  %i.fn = lshr i64 %i.ei, 57
  %i.fo = trunc nuw nsw i64 %i.fn to i8           ; 2 uses
  %i.fp = add i64 %.sroa.0.0.i5.i.i24, -16
  %i.fq = and i64 %i.fp, %i.f
  store i8 %i.fo, ptr %i.fl, align 1, !noalias !42377
  %i.fr = getelementptr i8, ptr %.val10.i, i64 %i.fq
  %i.fs = getelementptr i8, ptr %i.fr, i64 16
  store i8 %i.fo, ptr %i.fs, align 1, !noalias !42377
  %i.ft = icmp eq i8 %i.fm, -1
  br i1 %i.ft, label %bb.v, label %bb.w

bb.u:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit.i
  %i.fu = lshr i64 %i.ei, 57
  %i.fv = trunc nuw nsw i64 %i.fu to i8           ; 2 uses
  %i.fw = add i64 %.sroa.0.06.i, -16
  %i.fx = and i64 %i.fw, %i.f
  store i8 %i.fv, ptr %i.ea, align 1, !noalias !42377
  %i.fy = getelementptr i8, ptr %.val10.i, i64 %i.fx
  %i.fz = getelementptr i8, ptr %i.fy, i64 16
  store i8 %i.fv, ptr %i.fz, align 1, !noalias !42377
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.ga = add i64 %.sroa.0.06.i, -16
  %i.gb = and i64 %i.ga, %i.f
  store i8 -1, ptr %i.ea, align 1, !noalias !42377
  %i.gc = getelementptr i8, ptr %.val10.i, i64 %i.gb
  %i.gd = getelementptr i8, ptr %i.gc, i64 16
  store i8 -1, ptr %i.gd, align 1, !noalias !42377
  %i.ge = load i64, ptr %i.ee, align 1, !noalias !42377
  store i64 %i.ge, ptr %i.fk, align 1, !noalias !42377
  br label %bb.x

bb.w:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42390)
  %.sroa.0.0.copyload.i.i.i.i.i25 = load i64, ptr %i.ee, align 1, !alias.scope !42387, !noalias !42392
  %.sroa.02.0.copyload.i.i.i.i.i26 = load i64, ptr %i.fk, align 1, !alias.scope !42390, !noalias !42393
  store i64 %.sroa.02.0.copyload.i.i.i.i.i26, ptr %i.ee, align 1, !alias.scope !42387, !noalias !42392
  store i64 %.sroa.0.0.copyload.i.i.i.i.i25, ptr %i.fk, align 1, !alias.scope !42390, !noalias !42393
  br label %bb.r

bb.x:                                             ; preds = %bb.v, %bb.u, %bb.p
  %i.gf = icmp ult i64 %.sroa.0.17.i, %i.h        ; 2 uses
  %i.gg = zext i1 %i.gf to i64
  %.sroa.0.1.i = add nuw i64 %.sroa.0.17.i, %i.gg
  br i1 %i.gf, label %bb.p, label %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit

_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit: ; preds = %bb.x, %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit.thread
  %i.gh = phi i64 [ 0, %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit.thread ], [ %.sroa.03.0.i, %bb.x ]
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gj = sub i64 %i.gh, %i.b
  store i64 %i.gj, ptr %i.gi, align 8, !alias.scope !42377
  br label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h233deac8f02ba69cE.exit

_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h233deac8f02ba69cE.exit: ; preds = %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit, %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hd30adc59b05e473eE.exit.thread, %._crit_edge64, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i, %bb.k, %bb.c
  %.merged.i = phi i64 [ %i.m, %bb.c ], [ -9223372036854775807, %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit ], [ %.sroa.7.047, %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hd30adc59b05e473eE.exit.thread ], [ -9223372036854775807, %._crit_edge64 ], [ -9223372036854775807, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i ], [ -9223372036854775807, %bb.k ]
  ret i64 %.merged.i
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN9once_cell3imp17OnceCell$LT$T$GT$10initialize17h371ec2d6b3ffe43cE"() unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @_ZN9actix_web10middleware8compress26SUPPORTED_ENCODINGS_STRING17h11edd66dfcc8a6b7E, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN9actix_web10middleware8compress26SUPPORTED_ENCODINGS_STRING17h11edd66dfcc8a6b7E, i64 8), ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.f, align 8
  call void @_ZN9once_cell3imp18initialize_or_wait17h8267270b59612bf2E(ptr noundef nonnull align 8 @_ZN9actix_web10middleware8compress26SUPPORTED_ENCODINGS_STRING17h11edd66dfcc8a6b7E, ptr noundef nonnull align 1 %i.b, ptr nonnull @2235)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN9once_cell3imp17OnceCell$LT$T$GT$10initialize28_$u7b$$u7b$closure$u7d$$u7d$17h673e00fedaaaa638E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !27, !align !148, !noundef !27 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !27, !align !148, !noundef !27
  store ptr null, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !noalias !42394, !noundef !27 ; 2 uses
  store ptr null, ptr %i.e, align 8, !noalias !42394
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %bb.b, label %"_ZN9once_cell4sync17OnceCell$LT$T$GT$11get_or_init28_$u7b$$u7b$closure$u7d$$u7d$17h63666b1698a5e30dE.exit", !prof !29

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !42394
  store ptr @2237, ptr %i.a, align 8, !noalias !42394
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.g, align 8, !noalias !42394
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.h, align 8, !noalias !42394
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8, !noalias !42394
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.j, align 8, !noalias !42394
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2239) #43, !noalias !42394
  unreachable

"_ZN9once_cell4sync17OnceCell$LT$T$GT$11get_or_init28_$u7b$$u7b$closure$u7d$$u7d$17h63666b1698a5e30dE.exit": ; preds = %bb.a
  call void %i.f(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b), !inline_history !42399
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !27, !align !148, !noundef !27 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !noundef !27 ; 3 uses
  %.val = load i64, ptr %i.m, align 8, !range !5723, !noundef !27
  %switch = icmp sgt i64 %.val, 0
  br i1 %switch, label %bb.c, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17he43dbe1fb20bdc18E.exit"
end_hunk_22
