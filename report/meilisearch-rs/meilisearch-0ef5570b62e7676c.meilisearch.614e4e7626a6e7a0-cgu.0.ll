Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch-0ef5570b62e7676c.meilisearch.614e4e7626a6e7a0-cgu.0?download=true
inline.NumInlined: 17146
inline.NumDeleted: 6832
loop-unroll.NumCompletelyUnrolled: 148
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 290
begin_hunk_0_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
  br i1 %i.ju, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.jv = shl i64 %i.jt, 4                        ; 5 uses
  %i.jw = icmp ugt i64 %.sroa.0.0.i448.i.i, 1152921504606846974
  %i.jx = icmp ugt i64 %i.jv, 9223372036854775804
  %or.cond.i.i.i.i.i449.i.i = or i1 %i.jw, %i.jx
  br i1 %or.cond.i.i.i.i.i449.i.i, label %bb.ap, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i, !prof !3798

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i: ; preds = %bb.ao
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34403
  %i.jy = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.jv, i64 noundef range(i64 1, 9) 4) #38, !noalias !34403 ; 5 uses
  %i.jz = icmp eq ptr %i.jy, null
  br i1 %i.jz, label %bb.ap, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i"

bb.ap:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i, %bb.ao
  %.sroa.4.0.ph.i.i.i455.i.i = phi i64 [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i ], [ 0, %bb.ao ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i455.i.i, i64 %i.jv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc456.i.i unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !34365

.noexc456.i.i:                                    ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i", %bb.an
  %.sroa.11.2.i.i = phi i64 [ %i.jt, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i" ], [ 2049, %bb.an ]
  %.sroa.044.2.i.i = phi ptr [ %i.jy, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i" ], [ %i.jk, %bb.an ] ; 4 uses
  %i.ka = shl i64 %i.uo, 2                        ; 9 uses
  %i.kb = icmp ugt i64 %i.uo, 4611686018427387903
  %i.kc = icmp ugt i64 %i.ka, 9223372036854775804
  %or.cond.i.i.i.i458.i.i = or i1 %i.kb, %i.kc
  br i1 %or.cond.i.i.i.i458.i.i, label %bb.at, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i, !prof !3798

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i: ; preds = %bb.aq
  %i.kd = icmp eq i64 %i.ka, 0                    ; 2 uses
  br i1 %i.kd, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34411
  %i.ke = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.ka, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !34411 ; 2 uses
  %i.kf = icmp eq ptr %i.ke, null
  br i1 %i.kf, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.kg = ptrtoint ptr %i.ke to i64
  br label %bb.au

bb.at:                                            ; preds = %bb.ar, %bb.aq
  %.sroa.4.0.ph.i.i461.i.i = phi i64 [ 4, %bb.ar ], [ 0, %bb.aq ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i461.i.i, i64 %i.ka, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc462.i.i unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !34365

.noexc462.i.i:                                    ; preds = %bb.at
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i
  %i.kh = add nsw i64 %i.jv, -16                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.jy, i8 0, i64 %i.kh, i1 false), !noalias !34416
  %i.ki = getelementptr i8, ptr %i.jy, i64 %i.jv  ; 2 uses
  %scevgep11.i451.i.i = getelementptr i8, ptr %i.jy, i64 %i.kh
  store i32 0, ptr %scevgep11.i451.i.i, align 4, !noalias !34416
  %.sroa.55.0..sroa_idx.i452.i.i = getelementptr i8, ptr %i.ki, i64 -12
  store i32 0, ptr %.sroa.55.0..sroa_idx.i452.i.i, align 4, !noalias !34416
  %.sroa.67.0..sroa_idx.i453.i.i = getelementptr i8, ptr %i.ki, i64 -8
  store <2 x float> zeroinitializer, ptr %.sroa.67.0..sroa_idx.i453.i.i, align 4, !noalias !34416
  %i.kj = icmp samesign ult i64 %.sroa.0.0.i448.i.i, 576460752303423487
  tail call void @llvm.assume(i1 %i.kj)
  tail call void @mi_free(ptr noundef nonnull align 4 %i.jk) #38, !noalias !34365
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
  %min.iters.check3753 = icmp ult i64 %i.ko, 28
  br i1 %min.iters.check3753, label %.lr.ph583.i.i.preheader4460, label %vector.ph3754

vector.ph3754:                                    ; preds = %.lr.ph583.i.i.preheader
  %n.vec3755 = and i64 %i.kq, 9223372036854775800 ; 4 uses
  %i.kr = trunc i64 %n.vec3755 to i32
  %i.ks = shl i64 %n.vec3755, 2
  %i.kt = getelementptr i8, ptr %i.kk, i64 %i.ks
  br label %vector.body3756

vector.body3756:                                  ; preds = %vector.body3756, %vector.ph3754
  %index3757 = phi i64 [ 0, %vector.ph3754 ], [ %index.next3759, %vector.body3756 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph3754 ], [ %vec.ind.next, %vector.body3756 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.ku = shl i64 %index3757, 2
  %next.gep3758 = getelementptr i8, ptr %i.kk, i64 %i.ku ; 2 uses
  %i.kv = getelementptr i8, ptr %next.gep3758, i64 16
  store <4 x i32> %vec.ind, ptr %next.gep3758, align 4, !noalias !34365
  store <4 x i32> %step.add, ptr %i.kv, align 4, !noalias !34365
  %index.next3759 = add nuw i64 %index3757, 8     ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.kw = icmp eq i64 %index.next3759, %n.vec3755
  br i1 %i.kw, label %middle.block3760, label %vector.body3756, !llvm.loop !34419

middle.block3760:                                 ; preds = %vector.body3756
  %cmp.n = icmp eq i64 %i.kq, %n.vec3755
  br i1 %cmp.n, label %._crit_edge584.i.i, label %.lr.ph583.i.i.preheader4460

.lr.ph583.i.i.preheader4460:                      ; preds = %.lr.ph583.i.i.preheader, %middle.block3760
  %.sroa.047.2581.i.i.ph = phi i32 [ 0, %.lr.ph583.i.i.preheader ], [ %i.kr, %middle.block3760 ]
  %.sroa.0135.0580.i.i.ph = phi ptr [ %i.kk, %.lr.ph583.i.i.preheader ], [ %i.kt, %middle.block3760 ]
  br label %.lr.ph583.i.i

.lr.ph583.i.i:                                    ; preds = %.lr.ph583.i.i.preheader4460, %.lr.ph583.i.i
  %.sroa.047.2581.i.i = phi i32 [ %i.kx, %.lr.ph583.i.i ], [ %.sroa.047.2581.i.i.ph, %.lr.ph583.i.i.preheader4460 ] ; 2 uses
  %.sroa.0135.0580.i.i = phi ptr [ %.sroa.0135.1.i.i, %.lr.ph583.i.i ], [ %.sroa.0135.0580.i.i.ph, %.lr.ph583.i.i.preheader4460 ] ; 2 uses
  %.sroa.0135.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0135.0580.i.i, i64 4 ; 2 uses
  store i32 %.sroa.047.2581.i.i, ptr %.sroa.0135.0580.i.i, align 4, !noalias !34365
  %i.kx = add i32 %.sroa.047.2581.i.i, 1
  %i.ky = icmp eq ptr %.sroa.0135.1.i.i, %i.km
  br i1 %i.ky, label %._crit_edge584.i.i, label %.lr.ph583.i.i, !llvm.loop !34420

._crit_edge584.i.i:                               ; preds = %.lr.ph583.i.i, %middle.block3760, %bb.au
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.7.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.5.i.i) ]
  %i.kz = invoke fastcc noundef i64 @_ZN6brotli3enc7cluster22BrotliHistogramCombine17h927b250c66d009c4E(ptr noalias noundef nonnull align 8 %.sroa.016.7.i.i, i64 noundef %.sroa.14.7.i.i, ptr noalias noundef nonnull align 4 %.sroa.026.5.i.i, i64 noundef %.sroa.12.5.i.i, ptr noalias noundef nonnull align 4 %i.ho, i64 noundef %.sroa.0.0.i.i, ptr noalias noundef nonnull align 4 %i.kk, i64 noundef %i.uo, ptr noalias noundef nonnull align 4 %.sroa.044.2.i.i, i64 noundef %.sroa.11.2.i.i, i64 noundef %i.uo, i64 noundef %.sroa.0.0.i.i, i64 noundef 256, i64 noundef %.sroa.0.0.i448.i.i)
          to label %bb.av unwind label %bb.am, !noalias !34365 ; 3 uses

bb.av:                                            ; preds = %._crit_edge584.i.i
  tail call void @mi_free(ptr noundef nonnull align 4 %.sroa.044.2.i.i) #38, !noalias !34365
  %i.la = icmp eq i64 %.sroa.12.5.i.i, 0
  br i1 %i.la, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i": ; preds = %bb.av
  tail call void @mi_free(ptr noundef nonnull align 4 %.sroa.026.5.i.i) #38, !noalias !34365
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i: ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i", %bb.av
  br i1 %i.kd, label %bb.ba, label %bb.aw

bb.aw:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34421
  %i.lb = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.ka, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !34421 ; 2 uses
  %i.lc = icmp eq ptr %i.lb, null
  br i1 %i.lc, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ld = ptrtoint ptr %i.lb to i64
  br label %bb.ba

bb.ay:                                            ; preds = %bb.aw
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.ka, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc472.i.i unwind label %bb.am, !noalias !34365

.noexc472.i.i:                                    ; preds = %bb.ay
  unreachable

bb.az:                                            ; preds = %.invoke1134.i.i, %.invoke1132.i.i
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

bb.ba:                                            ; preds = %bb.ax, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i
  %.sroa.10.0.i.i470.i.i = phi i64 [ %i.ld, %bb.ax ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i ]
  %i.lf = inttoptr i64 %.sroa.10.0.i.i470.i.i to ptr ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lf) ]
  br i1 %i.kn, label %.preheader.split.i.i, label %.lr.ph587.preheader.i.i

.lr.ph587.preheader.i.i:                          ; preds = %bb.ba
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.lf, i8 -1, i64 %i.ka, i1 false), !noalias !34365
  br label %.preheader.split.i.i

.preheader.split.i.i:                             ; preds = %.lr.ph587.preheader.i.i, %bb.ba
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ak, i64 1024
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ak, i64 1032
  %i.li = getelementptr inbounds nuw i8, ptr %i.ai, i64 1024 ; 3 uses
  %.not1139.i.i = icmp eq i64 %i.kz, 0            ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.aj, i64 1024 ; 3 uses
  br label %bb.bx

bb.bb:                                            ; preds = %bb.cb
  tail call void @mi_free(ptr noundef nonnull align 4 %i.kk) #38, !noalias !34365
  tail call void @mi_free(ptr noundef nonnull align 8 %.sroa.016.7.i.i) #38, !noalias !34365
  %.val365.i.i = load ptr, ptr %7, align 8, !alias.scope !34426, !noalias !34427, !nonnull !27, !align !206, !noundef !27 ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %.val366.i.i = load i64, ptr %i.lk, align 8, !alias.scope !34426, !noalias !34427, !noundef !27 ; 5 uses
  %i.ll = icmp ult i64 %.val366.i.i, %.sroa.0.0.i.i
  br i1 %i.ll, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  %i.lm = icmp eq i64 %.val366.i.i, 0             ; 2 uses
  %spec.select.i168.i = select i1 %i.lm, i64 %.sroa.0.0.i.i, i64 %.val366.i.i
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %bb.bc
  %.sroa.0101.1.i.i = phi i64 [ %spec.select.i168.i, %bb.bc ], [ %i.lo, %bb.bd ] ; 9 uses
  %i.ln = icmp ult i64 %.sroa.0101.1.i.i, %.sroa.0.0.i.i
  %i.lo = shl nsw i64 %.sroa.0101.1.i.i, 1
  br i1 %i.ln, label %bb.bd, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.lp = icmp slt i64 %.sroa.0101.1.i.i, 0
  br i1 %i.lp, label %.invoke1132.i.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i, !prof !3798

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i: ; preds = %bb.be
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34428
  %i.lq = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %.sroa.0101.1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !34428 ; 5 uses
  %i.lr = icmp eq ptr %i.lq, null
  br i1 %i.lr, label %.invoke1132.i.i, label %bb.bf

bb.bf:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lq, ptr nonnull readonly align 1 %.val365.i.i, i64 %.val366.i.i, i1 false), !alias.scope !34433, !noalias !34437
  store ptr %i.lq, ptr %7, align 8, !alias.scope !34426, !noalias !34427
  store i64 %.sroa.0101.1.i.i, ptr %i.lk, align 8, !alias.scope !34426, !noalias !34427
  br i1 %i.lm, label %bb.bg, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i483.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i483.i.i": ; preds = %bb.bf
  tail call void @mi_free(ptr noundef nonnull align 1 %.val365.i.i) #38, !noalias !34365
  br label %bb.bg

bb.bg:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i483.i.i", %bb.bf, %bb.bb
  %.val.i.i = phi ptr [ %.val365.i.i, %bb.bb ], [ %i.lq, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i483.i.i" ], [ %i.lq, %bb.bf ]
  %.val270.i.i = phi i64 [ %.val366.i.i, %bb.bb ], [ %.sroa.0101.1.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i483.i.i" ], [ %.sroa.0101.1.i.i, %bb.bf ] ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %.val309.i.i = load ptr, ptr %i.ls, align 8, !alias.scope !34426, !noalias !34427, !nonnull !27, !align !603, !noundef !27 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %.val310.i.i = load i64, ptr %i.lt, align 8, !alias.scope !34426, !noalias !34427, !noundef !27 ; 5 uses
  %i.lu = icmp ult i64 %.val310.i.i, %.sroa.0.0.i.i
  br i1 %i.lu, label %bb.bh, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.i.i"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i492.i.i", %bb.bm, %bb.bg
  %.val339.i.i = phi ptr [ %i.mh, %bb.bm ], [ %i.mh, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i492.i.i" ], [ %.val309.i.i, %bb.bg ]
  %.val340.i.i = phi i64 [ %.sroa.0104.1.i.i, %bb.bm ], [ %.sroa.0104.1.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i492.i.i" ], [ %.val310.i.i, %bb.bg ] ; 2 uses
  br label %bb.bo

bb.bh:                                            ; preds = %bb.bg
  %i.lv = icmp eq i64 %.val310.i.i, 0             ; 2 uses
  %spec.select247.i.i = select i1 %i.lv, i64 %.sroa.0.0.i.i, i64 %.val310.i.i
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %bb.bh
  %.sroa.0104.1.i.i = phi i64 [ %spec.select247.i.i, %bb.bh ], [ %i.lx, %bb.bi ] ; 8 uses
  %i.lw = icmp ult i64 %.sroa.0104.1.i.i, %.sroa.0.0.i.i
  %i.lx = shl nsw i64 %.sroa.0104.1.i.i, 1
  br i1 %i.lw, label %bb.bi, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ly = shl i64 %.sroa.0104.1.i.i, 2            ; 5 uses
  %i.lz = icmp ugt i64 %.sroa.0104.1.i.i, 4611686018427387903
  %i.ma = icmp ugt i64 %i.ly, 9223372036854775804
  %or.cond.i.i.i.i484.i.i = or i1 %i.lz, %i.ma
  br i1 %or.cond.i.i.i.i484.i.i, label %.invoke1132.i.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i485.i.i, !prof !3798

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i485.i.i: ; preds = %bb.bj
  %i.mb = icmp eq i64 %i.ly, 0
  br i1 %i.mb, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i485.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34439
  %i.mc = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.ly, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !34439 ; 2 uses
  %i.md = icmp eq ptr %i.mc, null
  br i1 %i.md, label %.invoke1132.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.me = ptrtoint ptr %i.mc to i64
  br label %bb.bm

.invoke1132.i.i:                                  ; preds = %bb.bk, %bb.bj, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i, %bb.be
  %i.mf = phi i64 [ 0, %bb.be ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i ], [ 4, %bb.bk ], [ 0, %bb.bj ]
  %i.mg = phi i64 [ %.sroa.0101.1.i.i, %bb.be ], [ %.sroa.0101.1.i.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i ], [ %i.ly, %bb.bk ], [ %i.ly, %bb.bj ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.mf, i64 %i.mg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.cont1133.i.i unwind label %bb.az, !noalias !34365

.cont1133.i.i:                                    ; preds = %.invoke1132.i.i
  unreachable

bb.bm:                                            ; preds = %bb.bl, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i485.i.i
  %.sroa.10.0.i.i486.i.i = phi i64 [ %i.me, %bb.bl ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i485.i.i ]
  %i.mh = inttoptr i64 %.sroa.10.0.i.i486.i.i to ptr ; 5 uses
  %i.mi = icmp samesign ult i64 %.sroa.0104.1.i.i, 2305843009213693952
  tail call void @llvm.assume(i1 %i.mi)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mh) ]
  %i.mj = shl nuw nsw i64 %.val310.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.mh, ptr nonnull readonly align 4 %.val309.i.i, i64 %i.mj, i1 false), !alias.scope !34444, !noalias !34448
  store ptr %i.mh, ptr %i.ls, align 8, !alias.scope !34426, !noalias !34427
  store i64 %.sroa.0104.1.i.i, ptr %i.lt, align 8, !alias.scope !34426, !noalias !34427
  br i1 %i.lv, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i492.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i492.i.i": ; preds = %bb.bm
  tail call void @mi_free(ptr noundef nonnull align 4 %.val309.i.i) #38, !noalias !34365
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.i.i"

bb.bn:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i551.i.i", %.thread130.i.i
  br i1 %.sroa.11.0147.i.i, label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit446.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i": ; preds = %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit550.i.i", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit548.i.i", %bb.db, %bb.bn, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i, %.thread163.loopexit.split-lp.loopexit.i.i, %.thread163.loopexit.i.i
  %.pn230.pn202.i.i = phi { ptr, i32 } [ %.pn230155.i.i, %bb.bn ], [ %i.vz, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit548.i.i" ], [ %i.vi, %bb.db ], [ %i.wa, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit550.i.i" ], [ %lpad.loopexit255.i.i, %.thread163.loopexit.i.i ], [ %lpad.loopexit258.i.i, %.thread163.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.split-lp259.i.i, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i ]
  %.sroa.044.0122201.i.i = phi ptr [ %.sroa.044.0148.i.i, %bb.bn ], [ %i.jk, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit548.i.i" ], [ %i.jk, %bb.db ], [ %i.jk, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit550.i.i" ], [ %i.jk, %.thread163.loopexit.i.i ], [ %i.jk, %.thread163.loopexit.split-lp.loopexit.i.i ], [ %.sroa.044.1.ph.ph.ph.i.i, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i ] ; 2 uses
  %.sroa.1335.1123199.i.i = phi i64 [ 0, %bb.bn ], [ %.sroa.0.0.i422.i.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit548.i.i" ], [ %.sroa.0.0.i422.i.i, %bb.db ], [ %.sroa.0.0.i422.i.i, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit550.i.i" ], [ %.sroa.0.0.i422.i.i, %.thread163.loopexit.i.i ], [ %.sroa.0.0.i422.i.i, %.thread163.loopexit.split-lp.loopexit.i.i ], [ %.sroa.1335.2.ph.ph.ph.i.i, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i ]
  %.sroa.034.1124197.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.bn ], [ %.sroa.10.0.i.i.i427915.i.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit548.i.i" ], [ %.sroa.10.0.i.i.i427915.i.i, %bb.db ], [ %.sroa.10.0.i.i.i427915.i.i, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit550.i.i" ], [ %.sroa.10.0.i.i.i427915.i.i, %.thread163.loopexit.i.i ], [ %.sroa.10.0.i.i.i427915.i.i, %.thread163.loopexit.split-lp.loopexit.i.i ], [ %.sroa.034.2.ph.ph.ph.i.i, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i ]
  %.sroa.12.3125195.i.i = phi i64 [ %.sroa.12.3151.i.i, %bb.bn ], [ %.sroa.12.2569.i.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit548.i.i" ], [ %.sroa.12.5.i.i, %bb.db ], [ %.sroa.12.2569.i.i, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit550.i.i" ], [ %.sroa.12.2569.i.i, %.thread163.loopexit.i.i ], [ %.sroa.12.2569.i.i, %.thread163.loopexit.split-lp.loopexit.i.i ], [ %.sroa.12.4.ph.ph.ph.i.i, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i ]
  %.sroa.026.3126193.i.i = phi ptr [ %.sroa.026.3152.i.i, %bb.bn ], [ %.sroa.026.2570.i.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit548.i.i" ], [ %.sroa.026.5.i.i, %bb.db ], [ %.sroa.026.2570.i.i, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit550.i.i" ], [ %.sroa.026.2570.i.i, %.thread163.loopexit.i.i ], [ %.sroa.026.2570.i.i, %.thread163.loopexit.split-lp.loopexit.i.i ], [ %.sroa.026.4.ph.ph.ph.i.i, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i ]
  %.sroa.14.4127191.i.i = phi i64 [ %.sroa.14.4153.i.i, %bb.bn ], [ %.sroa.14.7.i.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit548.i.i" ], [ %.sroa.14.7.i.i, %bb.db ], [ %.sroa.14.3571.i.i, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit550.i.i" ], [ %.sroa.14.3571.i.i, %.thread163.loopexit.i.i ], [ %.sroa.14.3571.i.i, %.thread163.loopexit.split-lp.loopexit.i.i ], [ %.sroa.14.5.ph.ph.ph.i.i, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i ]
  %.sroa.016.4128189.i.i = phi ptr [ %.sroa.016.4154.i.i, %bb.bn ], [ %.sroa.016.7.i.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit548.i.i" ], [ %.sroa.016.7.i.i, %bb.db ], [ %.sroa.016.3572.i.i, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit550.i.i" ], [ %.sroa.016.3572.i.i, %.thread163.loopexit.i.i ], [ %.sroa.016.3572.i.i, %.thread163.loopexit.split-lp.loopexit.i.i ], [ %.sroa.016.5.ph.ph.ph.i.i, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.044.0122201.i.i) ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.044.0122201.i.i) #38, !noalias !34365
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i"

bb.bo:                                            ; preds = %bb.bs, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.i.i"
  %i.mk = phi i64 [ 1, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.i.i" ], [ %i.mu, %bb.bs ] ; 6 uses
  %.sroa.0107.0614.i.i = phi i32 [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.i.i" ], [ %.sroa.0107.1.i.i, %bb.bs ]
  %.sroa.0109.0613.i.i = phi i64 [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.i.i" ], [ %.sroa.0109.1.i.i, %bb.bs ] ; 8 uses
  %.sroa.0113.0612.i.i = phi i8 [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.i.i" ], [ %.sroa.0113.1.i.i, %bb.bs ] ; 2 uses
  %.sroa.0143.0611.i.i = phi i64 [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.i.i" ], [ %i.mk, %bb.bs ] ; 3 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i, i64 %.sroa.0143.0611.i.i
  %i.mm = load i32, ptr %i.ml, align 4, !noalias !34365, !noundef !27
  %i.mn = add i32 %i.mm, %.sroa.0107.0614.i.i     ; 2 uses
  %i.mo = icmp eq i64 %i.mk, %.sroa.0.0.i.i       ; 2 uses
  br i1 %i.mo, label %._crit_edge850.i.i, label %bb.bq

._crit_edge850.i.i:                               ; preds = %bb.bo
  %.phi.trans.insert.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %.sroa.0143.0611.i.i
  %.pre851.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !noalias !34365
  br label %bb.bt

bb.bp:                                            ; preds = %bb.dd, %bb.cv, %bb.cn
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %i.mp = icmp ult i64 %i.mk, %.sroa.0.0.i.i
  br i1 %i.mp, label %bb.br, label %.invoke1134.i.i

bb.br:                                            ; preds = %bb.bq
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %.sroa.0143.0611.i.i
  %i.mr = load i32, ptr %i.mq, align 4, !noalias !34365, !noundef !27 ; 2 uses
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.mk
  %i.mt = load i32, ptr %i.ms, align 4, !noalias !34365, !noundef !27
  %.not223.i.i = icmp eq i32 %i.mr, %i.mt
  br i1 %.not223.i.i, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.bw, %bb.br
  %.sroa.0113.1.i.i = phi i8 [ %.sroa.0.0.i511.i.i, %bb.bw ], [ %.sroa.0113.0612.i.i, %bb.br ] ; 2 uses
  %.sroa.0109.1.i.i = phi i64 [ %i.ni, %bb.bw ], [ %.sroa.0109.0613.i.i, %bb.br ] ; 2 uses
  %.sroa.0107.1.i.i = phi i32 [ 0, %bb.bw ], [ %i.mn, %bb.br ]
  %i.mu = add i64 %i.mk, 1
  br i1 %i.mo, label %_ZN6brotli3enc14block_splitter15SplitByteVector17hd353c100c5629803E.exit, label %bb.bo

bb.bt:                                            ; preds = %bb.br, %._crit_edge850.i.i
  %i.mv = phi i32 [ %.pre851.i.i, %._crit_edge850.i.i ], [ %i.mr, %bb.br ]
  %i.mw = zext i32 %i.mv to i64                   ; 3 uses
  %i.mx = icmp samesign ugt i64 %i.uo, %i.mw
  br i1 %i.mx, label %bb.bu, label %.invoke1134.i.i

bb.bu:                                            ; preds = %bb.bt
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %i.mw
  %i.mz = load i32, ptr %i.my, align 4, !noalias !34365, !noundef !27
  %i.na = trunc i32 %i.mz to i8                   ; 2 uses
  %i.nb = icmp ult i64 %.sroa.0109.0613.i.i, %.val270.i.i
  br i1 %i.nb, label %bb.bv, label %.invoke1134.i.i

bb.bv:                                            ; preds = %bb.bu
  %i.nc = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0109.0613.i.i
  store i8 %i.na, ptr %i.nc, align 1, !noalias !34365
  %i.nd = icmp ult i64 %.sroa.0109.0613.i.i, %.val340.i.i
  br i1 %i.nd, label %bb.bw, label %.invoke1134.i.i

.invoke1134.i.i:                                  ; preds = %bb.bv, %bb.bu, %bb.bt, %bb.bq
  %i.ne = phi i64 [ %.sroa.0109.0613.i.i, %bb.bu ], [ %i.mw, %bb.bt ], [ %i.mk, %bb.bq ], [ %.sroa.0109.0613.i.i, %bb.bv ]
  %i.nf = phi i64 [ %.val270.i.i, %bb.bu ], [ %i.uo, %bb.bt ], [ %.sroa.0.0.i.i, %bb.bq ], [ %.val340.i.i, %bb.bv ]
  %i.ng = phi ptr [ @1550, %bb.bu ], [ @1549, %bb.bt ], [ @1548, %bb.bq ], [ @1551, %bb.bv ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ne, i64 noundef %i.nf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ng) #43
          to label %.cont1135.i.i unwind label %bb.az, !noalias !34365

.cont1135.i.i:                                    ; preds = %.invoke1134.i.i
  unreachable

bb.bw:                                            ; preds = %bb.bv
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %.val339.i.i, i64 %.sroa.0109.0613.i.i
  store i32 %i.mn, ptr %i.nh, align 4, !noalias !34365
  %.sroa.0.0.i511.i.i = tail call noundef i8 @llvm.umax.i8(i8 %i.na, i8 %.sroa.0113.0612.i.i)
  %i.ni = add nuw i64 %.sroa.0109.0613.i.i, 1
  br label %bb.bs

bb.bx:                                            ; preds = %bb.cb, %.preheader.split.i.i
  %.sroa.0137.1610.i.i = phi i64 [ 1, %.preheader.split.i.i ], [ %.sroa.0137.1.i.i, %bb.cb ] ; 3 uses
  %.sroa.043.1609.i.i = phi i64 [ 0, %.preheader.split.i.i ], [ %.sroa.043.2.lcssa.i8590848.i, %bb.cb ] ; 4 uses
  %.sroa.084.0608.i.i = phi i32 [ 0, %.preheader.split.i.i ], [ %.sroa.084.1.i.i, %bb.cb ] ; 3 uses
  %.sroa.0137.0607.i.i = phi i64 [ 0, %.preheader.split.i.i ], [ %.sroa.0137.1610.i.i, %bb.cb ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !34365
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ak, i8 0, i64 1032, i1 false), !noalias !34365
  store float 3.402000e+38, ptr %i.lh, align 8, !alias.scope !34450, !noalias !34365
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i, i64 %.sroa.0137.0607.i.i
  %i.nk = load i32, ptr %i.nj, align 4, !noalias !34365, !noundef !27 ; 2 uses
  %i.nl = zext i32 %i.nk to i64                   ; 2 uses
  %.not618.i.i = icmp eq i32 %i.nk, 0
  br i1 %.not618.i.i, label %._crit_edge595.i.thread.i, label %.lr.ph594.preheader.i.i

.loopexit.split-lp.thread.i.i:                    ; preds = %.noexc240.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i"

.loopexit.split-lp.loopexit.i.i:                  ; preds = %.noexc246.i.i
  %lpad.loopexit250.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.i.i:         ; preds = %.invoke1136.i.i
  %lpad.loopexit.split-lp251.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.lr.ph594.preheader.i.i:                          ; preds = %bb.bx
  %i.nm = tail call i64 @llvm.usub.sat.i64(i64 %i.aq, i64 %.sroa.043.1609.i.i)
  br label %.lr.ph594.i.i

.lr.ph594.i.i:                                    ; preds = %bb.cf, %.lr.ph594.preheader.i.i
  %.sroa.043.2592.i.i = phi i64 [ %i.su, %bb.cf ], [ %.sroa.043.1609.i.i, %.lr.ph594.preheader.i.i ] ; 3 uses
  %i.nn = phi i64 [ %i.st, %bb.cf ], [ 0, %.lr.ph594.preheader.i.i ] ; 2 uses
  %exitcond839.not.i.i = icmp eq i64 %i.nn, %i.nm
  br i1 %exitcond839.not.i.i, label %.invoke1136.i.i, label %bb.cf

._crit_edge595.i.i:                               ; preds = %bb.cf
  store i64 %i.nl, ptr %i.lg, align 8, !noalias !34365
  %i.no = icmp eq i64 %.sroa.0137.0607.i.i, 0
  %i.np = getelementptr [4 x i8], ptr %i.ho, i64 %.sroa.0137.0607.i.i ; 3 uses
  %i.nq = getelementptr i8, ptr %i.np, i64 -4
  %.sroa.097.0.in.i.i = select i1 %i.no, ptr %i.ho, ptr %i.nq
  %.sroa.097.0.i.i = load i32, ptr %.sroa.097.0.in.i.i, align 4, !noalias !34365, !noundef !27 ; 3 uses
  %i.nr = zext i32 %.sroa.097.0.i.i to i64        ; 4 uses
  %i.ns = icmp ugt i64 %.sroa.14.7.i.i, %i.nr
  br i1 %i.ns, label %.noexc244.i.i, label %.invoke1136.i.i

._crit_edge595.i.thread.i:                        ; preds = %bb.bx
  %i.nt = icmp eq i64 %.sroa.0137.0607.i.i, 0
  %i.nu = getelementptr [4 x i8], ptr %i.ho, i64 %.sroa.0137.0607.i.i ; 3 uses
  %i.nv = getelementptr i8, ptr %i.nu, i64 -4
  %.sroa.097.0.in.i83.i = select i1 %i.nt, ptr %i.ho, ptr %i.nv
  %.sroa.097.0.i84.i = load i32, ptr %.sroa.097.0.in.i83.i, align 4, !noalias !34365, !noundef !27 ; 3 uses
  %i.nw = zext i32 %.sroa.097.0.i84.i to i64      ; 4 uses
  %i.nx = icmp ugt i64 %.sroa.14.7.i.i, %i.nw
  br i1 %i.nx, label %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h99ee51219cdbd5f5E.exit249.i.thread.i, label %.invoke1136.i.i

.noexc244.i.i:                                    ; preds = %._crit_edge595.i.i
end_hunk_0
begin_hunk_1_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
  br i1 %i.bcf, label %bb.ie, label %bb.ig

bb.ie:                                            ; preds = %bb.id
  %i.bcg = shl i64 %i.bce, 4                      ; 5 uses
  %i.bch = icmp ugt i64 %.sroa.0.0.i448.i.i294, 1152921504606846974
  %i.bci = icmp ugt i64 %i.bcg, 9223372036854775804
  %or.cond.i.i.i.i.i449.i.i376 = or i1 %i.bch, %i.bci
  br i1 %or.cond.i.i.i.i.i449.i.i376, label %bb.if, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i377, !prof !3798

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i377: ; preds = %bb.ie
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34843
  %i.bcj = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.bcg, i64 noundef range(i64 1, 9) 4) #38, !noalias !34843 ; 5 uses
  %i.bck = icmp eq ptr %i.bcj, null
  br i1 %i.bck, label %bb.if, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i378"

bb.if:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i377, %bb.ie
  %.sroa.4.0.ph.i.i.i455.i.i383 = phi i64 [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i377 ], [ 0, %bb.ie ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i455.i.i383, i64 %i.bcg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc456.i.i384 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i230, !noalias !34805

.noexc456.i.i384:                                 ; preds = %bb.if
  unreachable

bb.ig:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i378", %bb.id
  %.sroa.11.2.i.i295 = phi i64 [ %i.bce, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i378" ], [ 2049, %bb.id ]
  %.sroa.044.2.i.i296 = phi ptr [ %i.bcj, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i378" ], [ %i.bbv, %bb.id ] ; 4 uses
  %i.bcl = shl i64 %i.bng, 2                      ; 9 uses
  %i.bcm = icmp ugt i64 %i.bng, 4611686018427387903
  %i.bcn = icmp ugt i64 %i.bcl, 9223372036854775804
  %or.cond.i.i.i.i458.i.i297 = or i1 %i.bcm, %i.bcn
  br i1 %or.cond.i.i.i.i458.i.i297, label %bb.ij, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i298, !prof !3798

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i298: ; preds = %bb.ig
  %i.bco = icmp eq i64 %i.bcl, 0                  ; 2 uses
  br i1 %i.bco, label %bb.ik, label %bb.ih

bb.ih:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i298
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34851
  %i.bcp = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.bcl, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !34851 ; 2 uses
  %i.bcq = icmp eq ptr %i.bcp, null
  br i1 %i.bcq, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.bcr = ptrtoint ptr %i.bcp to i64
  br label %bb.ik

bb.ij:                                            ; preds = %bb.ih, %bb.ig
  %.sroa.4.0.ph.i.i461.i.i374 = phi i64 [ 4, %bb.ih ], [ 0, %bb.ig ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i461.i.i374, i64 %i.bcl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc462.i.i375 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i230, !noalias !34805

.noexc462.i.i375:                                 ; preds = %bb.ij
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i378": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i377
  %i.bcs = add nsw i64 %i.bcg, -16                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bcj, i8 0, i64 %i.bcs, i1 false), !noalias !34856
  %i.bct = getelementptr i8, ptr %i.bcj, i64 %i.bcg ; 2 uses
  %scevgep11.i451.i.i379 = getelementptr i8, ptr %i.bcj, i64 %i.bcs
  store i32 0, ptr %scevgep11.i451.i.i379, align 4, !noalias !34856
  %.sroa.55.0..sroa_idx.i452.i.i380 = getelementptr i8, ptr %i.bct, i64 -12
  store i32 0, ptr %.sroa.55.0..sroa_idx.i452.i.i380, align 4, !noalias !34856
  %.sroa.67.0..sroa_idx.i453.i.i381 = getelementptr i8, ptr %i.bct, i64 -8
  store <2 x float> zeroinitializer, ptr %.sroa.67.0..sroa_idx.i453.i.i381, align 4, !noalias !34856
  %i.bcu = icmp samesign ult i64 %.sroa.0.0.i448.i.i294, 576460752303423487
  tail call void @llvm.assume(i1 %i.bcu)
  tail call void @mi_free(ptr noundef nonnull align 4 %i.bbv) #38, !noalias !34805
  br label %bb.ig

bb.ik:                                            ; preds = %bb.ii, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i298
  %.sroa.10.0.i.i460.i.i299 = phi i64 [ %i.bcr, %bb.ii ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i298 ]
  %i.bcv = inttoptr i64 %.sroa.10.0.i.i460.i.i299 to ptr ; 13 uses
  %i.bcw = icmp samesign ult i64 %i.bng, 2305843009213693952
  tail call void @llvm.assume(i1 %i.bcw)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bcv) ]
  %i.bcx = getelementptr inbounds nuw i8, ptr %i.bcv, i64 %i.bcl
  %i.bcy = icmp eq i64 %i.bng, 0                  ; 3 uses
  br i1 %i.bcy, label %._crit_edge598.i.i, label %.lr.ph597.i.i.preheader

.lr.ph597.i.i.preheader:                          ; preds = %bb.ik
  %i.bcz = add nsw i64 %i.bcl, -4                 ; 2 uses
  %i.bda = lshr exact i64 %i.bcz, 2
  %i.bdb = add nuw nsw i64 %i.bda, 1              ; 2 uses
  %min.iters.check3843 = icmp ult i64 %i.bcz, 28
  br i1 %min.iters.check3843, label %.lr.ph597.i.i.preheader4241, label %vector.ph3844

vector.ph3844:                                    ; preds = %.lr.ph597.i.i.preheader
  %n.vec3845 = and i64 %i.bdb, 9223372036854775800 ; 4 uses
  %i.bdc = trunc i64 %n.vec3845 to i32
  %i.bdd = shl i64 %n.vec3845, 2
  %i.bde = getelementptr i8, ptr %i.bcv, i64 %i.bdd
  br label %vector.body3846

vector.body3846:                                  ; preds = %vector.body3846, %vector.ph3844
  %index3847 = phi i64 [ 0, %vector.ph3844 ], [ %index.next3851, %vector.body3846 ] ; 2 uses
  %vec.ind3848 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph3844 ], [ %vec.ind.next3852, %vector.body3846 ] ; 3 uses
  %step.add3849 = add <4 x i32> %vec.ind3848, splat (i32 4)
  %i.bdf = shl i64 %index3847, 2
  %next.gep3850 = getelementptr i8, ptr %i.bcv, i64 %i.bdf ; 2 uses
  %i.bdg = getelementptr i8, ptr %next.gep3850, i64 16
  store <4 x i32> %vec.ind3848, ptr %next.gep3850, align 4, !noalias !34805
  store <4 x i32> %step.add3849, ptr %i.bdg, align 4, !noalias !34805
  %index.next3851 = add nuw i64 %index3847, 8     ; 2 uses
  %vec.ind.next3852 = add <4 x i32> %vec.ind3848, splat (i32 8)
  %i.bdh = icmp eq i64 %index.next3851, %n.vec3845
  br i1 %i.bdh, label %middle.block3853, label %vector.body3846, !llvm.loop !34859

middle.block3853:                                 ; preds = %vector.body3846
  %cmp.n3854 = icmp eq i64 %i.bdb, %n.vec3845
  br i1 %cmp.n3854, label %._crit_edge598.i.i, label %.lr.ph597.i.i.preheader4241

.lr.ph597.i.i.preheader4241:                      ; preds = %.lr.ph597.i.i.preheader, %middle.block3853
  %.sroa.047.2595.i.i.ph = phi i32 [ 0, %.lr.ph597.i.i.preheader ], [ %i.bdc, %middle.block3853 ]
  %.sroa.0135.0594.i.i.ph = phi ptr [ %i.bcv, %.lr.ph597.i.i.preheader ], [ %i.bde, %middle.block3853 ]
  br label %.lr.ph597.i.i

.lr.ph597.i.i:                                    ; preds = %.lr.ph597.i.i.preheader4241, %.lr.ph597.i.i
  %.sroa.047.2595.i.i = phi i32 [ %i.bdi, %.lr.ph597.i.i ], [ %.sroa.047.2595.i.i.ph, %.lr.ph597.i.i.preheader4241 ] ; 2 uses
  %.sroa.0135.0594.i.i = phi ptr [ %.sroa.0135.1.i.i300, %.lr.ph597.i.i ], [ %.sroa.0135.0594.i.i.ph, %.lr.ph597.i.i.preheader4241 ] ; 2 uses
  %.sroa.0135.1.i.i300 = getelementptr inbounds nuw i8, ptr %.sroa.0135.0594.i.i, i64 4 ; 2 uses
  store i32 %.sroa.047.2595.i.i, ptr %.sroa.0135.0594.i.i, align 4, !noalias !34805
  %i.bdi = add i32 %.sroa.047.2595.i.i, 1
  %i.bdj = icmp eq ptr %.sroa.0135.1.i.i300, %i.bcx
  br i1 %i.bdj, label %._crit_edge598.i.i, label %.lr.ph597.i.i, !llvm.loop !34860

._crit_edge598.i.i:                               ; preds = %.lr.ph597.i.i, %middle.block3853, %bb.ik
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.7.i.i285) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.5.i.i288) ]
  %i.bdk = invoke fastcc noundef i64 @_ZN6brotli3enc7cluster22BrotliHistogramCombine17h357bcc83faeb8dfbE(ptr noalias noundef nonnull align 8 %.sroa.016.7.i.i285, i64 noundef %.sroa.14.7.i.i284, ptr noalias noundef nonnull align 4 %.sroa.026.5.i.i288, i64 noundef %.sroa.12.5.i.i287, ptr noalias noundef nonnull align 4 %i.azz, i64 noundef %.sroa.0.0.i.i204, ptr noalias noundef nonnull align 4 %i.bcv, i64 noundef %i.bng, ptr noalias noundef nonnull align 4 %.sroa.044.2.i.i296, i64 noundef %.sroa.11.2.i.i295, i64 noundef %i.bng, i64 noundef %.sroa.0.0.i.i204, i64 noundef 256, i64 noundef %.sroa.0.0.i448.i.i294)
          to label %bb.il unwind label %bb.ic, !noalias !34805 ; 3 uses

bb.il:                                            ; preds = %._crit_edge598.i.i
  tail call void @mi_free(ptr noundef nonnull align 4 %.sroa.044.2.i.i296) #38, !noalias !34805
  %i.bdl = icmp eq i64 %.sroa.12.5.i.i287, 0
  br i1 %i.bdl, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i317, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i316"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i316": ; preds = %bb.il
  tail call void @mi_free(ptr noundef nonnull align 4 %.sroa.026.5.i.i288) #38, !noalias !34805
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i317

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i317: ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i316", %bb.il
  br i1 %i.bco, label %bb.iq, label %bb.im

bb.im:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i317
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34861
  %i.bdm = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.bcl, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !34861 ; 2 uses
  %i.bdn = icmp eq ptr %i.bdm, null
  br i1 %i.bdn, label %bb.io, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.bdo = ptrtoint ptr %i.bdm to i64
  br label %bb.iq

bb.io:                                            ; preds = %bb.im
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.bcl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc472.i.i373 unwind label %bb.ic, !noalias !34805

.noexc472.i.i373:                                 ; preds = %bb.io
  unreachable

bb.ip:                                            ; preds = %.invoke1170.i.i, %.invoke1168.i.i
  %i.bdp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i322

bb.iq:                                            ; preds = %bb.in, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i317
  %.sroa.10.0.i.i470.i.i318 = phi i64 [ %i.bdo, %bb.in ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i317 ]
  %i.bdq = inttoptr i64 %.sroa.10.0.i.i470.i.i318 to ptr ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bdq) ]
  br i1 %i.bcy, label %.preheader.split.i.i319, label %.lr.ph601.preheader.i.i

.lr.ph601.preheader.i.i:                          ; preds = %bb.iq
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bdq, i8 -1, i64 %i.bcl, i1 false), !noalias !34805
  br label %.preheader.split.i.i319

.preheader.split.i.i319:                          ; preds = %.lr.ph601.preheader.i.i, %bb.iq
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.w, i64 2816 ; 2 uses
  %i.bds = getelementptr inbounds nuw i8, ptr %i.w, i64 2824
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.u, i64 2816 ; 3 uses
  %.not1175.i.i = icmp eq i64 %i.bdk, 0           ; 2 uses
  %i.bdu = getelementptr inbounds nuw i8, ptr %i.v, i64 2816 ; 3 uses
  br label %bb.jn

bb.ir:                                            ; preds = %bb.jr
  tail call void @mi_free(ptr noundef nonnull align 4 %i.bcv) #38, !noalias !34805
  tail call void @mi_free(ptr noundef nonnull align 8 %.sroa.016.7.i.i285) #38, !noalias !34805
  %.val365.i.i347 = load ptr, ptr %8, align 8, !alias.scope !34866, !noalias !34867, !nonnull !27, !align !206, !noundef !27 ; 3 uses
  %i.bdv = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %.val366.i.i348 = load i64, ptr %i.bdv, align 8, !alias.scope !34866, !noalias !34867, !noundef !27 ; 5 uses
  %i.bdw = icmp ult i64 %.val366.i.i348, %.sroa.0.0.i.i204
  br i1 %i.bdw, label %bb.is, label %bb.iw

bb.is:                                            ; preds = %bb.ir
  %i.bdx = icmp eq i64 %.val366.i.i348, 0         ; 2 uses
  %spec.select.i170.i = select i1 %i.bdx, i64 %.sroa.0.0.i.i204, i64 %.val366.i.i348
  br label %bb.it

bb.it:                                            ; preds = %bb.it, %bb.is
  %.sroa.0101.1.i.i368 = phi i64 [ %spec.select.i170.i, %bb.is ], [ %i.bdz, %bb.it ] ; 9 uses
  %i.bdy = icmp ult i64 %.sroa.0101.1.i.i368, %.sroa.0.0.i.i204
  %i.bdz = shl nsw i64 %.sroa.0101.1.i.i368, 1
  br i1 %i.bdy, label %bb.it, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.bea = icmp slt i64 %.sroa.0101.1.i.i368, 0
  br i1 %i.bea, label %.invoke1168.i.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i369, !prof !3798

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i369: ; preds = %bb.iu
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34868
  %i.beb = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %.sroa.0101.1.i.i368, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !34868 ; 5 uses
  %i.bec = icmp eq ptr %i.beb, null
  br i1 %i.bec, label %.invoke1168.i.i, label %bb.iv

bb.iv:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i369
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.beb, ptr nonnull readonly align 1 %.val365.i.i347, i64 %.val366.i.i348, i1 false), !alias.scope !34873, !noalias !34877
  store ptr %i.beb, ptr %8, align 8, !alias.scope !34866, !noalias !34867
  store i64 %.sroa.0101.1.i.i368, ptr %i.bdv, align 8, !alias.scope !34866, !noalias !34867
  br i1 %i.bdx, label %bb.iw, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i483.i.i370"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i483.i.i370": ; preds = %bb.iv
  tail call void @mi_free(ptr noundef nonnull align 1 %.val365.i.i347) #38, !noalias !34805
  br label %bb.iw

bb.iw:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i483.i.i370", %bb.iv, %bb.ir
  %.val.i.i349 = phi ptr [ %.val365.i.i347, %bb.ir ], [ %i.beb, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i483.i.i370" ], [ %i.beb, %bb.iv ]
  %.val270.i.i350 = phi i64 [ %.val366.i.i348, %bb.ir ], [ %.sroa.0101.1.i.i368, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i483.i.i370" ], [ %.sroa.0101.1.i.i368, %bb.iv ] ; 2 uses
  %i.bed = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %.val309.i.i351 = load ptr, ptr %i.bed, align 8, !alias.scope !34866, !noalias !34867, !nonnull !27, !align !603, !noundef !27 ; 3 uses
  %i.bee = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %.val310.i.i352 = load i64, ptr %i.bee, align 8, !alias.scope !34866, !noalias !34867, !noundef !27 ; 5 uses
  %i.bef = icmp ult i64 %.val310.i.i352, %.sroa.0.0.i.i204
  br i1 %i.bef, label %bb.ix, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.i.i353"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.i.i353": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i492.i.i367", %bb.jc, %bb.iw
  %.val339.i.i354 = phi ptr [ %i.bes, %bb.jc ], [ %i.bes, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i492.i.i367" ], [ %.val309.i.i351, %bb.iw ]
  %.val340.i.i355 = phi i64 [ %.sroa.0104.1.i.i363, %bb.jc ], [ %.sroa.0104.1.i.i363, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i492.i.i367" ], [ %.val310.i.i352, %bb.iw ] ; 2 uses
  br label %bb.je

bb.ix:                                            ; preds = %bb.iw
  %i.beg = icmp eq i64 %.val310.i.i352, 0         ; 2 uses
  %spec.select247.i.i362 = select i1 %i.beg, i64 %.sroa.0.0.i.i204, i64 %.val310.i.i352
  br label %bb.iy

bb.iy:                                            ; preds = %bb.iy, %bb.ix
  %.sroa.0104.1.i.i363 = phi i64 [ %spec.select247.i.i362, %bb.ix ], [ %i.bei, %bb.iy ] ; 8 uses
  %i.beh = icmp ult i64 %.sroa.0104.1.i.i363, %.sroa.0.0.i.i204
  %i.bei = shl nsw i64 %.sroa.0104.1.i.i363, 1
  br i1 %i.beh, label %bb.iy, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.bej = shl i64 %.sroa.0104.1.i.i363, 2        ; 5 uses
  %i.bek = icmp ugt i64 %.sroa.0104.1.i.i363, 4611686018427387903
  %i.bel = icmp ugt i64 %i.bej, 9223372036854775804
  %or.cond.i.i.i.i484.i.i364 = or i1 %i.bek, %i.bel
  br i1 %or.cond.i.i.i.i484.i.i364, label %.invoke1168.i.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i485.i.i365, !prof !3798

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i485.i.i365: ; preds = %bb.iz
  %i.bem = icmp eq i64 %i.bej, 0
  br i1 %i.bem, label %bb.jc, label %bb.ja

bb.ja:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i485.i.i365
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34879
  %i.ben = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.bej, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !34879 ; 2 uses
  %i.beo = icmp eq ptr %i.ben, null
  br i1 %i.beo, label %.invoke1168.i.i, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.bep = ptrtoint ptr %i.ben to i64
  br label %bb.jc

.invoke1168.i.i:                                  ; preds = %bb.ja, %bb.iz, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i369, %bb.iu
  %i.beq = phi i64 [ 0, %bb.iu ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i369 ], [ 4, %bb.ja ], [ 0, %bb.iz ]
  %i.ber = phi i64 [ %.sroa.0101.1.i.i368, %bb.iu ], [ %.sroa.0101.1.i.i368, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i369 ], [ %i.bej, %bb.ja ], [ %i.bej, %bb.iz ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.beq, i64 %i.ber, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.cont1169.i.i unwind label %bb.ip, !noalias !34805

.cont1169.i.i:                                    ; preds = %.invoke1168.i.i
  unreachable

bb.jc:                                            ; preds = %bb.jb, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i485.i.i365
  %.sroa.10.0.i.i486.i.i366 = phi i64 [ %i.bep, %bb.jb ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i485.i.i365 ]
  %i.bes = inttoptr i64 %.sroa.10.0.i.i486.i.i366 to ptr ; 5 uses
  %i.bet = icmp samesign ult i64 %.sroa.0104.1.i.i363, 2305843009213693952
  tail call void @llvm.assume(i1 %i.bet)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bes) ]
  %i.beu = shl nuw nsw i64 %.val310.i.i352, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bes, ptr nonnull readonly align 4 %.val309.i.i351, i64 %i.beu, i1 false), !alias.scope !34884, !noalias !34888
  store ptr %i.bes, ptr %i.bed, align 8, !alias.scope !34866, !noalias !34867
  store i64 %.sroa.0104.1.i.i363, ptr %i.bee, align 8, !alias.scope !34866, !noalias !34867
  br i1 %i.beg, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.i.i353", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i492.i.i367"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i492.i.i367": ; preds = %bb.jc
  tail call void @mi_free(ptr noundef nonnull align 4 %.val309.i.i351) #38, !noalias !34805
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.i.i353"

bb.jd:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i554.i.i", %.thread130.i.i306
  br i1 %.sroa.11.0147.i.i313, label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit446.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i239"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i239": ; preds = %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit551.i.i", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit549.i.i", %bb.ks, %bb.jd, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i230, %.thread163.loopexit.split-lp.loopexit.i.i282, %.thread163.loopexit.i.i278
  %.pn230.pn202.i.i240 = phi { ptr, i32 } [ %.pn230155.i.i307, %bb.jd ], [ %i.bor, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit549.i.i" ], [ %i.boa, %bb.ks ], [ %i.bos, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit551.i.i" ], [ %lpad.loopexit255.i.i279, %.thread163.loopexit.i.i278 ], [ %lpad.loopexit258.i.i283, %.thread163.loopexit.split-lp.loopexit.i.i282 ], [ %lpad.loopexit.split-lp259.i.i238, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i230 ]
  %.sroa.044.0122201.i.i241 = phi ptr [ %.sroa.044.0148.i.i312, %bb.jd ], [ %i.bbv, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit549.i.i" ], [ %i.bbv, %bb.ks ], [ %i.bbv, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit551.i.i" ], [ %i.bbv, %.thread163.loopexit.i.i278 ], [ %i.bbv, %.thread163.loopexit.split-lp.loopexit.i.i282 ], [ %.sroa.044.1.ph.ph.ph.i.i231, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i230 ] ; 2 uses
  %.sroa.1335.1123199.i.i242 = phi i64 [ 0, %bb.jd ], [ %.sroa.0.0.i422.i.i219, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit549.i.i" ], [ %.sroa.0.0.i422.i.i219, %bb.ks ], [ %.sroa.0.0.i422.i.i219, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit551.i.i" ], [ %.sroa.0.0.i422.i.i219, %.thread163.loopexit.i.i278 ], [ %.sroa.0.0.i422.i.i219, %.thread163.loopexit.split-lp.loopexit.i.i282 ], [ %.sroa.1335.2.ph.ph.ph.i.i232, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i230 ]
  %.sroa.034.1124197.i.i243 = phi ptr [ inttoptr (i64 8 to ptr), %bb.jd ], [ %.sroa.10.0.i.i.i427933.i.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit549.i.i" ], [ %.sroa.10.0.i.i.i427933.i.i, %bb.ks ], [ %.sroa.10.0.i.i.i427933.i.i, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit551.i.i" ], [ %.sroa.10.0.i.i.i427933.i.i, %.thread163.loopexit.i.i278 ], [ %.sroa.10.0.i.i.i427933.i.i, %.thread163.loopexit.split-lp.loopexit.i.i282 ], [ %.sroa.034.2.ph.ph.ph.i.i233, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i230 ]
  %.sroa.12.3125195.i.i244 = phi i64 [ %.sroa.12.3151.i.i311, %bb.jd ], [ %.sroa.12.2583.i.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit549.i.i" ], [ %.sroa.12.5.i.i287, %bb.ks ], [ %.sroa.12.2583.i.i, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit551.i.i" ], [ %.sroa.12.2583.i.i, %.thread163.loopexit.i.i278 ], [ %.sroa.12.2583.i.i, %.thread163.loopexit.split-lp.loopexit.i.i282 ], [ %.sroa.12.4.ph.ph.ph.i.i234, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i230 ]
  %.sroa.026.3126193.i.i245 = phi ptr [ %.sroa.026.3152.i.i310, %bb.jd ], [ %.sroa.026.2584.i.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit549.i.i" ], [ %.sroa.026.5.i.i288, %bb.ks ], [ %.sroa.026.2584.i.i, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit551.i.i" ], [ %.sroa.026.2584.i.i, %.thread163.loopexit.i.i278 ], [ %.sroa.026.2584.i.i, %.thread163.loopexit.split-lp.loopexit.i.i282 ], [ %.sroa.026.4.ph.ph.ph.i.i235, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i230 ]
  %.sroa.14.4127191.i.i246 = phi i64 [ %.sroa.14.4153.i.i309, %bb.jd ], [ %.sroa.14.7.i.i284, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit549.i.i" ], [ %.sroa.14.7.i.i284, %bb.ks ], [ %.sroa.14.3585.i.i, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit551.i.i" ], [ %.sroa.14.3585.i.i, %.thread163.loopexit.i.i278 ], [ %.sroa.14.3585.i.i, %.thread163.loopexit.split-lp.loopexit.i.i282 ], [ %.sroa.14.5.ph.ph.ph.i.i236, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i230 ]
  %.sroa.016.4128189.i.i247 = phi ptr [ %.sroa.016.4154.i.i308, %bb.jd ], [ %.sroa.016.7.i.i285, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit549.i.i" ], [ %.sroa.016.7.i.i285, %bb.ks ], [ %.sroa.016.3586.i.i, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit551.i.i" ], [ %.sroa.016.3586.i.i, %.thread163.loopexit.i.i278 ], [ %.sroa.016.3586.i.i, %.thread163.loopexit.split-lp.loopexit.i.i282 ], [ %.sroa.016.5.ph.ph.ph.i.i237, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i230 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.044.0122201.i.i241) ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.044.0122201.i.i241) #38, !noalias !34805
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i248"

bb.je:                                            ; preds = %bb.ji, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.i.i353"
  %i.bev = phi i64 [ 1, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.i.i353" ], [ %i.bff, %bb.ji ] ; 6 uses
  %.sroa.0107.0624.i.i = phi i32 [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.i.i353" ], [ %.sroa.0107.1.i.i360, %bb.ji ]
  %.sroa.0109.0623.i.i = phi i64 [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.i.i353" ], [ %.sroa.0109.1.i.i359, %bb.ji ] ; 8 uses
  %.sroa.0113.0622.i.i = phi i8 [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.i.i353" ], [ %.sroa.0113.1.i.i358, %bb.ji ] ; 2 uses
  %.sroa.0143.0621.i.i = phi i64 [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.i.i353" ], [ %i.bev, %bb.ji ] ; 3 uses
  %i.bew = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i207, i64 %.sroa.0143.0621.i.i
  %i.bex = load i32, ptr %i.bew, align 4, !noalias !34805, !noundef !27
  %i.bey = add i32 %i.bex, %.sroa.0107.0624.i.i   ; 2 uses
  %i.bez = icmp eq i64 %i.bev, %.sroa.0.0.i.i204  ; 2 uses
  br i1 %i.bez, label %._crit_edge870.i.i, label %bb.jg

._crit_edge870.i.i:                               ; preds = %bb.je
  %.phi.trans.insert.i.i361 = getelementptr inbounds nuw [4 x i8], ptr %i.azz, i64 %.sroa.0143.0621.i.i
  %.pre871.i.i = load i32, ptr %.phi.trans.insert.i.i361, align 4, !noalias !34805
  br label %bb.jj

bb.jf:                                            ; preds = %bb.ku, %bb.km, %bb.ke
  unreachable

bb.jg:                                            ; preds = %bb.je
  %i.bfa = icmp ult i64 %i.bev, %.sroa.0.0.i.i204
  br i1 %i.bfa, label %bb.jh, label %.invoke1170.i.i

bb.jh:                                            ; preds = %bb.jg
  %i.bfb = getelementptr inbounds nuw [4 x i8], ptr %i.azz, i64 %.sroa.0143.0621.i.i
  %i.bfc = load i32, ptr %i.bfb, align 4, !noalias !34805, !noundef !27 ; 2 uses
  %i.bfd = getelementptr inbounds nuw [4 x i8], ptr %i.azz, i64 %i.bev
  %i.bfe = load i32, ptr %i.bfd, align 4, !noalias !34805, !noundef !27
  %.not223.i.i356 = icmp eq i32 %i.bfc, %i.bfe
  br i1 %.not223.i.i356, label %bb.ji, label %bb.jj

bb.ji:                                            ; preds = %bb.jm, %bb.jh
  %.sroa.0113.1.i.i358 = phi i8 [ %.sroa.0.0.i511.i.i357, %bb.jm ], [ %.sroa.0113.0622.i.i, %bb.jh ] ; 2 uses
  %.sroa.0109.1.i.i359 = phi i64 [ %i.bft, %bb.jm ], [ %.sroa.0109.0623.i.i, %bb.jh ] ; 2 uses
  %.sroa.0107.1.i.i360 = phi i32 [ 0, %bb.jm ], [ %i.bey, %bb.jh ]
  %i.bff = add i64 %i.bev, 1
  br i1 %i.bez, label %_ZN6brotli3enc14block_splitter15SplitByteVector17he88e5a9ef69dcbe2E.exit, label %bb.je

bb.jj:                                            ; preds = %bb.jh, %._crit_edge870.i.i
  %i.bfg = phi i32 [ %.pre871.i.i, %._crit_edge870.i.i ], [ %i.bfc, %bb.jh ]
  %i.bfh = zext i32 %i.bfg to i64                 ; 3 uses
  %i.bfi = icmp samesign ugt i64 %i.bng, %i.bfh
  br i1 %i.bfi, label %bb.jk, label %.invoke1170.i.i

bb.jk:                                            ; preds = %bb.jj
  %i.bfj = getelementptr inbounds nuw [4 x i8], ptr %i.bdq, i64 %i.bfh
  %i.bfk = load i32, ptr %i.bfj, align 4, !noalias !34805, !noundef !27
  %i.bfl = trunc i32 %i.bfk to i8                 ; 2 uses
  %i.bfm = icmp ult i64 %.sroa.0109.0623.i.i, %.val270.i.i350
  br i1 %i.bfm, label %bb.jl, label %.invoke1170.i.i

bb.jl:                                            ; preds = %bb.jk
  %i.bfn = getelementptr inbounds nuw i8, ptr %.val.i.i349, i64 %.sroa.0109.0623.i.i
  store i8 %i.bfl, ptr %i.bfn, align 1, !noalias !34805
  %i.bfo = icmp ult i64 %.sroa.0109.0623.i.i, %.val340.i.i355
  br i1 %i.bfo, label %bb.jm, label %.invoke1170.i.i

.invoke1170.i.i:                                  ; preds = %bb.jl, %bb.jk, %bb.jj, %bb.jg
  %i.bfp = phi i64 [ %.sroa.0109.0623.i.i, %bb.jk ], [ %i.bfh, %bb.jj ], [ %i.bev, %bb.jg ], [ %.sroa.0109.0623.i.i, %bb.jl ]
  %i.bfq = phi i64 [ %.val270.i.i350, %bb.jk ], [ %i.bng, %bb.jj ], [ %.sroa.0.0.i.i204, %bb.jg ], [ %.val340.i.i355, %bb.jl ]
  %i.bfr = phi ptr [ @1550, %bb.jk ], [ @1549, %bb.jj ], [ @1548, %bb.jg ], [ @1551, %bb.jl ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bfp, i64 noundef %i.bfq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bfr) #43
          to label %.cont1171.i.i unwind label %bb.ip, !noalias !34805

.cont1171.i.i:                                    ; preds = %.invoke1170.i.i
  unreachable

bb.jm:                                            ; preds = %bb.jl
  %i.bfs = getelementptr inbounds nuw [4 x i8], ptr %.val339.i.i354, i64 %.sroa.0109.0623.i.i
  store i32 %i.bey, ptr %i.bfs, align 4, !noalias !34805
  %.sroa.0.0.i511.i.i357 = tail call noundef i8 @llvm.umax.i8(i8 %i.bfl, i8 %.sroa.0113.0622.i.i)
  %i.bft = add nuw i64 %.sroa.0109.0623.i.i, 1
  br label %bb.ji

bb.jn:                                            ; preds = %bb.jr, %.preheader.split.i.i319
  %.sroa.0137.1620.i.i = phi i64 [ 1, %.preheader.split.i.i319 ], [ %.sroa.0137.1.i.i346, %bb.jr ] ; 3 uses
  %.sroa.043.1619.i.i = phi i64 [ 0, %.preheader.split.i.i319 ], [ %.sroa.043.2.lcssa938943.i893.i, %bb.jr ] ; 3 uses
  %.sroa.084.0618.i.i = phi i32 [ 0, %.preheader.split.i.i319 ], [ %.sroa.084.1.i.i345, %bb.jr ] ; 3 uses
  %.sroa.0137.0617.i.i = phi i64 [ 0, %.preheader.split.i.i319 ], [ %.sroa.0137.1620.i.i, %bb.jr ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !34805
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.w, i8 0, i64 2824, i1 false), !noalias !34805
  store float 3.402000e+38, ptr %i.bds, align 8, !alias.scope !34890, !noalias !34805
  %i.bfu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i207, i64 %.sroa.0137.0617.i.i
  %i.bfv = load i32, ptr %i.bfu, align 4, !noalias !34805, !noundef !27 ; 2 uses
  %.not628.i.i = icmp eq i32 %i.bfv, 0
  br i1 %.not628.i.i, label %._crit_edge606.thread.i.i, label %.lr.ph605.preheader.i.i

.loopexit.split-lp.thread.i.i336:                 ; preds = %.noexc240.i.i335
  %lpad.loopexit.i.i337 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i"

.loopexit.split-lp.loopexit.i.i332:               ; preds = %.noexc246.i.i331
  %lpad.loopexit250.i.i333 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i322

.loopexit.split-lp.loopexit.split-lp.i.i320:      ; preds = %.invoke1172.i.i
  %lpad.loopexit.split-lp251.i.i321 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i322

.lr.ph605.preheader.i.i:                          ; preds = %bb.jn
  %i.bfw = zext i32 %i.bfv to i64
  %reass.sub448.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %.sroa.043.1619.i.i)
  %i.bfx = add nuw nsw i64 %reass.sub448.i, 1
  br label %.lr.ph605.i.i

.lr.ph605.i.i:                                    ; preds = %bb.jw, %.lr.ph605.preheader.i.i
  %i.bfy = phi i64 [ %i.blm, %bb.jw ], [ 1, %.lr.ph605.preheader.i.i ] ; 3 uses
  %.sroa.043.2603.i.i = phi i64 [ %i.bll, %bb.jw ], [ %.sroa.043.1619.i.i, %.lr.ph605.preheader.i.i ] ; 3 uses
  %exitcond859.not.i.i = icmp eq i64 %i.bfy, %i.bfx
  br i1 %exitcond859.not.i.i, label %.invoke1172.i.i, label %bb.jv

._crit_edge606.i.i:                               ; preds = %bb.jw
  %i.bfz = icmp eq i64 %.sroa.0137.0617.i.i, 0
  %i.bga = getelementptr [4 x i8], ptr %i.azz, i64 %.sroa.0137.0617.i.i ; 4 uses
  %i.bgb = getelementptr i8, ptr %i.bga, i64 -4
  %.sroa.097.0.in.i.i328 = select i1 %i.bfz, ptr %i.azz, ptr %i.bgb
  %.sroa.097.0.i.i329 = load i32, ptr %.sroa.097.0.in.i.i328, align 4, !noalias !34805, !noundef !27 ; 4 uses
  %i.bgc = zext i32 %.sroa.097.0.i.i329 to i64    ; 5 uses
  %i.bgd = icmp ugt i64 %.sroa.14.7.i.i284, %i.bgc
  br i1 %i.bgd, label %.noexc244.i.i330, label %.invoke1172.i.i

._crit_edge606.thread.i.i:                        ; preds = %bb.jn
  %i.bge = icmp eq i64 %.sroa.0137.0617.i.i, 0
  %i.bgf = getelementptr [4 x i8], ptr %i.azz, i64 %.sroa.0137.0617.i.i ; 2 uses
  %i.bgg = getelementptr i8, ptr %i.bgf, i64 -4
  %.sroa.097.0.in936.i.i = select i1 %i.bge, ptr %i.azz, ptr %i.bgg
  %.sroa.097.0937.i.i = load i32, ptr %.sroa.097.0.in936.i.i, align 4, !noalias !34805, !noundef !27 ; 2 uses
  %i.bgh = zext i32 %.sroa.097.0937.i.i to i64    ; 3 uses
  %i.bgi = icmp ugt i64 %.sroa.14.7.i.i284, %i.bgh
  br i1 %i.bgi, label %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h549dfdad1e1f7ec5E.exit249.i.i, label %.invoke1172.i.i

.noexc244.i.i330:                                 ; preds = %._crit_edge606.i.i
end_hunk_1
begin_hunk_2_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
  br i1 %i.ctf, label %bb.qb, label %bb.qd

bb.qb:                                            ; preds = %bb.qa
  %i.ctg = shl i64 %i.cte, 4                      ; 5 uses
  %i.cth = icmp ugt i64 %.sroa.0.0.i448.i.i782, 1152921504606846974
  %i.cti = icmp ugt i64 %i.ctg, 9223372036854775804
  %or.cond.i.i.i.i.i449.i.i925 = or i1 %i.cth, %i.cti
  br i1 %or.cond.i.i.i.i.i449.i.i925, label %bb.qc, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i926, !prof !3798

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i926: ; preds = %bb.qb
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35285
  %i.ctj = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.ctg, i64 noundef range(i64 1, 9) 4) #38, !noalias !35285 ; 5 uses
  %i.ctk = icmp eq ptr %i.ctj, null
  br i1 %i.ctk, label %bb.qc, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i927"

bb.qc:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i926, %bb.qb
  %.sroa.4.0.ph.i.i.i455.i.i932 = phi i64 [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i926 ], [ 0, %bb.qb ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i455.i.i932, i64 %i.ctg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc456.i.i933 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i673, !noalias !35247

.noexc456.i.i933:                                 ; preds = %bb.qc
  unreachable

bb.qd:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i927", %bb.qa
  %.sroa.11.2.i.i783 = phi i64 [ %i.cte, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i927" ], [ 2049, %bb.qa ]
  %.sroa.044.2.i.i784 = phi ptr [ %i.ctj, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i927" ], [ %i.csv, %bb.qa ] ; 4 uses
  %i.ctl = shl i64 %i.deg, 2                      ; 9 uses
  %i.ctm = icmp ugt i64 %i.deg, 4611686018427387903
  %i.ctn = icmp ugt i64 %i.ctl, 9223372036854775804
  %or.cond.i.i.i.i458.i.i785 = or i1 %i.ctm, %i.ctn
  br i1 %or.cond.i.i.i.i458.i.i785, label %bb.qg, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i786, !prof !3798

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i786: ; preds = %bb.qd
  %i.cto = icmp eq i64 %i.ctl, 0                  ; 2 uses
  br i1 %i.cto, label %bb.qh, label %bb.qe

bb.qe:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i786
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35293
  %i.ctp = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.ctl, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !35293 ; 2 uses
  %i.ctq = icmp eq ptr %i.ctp, null
  br i1 %i.ctq, label %bb.qg, label %bb.qf

bb.qf:                                            ; preds = %bb.qe
  %i.ctr = ptrtoint ptr %i.ctp to i64
  br label %bb.qh

bb.qg:                                            ; preds = %bb.qe, %bb.qd
  %.sroa.4.0.ph.i.i461.i.i923 = phi i64 [ 4, %bb.qe ], [ 0, %bb.qd ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i461.i.i923, i64 %i.ctl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc462.i.i924 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i673, !noalias !35247

.noexc462.i.i924:                                 ; preds = %bb.qg
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i927": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i926
  %i.cts = add nsw i64 %i.ctg, -16                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ctj, i8 0, i64 %i.cts, i1 false), !noalias !35298
  %i.ctt = getelementptr i8, ptr %i.ctj, i64 %i.ctg ; 2 uses
  %scevgep11.i451.i.i928 = getelementptr i8, ptr %i.ctj, i64 %i.cts
  store i32 0, ptr %scevgep11.i451.i.i928, align 4, !noalias !35298
  %.sroa.55.0..sroa_idx.i452.i.i929 = getelementptr i8, ptr %i.ctt, i64 -12
  store i32 0, ptr %.sroa.55.0..sroa_idx.i452.i.i929, align 4, !noalias !35298
  %.sroa.67.0..sroa_idx.i453.i.i930 = getelementptr i8, ptr %i.ctt, i64 -8
  store <2 x float> zeroinitializer, ptr %.sroa.67.0..sroa_idx.i453.i.i930, align 4, !noalias !35298
  %i.ctu = icmp samesign ult i64 %.sroa.0.0.i448.i.i782, 576460752303423487
  tail call void @llvm.assume(i1 %i.ctu)
  tail call void @mi_free(ptr noundef nonnull align 4 %i.csv) #38, !noalias !35247
  br label %bb.qd

bb.qh:                                            ; preds = %bb.qf, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i786
  %.sroa.10.0.i.i460.i.i787 = phi i64 [ %i.ctr, %bb.qf ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i786 ]
  %i.ctv = inttoptr i64 %.sroa.10.0.i.i460.i.i787 to ptr ; 13 uses
  %i.ctw = icmp samesign ult i64 %i.deg, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ctw)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ctv) ]
  %i.ctx = getelementptr inbounds nuw i8, ptr %i.ctv, i64 %i.ctl
  %i.cty = icmp eq i64 %i.deg, 0                  ; 3 uses
  br i1 %i.cty, label %._crit_edge598.i.i792, label %.lr.ph597.i.i788.preheader

.lr.ph597.i.i788.preheader:                       ; preds = %bb.qh
  %i.ctz = add nsw i64 %i.ctl, -4                 ; 2 uses
  %i.cua = lshr exact i64 %i.ctz, 2
  %i.cub = add nuw nsw i64 %i.cua, 1              ; 2 uses
  %min.iters.check3926 = icmp ult i64 %i.ctz, 28
  br i1 %min.iters.check3926, label %.lr.ph597.i.i788.preheader4006, label %vector.ph3927

vector.ph3927:                                    ; preds = %.lr.ph597.i.i788.preheader
  %n.vec3928 = and i64 %i.cub, 9223372036854775800 ; 4 uses
  %i.cuc = trunc i64 %n.vec3928 to i32
  %i.cud = shl i64 %n.vec3928, 2
  %i.cue = getelementptr i8, ptr %i.ctv, i64 %i.cud
  br label %vector.body3929

vector.body3929:                                  ; preds = %vector.body3929, %vector.ph3927
  %index3930 = phi i64 [ 0, %vector.ph3927 ], [ %index.next3934, %vector.body3929 ] ; 2 uses
  %vec.ind3931 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph3927 ], [ %vec.ind.next3935, %vector.body3929 ] ; 3 uses
  %step.add3932 = add <4 x i32> %vec.ind3931, splat (i32 4)
  %i.cuf = shl i64 %index3930, 2
  %next.gep3933 = getelementptr i8, ptr %i.ctv, i64 %i.cuf ; 2 uses
  %i.cug = getelementptr i8, ptr %next.gep3933, i64 16
  store <4 x i32> %vec.ind3931, ptr %next.gep3933, align 4, !noalias !35247
  store <4 x i32> %step.add3932, ptr %i.cug, align 4, !noalias !35247
  %index.next3934 = add nuw i64 %index3930, 8     ; 2 uses
  %vec.ind.next3935 = add <4 x i32> %vec.ind3931, splat (i32 8)
  %i.cuh = icmp eq i64 %index.next3934, %n.vec3928
  br i1 %i.cuh, label %middle.block3936, label %vector.body3929, !llvm.loop !35301

middle.block3936:                                 ; preds = %vector.body3929
  %cmp.n3937 = icmp eq i64 %i.cub, %n.vec3928
  br i1 %cmp.n3937, label %._crit_edge598.i.i792, label %.lr.ph597.i.i788.preheader4006

.lr.ph597.i.i788.preheader4006:                   ; preds = %.lr.ph597.i.i788.preheader, %middle.block3936
  %.sroa.047.2595.i.i789.ph = phi i32 [ 0, %.lr.ph597.i.i788.preheader ], [ %i.cuc, %middle.block3936 ]
  %.sroa.0135.0594.i.i790.ph = phi ptr [ %i.ctv, %.lr.ph597.i.i788.preheader ], [ %i.cue, %middle.block3936 ]
  br label %.lr.ph597.i.i788

.lr.ph597.i.i788:                                 ; preds = %.lr.ph597.i.i788.preheader4006, %.lr.ph597.i.i788
  %.sroa.047.2595.i.i789 = phi i32 [ %i.cui, %.lr.ph597.i.i788 ], [ %.sroa.047.2595.i.i789.ph, %.lr.ph597.i.i788.preheader4006 ] ; 2 uses
  %.sroa.0135.0594.i.i790 = phi ptr [ %.sroa.0135.1.i.i791, %.lr.ph597.i.i788 ], [ %.sroa.0135.0594.i.i790.ph, %.lr.ph597.i.i788.preheader4006 ] ; 2 uses
  %.sroa.0135.1.i.i791 = getelementptr inbounds nuw i8, ptr %.sroa.0135.0594.i.i790, i64 4 ; 2 uses
  store i32 %.sroa.047.2595.i.i789, ptr %.sroa.0135.0594.i.i790, align 4, !noalias !35247
  %i.cui = add i32 %.sroa.047.2595.i.i789, 1
  %i.cuj = icmp eq ptr %.sroa.0135.1.i.i791, %i.ctx
  br i1 %i.cuj, label %._crit_edge598.i.i792, label %.lr.ph597.i.i788, !llvm.loop !35302

._crit_edge598.i.i792:                            ; preds = %.lr.ph597.i.i788, %middle.block3936, %bb.qh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.7.i.i756) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.5.i.i760) ]
  %i.cuk = invoke fastcc noundef i64 @_ZN6brotli3enc7cluster22BrotliHistogramCombine17h74b2081842603b54E(ptr noalias noundef nonnull align 8 %.sroa.016.7.i.i756, i64 noundef %.sroa.14.7.i.i755, ptr noalias noundef nonnull align 4 %.sroa.026.5.i.i760, i64 noundef %.sroa.12.5.i.i759, ptr noalias noundef nonnull align 4 %i.cqz, i64 noundef %.sroa.0.0.i.i634, ptr noalias noundef nonnull align 4 %i.ctv, i64 noundef %i.deg, ptr noalias noundef nonnull align 4 %.sroa.044.2.i.i784, i64 noundef %.sroa.11.2.i.i783, i64 noundef %i.deg, i64 noundef %.sroa.0.0.i.i634, i64 noundef 256, i64 noundef %.sroa.0.0.i448.i.i782)
          to label %bb.qi unwind label %bb.pz, !noalias !35247 ; 3 uses

bb.qi:                                            ; preds = %._crit_edge598.i.i792
  tail call void @mi_free(ptr noundef nonnull align 4 %.sroa.044.2.i.i784) #38, !noalias !35247
  %i.cul = icmp eq i64 %.sroa.12.5.i.i759, 0
  br i1 %i.cul, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i810, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i809"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i809": ; preds = %bb.qi
  tail call void @mi_free(ptr noundef nonnull align 4 %.sroa.026.5.i.i760) #38, !noalias !35247
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i810

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i810: ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i809", %bb.qi
  br i1 %i.cto, label %bb.qn, label %bb.qj

bb.qj:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i810
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35303
  %i.cum = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.ctl, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !35303 ; 2 uses
  %i.cun = icmp eq ptr %i.cum, null
  br i1 %i.cun, label %bb.ql, label %bb.qk

bb.qk:                                            ; preds = %bb.qj
  %i.cuo = ptrtoint ptr %i.cum to i64
  br label %bb.qn

bb.ql:                                            ; preds = %bb.qj
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.ctl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc472.i.i922 unwind label %bb.pz, !noalias !35247

.noexc472.i.i922:                                 ; preds = %bb.ql
  unreachable

bb.qm:                                            ; preds = %.invoke1170.i.i890, %.invoke1168.i.i906
  %i.cup = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i828

bb.qn:                                            ; preds = %bb.qk, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i810
  %.sroa.10.0.i.i470.i.i811 = phi i64 [ %i.cuo, %bb.qk ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i810 ]
  %i.cuq = inttoptr i64 %.sroa.10.0.i.i470.i.i811 to ptr ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cuq) ]
  br i1 %i.cty, label %.preheader.split.i.i813, label %.lr.ph601.preheader.i.i812

.lr.ph601.preheader.i.i812:                       ; preds = %bb.qn
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cuq, i8 -1, i64 %i.ctl, i1 false), !noalias !35247
  br label %.preheader.split.i.i813

.preheader.split.i.i813:                          ; preds = %.lr.ph601.preheader.i.i812, %bb.qn
  %i.cur = getelementptr inbounds nuw i8, ptr %i.i, i64 2184
  %i.cus = getelementptr inbounds nuw i8, ptr %i.i, i64 2176 ; 2 uses
  %i.cut = getelementptr inbounds nuw i8, ptr %i.g, i64 2176 ; 3 uses
  %.not1175.i.i814 = icmp eq i64 %i.cuk, 0        ; 2 uses
  %i.cuu = getelementptr inbounds nuw i8, ptr %i.h, i64 2176 ; 3 uses
  br label %bb.rk

bb.qo:                                            ; preds = %bb.ro
  tail call void @mi_free(ptr noundef nonnull align 4 %i.ctv) #38, !noalias !35247
  tail call void @mi_free(ptr noundef nonnull align 8 %.sroa.016.7.i.i756) #38, !noalias !35247
  %.val365.i.i877 = load ptr, ptr %9, align 8, !alias.scope !35308, !noalias !35309, !nonnull !27, !align !206, !noundef !27 ; 3 uses
  %i.cuv = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.val366.i.i878 = load i64, ptr %i.cuv, align 8, !alias.scope !35308, !noalias !35309, !noundef !27 ; 5 uses
  %i.cuw = icmp ult i64 %.val366.i.i878, %.sroa.0.0.i.i634
  br i1 %i.cuw, label %bb.qp, label %bb.qt

bb.qp:                                            ; preds = %bb.qo
  %i.cux = icmp eq i64 %.val366.i.i878, 0         ; 2 uses
  %spec.select.i170.i908 = select i1 %i.cux, i64 %.sroa.0.0.i.i634, i64 %.val366.i.i878
  br label %bb.qq

bb.qq:                                            ; preds = %bb.qq, %bb.qp
  %.sroa.0101.1.i.i909 = phi i64 [ %spec.select.i170.i908, %bb.qp ], [ %i.cuz, %bb.qq ] ; 9 uses
  %i.cuy = icmp ult i64 %.sroa.0101.1.i.i909, %.sroa.0.0.i.i634
  %i.cuz = shl nsw i64 %.sroa.0101.1.i.i909, 1
  br i1 %i.cuy, label %bb.qq, label %bb.qr

bb.qr:                                            ; preds = %bb.qq
  %i.cva = icmp slt i64 %.sroa.0101.1.i.i909, 0
  br i1 %i.cva, label %.invoke1168.i.i906, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i910, !prof !3798

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i910: ; preds = %bb.qr
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35310
  %i.cvb = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %.sroa.0101.1.i.i909, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !35310 ; 5 uses
  %i.cvc = icmp eq ptr %i.cvb, null
  br i1 %i.cvc, label %.invoke1168.i.i906, label %bb.qs

bb.qs:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i910
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cvb, ptr nonnull readonly align 1 %.val365.i.i877, i64 %.val366.i.i878, i1 false), !alias.scope !35315, !noalias !35319
  store ptr %i.cvb, ptr %9, align 8, !alias.scope !35308, !noalias !35309
  store i64 %.sroa.0101.1.i.i909, ptr %i.cuv, align 8, !alias.scope !35308, !noalias !35309
  br i1 %i.cux, label %bb.qt, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i483.i.i911"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i483.i.i911": ; preds = %bb.qs
  tail call void @mi_free(ptr noundef nonnull align 1 %.val365.i.i877) #38, !noalias !35247
  br label %bb.qt

bb.qt:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i483.i.i911", %bb.qs, %bb.qo
  %.val.i.i879 = phi ptr [ %.val365.i.i877, %bb.qo ], [ %i.cvb, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i483.i.i911" ], [ %i.cvb, %bb.qs ]
  %.val270.i.i880 = phi i64 [ %.val366.i.i878, %bb.qo ], [ %.sroa.0101.1.i.i909, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i483.i.i911" ], [ %.sroa.0101.1.i.i909, %bb.qs ] ; 2 uses
  %i.cvd = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %.val309.i.i881 = load ptr, ptr %i.cvd, align 8, !alias.scope !35308, !noalias !35309, !nonnull !27, !align !603, !noundef !27 ; 3 uses
  %i.cve = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %.val310.i.i882 = load i64, ptr %i.cve, align 8, !alias.scope !35308, !noalias !35309, !noundef !27 ; 5 uses
  %i.cvf = icmp ult i64 %.val310.i.i882, %.sroa.0.0.i.i634
  br i1 %i.cvf, label %bb.qu, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.i.i883"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.i.i883": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i492.i.i905", %bb.qz, %bb.qt
  %.val339.i.i884 = phi ptr [ %i.cvs, %bb.qz ], [ %i.cvs, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i492.i.i905" ], [ %.val309.i.i881, %bb.qt ]
  %.val340.i.i885 = phi i64 [ %.sroa.0104.1.i.i901, %bb.qz ], [ %.sroa.0104.1.i.i901, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i492.i.i905" ], [ %.val310.i.i882, %bb.qt ] ; 2 uses
  br label %bb.rb

bb.qu:                                            ; preds = %bb.qt
  %i.cvg = icmp eq i64 %.val310.i.i882, 0         ; 2 uses
  %spec.select247.i.i900 = select i1 %i.cvg, i64 %.sroa.0.0.i.i634, i64 %.val310.i.i882
  br label %bb.qv

bb.qv:                                            ; preds = %bb.qv, %bb.qu
  %.sroa.0104.1.i.i901 = phi i64 [ %spec.select247.i.i900, %bb.qu ], [ %i.cvi, %bb.qv ] ; 8 uses
  %i.cvh = icmp ult i64 %.sroa.0104.1.i.i901, %.sroa.0.0.i.i634
  %i.cvi = shl nsw i64 %.sroa.0104.1.i.i901, 1
  br i1 %i.cvh, label %bb.qv, label %bb.qw

bb.qw:                                            ; preds = %bb.qv
  %i.cvj = shl i64 %.sroa.0104.1.i.i901, 2        ; 5 uses
  %i.cvk = icmp ugt i64 %.sroa.0104.1.i.i901, 4611686018427387903
  %i.cvl = icmp ugt i64 %i.cvj, 9223372036854775804
  %or.cond.i.i.i.i484.i.i902 = or i1 %i.cvk, %i.cvl
  br i1 %or.cond.i.i.i.i484.i.i902, label %.invoke1168.i.i906, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i485.i.i903, !prof !3798

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i485.i.i903: ; preds = %bb.qw
  %i.cvm = icmp eq i64 %i.cvj, 0
  br i1 %i.cvm, label %bb.qz, label %bb.qx

bb.qx:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i485.i.i903
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35321
  %i.cvn = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.cvj, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !35321 ; 2 uses
  %i.cvo = icmp eq ptr %i.cvn, null
  br i1 %i.cvo, label %.invoke1168.i.i906, label %bb.qy

bb.qy:                                            ; preds = %bb.qx
  %i.cvp = ptrtoint ptr %i.cvn to i64
  br label %bb.qz

.invoke1168.i.i906:                               ; preds = %bb.qx, %bb.qw, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i910, %bb.qr
  %i.cvq = phi i64 [ 0, %bb.qr ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i910 ], [ 4, %bb.qx ], [ 0, %bb.qw ]
  %i.cvr = phi i64 [ %.sroa.0101.1.i.i909, %bb.qr ], [ %.sroa.0101.1.i.i909, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i910 ], [ %i.cvj, %bb.qx ], [ %i.cvj, %bb.qw ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.cvq, i64 %i.cvr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.cont1169.i.i907 unwind label %bb.qm, !noalias !35247

.cont1169.i.i907:                                 ; preds = %.invoke1168.i.i906
  unreachable

bb.qz:                                            ; preds = %bb.qy, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i485.i.i903
  %.sroa.10.0.i.i486.i.i904 = phi i64 [ %i.cvp, %bb.qy ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i485.i.i903 ]
  %i.cvs = inttoptr i64 %.sroa.10.0.i.i486.i.i904 to ptr ; 5 uses
  %i.cvt = icmp samesign ult i64 %.sroa.0104.1.i.i901, 2305843009213693952
  tail call void @llvm.assume(i1 %i.cvt)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cvs) ]
  %i.cvu = shl nuw nsw i64 %.val310.i.i882, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cvs, ptr nonnull readonly align 4 %.val309.i.i881, i64 %i.cvu, i1 false), !alias.scope !35326, !noalias !35330
  store ptr %i.cvs, ptr %i.cvd, align 8, !alias.scope !35308, !noalias !35309
  store i64 %.sroa.0104.1.i.i901, ptr %i.cve, align 8, !alias.scope !35308, !noalias !35309
  br i1 %i.cvg, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.i.i883", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i492.i.i905"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i492.i.i905": ; preds = %bb.qz
  tail call void @mi_free(ptr noundef nonnull align 4 %.val309.i.i881) #38, !noalias !35247
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.i.i883"

bb.ra:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i554.i.i808", %.thread130.i.i798
  br i1 %.sroa.11.0147.i.i805, label %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit446.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i682"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i682": ; preds = %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit551.i.i", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit549.i.i941", %bb.sp, %bb.ra, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i673, %.thread163.loopexit.split-lp.loopexit.i.i753, %.thread163.loopexit.i.i748
  %.pn230.pn202.i.i683 = phi { ptr, i32 } [ %.pn230155.i.i799, %bb.ra ], [ %i.dfr, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit549.i.i941" ], [ %i.dfa, %bb.sp ], [ %i.dfs, %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit551.i.i" ], [ %lpad.loopexit255.i.i749, %.thread163.loopexit.i.i748 ], [ %lpad.loopexit258.i.i754, %.thread163.loopexit.split-lp.loopexit.i.i753 ], [ %lpad.loopexit.split-lp259.i.i681, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i673 ]
  %.sroa.044.0122201.i.i684 = phi ptr [ %.sroa.044.0148.i.i804, %bb.ra ], [ %i.csv, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit549.i.i941" ], [ %i.csv, %bb.sp ], [ %i.csv, %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit551.i.i" ], [ %i.csv, %.thread163.loopexit.i.i748 ], [ %i.csv, %.thread163.loopexit.split-lp.loopexit.i.i753 ], [ %.sroa.044.1.ph.ph.ph.i.i674, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i673 ] ; 2 uses
  %.sroa.1335.1123199.i.i685 = phi i64 [ 0, %bb.ra ], [ %.sroa.0.0.i422.i.i660, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit549.i.i941" ], [ %.sroa.0.0.i422.i.i660, %bb.sp ], [ %.sroa.0.0.i422.i.i660, %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit551.i.i" ], [ %.sroa.0.0.i422.i.i660, %.thread163.loopexit.i.i748 ], [ %.sroa.0.0.i422.i.i660, %.thread163.loopexit.split-lp.loopexit.i.i753 ], [ %.sroa.1335.2.ph.ph.ph.i.i675, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i673 ]
  %.sroa.034.1124197.i.i686 = phi ptr [ inttoptr (i64 8 to ptr), %bb.ra ], [ %.sroa.10.0.i.i.i427933.i.i669, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit549.i.i941" ], [ %.sroa.10.0.i.i.i427933.i.i669, %bb.sp ], [ %.sroa.10.0.i.i.i427933.i.i669, %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit551.i.i" ], [ %.sroa.10.0.i.i.i427933.i.i669, %.thread163.loopexit.i.i748 ], [ %.sroa.10.0.i.i.i427933.i.i669, %.thread163.loopexit.split-lp.loopexit.i.i753 ], [ %.sroa.034.2.ph.ph.ph.i.i676, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i673 ]
  %.sroa.12.3125195.i.i687 = phi i64 [ %.sroa.12.3151.i.i803, %bb.ra ], [ %.sroa.12.2583.i.i730, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit549.i.i941" ], [ %.sroa.12.5.i.i759, %bb.sp ], [ %.sroa.12.2583.i.i730, %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit551.i.i" ], [ %.sroa.12.2583.i.i730, %.thread163.loopexit.i.i748 ], [ %.sroa.12.2583.i.i730, %.thread163.loopexit.split-lp.loopexit.i.i753 ], [ %.sroa.12.4.ph.ph.ph.i.i677, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i673 ]
  %.sroa.026.3126193.i.i688 = phi ptr [ %.sroa.026.3152.i.i802, %bb.ra ], [ %.sroa.026.2584.i.i729, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit549.i.i941" ], [ %.sroa.026.5.i.i760, %bb.sp ], [ %.sroa.026.2584.i.i729, %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit551.i.i" ], [ %.sroa.026.2584.i.i729, %.thread163.loopexit.i.i748 ], [ %.sroa.026.2584.i.i729, %.thread163.loopexit.split-lp.loopexit.i.i753 ], [ %.sroa.026.4.ph.ph.ph.i.i678, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i673 ]
  %.sroa.14.4127191.i.i689 = phi i64 [ %.sroa.14.4153.i.i801, %bb.ra ], [ %.sroa.14.7.i.i755, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit549.i.i941" ], [ %.sroa.14.7.i.i755, %bb.sp ], [ %.sroa.14.3585.i.i728, %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit551.i.i" ], [ %.sroa.14.3585.i.i728, %.thread163.loopexit.i.i748 ], [ %.sroa.14.3585.i.i728, %.thread163.loopexit.split-lp.loopexit.i.i753 ], [ %.sroa.14.5.ph.ph.ph.i.i679, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i673 ]
  %.sroa.016.4128189.i.i690 = phi ptr [ %.sroa.016.4154.i.i800, %bb.ra ], [ %.sroa.016.7.i.i756, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit549.i.i941" ], [ %.sroa.016.7.i.i756, %bb.sp ], [ %.sroa.016.3586.i.i727, %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit551.i.i" ], [ %.sroa.016.3586.i.i727, %.thread163.loopexit.i.i748 ], [ %.sroa.016.3586.i.i727, %.thread163.loopexit.split-lp.loopexit.i.i753 ], [ %.sroa.016.5.ph.ph.ph.i.i680, %.thread163.loopexit.split-lp.loopexit.split-lp.i.i673 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.044.0122201.i.i684) ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.044.0122201.i.i684) #38, !noalias !35247
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i691"

bb.rb:                                            ; preds = %bb.rf, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.i.i883"
  %i.cvv = phi i64 [ 1, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.i.i883" ], [ %i.cwf, %bb.rf ] ; 6 uses
  %.sroa.0107.0624.i.i886 = phi i32 [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.i.i883" ], [ %.sroa.0107.1.i.i896, %bb.rf ]
  %.sroa.0109.0623.i.i887 = phi i64 [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.i.i883" ], [ %.sroa.0109.1.i.i895, %bb.rf ] ; 8 uses
  %.sroa.0113.0622.i.i888 = phi i8 [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.i.i883" ], [ %.sroa.0113.1.i.i894, %bb.rf ] ; 2 uses
  %.sroa.0143.0621.i.i889 = phi i64 [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit493.i.i883" ], [ %i.cvv, %bb.rf ] ; 3 uses
  %i.cvw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i649, i64 %.sroa.0143.0621.i.i889
  %i.cvx = load i32, ptr %i.cvw, align 4, !noalias !35247, !noundef !27
  %i.cvy = add i32 %i.cvx, %.sroa.0107.0624.i.i886 ; 2 uses
  %i.cvz = icmp eq i64 %i.cvv, %.sroa.0.0.i.i634  ; 2 uses
  br i1 %i.cvz, label %._crit_edge870.i.i897, label %bb.rd

._crit_edge870.i.i897:                            ; preds = %bb.rb
  %.phi.trans.insert.i.i898 = getelementptr inbounds nuw [4 x i8], ptr %i.cqz, i64 %.sroa.0143.0621.i.i889
  %.pre871.i.i899 = load i32, ptr %.phi.trans.insert.i.i898, align 4, !noalias !35247
  br label %bb.rg

bb.rc:                                            ; preds = %bb.sr, %bb.sj, %bb.sb
  unreachable

bb.rd:                                            ; preds = %bb.rb
  %i.cwa = icmp ult i64 %i.cvv, %.sroa.0.0.i.i634
  br i1 %i.cwa, label %bb.re, label %.invoke1170.i.i890

bb.re:                                            ; preds = %bb.rd
  %i.cwb = getelementptr inbounds nuw [4 x i8], ptr %i.cqz, i64 %.sroa.0143.0621.i.i889
  %i.cwc = load i32, ptr %i.cwb, align 4, !noalias !35247, !noundef !27 ; 2 uses
  %i.cwd = getelementptr inbounds nuw [4 x i8], ptr %i.cqz, i64 %i.cvv
  %i.cwe = load i32, ptr %i.cwd, align 4, !noalias !35247, !noundef !27
  %.not223.i.i892 = icmp eq i32 %i.cwc, %i.cwe
  br i1 %.not223.i.i892, label %bb.rf, label %bb.rg

bb.rf:                                            ; preds = %bb.rj, %bb.re
  %.sroa.0113.1.i.i894 = phi i8 [ %.sroa.0.0.i511.i.i893, %bb.rj ], [ %.sroa.0113.0622.i.i888, %bb.re ] ; 2 uses
  %.sroa.0109.1.i.i895 = phi i64 [ %i.cwt, %bb.rj ], [ %.sroa.0109.0623.i.i887, %bb.re ] ; 2 uses
  %.sroa.0107.1.i.i896 = phi i32 [ 0, %bb.rj ], [ %i.cvy, %bb.re ]
  %i.cwf = add i64 %i.cvv, 1
  br i1 %i.cvz, label %bb.tf, label %bb.rb

bb.rg:                                            ; preds = %bb.re, %._crit_edge870.i.i897
  %i.cwg = phi i32 [ %.pre871.i.i899, %._crit_edge870.i.i897 ], [ %i.cwc, %bb.re ]
  %i.cwh = zext i32 %i.cwg to i64                 ; 3 uses
  %i.cwi = icmp samesign ugt i64 %i.deg, %i.cwh
  br i1 %i.cwi, label %bb.rh, label %.invoke1170.i.i890

bb.rh:                                            ; preds = %bb.rg
  %i.cwj = getelementptr inbounds nuw [4 x i8], ptr %i.cuq, i64 %i.cwh
  %i.cwk = load i32, ptr %i.cwj, align 4, !noalias !35247, !noundef !27
  %i.cwl = trunc i32 %i.cwk to i8                 ; 2 uses
  %i.cwm = icmp ult i64 %.sroa.0109.0623.i.i887, %.val270.i.i880
  br i1 %i.cwm, label %bb.ri, label %.invoke1170.i.i890

bb.ri:                                            ; preds = %bb.rh
  %i.cwn = getelementptr inbounds nuw i8, ptr %.val.i.i879, i64 %.sroa.0109.0623.i.i887
  store i8 %i.cwl, ptr %i.cwn, align 1, !noalias !35247
  %i.cwo = icmp ult i64 %.sroa.0109.0623.i.i887, %.val340.i.i885
  br i1 %i.cwo, label %bb.rj, label %.invoke1170.i.i890

.invoke1170.i.i890:                               ; preds = %bb.ri, %bb.rh, %bb.rg, %bb.rd
  %i.cwp = phi i64 [ %.sroa.0109.0623.i.i887, %bb.rh ], [ %i.cwh, %bb.rg ], [ %i.cvv, %bb.rd ], [ %.sroa.0109.0623.i.i887, %bb.ri ]
  %i.cwq = phi i64 [ %.val270.i.i880, %bb.rh ], [ %i.deg, %bb.rg ], [ %.sroa.0.0.i.i634, %bb.rd ], [ %.val340.i.i885, %bb.ri ]
  %i.cwr = phi ptr [ @1550, %bb.rh ], [ @1549, %bb.rg ], [ @1548, %bb.rd ], [ @1551, %bb.ri ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.cwp, i64 noundef %i.cwq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cwr) #43
          to label %.cont1171.i.i891 unwind label %bb.qm, !noalias !35247

.cont1171.i.i891:                                 ; preds = %.invoke1170.i.i890
  unreachable

bb.rj:                                            ; preds = %bb.ri
  %i.cws = getelementptr inbounds nuw [4 x i8], ptr %.val339.i.i884, i64 %.sroa.0109.0623.i.i887
  store i32 %i.cvy, ptr %i.cws, align 4, !noalias !35247
  %.sroa.0.0.i511.i.i893 = tail call noundef i8 @llvm.umax.i8(i8 %i.cwl, i8 %.sroa.0113.0622.i.i888)
  %i.cwt = add nuw i64 %.sroa.0109.0623.i.i887, 1
  br label %bb.rf

bb.rk:                                            ; preds = %bb.ro, %.preheader.split.i.i813
  %.sroa.0137.1620.i.i815 = phi i64 [ 1, %.preheader.split.i.i813 ], [ %.sroa.0137.1.i.i876, %bb.ro ] ; 3 uses
  %.sroa.043.1619.i.i816 = phi i64 [ 0, %.preheader.split.i.i813 ], [ %.sroa.043.2.lcssa938943.i893.i872, %bb.ro ] ; 3 uses
  %.sroa.084.0618.i.i817 = phi i32 [ 0, %.preheader.split.i.i813 ], [ %.sroa.084.1.i.i875, %bb.ro ] ; 3 uses
  %.sroa.0137.0617.i.i818 = phi i64 [ 0, %.preheader.split.i.i813 ], [ %.sroa.0137.1620.i.i815, %bb.ro ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !35247
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.i, i8 0, i64 2184, i1 false), !noalias !35247
  store float 3.402000e+38, ptr %i.cur, align 8, !alias.scope !35332, !noalias !35247
  %i.cwu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i649, i64 %.sroa.0137.0617.i.i818
  %i.cwv = load i32, ptr %i.cwu, align 4, !noalias !35247, !noundef !27 ; 2 uses
  %.not628.i.i819 = icmp eq i32 %i.cwv, 0
  br i1 %.not628.i.i819, label %._crit_edge606.thread.i.i919, label %.lr.ph605.preheader.i.i820

.loopexit.split-lp.thread.i.i861:                 ; preds = %.noexc240.i.i860
  %lpad.loopexit.i.i862 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i834"

.loopexit.split-lp.loopexit.i.i850:               ; preds = %.noexc246.i.i849
  %lpad.loopexit250.i.i851 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i828

.loopexit.split-lp.loopexit.split-lp.i.i826:      ; preds = %.invoke1172.i.i825
  %lpad.loopexit.split-lp251.i.i827 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i828

.lr.ph605.preheader.i.i820:                       ; preds = %bb.rk
  %i.cww = zext i32 %i.cwv to i64
  %reass.sub448.i821 = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %.sroa.043.1619.i.i816)
  %i.cwx = add nuw nsw i64 %reass.sub448.i821, 1
  br label %.lr.ph605.i.i822

.lr.ph605.i.i822:                                 ; preds = %bb.rt, %.lr.ph605.preheader.i.i820
  %i.cwy = phi i64 [ %i.dcm, %bb.rt ], [ 1, %.lr.ph605.preheader.i.i820 ] ; 3 uses
  %.sroa.043.2603.i.i823 = phi i64 [ %i.dcl, %bb.rt ], [ %.sroa.043.1619.i.i816, %.lr.ph605.preheader.i.i820 ] ; 3 uses
  %exitcond859.not.i.i824 = icmp eq i64 %i.cwy, %i.cwx
  br i1 %exitcond859.not.i.i824, label %.invoke1172.i.i825, label %bb.rs

._crit_edge606.i.i842:                            ; preds = %bb.rt
  %i.cwz = icmp eq i64 %.sroa.0137.0617.i.i818, 0
  %i.cxa = getelementptr [4 x i8], ptr %i.cqz, i64 %.sroa.0137.0617.i.i818 ; 4 uses
  %i.cxb = getelementptr i8, ptr %i.cxa, i64 -4
  %.sroa.097.0.in.i.i843 = select i1 %i.cwz, ptr %i.cqz, ptr %i.cxb
  %.sroa.097.0.i.i844 = load i32, ptr %.sroa.097.0.in.i.i843, align 4, !noalias !35247, !noundef !27 ; 4 uses
  %i.cxc = zext i32 %.sroa.097.0.i.i844 to i64    ; 5 uses
  %i.cxd = icmp ugt i64 %.sroa.14.7.i.i755, %i.cxc
  br i1 %i.cxd, label %.noexc244.i.i845, label %.invoke1172.i.i825

._crit_edge606.thread.i.i919:                     ; preds = %bb.rk
  %i.cxe = icmp eq i64 %.sroa.0137.0617.i.i818, 0
  %i.cxf = getelementptr [4 x i8], ptr %i.cqz, i64 %.sroa.0137.0617.i.i818 ; 2 uses
  %i.cxg = getelementptr i8, ptr %i.cxf, i64 -4
  %.sroa.097.0.in936.i.i920 = select i1 %i.cxe, ptr %i.cqz, ptr %i.cxg
  %.sroa.097.0937.i.i921 = load i32, ptr %.sroa.097.0.in936.i.i920, align 4, !noalias !35247, !noundef !27 ; 2 uses
  %i.cxh = zext i32 %.sroa.097.0937.i.i921 to i64 ; 3 uses
  %i.cxi = icmp ugt i64 %.sroa.14.7.i.i755, %i.cxh
  br i1 %i.cxi, label %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h947b41782effd87bE.exit249.i.i, label %.invoke1172.i.i825

.noexc244.i.i845:                                 ; preds = %._crit_edge606.i.i842
end_hunk_2
begin_hunk_3_@"_ZN94_$LT$actix_http..h2..HandshakeWithTimeout$LT$T$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h4500024112ab0602E":bb.a
  %i.oo = icmp eq i8 %i.on, 0
  br i1 %i.oo, label %bb.dm, label %bb.dt

bb.dm:                                            ; preds = %.thread344.i
  %i.op = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8, !noalias !40700 ; 2 uses
  %i.oq = icmp ult i64 %i.op, 6
  call void @llvm.assume(i1 %i.oq)
  %i.or = icmp samesign ugt i64 %i.op, 4
  br i1 %i.or, label %bb.dn, label %bb.dt

bb.dn:                                            ; preds = %bb.dm
  %i.os = load ptr, ptr @"_ZN83_$LT$h2..server..Handshake$LT$T$C$B$GT$$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17h0ae75733b897a671E", align 8, !noalias !40700, !nonnull !27, !align !148, !noundef !27 ; 3 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 32
  %i.ou = load ptr, ptr %i.ot, align 8, !noalias !40704, !nonnull !27, !align !206, !noundef !27
  %i.ov = getelementptr inbounds nuw i8, ptr %i.os, i64 40
  %i.ow = load i64, ptr %i.ov, align 8, !noalias !40704, !noundef !27
  store i64 5, ptr %i.cg, align 8, !noalias !40700
  %.sroa.5167.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr %i.ou, ptr %.sroa.5167.0..sroa_idx.i, align 8, !noalias !40700
  %.sroa.7168.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store i64 %i.ow, ptr %.sroa.7168.0..sroa_idx.i, align 8, !noalias !40700
  %i.ox = invoke { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE()
          to label %bb.do unwind label %.loopexit.split-lp.i, !noalias !40704 ; 2 uses

bb.do:                                            ; preds = %bb.dn
  %i.oy = extractvalue { ptr, ptr } %i.ox, 0      ; 2 uses
  %i.oz = extractvalue { ptr, ptr } %i.ox, 1      ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 24
  %i.pb = load ptr, ptr %i.pa, align 8, !invariant.load !27, !noalias !40704, !nonnull !27
  %i.pc = invoke noundef zeroext i1 %i.pb(ptr noundef align 1 %i.oy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cg)
          to label %bb.dp unwind label %.loopexit.split-lp.i, !noalias !40704

bb.dp:                                            ; preds = %bb.do
  br i1 %i.pc, label %bb.dq, label %bb.dt

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !40700
  %i.pd = load ptr, ptr @"_ZN83_$LT$h2..server..Handshake$LT$T$C$B$GT$$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17h0ae75733b897a671E", align 8, !noalias !40700, !nonnull !27, !align !148, !noundef !27
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !40700
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !40700
  store ptr @2115, ptr %i.cd, align 8, !noalias !40700
  store ptr %i.cd, ptr %i.ce, align 8, !noalias !40700
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr @777, ptr %i.pf, align 8, !noalias !40700
  store i64 1, ptr %i.cf, align 8, !noalias !40700
  %.sroa.4117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr %i.ce, ptr %.sroa.4117.0..sroa_idx.i, align 8, !noalias !40700
  %.sroa.5118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store i64 1, ptr %.sroa.5118.0..sroa_idx.i, align 8, !noalias !40700
  %i.pg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  store ptr %i.pe, ptr %i.pg, align 8, !noalias !40700
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !40700
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i64 24, i1 false), !noalias !40700
  invoke void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.os, ptr noundef nonnull align 1 %i.oy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.oz, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ay, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cf)
          to label %bb.dr unwind label %.loopexit.split-lp.i, !noalias !40704

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !40700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !40700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !40700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !40700
  br label %bb.dt

bb.ds:                                            ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !40700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !40700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !40700
  br label %bb.dt

bb.dt:                                            ; preds = %.thread344.i, %bb.dm, %bb.dp, %bb.dr, %bb.ds, %bb.fn, %bb.bx
  %.sroa.14.2 = phi ptr [ %.sroa.14.1, %bb.fn ], [ %.sroa.10256.0.i, %bb.bx ], [ undef, %bb.ds ], [ undef, %bb.dr ], [ undef, %bb.dp ], [ undef, %bb.dm ], [ undef, %.thread344.i ] ; 2 uses
  %.sroa.9.2 = phi i8 [ %.sroa.9.1, %bb.fn ], [ %.sroa.6.0.i, %bb.bx ], [ undef, %bb.ds ], [ undef, %bb.dr ], [ undef, %bb.dp ], [ undef, %bb.dm ], [ undef, %.thread344.i ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %bb.fn ], [ 2, %bb.bx ], [ 3, %bb.ds ], [ 3, %bb.dr ], [ 3, %bb.dp ], [ 3, %bb.dm ], [ 3, %.thread344.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !40795)
  %i.ph = load i64, ptr %i.cr, align 8, !range !210, !alias.scope !40795, !noalias !40798, !noundef !27
  %.not.i.i234.i = icmp eq i64 %i.ph, 2
  br i1 %.not.i.i234.i, label %.noexc237.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.pi = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  invoke void @_ZN12tracing_core10dispatcher8Dispatch4exit17h66a7948e4d957dc0E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.pi)
          to label %.noexc237.i unwind label %bb.g, !noalias !40704

.noexc237.i:                                      ; preds = %bb.du, %bb.dt
  %i.pj = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !40798
  %i.pk = icmp eq i8 %i.pj, 0
  br i1 %i.pk, label %bb.dv, label %"_ZN83_$LT$h2..server..Handshake$LT$T$C$B$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h0a04576ac50ffc70E.exit"

bb.dv:                                            ; preds = %.noexc237.i
  %i.pl = load ptr, ptr %i.db, align 8, !alias.scope !40795, !noalias !40798, !align !148, !noundef !27 ; 3 uses
  %.not4.i.i235.i = icmp eq ptr %i.pl, null
  br i1 %.not4.i.i235.i, label %"_ZN83_$LT$h2..server..Handshake$LT$T$C$B$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h0a04576ac50ffc70E.exit", label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !40801
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !40801
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !40801
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 16
  %i.pn = load ptr, ptr %i.pm, align 8, !noalias !40802, !nonnull !27, !align !206, !noundef !27
  %i.po = getelementptr inbounds nuw i8, ptr %i.pl, i64 24
  %i.pp = load i64, ptr %i.po, align 8, !noalias !40802, !noundef !27
  store ptr %i.pn, ptr %i.o, align 8, !noalias !40801
  %i.pq = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.pp, ptr %i.pq, align 8, !noalias !40801
  store ptr %i.o, ptr %i.p, align 8, !noalias !40801
  %.sroa.43.0..sroa_idx.i.i236.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h46d4d467e9bdcd5cE", ptr %.sroa.43.0..sroa_idx.i.i236.i, align 8, !noalias !40801
  store ptr @2097, ptr %i.q, align 8, !noalias !40801
  %i.pr = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 2, ptr %i.pr, align 8, !noalias !40801
  %i.ps = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr null, ptr %i.ps, align 8, !noalias !40801
  %i.pt = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.p, ptr %i.pt, align 8, !noalias !40801
  %i.pu = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 1, ptr %i.pu, align 8, !noalias !40801
  invoke fastcc void @_ZN7tracing4span4Span3log17hac48bcd7604f5552E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cr, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2098, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.q)
          to label %.noexc238.i unwind label %bb.g

.noexc238.i:                                      ; preds = %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !40801
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !40801
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !40801
  br label %"_ZN83_$LT$h2..server..Handshake$LT$T$C$B$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h0a04576ac50ffc70E.exit"

"_ZN91_$LT$tracing..instrument..Instrumented$LT$T$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h9563bbf15aebb6faE.exit.i": ; preds = %.noexc225.i, %bb.bt, %.noexc224.i
  switch i64 %i.lf, label %bb.dz [
    i64 3, label %bb.dy
    i64 2, label %bb.dx
  ]

bb.dx:                                            ; preds = %"_ZN91_$LT$tracing..instrument..Instrumented$LT$T$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h9563bbf15aebb6faE.exit.i"
  %i.pv = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.853.i.sroa.0.0.copyload = load i8, ptr %i.pv, align 8, !noalias !40700
  %.sroa.853.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.853.i.sroa.7, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.853.i.sroa.7.0..sroa_idx, i64 7, i1 false), !noalias !40700
  %.sroa.853.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %.sroa.853.i.sroa.8.0.copyload = load ptr, ptr %.sroa.853.i.sroa.8.0..sroa_idx, align 8, !noalias !40700
  %.sroa.853.i.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.853.i.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.853.i.sroa.9.0..sroa_idx, i64 24, i1 false), !noalias !40700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !40700
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.853.i.sroa.7, i64 7, i1 false), !noalias !40790
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.853.i.sroa.9, i64 24, i1 false), !noalias !40790
  br label %bb.fr

bb.dy:                                            ; preds = %"_ZN91_$LT$tracing..instrument..Instrumented$LT$T$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h9563bbf15aebb6faE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !40700
  br label %bb.fr

bb.dz:                                            ; preds = %"_ZN91_$LT$tracing..instrument..Instrumented$LT$T$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h9563bbf15aebb6faE.exit.i"
  %.sroa.4142.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.853.i.sroa.0.0.copyload66 = load i8, ptr %.sroa.4142.0..sroa_idx.i, align 8, !noalias !40700
  %.sroa.853.i.sroa.7.0..sroa.4142.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.853.i.sroa.7, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.853.i.sroa.7.0..sroa.4142.0..sroa_idx.i.sroa_idx, i64 7, i1 false), !noalias !40700
  %.sroa.853.i.sroa.8.0..sroa.4142.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %.sroa.853.i.sroa.8.0.copyload68 = load ptr, ptr %.sroa.853.i.sroa.8.0..sroa.4142.0..sroa_idx.i.sroa_idx, align 8, !noalias !40700
  %.sroa.853.i.sroa.9.0..sroa.4142.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.853.i.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.853.i.sroa.9.0..sroa.4142.0..sroa_idx.i.sroa_idx, i64 24, i1 false), !noalias !40700
  %.sroa.5143.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2032) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(2032) %.sroa.5143.0..sroa_idx.i, i64 2032, i1 false), !noalias !40700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !40700
  %.sroa.463.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i8 %.sroa.853.i.sroa.0.0.copyload66, ptr %.sroa.463.0..sroa_idx.i, align 8, !noalias !40700
  %.sroa.853.i.sroa.7.0..sroa.463.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.853.i.sroa.7.0..sroa.463.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.853.i.sroa.7, i64 7, i1 false), !noalias !40700
  %.sroa.853.i.sroa.8.0..sroa.463.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store ptr %.sroa.853.i.sroa.8.0.copyload68, ptr %.sroa.853.i.sroa.8.0..sroa.463.0..sroa_idx.i.sroa_idx, align 8, !noalias !40700
  %.sroa.853.i.sroa.9.0..sroa.463.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.853.i.sroa.9.0..sroa.463.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.853.i.sroa.9, i64 24, i1 false), !noalias !40700
  store i64 %i.lf, ptr %i.bn, align 8, !noalias !40700
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.853.i.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.853.i.sroa.9)
  invoke fastcc void @"_ZN4core3ptr157drop_in_place$LT$h2..server..Handshaking$LT$actix_tls..accept..rustls_0_23..TlsStream$LT$tokio..net..tcp..stream..TcpStream$GT$$C$bytes..bytes..Bytes$GT$$GT$17hb987a730105197f2E"(ptr noalias noundef align 8 dereferenceable(2128) %i.fl)
          to label %bb.ea unwind label %bb.fq, !noalias !40704

bb.ea:                                            ; preds = %bb.dz
  store i64 5, ptr %i.fl, align 8, !alias.scope !40697, !noalias !40703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !40700
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !40700
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2080) %i.bk, ptr noundef nonnull align 8 dereferenceable(2080) %i.bn, i64 2080, i1 false), !noalias !40700
  %i.pw = invoke noundef i32 @"_ZN81_$LT$h2..frame..stream_id..StreamId$u20$as$u20$core..convert..From$LT$u32$GT$$GT$4from17he6b3d4fe7502e6a4E"(i32 noundef 2)
          to label %bb.eb unwind label %bb.fp, !noalias !40704

bb.eb:                                            ; preds = %bb.ea
  %i.px = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.py = load i64, ptr %i.px, align 8, !alias.scope !40697, !noalias !40703, !noundef !27
  %i.pz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.qa = load i64, ptr %i.pz, align 8, !alias.scope !40697, !noalias !40703, !noundef !27
  %i.qb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.qc = load i32, ptr %i.qb, align 8, !range !2040, !alias.scope !40697, !noalias !40703, !noundef !27
  %i.qd = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.qe = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.qf = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.qg = load i8, ptr %i.qf, align 8, !alias.scope !40803, !noalias !40806, !noundef !27
  %i.qh = load i32, ptr %i.qe, align 8, !range !6084, !alias.scope !40803, !noalias !40806, !noundef !27 ; 2 uses
  %i.qi = trunc nuw i32 %i.qh to i1
  %i.qj = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.qk = load i32, ptr %i.qj, align 4, !alias.scope !40803, !noalias !40806
  %i.ql = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.qm = load i32, ptr %i.ql, align 8, !range !6084, !alias.scope !40803, !noalias !40806, !noundef !27 ; 2 uses
  %i.qn = trunc nuw i32 %i.qm to i1               ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.qp = load i32, ptr %i.qo, align 4, !alias.scope !40803, !noalias !40806
  %.sroa.52.0.i.i = select i1 %i.qn, i32 %i.qp, i32 undef ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.qr = load i32, ptr %i.qq, align 8, !range !6084, !alias.scope !40803, !noalias !40806, !noundef !27 ; 3 uses
  %i.qs = trunc nuw i32 %i.qr to i1               ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.qu = load i32, ptr %i.qt, align 4, !alias.scope !40803, !noalias !40806
  %.sroa.54.0.i.i = select i1 %i.qs, i32 %i.qu, i32 undef ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.qw = load i32, ptr %i.qv, align 8, !range !6084, !alias.scope !40803, !noalias !40806, !noundef !27 ; 2 uses
  %i.qx = trunc nuw i32 %i.qw to i1               ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.qz = load i32, ptr %i.qy, align 4, !alias.scope !40803, !noalias !40806 ; 2 uses
  %.sroa.56.0.i.i = select i1 %i.qx, i32 %i.qz, i32 undef
  %i.ra = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.rb = load i32, ptr %i.ra, align 8, !range !6084, !alias.scope !40803, !noalias !40806, !noundef !27 ; 2 uses
  %i.rc = trunc nuw i32 %i.rb to i1
  %i.rd = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.re = load i32, ptr %i.rd, align 4, !alias.scope !40803, !noalias !40806
  %.sroa.58.0.i.i = select i1 %i.rc, i32 %i.re, i32 undef
  %i.rf = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.rg = load i32, ptr %i.rf, align 8, !range !6084, !alias.scope !40803, !noalias !40806, !noundef !27 ; 2 uses
  %i.rh = trunc nuw i32 %i.rg to i1
  %i.ri = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.rj = load i32, ptr %i.ri, align 4, !alias.scope !40803, !noalias !40806
  %.sroa.510.0.i.i = select i1 %i.rh, i32 %i.rj, i32 undef
  %i.rk = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.rl = load i32, ptr %i.rk, align 8, !range !6084, !alias.scope !40803, !noalias !40806, !noundef !27 ; 2 uses
  %i.rm = trunc nuw i32 %i.rl to i1               ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.ro = load i32, ptr %i.rn, align 4, !alias.scope !40803, !noalias !40806
  %.sroa.512.0.i.i = select i1 %i.rm, i32 %i.ro, i32 undef ; 2 uses
  %.sroa.26283.56.insert.ext.i = zext i8 %i.qg to i32
  %.sroa.0276.0.insert.ext.i = zext nneg i32 %i.qh to i64
  %i.rp = zext i32 %i.qk to i64
  %i.rq = shl nuw i64 %i.rp, 32
  %.sroa.0276.4.insert.shift.i = select i1 %i.qi, i64 %i.rq, i64 0
  %.sroa.0276.4.insert.insert.i = or disjoint i64 %.sroa.0276.4.insert.shift.i, %.sroa.0276.0.insert.ext.i
  call void @llvm.experimental.noalias.scope.decl(metadata !40808)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !40811
  %.sroa.0.0.i.i.i = select i1 %i.qx, i32 %i.qz, i32 65535
  %i.rr = icmp ne i32 %.sroa.52.0.i.i, 0
  %not..i.i.i = xor i1 %i.qn, true
  %narrow.i.i.i = select i1 %not..i.i.i, i1 true, i1 %i.rr
  %.sroa.03.0.i.i.i = zext i1 %narrow.i.i.i to i8
  %i.rs = icmp ne i32 %.sroa.512.0.i.i, 0
  %narrow17.i.i.i = select i1 %i.rm, i1 %i.rs, i1 false
  %.sroa.05.0.i.i.i = zext i1 %narrow17.i.i.i to i8
  %i.rt = zext i32 %.sroa.54.0.i.i to i64
  %.sroa.5.0.i.i.i = select i1 %i.qs, i64 %i.rt, i64 undef
  %.sroa.07.0.i.i.i = zext nneg i32 %i.qr to i64
  %i.ru = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  store i32 %.sroa.0.0.i.i.i, ptr %i.ru, align 8, !alias.scope !40814, !noalias !40817
  %i.rv = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store i64 0, ptr %i.rv, align 8, !alias.scope !40814, !noalias !40817
  %i.rw = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store i64 %i.py, ptr %i.rw, align 8, !alias.scope !40814, !noalias !40817
  %i.rx = getelementptr inbounds nuw i8, ptr %i.n, i64 84
  store i32 %i.pw, ptr %i.rx, align 4, !alias.scope !40814, !noalias !40817
  %i.ry = getelementptr inbounds nuw i8, ptr %i.n, i64 92
  store i8 %.sroa.03.0.i.i.i, ptr %i.ry, align 4, !alias.scope !40814, !noalias !40817
  %i.rz = getelementptr inbounds nuw i8, ptr %i.n, i64 93
  store i8 %.sroa.05.0.i.i.i, ptr %i.rz, align 1, !alias.scope !40814, !noalias !40817
  %i.sa = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store i64 %i.qa, ptr %i.sa, align 8, !alias.scope !40814, !noalias !40817
  %i.sb = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store i32 %i.qc, ptr %i.sb, align 8, !alias.scope !40814, !noalias !40817
  %i.sc = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.sd = load <2 x i64>, ptr %i.qd, align 8, !alias.scope !40697, !noalias !40703
  store <2 x i64> %i.sd, ptr %i.sc, align 8, !alias.scope !40814, !noalias !40817
  %i.se = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  store i32 65535, ptr %i.se, align 8, !alias.scope !40814, !noalias !40817
  store i64 %.sroa.07.0.i.i.i, ptr %i.n, align 8, !alias.scope !40814, !noalias !40817
  %i.sf = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %.sroa.5.0.i.i.i, ptr %i.sf, align 8, !alias.scope !40814, !noalias !40817
  %i.sg = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.sh = load <2 x i64>, ptr %1, align 8, !alias.scope !40697, !noalias !40703
  store <2 x i64> %i.sh, ptr %i.sg, align 8, !alias.scope !40814, !noalias !40817
  %i.si = invoke fastcc { ptr, ptr } @"_ZN2h25proto7streams7streams20Streams$LT$B$C$P$GT$3new17h76ffac9b2b58ea76E"(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.n)
          to label %bb.ee unwind label %bb.er, !noalias !40819 ; 2 uses

bb.ec:                                            ; preds = %bb.el, %bb.ed
  %.pn.i.i = phi { ptr, i32 } [ %i.sj, %bb.ed ], [ %i.sz, %bb.el ]
  invoke fastcc void @"_ZN4core3ptr103drop_in_place$LT$h2..proto..streams..streams..Streams$LT$bytes..bytes..Bytes$C$h2..server..Peer$GT$$GT$17hc7dac64eafe43c41E"(ptr noalias noundef align 8 dereferenceable(16) %i.k) #44
          to label %bb.eq unwind label %bb.eo, !noalias !40819

bb.ed:                                            ; preds = %bb.ej, %.thread45.i.i, %bb.eg
  %i.sj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.ee:                                            ; preds = %bb.eb
  %i.sk = extractvalue { ptr, ptr } %i.si, 0      ; 2 uses
  %i.sl = extractvalue { ptr, ptr } %i.si, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !40811
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !40811
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2080) %i.m, ptr noundef nonnull align 8 dereferenceable(2080) %i.bk, i64 2080, i1 false), !noalias !40820
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !40811
  %i.sm = getelementptr inbounds nuw i8, ptr %i.l, i64 17
  store i8 2, ptr %i.sm, align 1, !noalias !40811
  %i.sn = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i8 0, ptr %i.sn, align 8, !noalias !40811
  store ptr null, ptr %i.l, align 8, !noalias !40811
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !40811
  store ptr %i.sk, ptr %i.k, align 8, !noalias !40811
  %i.so = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.sl, ptr %i.so, align 8, !noalias !40811
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !40811
  %i.sp = load atomic i64, ptr @_ZN12tracing_core8metadata9MAX_LEVEL17h3c62bc6fa7dc27b1E monotonic, align 8, !noalias !40811
  %i.sq = icmp ult i64 %i.sp, 2
  br i1 %i.sq, label %bb.ef, label %.thread49.i.i

bb.ef:                                            ; preds = %bb.ee
  %i.sr = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN2h25proto10connection27Connection$LT$T$C$P$C$B$GT$3new10__CALLSITE17h0ef1bfcb779c1c64E", i64 16) monotonic, align 8, !noalias !40811 ; 3 uses
  switch i8 %i.sr, label %bb.eg [
    i8 0, label %.thread49.i.i
    i8 1, label %.thread45.i.i
    i8 2, label %.thread45.i.i
  ], !prof !390

bb.eg:                                            ; preds = %bb.ef
  %i.ss = invoke noundef i8 @_ZN12tracing_core8callsite15DefaultCallsite8register17hfea5cd845fb2ec3aE(ptr noundef nonnull align 8 @"_ZN2h25proto10connection27Connection$LT$T$C$P$C$B$GT$3new10__CALLSITE17h0ef1bfcb779c1c64E")
          to label %bb.eh unwind label %bb.ed, !noalias !40819 ; 2 uses

bb.eh:                                            ; preds = %bb.eg
  %.not.i240.i = icmp eq i8 %i.ss, 0
  br i1 %.not.i240.i, label %.thread49.i.i, label %.thread45.i.i

.thread45.i.i:                                    ; preds = %bb.ef, %bb.eh, %bb.ef
  %.sroa.08.048.i.i = phi i8 [ %i.ss, %bb.eh ], [ %i.sr, %bb.ef ], [ %i.sr, %bb.ef ]
  %i.st = load ptr, ptr @"_ZN2h25proto10connection27Connection$LT$T$C$P$C$B$GT$3new10__CALLSITE17h0ef1bfcb779c1c64E", align 8, !noalias !40811, !nonnull !27, !align !148, !noundef !27
  %i.su = invoke noundef zeroext i1 @_ZN7tracing15__macro_support12__is_enabled17ha8d49a956677b3d5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.st, i8 noundef %.sroa.08.048.i.i)
          to label %bb.ei unwind label %bb.ed, !noalias !40819

bb.ei:                                            ; preds = %.thread45.i.i
  br i1 %i.su, label %bb.ej, label %.thread49.i.i

bb.ej:                                            ; preds = %bb.ei
  %i.sv = load ptr, ptr @"_ZN2h25proto10connection27Connection$LT$T$C$P$C$B$GT$3new10__CALLSITE17h0ef1bfcb779c1c64E", align 8, !noalias !40811, !nonnull !27, !align !148, !noundef !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !40811
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !40811
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !40811
  store ptr @776, ptr %i.g, align 8, !noalias !40811
  store ptr %i.g, ptr %i.h, align 8, !noalias !40811
  %i.sx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @777, ptr %i.sx, align 8, !noalias !40811
  store i64 1, ptr %i.i, align 8, !noalias !40811
  %.sroa.426.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.h, ptr %.sroa.426.0..sroa_idx.i.i, align 8, !noalias !40811
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !40811
  %i.sy = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.sw, ptr %i.sy, align 8, !noalias !40811
  invoke void @_ZN7tracing4span4Span3new17hf7eba8cb0dd6baa4E(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.sv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
          to label %bb.ep unwind label %bb.ed, !noalias !40819

bb.ek:                                            ; preds = %bb.en, %.thread49.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false), !noalias !40811
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !40811
  br label %bb.es

bb.el:                                            ; preds = %bb.em
  %i.sz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h3b60b4793e7fa7f8E"(ptr noalias noundef align 8 dereferenceable(40) %i.f) #44
          to label %bb.ec unwind label %bb.eo, !noalias !40819

.thread49.i.i:                                    ; preds = %bb.ei, %bb.eh, %bb.ef, %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !40811
  %i.ta = load ptr, ptr @"_ZN2h25proto10connection27Connection$LT$T$C$P$C$B$GT$3new10__CALLSITE17h0ef1bfcb779c1c64E", align 8, !noalias !40811, !nonnull !27, !align !148, !noundef !27 ; 2 uses
  store i64 2, ptr %i.f, align 8, !noalias !40811
  %i.tb = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.ta, ptr %i.tb, align 8, !noalias !40811
  %i.tc = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !40811
  %i.td = icmp eq i8 %i.tc, 0
  br i1 %i.td, label %bb.em, label %bb.ek

bb.em:                                            ; preds = %.thread49.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !40811
  %i.te = getelementptr inbounds nuw i8, ptr %i.ta, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !40811
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !40811
  store ptr @776, ptr %i.c, align 8, !noalias !40811
  store ptr %i.c, ptr %i.d, align 8, !noalias !40811
  %i.tf = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @777, ptr %i.tf, align 8, !noalias !40811
  store i64 1, ptr %i.e, align 8, !noalias !40811
  %.sroa.430.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.d, ptr %.sroa.430.0..sroa_idx.i.i, align 8, !noalias !40811
  %.sroa.531.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 1, ptr %.sroa.531.0..sroa_idx.i.i, align 8, !noalias !40811
  %i.tg = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.te, ptr %i.tg, align 8, !noalias !40811
  %i.th = invoke noundef align 8 dereferenceable(40) ptr @_ZN7tracing4span4Span10record_all17hb9e98382ea24c54cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
          to label %bb.en unwind label %bb.el, !noalias !40819 ; 0 uses

bb.en:                                            ; preds = %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !40811
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !40811
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !40811
  br label %bb.ek

bb.eo:                                            ; preds = %bb.er, %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$h2..frame..go_away..GoAway$GT$$GT$17h5ed69fd7cf4b572bE.exit.i.i", %bb.eq, %bb.el, %bb.ec
  %i.ti = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !40821
  unreachable

bb.ep:                                            ; preds = %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !40811
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !40811
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !40811
  br label %bb.es

bb.eq:                                            ; preds = %bb.ec
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$h2..proto..ping_pong..PingPong$GT$17h4fbc33de66f9f12cE"(ptr noalias noundef align 8 dereferenceable(32) %i.l) #44
          to label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$h2..frame..go_away..GoAway$GT$$GT$17h5ed69fd7cf4b572bE.exit.i.i" unwind label %bb.eo, !noalias !40819

"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$h2..frame..go_away..GoAway$GT$$GT$17h5ed69fd7cf4b572bE.exit.i.i": ; preds = %bb.eq
  invoke fastcc void @"_ZN4core3ptr201drop_in_place$LT$h2..codec..Codec$LT$actix_tls..accept..rustls_0_23..TlsStream$LT$tokio..net..tcp..stream..TcpStream$GT$$C$h2..proto..streams..prioritize..Prioritized$LT$bytes..bytes..Bytes$GT$$GT$$GT$17h0dac335a18740b3eE"(ptr noalias noundef align 8 dereferenceable(2080) %i.m) #44
          to label %.body.i unwind label %bb.eo, !noalias !40819

bb.er:                                            ; preds = %bb.eb
  %i.tj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr201drop_in_place$LT$h2..codec..Codec$LT$actix_tls..accept..rustls_0_23..TlsStream$LT$tokio..net..tcp..stream..TcpStream$GT$$C$h2..proto..streams..prioritize..Prioritized$LT$bytes..bytes..Bytes$GT$$GT$$GT$17h0dac335a18740b3eE"(ptr noalias noundef nonnull align 8 dereferenceable(2080) %i.bk) #44
          to label %.body.i unwind label %bb.eo, !noalias !40821

bb.es:                                            ; preds = %bb.ep, %bb.ek
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 2232
  store ptr null, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !40822
  %.sroa.0.sroa.0.i.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 2176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.sroa.0.i.sroa.11.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !40822
  %.sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 2276
  store i64 %.sroa.0276.4.insert.insert.i, ptr %.sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !40822
  %.sroa.421.i.sroa.4.0..sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 2284
  store i32 %i.qm, ptr %.sroa.421.i.sroa.4.0..sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.sroa_idx.i, align 4, !noalias !40822
end_hunk_3
begin_hunk_4_@"_ZN94_$LT$actix_http..h2..HandshakeWithTimeout$LT$T$GT$$u20$as$u20$core..future..future..Future$GT$4poll17hcc9c574be08bb60dE":bb.a
  %i.oq = icmp eq i8 %i.op, 0
  br i1 %i.oq, label %bb.dn, label %bb.du

bb.dn:                                            ; preds = %.thread349.i
  %i.or = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8, !noalias !40830 ; 2 uses
  %i.os = icmp ult i64 %i.or, 6
  call void @llvm.assume(i1 %i.os)
  %i.ot = icmp samesign ugt i64 %i.or, 4
  br i1 %i.ot, label %bb.do, label %bb.du

bb.do:                                            ; preds = %bb.dn
  %i.ou = load ptr, ptr @"_ZN83_$LT$h2..server..Handshake$LT$T$C$B$GT$$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17h0ae75733b897a671E", align 8, !noalias !40830, !nonnull !27, !align !148, !noundef !27 ; 3 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 32
  %i.ow = load ptr, ptr %i.ov, align 8, !noalias !40834, !nonnull !27, !align !206, !noundef !27
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ou, i64 40
  %i.oy = load i64, ptr %i.ox, align 8, !noalias !40834, !noundef !27
  store i64 5, ptr %i.cg, align 8, !noalias !40830
  %.sroa.5167.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr %i.ow, ptr %.sroa.5167.0..sroa_idx.i, align 8, !noalias !40830
  %.sroa.7168.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store i64 %i.oy, ptr %.sroa.7168.0..sroa_idx.i, align 8, !noalias !40830
  %i.oz = invoke { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE()
          to label %bb.dp unwind label %.loopexit.split-lp.i, !noalias !40834 ; 2 uses

bb.dp:                                            ; preds = %bb.do
  %i.pa = extractvalue { ptr, ptr } %i.oz, 0      ; 2 uses
  %i.pb = extractvalue { ptr, ptr } %i.oz, 1      ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 24
  %i.pd = load ptr, ptr %i.pc, align 8, !invariant.load !27, !noalias !40834, !nonnull !27
  %i.pe = invoke noundef zeroext i1 %i.pd(ptr noundef align 1 %i.pa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cg)
          to label %bb.dq unwind label %.loopexit.split-lp.i, !noalias !40834

bb.dq:                                            ; preds = %bb.dp
  br i1 %i.pe, label %bb.dr, label %bb.du

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !40830
  %i.pf = load ptr, ptr @"_ZN83_$LT$h2..server..Handshake$LT$T$C$B$GT$$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17h0ae75733b897a671E", align 8, !noalias !40830, !nonnull !27, !align !148, !noundef !27
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !40830
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !40830
  store ptr @2115, ptr %i.cd, align 8, !noalias !40830
  store ptr %i.cd, ptr %i.ce, align 8, !noalias !40830
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr @777, ptr %i.ph, align 8, !noalias !40830
  store i64 1, ptr %i.cf, align 8, !noalias !40830
  %.sroa.4117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr %i.ce, ptr %.sroa.4117.0..sroa_idx.i, align 8, !noalias !40830
  %.sroa.5118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store i64 1, ptr %.sroa.5118.0..sroa_idx.i, align 8, !noalias !40830
  %i.pi = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  store ptr %i.pg, ptr %i.pi, align 8, !noalias !40830
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !40830
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i64 24, i1 false), !noalias !40830
  invoke void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ou, ptr noundef nonnull align 1 %i.pa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.pb, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ay, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cf)
          to label %bb.ds unwind label %.loopexit.split-lp.i, !noalias !40834

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !40830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !40830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !40830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !40830
  br label %bb.du

bb.dt:                                            ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !40830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !40830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !40830
  br label %bb.du

bb.du:                                            ; preds = %.thread349.i, %bb.dn, %bb.dq, %bb.ds, %bb.dt, %bb.fo, %bb.bx
  %.sroa.14.2 = phi ptr [ %.sroa.14.1, %bb.fo ], [ %.sroa.10261.0.i, %bb.bx ], [ undef, %bb.dt ], [ undef, %bb.ds ], [ undef, %bb.dq ], [ undef, %bb.dn ], [ undef, %.thread349.i ] ; 2 uses
  %.sroa.9.2 = phi i8 [ %.sroa.9.1, %bb.fo ], [ %.sroa.6.0.i, %bb.bx ], [ undef, %bb.dt ], [ undef, %bb.ds ], [ undef, %bb.dq ], [ undef, %bb.dn ], [ undef, %.thread349.i ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %bb.fo ], [ 2, %bb.bx ], [ 3, %bb.dt ], [ 3, %bb.ds ], [ 3, %bb.dq ], [ 3, %bb.dn ], [ 3, %.thread349.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !40930)
  %i.pj = load i64, ptr %i.cr, align 8, !range !210, !alias.scope !40930, !noalias !40933, !noundef !27
  %.not.i.i236.i = icmp eq i64 %i.pj, 2
  br i1 %.not.i.i236.i, label %.noexc239.i, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.pk = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  invoke void @_ZN12tracing_core10dispatcher8Dispatch4exit17h66a7948e4d957dc0E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.pk)
          to label %.noexc239.i unwind label %bb.g, !noalias !40834

.noexc239.i:                                      ; preds = %bb.dv, %bb.du
  %i.pl = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !40933
  %i.pm = icmp eq i8 %i.pl, 0
  br i1 %i.pm, label %bb.dw, label %"_ZN83_$LT$h2..server..Handshake$LT$T$C$B$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h4568ffa26fb42e10E.exit"

bb.dw:                                            ; preds = %.noexc239.i
  %i.pn = load ptr, ptr %i.db, align 8, !alias.scope !40930, !noalias !40933, !align !148, !noundef !27 ; 3 uses
  %.not4.i.i237.i = icmp eq ptr %i.pn, null
  br i1 %.not4.i.i237.i, label %"_ZN83_$LT$h2..server..Handshake$LT$T$C$B$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h4568ffa26fb42e10E.exit", label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !40936
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !40936
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !40936
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 16
  %i.pp = load ptr, ptr %i.po, align 8, !noalias !40937, !nonnull !27, !align !206, !noundef !27
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pn, i64 24
  %i.pr = load i64, ptr %i.pq, align 8, !noalias !40937, !noundef !27
  store ptr %i.pp, ptr %i.o, align 8, !noalias !40936
  %i.ps = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.pr, ptr %i.ps, align 8, !noalias !40936
  store ptr %i.o, ptr %i.p, align 8, !noalias !40936
  %.sroa.43.0..sroa_idx.i.i238.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h46d4d467e9bdcd5cE", ptr %.sroa.43.0..sroa_idx.i.i238.i, align 8, !noalias !40936
  store ptr @2097, ptr %i.q, align 8, !noalias !40936
  %i.pt = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 2, ptr %i.pt, align 8, !noalias !40936
  %i.pu = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr null, ptr %i.pu, align 8, !noalias !40936
  %i.pv = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.p, ptr %i.pv, align 8, !noalias !40936
  %i.pw = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 1, ptr %i.pw, align 8, !noalias !40936
  invoke fastcc void @_ZN7tracing4span4Span3log17hac48bcd7604f5552E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cr, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2098, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.q)
          to label %.noexc240.i unwind label %bb.g

.noexc240.i:                                      ; preds = %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !40936
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !40936
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !40936
  br label %"_ZN83_$LT$h2..server..Handshake$LT$T$C$B$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h4568ffa26fb42e10E.exit"

"_ZN91_$LT$tracing..instrument..Instrumented$LT$T$GT$$u20$as$u20$core..future..future..Future$GT$4poll17he0520685c1698652E.exit.i": ; preds = %.noexc225.i, %bb.bt, %.noexc224.i
  switch i64 %i.lf, label %bb.ea [
    i64 3, label %bb.dz
    i64 2, label %bb.dy
  ]

bb.dy:                                            ; preds = %"_ZN91_$LT$tracing..instrument..Instrumented$LT$T$GT$$u20$as$u20$core..future..future..Future$GT$4poll17he0520685c1698652E.exit.i"
  %i.px = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.853.i.sroa.0.0.copyload = load i8, ptr %i.px, align 8, !noalias !40830
  %.sroa.853.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.853.i.sroa.7, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.853.i.sroa.7.0..sroa_idx, i64 7, i1 false), !noalias !40830
  %.sroa.853.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %.sroa.853.i.sroa.8.0.copyload = load ptr, ptr %.sroa.853.i.sroa.8.0..sroa_idx, align 8, !noalias !40830
  %.sroa.853.i.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.853.i.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.853.i.sroa.9.0..sroa_idx, i64 24, i1 false), !noalias !40830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !40830
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.853.i.sroa.7, i64 7, i1 false), !noalias !40920
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.853.i.sroa.9, i64 24, i1 false), !noalias !40920
  br label %bb.fs

bb.dz:                                            ; preds = %"_ZN91_$LT$tracing..instrument..Instrumented$LT$T$GT$$u20$as$u20$core..future..future..Future$GT$4poll17he0520685c1698652E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !40830
  br label %bb.fs

bb.ea:                                            ; preds = %"_ZN91_$LT$tracing..instrument..Instrumented$LT$T$GT$$u20$as$u20$core..future..future..Future$GT$4poll17he0520685c1698652E.exit.i"
  %.sroa.4142.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.853.i.sroa.0.0.copyload66 = load i8, ptr %.sroa.4142.0..sroa_idx.i, align 8, !noalias !40830
  %.sroa.853.i.sroa.7.0..sroa.4142.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.853.i.sroa.7, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.853.i.sroa.7.0..sroa.4142.0..sroa_idx.i.sroa_idx, i64 7, i1 false), !noalias !40830
  %.sroa.853.i.sroa.8.0..sroa.4142.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %.sroa.853.i.sroa.8.0.copyload68 = load ptr, ptr %.sroa.853.i.sroa.8.0..sroa.4142.0..sroa_idx.i.sroa_idx, align 8, !noalias !40830
  %.sroa.853.i.sroa.9.0..sroa.4142.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.853.i.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.853.i.sroa.9.0..sroa.4142.0..sroa_idx.i.sroa_idx, i64 24, i1 false), !noalias !40830
  %.sroa.5143.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(856) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(856) %.sroa.5143.0..sroa_idx.i, i64 856, i1 false), !noalias !40830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !40830
  %.sroa.463.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i8 %.sroa.853.i.sroa.0.0.copyload66, ptr %.sroa.463.0..sroa_idx.i, align 8, !noalias !40830
  %.sroa.853.i.sroa.7.0..sroa.463.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.853.i.sroa.7.0..sroa.463.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.853.i.sroa.7, i64 7, i1 false), !noalias !40830
  %.sroa.853.i.sroa.8.0..sroa.463.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store ptr %.sroa.853.i.sroa.8.0.copyload68, ptr %.sroa.853.i.sroa.8.0..sroa.463.0..sroa_idx.i.sroa_idx, align 8, !noalias !40830
  %.sroa.853.i.sroa.9.0..sroa.463.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.853.i.sroa.9.0..sroa.463.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.853.i.sroa.9, i64 24, i1 false), !noalias !40830
  store i64 %i.lf, ptr %i.bn, align 8, !noalias !40830
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.853.i.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.853.i.sroa.9)
  invoke fastcc void @"_ZN4core3ptr108drop_in_place$LT$h2..server..Handshaking$LT$tokio..net..tcp..stream..TcpStream$C$bytes..bytes..Bytes$GT$$GT$17hb468604377a9318bE"(ptr noalias noundef align 8 dereferenceable(952) %i.fl)
          to label %bb.eb unwind label %bb.fr, !noalias !40834

bb.eb:                                            ; preds = %bb.ea
  store i64 5, ptr %i.fl, align 8, !alias.scope !40827, !noalias !40833
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !40830
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !40830
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(904) %i.bk, ptr noundef nonnull align 8 dereferenceable(904) %i.bn, i64 904, i1 false), !noalias !40830
  %i.py = invoke noundef i32 @"_ZN81_$LT$h2..frame..stream_id..StreamId$u20$as$u20$core..convert..From$LT$u32$GT$$GT$4from17he6b3d4fe7502e6a4E"(i32 noundef 2)
          to label %bb.ec unwind label %bb.fq, !noalias !40834

bb.ec:                                            ; preds = %bb.eb
  %i.pz = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.qa = load i64, ptr %i.pz, align 8, !alias.scope !40827, !noalias !40833, !noundef !27
  %i.qb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.qc = load i64, ptr %i.qb, align 8, !alias.scope !40827, !noalias !40833, !noundef !27
  %i.qd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.qe = load i32, ptr %i.qd, align 8, !range !2040, !alias.scope !40827, !noalias !40833, !noundef !27
  %i.qf = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.qg = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.qh = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.qi = load i8, ptr %i.qh, align 8, !alias.scope !40938, !noalias !40941, !noundef !27
  %i.qj = load i32, ptr %i.qg, align 8, !range !6084, !alias.scope !40938, !noalias !40941, !noundef !27 ; 2 uses
  %i.qk = trunc nuw i32 %i.qj to i1
  %i.ql = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.qm = load i32, ptr %i.ql, align 4, !alias.scope !40938, !noalias !40941
  %i.qn = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.qo = load i32, ptr %i.qn, align 8, !range !6084, !alias.scope !40938, !noalias !40941, !noundef !27 ; 2 uses
  %i.qp = trunc nuw i32 %i.qo to i1               ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.qr = load i32, ptr %i.qq, align 4, !alias.scope !40938, !noalias !40941
  %.sroa.52.0.i.i = select i1 %i.qp, i32 %i.qr, i32 undef ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.qt = load i32, ptr %i.qs, align 8, !range !6084, !alias.scope !40938, !noalias !40941, !noundef !27 ; 3 uses
  %i.qu = trunc nuw i32 %i.qt to i1               ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.qw = load i32, ptr %i.qv, align 4, !alias.scope !40938, !noalias !40941
  %.sroa.54.0.i.i = select i1 %i.qu, i32 %i.qw, i32 undef ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.qy = load i32, ptr %i.qx, align 8, !range !6084, !alias.scope !40938, !noalias !40941, !noundef !27 ; 2 uses
  %i.qz = trunc nuw i32 %i.qy to i1               ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.rb = load i32, ptr %i.ra, align 4, !alias.scope !40938, !noalias !40941 ; 2 uses
  %.sroa.56.0.i.i = select i1 %i.qz, i32 %i.rb, i32 undef
  %i.rc = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.rd = load i32, ptr %i.rc, align 8, !range !6084, !alias.scope !40938, !noalias !40941, !noundef !27 ; 2 uses
  %i.re = trunc nuw i32 %i.rd to i1
  %i.rf = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.rg = load i32, ptr %i.rf, align 4, !alias.scope !40938, !noalias !40941
  %.sroa.58.0.i.i = select i1 %i.re, i32 %i.rg, i32 undef
  %i.rh = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ri = load i32, ptr %i.rh, align 8, !range !6084, !alias.scope !40938, !noalias !40941, !noundef !27 ; 2 uses
  %i.rj = trunc nuw i32 %i.ri to i1
  %i.rk = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.rl = load i32, ptr %i.rk, align 4, !alias.scope !40938, !noalias !40941
  %.sroa.510.0.i.i = select i1 %i.rj, i32 %i.rl, i32 undef
  %i.rm = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.rn = load i32, ptr %i.rm, align 8, !range !6084, !alias.scope !40938, !noalias !40941, !noundef !27 ; 2 uses
  %i.ro = trunc nuw i32 %i.rn to i1               ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.rq = load i32, ptr %i.rp, align 4, !alias.scope !40938, !noalias !40941
  %.sroa.512.0.i.i = select i1 %i.ro, i32 %i.rq, i32 undef ; 2 uses
  %.sroa.26288.56.insert.ext.i = zext i8 %i.qi to i32
  %.sroa.0281.0.insert.ext.i = zext nneg i32 %i.qj to i64
  %i.rr = zext i32 %i.qm to i64
  %i.rs = shl nuw i64 %i.rr, 32
  %.sroa.0281.4.insert.shift.i = select i1 %i.qk, i64 %i.rs, i64 0
  %.sroa.0281.4.insert.insert.i = or disjoint i64 %.sroa.0281.4.insert.shift.i, %.sroa.0281.0.insert.ext.i
  call void @llvm.experimental.noalias.scope.decl(metadata !40943)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !40946
  %.sroa.0.0.i.i.i = select i1 %i.qz, i32 %i.rb, i32 65535
  %i.rt = icmp ne i32 %.sroa.52.0.i.i, 0
  %not..i.i.i = xor i1 %i.qp, true
  %narrow.i.i.i = select i1 %not..i.i.i, i1 true, i1 %i.rt
  %.sroa.03.0.i.i.i = zext i1 %narrow.i.i.i to i8
  %i.ru = icmp ne i32 %.sroa.512.0.i.i, 0
  %narrow17.i.i.i = select i1 %i.ro, i1 %i.ru, i1 false
  %.sroa.05.0.i.i.i = zext i1 %narrow17.i.i.i to i8
  %i.rv = zext i32 %.sroa.54.0.i.i to i64
  %.sroa.5.0.i.i.i = select i1 %i.qu, i64 %i.rv, i64 undef
  %.sroa.07.0.i.i.i = zext nneg i32 %i.qt to i64
  %i.rw = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  store i32 %.sroa.0.0.i.i.i, ptr %i.rw, align 8, !alias.scope !40949, !noalias !40952
  %i.rx = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store i64 0, ptr %i.rx, align 8, !alias.scope !40949, !noalias !40952
  %i.ry = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store i64 %i.qa, ptr %i.ry, align 8, !alias.scope !40949, !noalias !40952
  %i.rz = getelementptr inbounds nuw i8, ptr %i.n, i64 84
  store i32 %i.py, ptr %i.rz, align 4, !alias.scope !40949, !noalias !40952
  %i.sa = getelementptr inbounds nuw i8, ptr %i.n, i64 92
  store i8 %.sroa.03.0.i.i.i, ptr %i.sa, align 4, !alias.scope !40949, !noalias !40952
  %i.sb = getelementptr inbounds nuw i8, ptr %i.n, i64 93
  store i8 %.sroa.05.0.i.i.i, ptr %i.sb, align 1, !alias.scope !40949, !noalias !40952
  %i.sc = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store i64 %i.qc, ptr %i.sc, align 8, !alias.scope !40949, !noalias !40952
  %i.sd = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store i32 %i.qe, ptr %i.sd, align 8, !alias.scope !40949, !noalias !40952
  %i.se = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.sf = load <2 x i64>, ptr %i.qf, align 8, !alias.scope !40827, !noalias !40833
  store <2 x i64> %i.sf, ptr %i.se, align 8, !alias.scope !40949, !noalias !40952
  %i.sg = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  store i32 65535, ptr %i.sg, align 8, !alias.scope !40949, !noalias !40952
  store i64 %.sroa.07.0.i.i.i, ptr %i.n, align 8, !alias.scope !40949, !noalias !40952
  %i.sh = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %.sroa.5.0.i.i.i, ptr %i.sh, align 8, !alias.scope !40949, !noalias !40952
  %i.si = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.sj = load <2 x i64>, ptr %1, align 8, !alias.scope !40827, !noalias !40833
  store <2 x i64> %i.sj, ptr %i.si, align 8, !alias.scope !40949, !noalias !40952
  %i.sk = invoke fastcc { ptr, ptr } @"_ZN2h25proto7streams7streams20Streams$LT$B$C$P$GT$3new17h76ffac9b2b58ea76E"(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.n)
          to label %bb.ef unwind label %bb.es, !noalias !40954 ; 2 uses

bb.ed:                                            ; preds = %bb.em, %bb.ee
  %.pn.i.i = phi { ptr, i32 } [ %i.sl, %bb.ee ], [ %i.tb, %bb.em ]
  invoke fastcc void @"_ZN4core3ptr103drop_in_place$LT$h2..proto..streams..streams..Streams$LT$bytes..bytes..Bytes$C$h2..server..Peer$GT$$GT$17hc7dac64eafe43c41E"(ptr noalias noundef align 8 dereferenceable(16) %i.k) #44
          to label %bb.er unwind label %bb.ep, !noalias !40954

bb.ee:                                            ; preds = %bb.ek, %.thread48.i.i, %bb.eh
  %i.sl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.ef:                                            ; preds = %bb.ec
  %i.sm = extractvalue { ptr, ptr } %i.sk, 0      ; 2 uses
  %i.sn = extractvalue { ptr, ptr } %i.sk, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !40946
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !40946
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(904) %i.m, ptr noundef nonnull align 8 dereferenceable(904) %i.bk, i64 904, i1 false), !noalias !40955
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !40946
  %i.so = getelementptr inbounds nuw i8, ptr %i.l, i64 17
  store i8 2, ptr %i.so, align 1, !noalias !40946
  %i.sp = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i8 0, ptr %i.sp, align 8, !noalias !40946
  store ptr null, ptr %i.l, align 8, !noalias !40946
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !40946
  store ptr %i.sm, ptr %i.k, align 8, !noalias !40946
  %i.sq = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.sn, ptr %i.sq, align 8, !noalias !40946
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !40946
  %i.sr = load atomic i64, ptr @_ZN12tracing_core8metadata9MAX_LEVEL17h3c62bc6fa7dc27b1E monotonic, align 8, !noalias !40946
  %i.ss = icmp ult i64 %i.sr, 2
  br i1 %i.ss, label %bb.eg, label %.thread52.i.i

bb.eg:                                            ; preds = %bb.ef
  %i.st = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN2h25proto10connection27Connection$LT$T$C$P$C$B$GT$3new10__CALLSITE17h0ef1bfcb779c1c64E", i64 16) monotonic, align 8, !noalias !40946 ; 3 uses
  switch i8 %i.st, label %bb.eh [
    i8 0, label %.thread52.i.i
    i8 1, label %.thread48.i.i
    i8 2, label %.thread48.i.i
  ], !prof !390

bb.eh:                                            ; preds = %bb.eg
  %i.su = invoke noundef i8 @_ZN12tracing_core8callsite15DefaultCallsite8register17hfea5cd845fb2ec3aE(ptr noundef nonnull align 8 @"_ZN2h25proto10connection27Connection$LT$T$C$P$C$B$GT$3new10__CALLSITE17h0ef1bfcb779c1c64E")
          to label %bb.ei unwind label %bb.ee, !noalias !40954 ; 2 uses

bb.ei:                                            ; preds = %bb.eh
  %.not.i242.i = icmp eq i8 %i.su, 0
  br i1 %.not.i242.i, label %.thread52.i.i, label %.thread48.i.i

.thread48.i.i:                                    ; preds = %bb.eg, %bb.ei, %bb.eg
  %.sroa.08.051.i.i = phi i8 [ %i.su, %bb.ei ], [ %i.st, %bb.eg ], [ %i.st, %bb.eg ]
  %i.sv = load ptr, ptr @"_ZN2h25proto10connection27Connection$LT$T$C$P$C$B$GT$3new10__CALLSITE17h0ef1bfcb779c1c64E", align 8, !noalias !40946, !nonnull !27, !align !148, !noundef !27
  %i.sw = invoke noundef zeroext i1 @_ZN7tracing15__macro_support12__is_enabled17ha8d49a956677b3d5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.sv, i8 noundef %.sroa.08.051.i.i)
          to label %bb.ej unwind label %bb.ee, !noalias !40954

bb.ej:                                            ; preds = %.thread48.i.i
  br i1 %i.sw, label %bb.ek, label %.thread52.i.i

bb.ek:                                            ; preds = %bb.ej
  %i.sx = load ptr, ptr @"_ZN2h25proto10connection27Connection$LT$T$C$P$C$B$GT$3new10__CALLSITE17h0ef1bfcb779c1c64E", align 8, !noalias !40946, !nonnull !27, !align !148, !noundef !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !40946
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !40946
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !40946
  store ptr @776, ptr %i.g, align 8, !noalias !40946
  store ptr %i.g, ptr %i.h, align 8, !noalias !40946
  %i.sz = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @777, ptr %i.sz, align 8, !noalias !40946
  store i64 1, ptr %i.i, align 8, !noalias !40946
  %.sroa.426.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.h, ptr %.sroa.426.0..sroa_idx.i.i, align 8, !noalias !40946
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !40946
  %i.ta = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.sy, ptr %i.ta, align 8, !noalias !40946
  invoke void @_ZN7tracing4span4Span3new17hf7eba8cb0dd6baa4E(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.sx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
          to label %bb.eq unwind label %bb.ee, !noalias !40954

bb.el:                                            ; preds = %bb.eo, %.thread52.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false), !noalias !40946
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !40946
  br label %bb.et

bb.em:                                            ; preds = %bb.en
  %i.tb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h3b60b4793e7fa7f8E"(ptr noalias noundef align 8 dereferenceable(40) %i.f) #44
          to label %bb.ed unwind label %bb.ep, !noalias !40954

.thread52.i.i:                                    ; preds = %bb.ej, %bb.ei, %bb.eg, %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !40946
  %i.tc = load ptr, ptr @"_ZN2h25proto10connection27Connection$LT$T$C$P$C$B$GT$3new10__CALLSITE17h0ef1bfcb779c1c64E", align 8, !noalias !40946, !nonnull !27, !align !148, !noundef !27 ; 2 uses
  store i64 2, ptr %i.f, align 8, !noalias !40946
  %i.td = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.tc, ptr %i.td, align 8, !noalias !40946
  %i.te = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !40946
  %i.tf = icmp eq i8 %i.te, 0
  br i1 %i.tf, label %bb.en, label %bb.el

bb.en:                                            ; preds = %.thread52.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !40946
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tc, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !40946
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !40946
  store ptr @776, ptr %i.c, align 8, !noalias !40946
  store ptr %i.c, ptr %i.d, align 8, !noalias !40946
  %i.th = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @777, ptr %i.th, align 8, !noalias !40946
  store i64 1, ptr %i.e, align 8, !noalias !40946
  %.sroa.430.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.d, ptr %.sroa.430.0..sroa_idx.i.i, align 8, !noalias !40946
  %.sroa.531.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 1, ptr %.sroa.531.0..sroa_idx.i.i, align 8, !noalias !40946
  %i.ti = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.tg, ptr %i.ti, align 8, !noalias !40946
  %i.tj = invoke noundef align 8 dereferenceable(40) ptr @_ZN7tracing4span4Span10record_all17hb9e98382ea24c54cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
          to label %bb.eo unwind label %bb.em, !noalias !40954 ; 0 uses

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !40946
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !40946
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !40946
  br label %bb.el

bb.ep:                                            ; preds = %bb.es, %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$h2..frame..go_away..GoAway$GT$$GT$17h5ed69fd7cf4b572bE.exit.i.i", %bb.er, %bb.em, %bb.ed
  %i.tk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !40956
  unreachable

bb.eq:                                            ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !40946
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !40946
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !40946
  br label %bb.et

bb.er:                                            ; preds = %bb.ed
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$h2..proto..ping_pong..PingPong$GT$17h4fbc33de66f9f12cE"(ptr noalias noundef align 8 dereferenceable(32) %i.l) #44
          to label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$h2..frame..go_away..GoAway$GT$$GT$17h5ed69fd7cf4b572bE.exit.i.i" unwind label %bb.ep, !noalias !40954

"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$h2..frame..go_away..GoAway$GT$$GT$17h5ed69fd7cf4b572bE.exit.i.i": ; preds = %bb.er
  invoke fastcc void @"_ZN4core3ptr214drop_in_place$LT$h2..codec..framed_read..FramedRead$LT$h2..codec..framed_write..FramedWrite$LT$tokio..net..tcp..stream..TcpStream$C$h2..proto..streams..prioritize..Prioritized$LT$bytes..bytes..Bytes$GT$$GT$$GT$$GT$17hf88cbdce963517e9E"(ptr noalias noundef nonnull align 8 dereferenceable(904) %i.m)
          to label %.body.i unwind label %bb.ep, !noalias !40954

bb.es:                                            ; preds = %bb.ec
  %i.tl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr214drop_in_place$LT$h2..codec..framed_read..FramedRead$LT$h2..codec..framed_write..FramedWrite$LT$tokio..net..tcp..stream..TcpStream$C$h2..proto..streams..prioritize..Prioritized$LT$bytes..bytes..Bytes$GT$$GT$$GT$$GT$17hf88cbdce963517e9E"(ptr noalias noundef nonnull align 8 dereferenceable(904) %i.bk)
          to label %.body.i unwind label %bb.ep, !noalias !40956

bb.et:                                            ; preds = %bb.eq, %bb.el
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 1056
  store ptr null, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !40957
  %.sroa.0.sroa.0.i.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 1000
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.sroa.0.i.sroa.11.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !40957
  %.sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 1100
  store i64 %.sroa.0281.4.insert.insert.i, ptr %.sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !40957
  %.sroa.421.i.sroa.4.0..sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 1108
  store i32 %i.qo, ptr %.sroa.421.i.sroa.4.0..sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.sroa_idx.i, align 4, !noalias !40957
end_hunk_4
