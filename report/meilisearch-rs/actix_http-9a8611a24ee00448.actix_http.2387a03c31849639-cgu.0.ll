Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/actix_http-9a8611a24ee00448.actix_http.2387a03c31849639-cgu.0?download=true
inline.NumInlined: 6414
inline.NumDeleted: 2069
loop-unroll.NumCompletelyUnrolled: 166
loop-unroll.NumRuntimeUnrolled: 66
loop-unroll.NumUnrolled: 295
begin_hunk_0_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17he061b6f34e5c3b37E:bb.a
  %i.jx = shl i64 %i.jv, 4                        ; 5 uses
  %i.jy = icmp ugt i64 %.sroa.0.0.i448.i.i, 1152921504606846974
  %i.jz = icmp ugt i64 %i.jx, 9223372036854775804
  %or.cond.i.i.i.i.i449.i.i = or i1 %i.jy, %i.jz
  br i1 %or.cond.i.i.i.i.i449.i.i, label %bb.ap, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i, !prof !1120

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i: ; preds = %bb.ao
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !8433
  %i.ka = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.jx, i64 noundef range(i64 1, 9) 4) #45, !noalias !8433 ; 5 uses
  %i.kb = icmp eq ptr %i.ka, null
  br i1 %i.kb, label %bb.ap, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hddb3f0f40187330dE.exit.i.i"

bb.ap:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i, %bb.ao
  %.sroa.4.0.ph.i.i.i455.i.i = phi i64 [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i ], [ 0, %bb.ao ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i455.i.i, i64 %i.jx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc456.i.i unwind label %.thread164.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !8395

.noexc456.i.i:                                    ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hddb3f0f40187330dE.exit.i.i", %bb.an
  %.sroa.11.2.i.i = phi i64 [ %i.jv, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hddb3f0f40187330dE.exit.i.i" ], [ 2049, %bb.an ] ; 4 uses
  %.sroa.044.2.i.i = phi ptr [ %i.ka, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hddb3f0f40187330dE.exit.i.i" ], [ %i.jl, %bb.an ] ; 4 uses
  %i.kc = shl i64 %i.ux, 2                        ; 12 uses
  %i.kd = icmp ugt i64 %i.ux, 4611686018427387903
  %i.ke = icmp ugt i64 %i.kc, 9223372036854775804
  %or.cond.i.i.i.i458.i.i = or i1 %i.kd, %i.ke
  br i1 %or.cond.i.i.i.i458.i.i, label %bb.at, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i, !prof !1120

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i: ; preds = %bb.aq
  %i.kf = icmp eq i64 %i.kc, 0                    ; 2 uses
  br i1 %i.kf, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !8441
  %i.kg = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.kc, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !8441 ; 2 uses
  %i.kh = icmp eq ptr %i.kg, null
  br i1 %i.kh, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ki = ptrtoint ptr %i.kg to i64
  br label %bb.au

bb.at:                                            ; preds = %bb.ar, %bb.aq
  %.sroa.4.0.ph.i.i461.i.i = phi i64 [ 4, %bb.ar ], [ 0, %bb.aq ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i461.i.i, i64 %i.kc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc462.i.i unwind label %.thread164.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !8395

.noexc462.i.i:                                    ; preds = %bb.at
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hddb3f0f40187330dE.exit.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i
  %i.kj = add nsw i64 %i.jx, -16                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ka, i8 0, i64 %i.kj, i1 false), !noalias !8446
  %i.kk = getelementptr i8, ptr %i.ka, i64 %i.jx  ; 2 uses
  %scevgep11.i451.i.i = getelementptr i8, ptr %i.ka, i64 %i.kj
  store i32 0, ptr %scevgep11.i451.i.i, align 4, !noalias !8446
  %.sroa.55.0..sroa_idx.i452.i.i = getelementptr i8, ptr %i.kk, i64 -12
  store i32 0, ptr %.sroa.55.0..sroa_idx.i452.i.i, align 4, !noalias !8446
  %.sroa.67.0..sroa_idx.i453.i.i = getelementptr i8, ptr %i.kk, i64 -8
  store <2 x float> zeroinitializer, ptr %.sroa.67.0..sroa_idx.i453.i.i, align 4, !noalias !8446
  %i.kl = icmp samesign ult i64 %.sroa.0.0.i448.i.i, 576460752303423487
  tail call void @llvm.assume(i1 %i.kl)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.jl, i64 noundef 32784, i64 noundef 4) #45, !noalias !8395
  br label %bb.aq

bb.au:                                            ; preds = %bb.as, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i
  %.sroa.10.0.i.i460.i.i = phi i64 [ %i.ki, %bb.as ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i ]
  %i.km = inttoptr i64 %.sroa.10.0.i.i460.i.i to ptr ; 13 uses
  %i.kn = icmp samesign ult i64 %i.ux, 2305843009213693952
  tail call void @llvm.assume(i1 %i.kn)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.km) ]
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.kc
  %i.kp = icmp eq i64 %i.ux, 0                    ; 3 uses
  br i1 %i.kp, label %._crit_edge587.i.i, label %.lr.ph586.i.i.preheader

.lr.ph586.i.i.preheader:                          ; preds = %bb.au
  %i.kq = add nsw i64 %i.kc, -4                   ; 2 uses
  %i.kr = lshr exact i64 %i.kq, 2
  %i.ks = add nuw nsw i64 %i.kr, 1                ; 2 uses
  %min.iters.check3793 = icmp ult i64 %i.kq, 28
  br i1 %min.iters.check3793, label %.lr.ph586.i.i.preheader4504, label %vector.ph3794

vector.ph3794:                                    ; preds = %.lr.ph586.i.i.preheader
  %n.vec3795 = and i64 %i.ks, 9223372036854775800 ; 4 uses
  %i.kt = trunc i64 %n.vec3795 to i32
  %i.ku = shl i64 %n.vec3795, 2
  %i.kv = getelementptr i8, ptr %i.km, i64 %i.ku
  br label %vector.body3796

vector.body3796:                                  ; preds = %vector.body3796, %vector.ph3794
  %index3797 = phi i64 [ 0, %vector.ph3794 ], [ %index.next3799, %vector.body3796 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph3794 ], [ %vec.ind.next, %vector.body3796 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.kw = shl i64 %index3797, 2
  %next.gep3798 = getelementptr i8, ptr %i.km, i64 %i.kw ; 2 uses
  %i.kx = getelementptr i8, ptr %next.gep3798, i64 16
  store <4 x i32> %vec.ind, ptr %next.gep3798, align 4, !noalias !8395
  store <4 x i32> %step.add, ptr %i.kx, align 4, !noalias !8395
  %index.next3799 = add nuw i64 %index3797, 8     ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ky = icmp eq i64 %index.next3799, %n.vec3795
  br i1 %i.ky, label %middle.block3800, label %vector.body3796, !llvm.loop !8449

middle.block3800:                                 ; preds = %vector.body3796
  %cmp.n = icmp eq i64 %i.ks, %n.vec3795
  br i1 %cmp.n, label %._crit_edge587.i.i, label %.lr.ph586.i.i.preheader4504

.lr.ph586.i.i.preheader4504:                      ; preds = %.lr.ph586.i.i.preheader, %middle.block3800
  %.sroa.047.2584.i.i.ph = phi i32 [ 0, %.lr.ph586.i.i.preheader ], [ %i.kt, %middle.block3800 ]
  %.sroa.0135.0583.i.i.ph = phi ptr [ %i.km, %.lr.ph586.i.i.preheader ], [ %i.kv, %middle.block3800 ]
  br label %.lr.ph586.i.i

.lr.ph586.i.i:                                    ; preds = %.lr.ph586.i.i.preheader4504, %.lr.ph586.i.i
  %.sroa.047.2584.i.i = phi i32 [ %i.kz, %.lr.ph586.i.i ], [ %.sroa.047.2584.i.i.ph, %.lr.ph586.i.i.preheader4504 ] ; 2 uses
  %.sroa.0135.0583.i.i = phi ptr [ %.sroa.0135.1.i.i, %.lr.ph586.i.i ], [ %.sroa.0135.0583.i.i.ph, %.lr.ph586.i.i.preheader4504 ] ; 2 uses
  %.sroa.0135.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0135.0583.i.i, i64 4 ; 2 uses
  store i32 %.sroa.047.2584.i.i, ptr %.sroa.0135.0583.i.i, align 4, !noalias !8395
  %i.kz = add i32 %.sroa.047.2584.i.i, 1
  %i.la = icmp eq ptr %.sroa.0135.1.i.i, %i.ko
  br i1 %i.la, label %._crit_edge587.i.i, label %.lr.ph586.i.i, !llvm.loop !8450

._crit_edge587.i.i:                               ; preds = %.lr.ph586.i.i, %middle.block3800, %bb.au
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.7.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.5.i.i) ]
  %i.lb = invoke fastcc noundef i64 @_ZN6brotli3enc7cluster22BrotliHistogramCombine17hcdc3ee27b6945a83E(ptr noalias noundef nonnull align 8 %.sroa.016.7.i.i, i64 noundef %.sroa.14.7.i.i, ptr noalias noundef nonnull align 4 %.sroa.026.5.i.i, i64 noundef %.sroa.12.5.i.i, ptr noalias noundef nonnull align 4 %i.ho, i64 noundef %.sroa.0.0.i.i, ptr noalias noundef nonnull align 4 %i.km, i64 noundef %i.ux, ptr noalias noundef nonnull align 4 %.sroa.044.2.i.i, i64 noundef %.sroa.11.2.i.i, i64 noundef %i.ux, i64 noundef %.sroa.0.0.i.i, i64 noundef 256, i64 noundef %.sroa.0.0.i448.i.i)
          to label %bb.av unwind label %bb.am, !noalias !8395 ; 3 uses

bb.av:                                            ; preds = %._crit_edge587.i.i
  %i.lc = shl nuw nsw i64 %.sroa.11.2.i.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %.sroa.044.2.i.i, i64 noundef %i.lc, i64 noundef 4) #45, !noalias !8395
  %i.ld = icmp eq i64 %.sroa.12.5.i.i, 0
  br i1 %i.ld, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i": ; preds = %bb.av
  %i.le = shl nuw nsw i64 %.sroa.12.5.i.i, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %.sroa.026.5.i.i, i64 noundef %i.le, i64 noundef 4) #45, !noalias !8395
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i: ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i", %bb.av
  br i1 %i.kf, label %bb.ba, label %bb.aw

bb.aw:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !8451
  %i.lf = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.kc, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !8451 ; 2 uses
  %i.lg = icmp eq ptr %i.lf, null
  br i1 %i.lg, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.lh = ptrtoint ptr %i.lf to i64
  br label %bb.ba

bb.ay:                                            ; preds = %bb.aw
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.kc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc472.i.i unwind label %bb.am, !noalias !8395

.noexc472.i.i:                                    ; preds = %bb.ay
  unreachable

bb.az:                                            ; preds = %.invoke1139.i.i, %.invoke1137.i.i
  %i.li = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

bb.ba:                                            ; preds = %bb.ax, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i
  %.sroa.10.0.i.i470.i.i = phi i64 [ %i.lh, %bb.ax ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i ]
  %i.lj = inttoptr i64 %.sroa.10.0.i.i470.i.i to ptr ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lj) ]
  br i1 %i.kp, label %.preheader.split.i.i, label %.lr.ph590.preheader.i.i

.lr.ph590.preheader.i.i:                          ; preds = %bb.ba
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.lj, i8 -1, i64 %i.kc, i1 false), !noalias !8395
  br label %.preheader.split.i.i

.preheader.split.i.i:                             ; preds = %.lr.ph590.preheader.i.i, %bb.ba
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ak, i64 1024
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ak, i64 1032
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ai, i64 1024 ; 3 uses
  %.not1144.i.i = icmp eq i64 %i.lb, 0            ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.aj, i64 1024 ; 3 uses
  br label %bb.bx

bb.bb:                                            ; preds = %bb.cb
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.km, i64 noundef %i.kc, i64 noundef 4) #45, !noalias !8395
  %i.lo = mul nuw nsw i64 %.sroa.14.7.i.i, 1040
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %.sroa.016.7.i.i, i64 noundef %i.lo, i64 noundef 8) #45, !noalias !8395
  %.val339.i.i = load ptr, ptr %7, align 8, !alias.scope !8456, !noalias !8457, !nonnull !4, !align !132, !noundef !4 ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %.val340.i.i = load i64, ptr %i.lp, align 8, !alias.scope !8456, !noalias !8457, !noundef !4 ; 6 uses
  %i.lq = icmp ult i64 %.val340.i.i, %.sroa.0.0.i.i
  br i1 %i.lq, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  %i.lr = icmp eq i64 %.val340.i.i, 0             ; 2 uses
  %spec.select.i168.i = select i1 %i.lr, i64 %.sroa.0.0.i.i, i64 %.val340.i.i
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %bb.bc
  %.sroa.0101.1.i.i = phi i64 [ %spec.select.i168.i, %bb.bc ], [ %i.lt, %bb.bd ] ; 9 uses
  %i.ls = icmp ult i64 %.sroa.0101.1.i.i, %.sroa.0.0.i.i
  %i.lt = shl nuw nsw i64 %.sroa.0101.1.i.i, 1
  br i1 %i.ls, label %bb.bd, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.lu = icmp slt i64 %.sroa.0101.1.i.i, 0
  br i1 %i.lu, label %.invoke1137.i.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i, !prof !1120

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i: ; preds = %bb.be
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !8458
  %i.lv = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %.sroa.0101.1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !8458 ; 5 uses
  %i.lw = icmp eq ptr %i.lv, null
  br i1 %i.lw, label %.invoke1137.i.i, label %bb.bf

bb.bf:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lv, ptr nonnull readonly align 1 %.val339.i.i, i64 %.val340.i.i, i1 false), !alias.scope !8464, !noalias !8468
  store ptr %i.lv, ptr %7, align 8, !alias.scope !8456, !noalias !8457
  store i64 %.sroa.0101.1.i.i, ptr %i.lp, align 8, !alias.scope !8456, !noalias !8457
  br i1 %i.lr, label %bb.bg, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i483.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i483.i.i": ; preds = %bb.bf
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %.val339.i.i, i64 noundef %.val340.i.i, i64 noundef 1) #45, !noalias !8395
  br label %bb.bg

bb.bg:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i483.i.i", %bb.bf, %bb.bb
  %.val.i.i = phi ptr [ %.val339.i.i, %bb.bb ], [ %i.lv, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i483.i.i" ], [ %i.lv, %bb.bf ]
  %.val270.i.i = phi i64 [ %.val340.i.i, %bb.bb ], [ %.sroa.0101.1.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i483.i.i" ], [ %.sroa.0101.1.i.i, %bb.bf ] ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %.val327.i.i = load ptr, ptr %i.lx, align 8, !alias.scope !8456, !noalias !8457, !nonnull !4, !align !131, !noundef !4 ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %.val328.i.i = load i64, ptr %i.ly, align 8, !alias.scope !8456, !noalias !8457, !noundef !4 ; 5 uses
  %i.lz = icmp ult i64 %.val328.i.i, %.sroa.0.0.i.i
  br i1 %i.lz, label %bb.bh, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit493.i.i"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit493.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i492.i.i", %bb.bm, %bb.bg
  %.val351.i.i = phi ptr [ %i.mm, %bb.bm ], [ %i.mm, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i492.i.i" ], [ %.val327.i.i, %bb.bg ]
  %.val352.i.i = phi i64 [ %.sroa.0104.1.i.i, %bb.bm ], [ %.sroa.0104.1.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i492.i.i" ], [ %.val328.i.i, %bb.bg ] ; 2 uses
  br label %bb.bo

bb.bh:                                            ; preds = %bb.bg
  %i.ma = icmp eq i64 %.val328.i.i, 0             ; 2 uses
  %spec.select250.i.i = select i1 %i.ma, i64 %.sroa.0.0.i.i, i64 %.val328.i.i
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %bb.bh
  %.sroa.0104.1.i.i = phi i64 [ %spec.select250.i.i, %bb.bh ], [ %i.mc, %bb.bi ] ; 8 uses
  %i.mb = icmp ult i64 %.sroa.0104.1.i.i, %.sroa.0.0.i.i
  %i.mc = shl nuw nsw i64 %.sroa.0104.1.i.i, 1
  br i1 %i.mb, label %bb.bi, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.md = shl i64 %.sroa.0104.1.i.i, 2            ; 5 uses
  %i.me = icmp ugt i64 %.sroa.0104.1.i.i, 4611686018427387903
  %i.mf = icmp ugt i64 %i.md, 9223372036854775804
  %or.cond.i.i.i.i484.i.i = or i1 %i.me, %i.mf
  br i1 %or.cond.i.i.i.i484.i.i, label %.invoke1137.i.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i485.i.i, !prof !1120

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i485.i.i: ; preds = %bb.bj
  %i.mg = icmp eq i64 %i.md, 0
  br i1 %i.mg, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i485.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !8470
  %i.mh = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.md, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !8470 ; 2 uses
  %i.mi = icmp eq ptr %i.mh, null
  br i1 %i.mi, label %.invoke1137.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.mj = ptrtoint ptr %i.mh to i64
  br label %bb.bm

.invoke1137.i.i:                                  ; preds = %bb.bk, %bb.bj, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i, %bb.be
  %i.mk = phi i64 [ 0, %bb.be ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i ], [ 4, %bb.bk ], [ 0, %bb.bj ]
  %i.ml = phi i64 [ %.sroa.0101.1.i.i, %bb.be ], [ %.sroa.0101.1.i.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i ], [ %i.md, %bb.bk ], [ %i.md, %bb.bj ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.mk, i64 %i.ml, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.cont1138.i.i unwind label %bb.az, !noalias !8395

.cont1138.i.i:                                    ; preds = %.invoke1137.i.i
  unreachable

bb.bm:                                            ; preds = %bb.bl, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i485.i.i
  %.sroa.10.0.i.i486.i.i = phi i64 [ %i.mj, %bb.bl ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i485.i.i ]
  %i.mm = inttoptr i64 %.sroa.10.0.i.i486.i.i to ptr ; 5 uses
  %i.mn = icmp samesign ult i64 %.sroa.0104.1.i.i, 2305843009213693952
  tail call void @llvm.assume(i1 %i.mn)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mm) ]
  %i.mo = shl nuw nsw i64 %.val328.i.i, 2         ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.mm, ptr nonnull readonly align 4 %.val327.i.i, i64 %i.mo, i1 false), !alias.scope !8475, !noalias !8479
  store ptr %i.mm, ptr %i.lx, align 8, !alias.scope !8456, !noalias !8457
  store i64 %.sroa.0104.1.i.i, ptr %i.ly, align 8, !alias.scope !8456, !noalias !8457
  br i1 %i.ma, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit493.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i492.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i492.i.i": ; preds = %bb.bm
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %.val327.i.i, i64 noundef %i.mo, i64 noundef 4) #45, !noalias !8395
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit493.i.i"

bb.bn:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i551.i.i", %.thread131.i.i
  %i.mp = icmp eq i64 %.sroa.11.0148.i.i, 0
  br i1 %i.mp, label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit446.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i": ; preds = %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit550.i.i", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit548.i.i", %bb.db, %bb.bn, %.thread164.loopexit.split-lp.loopexit.split-lp.i.i, %.thread164.loopexit.split-lp.loopexit.i.i, %.thread164.loopexit.i.i
  %.pn230.pn204.i.i = phi { ptr, i32 } [ %.pn230156.i.i, %bb.bn ], [ %i.wi, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit548.i.i" ], [ %i.vr, %bb.db ], [ %i.wj, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit550.i.i" ], [ %lpad.loopexit258.i.i, %.thread164.loopexit.i.i ], [ %lpad.loopexit261.i.i, %.thread164.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.split-lp262.i.i, %.thread164.loopexit.split-lp.loopexit.split-lp.i.i ]
  %.sroa.11.0122203.i.i = phi i64 [ %.sroa.11.0148.i.i, %bb.bn ], [ 2049, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit548.i.i" ], [ 2049, %bb.db ], [ 2049, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit550.i.i" ], [ 2049, %.thread164.loopexit.i.i ], [ 2049, %.thread164.loopexit.split-lp.loopexit.i.i ], [ %.sroa.11.1.ph.ph.ph.i.i, %.thread164.loopexit.split-lp.loopexit.split-lp.i.i ]
  %.sroa.044.0123202.i.i = phi ptr [ %.sroa.044.0149.i.i, %bb.bn ], [ %i.jl, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit548.i.i" ], [ %i.jl, %bb.db ], [ %i.jl, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit550.i.i" ], [ %i.jl, %.thread164.loopexit.i.i ], [ %i.jl, %.thread164.loopexit.split-lp.loopexit.i.i ], [ %.sroa.044.1.ph.ph.ph.i.i, %.thread164.loopexit.split-lp.loopexit.split-lp.i.i ] ; 2 uses
  %.sroa.1335.1124200.i.i = phi i64 [ 0, %bb.bn ], [ %.sroa.0.0.i422.i.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit548.i.i" ], [ %.sroa.0.0.i422.i.i, %bb.db ], [ %.sroa.0.0.i422.i.i, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit550.i.i" ], [ %.sroa.0.0.i422.i.i, %.thread164.loopexit.i.i ], [ %.sroa.0.0.i422.i.i, %.thread164.loopexit.split-lp.loopexit.i.i ], [ %.sroa.1335.2.ph.ph.ph.i.i, %.thread164.loopexit.split-lp.loopexit.split-lp.i.i ]
  %.sroa.034.1125198.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.bn ], [ %.sroa.10.0.i.i.i427920.i.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit548.i.i" ], [ %.sroa.10.0.i.i.i427920.i.i, %bb.db ], [ %.sroa.10.0.i.i.i427920.i.i, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit550.i.i" ], [ %.sroa.10.0.i.i.i427920.i.i, %.thread164.loopexit.i.i ], [ %.sroa.10.0.i.i.i427920.i.i, %.thread164.loopexit.split-lp.loopexit.i.i ], [ %.sroa.034.2.ph.ph.ph.i.i, %.thread164.loopexit.split-lp.loopexit.split-lp.i.i ]
  %.sroa.12.3126196.i.i = phi i64 [ %.sroa.12.3152.i.i, %bb.bn ], [ %.sroa.12.2572.i.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit548.i.i" ], [ %.sroa.12.5.i.i, %bb.db ], [ %.sroa.12.2572.i.i, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit550.i.i" ], [ %.sroa.12.2572.i.i, %.thread164.loopexit.i.i ], [ %.sroa.12.2572.i.i, %.thread164.loopexit.split-lp.loopexit.i.i ], [ %.sroa.12.4.ph.ph.ph.i.i, %.thread164.loopexit.split-lp.loopexit.split-lp.i.i ]
  %.sroa.026.3127194.i.i = phi ptr [ %.sroa.026.3153.i.i, %bb.bn ], [ %.sroa.026.2573.i.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit548.i.i" ], [ %.sroa.026.5.i.i, %bb.db ], [ %.sroa.026.2573.i.i, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit550.i.i" ], [ %.sroa.026.2573.i.i, %.thread164.loopexit.i.i ], [ %.sroa.026.2573.i.i, %.thread164.loopexit.split-lp.loopexit.i.i ], [ %.sroa.026.4.ph.ph.ph.i.i, %.thread164.loopexit.split-lp.loopexit.split-lp.i.i ]
  %.sroa.14.4128192.i.i = phi i64 [ %.sroa.14.4154.i.i, %bb.bn ], [ %.sroa.14.7.i.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit548.i.i" ], [ %.sroa.14.7.i.i, %bb.db ], [ %.sroa.14.3574.i.i, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit550.i.i" ], [ %.sroa.14.3574.i.i, %.thread164.loopexit.i.i ], [ %.sroa.14.3574.i.i, %.thread164.loopexit.split-lp.loopexit.i.i ], [ %.sroa.14.5.ph.ph.ph.i.i, %.thread164.loopexit.split-lp.loopexit.split-lp.i.i ]
  %.sroa.016.4129190.i.i = phi ptr [ %.sroa.016.4155.i.i, %bb.bn ], [ %.sroa.016.7.i.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit548.i.i" ], [ %.sroa.016.7.i.i, %bb.db ], [ %.sroa.016.3575.i.i, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit550.i.i" ], [ %.sroa.016.3575.i.i, %.thread164.loopexit.i.i ], [ %.sroa.016.3575.i.i, %.thread164.loopexit.split-lp.loopexit.i.i ], [ %.sroa.016.5.ph.ph.ph.i.i, %.thread164.loopexit.split-lp.loopexit.split-lp.i.i ]
  %i.mq = shl nuw nsw i64 %.sroa.11.0122203.i.i, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.044.0123202.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.044.0123202.i.i, i64 noundef %i.mq, i64 noundef 4) #45, !noalias !8395
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i"

bb.bo:                                            ; preds = %bb.bs, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit493.i.i"
  %i.mr = phi i64 [ 1, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit493.i.i" ], [ %i.nb, %bb.bs ] ; 6 uses
  %.sroa.0107.0617.i.i = phi i32 [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit493.i.i" ], [ %.sroa.0107.1.i.i, %bb.bs ]
  %.sroa.0109.0616.i.i = phi i64 [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit493.i.i" ], [ %.sroa.0109.1.i.i, %bb.bs ] ; 8 uses
  %.sroa.0113.0615.i.i = phi i8 [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit493.i.i" ], [ %.sroa.0113.1.i.i, %bb.bs ] ; 2 uses
  %.sroa.0143.0614.i.i = phi i64 [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit493.i.i" ], [ %i.mr, %bb.bs ] ; 3 uses
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i, i64 %.sroa.0143.0614.i.i
  %i.mt = load i32, ptr %i.ms, align 4, !noalias !8395, !noundef !4
  %i.mu = add i32 %i.mt, %.sroa.0107.0617.i.i     ; 2 uses
  %i.mv = icmp eq i64 %i.mr, %.sroa.0.0.i.i       ; 2 uses
  br i1 %i.mv, label %._crit_edge853.i.i, label %bb.bq

._crit_edge853.i.i:                               ; preds = %bb.bo
  %.phi.trans.insert.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %.sroa.0143.0614.i.i
  %.pre854.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !noalias !8395
  br label %bb.bt

bb.bp:                                            ; preds = %bb.dd, %bb.cv, %bb.cn
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %i.mw = icmp ult i64 %i.mr, %.sroa.0.0.i.i
  br i1 %i.mw, label %bb.br, label %.invoke1139.i.i

bb.br:                                            ; preds = %bb.bq
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %.sroa.0143.0614.i.i
  %i.my = load i32, ptr %i.mx, align 4, !noalias !8395, !noundef !4 ; 2 uses
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.mr
  %i.na = load i32, ptr %i.mz, align 4, !noalias !8395, !noundef !4
  %.not223.i.i = icmp eq i32 %i.my, %i.na
  br i1 %.not223.i.i, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.bw, %bb.br
  %.sroa.0113.1.i.i = phi i8 [ %.sroa.0.0.i511.i.i, %bb.bw ], [ %.sroa.0113.0615.i.i, %bb.br ] ; 2 uses
  %.sroa.0109.1.i.i = phi i64 [ %i.np, %bb.bw ], [ %.sroa.0109.0616.i.i, %bb.br ] ; 2 uses
  %.sroa.0107.1.i.i = phi i32 [ 0, %bb.bw ], [ %i.mu, %bb.br ]
  %i.nb = add i64 %i.mr, 1
  br i1 %i.mv, label %_ZN6brotli3enc14block_splitter15SplitByteVector17hac378eb7d3d5ee71E.exit, label %bb.bo

bb.bt:                                            ; preds = %bb.br, %._crit_edge853.i.i
  %i.nc = phi i32 [ %.pre854.i.i, %._crit_edge853.i.i ], [ %i.my, %bb.br ]
  %i.nd = zext i32 %i.nc to i64                   ; 3 uses
  %i.ne = icmp samesign ugt i64 %i.ux, %i.nd
  br i1 %i.ne, label %bb.bu, label %.invoke1139.i.i

bb.bu:                                            ; preds = %bb.bt
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %i.nd
  %i.ng = load i32, ptr %i.nf, align 4, !noalias !8395, !noundef !4
  %i.nh = trunc i32 %i.ng to i8                   ; 2 uses
  %i.ni = icmp ult i64 %.sroa.0109.0616.i.i, %.val270.i.i
  br i1 %i.ni, label %bb.bv, label %.invoke1139.i.i

bb.bv:                                            ; preds = %bb.bu
  %i.nj = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0109.0616.i.i
  store i8 %i.nh, ptr %i.nj, align 1, !noalias !8395
  %i.nk = icmp ult i64 %.sroa.0109.0616.i.i, %.val352.i.i
  br i1 %i.nk, label %bb.bw, label %.invoke1139.i.i

.invoke1139.i.i:                                  ; preds = %bb.bv, %bb.bu, %bb.bt, %bb.bq
  %i.nl = phi i64 [ %.sroa.0109.0616.i.i, %bb.bu ], [ %i.nd, %bb.bt ], [ %i.mr, %bb.bq ], [ %.sroa.0109.0616.i.i, %bb.bv ]
  %i.nm = phi i64 [ %.val270.i.i, %bb.bu ], [ %i.ux, %bb.bt ], [ %.sroa.0.0.i.i, %bb.bq ], [ %.val352.i.i, %bb.bv ]
  %i.nn = phi ptr [ @897, %bb.bu ], [ @896, %bb.bt ], [ @895, %bb.bq ], [ @898, %bb.bv ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.nl, i64 noundef %i.nm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.nn) #46
          to label %.cont1140.i.i unwind label %bb.az, !noalias !8395

.cont1140.i.i:                                    ; preds = %.invoke1139.i.i
  unreachable

bb.bw:                                            ; preds = %bb.bv
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %.val351.i.i, i64 %.sroa.0109.0616.i.i
  store i32 %i.mu, ptr %i.no, align 4, !noalias !8395
  %.sroa.0.0.i511.i.i = tail call noundef i8 @llvm.umax.i8(i8 %i.nh, i8 %.sroa.0113.0615.i.i)
  %i.np = add nuw i64 %.sroa.0109.0616.i.i, 1
  br label %bb.bs

bb.bx:                                            ; preds = %bb.cb, %.preheader.split.i.i
  %.sroa.0137.1613.i.i = phi i64 [ 1, %.preheader.split.i.i ], [ %.sroa.0137.1.i.i, %bb.cb ] ; 3 uses
  %.sroa.043.1612.i.i = phi i64 [ 0, %.preheader.split.i.i ], [ %.sroa.043.2.lcssa.i8590848.i, %bb.cb ] ; 4 uses
  %.sroa.084.0611.i.i = phi i32 [ 0, %.preheader.split.i.i ], [ %.sroa.084.1.i.i, %bb.cb ] ; 3 uses
  %.sroa.0137.0610.i.i = phi i64 [ 0, %.preheader.split.i.i ], [ %.sroa.0137.1613.i.i, %bb.cb ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !8395
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ak, i8 0, i64 1032, i1 false), !noalias !8395
  store float 3.402000e+38, ptr %i.ll, align 8, !alias.scope !8481, !noalias !8395
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i, i64 %.sroa.0137.0610.i.i
  %i.nr = load i32, ptr %i.nq, align 4, !noalias !8395, !noundef !4 ; 2 uses
  %i.ns = zext i32 %i.nr to i64                   ; 2 uses
  %.not621.i.i = icmp eq i32 %i.nr, 0
  br i1 %.not621.i.i, label %._crit_edge598.i.thread.i, label %.lr.ph597.preheader.i.i

.loopexit.split-lp.thread.i.i:                    ; preds = %.noexc240.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i"

.loopexit.split-lp.loopexit.i.i:                  ; preds = %.noexc246.i.i
  %lpad.loopexit253.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.i.i:         ; preds = %.invoke1141.i.i
  %lpad.loopexit.split-lp254.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.lr.ph597.preheader.i.i:                          ; preds = %bb.bx
  %i.nt = tail call i64 @llvm.usub.sat.i64(i64 %i.aq, i64 %.sroa.043.1612.i.i)
  br label %.lr.ph597.i.i

.lr.ph597.i.i:                                    ; preds = %bb.cf, %.lr.ph597.preheader.i.i
  %.sroa.043.2595.i.i = phi i64 [ %i.tb, %bb.cf ], [ %.sroa.043.1612.i.i, %.lr.ph597.preheader.i.i ] ; 3 uses
  %i.nu = phi i64 [ %i.ta, %bb.cf ], [ 0, %.lr.ph597.preheader.i.i ] ; 2 uses
  %exitcond842.not.i.i = icmp eq i64 %i.nu, %i.nt
  br i1 %exitcond842.not.i.i, label %.invoke1141.i.i, label %bb.cf

._crit_edge598.i.i:                               ; preds = %bb.cf
  store i64 %i.ns, ptr %i.lk, align 8, !noalias !8395
  %i.nv = icmp eq i64 %.sroa.0137.0610.i.i, 0
  %i.nw = getelementptr [4 x i8], ptr %i.ho, i64 %.sroa.0137.0610.i.i ; 3 uses
  %i.nx = getelementptr i8, ptr %i.nw, i64 -4
  %.sroa.097.0.in.i.i = select i1 %i.nv, ptr %i.ho, ptr %i.nx
  %.sroa.097.0.i.i = load i32, ptr %.sroa.097.0.in.i.i, align 4, !noalias !8395, !noundef !4 ; 3 uses
  %i.ny = zext i32 %.sroa.097.0.i.i to i64        ; 4 uses
  %i.nz = icmp ugt i64 %.sroa.14.7.i.i, %i.ny
  br i1 %i.nz, label %.noexc244.i.i, label %.invoke1141.i.i

._crit_edge598.i.thread.i:                        ; preds = %bb.bx
  %i.oa = icmp eq i64 %.sroa.0137.0610.i.i, 0
  %i.ob = getelementptr [4 x i8], ptr %i.ho, i64 %.sroa.0137.0610.i.i ; 3 uses
  %i.oc = getelementptr i8, ptr %i.ob, i64 -4
  %.sroa.097.0.in.i83.i = select i1 %i.oa, ptr %i.ho, ptr %i.oc
  %.sroa.097.0.i84.i = load i32, ptr %.sroa.097.0.in.i83.i, align 4, !noalias !8395, !noundef !4 ; 3 uses
  %i.od = zext i32 %.sroa.097.0.i84.i to i64      ; 4 uses
  %i.oe = icmp ugt i64 %.sroa.14.7.i.i, %i.od
end_hunk_0
begin_hunk_1_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17he061b6f34e5c3b37E:bb.a
  %i.bcr = shl i64 %i.bcp, 4                      ; 5 uses
  %i.bcs = icmp ugt i64 %.sroa.0.0.i448.i.i297, 1152921504606846974
  %i.bct = icmp ugt i64 %i.bcr, 9223372036854775804
  %or.cond.i.i.i.i.i449.i.i379 = or i1 %i.bcs, %i.bct
  br i1 %or.cond.i.i.i.i.i449.i.i379, label %bb.if, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i380, !prof !1120

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i380: ; preds = %bb.ie
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !8877
  %i.bcu = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bcr, i64 noundef range(i64 1, 9) 4) #45, !noalias !8877 ; 5 uses
  %i.bcv = icmp eq ptr %i.bcu, null
  br i1 %i.bcv, label %bb.if, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hddb3f0f40187330dE.exit.i.i381"

bb.if:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i380, %bb.ie
  %.sroa.4.0.ph.i.i.i455.i.i386 = phi i64 [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i380 ], [ 0, %bb.ie ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i455.i.i386, i64 %i.bcr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc456.i.i387 unwind label %.thread164.loopexit.split-lp.loopexit.split-lp.i.i230, !noalias !8839

.noexc456.i.i387:                                 ; preds = %bb.if
  unreachable

bb.ig:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hddb3f0f40187330dE.exit.i.i381", %bb.id
  %.sroa.11.2.i.i298 = phi i64 [ %i.bcp, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hddb3f0f40187330dE.exit.i.i381" ], [ 2049, %bb.id ] ; 4 uses
  %.sroa.044.2.i.i299 = phi ptr [ %i.bcu, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hddb3f0f40187330dE.exit.i.i381" ], [ %i.bcf, %bb.id ] ; 4 uses
  %i.bcw = shl i64 %i.bny, 2                      ; 12 uses
  %i.bcx = icmp ugt i64 %i.bny, 4611686018427387903
  %i.bcy = icmp ugt i64 %i.bcw, 9223372036854775804
  %or.cond.i.i.i.i458.i.i300 = or i1 %i.bcx, %i.bcy
  br i1 %or.cond.i.i.i.i458.i.i300, label %bb.ij, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i301, !prof !1120

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i301: ; preds = %bb.ig
  %i.bcz = icmp eq i64 %i.bcw, 0                  ; 2 uses
  br i1 %i.bcz, label %bb.ik, label %bb.ih

bb.ih:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i301
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !8885
  %i.bda = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.bcw, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !8885 ; 2 uses
  %i.bdb = icmp eq ptr %i.bda, null
  br i1 %i.bdb, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.bdc = ptrtoint ptr %i.bda to i64
  br label %bb.ik

bb.ij:                                            ; preds = %bb.ih, %bb.ig
  %.sroa.4.0.ph.i.i461.i.i377 = phi i64 [ 4, %bb.ih ], [ 0, %bb.ig ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i461.i.i377, i64 %i.bcw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc462.i.i378 unwind label %.thread164.loopexit.split-lp.loopexit.split-lp.i.i230, !noalias !8839

.noexc462.i.i378:                                 ; preds = %bb.ij
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hddb3f0f40187330dE.exit.i.i381": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i380
  %i.bdd = add nsw i64 %i.bcr, -16                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bcu, i8 0, i64 %i.bdd, i1 false), !noalias !8890
  %i.bde = getelementptr i8, ptr %i.bcu, i64 %i.bcr ; 2 uses
  %scevgep11.i451.i.i382 = getelementptr i8, ptr %i.bcu, i64 %i.bdd
  store i32 0, ptr %scevgep11.i451.i.i382, align 4, !noalias !8890
  %.sroa.55.0..sroa_idx.i452.i.i383 = getelementptr i8, ptr %i.bde, i64 -12
  store i32 0, ptr %.sroa.55.0..sroa_idx.i452.i.i383, align 4, !noalias !8890
  %.sroa.67.0..sroa_idx.i453.i.i384 = getelementptr i8, ptr %i.bde, i64 -8
  store <2 x float> zeroinitializer, ptr %.sroa.67.0..sroa_idx.i453.i.i384, align 4, !noalias !8890
  %i.bdf = icmp samesign ult i64 %.sroa.0.0.i448.i.i297, 576460752303423487
  tail call void @llvm.assume(i1 %i.bdf)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.bcf, i64 noundef 32784, i64 noundef 4) #45, !noalias !8839
  br label %bb.ig

bb.ik:                                            ; preds = %bb.ii, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i301
  %.sroa.10.0.i.i460.i.i302 = phi i64 [ %i.bdc, %bb.ii ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i301 ]
  %i.bdg = inttoptr i64 %.sroa.10.0.i.i460.i.i302 to ptr ; 13 uses
  %i.bdh = icmp samesign ult i64 %i.bny, 2305843009213693952
  tail call void @llvm.assume(i1 %i.bdh)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bdg) ]
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.bdg, i64 %i.bcw
  %i.bdj = icmp eq i64 %i.bny, 0                  ; 3 uses
  br i1 %i.bdj, label %._crit_edge601.i.i, label %.lr.ph600.i.i.preheader

.lr.ph600.i.i.preheader:                          ; preds = %bb.ik
  %i.bdk = add nsw i64 %i.bcw, -4                 ; 2 uses
  %i.bdl = lshr exact i64 %i.bdk, 2
  %i.bdm = add nuw nsw i64 %i.bdl, 1              ; 2 uses
  %min.iters.check3885 = icmp ult i64 %i.bdk, 28
  br i1 %min.iters.check3885, label %.lr.ph600.i.i.preheader4285, label %vector.ph3886

vector.ph3886:                                    ; preds = %.lr.ph600.i.i.preheader
  %n.vec3887 = and i64 %i.bdm, 9223372036854775800 ; 4 uses
  %i.bdn = trunc i64 %n.vec3887 to i32
  %i.bdo = shl i64 %n.vec3887, 2
  %i.bdp = getelementptr i8, ptr %i.bdg, i64 %i.bdo
  br label %vector.body3888

vector.body3888:                                  ; preds = %vector.body3888, %vector.ph3886
  %index3889 = phi i64 [ 0, %vector.ph3886 ], [ %index.next3893, %vector.body3888 ] ; 2 uses
  %vec.ind3890 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph3886 ], [ %vec.ind.next3894, %vector.body3888 ] ; 3 uses
  %step.add3891 = add <4 x i32> %vec.ind3890, splat (i32 4)
  %i.bdq = shl i64 %index3889, 2
  %next.gep3892 = getelementptr i8, ptr %i.bdg, i64 %i.bdq ; 2 uses
  %i.bdr = getelementptr i8, ptr %next.gep3892, i64 16
  store <4 x i32> %vec.ind3890, ptr %next.gep3892, align 4, !noalias !8839
  store <4 x i32> %step.add3891, ptr %i.bdr, align 4, !noalias !8839
  %index.next3893 = add nuw i64 %index3889, 8     ; 2 uses
  %vec.ind.next3894 = add <4 x i32> %vec.ind3890, splat (i32 8)
  %i.bds = icmp eq i64 %index.next3893, %n.vec3887
  br i1 %i.bds, label %middle.block3895, label %vector.body3888, !llvm.loop !8893

middle.block3895:                                 ; preds = %vector.body3888
  %cmp.n3896 = icmp eq i64 %i.bdm, %n.vec3887
  br i1 %cmp.n3896, label %._crit_edge601.i.i, label %.lr.ph600.i.i.preheader4285

.lr.ph600.i.i.preheader4285:                      ; preds = %.lr.ph600.i.i.preheader, %middle.block3895
  %.sroa.047.2598.i.i.ph = phi i32 [ 0, %.lr.ph600.i.i.preheader ], [ %i.bdn, %middle.block3895 ]
  %.sroa.0135.0597.i.i.ph = phi ptr [ %i.bdg, %.lr.ph600.i.i.preheader ], [ %i.bdp, %middle.block3895 ]
  br label %.lr.ph600.i.i

.lr.ph600.i.i:                                    ; preds = %.lr.ph600.i.i.preheader4285, %.lr.ph600.i.i
  %.sroa.047.2598.i.i = phi i32 [ %i.bdt, %.lr.ph600.i.i ], [ %.sroa.047.2598.i.i.ph, %.lr.ph600.i.i.preheader4285 ] ; 2 uses
  %.sroa.0135.0597.i.i = phi ptr [ %.sroa.0135.1.i.i303, %.lr.ph600.i.i ], [ %.sroa.0135.0597.i.i.ph, %.lr.ph600.i.i.preheader4285 ] ; 2 uses
  %.sroa.0135.1.i.i303 = getelementptr inbounds nuw i8, ptr %.sroa.0135.0597.i.i, i64 4 ; 2 uses
  store i32 %.sroa.047.2598.i.i, ptr %.sroa.0135.0597.i.i, align 4, !noalias !8839
  %i.bdt = add i32 %.sroa.047.2598.i.i, 1
  %i.bdu = icmp eq ptr %.sroa.0135.1.i.i303, %i.bdi
  br i1 %i.bdu, label %._crit_edge601.i.i, label %.lr.ph600.i.i, !llvm.loop !8894

._crit_edge601.i.i:                               ; preds = %.lr.ph600.i.i, %middle.block3895, %bb.ik
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.7.i.i288) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.5.i.i291) ]
  %i.bdv = invoke fastcc noundef i64 @_ZN6brotli3enc7cluster22BrotliHistogramCombine17he38f0c1a5f667e92E(ptr noalias noundef nonnull align 8 %.sroa.016.7.i.i288, i64 noundef %.sroa.14.7.i.i287, ptr noalias noundef nonnull align 4 %.sroa.026.5.i.i291, i64 noundef %.sroa.12.5.i.i290, ptr noalias noundef nonnull align 4 %i.bai, i64 noundef %.sroa.0.0.i.i204, ptr noalias noundef nonnull align 4 %i.bdg, i64 noundef %i.bny, ptr noalias noundef nonnull align 4 %.sroa.044.2.i.i299, i64 noundef %.sroa.11.2.i.i298, i64 noundef %i.bny, i64 noundef %.sroa.0.0.i.i204, i64 noundef 256, i64 noundef %.sroa.0.0.i448.i.i297)
          to label %bb.il unwind label %bb.ic, !noalias !8839 ; 3 uses

bb.il:                                            ; preds = %._crit_edge601.i.i
  %i.bdw = shl nuw nsw i64 %.sroa.11.2.i.i298, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %.sroa.044.2.i.i299, i64 noundef %i.bdw, i64 noundef 4) #45, !noalias !8839
  %i.bdx = icmp eq i64 %.sroa.12.5.i.i290, 0
  br i1 %i.bdx, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i320, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i319"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i319": ; preds = %bb.il
  %i.bdy = shl nuw nsw i64 %.sroa.12.5.i.i290, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %.sroa.026.5.i.i291, i64 noundef %i.bdy, i64 noundef 4) #45, !noalias !8839
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i320

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i320: ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i319", %bb.il
  br i1 %i.bcz, label %bb.iq, label %bb.im

bb.im:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i320
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !8895
  %i.bdz = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.bcw, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !8895 ; 2 uses
  %i.bea = icmp eq ptr %i.bdz, null
  br i1 %i.bea, label %bb.io, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.beb = ptrtoint ptr %i.bdz to i64
  br label %bb.iq

bb.io:                                            ; preds = %bb.im
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.bcw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc472.i.i376 unwind label %bb.ic, !noalias !8839

.noexc472.i.i376:                                 ; preds = %bb.io
  unreachable

bb.ip:                                            ; preds = %.invoke1175.i.i, %.invoke1173.i.i
  %i.bec = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i325

bb.iq:                                            ; preds = %bb.in, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i320
  %.sroa.10.0.i.i470.i.i321 = phi i64 [ %i.beb, %bb.in ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i320 ]
  %i.bed = inttoptr i64 %.sroa.10.0.i.i470.i.i321 to ptr ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bed) ]
  br i1 %i.bdj, label %.preheader.split.i.i322, label %.lr.ph604.preheader.i.i

.lr.ph604.preheader.i.i:                          ; preds = %bb.iq
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bed, i8 -1, i64 %i.bcw, i1 false), !noalias !8839
  br label %.preheader.split.i.i322

.preheader.split.i.i322:                          ; preds = %.lr.ph604.preheader.i.i, %bb.iq
  %i.bee = getelementptr inbounds nuw i8, ptr %i.w, i64 2816 ; 2 uses
  %i.bef = getelementptr inbounds nuw i8, ptr %i.w, i64 2824
  %i.beg = getelementptr inbounds nuw i8, ptr %i.u, i64 2816 ; 3 uses
  %.not1180.i.i = icmp eq i64 %i.bdv, 0           ; 2 uses
  %i.beh = getelementptr inbounds nuw i8, ptr %i.v, i64 2816 ; 3 uses
  br label %bb.jn

bb.ir:                                            ; preds = %bb.jr
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.bdg, i64 noundef %i.bcw, i64 noundef 4) #45, !noalias !8839
  %i.bei = mul nuw nsw i64 %.sroa.14.7.i.i287, 2832
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %.sroa.016.7.i.i288, i64 noundef %i.bei, i64 noundef 8) #45, !noalias !8839
  %.val339.i.i350 = load ptr, ptr %8, align 8, !alias.scope !8900, !noalias !8901, !nonnull !4, !align !132, !noundef !4 ; 3 uses
  %i.bej = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %.val340.i.i351 = load i64, ptr %i.bej, align 8, !alias.scope !8900, !noalias !8901, !noundef !4 ; 6 uses
  %i.bek = icmp ult i64 %.val340.i.i351, %.sroa.0.0.i.i204
  br i1 %i.bek, label %bb.is, label %bb.iw

bb.is:                                            ; preds = %bb.ir
  %i.bel = icmp eq i64 %.val340.i.i351, 0         ; 2 uses
  %spec.select.i170.i = select i1 %i.bel, i64 %.sroa.0.0.i.i204, i64 %.val340.i.i351
  br label %bb.it

bb.it:                                            ; preds = %bb.it, %bb.is
  %.sroa.0101.1.i.i371 = phi i64 [ %spec.select.i170.i, %bb.is ], [ %i.ben, %bb.it ] ; 9 uses
  %i.bem = icmp ult i64 %.sroa.0101.1.i.i371, %.sroa.0.0.i.i204
  %i.ben = shl nuw nsw i64 %.sroa.0101.1.i.i371, 1
  br i1 %i.bem, label %bb.it, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.beo = icmp slt i64 %.sroa.0101.1.i.i371, 0
  br i1 %i.beo, label %.invoke1173.i.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i372, !prof !1120

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i372: ; preds = %bb.iu
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !8902
  %i.bep = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %.sroa.0101.1.i.i371, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !8902 ; 5 uses
  %i.beq = icmp eq ptr %i.bep, null
  br i1 %i.beq, label %.invoke1173.i.i, label %bb.iv

bb.iv:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i372
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bep, ptr nonnull readonly align 1 %.val339.i.i350, i64 %.val340.i.i351, i1 false), !alias.scope !8908, !noalias !8912
  store ptr %i.bep, ptr %8, align 8, !alias.scope !8900, !noalias !8901
  store i64 %.sroa.0101.1.i.i371, ptr %i.bej, align 8, !alias.scope !8900, !noalias !8901
  br i1 %i.bel, label %bb.iw, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i483.i.i373"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i483.i.i373": ; preds = %bb.iv
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %.val339.i.i350, i64 noundef %.val340.i.i351, i64 noundef 1) #45, !noalias !8839
  br label %bb.iw

bb.iw:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i483.i.i373", %bb.iv, %bb.ir
  %.val.i.i352 = phi ptr [ %.val339.i.i350, %bb.ir ], [ %i.bep, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i483.i.i373" ], [ %i.bep, %bb.iv ]
  %.val270.i.i353 = phi i64 [ %.val340.i.i351, %bb.ir ], [ %.sroa.0101.1.i.i371, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i483.i.i373" ], [ %.sroa.0101.1.i.i371, %bb.iv ] ; 2 uses
  %i.ber = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %.val327.i.i354 = load ptr, ptr %i.ber, align 8, !alias.scope !8900, !noalias !8901, !nonnull !4, !align !131, !noundef !4 ; 3 uses
  %i.bes = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %.val328.i.i355 = load i64, ptr %i.bes, align 8, !alias.scope !8900, !noalias !8901, !noundef !4 ; 5 uses
  %i.bet = icmp ult i64 %.val328.i.i355, %.sroa.0.0.i.i204
  br i1 %i.bet, label %bb.ix, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit493.i.i356"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit493.i.i356": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i492.i.i370", %bb.jc, %bb.iw
  %.val351.i.i357 = phi ptr [ %i.bfg, %bb.jc ], [ %i.bfg, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i492.i.i370" ], [ %.val327.i.i354, %bb.iw ]
  %.val352.i.i358 = phi i64 [ %.sroa.0104.1.i.i366, %bb.jc ], [ %.sroa.0104.1.i.i366, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i492.i.i370" ], [ %.val328.i.i355, %bb.iw ] ; 2 uses
  br label %bb.je

bb.ix:                                            ; preds = %bb.iw
  %i.beu = icmp eq i64 %.val328.i.i355, 0         ; 2 uses
  %spec.select250.i.i365 = select i1 %i.beu, i64 %.sroa.0.0.i.i204, i64 %.val328.i.i355
  br label %bb.iy

bb.iy:                                            ; preds = %bb.iy, %bb.ix
  %.sroa.0104.1.i.i366 = phi i64 [ %spec.select250.i.i365, %bb.ix ], [ %i.bew, %bb.iy ] ; 8 uses
  %i.bev = icmp ult i64 %.sroa.0104.1.i.i366, %.sroa.0.0.i.i204
  %i.bew = shl nuw nsw i64 %.sroa.0104.1.i.i366, 1
  br i1 %i.bev, label %bb.iy, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.bex = shl i64 %.sroa.0104.1.i.i366, 2        ; 5 uses
  %i.bey = icmp ugt i64 %.sroa.0104.1.i.i366, 4611686018427387903
  %i.bez = icmp ugt i64 %i.bex, 9223372036854775804
  %or.cond.i.i.i.i484.i.i367 = or i1 %i.bey, %i.bez
  br i1 %or.cond.i.i.i.i484.i.i367, label %.invoke1173.i.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i485.i.i368, !prof !1120

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i485.i.i368: ; preds = %bb.iz
  %i.bfa = icmp eq i64 %i.bex, 0
  br i1 %i.bfa, label %bb.jc, label %bb.ja

bb.ja:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i485.i.i368
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !8914
  %i.bfb = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.bex, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !8914 ; 2 uses
  %i.bfc = icmp eq ptr %i.bfb, null
  br i1 %i.bfc, label %.invoke1173.i.i, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.bfd = ptrtoint ptr %i.bfb to i64
  br label %bb.jc

.invoke1173.i.i:                                  ; preds = %bb.ja, %bb.iz, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i372, %bb.iu
  %i.bfe = phi i64 [ 0, %bb.iu ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i372 ], [ 4, %bb.ja ], [ 0, %bb.iz ]
  %i.bff = phi i64 [ %.sroa.0101.1.i.i371, %bb.iu ], [ %.sroa.0101.1.i.i371, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i372 ], [ %i.bex, %bb.ja ], [ %i.bex, %bb.iz ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.bfe, i64 %i.bff, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.cont1174.i.i unwind label %bb.ip, !noalias !8839

.cont1174.i.i:                                    ; preds = %.invoke1173.i.i
  unreachable

bb.jc:                                            ; preds = %bb.jb, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i485.i.i368
  %.sroa.10.0.i.i486.i.i369 = phi i64 [ %i.bfd, %bb.jb ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i485.i.i368 ]
  %i.bfg = inttoptr i64 %.sroa.10.0.i.i486.i.i369 to ptr ; 5 uses
  %i.bfh = icmp samesign ult i64 %.sroa.0104.1.i.i366, 2305843009213693952
  tail call void @llvm.assume(i1 %i.bfh)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bfg) ]
  %i.bfi = shl nuw nsw i64 %.val328.i.i355, 2     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bfg, ptr nonnull readonly align 4 %.val327.i.i354, i64 %i.bfi, i1 false), !alias.scope !8919, !noalias !8923
  store ptr %i.bfg, ptr %i.ber, align 8, !alias.scope !8900, !noalias !8901
  store i64 %.sroa.0104.1.i.i366, ptr %i.bes, align 8, !alias.scope !8900, !noalias !8901
  br i1 %i.beu, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit493.i.i356", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i492.i.i370"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i492.i.i370": ; preds = %bb.jc
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %.val327.i.i354, i64 noundef %i.bfi, i64 noundef 4) #45, !noalias !8839
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit493.i.i356"

bb.jd:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i554.i.i", %.thread131.i.i309
  %i.bfj = icmp eq i64 %.sroa.11.0148.i.i316, 0
  br i1 %i.bfj, label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17hb0902274592fa10bE.exit446.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i240"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i240": ; preds = %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17hb0902274592fa10bE.exit551.i.i", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit549.i.i", %bb.ks, %bb.jd, %.thread164.loopexit.split-lp.loopexit.split-lp.i.i230, %.thread164.loopexit.split-lp.loopexit.i.i285, %.thread164.loopexit.i.i281
  %.pn230.pn204.i.i241 = phi { ptr, i32 } [ %.pn230156.i.i310, %bb.jd ], [ %i.bpj, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit549.i.i" ], [ %i.bos, %bb.ks ], [ %i.bpk, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17hb0902274592fa10bE.exit551.i.i" ], [ %lpad.loopexit258.i.i282, %.thread164.loopexit.i.i281 ], [ %lpad.loopexit261.i.i286, %.thread164.loopexit.split-lp.loopexit.i.i285 ], [ %lpad.loopexit.split-lp262.i.i239, %.thread164.loopexit.split-lp.loopexit.split-lp.i.i230 ]
  %.sroa.11.0122203.i.i242 = phi i64 [ %.sroa.11.0148.i.i316, %bb.jd ], [ 2049, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit549.i.i" ], [ 2049, %bb.ks ], [ 2049, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17hb0902274592fa10bE.exit551.i.i" ], [ 2049, %.thread164.loopexit.i.i281 ], [ 2049, %.thread164.loopexit.split-lp.loopexit.i.i285 ], [ %.sroa.11.1.ph.ph.ph.i.i231, %.thread164.loopexit.split-lp.loopexit.split-lp.i.i230 ]
  %.sroa.044.0123202.i.i243 = phi ptr [ %.sroa.044.0149.i.i315, %bb.jd ], [ %i.bcf, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit549.i.i" ], [ %i.bcf, %bb.ks ], [ %i.bcf, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17hb0902274592fa10bE.exit551.i.i" ], [ %i.bcf, %.thread164.loopexit.i.i281 ], [ %i.bcf, %.thread164.loopexit.split-lp.loopexit.i.i285 ], [ %.sroa.044.1.ph.ph.ph.i.i232, %.thread164.loopexit.split-lp.loopexit.split-lp.i.i230 ] ; 2 uses
  %.sroa.1335.1124200.i.i244 = phi i64 [ 0, %bb.jd ], [ %.sroa.0.0.i422.i.i219, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit549.i.i" ], [ %.sroa.0.0.i422.i.i219, %bb.ks ], [ %.sroa.0.0.i422.i.i219, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17hb0902274592fa10bE.exit551.i.i" ], [ %.sroa.0.0.i422.i.i219, %.thread164.loopexit.i.i281 ], [ %.sroa.0.0.i422.i.i219, %.thread164.loopexit.split-lp.loopexit.i.i285 ], [ %.sroa.1335.2.ph.ph.ph.i.i233, %.thread164.loopexit.split-lp.loopexit.split-lp.i.i230 ]
  %.sroa.034.1125198.i.i245 = phi ptr [ inttoptr (i64 8 to ptr), %bb.jd ], [ %.sroa.10.0.i.i.i427938.i.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit549.i.i" ], [ %.sroa.10.0.i.i.i427938.i.i, %bb.ks ], [ %.sroa.10.0.i.i.i427938.i.i, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17hb0902274592fa10bE.exit551.i.i" ], [ %.sroa.10.0.i.i.i427938.i.i, %.thread164.loopexit.i.i281 ], [ %.sroa.10.0.i.i.i427938.i.i, %.thread164.loopexit.split-lp.loopexit.i.i285 ], [ %.sroa.034.2.ph.ph.ph.i.i234, %.thread164.loopexit.split-lp.loopexit.split-lp.i.i230 ]
  %.sroa.12.3126196.i.i246 = phi i64 [ %.sroa.12.3152.i.i314, %bb.jd ], [ %.sroa.12.2586.i.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit549.i.i" ], [ %.sroa.12.5.i.i290, %bb.ks ], [ %.sroa.12.2586.i.i, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17hb0902274592fa10bE.exit551.i.i" ], [ %.sroa.12.2586.i.i, %.thread164.loopexit.i.i281 ], [ %.sroa.12.2586.i.i, %.thread164.loopexit.split-lp.loopexit.i.i285 ], [ %.sroa.12.4.ph.ph.ph.i.i235, %.thread164.loopexit.split-lp.loopexit.split-lp.i.i230 ]
  %.sroa.026.3127194.i.i247 = phi ptr [ %.sroa.026.3153.i.i313, %bb.jd ], [ %.sroa.026.2587.i.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit549.i.i" ], [ %.sroa.026.5.i.i291, %bb.ks ], [ %.sroa.026.2587.i.i, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17hb0902274592fa10bE.exit551.i.i" ], [ %.sroa.026.2587.i.i, %.thread164.loopexit.i.i281 ], [ %.sroa.026.2587.i.i, %.thread164.loopexit.split-lp.loopexit.i.i285 ], [ %.sroa.026.4.ph.ph.ph.i.i236, %.thread164.loopexit.split-lp.loopexit.split-lp.i.i230 ]
  %.sroa.14.4128192.i.i248 = phi i64 [ %.sroa.14.4154.i.i312, %bb.jd ], [ %.sroa.14.7.i.i287, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit549.i.i" ], [ %.sroa.14.7.i.i287, %bb.ks ], [ %.sroa.14.3588.i.i, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17hb0902274592fa10bE.exit551.i.i" ], [ %.sroa.14.3588.i.i, %.thread164.loopexit.i.i281 ], [ %.sroa.14.3588.i.i, %.thread164.loopexit.split-lp.loopexit.i.i285 ], [ %.sroa.14.5.ph.ph.ph.i.i237, %.thread164.loopexit.split-lp.loopexit.split-lp.i.i230 ]
  %.sroa.016.4129190.i.i249 = phi ptr [ %.sroa.016.4155.i.i311, %bb.jd ], [ %.sroa.016.7.i.i288, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit549.i.i" ], [ %.sroa.016.7.i.i288, %bb.ks ], [ %.sroa.016.3589.i.i, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17hb0902274592fa10bE.exit551.i.i" ], [ %.sroa.016.3589.i.i, %.thread164.loopexit.i.i281 ], [ %.sroa.016.3589.i.i, %.thread164.loopexit.split-lp.loopexit.i.i285 ], [ %.sroa.016.5.ph.ph.ph.i.i238, %.thread164.loopexit.split-lp.loopexit.split-lp.i.i230 ]
  %i.bfk = shl nuw nsw i64 %.sroa.11.0122203.i.i242, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.044.0123202.i.i243) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.044.0123202.i.i243, i64 noundef %i.bfk, i64 noundef 4) #45, !noalias !8839
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i250"

bb.je:                                            ; preds = %bb.ji, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit493.i.i356"
  %i.bfl = phi i64 [ 1, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit493.i.i356" ], [ %i.bfv, %bb.ji ] ; 6 uses
  %.sroa.0107.0627.i.i = phi i32 [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit493.i.i356" ], [ %.sroa.0107.1.i.i363, %bb.ji ]
  %.sroa.0109.0626.i.i = phi i64 [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit493.i.i356" ], [ %.sroa.0109.1.i.i362, %bb.ji ] ; 8 uses
  %.sroa.0113.0625.i.i = phi i8 [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit493.i.i356" ], [ %.sroa.0113.1.i.i361, %bb.ji ] ; 2 uses
  %.sroa.0143.0624.i.i = phi i64 [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit493.i.i356" ], [ %i.bfl, %bb.ji ] ; 3 uses
  %i.bfm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i207, i64 %.sroa.0143.0624.i.i
  %i.bfn = load i32, ptr %i.bfm, align 4, !noalias !8839, !noundef !4
  %i.bfo = add i32 %i.bfn, %.sroa.0107.0627.i.i   ; 2 uses
  %i.bfp = icmp eq i64 %i.bfl, %.sroa.0.0.i.i204  ; 2 uses
  br i1 %i.bfp, label %._crit_edge873.i.i, label %bb.jg

._crit_edge873.i.i:                               ; preds = %bb.je
  %.phi.trans.insert.i.i364 = getelementptr inbounds nuw [4 x i8], ptr %i.bai, i64 %.sroa.0143.0624.i.i
  %.pre874.i.i = load i32, ptr %.phi.trans.insert.i.i364, align 4, !noalias !8839
  br label %bb.jj

bb.jf:                                            ; preds = %bb.ku, %bb.km, %bb.ke
  unreachable

bb.jg:                                            ; preds = %bb.je
  %i.bfq = icmp ult i64 %i.bfl, %.sroa.0.0.i.i204
  br i1 %i.bfq, label %bb.jh, label %.invoke1175.i.i

bb.jh:                                            ; preds = %bb.jg
  %i.bfr = getelementptr inbounds nuw [4 x i8], ptr %i.bai, i64 %.sroa.0143.0624.i.i
  %i.bfs = load i32, ptr %i.bfr, align 4, !noalias !8839, !noundef !4 ; 2 uses
  %i.bft = getelementptr inbounds nuw [4 x i8], ptr %i.bai, i64 %i.bfl
  %i.bfu = load i32, ptr %i.bft, align 4, !noalias !8839, !noundef !4
  %.not223.i.i359 = icmp eq i32 %i.bfs, %i.bfu
  br i1 %.not223.i.i359, label %bb.ji, label %bb.jj

bb.ji:                                            ; preds = %bb.jm, %bb.jh
  %.sroa.0113.1.i.i361 = phi i8 [ %.sroa.0.0.i511.i.i360, %bb.jm ], [ %.sroa.0113.0625.i.i, %bb.jh ] ; 2 uses
  %.sroa.0109.1.i.i362 = phi i64 [ %i.bgj, %bb.jm ], [ %.sroa.0109.0626.i.i, %bb.jh ] ; 2 uses
  %.sroa.0107.1.i.i363 = phi i32 [ 0, %bb.jm ], [ %i.bfo, %bb.jh ]
  %i.bfv = add i64 %i.bfl, 1
  br i1 %i.bfp, label %_ZN6brotli3enc14block_splitter15SplitByteVector17h36bb1564eee2b25dE.exit, label %bb.je

bb.jj:                                            ; preds = %bb.jh, %._crit_edge873.i.i
  %i.bfw = phi i32 [ %.pre874.i.i, %._crit_edge873.i.i ], [ %i.bfs, %bb.jh ]
  %i.bfx = zext i32 %i.bfw to i64                 ; 3 uses
  %i.bfy = icmp samesign ugt i64 %i.bny, %i.bfx
  br i1 %i.bfy, label %bb.jk, label %.invoke1175.i.i

bb.jk:                                            ; preds = %bb.jj
  %i.bfz = getelementptr inbounds nuw [4 x i8], ptr %i.bed, i64 %i.bfx
  %i.bga = load i32, ptr %i.bfz, align 4, !noalias !8839, !noundef !4
  %i.bgb = trunc i32 %i.bga to i8                 ; 2 uses
  %i.bgc = icmp ult i64 %.sroa.0109.0626.i.i, %.val270.i.i353
  br i1 %i.bgc, label %bb.jl, label %.invoke1175.i.i

bb.jl:                                            ; preds = %bb.jk
  %i.bgd = getelementptr inbounds nuw i8, ptr %.val.i.i352, i64 %.sroa.0109.0626.i.i
  store i8 %i.bgb, ptr %i.bgd, align 1, !noalias !8839
  %i.bge = icmp ult i64 %.sroa.0109.0626.i.i, %.val352.i.i358
  br i1 %i.bge, label %bb.jm, label %.invoke1175.i.i

.invoke1175.i.i:                                  ; preds = %bb.jl, %bb.jk, %bb.jj, %bb.jg
  %i.bgf = phi i64 [ %.sroa.0109.0626.i.i, %bb.jk ], [ %i.bfx, %bb.jj ], [ %i.bfl, %bb.jg ], [ %.sroa.0109.0626.i.i, %bb.jl ]
  %i.bgg = phi i64 [ %.val270.i.i353, %bb.jk ], [ %i.bny, %bb.jj ], [ %.sroa.0.0.i.i204, %bb.jg ], [ %.val352.i.i358, %bb.jl ]
  %i.bgh = phi ptr [ @897, %bb.jk ], [ @896, %bb.jj ], [ @895, %bb.jg ], [ @898, %bb.jl ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bgf, i64 noundef %i.bgg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bgh) #46
          to label %.cont1176.i.i unwind label %bb.ip, !noalias !8839

.cont1176.i.i:                                    ; preds = %.invoke1175.i.i
  unreachable

bb.jm:                                            ; preds = %bb.jl
  %i.bgi = getelementptr inbounds nuw [4 x i8], ptr %.val351.i.i357, i64 %.sroa.0109.0626.i.i
  store i32 %i.bfo, ptr %i.bgi, align 4, !noalias !8839
  %.sroa.0.0.i511.i.i360 = tail call noundef i8 @llvm.umax.i8(i8 %i.bgb, i8 %.sroa.0113.0625.i.i)
  %i.bgj = add nuw i64 %.sroa.0109.0626.i.i, 1
  br label %bb.ji

bb.jn:                                            ; preds = %bb.jr, %.preheader.split.i.i322
  %.sroa.0137.1623.i.i = phi i64 [ 1, %.preheader.split.i.i322 ], [ %.sroa.0137.1.i.i349, %bb.jr ] ; 3 uses
  %.sroa.043.1622.i.i = phi i64 [ 0, %.preheader.split.i.i322 ], [ %.sroa.043.2.lcssa943948.i893.i, %bb.jr ] ; 3 uses
  %.sroa.084.0621.i.i = phi i32 [ 0, %.preheader.split.i.i322 ], [ %.sroa.084.1.i.i348, %bb.jr ] ; 3 uses
  %.sroa.0137.0620.i.i = phi i64 [ 0, %.preheader.split.i.i322 ], [ %.sroa.0137.1623.i.i, %bb.jr ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !8839
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.w, i8 0, i64 2824, i1 false), !noalias !8839
  store float 3.402000e+38, ptr %i.bef, align 8, !alias.scope !8925, !noalias !8839
  %i.bgk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i207, i64 %.sroa.0137.0620.i.i
  %i.bgl = load i32, ptr %i.bgk, align 4, !noalias !8839, !noundef !4 ; 2 uses
  %.not631.i.i = icmp eq i32 %i.bgl, 0
  br i1 %.not631.i.i, label %._crit_edge609.thread.i.i, label %.lr.ph608.preheader.i.i

.loopexit.split-lp.thread.i.i339:                 ; preds = %.noexc240.i.i338
  %lpad.loopexit.i.i340 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i"

.loopexit.split-lp.loopexit.i.i335:               ; preds = %.noexc246.i.i334
  %lpad.loopexit253.i.i336 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i325

.loopexit.split-lp.loopexit.split-lp.i.i323:      ; preds = %.invoke1177.i.i
  %lpad.loopexit.split-lp254.i.i324 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i325

.lr.ph608.preheader.i.i:                          ; preds = %bb.jn
  %i.bgm = zext i32 %i.bgl to i64
  %reass.sub448.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %.sroa.043.1622.i.i)
  %i.bgn = add nuw nsw i64 %reass.sub448.i, 1
  br label %.lr.ph608.i.i

.lr.ph608.i.i:                                    ; preds = %bb.jw, %.lr.ph608.preheader.i.i
  %i.bgo = phi i64 [ %i.bmc, %bb.jw ], [ 1, %.lr.ph608.preheader.i.i ] ; 3 uses
  %.sroa.043.2606.i.i = phi i64 [ %i.bmb, %bb.jw ], [ %.sroa.043.1622.i.i, %.lr.ph608.preheader.i.i ] ; 3 uses
  %exitcond862.not.i.i = icmp eq i64 %i.bgo, %i.bgn
  br i1 %exitcond862.not.i.i, label %.invoke1177.i.i, label %bb.jv

._crit_edge609.i.i:                               ; preds = %bb.jw
  %i.bgp = icmp eq i64 %.sroa.0137.0620.i.i, 0
  %i.bgq = getelementptr [4 x i8], ptr %i.bai, i64 %.sroa.0137.0620.i.i ; 4 uses
  %i.bgr = getelementptr i8, ptr %i.bgq, i64 -4
  %.sroa.097.0.in.i.i331 = select i1 %i.bgp, ptr %i.bai, ptr %i.bgr
  %.sroa.097.0.i.i332 = load i32, ptr %.sroa.097.0.in.i.i331, align 4, !noalias !8839, !noundef !4 ; 4 uses
  %i.bgs = zext i32 %.sroa.097.0.i.i332 to i64    ; 5 uses
  %i.bgt = icmp ugt i64 %.sroa.14.7.i.i287, %i.bgs
  br i1 %i.bgt, label %.noexc244.i.i333, label %.invoke1177.i.i

._crit_edge609.thread.i.i:                        ; preds = %bb.jn
  %i.bgu = icmp eq i64 %.sroa.0137.0620.i.i, 0
  %i.bgv = getelementptr [4 x i8], ptr %i.bai, i64 %.sroa.0137.0620.i.i ; 2 uses
  %i.bgw = getelementptr i8, ptr %i.bgv, i64 -4
  %.sroa.097.0.in941.i.i = select i1 %i.bgu, ptr %i.bai, ptr %i.bgw
  %.sroa.097.0942.i.i = load i32, ptr %.sroa.097.0.in941.i.i, align 4, !noalias !8839, !noundef !4 ; 2 uses
  %i.bgx = zext i32 %.sroa.097.0942.i.i to i64    ; 3 uses
  %i.bgy = icmp ugt i64 %.sroa.14.7.i.i287, %i.bgx
end_hunk_1
begin_hunk_2_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17he061b6f34e5c3b37E:bb.a
  %i.cua = shl i64 %i.cty, 4                      ; 5 uses
  %i.cub = icmp ugt i64 %.sroa.0.0.i448.i.i790, 1152921504606846974
  %i.cuc = icmp ugt i64 %i.cua, 9223372036854775804
  %or.cond.i.i.i.i.i449.i.i933 = or i1 %i.cub, %i.cuc
  br i1 %or.cond.i.i.i.i.i449.i.i933, label %bb.qc, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i934, !prof !1120

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i934: ; preds = %bb.qb
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !9323
  %i.cud = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.cua, i64 noundef range(i64 1, 9) 4) #45, !noalias !9323 ; 5 uses
  %i.cue = icmp eq ptr %i.cud, null
  br i1 %i.cue, label %bb.qc, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hddb3f0f40187330dE.exit.i.i935"

bb.qc:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i934, %bb.qb
  %.sroa.4.0.ph.i.i.i455.i.i940 = phi i64 [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i934 ], [ 0, %bb.qb ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i455.i.i940, i64 %i.cua, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc456.i.i941 unwind label %.thread164.loopexit.split-lp.loopexit.split-lp.i.i676, !noalias !9285

.noexc456.i.i941:                                 ; preds = %bb.qc
  unreachable

bb.qd:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hddb3f0f40187330dE.exit.i.i935", %bb.qa
  %.sroa.11.2.i.i791 = phi i64 [ %i.cty, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hddb3f0f40187330dE.exit.i.i935" ], [ 2049, %bb.qa ] ; 4 uses
  %.sroa.044.2.i.i792 = phi ptr [ %i.cud, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hddb3f0f40187330dE.exit.i.i935" ], [ %i.cto, %bb.qa ] ; 4 uses
  %i.cuf = shl i64 %i.dfh, 2                      ; 12 uses
  %i.cug = icmp ugt i64 %i.dfh, 4611686018427387903
  %i.cuh = icmp ugt i64 %i.cuf, 9223372036854775804
  %or.cond.i.i.i.i458.i.i793 = or i1 %i.cug, %i.cuh
  br i1 %or.cond.i.i.i.i458.i.i793, label %bb.qg, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i794, !prof !1120

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i794: ; preds = %bb.qd
  %i.cui = icmp eq i64 %i.cuf, 0                  ; 2 uses
  br i1 %i.cui, label %bb.qh, label %bb.qe

bb.qe:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i794
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !9331
  %i.cuj = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.cuf, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !9331 ; 2 uses
  %i.cuk = icmp eq ptr %i.cuj, null
  br i1 %i.cuk, label %bb.qg, label %bb.qf

bb.qf:                                            ; preds = %bb.qe
  %i.cul = ptrtoint ptr %i.cuj to i64
  br label %bb.qh

bb.qg:                                            ; preds = %bb.qe, %bb.qd
  %.sroa.4.0.ph.i.i461.i.i931 = phi i64 [ 4, %bb.qe ], [ 0, %bb.qd ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i461.i.i931, i64 %i.cuf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc462.i.i932 unwind label %.thread164.loopexit.split-lp.loopexit.split-lp.i.i676, !noalias !9285

.noexc462.i.i932:                                 ; preds = %bb.qg
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hddb3f0f40187330dE.exit.i.i935": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i934
  %i.cum = add nsw i64 %i.cua, -16                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cud, i8 0, i64 %i.cum, i1 false), !noalias !9336
  %i.cun = getelementptr i8, ptr %i.cud, i64 %i.cua ; 2 uses
  %scevgep11.i451.i.i936 = getelementptr i8, ptr %i.cud, i64 %i.cum
  store i32 0, ptr %scevgep11.i451.i.i936, align 4, !noalias !9336
  %.sroa.55.0..sroa_idx.i452.i.i937 = getelementptr i8, ptr %i.cun, i64 -12
  store i32 0, ptr %.sroa.55.0..sroa_idx.i452.i.i937, align 4, !noalias !9336
  %.sroa.67.0..sroa_idx.i453.i.i938 = getelementptr i8, ptr %i.cun, i64 -8
  store <2 x float> zeroinitializer, ptr %.sroa.67.0..sroa_idx.i453.i.i938, align 4, !noalias !9336
  %i.cuo = icmp samesign ult i64 %.sroa.0.0.i448.i.i790, 576460752303423487
  tail call void @llvm.assume(i1 %i.cuo)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.cto, i64 noundef 32784, i64 noundef 4) #45, !noalias !9285
  br label %bb.qd

bb.qh:                                            ; preds = %bb.qf, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i794
  %.sroa.10.0.i.i460.i.i795 = phi i64 [ %i.cul, %bb.qf ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i794 ]
  %i.cup = inttoptr i64 %.sroa.10.0.i.i460.i.i795 to ptr ; 13 uses
  %i.cuq = icmp samesign ult i64 %i.dfh, 2305843009213693952
  tail call void @llvm.assume(i1 %i.cuq)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cup) ]
  %i.cur = getelementptr inbounds nuw i8, ptr %i.cup, i64 %i.cuf
  %i.cus = icmp eq i64 %i.dfh, 0                  ; 3 uses
  br i1 %i.cus, label %._crit_edge601.i.i800, label %.lr.ph600.i.i796.preheader

.lr.ph600.i.i796.preheader:                       ; preds = %bb.qh
  %i.cut = add nsw i64 %i.cuf, -4                 ; 2 uses
  %i.cuu = lshr exact i64 %i.cut, 2
  %i.cuv = add nuw nsw i64 %i.cuu, 1              ; 2 uses
  %min.iters.check3970 = icmp ult i64 %i.cut, 28
  br i1 %min.iters.check3970, label %.lr.ph600.i.i796.preheader4050, label %vector.ph3971

vector.ph3971:                                    ; preds = %.lr.ph600.i.i796.preheader
  %n.vec3972 = and i64 %i.cuv, 9223372036854775800 ; 4 uses
  %i.cuw = trunc i64 %n.vec3972 to i32
  %i.cux = shl i64 %n.vec3972, 2
  %i.cuy = getelementptr i8, ptr %i.cup, i64 %i.cux
  br label %vector.body3973

vector.body3973:                                  ; preds = %vector.body3973, %vector.ph3971
  %index3974 = phi i64 [ 0, %vector.ph3971 ], [ %index.next3978, %vector.body3973 ] ; 2 uses
  %vec.ind3975 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph3971 ], [ %vec.ind.next3979, %vector.body3973 ] ; 3 uses
  %step.add3976 = add <4 x i32> %vec.ind3975, splat (i32 4)
  %i.cuz = shl i64 %index3974, 2
  %next.gep3977 = getelementptr i8, ptr %i.cup, i64 %i.cuz ; 2 uses
  %i.cva = getelementptr i8, ptr %next.gep3977, i64 16
  store <4 x i32> %vec.ind3975, ptr %next.gep3977, align 4, !noalias !9285
  store <4 x i32> %step.add3976, ptr %i.cva, align 4, !noalias !9285
  %index.next3978 = add nuw i64 %index3974, 8     ; 2 uses
  %vec.ind.next3979 = add <4 x i32> %vec.ind3975, splat (i32 8)
  %i.cvb = icmp eq i64 %index.next3978, %n.vec3972
  br i1 %i.cvb, label %middle.block3980, label %vector.body3973, !llvm.loop !9339

middle.block3980:                                 ; preds = %vector.body3973
  %cmp.n3981 = icmp eq i64 %i.cuv, %n.vec3972
  br i1 %cmp.n3981, label %._crit_edge601.i.i800, label %.lr.ph600.i.i796.preheader4050

.lr.ph600.i.i796.preheader4050:                   ; preds = %.lr.ph600.i.i796.preheader, %middle.block3980
  %.sroa.047.2598.i.i797.ph = phi i32 [ 0, %.lr.ph600.i.i796.preheader ], [ %i.cuw, %middle.block3980 ]
  %.sroa.0135.0597.i.i798.ph = phi ptr [ %i.cup, %.lr.ph600.i.i796.preheader ], [ %i.cuy, %middle.block3980 ]
  br label %.lr.ph600.i.i796

.lr.ph600.i.i796:                                 ; preds = %.lr.ph600.i.i796.preheader4050, %.lr.ph600.i.i796
  %.sroa.047.2598.i.i797 = phi i32 [ %i.cvc, %.lr.ph600.i.i796 ], [ %.sroa.047.2598.i.i797.ph, %.lr.ph600.i.i796.preheader4050 ] ; 2 uses
  %.sroa.0135.0597.i.i798 = phi ptr [ %.sroa.0135.1.i.i799, %.lr.ph600.i.i796 ], [ %.sroa.0135.0597.i.i798.ph, %.lr.ph600.i.i796.preheader4050 ] ; 2 uses
  %.sroa.0135.1.i.i799 = getelementptr inbounds nuw i8, ptr %.sroa.0135.0597.i.i798, i64 4 ; 2 uses
  store i32 %.sroa.047.2598.i.i797, ptr %.sroa.0135.0597.i.i798, align 4, !noalias !9285
  %i.cvc = add i32 %.sroa.047.2598.i.i797, 1
  %i.cvd = icmp eq ptr %.sroa.0135.1.i.i799, %i.cur
  br i1 %i.cvd, label %._crit_edge601.i.i800, label %.lr.ph600.i.i796, !llvm.loop !9340

._crit_edge601.i.i800:                            ; preds = %.lr.ph600.i.i796, %middle.block3980, %bb.qh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.7.i.i764) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.5.i.i768) ]
  %i.cve = invoke fastcc noundef i64 @_ZN6brotli3enc7cluster22BrotliHistogramCombine17h525836e2a4691d74E(ptr noalias noundef nonnull align 8 %.sroa.016.7.i.i764, i64 noundef %.sroa.14.7.i.i763, ptr noalias noundef nonnull align 4 %.sroa.026.5.i.i768, i64 noundef %.sroa.12.5.i.i767, ptr noalias noundef nonnull align 4 %i.crr, i64 noundef %.sroa.0.0.i.i637, ptr noalias noundef nonnull align 4 %i.cup, i64 noundef %i.dfh, ptr noalias noundef nonnull align 4 %.sroa.044.2.i.i792, i64 noundef %.sroa.11.2.i.i791, i64 noundef %i.dfh, i64 noundef %.sroa.0.0.i.i637, i64 noundef 256, i64 noundef %.sroa.0.0.i448.i.i790)
          to label %bb.qi unwind label %bb.pz, !noalias !9285 ; 3 uses

bb.qi:                                            ; preds = %._crit_edge601.i.i800
  %i.cvf = shl nuw nsw i64 %.sroa.11.2.i.i791, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %.sroa.044.2.i.i792, i64 noundef %i.cvf, i64 noundef 4) #45, !noalias !9285
  %i.cvg = icmp eq i64 %.sroa.12.5.i.i767, 0
  br i1 %i.cvg, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i818, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i817"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i817": ; preds = %bb.qi
  %i.cvh = shl nuw nsw i64 %.sroa.12.5.i.i767, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %.sroa.026.5.i.i768, i64 noundef %i.cvh, i64 noundef 4) #45, !noalias !9285
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i818

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i818: ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i817", %bb.qi
  br i1 %i.cui, label %bb.qn, label %bb.qj

bb.qj:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i818
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !9341
  %i.cvi = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.cuf, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !9341 ; 2 uses
  %i.cvj = icmp eq ptr %i.cvi, null
  br i1 %i.cvj, label %bb.ql, label %bb.qk

bb.qk:                                            ; preds = %bb.qj
  %i.cvk = ptrtoint ptr %i.cvi to i64
  br label %bb.qn

bb.ql:                                            ; preds = %bb.qj
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.cuf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc472.i.i930 unwind label %bb.pz, !noalias !9285

.noexc472.i.i930:                                 ; preds = %bb.ql
  unreachable

bb.qm:                                            ; preds = %.invoke1175.i.i898, %.invoke1173.i.i914
  %i.cvl = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i836

bb.qn:                                            ; preds = %bb.qk, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i818
  %.sroa.10.0.i.i470.i.i819 = phi i64 [ %i.cvk, %bb.qk ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i818 ]
  %i.cvm = inttoptr i64 %.sroa.10.0.i.i470.i.i819 to ptr ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cvm) ]
  br i1 %i.cus, label %.preheader.split.i.i821, label %.lr.ph604.preheader.i.i820

.lr.ph604.preheader.i.i820:                       ; preds = %bb.qn
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cvm, i8 -1, i64 %i.cuf, i1 false), !noalias !9285
  br label %.preheader.split.i.i821

.preheader.split.i.i821:                          ; preds = %.lr.ph604.preheader.i.i820, %bb.qn
  %i.cvn = getelementptr inbounds nuw i8, ptr %i.i, i64 2184
  %i.cvo = getelementptr inbounds nuw i8, ptr %i.i, i64 2176 ; 2 uses
  %i.cvp = getelementptr inbounds nuw i8, ptr %i.g, i64 2176 ; 3 uses
  %.not1180.i.i822 = icmp eq i64 %i.cve, 0        ; 2 uses
  %i.cvq = getelementptr inbounds nuw i8, ptr %i.h, i64 2176 ; 3 uses
  br label %bb.rk

bb.qo:                                            ; preds = %bb.ro
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.cup, i64 noundef %i.cuf, i64 noundef 4) #45, !noalias !9285
  %i.cvr = mul nuw nsw i64 %.sroa.14.7.i.i763, 2192
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %.sroa.016.7.i.i764, i64 noundef %i.cvr, i64 noundef 8) #45, !noalias !9285
  %.val339.i.i885 = load ptr, ptr %9, align 8, !alias.scope !9346, !noalias !9347, !nonnull !4, !align !132, !noundef !4 ; 3 uses
  %i.cvs = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.val340.i.i886 = load i64, ptr %i.cvs, align 8, !alias.scope !9346, !noalias !9347, !noundef !4 ; 6 uses
  %i.cvt = icmp ult i64 %.val340.i.i886, %.sroa.0.0.i.i637
  br i1 %i.cvt, label %bb.qp, label %bb.qt

bb.qp:                                            ; preds = %bb.qo
  %i.cvu = icmp eq i64 %.val340.i.i886, 0         ; 2 uses
  %spec.select.i170.i916 = select i1 %i.cvu, i64 %.sroa.0.0.i.i637, i64 %.val340.i.i886
  br label %bb.qq

bb.qq:                                            ; preds = %bb.qq, %bb.qp
  %.sroa.0101.1.i.i917 = phi i64 [ %spec.select.i170.i916, %bb.qp ], [ %i.cvw, %bb.qq ] ; 9 uses
  %i.cvv = icmp ult i64 %.sroa.0101.1.i.i917, %.sroa.0.0.i.i637
  %i.cvw = shl nuw nsw i64 %.sroa.0101.1.i.i917, 1
  br i1 %i.cvv, label %bb.qq, label %bb.qr

bb.qr:                                            ; preds = %bb.qq
  %i.cvx = icmp slt i64 %.sroa.0101.1.i.i917, 0
  br i1 %i.cvx, label %.invoke1173.i.i914, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i918, !prof !1120

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i918: ; preds = %bb.qr
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !9348
  %i.cvy = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %.sroa.0101.1.i.i917, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !9348 ; 5 uses
  %i.cvz = icmp eq ptr %i.cvy, null
  br i1 %i.cvz, label %.invoke1173.i.i914, label %bb.qs

bb.qs:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i918
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cvy, ptr nonnull readonly align 1 %.val339.i.i885, i64 %.val340.i.i886, i1 false), !alias.scope !9354, !noalias !9358
  store ptr %i.cvy, ptr %9, align 8, !alias.scope !9346, !noalias !9347
  store i64 %.sroa.0101.1.i.i917, ptr %i.cvs, align 8, !alias.scope !9346, !noalias !9347
  br i1 %i.cvu, label %bb.qt, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i483.i.i919"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i483.i.i919": ; preds = %bb.qs
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %.val339.i.i885, i64 noundef %.val340.i.i886, i64 noundef 1) #45, !noalias !9285
  br label %bb.qt

bb.qt:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i483.i.i919", %bb.qs, %bb.qo
  %.val.i.i887 = phi ptr [ %.val339.i.i885, %bb.qo ], [ %i.cvy, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i483.i.i919" ], [ %i.cvy, %bb.qs ]
  %.val270.i.i888 = phi i64 [ %.val340.i.i886, %bb.qo ], [ %.sroa.0101.1.i.i917, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i483.i.i919" ], [ %.sroa.0101.1.i.i917, %bb.qs ] ; 2 uses
  %i.cwa = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %.val327.i.i889 = load ptr, ptr %i.cwa, align 8, !alias.scope !9346, !noalias !9347, !nonnull !4, !align !131, !noundef !4 ; 3 uses
  %i.cwb = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %.val328.i.i890 = load i64, ptr %i.cwb, align 8, !alias.scope !9346, !noalias !9347, !noundef !4 ; 5 uses
  %i.cwc = icmp ult i64 %.val328.i.i890, %.sroa.0.0.i.i637
  br i1 %i.cwc, label %bb.qu, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit493.i.i891"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit493.i.i891": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i492.i.i913", %bb.qz, %bb.qt
  %.val351.i.i892 = phi ptr [ %i.cwp, %bb.qz ], [ %i.cwp, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i492.i.i913" ], [ %.val327.i.i889, %bb.qt ]
  %.val352.i.i893 = phi i64 [ %.sroa.0104.1.i.i909, %bb.qz ], [ %.sroa.0104.1.i.i909, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i492.i.i913" ], [ %.val328.i.i890, %bb.qt ] ; 2 uses
  br label %bb.rb

bb.qu:                                            ; preds = %bb.qt
  %i.cwd = icmp eq i64 %.val328.i.i890, 0         ; 2 uses
  %spec.select250.i.i908 = select i1 %i.cwd, i64 %.sroa.0.0.i.i637, i64 %.val328.i.i890
  br label %bb.qv

bb.qv:                                            ; preds = %bb.qv, %bb.qu
  %.sroa.0104.1.i.i909 = phi i64 [ %spec.select250.i.i908, %bb.qu ], [ %i.cwf, %bb.qv ] ; 8 uses
  %i.cwe = icmp ult i64 %.sroa.0104.1.i.i909, %.sroa.0.0.i.i637
  %i.cwf = shl nuw nsw i64 %.sroa.0104.1.i.i909, 1
  br i1 %i.cwe, label %bb.qv, label %bb.qw

bb.qw:                                            ; preds = %bb.qv
  %i.cwg = shl i64 %.sroa.0104.1.i.i909, 2        ; 5 uses
  %i.cwh = icmp ugt i64 %.sroa.0104.1.i.i909, 4611686018427387903
  %i.cwi = icmp ugt i64 %i.cwg, 9223372036854775804
  %or.cond.i.i.i.i484.i.i910 = or i1 %i.cwh, %i.cwi
  br i1 %or.cond.i.i.i.i484.i.i910, label %.invoke1173.i.i914, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i485.i.i911, !prof !1120

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i485.i.i911: ; preds = %bb.qw
  %i.cwj = icmp eq i64 %i.cwg, 0
  br i1 %i.cwj, label %bb.qz, label %bb.qx

bb.qx:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i485.i.i911
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !9360
  %i.cwk = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.cwg, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !9360 ; 2 uses
  %i.cwl = icmp eq ptr %i.cwk, null
  br i1 %i.cwl, label %.invoke1173.i.i914, label %bb.qy

bb.qy:                                            ; preds = %bb.qx
  %i.cwm = ptrtoint ptr %i.cwk to i64
  br label %bb.qz

.invoke1173.i.i914:                               ; preds = %bb.qx, %bb.qw, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i918, %bb.qr
  %i.cwn = phi i64 [ 0, %bb.qr ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i918 ], [ 4, %bb.qx ], [ 0, %bb.qw ]
  %i.cwo = phi i64 [ %.sroa.0101.1.i.i917, %bb.qr ], [ %.sroa.0101.1.i.i917, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i478.i.i918 ], [ %i.cwg, %bb.qx ], [ %i.cwg, %bb.qw ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.cwn, i64 %i.cwo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.cont1174.i.i915 unwind label %bb.qm, !noalias !9285

.cont1174.i.i915:                                 ; preds = %.invoke1173.i.i914
  unreachable

bb.qz:                                            ; preds = %bb.qy, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i485.i.i911
  %.sroa.10.0.i.i486.i.i912 = phi i64 [ %i.cwm, %bb.qy ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i485.i.i911 ]
  %i.cwp = inttoptr i64 %.sroa.10.0.i.i486.i.i912 to ptr ; 5 uses
  %i.cwq = icmp samesign ult i64 %.sroa.0104.1.i.i909, 2305843009213693952
  tail call void @llvm.assume(i1 %i.cwq)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cwp) ]
  %i.cwr = shl nuw nsw i64 %.val328.i.i890, 2     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cwp, ptr nonnull readonly align 4 %.val327.i.i889, i64 %i.cwr, i1 false), !alias.scope !9365, !noalias !9369
  store ptr %i.cwp, ptr %i.cwa, align 8, !alias.scope !9346, !noalias !9347
  store i64 %.sroa.0104.1.i.i909, ptr %i.cwb, align 8, !alias.scope !9346, !noalias !9347
  br i1 %i.cwd, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit493.i.i891", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i492.i.i913"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i492.i.i913": ; preds = %bb.qz
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %.val327.i.i889, i64 noundef %i.cwr, i64 noundef 4) #45, !noalias !9285
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit493.i.i891"

bb.ra:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i554.i.i816", %.thread131.i.i806
  %i.cws = icmp eq i64 %.sroa.11.0148.i.i813, 0
  br i1 %i.cws, label %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17he896a1ac8999327dE.exit446.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i686"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i686": ; preds = %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17he896a1ac8999327dE.exit551.i.i", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit549.i.i949", %bb.sp, %bb.ra, %.thread164.loopexit.split-lp.loopexit.split-lp.i.i676, %.thread164.loopexit.split-lp.loopexit.i.i761, %.thread164.loopexit.i.i756
  %.pn230.pn204.i.i687 = phi { ptr, i32 } [ %.pn230156.i.i807, %bb.ra ], [ %i.dgs, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit549.i.i949" ], [ %i.dgb, %bb.sp ], [ %i.dgt, %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17he896a1ac8999327dE.exit551.i.i" ], [ %lpad.loopexit258.i.i757, %.thread164.loopexit.i.i756 ], [ %lpad.loopexit261.i.i762, %.thread164.loopexit.split-lp.loopexit.i.i761 ], [ %lpad.loopexit.split-lp262.i.i685, %.thread164.loopexit.split-lp.loopexit.split-lp.i.i676 ]
  %.sroa.11.0122203.i.i688 = phi i64 [ %.sroa.11.0148.i.i813, %bb.ra ], [ 2049, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit549.i.i949" ], [ 2049, %bb.sp ], [ 2049, %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17he896a1ac8999327dE.exit551.i.i" ], [ 2049, %.thread164.loopexit.i.i756 ], [ 2049, %.thread164.loopexit.split-lp.loopexit.i.i761 ], [ %.sroa.11.1.ph.ph.ph.i.i677, %.thread164.loopexit.split-lp.loopexit.split-lp.i.i676 ]
  %.sroa.044.0123202.i.i689 = phi ptr [ %.sroa.044.0149.i.i812, %bb.ra ], [ %i.cto, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit549.i.i949" ], [ %i.cto, %bb.sp ], [ %i.cto, %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17he896a1ac8999327dE.exit551.i.i" ], [ %i.cto, %.thread164.loopexit.i.i756 ], [ %i.cto, %.thread164.loopexit.split-lp.loopexit.i.i761 ], [ %.sroa.044.1.ph.ph.ph.i.i678, %.thread164.loopexit.split-lp.loopexit.split-lp.i.i676 ] ; 2 uses
  %.sroa.1335.1124200.i.i690 = phi i64 [ 0, %bb.ra ], [ %.sroa.0.0.i422.i.i663, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit549.i.i949" ], [ %.sroa.0.0.i422.i.i663, %bb.sp ], [ %.sroa.0.0.i422.i.i663, %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17he896a1ac8999327dE.exit551.i.i" ], [ %.sroa.0.0.i422.i.i663, %.thread164.loopexit.i.i756 ], [ %.sroa.0.0.i422.i.i663, %.thread164.loopexit.split-lp.loopexit.i.i761 ], [ %.sroa.1335.2.ph.ph.ph.i.i679, %.thread164.loopexit.split-lp.loopexit.split-lp.i.i676 ]
  %.sroa.034.1125198.i.i691 = phi ptr [ inttoptr (i64 8 to ptr), %bb.ra ], [ %.sroa.10.0.i.i.i427938.i.i672, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit549.i.i949" ], [ %.sroa.10.0.i.i.i427938.i.i672, %bb.sp ], [ %.sroa.10.0.i.i.i427938.i.i672, %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17he896a1ac8999327dE.exit551.i.i" ], [ %.sroa.10.0.i.i.i427938.i.i672, %.thread164.loopexit.i.i756 ], [ %.sroa.10.0.i.i.i427938.i.i672, %.thread164.loopexit.split-lp.loopexit.i.i761 ], [ %.sroa.034.2.ph.ph.ph.i.i680, %.thread164.loopexit.split-lp.loopexit.split-lp.i.i676 ]
  %.sroa.12.3126196.i.i692 = phi i64 [ %.sroa.12.3152.i.i811, %bb.ra ], [ %.sroa.12.2586.i.i738, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit549.i.i949" ], [ %.sroa.12.5.i.i767, %bb.sp ], [ %.sroa.12.2586.i.i738, %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17he896a1ac8999327dE.exit551.i.i" ], [ %.sroa.12.2586.i.i738, %.thread164.loopexit.i.i756 ], [ %.sroa.12.2586.i.i738, %.thread164.loopexit.split-lp.loopexit.i.i761 ], [ %.sroa.12.4.ph.ph.ph.i.i681, %.thread164.loopexit.split-lp.loopexit.split-lp.i.i676 ]
  %.sroa.026.3127194.i.i693 = phi ptr [ %.sroa.026.3153.i.i810, %bb.ra ], [ %.sroa.026.2587.i.i737, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit549.i.i949" ], [ %.sroa.026.5.i.i768, %bb.sp ], [ %.sroa.026.2587.i.i737, %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17he896a1ac8999327dE.exit551.i.i" ], [ %.sroa.026.2587.i.i737, %.thread164.loopexit.i.i756 ], [ %.sroa.026.2587.i.i737, %.thread164.loopexit.split-lp.loopexit.i.i761 ], [ %.sroa.026.4.ph.ph.ph.i.i682, %.thread164.loopexit.split-lp.loopexit.split-lp.i.i676 ]
  %.sroa.14.4128192.i.i694 = phi i64 [ %.sroa.14.4154.i.i809, %bb.ra ], [ %.sroa.14.7.i.i763, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit549.i.i949" ], [ %.sroa.14.7.i.i763, %bb.sp ], [ %.sroa.14.3588.i.i736, %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17he896a1ac8999327dE.exit551.i.i" ], [ %.sroa.14.3588.i.i736, %.thread164.loopexit.i.i756 ], [ %.sroa.14.3588.i.i736, %.thread164.loopexit.split-lp.loopexit.i.i761 ], [ %.sroa.14.5.ph.ph.ph.i.i683, %.thread164.loopexit.split-lp.loopexit.split-lp.i.i676 ]
  %.sroa.016.4129190.i.i695 = phi ptr [ %.sroa.016.4155.i.i808, %bb.ra ], [ %.sroa.016.7.i.i764, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit549.i.i949" ], [ %.sroa.016.7.i.i764, %bb.sp ], [ %.sroa.016.3589.i.i735, %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17he896a1ac8999327dE.exit551.i.i" ], [ %.sroa.016.3589.i.i735, %.thread164.loopexit.i.i756 ], [ %.sroa.016.3589.i.i735, %.thread164.loopexit.split-lp.loopexit.i.i761 ], [ %.sroa.016.5.ph.ph.ph.i.i684, %.thread164.loopexit.split-lp.loopexit.split-lp.i.i676 ]
  %i.cwt = shl nuw nsw i64 %.sroa.11.0122203.i.i688, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.044.0123202.i.i689) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.044.0123202.i.i689, i64 noundef %i.cwt, i64 noundef 4) #45, !noalias !9285
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i696"

bb.rb:                                            ; preds = %bb.rf, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit493.i.i891"
  %i.cwu = phi i64 [ 1, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit493.i.i891" ], [ %i.cxe, %bb.rf ] ; 6 uses
  %.sroa.0107.0627.i.i894 = phi i32 [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit493.i.i891" ], [ %.sroa.0107.1.i.i904, %bb.rf ]
  %.sroa.0109.0626.i.i895 = phi i64 [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit493.i.i891" ], [ %.sroa.0109.1.i.i903, %bb.rf ] ; 8 uses
  %.sroa.0113.0625.i.i896 = phi i8 [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit493.i.i891" ], [ %.sroa.0113.1.i.i902, %bb.rf ] ; 2 uses
  %.sroa.0143.0624.i.i897 = phi i64 [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit493.i.i891" ], [ %i.cwu, %bb.rf ] ; 3 uses
  %i.cwv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i652, i64 %.sroa.0143.0624.i.i897
  %i.cww = load i32, ptr %i.cwv, align 4, !noalias !9285, !noundef !4
  %i.cwx = add i32 %i.cww, %.sroa.0107.0627.i.i894 ; 2 uses
  %i.cwy = icmp eq i64 %i.cwu, %.sroa.0.0.i.i637  ; 2 uses
  br i1 %i.cwy, label %._crit_edge873.i.i905, label %bb.rd

._crit_edge873.i.i905:                            ; preds = %bb.rb
  %.phi.trans.insert.i.i906 = getelementptr inbounds nuw [4 x i8], ptr %i.crr, i64 %.sroa.0143.0624.i.i897
  %.pre874.i.i907 = load i32, ptr %.phi.trans.insert.i.i906, align 4, !noalias !9285
  br label %bb.rg

bb.rc:                                            ; preds = %bb.sr, %bb.sj, %bb.sb
  unreachable

bb.rd:                                            ; preds = %bb.rb
  %i.cwz = icmp ult i64 %i.cwu, %.sroa.0.0.i.i637
  br i1 %i.cwz, label %bb.re, label %.invoke1175.i.i898

bb.re:                                            ; preds = %bb.rd
  %i.cxa = getelementptr inbounds nuw [4 x i8], ptr %i.crr, i64 %.sroa.0143.0624.i.i897
  %i.cxb = load i32, ptr %i.cxa, align 4, !noalias !9285, !noundef !4 ; 2 uses
  %i.cxc = getelementptr inbounds nuw [4 x i8], ptr %i.crr, i64 %i.cwu
  %i.cxd = load i32, ptr %i.cxc, align 4, !noalias !9285, !noundef !4
  %.not223.i.i900 = icmp eq i32 %i.cxb, %i.cxd
  br i1 %.not223.i.i900, label %bb.rf, label %bb.rg

bb.rf:                                            ; preds = %bb.rj, %bb.re
  %.sroa.0113.1.i.i902 = phi i8 [ %.sroa.0.0.i511.i.i901, %bb.rj ], [ %.sroa.0113.0625.i.i896, %bb.re ] ; 2 uses
  %.sroa.0109.1.i.i903 = phi i64 [ %i.cxs, %bb.rj ], [ %.sroa.0109.0626.i.i895, %bb.re ] ; 2 uses
  %.sroa.0107.1.i.i904 = phi i32 [ 0, %bb.rj ], [ %i.cwx, %bb.re ]
  %i.cxe = add i64 %i.cwu, 1
  br i1 %i.cwy, label %bb.tf, label %bb.rb

bb.rg:                                            ; preds = %bb.re, %._crit_edge873.i.i905
  %i.cxf = phi i32 [ %.pre874.i.i907, %._crit_edge873.i.i905 ], [ %i.cxb, %bb.re ]
  %i.cxg = zext i32 %i.cxf to i64                 ; 3 uses
  %i.cxh = icmp samesign ugt i64 %i.dfh, %i.cxg
  br i1 %i.cxh, label %bb.rh, label %.invoke1175.i.i898

bb.rh:                                            ; preds = %bb.rg
  %i.cxi = getelementptr inbounds nuw [4 x i8], ptr %i.cvm, i64 %i.cxg
  %i.cxj = load i32, ptr %i.cxi, align 4, !noalias !9285, !noundef !4
  %i.cxk = trunc i32 %i.cxj to i8                 ; 2 uses
  %i.cxl = icmp ult i64 %.sroa.0109.0626.i.i895, %.val270.i.i888
  br i1 %i.cxl, label %bb.ri, label %.invoke1175.i.i898

bb.ri:                                            ; preds = %bb.rh
  %i.cxm = getelementptr inbounds nuw i8, ptr %.val.i.i887, i64 %.sroa.0109.0626.i.i895
  store i8 %i.cxk, ptr %i.cxm, align 1, !noalias !9285
  %i.cxn = icmp ult i64 %.sroa.0109.0626.i.i895, %.val352.i.i893
  br i1 %i.cxn, label %bb.rj, label %.invoke1175.i.i898

.invoke1175.i.i898:                               ; preds = %bb.ri, %bb.rh, %bb.rg, %bb.rd
  %i.cxo = phi i64 [ %.sroa.0109.0626.i.i895, %bb.rh ], [ %i.cxg, %bb.rg ], [ %i.cwu, %bb.rd ], [ %.sroa.0109.0626.i.i895, %bb.ri ]
  %i.cxp = phi i64 [ %.val270.i.i888, %bb.rh ], [ %i.dfh, %bb.rg ], [ %.sroa.0.0.i.i637, %bb.rd ], [ %.val352.i.i893, %bb.ri ]
  %i.cxq = phi ptr [ @897, %bb.rh ], [ @896, %bb.rg ], [ @895, %bb.rd ], [ @898, %bb.ri ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.cxo, i64 noundef %i.cxp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cxq) #46
          to label %.cont1176.i.i899 unwind label %bb.qm, !noalias !9285

.cont1176.i.i899:                                 ; preds = %.invoke1175.i.i898
  unreachable

bb.rj:                                            ; preds = %bb.ri
  %i.cxr = getelementptr inbounds nuw [4 x i8], ptr %.val351.i.i892, i64 %.sroa.0109.0626.i.i895
  store i32 %i.cwx, ptr %i.cxr, align 4, !noalias !9285
  %.sroa.0.0.i511.i.i901 = tail call noundef i8 @llvm.umax.i8(i8 %i.cxk, i8 %.sroa.0113.0625.i.i896)
  %i.cxs = add nuw i64 %.sroa.0109.0626.i.i895, 1
  br label %bb.rf

bb.rk:                                            ; preds = %bb.ro, %.preheader.split.i.i821
  %.sroa.0137.1623.i.i823 = phi i64 [ 1, %.preheader.split.i.i821 ], [ %.sroa.0137.1.i.i884, %bb.ro ] ; 3 uses
  %.sroa.043.1622.i.i824 = phi i64 [ 0, %.preheader.split.i.i821 ], [ %.sroa.043.2.lcssa943948.i893.i880, %bb.ro ] ; 3 uses
  %.sroa.084.0621.i.i825 = phi i32 [ 0, %.preheader.split.i.i821 ], [ %.sroa.084.1.i.i883, %bb.ro ] ; 3 uses
  %.sroa.0137.0620.i.i826 = phi i64 [ 0, %.preheader.split.i.i821 ], [ %.sroa.0137.1623.i.i823, %bb.ro ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !9285
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.i, i8 0, i64 2184, i1 false), !noalias !9285
  store float 3.402000e+38, ptr %i.cvn, align 8, !alias.scope !9371, !noalias !9285
  %i.cxt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i652, i64 %.sroa.0137.0620.i.i826
  %i.cxu = load i32, ptr %i.cxt, align 4, !noalias !9285, !noundef !4 ; 2 uses
  %.not631.i.i827 = icmp eq i32 %i.cxu, 0
  br i1 %.not631.i.i827, label %._crit_edge609.thread.i.i927, label %.lr.ph608.preheader.i.i828

.loopexit.split-lp.thread.i.i869:                 ; preds = %.noexc240.i.i868
  %lpad.loopexit.i.i870 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i842"

.loopexit.split-lp.loopexit.i.i858:               ; preds = %.noexc246.i.i857
  %lpad.loopexit253.i.i859 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i836

.loopexit.split-lp.loopexit.split-lp.i.i834:      ; preds = %.invoke1177.i.i833
  %lpad.loopexit.split-lp254.i.i835 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i836

.lr.ph608.preheader.i.i828:                       ; preds = %bb.rk
  %i.cxv = zext i32 %i.cxu to i64
  %reass.sub448.i829 = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %.sroa.043.1622.i.i824)
  %i.cxw = add nuw nsw i64 %reass.sub448.i829, 1
  br label %.lr.ph608.i.i830

.lr.ph608.i.i830:                                 ; preds = %bb.rt, %.lr.ph608.preheader.i.i828
  %i.cxx = phi i64 [ %i.ddl, %bb.rt ], [ 1, %.lr.ph608.preheader.i.i828 ] ; 3 uses
  %.sroa.043.2606.i.i831 = phi i64 [ %i.ddk, %bb.rt ], [ %.sroa.043.1622.i.i824, %.lr.ph608.preheader.i.i828 ] ; 3 uses
  %exitcond862.not.i.i832 = icmp eq i64 %i.cxx, %i.cxw
  br i1 %exitcond862.not.i.i832, label %.invoke1177.i.i833, label %bb.rs

._crit_edge609.i.i850:                            ; preds = %bb.rt
  %i.cxy = icmp eq i64 %.sroa.0137.0620.i.i826, 0
  %i.cxz = getelementptr [4 x i8], ptr %i.crr, i64 %.sroa.0137.0620.i.i826 ; 4 uses
  %i.cya = getelementptr i8, ptr %i.cxz, i64 -4
  %.sroa.097.0.in.i.i851 = select i1 %i.cxy, ptr %i.crr, ptr %i.cya
  %.sroa.097.0.i.i852 = load i32, ptr %.sroa.097.0.in.i.i851, align 4, !noalias !9285, !noundef !4 ; 4 uses
  %i.cyb = zext i32 %.sroa.097.0.i.i852 to i64    ; 5 uses
  %i.cyc = icmp ugt i64 %.sroa.14.7.i.i763, %i.cyb
  br i1 %i.cyc, label %.noexc244.i.i853, label %.invoke1177.i.i833

._crit_edge609.thread.i.i927:                     ; preds = %bb.rk
  %i.cyd = icmp eq i64 %.sroa.0137.0620.i.i826, 0
  %i.cye = getelementptr [4 x i8], ptr %i.crr, i64 %.sroa.0137.0620.i.i826 ; 2 uses
  %i.cyf = getelementptr i8, ptr %i.cye, i64 -4
  %.sroa.097.0.in941.i.i928 = select i1 %i.cyd, ptr %i.crr, ptr %i.cyf
  %.sroa.097.0942.i.i929 = load i32, ptr %.sroa.097.0.in941.i.i928, align 4, !noalias !9285, !noundef !4 ; 2 uses
  %i.cyg = zext i32 %.sroa.097.0942.i.i929 to i64 ; 3 uses
  %i.cyh = icmp ugt i64 %.sroa.14.7.i.i763, %i.cyg
end_hunk_2
begin_hunk_3_@"_ZN89_$LT$actix_http..header..map..Drain$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h07631dabca7b1184E":bb.a
  br i1 %i.au, label %"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$http..header..name..HeaderName$GT$$GT$17heea43a0946016ad3E.exit", label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13768)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13771)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13774)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13777)
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !13780, !nonnull !4, !noundef !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !13780, !noundef !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !13780, !noundef !4
  invoke void %i.aw(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef %i.az, i64 noundef %i.bb)
          to label %"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$http..header..name..HeaderName$GT$$GT$17heea43a0946016ad3E.exit" unwind label %bb.t, !inline_history !6890

bb.r:                                             ; preds = %bb.l
  %i.bc = load ptr, ptr %i.c, align 8, !alias.scope !13781, !noalias !13784, !nonnull !4
  %.sink10.i.i = select i1 %i.q, ptr %i.bc, ptr %i.c ; 3 uses
  %i.bd = add i64 %i.an, -1
  store i64 %i.bd, ptr %.sink9.i.i, align 8, !alias.scope !13753, !noalias !13756
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.be, ptr noundef nonnull align 8 dereferenceable(40) %.sink10.i.i, i64 40, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %.sink10.i.i, i64 40
  %i.bg = mul i64 %i.an, 40
  %i.bh = add i64 %i.bg, -40
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.sink10.i.i, ptr nonnull align 8 %i.bf, i64 %i.bh, i1 false), !noalias !13756
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %bb.r
  ret void

bb.t:                                             ; preds = %bb.q
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48
  unreachable

bb.u:                                             ; preds = %bb.d
  store i64 2, ptr %0, align 8
  br label %bb.s

"_ZN4core3ptr197drop_in_place$LT$core..option..Option$LT$$LP$core..option..Option$LT$http..header..name..HeaderName$GT$$C$smallvec..SmallVec$LT$$u5b$http..header..value..HeaderValue$u3b$$u20$4$u5d$$GT$$RP$$GT$$GT$17h08f4efb38f9516e7E.exit24": ; preds = %bb.e, %._crit_edge.i.i
  %i.bj = phi ptr [ %i.z, %._crit_edge.i.i ], [ %.promoted.i.i, %bb.e ]
  %.lcssa.i.i = phi i16 [ %.cast.i.i, %._crit_edge.i.i ], [ %i.v, %bb.e ] ; 3 uses
  %i.bk = add i16 %.lcssa.i.i, -1
  %i.bl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.bm = zext nneg i16 %i.bl to i64
  %i.bn = and i16 %i.bk, %.lcssa.i.i
  store i16 %i.bn, ptr %i.m, align 8, !alias.scope !13722, !noalias !13717
  %i.bo = sub nsw i64 0, %i.bm
  %i.bp = getelementptr inbounds [200 x i8], ptr %i.bj, i64 %i.bo ; 2 uses
  %i.bq = add i64 %i.t, -1
  store i64 %i.bq, ptr %i.l, align 8, !alias.scope !13714, !noalias !13717
  %i.br = getelementptr inbounds i8, ptr %i.bp, i64 -200
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.511)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.511, ptr noundef nonnull align 8 dereferenceable(32) %i.br, i64 32, i1 false)
  %i.bs = getelementptr inbounds i8, ptr %i.bp, i64 -168
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(168) %i.bs, i64 168, i1 false)
  store i64 1, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.511, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.c, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.6, i64 168, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.511)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %tailrecurse
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17he098499a2bb93ec5E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(168) %0) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i64, ptr %i.a, align 8, !noalias !13786, !noundef !4 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 4
  br i1 %i.c, label %"_ZN8smallvec17SmallVec$LT$A$GT$6triple17h66a219016559f682E.exit", label %"_ZN8smallvec17SmallVec$LT$A$GT$6triple17h66a219016559f682E.exit.thread"

"_ZN8smallvec17SmallVec$LT$A$GT$6triple17h66a219016559f682E.exit": ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noalias !13786, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.e, label %"_ZN8smallvec17SmallVec$LT$A$GT$6triple17h66a219016559f682E.exit.thread", !prof !13789

"_ZN8smallvec17SmallVec$LT$A$GT$6triple17h66a219016559f682E.exit.thread": ; preds = %bb.a, %"_ZN8smallvec17SmallVec$LT$A$GT$6triple17h66a219016559f682E.exit"
  %.sink10.i8 = phi i64 [ %i.e, %"_ZN8smallvec17SmallVec$LT$A$GT$6triple17h66a219016559f682E.exit" ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = icmp eq i64 %.sink10.i8, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i8, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.e, label %bb.b, !prof !282

bb.b:                                             ; preds = %"_ZN8smallvec17SmallVec$LT$A$GT$6triple17h66a219016559f682E.exit.thread"
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17hdec7f3b32d2532eaE"(ptr noalias noundef align 8 dereferenceable(168) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.c [
    i64 -9223372036854775807, label %_ZN8smallvec10infallible17h4c6391f569702345E.exit
    i64 0, label %bb.d
  ], !prof !13790

bb.c:                                             ; preds = %bb.b
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 0, -9223372036854775806) %i.m, i64 noundef %i.n) #46
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1485, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1486) #46
  unreachable

_ZN8smallvec10infallible17h4c6391f569702345E.exit: ; preds = %bb.b
  ret void

bb.e:                                             ; preds = %"_ZN8smallvec17SmallVec$LT$A$GT$6triple17h66a219016559f682E.exit.thread", %"_ZN8smallvec17SmallVec$LT$A$GT$6triple17h66a219016559f682E.exit"
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1485, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1487) #46
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17hdec7f3b32d2532eaE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(168) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 6 uses
  %i.d = icmp ult i64 %i.c, 5                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 4
  %i.f = load ptr, ptr %0, align 8, !alias.scope !13791, !noalias !13794, !nonnull !4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !282

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1490, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1491) #46
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 5
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not47 = icmp eq i64 %i.c, %1
  br i1 %.not47, label %_ZN8smallvec12layout_array17hd85a441559626a6eE.exit55.thread, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %_ZN8smallvec12layout_array17hd85a441559626a6eE.exit55.thread, label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 40) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 0         ; 7 uses
  %i.l = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.l, label %_ZN8smallvec12layout_array17hd85a441559626a6eE.exit55.thread, label %bb.g, !prof !282

bb.g:                                             ; preds = %bb.f
  %i.m = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.k, i64 noundef 8), !noalias !13796
  br i1 %i.m, label %_ZN8smallvec12layout_array17hd85a441559626a6eE.exit, label %_ZN8smallvec12layout_array17hd85a441559626a6eE.exit55.thread

_ZN8smallvec12layout_array17hd85a441559626a6eE.exit: ; preds = %bb.g
  br i1 %i.d, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN8smallvec12layout_array17hd85a441559626a6eE.exit
  %i.n = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sink.i, i64 40) ; 2 uses
  %i.o = extractvalue { i64, i1 } %i.n, 0         ; 4 uses
  %i.p = extractvalue { i64, i1 } %i.n, 1
  br i1 %i.p, label %_ZN8smallvec12layout_array17hd85a441559626a6eE.exit55.thread, label %bb.i, !prof !282

bb.i:                                             ; preds = %bb.h
  %i.q = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.o, i64 noundef 8), !noalias !13799
  br i1 %i.q, label %_ZN8smallvec12layout_array17hd85a441559626a6eE.exit55, label %_ZN8smallvec12layout_array17hd85a441559626a6eE.exit55.thread

bb.j:                                             ; preds = %_ZN8smallvec12layout_array17hd85a441559626a6eE.exit
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45
  %i.r = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef 8) #45 ; 3 uses
  %.not71 = icmp eq ptr %i.r, null
  br i1 %.not71, label %_ZN8smallvec12layout_array17hd85a441559626a6eE.exit55.thread, label %bb.l

_ZN8smallvec12layout_array17hd85a441559626a6eE.exit55: ; preds = %bb.i
  %i.s = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.o, i64 noundef 8, i64 noundef %i.k) #45 ; 2 uses
  %.not70 = icmp eq ptr %i.s, null
  br i1 %.not70, label %_ZN8smallvec12layout_array17hd85a441559626a6eE.exit55.thread, label %bb.k

bb.k:                                             ; preds = %_ZN8smallvec12layout_array17hd85a441559626a6eE.exit55, %bb.l
  %.sroa.021.0 = phi ptr [ %i.r, %bb.l ], [ %i.s, %_ZN8smallvec12layout_array17hd85a441559626a6eE.exit55 ]
  store ptr %.sroa.021.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %_ZN8smallvec12layout_array17hd85a441559626a6eE.exit55.thread

bb.l:                                             ; preds = %bb.j
  %i.t = mul nuw nsw i64 %i.c, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 %0, i64 %i.t, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.e
  %i.u = mul nuw i64 %.val, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.u, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %i.v = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sink.i, i64 40) ; 2 uses
  %i.w = extractvalue { i64, i1 } %i.v, 0         ; 3 uses
  %i.x = extractvalue { i64, i1 } %i.v, 1
  br i1 %i.x, label %bb.o, label %bb.n, !prof !282

bb.n:                                             ; preds = %bb.m
  %i.y = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.w, i64 noundef 8), !noalias !13802
  br i1 %i.y, label %_ZN8smallvec10deallocate17h081fb713b2ddaf47E.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13805
  store i64 0, ptr %i.a, align 8, !noalias !13805
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.w, ptr %i.z, align 8, !noalias !13805
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @546, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @552, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1484) #46, !noalias !13805
  unreachable

_ZN8smallvec10deallocate17h081fb713b2ddaf47E.exit: ; preds = %bb.n
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.w, i64 noundef 8) #45
  br label %_ZN8smallvec12layout_array17hd85a441559626a6eE.exit55.thread

_ZN8smallvec12layout_array17hd85a441559626a6eE.exit55.thread: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZN8smallvec10deallocate17h081fb713b2ddaf47E.exit, %bb.k, %bb.d, %bb.j, %_ZN8smallvec12layout_array17hd85a441559626a6eE.exit55
  %.sroa.7.1 = phi i64 [ undef, %_ZN8smallvec10deallocate17h081fb713b2ddaf47E.exit ], [ %i.k, %bb.j ], [ undef, %bb.e ], [ %i.k, %_ZN8smallvec12layout_array17hd85a441559626a6eE.exit55 ], [ %i.k, %bb.g ], [ undef, %bb.d ], [ undef, %bb.k ], [ %i.k, %bb.f ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %.sroa.0.1 = phi i64 [ -9223372036854775807, %_ZN8smallvec10deallocate17h081fb713b2ddaf47E.exit ], [ 8, %bb.j ], [ -9223372036854775807, %bb.e ], [ 8, %_ZN8smallvec12layout_array17hd85a441559626a6eE.exit55 ], [ 0, %bb.g ], [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %bb.k ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ]
  %i.aa = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.ab = insertvalue { i64, i64 } %i.aa, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.ab
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @"_ZN90_$LT$actix_http..error..Error$u20$as$u20$core..convert..From$LT$http..error..Error$GT$$GT$4from17h35723616d2c7eb5dE"(i8 noundef range(i8 0, 7) %0, i8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !13808
  %i.a = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !13808 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.noexc.i.i, label %_ZN10actix_http5error5Error8new_http17h333f9017595e3560E.exit, !prof !42

.noexc.i.i:                                       ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 24) #46
  unreachable

_ZN10actix_http5error5Error8new_http17h333f9017595e3560E.exit: ; preds = %bb.a
  store ptr null, ptr %i.a, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 0, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  %i.c = tail call fastcc noundef nonnull align 8 ptr @_ZN10actix_http5error5Error10with_cause17h41a028a4438e494cE(ptr noalias noundef nonnull align 8 %i.a, i8 noundef %0, i8 %1) ; 0 uses
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN90_$LT$actix_http..h1..client.._..InternalBitFlags$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h068a850029993cf3E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13811)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17hee58a253dc84ce04E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2), !noalias !13814
  %i.c = extractvalue { ptr, i64 } %i.b, 1
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.loopexit19, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %bb.a
  %.sroa.716.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.s, %.lr.ph.split.preheader.i
  %.lcssa141154.i = phi i64 [ %.lcssa141152.i, %bb.s ], [ 0, %.lr.ph.split.preheader.i ] ; 3 uses
  %.sroa.0.0149.i = phi i8 [ %i.bo, %bb.s ], [ 0, %.lr.ph.split.preheader.i ]
  %.lcssa119144148.i = phi i64 [ %.lcssa119143.i, %bb.s ], [ 0, %.lr.ph.split.preheader.i ] ; 7 uses
  %i.e = icmp ult i64 %2, %.lcssa141154.i
  br i1 %i.e, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.split.i, %bb.c
  %i.f = phi i64 [ %i.s, %bb.c ], [ %.lcssa141154.i, %.lr.ph.split.i ] ; 5 uses
  %i.g = sub nuw i64 %2, %i.f                     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %i.f ; 2 uses
  %i.i = icmp ult i64 %i.g, 16
  br i1 %i.i, label %.preheader.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph.i.i.i
  %.not.i.i.i.i = icmp eq i64 %2, %i.f
  br i1 %.not.i.i.i.i, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.b
  %.sroa.01.05.i.i.i.i = phi i64 [ %i.m, %bb.b ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.05.i.i.i.i
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !13816, !noalias !13819, !noundef !4
  %i.l = icmp eq i8 %i.k, 124
  br i1 %i.l, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.m = add nuw i64 %.sroa.01.05.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.m, %i.g
  br i1 %exitcond.not.i.i.i.i, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i", label %.lr.ph.i.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.n = call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 124, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.h, i64 noundef %i.g), !noalias !13819 ; 2 uses
  %i.o = extractvalue { i64, i64 } %i.n, 0
  %i.p = extractvalue { i64, i64 } %i.n, 1
  %i.q = trunc nuw i64 %i.o to i1
  br i1 %i.q, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i"

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i
  %.sroa.4.0.i27.i.i.i = phi i64 [ %i.p, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i ], [ %.sroa.01.05.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.r = add i64 %i.f, 1
  %i.s = add i64 %i.r, %.sroa.4.0.i27.i.i.i       ; 5 uses
  %.not21.i.i.i = icmp ugt i64 %i.s, %2
  %i.t = add i64 %.sroa.4.0.i27.i.i.i, %i.f       ; 3 uses
  %or.cond.i.i.not.i = icmp ult i64 %i.t, %2
  br i1 %or.cond.i.i.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.d, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i
  br i1 %.not21.i.i.i, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i", label %.lr.ph.i.i.i

bb.d:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.t
  %lhsc.i = load i8, ptr %i.u, align 1, !alias.scope !13811, !noalias !13814
  %i.v = icmp eq i8 %lhsc.i, 124
  br i1 %i.v, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i", label %bb.c

"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i": ; preds = %bb.d, %bb.c, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i, %.preheader.i.i.i.i, %bb.b, %.lr.ph.split.i
  %.lcssa141152.i = phi i64 [ %.lcssa141154.i, %.lr.ph.split.i ], [ %2, %bb.b ], [ %2, %.preheader.i.i.i.i ], [ %2, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i ], [ %i.s, %bb.d ], [ %i.s, %bb.c ]
  %.lcssa119143.i = phi i64 [ %.lcssa119144148.i, %.lr.ph.split.i ], [ %.lcssa119144148.i, %bb.b ], [ %.lcssa119144148.i, %.preheader.i.i.i.i ], [ %.lcssa119144148.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i ], [ %i.s, %bb.d ], [ %.lcssa119144148.i, %bb.c ]
  %i.w = phi i1 [ true, %.lr.ph.split.i ], [ true, %bb.b ], [ true, %.preheader.i.i.i.i ], [ true, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i ], [ false, %bb.d ], [ true, %bb.c ]
  %.pn.i = phi i64 [ %2, %.lr.ph.split.i ], [ %2, %bb.b ], [ %2, %.preheader.i.i.i.i ], [ %2, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i ], [ %i.t, %bb.d ], [ %2, %bb.c ]
  %.sroa.4.1.i.ph.i = sub nuw i64 %.pn.i, %.lcssa119144148.i
  %.sroa.0.1.i.ph.i = getelementptr inbounds nuw i8, ptr %1, i64 %.lcssa119144148.i
  %i.x = call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17hee58a253dc84ce04E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.1.i.ph.i, i64 noundef %.sroa.4.1.i.ph.i), !noalias !13814 ; 2 uses
  %i.y = extractvalue { ptr, i64 } %i.x, 0        ; 8 uses
  %i.z = extractvalue { ptr, i64 } %i.x, 1        ; 13 uses
  switch i64 %i.z, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h1262fbe6a0a7e7b4E.exit.i.i" [
    i64 0, label %.loopexit
    i64 1, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  ]

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h1262fbe6a0a7e7b4E.exit.i.i": ; preds = %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i"
  %i.aa = load i16, ptr %i.y, align 1
  %i.ab = icmp ne i16 30768, %i.aa
  %i.ac = zext i1 %i.ab to i32
  %bcmp.i.i.fr.i.i = freeze i32 %i.ac
  %i.ad = icmp eq i32 %bcmp.i.i.fr.i.i, 0
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h1262fbe6a0a7e7b4E.exit.i.i"
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 2 ; 2 uses
  %i.af = add i64 %i.z, -2                        ; 9 uses
  call void @"_ZN8bitflags6traits59_$LT$impl$u20$bitflags..parser..ParseHex$u20$for$u20$u8$GT$9parse_hex17h30cd71e72b5da45fE"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ae, i64 noundef %i.af), !noalias !13814
  %i.ag = load i64, ptr %i.a, align 8, !range !4571, !noalias !13825, !noundef !4 ; 3 uses
  %.not81.i = icmp eq i64 %i.ag, 3
  br i1 %.not81.i, label %bb.r, label %.split171.us.i

bb.f:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h1262fbe6a0a7e7b4E.exit.i.i"
  switch i64 %i.z, label %.split165.us.i [
    i64 4, label %bb.g
    i64 18, label %bb.h
    i64 6, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.ah = load i32, ptr %i.y, align 1
  %i.ai = icmp ne i32 1145128264, %i.ah
  %i.aj = zext i1 %i.ai to i32
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.t, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.al = load i128, ptr %i.y, align 1
  %i.am = xor i128 101365343830207459500893414405567759691, %i.al
  %i.an = getelementptr i8, ptr %i.y, i64 16
  %i.ao = load i16, ptr %i.an, align 1
  %i.ap = zext i16 %i.ao to i128
  %i.aq = xor i128 17477, %i.ap
  %i.ar = or i128 %i.am, %i.aq
  %i.as = icmp ne i128 %i.ar, 0
  %i.at = zext i1 %i.as to i32
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.t, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.f
  %i.av = load i32, ptr %i.y, align 1
  %i.aw = xor i32 1163023443, %i.av
  %i.ax = getelementptr i8, ptr %i.y, i64 4
  %i.ay = load i16, ptr %i.ax, align 1
  %i.az = zext i16 %i.ay to i32
  %i.ba = xor i32 19777, %i.az
  %i.bb = or i32 %i.aw, %i.ba
  %i.bc = icmp ne i32 %i.bb, 0
  %i.bd = zext i1 %i.bc to i32
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.t, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i

.split171.us.i:                                   ; preds = %bb.e
  %.sroa.5103.0.copyload.pre.i = load i64, ptr %.sroa.716.0..sroa_idx.i, align 8, !noalias !13825 ; 6 uses
  %.sroa.6104.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6104.0.copyload.pre.i = load ptr, ptr %.sroa.6104.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !13825 ; 4 uses
  %i.bf = icmp slt i64 %i.af, 0
  br i1 %i.bf, label %bb.k, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !1120

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %.split171.us.i
end_hunk_3
