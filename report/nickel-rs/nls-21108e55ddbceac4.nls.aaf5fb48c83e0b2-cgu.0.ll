Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nls-21108e55ddbceac4.nls.aaf5fb48c83e0b2-cgu.0?download=true
inline.NumInlined: 33046
inline.NumDeleted: 15305
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 156
begin_hunk_0_@"_ZN21notify_debouncer_full26DebounceDataInner$LT$T$GT$16handle_rename_to17h5e2005f6bf6358b4E":bb.a
  br i1 %i.ho, label %.split528.preheader.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.val.i142.i = load i64, ptr %i.r, align 8, !alias.scope !39784, !noalias !39723 ; 4 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.val2.i143.i = load i64, ptr %i.hp, align 8, !alias.scope !39784, !noalias !39723 ; 2 uses
  %.not.i.i144.i = icmp ult i64 %.val2.i143.i, %.val.i142.i
  %i.hq = select i1 %.not.i.i144.i, i64 0, i64 %.val.i142.i
  %.sroa.0.0.i.i145.i = sub nuw i64 %.val2.i143.i, %i.hq ; 3 uses
  %i.hr = sub i64 %.val.i142.i, %.sroa.0.0.i.i145.i ; 2 uses
  %.not11.i.i146.i = icmp ult i64 %i.hr, %i.hn    ; 2 uses
  %i.hs = add i64 %.sroa.0.0.i.i145.i, %i.hn
  %i.ht = sub nuw i64 %i.hn, %i.hr
  %i.hu = mul nuw nsw i64 %i.ht, 56
  %.sroa.5.0.i148.i = select i1 %.not11.i.i146.i, i64 %.val.i142.i, i64 %i.hs
  %.sroa.11.0.i149.i = select i1 %.not11.i.i146.i, i64 %i.hu, i64 0
  br label %.split528.preheader.i

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9pop_front17h8a0bccc1440513dfE.exit.i": ; preds = %bb.bd
  %i.hv = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.hw = load i64, ptr %i.hv, align 8, !alias.scope !39783, !noalias !39723, !noundef !44 ; 2 uses
  %i.hx = add i64 %i.hw, 1                        ; 2 uses
  %i.hy = load i64, ptr %i.r, align 8, !range !74, !alias.scope !39783, !noalias !39723, !noundef !44 ; 3 uses
  %.not.i140.i = icmp ult i64 %i.hx, %i.hy
  %i.hz = select i1 %.not.i140.i, i64 0, i64 %i.hy
  %.sroa.0.0.i141.i = sub nuw i64 %i.hx, %i.hz
  store i64 %.sroa.0.0.i141.i, ptr %i.hv, align 8, !alias.scope !39783, !noalias !39723
  %i.ia = add i64 %i.hl, -1                       ; 2 uses
  store i64 %i.ia, ptr %i.hg, align 8, !alias.scope !39783, !noalias !39723
  %i.ib = icmp ult i64 %i.ia, %i.hy
  call void @llvm.assume(i1 %i.ib)
  %i.ic = load ptr, ptr %i.hf, align 8, !alias.scope !39783, !noalias !39723, !nonnull !44, !noundef !44
  %i.id = getelementptr inbounds nuw [56 x i8], ptr %i.ic, i64 %i.hw ; 2 uses
  %.sroa.0249.0.copyload250.i = load i64, ptr %i.id, align 8, !noalias !39785 ; 2 uses
  %.not88.i = icmp eq i64 %.sroa.0249.0.copyload250.i, -9223372036854775808
  br i1 %.not88.i, label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9pop_front17h8a0bccc1440513dfE.exit.thread.i", label %bb.bg, !prof !61

bb.bg:                                            ; preds = %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9pop_front17h8a0bccc1440513dfE.exit.i"
  %.sroa.6251.0..sroa_idx252.i = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  store i64 %.sroa.0249.0.copyload250.i, ptr %i.k, align 8, !noalias !39723
  %.sroa.6251.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6251.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6251.0..sroa_idx252.i, i64 48, i1 false), !noalias !39730
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !39723
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !39723
  %i.ie = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.if = load i64, ptr %i.ie, align 8, !noalias !39723, !noundef !44
  %.not89.i = icmp eq i64 %i.if, 0
  br i1 %.not89.i, label %bb.bl, label %bb.bi

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9pop_front17h8a0bccc1440513dfE.exit.thread.i": ; preds = %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9pop_front17h8a0bccc1440513dfE.exit.i", %bb.bd
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @809) #75
          to label %bb.bh unwind label %bb.ba, !noalias !39730

bb.bh:                                            ; preds = %bb.ch, %bb.bl, %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9pop_front17h8a0bccc1440513dfE.exit.thread.i"
  unreachable

bb.bi:                                            ; preds = %bb.bg
  %i.ig = load ptr, ptr %.sroa.6251.0..sroa_idx.i, align 8, !noalias !39723, !nonnull !44, !noundef !44 ; 2 uses
  %i.ih = getelementptr i8, ptr %i.ig, i64 8
  %.val123.i = load ptr, ptr %i.ih, align 8, !noalias !39730, !nonnull !44, !noundef !44
  %i.ii = getelementptr i8, ptr %i.ig, i64 16
  %.val124.i = load i64, ptr %i.ii, align 8, !noalias !39730, !noundef !44 ; 8 uses
  %i.ij = icmp slt i64 %.val124.i, 0
  br i1 %i.ij, label %bb.bk, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !69

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.bi
  %i.ik = icmp eq i64 %.val124.i, 0               ; 2 uses
  br i1 %i.ik, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !39786
  %i.il = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val124.i, i64 noundef range(i64 1, 9) 1) #66, !noalias !39786 ; 2 uses
  %i.im = icmp eq ptr %i.il, null
  br i1 %i.im, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %bb.bj ], [ 0, %bb.bi ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %.val124.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2390) #75
          to label %.noexc150.i unwind label %bb.dx, !noalias !39730

.noexc150.i:                                      ; preds = %bb.bk
  unreachable

bb.bl:                                            ; preds = %bb.bg
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @810) #75
          to label %bb.bh unwind label %bb.dx, !noalias !39730

bb.bm:                                            ; preds = %bb.bj, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.il, %bb.bj ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 1 %.val123.i, i64 %.val124.i, i1 false), !noalias !39787
  store i64 %.val124.i, ptr %i.m, align 8, !noalias !39723
  %.sroa.4293.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.4293.0..sroa_idx.i, align 8, !noalias !39723
  %.sroa.5294.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %.val124.i, ptr %.sroa.5294.0..sroa_idx.i, align 8, !noalias !39723
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !39723
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !39788
  %i.in = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, 9) 8) #66, !noalias !39788 ; 3 uses
  %i.io = icmp eq ptr %i.in, null
  br i1 %i.io, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 56, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @811) #75
          to label %.noexc.i.i unwind label %bb.dv, !noalias !39789

.noexc.i.i:                                       ; preds = %bb.bn
  unreachable

.body.i:                                          ; preds = %bb.bo
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %.thread423.i

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.in, ptr noundef nonnull align 8 dereferenceable(56) %i.k, i64 56, i1 false), !noalias !39730
  store i64 1, ptr %i.l, align 8, !noalias !39723
  %.sroa.4254.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.in, ptr %.sroa.4254.0..sroa_idx.i, align 8, !noalias !39723
  %.sroa.5255.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 0, ptr %.sroa.5255.0..sroa_idx.i, align 8, !noalias !39723
  %.sroa.6256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 1, ptr %.sroa.6256.0..sroa_idx.i, align 8, !noalias !39723
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h084914fad8f7124cE"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.n, ptr noalias noundef align 8 dereferenceable(48) %i.bv, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.l)
          to label %bb.bp unwind label %.body.i, !noalias !39730

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !39723
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !39723
  call void @llvm.experimental.noalias.scope.decl(metadata !39790)
  %i.iq = load i64, ptr %i.n, align 8, !range !70, !alias.scope !39790, !noalias !39723, !noundef !44 ; 7 uses
  %i.ir = icmp eq i64 %i.iq, -9223372036854775808
  br i1 %i.ir, label %"_ZN4core3ptr77drop_in_place$LT$core..option..Option$LT$notify_debouncer_full..Queue$GT$$GT$17hddd8c288f06ae874E.exit.i", label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.experimental.noalias.scope.decl(metadata !39791)
  call void @llvm.experimental.noalias.scope.decl(metadata !39792)
  call void @llvm.experimental.noalias.scope.decl(metadata !39793)
  %i.is = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.it = load i64, ptr %i.is, align 8, !alias.scope !39794, !noalias !39723, !noundef !44 ; 4 uses
  %i.iu = icmp eq i64 %i.it, 0
  br i1 %i.iu, label %"_ZN94_$LT$alloc..collections..vec_deque..VecDeque$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha6386bd6d135da89E.exit.i.i.i.i", label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$12slice_ranges17he1ba81a45bcd9880E.exit.i.i.i.i.i"

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$12slice_ranges17he1ba81a45bcd9880E.exit.i.i.i.i.i": ; preds = %bb.bq
  %i.iv = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val1.i.i.i.i.i47 = load i64, ptr %i.iv, align 8, !alias.scope !39794, !noalias !39723 ; 2 uses
  %.not.i.i.i.i.i.i = icmp ult i64 %.val1.i.i.i.i.i47, %i.iq
  %i.iw = select i1 %.not.i.i.i.i.i.i, i64 0, i64 %i.iq
  %.sroa.0.0.i.i.i.i.i.i = sub nuw i64 %.val1.i.i.i.i.i47, %i.iw ; 5 uses
  %i.ix = sub i64 %i.iq, %.sroa.0.0.i.i.i.i.i.i   ; 2 uses
  %.not11.i.i.i.i.i.i = icmp ult i64 %i.ix, %i.it ; 2 uses
  %i.iy = add i64 %.sroa.0.0.i.i.i.i.i.i, %i.it
  %.sroa.511.0.i.i.i.i.i = select i1 %.not11.i.i.i.i.i.i, i64 %i.iq, i64 %i.iy ; 2 uses
  %.sroa.11.0.i.i.i.i.i = call i64 @llvm.usub.sat.i64(i64 %i.it, i64 %i.ix)
  %i.iz = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ja = load ptr, ptr %i.iz, align 8, !alias.scope !39794, !noalias !39723, !nonnull !44, !noundef !44 ; 2 uses
  %i.jb = getelementptr inbounds nuw [56 x i8], ptr %i.ja, i64 %.sroa.0.0.i.i.i.i.i.i
  %i.jc = sub i64 %.sroa.511.0.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i.i
  %i.jd = icmp eq i64 %.sroa.511.0.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i.i
  br i1 %i.jd, label %"_ZN4core3ptr75drop_in_place$LT$$u5b$notify_types..debouncer_full..DebouncedEvent$u5d$$GT$17h2f14558d0a7b0c94E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$12slice_ranges17he1ba81a45bcd9880E.exit.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i
  %.sroa.0.07.i.i.i.i.i.i = phi i64 [ %i.jf, %.lr.ph.i.i.i.i.i.i ], [ 0, %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$12slice_ranges17he1ba81a45bcd9880E.exit.i.i.i.i.i" ] ; 2 uses
  %i.je = getelementptr inbounds nuw [56 x i8], ptr %i.jb, i64 %.sroa.0.07.i.i.i.i.i.i
  %i.jf = add nuw i64 %.sroa.0.07.i.i.i.i.i.i, 1  ; 2 uses
  call void @"_ZN4core3ptr47drop_in_place$LT$notify_types..event..Event$GT$17h6c40e8ec3e34b2b0E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.je), !noalias !39795
  %i.jg = icmp eq i64 %i.jf, %i.jc
  br i1 %i.jg, label %"_ZN4core3ptr75drop_in_place$LT$$u5b$notify_types..debouncer_full..DebouncedEvent$u5d$$GT$17h2f14558d0a7b0c94E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i

"_ZN4core3ptr75drop_in_place$LT$$u5b$notify_types..debouncer_full..DebouncedEvent$u5d$$GT$17h2f14558d0a7b0c94E.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i, %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$12slice_ranges17he1ba81a45bcd9880E.exit.i.i.i.i.i"
  br i1 %.not11.i.i.i.i.i.i, label %.lr.ph.i.i.i6.i.i.i.i.i, label %"_ZN94_$LT$alloc..collections..vec_deque..VecDeque$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha6386bd6d135da89E.exit.i.i.i.i"

.lr.ph.i.i.i6.i.i.i.i.i:                          ; preds = %"_ZN4core3ptr75drop_in_place$LT$$u5b$notify_types..debouncer_full..DebouncedEvent$u5d$$GT$17h2f14558d0a7b0c94E.exit.i.i.i.i.i", %.lr.ph.i.i.i6.i.i.i.i.i
  %.sroa.0.07.i.i.i7.i.i.i.i.i = phi i64 [ %i.ji, %.lr.ph.i.i.i6.i.i.i.i.i ], [ 0, %"_ZN4core3ptr75drop_in_place$LT$$u5b$notify_types..debouncer_full..DebouncedEvent$u5d$$GT$17h2f14558d0a7b0c94E.exit.i.i.i.i.i" ] ; 2 uses
  %i.jh = getelementptr inbounds nuw [56 x i8], ptr %i.ja, i64 %.sroa.0.07.i.i.i7.i.i.i.i.i
  %i.ji = add nuw i64 %.sroa.0.07.i.i.i7.i.i.i.i.i, 1 ; 2 uses
  call void @"_ZN4core3ptr47drop_in_place$LT$notify_types..event..Event$GT$17h6c40e8ec3e34b2b0E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.jh), !noalias !39795
  %i.jj = icmp eq i64 %i.ji, %.sroa.11.0.i.i.i.i.i
  br i1 %i.jj, label %"_ZN94_$LT$alloc..collections..vec_deque..VecDeque$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha6386bd6d135da89E.exit.i.i.i.i", label %.lr.ph.i.i.i6.i.i.i.i.i

"_ZN94_$LT$alloc..collections..vec_deque..VecDeque$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha6386bd6d135da89E.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i6.i.i.i.i.i, %"_ZN4core3ptr75drop_in_place$LT$$u5b$notify_types..debouncer_full..DebouncedEvent$u5d$$GT$17h2f14558d0a7b0c94E.exit.i.i.i.i.i", %bb.bq
  %i.jk = icmp eq i64 %i.iq, 0
  br i1 %i.jk, label %"_ZN4core3ptr77drop_in_place$LT$core..option..Option$LT$notify_debouncer_full..Queue$GT$$GT$17hddd8c288f06ae874E.exit.i", label %bb.br

bb.br:                                            ; preds = %"_ZN94_$LT$alloc..collections..vec_deque..VecDeque$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha6386bd6d135da89E.exit.i.i.i.i"
  %i.jl = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.jl, align 8, !alias.scope !39796, !noalias !39723, !nonnull !44, !noundef !44
  %i.jm = mul nuw i64 %i.iq, 56
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %i.jm, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !39797
  br label %"_ZN4core3ptr77drop_in_place$LT$core..option..Option$LT$notify_debouncer_full..Queue$GT$$GT$17hddd8c288f06ae874E.exit.i"

"_ZN4core3ptr77drop_in_place$LT$core..option..Option$LT$notify_debouncer_full..Queue$GT$$GT$17hddd8c288f06ae874E.exit.i": ; preds = %bb.br, %"_ZN94_$LT$alloc..collections..vec_deque..VecDeque$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha6386bd6d135da89E.exit.i.i.i.i", %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !39723
  br label %bb.be

.split528.preheader.i:                            ; preds = %bb.be, %bb.bf
  %.sroa.11.0.i149613.i = phi i64 [ %.sroa.11.0.i149.i, %bb.bf ], [ 0, %bb.be ]
  %.sroa.5.0.i148610.i = phi i64 [ %.sroa.5.0.i148.i, %bb.bf ], [ 0, %bb.be ]
  %.sroa.0.0.i147608.i = phi i64 [ %.sroa.0.0.i.i145.i, %bb.bf ], [ 0, %bb.be ]
  %i.jn = load ptr, ptr %i.hf, align 8, !alias.scope !39784, !noalias !39723, !nonnull !44, !noundef !44 ; 4 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 %.sroa.11.0.i149613.i
  %2 = ptrtoint ptr %i.jo to i64
  %3 = ptrtoint ptr %i.jn to i64
  %i.jp = getelementptr inbounds nuw [56 x i8], ptr %i.jn, i64 %.sroa.5.0.i148610.i
  %4 = ptrtoint ptr %i.jp to i64
  %i.jq = getelementptr inbounds nuw [56 x i8], ptr %i.jn, i64 %.sroa.0.0.i147608.i
  %5 = ptrtoint ptr %i.jq to i64
  br label %.split528.i

.split528.i:                                      ; preds = %"_ZN4core3ptr62drop_in_place$LT$alloc..vec..Vec$LT$std..path..PathBuf$GT$$GT$17h941a405d0fd5fd90E.exit220.i", %.split528.preheader.i
  %.sroa.15.0.i = phi i64 [ %.sroa.15.1463.i, %"_ZN4core3ptr62drop_in_place$LT$alloc..vec..Vec$LT$std..path..PathBuf$GT$$GT$17h941a405d0fd5fd90E.exit220.i" ], [ %2, %.split528.preheader.i ] ; 4 uses
  %.sroa.13.0.i = phi i64 [ %.sroa.13.1464.i, %"_ZN4core3ptr62drop_in_place$LT$alloc..vec..Vec$LT$std..path..PathBuf$GT$$GT$17h941a405d0fd5fd90E.exit220.i" ], [ %3, %.split528.preheader.i ] ; 4 uses
  %.sroa.98.0.i = phi i64 [ %.sroa.98.1465.i, %"_ZN4core3ptr62drop_in_place$LT$alloc..vec..Vec$LT$std..path..PathBuf$GT$$GT$17h941a405d0fd5fd90E.exit220.i" ], [ %4, %.split528.preheader.i ] ; 3 uses
  %.sroa.05.0.i = phi i64 [ %.sroa.05.2466.i, %"_ZN4core3ptr62drop_in_place$LT$alloc..vec..Vec$LT$std..path..PathBuf$GT$$GT$17h941a405d0fd5fd90E.exit220.i" ], [ %5, %.split528.preheader.i ] ; 4 uses
  %6 = icmp eq i64 %.sroa.05.0.i, %.sroa.98.0.i   ; 2 uses
  %7 = inttoptr i64 %.sroa.05.0.i to ptr          ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 56
  %9 = ptrtoint ptr %8 to i64
  %.sroa.05.1.i = select i1 %6, i64 %.sroa.05.0.i, i64 %9 ; 2 uses
  %i.jr = icmp eq i64 %.sroa.05.0.i, 0
  %.not86.i = or i1 %6, %i.jr
  br i1 %.not86.i, label %bb.bs, label %.thread460.i

bb.bs:                                            ; preds = %.split528.i
  %10 = icmp ne i64 %.sroa.13.0.i, 0
  call void @llvm.assume(i1 %10)
  %11 = icmp ne i64 %.sroa.15.0.i, 0
  call void @llvm.assume(i1 %11)
  %i.js = icmp eq i64 %.sroa.13.0.i, %.sroa.15.0.i
  %12 = inttoptr i64 %.sroa.13.0.i to ptr         ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 56
  %14 = ptrtoint ptr %13 to i64
  br i1 %i.js, label %.thread453.i, label %.thread460.i

.thread453.i:                                     ; preds = %bb.bs
  %i.jt = invoke noundef zeroext i1 @_ZN21notify_debouncer_full5Queue11was_created17hade3b8b3a2758797E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.r)
          to label %bb.bt unwind label %bb.ba, !noalias !39730

bb.bt:                                            ; preds = %.thread453.i
  br i1 %i.jt, label %bb.cc, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !39723
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !39730
  %i.ju = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #66, !noalias !39730 ; 9 uses
  %i.jv = icmp eq ptr %i.ju, null
  br i1 %i.jv, label %.split530.us.invoke.i, label %bb.bv, !prof !49

bb.bv:                                            ; preds = %bb.bu
  %.val121.i.a = load ptr, ptr %i.y, align 8, !noalias !39730, !nonnull !44, !noundef !44
  %.val122.i = load i64, ptr %i.aa, align 8, !noalias !39730, !noundef !44 ; 7 uses
  %i.jw = icmp slt i64 %.val122.i, 0
  br i1 %i.jw, label %bb.bx, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i152.i, !prof !69

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i152.i: ; preds = %bb.bv
  %i.jx = icmp eq i64 %.val122.i, 0
  br i1 %i.jx, label %bb.ca, label %bb.bw

bb.bw:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i152.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !39798
  %i.jy = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val122.i, i64 noundef range(i64 1, 9) 1) #66, !noalias !39798 ; 2 uses
  %i.jz = icmp eq ptr %i.jy, null
  br i1 %i.jz, label %bb.bx, label %bb.ca

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.sroa.4.0.ph.i.i.i156.i = phi i64 [ 1, %bb.bw ], [ 0, %bb.bv ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i156.i, i64 %.val122.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2390) #75
          to label %.noexc157.i unwind label %bb.by, !noalias !39730

.noexc157.i:                                      ; preds = %bb.bx
  unreachable

bb.by:                                            ; preds = %bb.bx
  %i.ka = landingpad { ptr, i32 }
          cleanup
  %i.kb = icmp eq i64 %.sroa.0340.0407.i, 0
  br i1 %i.kb, label %.thread481.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5341.0412.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5341.0412.i, i64 noundef %.sroa.0340.0407.i, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !39799
  br label %.thread481.i

bb.ca:                                            ; preds = %bb.bw, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i152.i
  %.sroa.10.0.i.i.i153.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i152.i ], [ %i.jy, %bb.bw ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i153.i, ptr nonnull readonly align 1 %.val121.i.a, i64 %.val122.i, i1 false), !noalias !39800
  store i64 %.sroa.0340.0407.i, ptr %i.ju, align 8, !noalias !39730
  %.sroa.5275.0..sroa.0273.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  store ptr %.sroa.5341.0412.i, ptr %.sroa.5275.0..sroa.0273.0..sroa_idx.i, align 8, !noalias !39730
  %.sroa.7276.0..sroa.0273.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  store i64 %.sroa.7.0416.i, ptr %.sroa.7276.0..sroa.0273.0..sroa_idx.i, align 8, !noalias !39730
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ju, i64 24
  store i64 %.val122.i, ptr %i.kc, align 8, !noalias !39730
  %.sroa.4317.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ju, i64 32
  store ptr %.sroa.10.0.i.i.i153.i, ptr %.sroa.4317.0..sroa_idx.i, align 8, !noalias !39730
  %.sroa.5318.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ju, i64 40
  store i64 %.val122.i, ptr %.sroa.5318.0..sroa_idx.i, align 8, !noalias !39730
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ke = load ptr, ptr %i.kd, align 8, !alias.scope !39722, !align !50, !noundef !44
  store i64 2, ptr %i.j, align 8, !noalias !39723
  %.sroa.015.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.ju, ptr %.sroa.015.sroa.4.0..sroa_idx.i, align 8, !noalias !39723
  %.sroa.015.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 2, ptr %.sroa.015.sroa.5.0..sroa_idx.i, align 8, !noalias !39723
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.ke, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !39723
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i8 3, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !39723
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 33
  store i8 3, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, align 1, !noalias !39723
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 34
  store i8 3, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i, align 2, !noalias !39723
  %i.kf = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i64 %.sroa.071.0419.i, ptr %i.kf, align 8, !noalias !39723
  %i.kg = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store i32 %.sroa.572.0421.i, ptr %i.kg, align 8, !noalias !39723
  %i.kh = load i64, ptr %i.hg, align 8, !alias.scope !39801, !noalias !39723, !noundef !44 ; 2 uses
  %i.ki = load i64, ptr %i.r, align 8, !range !74, !alias.scope !39801, !noalias !39723, !noundef !44 ; 2 uses
  %i.kj = icmp eq i64 %i.kh, %i.ki
  br i1 %i.kj, label %bb.cb, label %.thread626.i

bb.cb:                                            ; preds = %bb.ca
  invoke void @"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4grow17hc6ded45fd1693605E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @812)
          to label %._crit_edge.i.i unwind label %.thread507.i, !noalias !39802

._crit_edge.i.i:                                  ; preds = %bb.cb
  %.pre.i.i = load i64, ptr %i.r, align 8, !range !74, !alias.scope !39801, !noalias !39723
  %.pre6.i.i = load i64, ptr %i.hg, align 8, !alias.scope !39801, !noalias !39723
  br label %.thread626.i

.thread507.i:                                     ; preds = %bb.cb
  %i.kk = landingpad { ptr, i32 }
          cleanup
  call void @"_ZN4core3ptr47drop_in_place$LT$notify_types..event..Event$GT$17h6c40e8ec3e34b2b0E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.j), !noalias !39730
  br label %bb.x

.thread626.i:                                     ; preds = %._crit_edge.i.i, %bb.ca
  %i.kl = phi i64 [ %.pre6.i.i, %._crit_edge.i.i ], [ %i.kh, %bb.ca ]
  %i.km = phi i64 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.ki, %bb.ca ] ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.ko = load i64, ptr %i.kn, align 8, !alias.scope !39801, !noalias !39723, !noundef !44
  %i.kp = add i64 %i.ko, -1                       ; 2 uses
  %i.kq = add i64 %i.kp, %i.km                    ; 2 uses
  %.not.i159.i = icmp ult i64 %i.kq, %i.km
  %..i.i = select i1 %.not.i159.i, i64 %i.kq, i64 %i.kp ; 2 uses
  store i64 %..i.i, ptr %i.kn, align 8, !alias.scope !39801, !noalias !39723
  %i.kr = add i64 %i.kl, 1
  store i64 %i.kr, ptr %i.hg, align 8, !alias.scope !39801, !noalias !39723
  %i.ks = load ptr, ptr %i.hf, align 8, !alias.scope !39801, !noalias !39723, !nonnull !44, !noundef !44
  %i.kt = getelementptr inbounds nuw [56 x i8], ptr %i.ks, i64 %..i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.kt, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.j, i64 56, i1 false), !noalias !39730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !39723
  br label %bb.cc

.thread481.i:                                     ; preds = %bb.bz, %bb.by
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ju, i64 noundef 48, i64 noundef 8) #66, !noalias !39730
  br label %bb.x

bb.cc:                                            ; preds = %bb.bt, %.thread626.i
  %.sroa.033.2629.i = phi i8 [ 0, %.thread626.i ], [ 1, %bb.bt ] ; 10 uses
  %i.ku = invoke fastcc noundef align 8 dereferenceable_or_null(56) ptr @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$13get_inner_mut17h66839417af4c551dE"(ptr noalias noundef align 8 dereferenceable(48) %i.bv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x)
          to label %bb.cd unwind label %bb.ba, !noalias !39730 ; 6 uses

bb.cd:                                            ; preds = %bb.cc
  %.not95.i = icmp eq ptr %i.ku, null
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 24 ; 4 uses
  br i1 %.not95.i, label %bb.cx, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.kw = invoke noundef zeroext i1 @_ZN21notify_debouncer_full5Queue11was_created17hade3b8b3a2758797E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.kv)
          to label %bb.cf unwind label %bb.ba, !noalias !39730

bb.cf:                                            ; preds = %bb.ce
  br i1 %i.kw, label %bb.ct, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !39723
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !39730
  %i.kx = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #66, !noalias !39730 ; 6 uses
  %i.ky = icmp eq ptr %i.kx, null
  br i1 %i.ky, label %bb.ch, label %bb.ci, !prof !49

bb.ch:                                            ; preds = %bb.cg
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 24) #75
          to label %bb.bh unwind label %bb.ba, !noalias !39730

bb.ci:                                            ; preds = %bb.cg
  %.val119.i.a = load ptr, ptr %i.y, align 8, !noalias !39730, !nonnull !44, !noundef !44
  %.val120.i = load i64, ptr %i.aa, align 8, !noalias !39730, !noundef !44 ; 7 uses
  %i.kz = icmp slt i64 %.val120.i, 0
  br i1 %i.kz, label %bb.ck, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i162.i, !prof !69

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i162.i: ; preds = %bb.ci
  %i.la = icmp eq i64 %.val120.i, 0
  br i1 %i.la, label %bb.cm, label %bb.cj

bb.cj:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i162.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !39803
  %i.lb = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val120.i, i64 noundef range(i64 1, 9) 1) #66, !noalias !39803 ; 2 uses
  %i.lc = icmp eq ptr %i.lb, null
  br i1 %i.lc, label %bb.ck, label %bb.cm

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.sroa.4.0.ph.i.i.i166.i = phi i64 [ 1, %bb.cj ], [ 0, %bb.ci ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i166.i, i64 %.val120.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2390) #75
          to label %.noexc167.i unwind label %bb.cl, !noalias !39730

.noexc167.i:                                      ; preds = %bb.ck
  unreachable

bb.cl:                                            ; preds = %bb.ck
  %i.ld = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kx, i64 noundef 24, i64 noundef 8) #66, !noalias !39730
  br label %.body160.i

bb.cm:                                            ; preds = %bb.cj, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i162.i
  %.sroa.10.0.i.i.i163.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i162.i ], [ %i.lb, %bb.cj ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i163.i, ptr nonnull readonly align 1 %.val119.i.a, i64 %.val120.i, i1 false), !noalias !39804
  store i64 %.val120.i, ptr %i.kx, align 8, !noalias !39730
  %.sroa.4329.0..sroa.0280.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  store ptr %.sroa.10.0.i.i.i163.i, ptr %.sroa.4329.0..sroa.0280.0..sroa_idx.i, align 8, !noalias !39730
  %.sroa.5330.0..sroa.0280.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  store i64 %.val120.i, ptr %.sroa.5330.0..sroa.0280.0..sroa_idx.i, align 8, !noalias !39730
  store i64 1, ptr %i.i, align 8, !noalias !39723
  %.sroa.023.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.kx, ptr %.sroa.023.sroa.4.0..sroa_idx.i, align 8, !noalias !39723
  %.sroa.023.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 1, ptr %.sroa.023.sroa.5.0..sroa_idx.i, align 8, !noalias !39723
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr null, ptr %.sroa.424.0..sroa_idx.i, align 8, !noalias !39723
  %.sroa.5.0..sroa_idx25.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
end_hunk_0
begin_hunk_1_@"_ZN21notify_debouncer_full26DebounceDataInner$LT$T$GT$16handle_rename_to17h5e2005f6bf6358b4E":bb.a
  %.val117.i = load ptr, ptr %i.y, align 8, !noalias !39730, !nonnull !44, !noundef !44
  %.val118.i = load i64, ptr %i.aa, align 8, !noalias !39730, !noundef !44 ; 7 uses
  %i.mt = icmp slt i64 %.val118.i, 0
  br i1 %i.mt, label %bb.cz, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i178.i, !prof !69

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i178.i: ; preds = %bb.cx
  %i.mu = icmp eq i64 %.val118.i, 0
  br i1 %i.mu, label %bb.da, label %bb.cy

bb.cy:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i178.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !39814
  %i.mv = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val118.i, i64 noundef range(i64 1, 9) 1) #66, !noalias !39814 ; 2 uses
  %i.mw = icmp eq ptr %i.mv, null
  br i1 %i.mw, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %.sroa.4.0.ph.i.i.i182.i = phi i64 [ 1, %bb.cy ], [ 0, %bb.cx ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i182.i, i64 %.val118.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2390) #75
          to label %.noexc183.i unwind label %bb.ba, !noalias !39730

.noexc183.i:                                      ; preds = %bb.cz
  unreachable

bb.da:                                            ; preds = %bb.cy, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i178.i
  %.sroa.10.0.i.i.i179.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i178.i ], [ %i.mv, %bb.cy ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i179.i, ptr nonnull readonly align 1 %.val117.i, i64 %.val118.i, i1 false), !noalias !39815
  store i64 %.val118.i, ptr %i.c, align 8, !noalias !39723
  %.sroa.4338.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.10.0.i.i.i179.i, ptr %.sroa.4338.0..sroa_idx.i, align 8, !noalias !39723
  %.sroa.5339.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.val118.i, ptr %.sroa.5339.0..sroa_idx.i, align 8, !noalias !39723
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !39723
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false), !noalias !39723
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h084914fad8f7124cE"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef align 8 dereferenceable(48) %i.bv, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.db unwind label %bb.ba, !noalias !39730

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !39723
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !39723
  call void @llvm.experimental.noalias.scope.decl(metadata !39816)
  %i.mx = load i64, ptr %i.d, align 8, !range !70, !alias.scope !39816, !noalias !39723, !noundef !44 ; 7 uses
  %i.my = icmp eq i64 %i.mx, -9223372036854775808
  br i1 %i.my, label %"_ZN4core3ptr77drop_in_place$LT$core..option..Option$LT$notify_debouncer_full..Queue$GT$$GT$17hddd8c288f06ae874E.exit199.i", label %bb.dc

bb.dc:                                            ; preds = %bb.db
  call void @llvm.experimental.noalias.scope.decl(metadata !39817)
  call void @llvm.experimental.noalias.scope.decl(metadata !39818)
  call void @llvm.experimental.noalias.scope.decl(metadata !39819)
  %i.mz = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.na = load i64, ptr %i.mz, align 8, !alias.scope !39820, !noalias !39723, !noundef !44 ; 4 uses
  %i.nb = icmp eq i64 %i.na, 0
  br i1 %i.nb, label %"_ZN94_$LT$alloc..collections..vec_deque..VecDeque$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha6386bd6d135da89E.exit.i.i.i195.i", label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$12slice_ranges17he1ba81a45bcd9880E.exit.i.i.i.i185.i"

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$12slice_ranges17he1ba81a45bcd9880E.exit.i.i.i.i185.i": ; preds = %bb.dc
  %i.nc = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val1.i.i.i.i186.i = load i64, ptr %i.nc, align 8, !alias.scope !39820, !noalias !39723 ; 2 uses
  %.not.i.i.i.i.i187.i = icmp ult i64 %.val1.i.i.i.i186.i, %i.mx
  %i.nd = select i1 %.not.i.i.i.i.i187.i, i64 0, i64 %i.mx
  %.sroa.0.0.i.i.i.i.i188.i = sub nuw i64 %.val1.i.i.i.i186.i, %i.nd ; 5 uses
  %i.ne = sub i64 %i.mx, %.sroa.0.0.i.i.i.i.i188.i ; 2 uses
  %.not11.i.i.i.i.i189.i = icmp ult i64 %i.ne, %i.na ; 2 uses
  %i.nf = add i64 %.sroa.0.0.i.i.i.i.i188.i, %i.na
  %.sroa.511.0.i.i.i.i190.i = select i1 %.not11.i.i.i.i.i189.i, i64 %i.mx, i64 %i.nf ; 2 uses
  %.sroa.11.0.i.i.i.i191.i = call i64 @llvm.usub.sat.i64(i64 %i.na, i64 %i.ne)
  %i.ng = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.nh = load ptr, ptr %i.ng, align 8, !alias.scope !39820, !noalias !39723, !nonnull !44, !noundef !44 ; 2 uses
  %i.ni = getelementptr inbounds nuw [56 x i8], ptr %i.nh, i64 %.sroa.0.0.i.i.i.i.i188.i
  %i.nj = sub i64 %.sroa.511.0.i.i.i.i190.i, %.sroa.0.0.i.i.i.i.i188.i
  %i.nk = icmp eq i64 %.sroa.511.0.i.i.i.i190.i, %.sroa.0.0.i.i.i.i.i188.i
  br i1 %i.nk, label %"_ZN4core3ptr75drop_in_place$LT$$u5b$notify_types..debouncer_full..DebouncedEvent$u5d$$GT$17h2f14558d0a7b0c94E.exit.i.i.i.i194.i", label %.lr.ph.i.i.i.i.i192.i

.lr.ph.i.i.i.i.i192.i:                            ; preds = %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$12slice_ranges17he1ba81a45bcd9880E.exit.i.i.i.i185.i", %.lr.ph.i.i.i.i.i192.i
  %.sroa.0.07.i.i.i.i.i193.i = phi i64 [ %i.nm, %.lr.ph.i.i.i.i.i192.i ], [ 0, %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$12slice_ranges17he1ba81a45bcd9880E.exit.i.i.i.i185.i" ] ; 2 uses
  %i.nl = getelementptr inbounds nuw [56 x i8], ptr %i.ni, i64 %.sroa.0.07.i.i.i.i.i193.i
  %i.nm = add nuw i64 %.sroa.0.07.i.i.i.i.i193.i, 1 ; 2 uses
  call void @"_ZN4core3ptr47drop_in_place$LT$notify_types..event..Event$GT$17h6c40e8ec3e34b2b0E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.nl), !noalias !39821
  %i.nn = icmp eq i64 %i.nm, %i.nj
  br i1 %i.nn, label %"_ZN4core3ptr75drop_in_place$LT$$u5b$notify_types..debouncer_full..DebouncedEvent$u5d$$GT$17h2f14558d0a7b0c94E.exit.i.i.i.i194.i", label %.lr.ph.i.i.i.i.i192.i

"_ZN4core3ptr75drop_in_place$LT$$u5b$notify_types..debouncer_full..DebouncedEvent$u5d$$GT$17h2f14558d0a7b0c94E.exit.i.i.i.i194.i": ; preds = %.lr.ph.i.i.i.i.i192.i, %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$12slice_ranges17he1ba81a45bcd9880E.exit.i.i.i.i185.i"
  br i1 %.not11.i.i.i.i.i189.i, label %.lr.ph.i.i.i6.i.i.i.i197.i, label %"_ZN94_$LT$alloc..collections..vec_deque..VecDeque$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha6386bd6d135da89E.exit.i.i.i195.i"

.lr.ph.i.i.i6.i.i.i.i197.i:                       ; preds = %"_ZN4core3ptr75drop_in_place$LT$$u5b$notify_types..debouncer_full..DebouncedEvent$u5d$$GT$17h2f14558d0a7b0c94E.exit.i.i.i.i194.i", %.lr.ph.i.i.i6.i.i.i.i197.i
  %.sroa.0.07.i.i.i7.i.i.i.i198.i = phi i64 [ %i.np, %.lr.ph.i.i.i6.i.i.i.i197.i ], [ 0, %"_ZN4core3ptr75drop_in_place$LT$$u5b$notify_types..debouncer_full..DebouncedEvent$u5d$$GT$17h2f14558d0a7b0c94E.exit.i.i.i.i194.i" ] ; 2 uses
  %i.no = getelementptr inbounds nuw [56 x i8], ptr %i.nh, i64 %.sroa.0.07.i.i.i7.i.i.i.i198.i
  %i.np = add nuw i64 %.sroa.0.07.i.i.i7.i.i.i.i198.i, 1 ; 2 uses
  call void @"_ZN4core3ptr47drop_in_place$LT$notify_types..event..Event$GT$17h6c40e8ec3e34b2b0E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.no), !noalias !39821
  %i.nq = icmp eq i64 %i.np, %.sroa.11.0.i.i.i.i191.i
  br i1 %i.nq, label %"_ZN94_$LT$alloc..collections..vec_deque..VecDeque$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha6386bd6d135da89E.exit.i.i.i195.i", label %.lr.ph.i.i.i6.i.i.i.i197.i

"_ZN94_$LT$alloc..collections..vec_deque..VecDeque$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha6386bd6d135da89E.exit.i.i.i195.i": ; preds = %.lr.ph.i.i.i6.i.i.i.i197.i, %"_ZN4core3ptr75drop_in_place$LT$$u5b$notify_types..debouncer_full..DebouncedEvent$u5d$$GT$17h2f14558d0a7b0c94E.exit.i.i.i.i194.i", %bb.dc
  %i.nr = icmp eq i64 %i.mx, 0
  br i1 %i.nr, label %"_ZN4core3ptr77drop_in_place$LT$core..option..Option$LT$notify_debouncer_full..Queue$GT$$GT$17hddd8c288f06ae874E.exit199.i", label %bb.dd

bb.dd:                                            ; preds = %"_ZN94_$LT$alloc..collections..vec_deque..VecDeque$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha6386bd6d135da89E.exit.i.i.i195.i"
  %i.ns = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1.i.i.i196.i = load ptr, ptr %i.ns, align 8, !alias.scope !39822, !noalias !39723, !nonnull !44, !noundef !44
  %i.nt = mul nuw i64 %i.mx, 56
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i196.i, i64 noundef %i.nt, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !39823
  br label %"_ZN4core3ptr77drop_in_place$LT$core..option..Option$LT$notify_debouncer_full..Queue$GT$$GT$17hddd8c288f06ae874E.exit199.i"

"_ZN4core3ptr77drop_in_place$LT$core..option..Option$LT$notify_debouncer_full..Queue$GT$$GT$17hddd8c288f06ae874E.exit199.i": ; preds = %bb.dd, %"_ZN94_$LT$alloc..collections..vec_deque..VecDeque$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha6386bd6d135da89E.exit.i.i.i195.i", %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !39723
  br label %bb.cw

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h94b6534449950db4E.exit203.i": ; preds = %bb.dg, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !39723
  call void @llvm.experimental.noalias.scope.decl(metadata !39824)
  call void @llvm.experimental.noalias.scope.decl(metadata !39825)
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h94b6534449950db4E.exit.i.i.i.i", %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h94b6534449950db4E.exit203.i"
  %.sroa.0.011.i.i.i.i = phi i64 [ %i.nv, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h94b6534449950db4E.exit.i.i.i.i" ], [ 0, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h94b6534449950db4E.exit203.i" ] ; 2 uses
  %i.nu = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %.sroa.0.011.i.i.i.i ; 2 uses
  %i.nv = add nuw i64 %.sroa.0.011.i.i.i.i, 1     ; 2 uses
  %.val8.i.i.i.i = load i64, ptr %i.nu, align 8, !range !74, !alias.scope !39826, !noalias !39827, !noundef !44 ; 2 uses
  %i.nw = icmp eq i64 %.val8.i.i.i.i, 0
  br i1 %i.nw, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h94b6534449950db4E.exit.i.i.i.i", label %bb.de

bb.de:                                            ; preds = %.lr.ph.i.i.i.i
  %i.nx = getelementptr i8, ptr %i.nu, i64 8
  %.val9.i.i.i.i = load ptr, ptr %i.nx, align 8, !alias.scope !39825, !noalias !39827, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %.val8.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !39828
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h94b6534449950db4E.exit.i.i.i.i"

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h94b6534449950db4E.exit.i.i.i.i": ; preds = %bb.de, %.lr.ph.i.i.i.i
  %i.ny = icmp eq i64 %i.nv, %i.v
  br i1 %i.ny, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7b61587996dc1c14E.exit.i.i", label %.lr.ph.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7b61587996dc1c14E.exit.i.i": ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h94b6534449950db4E.exit.i.i.i.i"
  %.val2.i202.i = load i64, ptr %1, align 8, !range !74, !alias.scope !39829, !noundef !44 ; 2 uses
  %i.nz = icmp eq i64 %.val2.i202.i, 0
  br i1 %i.nz, label %"_ZN4core3ptr62drop_in_place$LT$alloc..vec..Vec$LT$std..path..PathBuf$GT$$GT$17h941a405d0fd5fd90E.exit.i", label %bb.df

bb.df:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7b61587996dc1c14E.exit.i.i"
  %i.oa = mul nuw i64 %.val2.i202.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.x, i64 noundef %i.oa, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !39827
  br label %"_ZN4core3ptr62drop_in_place$LT$alloc..vec..Vec$LT$std..path..PathBuf$GT$$GT$17h941a405d0fd5fd90E.exit.i"

bb.dg:                                            ; preds = %bb.cw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5341.0412.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5341.0412.i, i64 noundef %.sroa.0340.0407.i, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !39830
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h94b6534449950db4E.exit203.i"

"_ZN4core3ptr62drop_in_place$LT$alloc..vec..Vec$LT$std..path..PathBuf$GT$$GT$17h941a405d0fd5fd90E.exit.i": ; preds = %bb.df, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7b61587996dc1c14E.exit.i.i"
  br i1 %i.mr, label %bb.dh, label %bb.ea

bb.dh:                                            ; preds = %"_ZN4core3ptr62drop_in_place$LT$alloc..vec..Vec$LT$std..path..PathBuf$GT$$GT$17h941a405d0fd5fd90E.exit.i"
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val127.i = load ptr, ptr %i.ob, align 8, !alias.scope !39722, !align !50, !noundef !44 ; 6 uses
  %i.oc = icmp eq ptr %.val127.i, null
  br i1 %i.oc, label %bb.ea, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call void @llvm.experimental.noalias.scope.decl(metadata !39831)
  %i.od = getelementptr inbounds nuw i8, ptr %.val127.i, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !39832)
  %i.oe = load i64, ptr %i.od, align 8, !range !70, !alias.scope !39833, !noalias !39730, !noundef !44 ; 3 uses
  %i.of = icmp eq i64 %i.oe, -9223372036854775808
  br i1 %i.of, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h26a5c28e51e07ed0E.exit.i.i.i.i.i", label %bb.dj

bb.dj:                                            ; preds = %bb.di
  call void @llvm.experimental.noalias.scope.decl(metadata !39834)
  call void @llvm.experimental.noalias.scope.decl(metadata !39835)
  %i.og = icmp eq i64 %i.oe, 0
  br i1 %i.og, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h26a5c28e51e07ed0E.exit.i.i.i.i.i", label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.oh = getelementptr inbounds nuw i8, ptr %.val127.i, i64 24
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.oh, align 8, !alias.scope !39836, !noalias !39730, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %i.oe, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !39837
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h26a5c28e51e07ed0E.exit.i.i.i.i.i"

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h26a5c28e51e07ed0E.exit.i.i.i.i.i": ; preds = %bb.dk, %bb.dj, %bb.di
  %i.oi = getelementptr inbounds nuw i8, ptr %.val127.i, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !39838)
  %i.oj = load i64, ptr %i.oi, align 8, !range !70, !alias.scope !39839, !noalias !39730, !noundef !44 ; 3 uses
  %i.ok = icmp eq i64 %i.oj, -9223372036854775808
  br i1 %i.ok, label %"_ZN4core3ptr87drop_in_place$LT$alloc..boxed..Box$LT$notify_types..event..EventAttributesInner$GT$$GT$17h684cd0ac1fa2f9e3E.exit.i.i.i", label %bb.dl

bb.dl:                                            ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h26a5c28e51e07ed0E.exit.i.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !39840)
  call void @llvm.experimental.noalias.scope.decl(metadata !39841)
  %i.ol = icmp eq i64 %i.oj, 0
  br i1 %i.ol, label %"_ZN4core3ptr87drop_in_place$LT$alloc..boxed..Box$LT$notify_types..event..EventAttributesInner$GT$$GT$17h684cd0ac1fa2f9e3E.exit.i.i.i", label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.om = getelementptr inbounds nuw i8, ptr %.val127.i, i64 48
  %.val1.i.i.i3.i.i.i.i.i = load ptr, ptr %i.om, align 8, !alias.scope !39842, !noalias !39730, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i3.i.i.i.i.i, i64 noundef %i.oj, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !39843
  br label %"_ZN4core3ptr87drop_in_place$LT$alloc..boxed..Box$LT$notify_types..event..EventAttributesInner$GT$$GT$17h684cd0ac1fa2f9e3E.exit.i.i.i"

"_ZN4core3ptr87drop_in_place$LT$alloc..boxed..Box$LT$notify_types..event..EventAttributesInner$GT$$GT$17h684cd0ac1fa2f9e3E.exit.i.i.i": ; preds = %bb.dm, %bb.dl, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h26a5c28e51e07ed0E.exit.i.i.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val127.i, i64 noundef 80, i64 noundef 8) #66, !noalias !39730
  br label %bb.ea

bb.dn:                                            ; preds = %"_ZN4core3ptr62drop_in_place$LT$alloc..vec..Vec$LT$std..path..PathBuf$GT$$GT$17h941a405d0fd5fd90E.exit"
  br i1 %.sroa.042.1350.i, label %bb.dy, label %bb.d

.thread460.i:                                     ; preds = %bb.bs, %.split528.i
  %.sroa.05.2466.i = phi i64 [ %14, %bb.bs ], [ %.sroa.05.1.i, %.split528.i ]
  %.sroa.98.1465.i = phi i64 [ %.sroa.15.0.i, %bb.bs ], [ %.sroa.98.0.i, %.split528.i ]
  %.sroa.13.1464.i = phi i64 [ %.sroa.05.1.i, %bb.bs ], [ %.sroa.13.0.i, %.split528.i ]
  %.sroa.15.1463.i = phi i64 [ %.sroa.98.0.i, %bb.bs ], [ %.sroa.15.0.i, %.split528.i ]
  %.sroa.011.0462.i = phi ptr [ %12, %bb.bs ], [ %7, %.split528.i ] ; 4 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !39730
  %i.on = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #66, !noalias !39730 ; 6 uses
  %i.oo = icmp eq ptr %i.on, null
  br i1 %i.oo, label %.split530.us.invoke.i, label %bb.do, !prof !49

.split530.us.invoke.i:                            ; preds = %.thread460.i, %bb.bu
  %i.op = phi i64 [ 48, %bb.bu ], [ 24, %.thread460.i ]
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef %i.op) #75
          to label %.split530.us.cont.i unwind label %bb.ba, !noalias !39730

.split530.us.cont.i:                              ; preds = %.split530.us.invoke.i
  unreachable

bb.do:                                            ; preds = %.thread460.i
  %.val115.i = load ptr, ptr %i.y, align 8, !noalias !39730, !nonnull !44, !noundef !44
  %.val116.i = load i64, ptr %i.aa, align 8, !noalias !39730, !noundef !44 ; 7 uses
  %i.oq = icmp slt i64 %.val116.i, 0
  br i1 %i.oq, label %bb.dq, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i204.i, !prof !69

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i204.i: ; preds = %bb.do
  %i.or = icmp eq i64 %.val116.i, 0
  br i1 %i.or, label %bb.ds, label %bb.dp

bb.dp:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i204.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !39844
  %i.os = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val116.i, i64 noundef range(i64 1, 9) 1) #66, !noalias !39844 ; 2 uses
  %i.ot = icmp eq ptr %i.os, null
  br i1 %i.ot, label %bb.dq, label %bb.ds

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %.sroa.4.0.ph.i.i.i208.i = phi i64 [ 1, %bb.dp ], [ 0, %bb.do ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i208.i, i64 %.val116.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2390) #75
          to label %.noexc209.i unwind label %bb.dr, !noalias !39730

.noexc209.i:                                      ; preds = %bb.dq
  unreachable

bb.dr:                                            ; preds = %bb.dq
  %i.ou = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.on, i64 noundef 24, i64 noundef 8) #66, !noalias !39730
  br label %.thread423.i

bb.ds:                                            ; preds = %bb.dp, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i204.i
  %.sroa.10.0.i.i.i205.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i204.i ], [ %i.os, %bb.dp ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i205.i, ptr nonnull readonly align 1 %.val115.i, i64 %.val116.i, i1 false), !noalias !39845
  store i64 %.val116.i, ptr %i.on, align 8, !noalias !39730
  %.sroa.4305.0..sroa.0269.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.on, i64 8
  store ptr %.sroa.10.0.i.i.i205.i, ptr %.sroa.4305.0..sroa.0269.0..sroa_idx.i, align 8, !noalias !39730
  %.sroa.5306.0..sroa.0269.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  store i64 %.val116.i, ptr %.sroa.5306.0..sroa.0269.0..sroa_idx.i, align 8, !noalias !39730
  call void @llvm.experimental.noalias.scope.decl(metadata !39846)
  %i.ov = getelementptr inbounds nuw i8, ptr %.sroa.011.0462.i, i64 8 ; 2 uses
  %.val.i211.i = load ptr, ptr %i.ov, align 8, !alias.scope !39846, !noalias !39730, !nonnull !44, !noundef !44 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %.sroa.011.0462.i, i64 16 ; 2 uses
  %.val1.i212.i = load i64, ptr %i.ow, align 8, !alias.scope !39846, !noalias !39730, !noundef !44 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39847)
  %i.ox = icmp eq i64 %.val1.i212.i, 0
  br i1 %i.ox, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7b61587996dc1c14E.exit.i218.i", label %.lr.ph.i.i.i213.i

.lr.ph.i.i.i213.i:                                ; preds = %bb.ds, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h94b6534449950db4E.exit.i.i.i217.i"
  %.sroa.0.011.i.i.i214.i = phi i64 [ %i.oz, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h94b6534449950db4E.exit.i.i.i217.i" ], [ 0, %bb.ds ] ; 2 uses
  %i.oy = getelementptr inbounds nuw [24 x i8], ptr %.val.i211.i, i64 %.sroa.0.011.i.i.i214.i ; 2 uses
  %i.oz = add nuw i64 %.sroa.0.011.i.i.i214.i, 1  ; 2 uses
  %.val8.i.i.i215.i = load i64, ptr %i.oy, align 8, !range !74, !alias.scope !39848, !noalias !39849, !noundef !44 ; 2 uses
  %i.pa = icmp eq i64 %.val8.i.i.i215.i, 0
  br i1 %i.pa, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h94b6534449950db4E.exit.i.i.i217.i", label %bb.dt

bb.dt:                                            ; preds = %.lr.ph.i.i.i213.i
  %i.pb = getelementptr i8, ptr %i.oy, i64 8
  %.val9.i.i.i216.i = load ptr, ptr %i.pb, align 8, !alias.scope !39847, !noalias !39849, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i216.i, i64 noundef %.val8.i.i.i215.i, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !39850
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h94b6534449950db4E.exit.i.i.i217.i"

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h94b6534449950db4E.exit.i.i.i217.i": ; preds = %bb.dt, %.lr.ph.i.i.i213.i
  %i.pc = icmp eq i64 %i.oz, %.val1.i212.i
  br i1 %i.pc, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7b61587996dc1c14E.exit.i218.i", label %.lr.ph.i.i.i213.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7b61587996dc1c14E.exit.i218.i": ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h94b6534449950db4E.exit.i.i.i217.i", %bb.ds
  %.val2.i219.i = load i64, ptr %.sroa.011.0462.i, align 8, !range !74, !alias.scope !39846, !noalias !39730, !noundef !44 ; 2 uses
  %i.pd = icmp eq i64 %.val2.i219.i, 0
  br i1 %i.pd, label %"_ZN4core3ptr62drop_in_place$LT$alloc..vec..Vec$LT$std..path..PathBuf$GT$$GT$17h941a405d0fd5fd90E.exit220.i", label %bb.du

bb.du:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7b61587996dc1c14E.exit.i218.i"
  %i.pe = mul nuw i64 %.val2.i219.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i211.i, i64 noundef %i.pe, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !39849
  br label %"_ZN4core3ptr62drop_in_place$LT$alloc..vec..Vec$LT$std..path..PathBuf$GT$$GT$17h941a405d0fd5fd90E.exit220.i"

"_ZN4core3ptr62drop_in_place$LT$alloc..vec..Vec$LT$std..path..PathBuf$GT$$GT$17h941a405d0fd5fd90E.exit220.i": ; preds = %bb.du, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7b61587996dc1c14E.exit.i218.i"
  store i64 1, ptr %.sroa.011.0462.i, align 8, !noalias !39730
  store ptr %i.on, ptr %i.ov, align 8, !noalias !39730
  store i64 1, ptr %i.ow, align 8, !noalias !39730
  br label %.split528.i

bb.dv:                                            ; preds = %bb.bn
  %i.pf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @"_ZN4core3ptr47drop_in_place$LT$notify_types..event..Event$GT$17h6c40e8ec3e34b2b0E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.k), !noalias !39730
  br i1 %i.ik, label %.thread423.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i, i64 noundef %.val124.i, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !39851
  br label %.thread423.i

bb.dx:                                            ; preds = %bb.bl, %bb.bk
  %i.pg = landingpad { ptr, i32 }
          cleanup
  call void @"_ZN4core3ptr47drop_in_place$LT$notify_types..event..Event$GT$17h6c40e8ec3e34b2b0E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.k), !noalias !39730
  br label %.thread423.i

.thread423.i:                                     ; preds = %bb.dx, %bb.dw, %bb.dv, %bb.dr, %.body.i, %.body160.i
  %.sroa.041.2433.i = phi i1 [ %.sroa.041.2.i, %.body160.i ], [ true, %bb.dw ], [ true, %bb.dr ], [ true, %bb.dx ], [ true, %.body.i ], [ true, %bb.dv ] ; 2 uses
  %.pn100432.i = phi { ptr, i32 } [ %.pn100.i, %.body160.i ], [ %i.pf, %bb.dw ], [ %i.ou, %bb.dr ], [ %i.pg, %bb.dx ], [ %i.ip, %.body.i ], [ %i.pf, %bb.dv ] ; 4 uses
  %i.ph = icmp eq i64 %.sroa.0340.0407.i, 0
  br i1 %i.ph, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h94b6534449950db4E.exit222.i", label %.split.i

.split.i:                                         ; preds = %.thread423.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5341.0412.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5341.0412.i, i64 noundef %.sroa.0340.0407.i, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !39852
  br i1 %.sroa.041.2433.i, label %bb.x, label %.lr.ph.i.i.i54.preheader

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h94b6534449950db4E.exit222.i": ; preds = %.thread423.i
  br i1 %.sroa.041.2433.i, label %bb.x, label %.lr.ph.i.i.i54.preheader

.split634.i:                                      ; preds = %"_ZN4core3ptr62drop_in_place$LT$alloc..vec..Vec$LT$std..path..PathBuf$GT$$GT$17h941a405d0fd5fd90E.exit"
  %i.pi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val125.i = load ptr, ptr %i.pi, align 8, !alias.scope !39722, !align !50, !noundef !44
  call fastcc void @"_ZN4core3ptr57drop_in_place$LT$notify_types..event..EventAttributes$GT$17ha94dd7d96cdb1c29E"(ptr %.val125.i) #77, !noalias !39730
  br i1 %.sroa.042.1350.i, label %bb.dy, label %bb.d

bb.dy:                                            ; preds = %.split634.i, %bb.dn, %"_ZN4core3ptr57drop_in_place$LT$notify_types..event..EventAttributes$GT$17ha94dd7d96cdb1c29E.exit"
  %.pn100.pn.pn585635.i = phi { ptr, i32 } [ %.pn100.pn349.i, %.split634.i ], [ %.pn100.pn349.i, %bb.dn ], [ %.pn100.pn.pn.ph.i, %"_ZN4core3ptr57drop_in_place$LT$notify_types..event..EventAttributes$GT$17ha94dd7d96cdb1c29E.exit" ] ; 2 uses
  %.val.i = load i64, ptr %i.s, align 8, !range !74, !alias.scope !39853, !noundef !44 ; 2 uses
  %i.pj = icmp eq i64 %.val.i, 0
  br i1 %i.pj, label %bb.d, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.pk = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val106.i = load ptr, ptr %i.pk, align 8, !alias.scope !39721, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val106.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !39854
  br label %bb.d

bb.ea:                                            ; preds = %"_ZN4core3ptr62drop_in_place$LT$alloc..vec..Vec$LT$std..path..PathBuf$GT$$GT$17h941a405d0fd5fd90E.exit.i", %bb.dh, %"_ZN4core3ptr87drop_in_place$LT$alloc..boxed..Box$LT$notify_types..event..EventAttributesInner$GT$$GT$17h684cd0ac1fa2f9e3E.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @"_ZN4core3ptr47drop_in_place$LT$notify_types..event..Event$GT$17h6c40e8ec3e34b2b0E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.l

"_ZN4core3ptr147drop_in_place$LT$core..option..Option$LT$$LP$notify_types..debouncer_full..DebouncedEvent$C$core..option..Option$LT$file_id..FileId$GT$$RP$$GT$$GT$17hb609e02811903394E.exit": ; preds = %bb.m, %bb.l
  store i64 -9223372036854775808, ptr %0, align 16
  ret void

.thread:                                          ; preds = %bb.n, %.thread65.loopexit.split-lp, %bb.d
  %.pn64 = phi { ptr, i32 } [ %.pn100.pn.pn585633.i, %bb.d ], [ %.pn68, %.thread65.loopexit.split-lp ], [ %i.bf, %bb.n ]
  resume { ptr, i32 } %.pn64

.thread65.loopexit.split-lp:                      ; preds = %.thread65.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread69
  %.pn68 = phi { ptr, i32 } [ %i.bk, %.thread69 ], [ %lpad.loopexit.split-lp170, %.thread65.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  tail call void @"_ZN4core3ptr47drop_in_place$LT$notify_types..event..Event$GT$17h6c40e8ec3e34b2b0E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %1) #77
  br label %.thread
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN21notify_debouncer_full26DebounceDataInner$LT$T$GT$18handle_rename_from17hd2893c54fe83a24dE"(ptr noalias noundef nonnull align 16 dereferenceable(272) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.54.i.i.i.i = alloca [16 x i8], align 8   ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.011.sroa.0 = alloca [24 x i8], align 16  ; 4 uses
  %i.d = invoke { i64, i32 } @_ZN21notify_debouncer_full4time5build3now17h9d9ee8f707ab4152E()
          to label %bb.b unwind label %.thread41  ; 2 uses

.thread41:                                        ; preds = %bb.c, %bb.e, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !44 ; 2 uses
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @816) #75
          to label %bb.d unwind label %.thread41

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !44, !noundef !44
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.011.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39871)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !39872
  invoke fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6822908fdc5fd70bE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.h, i64 %i.f)
          to label %.noexc unwind label %.thread41

.noexc:                                           ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !39871, !align !50, !noundef !44 ; 8 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.q, label %bb.f

bb.f:                                             ; preds = %.noexc
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !39872
  %i.k = tail call noalias noundef align 8 dereferenceable_or_null(80) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 80, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !39872 ; 13 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.g, label %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h13f3015bf7dd0cc9E.exit.i.i", !prof !49

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 80) #75
          to label %.noexc.i unwind label %bb.p, !noalias !39872

.noexc.i:                                         ; preds = %bb.g
  unreachable

"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h13f3015bf7dd0cc9E.exit.i.i": ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39873)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.54.i.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39874)
  %i.m = load i64, ptr %i.j, align 8, !range !60, !alias.scope !39875, !noalias !39872, !noundef !44 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !39875, !noalias !39872
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.q = load i8, ptr %i.p, align 8, !range !45, !alias.scope !39875, !noalias !39872, !noundef !44
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !range !70, !alias.scope !39875, !noalias !39872, !noundef !44
  %.not.i.i.i.i = icmp eq i64 %i.s, -9223372036854775808
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h13f3015bf7dd0cc9E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !39876
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1497)
          to label %.noexc.i.i unwind label %bb.n, !noalias !39872

.noexc.i.i:                                       ; preds = %bb.h
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !39876
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.0.copyload.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !39876
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.7.0.copyload.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !39876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !39876
  br label %bb.i

bb.i:                                             ; preds = %.noexc.i.i, %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h13f3015bf7dd0cc9E.exit.i.i"
  %.sroa.7.0.i.i.i.i = phi i64 [ %.sroa.7.0.copyload.i.i.i.i, %.noexc.i.i ], [ undef, %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h13f3015bf7dd0cc9E.exit.i.i" ]
  %.sroa.6.0.i.i.i.i = phi ptr [ %.sroa.6.0.copyload.i.i.i.i, %.noexc.i.i ], [ undef, %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h13f3015bf7dd0cc9E.exit.i.i" ] ; 3 uses
  %.sroa.0.015.i.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i.i, %.noexc.i.i ], [ -9223372036854775808, %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h13f3015bf7dd0cc9E.exit.i.i" ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !range !70, !alias.scope !39875, !noalias !39872, !noundef !44
  %.not9.i.i.i.i = icmp eq i64 %i.u, -9223372036854775808
  br i1 %.not9.i.i.i.i, label %"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h43e8e23eebf211c7E.exit.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !39876
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1497)
          to label %bb.m unwind label %bb.k, !noalias !39877

bb.k:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  switch i64 %.sroa.0.015.i.i.i.i, label %bb.l [
    i64 -9223372036854775808, label %bb.o
    i64 0, label %bb.o
  ]

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.i.i.i.i, i64 noundef %.sroa.0.015.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !39878
  br label %bb.o

bb.m:                                             ; preds = %bb.j
  %.sroa.02.0.copyload.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !39876
  %.sroa.54.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.54.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.54.0..sroa_idx.i.i.i.i, i64 16, i1 false), !noalias !39879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !39876
  br label %"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h43e8e23eebf211c7E.exit.i"

bb.n:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l, %bb.k, %bb.k
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.w, %bb.n ], [ %i.v, %bb.l ], [ %i.v, %bb.k ], [ %i.v, %bb.k ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef 80, i64 noundef 8) #66, !noalias !39872
  br label %.thread38
end_hunk_1
