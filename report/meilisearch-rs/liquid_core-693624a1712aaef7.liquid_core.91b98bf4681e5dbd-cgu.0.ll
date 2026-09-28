Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/liquid_core-693624a1712aaef7.liquid_core.91b98bf4681e5dbd-cgu.0?download=true
inline.NumInlined: 4312
inline.NumDeleted: 1825
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 26
begin_hunk_0_@"_ZN137_$LT$liquid_core..parser..parser..inner..LiquidParser$u20$as$u20$pest..parser..Parser$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$5parse17h78f6f1092b06af3eE":bb.a
  %.val13.i82.i.prol = load i8, ptr %i.kx, align 1, !range !28, !noalias !7879, !noundef !6
  %i.ky = icmp eq i8 %.val12.i81.i.prol, %.val13.i82.i.prol
  br i1 %i.ky, label %.lr.ph.i78.i.prol.loopexit.unr-lcssa, label %bb.ee

bb.ee:                                            ; preds = %.lr.ph.i78.i.prol
  store i8 %.val12.i81.i.prol, ptr %i.kw, align 1, !noalias !7879
  %i.kz = add i64 %.sroa.0.023.i70.i, 1
  br label %.lr.ph.i78.i.prol.loopexit.unr-lcssa

.lr.ph.i78.i.prol.loopexit.unr-lcssa:             ; preds = %bb.ee, %.lr.ph.i78.i.prol
  %.sroa.11.1.i83.i.prol = phi i64 [ %i.kz, %bb.ee ], [ %.sroa.0.023.i70.i, %.lr.ph.i78.i.prol ] ; 2 uses
  %.sroa.5.0.i84.i.prol = add nuw i64 %.sroa.0.023.i70.i, 2
  br label %.lr.ph.i78.i.prol.loopexit

.lr.ph.i78.i.prol.loopexit:                       ; preds = %.lr.ph.i78.i.prol.loopexit.unr-lcssa, %.lr.ph.i78.i.preheader
  %.sroa.11.1.i83.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i78.i.preheader ], [ %.sroa.11.1.i83.i.prol, %.lr.ph.i78.i.prol.loopexit.unr-lcssa ]
  %.sroa.5.026.i79.i.unr = phi i64 [ %.sroa.5.024.i75.i, %.lr.ph.i78.i.preheader ], [ %.sroa.5.0.i84.i.prol, %.lr.ph.i78.i.prol.loopexit.unr-lcssa ]
  %.sroa.11.025.i80.i.unr = phi i64 [ %.sroa.0.023.i70.i, %.lr.ph.i78.i.preheader ], [ %.sroa.11.1.i83.i.prol, %.lr.ph.i78.i.prol.loopexit.unr-lcssa ]
  %i.la = icmp eq i64 %i.ku, %indvar59
  br i1 %i.la, label %._crit_edge.i76.i, label %.lr.ph.i78.i

bb.ef:                                            ; preds = %bb.ed
  %.not.i73.i = icmp eq i64 %.sroa.5.024.i75.i, %.pr68.i
  %indvar.next60 = add i64 %indvar59, 1
  br i1 %.not.i73.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17hec65011759739f6bE.exit86.i", label %bb.ed

._crit_edge.i76.i:                                ; preds = %.lr.ph.i78.i.prol.loopexit, %bb.ei, %.preheader.i74.i
  %.sroa.11.0.lcssa.i77.i = phi i64 [ %.sroa.0.023.i70.i, %.preheader.i74.i ], [ %.sroa.11.1.i83.i.lcssa.unr, %.lr.ph.i78.i.prol.loopexit ], [ %.sroa.11.1.i83.i.1, %bb.ei ]
  store i64 %.sroa.11.0.lcssa.i77.i, ptr %i.kc, align 8, !alias.scope !7878, !noalias !7845
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17hec65011759739f6bE.exit86.i"

.lr.ph.i78.i:                                     ; preds = %.lr.ph.i78.i.prol.loopexit, %bb.ei
  %.sroa.5.026.i79.i = phi i64 [ %.sroa.5.0.i84.i.1, %bb.ei ], [ %.sroa.5.026.i79.i.unr, %.lr.ph.i78.i.prol.loopexit ] ; 3 uses
  %.sroa.11.025.i80.i = phi i64 [ %.sroa.11.1.i83.i.1, %bb.ei ], [ %.sroa.11.025.i80.i.unr, %.lr.ph.i78.i.prol.loopexit ] ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ko, i64 %.sroa.5.026.i79.i
  %i.lc = getelementptr i8, ptr %i.ko, i64 %.sroa.11.025.i80.i ; 2 uses
  %i.ld = getelementptr i8, ptr %i.lc, i64 -1
  %.val12.i81.i = load i8, ptr %i.lb, align 1, !range !28, !noalias !7879, !noundef !6 ; 2 uses
  %.val13.i82.i = load i8, ptr %i.ld, align 1, !range !28, !noalias !7879, !noundef !6
  %i.le = icmp eq i8 %.val12.i81.i, %.val13.i82.i
  br i1 %i.le, label %.lr.ph.i78.i.1, label %bb.eg

bb.eg:                                            ; preds = %.lr.ph.i78.i
  store i8 %.val12.i81.i, ptr %i.lc, align 1, !noalias !7879
  %i.lf = add i64 %.sroa.11.025.i80.i, 1
  br label %.lr.ph.i78.i.1

.lr.ph.i78.i.1:                                   ; preds = %bb.eg, %.lr.ph.i78.i
  %.sroa.11.1.i83.i = phi i64 [ %i.lf, %bb.eg ], [ %.sroa.11.025.i80.i, %.lr.ph.i78.i ] ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ko, i64 %.sroa.5.026.i79.i
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 1
  %i.li = getelementptr i8, ptr %i.ko, i64 %.sroa.11.1.i83.i ; 2 uses
  %i.lj = getelementptr i8, ptr %i.li, i64 -1
  %.val12.i81.i.1 = load i8, ptr %i.lh, align 1, !range !28, !noalias !7879, !noundef !6 ; 2 uses
  %.val13.i82.i.1 = load i8, ptr %i.lj, align 1, !range !28, !noalias !7879, !noundef !6
  %i.lk = icmp eq i8 %.val12.i81.i.1, %.val13.i82.i.1
  br i1 %i.lk, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %.lr.ph.i78.i.1
  store i8 %.val12.i81.i.1, ptr %i.li, align 1, !noalias !7879
  %i.ll = add i64 %.sroa.11.1.i83.i, 1
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %.lr.ph.i78.i.1
  %.sroa.11.1.i83.i.1 = phi i64 [ %i.ll, %bb.eh ], [ %.sroa.11.1.i83.i, %.lr.ph.i78.i.1 ] ; 2 uses
  %.sroa.5.0.i84.i.1 = add nuw nsw i64 %.sroa.5.026.i79.i, 2 ; 2 uses
  %exitcond.not.i85.i.1 = icmp eq i64 %.sroa.5.0.i84.i.1, %.pr68.i
  br i1 %exitcond.not.i85.i.1, label %._crit_edge.i76.i, label %.lr.ph.i78.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17hec65011759739f6bE.exit86.i": ; preds = %bb.ef, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17hec65011759739f6bE.exit.i", %._crit_edge.i76.i, %_ZN5alloc5slice11stable_sort17hbb846960d6a2e968E.exit69.i
  %.val32.i = load ptr, ptr %i.il, align 8, !noalias !7845, !nonnull !6, !noundef !6
  %.val33.i = load i64, ptr %i.in, align 8, !noalias !7845, !noundef !6 ; 9 uses
  %i.lm = icmp slt i64 %.val33.i, 0
  br i1 %i.lm, label %.invoke.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !14

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17hec65011759739f6bE.exit86.i"
  %i.ln = icmp eq i64 %.val33.i, 0                ; 2 uses
  br i1 %i.ln, label %bb.ej, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !7880
  %i.lo = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val33.i, i64 noundef range(i64 1, 9) 1) #59, !noalias !7880 ; 2 uses
  %i.lp = icmp eq ptr %i.lo, null
  br i1 %i.lp, label %.invoke.i, label %bb.ej

.invoke.i:                                        ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17hec65011759739f6bE.exit86.i", %bb.dq
  %i.lq = phi i64 [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17hec65011759739f6bE.exit86.i" ], [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i" ], [ 1, %bb.dq ]
  %i.lr = phi i64 [ %.val33.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17hec65011759739f6bE.exit86.i" ], [ %.val33.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i" ], [ 18, %bb.dq ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.lq, i64 %i.lr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @787) #57
          to label %.cont.i unwind label %bb.dr, !noalias !7845

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ej:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.lo, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i" ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 1 %.val32.i, i64 %.val33.i, i1 false), !noalias !7881
  %.val30.i = load ptr, ptr %i.ka, align 8, !noalias !7845, !nonnull !6, !noundef !6
  %.val31.i = load i64, ptr %i.kc, align 8, !noalias !7845, !noundef !6 ; 7 uses
  %i.ls = icmp slt i64 %.val31.i, 0
  br i1 %i.ls, label %bb.ek, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i88.i, !prof !14

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i88.i: ; preds = %bb.ej
  %i.lt = icmp eq i64 %.val31.i, 0
  br i1 %i.lt, label %bb.en, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i89.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i89.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i88.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !7882
  %i.lu = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val31.i, i64 noundef range(i64 1, 9) 1) #59, !noalias !7882 ; 2 uses
  %i.lv = icmp eq ptr %i.lu, null
  br i1 %i.lv, label %bb.ek, label %bb.en

bb.ek:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i89.i", %bb.ej
  %.sroa.4.0.ph.i.i.i93.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i89.i" ], [ 0, %bb.ej ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i93.i, i64 %.val31.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @787) #57
          to label %.noexc94.i unwind label %bb.el, !noalias !7845

.noexc94.i:                                       ; preds = %bb.ek
  unreachable

bb.el:                                            ; preds = %bb.ek
  %i.lw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ln, label %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h040725f7e42063feE.exit98.i", label %bb.em

bb.em:                                            ; preds = %bb.el
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i, i64 noundef %.val33.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !7883
  br label %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h040725f7e42063feE.exit98.i"

bb.en:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i89.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i88.i
  %.sroa.10.0.i.i.i90.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i88.i ], [ %i.lu, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i89.i" ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i90.i, ptr nonnull readonly align 1 %.val30.i, i64 %.val31.i, i1 false), !noalias !7884
  br label %bb.eo

bb.eo:                                            ; preds = %bb.ep, %bb.en
  %.sroa.6.sroa.7.sroa.6.sroa.5.0.i = phi i64 [ %.val31.i, %bb.en ], [ undef, %bb.ep ] ; 2 uses
  %.sroa.6.sroa.7.sroa.6.sroa.0.0.i = phi ptr [ %.sroa.10.0.i.i.i90.i, %bb.en ], [ undef, %bb.ep ] ; 3 uses
  %.sroa.6.sroa.7.sroa.0.0.i = phi i64 [ %.val31.i, %bb.en ], [ 18, %bb.ep ] ; 4 uses
  %.sroa.6.sroa.6.0.i = phi i64 [ %.val33.i, %bb.en ], [ %i.mb, %bb.ep ] ; 3 uses
  %.sroa.6.sroa.0.0.i = phi ptr [ %.sroa.10.0.i.i.i.i, %bb.en ], [ inttoptr (i64 18 to ptr), %bb.ep ] ; 4 uses
  %.sroa.03.0.i = phi i64 [ %.val33.i, %bb.en ], [ -9223372036854775808, %bb.ep ] ; 4 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.hh, i64 248
  %i.ly = load i8, ptr %i.lx, align 8, !range !11, !noalias !7845, !noundef !6
  %i.lz = trunc nuw i8 %i.ly to i1
  %i.ma = getelementptr inbounds nuw i8, ptr %i.hh, i64 280 ; 2 uses
  br i1 %i.lz, label %bb.er, label %bb.eq

bb.ep:                                            ; preds = %bb.dq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.ix, ptr noundef nonnull align 1 dereferenceable(18) @493, i64 18, i1 false), !noalias !7885
  %i.mb = ptrtoint ptr %i.ix to i64
  br label %bb.eo

bb.eq:                                            ; preds = %bb.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !7860
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !7860
  store i64 %.sroa.03.0.i, ptr %i.j, align 8, !noalias !7860
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %.sroa.6.sroa.0.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !7860
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.6.sroa.6.0.i, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.i, align 8, !noalias !7860
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 %.sroa.6.sroa.7.sroa.0.0.i, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx.i, align 8, !noalias !7860
  %.sroa.6.sroa.7.sroa.6.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %.sroa.6.sroa.7.sroa.6.sroa.0.0.i, ptr %.sroa.6.sroa.7.sroa.6.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !7860
  %.sroa.6.sroa.7.sroa.6.sroa.5.0..sroa.6.sroa.7.sroa.6.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i64 %.sroa.6.sroa.7.sroa.6.sroa.5.0.i, ptr %.sroa.6.sroa.7.sroa.6.sroa.5.0..sroa.6.sroa.7.sroa.6.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !7860
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !7860
  %i.mc = load i64, ptr %i.ma, align 8, !noalias !7845, !noundef !6
  store ptr %2, ptr %i.i, align 8, !noalias !7860
  %i.md = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %3, ptr %i.md, align 8, !noalias !7860
  %i.me = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.mc, ptr %i.me, align 8, !noalias !7860
  invoke fastcc void @"_ZN4pest5error14Error$LT$R$GT$12new_from_pos17h1834878f83f7e23aE"(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.k, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.j, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.i)
          to label %bb.ez unwind label %bb.dr, !noalias !7845

bb.er:                                            ; preds = %bb.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !7860
  store i64 %.sroa.03.0.i, ptr %i.n, align 8, !noalias !7860
  %.sroa.6.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.sroa.6.sroa.0.0.i, ptr %.sroa.6.0..sroa_idx6.i, align 8, !noalias !7860
  store i64 %.sroa.6.sroa.6.0.i, ptr %.sink7.i.sroa.gep, align 8, !noalias !7860
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx6.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 %.sroa.6.sroa.7.sroa.0.0.i, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx6.sroa_idx.i, align 8, !noalias !7860
  store ptr %.sroa.6.sroa.7.sroa.6.sroa.0.0.i, ptr %.sink7.i.sroa.gep4, align 8, !noalias !7860
  %.sroa.6.sroa.7.sroa.6.sroa.5.0..sroa.6.sroa.7.sroa.6.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx6.sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store i64 %.sroa.6.sroa.7.sroa.6.sroa.5.0.i, ptr %.sroa.6.sroa.7.sroa.6.sroa.5.0..sroa.6.sroa.7.sroa.6.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx6.sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !7860
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !7860
  %i.mf = load i64, ptr %i.ma, align 8, !noalias !7845, !noundef !6
  store ptr %2, ptr %i.m, align 8, !noalias !7860
  %i.mg = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %3, ptr %i.mg, align 8, !noalias !7860
  %i.mh = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.mf, ptr %i.mh, align 8, !noalias !7860
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !7860
  call void @llvm.experimental.noalias.scope.decl(metadata !7886)
  call void @llvm.experimental.noalias.scope.decl(metadata !7887)
  %i.mi = getelementptr inbounds nuw i8, ptr %i.hh, i64 176
  %.val.i99.i = load ptr, ptr %i.mi, align 8, !alias.scope !7887, !noalias !7888, !nonnull !6, !noundef !6 ; 11 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.hh, i64 184
  %.val2.i.i = load i64, ptr %i.mj, align 8, !alias.scope !7887, !noalias !7888, !noundef !6 ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7889)
  %i.mk = shl i64 %.val2.i.i, 1                   ; 5 uses
  %i.ml = or i64 %i.mk, %.val2.i.i
  %or.cond.i.i.i.not.i.i.i.i = icmp sgt i64 %i.ml, -1
  %i.mm = ptrtoint ptr %.sroa.6.sroa.0.0.i to i64
  %i.mn = inttoptr i64 %.sroa.6.sroa.6.0.i to ptr
  br i1 %or.cond.i.i.i.not.i.i.i.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, label %bb.es, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.er
  %i.mo = icmp eq i64 %i.mk, 0
  br i1 %i.mo, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.thread.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.thread.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %i.mp = icmp eq i64 %.val2.i.i, 0
  call void @llvm.assume(i1 %i.mp)
  br label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd2df9fdc10c89dc5E.exit.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !7890
  %i.mq = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.mk, i64 noundef range(i64 1, 9) 1) #59, !noalias !7890 ; 5 uses
  %i.mr = icmp eq ptr %i.mq, null
  br i1 %i.mr, label %bb.es, label %.lr.ph.i.i.i.i.preheader.a

bb.es:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i", %bb.er
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i" ], [ 0, %bb.er ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.mk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @786) #57
          to label %.noexc102.i unwind label %bb.fb, !noalias !7845

.noexc102.i:                                      ; preds = %bb.es
  unreachable

.lr.ph.i.i.i.i.preheader.a:                       ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i"
  %4 = getelementptr inbounds nuw [2 x i8], ptr %.val.i99.i, i64 %.val2.i.i
  %i.ms = and i64 %.val2.i.i, 9223372036854775807
  %i.mt = add i64 %.val2.i.i, -1
  %i.mu = call i64 @llvm.umin.i64(i64 %i.ms, i64 %i.mt) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.mu, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader53, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader.a
  %i.mv = add nuw i64 %i.mu, 1                    ; 2 uses
  %i.mw = and i64 %i.mv, 7                        ; 2 uses
  %i.mx = icmp eq i64 %i.mw, 0
  %i.my = select i1 %i.mx, i64 8, i64 %i.mw
  %n.vec = sub i64 %i.mv, %i.my                   ; 4 uses
  %i.mz = shl i64 %n.vec, 1
  %i.na = getelementptr i8, ptr %.val.i99.i, i64 %i.mz
  %i.nb = sub i64 %.val2.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.nc = shl i64 %index, 1                       ; 8 uses
  %next.gep = getelementptr i8, ptr %.val.i99.i, i64 %i.nc ; 2 uses
  %i.nd = getelementptr i8, ptr %.val.i99.i, i64 %i.nc ; 2 uses
  %next.gep44 = getelementptr i8, ptr %i.nd, i64 2
  %i.ne = getelementptr i8, ptr %.val.i99.i, i64 %i.nc ; 2 uses
  %next.gep45 = getelementptr i8, ptr %i.ne, i64 4
  %i.nf = getelementptr i8, ptr %.val.i99.i, i64 %i.nc ; 2 uses
  %next.gep46 = getelementptr i8, ptr %i.nf, i64 6
  %i.ng = getelementptr i8, ptr %.val.i99.i, i64 %i.nc ; 2 uses
  %next.gep47 = getelementptr i8, ptr %i.ng, i64 8
  %i.nh = getelementptr i8, ptr %.val.i99.i, i64 %i.nc ; 2 uses
  %next.gep48 = getelementptr i8, ptr %i.nh, i64 10
  %i.ni = getelementptr i8, ptr %.val.i99.i, i64 %i.nc ; 2 uses
  %next.gep49 = getelementptr i8, ptr %i.ni, i64 12
  %i.nj = getelementptr i8, ptr %.val.i99.i, i64 %i.nc ; 2 uses
  %next.gep50 = getelementptr i8, ptr %i.nj, i64 14
  %i.nk = load i8, ptr %next.gep, align 1, !range !50, !alias.scope !7889, !noalias !7891, !noundef !6
  %i.nl = load i8, ptr %next.gep44, align 1, !range !50, !alias.scope !7889, !noalias !7891, !noundef !6
  %i.nm = load i8, ptr %next.gep45, align 1, !range !50, !alias.scope !7889, !noalias !7891, !noundef !6
  %i.nn = load i8, ptr %next.gep46, align 1, !range !50, !alias.scope !7889, !noalias !7891, !noundef !6
  %i.no = load i8, ptr %next.gep47, align 1, !range !50, !alias.scope !7889, !noalias !7891, !noundef !6
  %i.np = load i8, ptr %next.gep48, align 1, !range !50, !alias.scope !7889, !noalias !7891, !noundef !6
  %i.nq = load i8, ptr %next.gep49, align 1, !range !50, !alias.scope !7889, !noalias !7891, !noundef !6
  %i.nr = load i8, ptr %next.gep50, align 1, !range !50, !alias.scope !7889, !noalias !7891, !noundef !6
  %i.ns = insertelement <8 x i8> poison, i8 %i.nk, i64 0
  %i.nt = insertelement <8 x i8> %i.ns, i8 %i.nl, i64 1
  %i.nu = insertelement <8 x i8> %i.nt, i8 %i.nm, i64 2
  %i.nv = insertelement <8 x i8> %i.nu, i8 %i.nn, i64 3
  %i.nw = insertelement <8 x i8> %i.nv, i8 %i.no, i64 4
  %i.nx = insertelement <8 x i8> %i.nw, i8 %i.np, i64 5
  %i.ny = insertelement <8 x i8> %i.nx, i8 %i.nq, i64 6
  %i.nz = insertelement <8 x i8> %i.ny, i8 %i.nr, i64 7
  %i.oa = getelementptr i8, ptr %next.gep, i64 1
  %i.ob = getelementptr i8, ptr %i.nd, i64 3
  %i.oc = getelementptr i8, ptr %i.ne, i64 5
  %i.od = getelementptr i8, ptr %i.nf, i64 7
  %i.oe = getelementptr i8, ptr %i.ng, i64 9
  %i.of = getelementptr i8, ptr %i.nh, i64 11
  %i.og = getelementptr i8, ptr %i.ni, i64 13
  %i.oh = getelementptr i8, ptr %i.nj, i64 15
  %i.oi = load i8, ptr %i.oa, align 1, !alias.scope !7889, !noalias !7891
  %i.oj = load i8, ptr %i.ob, align 1, !alias.scope !7889, !noalias !7891
  %i.ok = load i8, ptr %i.oc, align 1, !alias.scope !7889, !noalias !7891
  %i.ol = load i8, ptr %i.od, align 1, !alias.scope !7889, !noalias !7891
  %i.om = load i8, ptr %i.oe, align 1, !alias.scope !7889, !noalias !7891
  %i.on = load i8, ptr %i.of, align 1, !alias.scope !7889, !noalias !7891
  %i.oo = load i8, ptr %i.og, align 1, !alias.scope !7889, !noalias !7891
  %i.op = load i8, ptr %i.oh, align 1, !alias.scope !7889, !noalias !7891
  %i.oq = insertelement <8 x i8> poison, i8 %i.oi, i64 0
  %i.or = insertelement <8 x i8> %i.oq, i8 %i.oj, i64 1
  %i.os = insertelement <8 x i8> %i.or, i8 %i.ok, i64 2
  %i.ot = insertelement <8 x i8> %i.os, i8 %i.ol, i64 3
  %i.ou = insertelement <8 x i8> %i.ot, i8 %i.om, i64 4
  %i.ov = insertelement <8 x i8> %i.ou, i8 %i.on, i64 5
  %i.ow = insertelement <8 x i8> %i.ov, i8 %i.oo, i64 6
  %i.ox = insertelement <8 x i8> %i.ow, i8 %i.op, i64 7
  %i.oy = getelementptr inbounds nuw [2 x i8], ptr %i.mq, i64 %index
  %interleaved.vec = shufflevector <8 x i8> %i.nz, <8 x i8> %i.ox, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.oy, align 1, !noalias !7892
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.oz = icmp eq i64 %index.next, %n.vec
  br i1 %i.oz, label %.lr.ph.i.i.i.i.preheader53, label %vector.body, !llvm.loop !7830

.lr.ph.i.i.i.i.preheader53:                       ; preds = %vector.body, %.lr.ph.i.i.i.i.preheader.a
  %.sroa.014.023.i.i.i.i.ph = phi ptr [ %.val.i99.i, %.lr.ph.i.i.i.i.preheader.a ], [ %i.na, %vector.body ]
  %.sroa.7.022.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.a ], [ %n.vec, %vector.body ]
  %.sroa.10.021.i.i.i.i.ph = phi i64 [ %.val2.i.i, %.lr.ph.i.i.i.i.preheader.a ], [ %i.nb, %vector.body ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader53, %bb.et
  %.sroa.014.023.i.i.i.i = phi ptr [ %i.pd, %bb.et ], [ %.sroa.014.023.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader53 ] ; 4 uses
  %.sroa.7.022.i.i.i.i = phi i64 [ %i.pc, %bb.et ], [ %.sroa.7.022.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader53 ] ; 2 uses
  %.sroa.10.021.i.i.i.i = phi i64 [ %i.pb, %bb.et ], [ %.sroa.10.021.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader53 ]
  %i.pa = icmp eq ptr %.sroa.014.023.i.i.i.i, %4
  br i1 %i.pa, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd2df9fdc10c89dc5E.exit.i.i", label %bb.et

bb.et:                                            ; preds = %.lr.ph.i.i.i.i
  %i.pb = add nsw i64 %.sroa.10.021.i.i.i.i, -1   ; 2 uses
  %i.pc = add nuw nsw i64 %.sroa.7.022.i.i.i.i, 1
  %i.pd = getelementptr inbounds nuw i8, ptr %.sroa.014.023.i.i.i.i, i64 2
  %.val.i.i.i.i = load i8, ptr %.sroa.014.023.i.i.i.i, align 1, !range !50, !alias.scope !7889, !noalias !7891, !noundef !6
  %i.pe = getelementptr i8, ptr %.sroa.014.023.i.i.i.i, i64 1
  %.val11.i.i.i.i = load i8, ptr %i.pe, align 1, !alias.scope !7889, !noalias !7891
  %i.pf = getelementptr inbounds nuw [2 x i8], ptr %i.mq, i64 %.sroa.7.022.i.i.i.i ; 2 uses
  store i8 %.val.i.i.i.i, ptr %i.pf, align 1, !noalias !7892
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 1
  store i8 %.val11.i.i.i.i, ptr %i.pg, align 1, !noalias !7892
  %i.ph = icmp eq i64 %i.pb, 0
  br i1 %i.ph, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd2df9fdc10c89dc5E.exit.i.i", label %.lr.ph.i.i.i.i, !llvm.loop !7831

"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd2df9fdc10c89dc5E.exit.i.i": ; preds = %bb.et, %.lr.ph.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.thread.i.i.i.i"
  %.sroa.10.0.i31.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.thread.i.i.i.i" ], [ %i.mq, %.lr.ph.i.i.i.i ], [ %i.mq, %bb.et ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7893
  %i.pi = getelementptr inbounds nuw i8, ptr %i.hh, i64 200
  %.val5.i.i = load ptr, ptr %i.pi, align 8, !alias.scope !7887, !noalias !7888, !nonnull !6, !noundef !6
  %i.pj = getelementptr inbounds nuw i8, ptr %i.hh, i64 208
  %.val6.i.i = load i64, ptr %i.pj, align 8, !alias.scope !7887, !noalias !7888, !noundef !6
  invoke fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf49bec782a24e97aE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, ptr nonnull %.val5.i.i, i64 %.val6.i.i)
          to label %bb.ex unwind label %bb.ew, !noalias !7894

bb.eu:                                            ; preds = %bb.ey, %bb.ew
  %.pn.i.i = phi { ptr, i32 } [ %i.po, %bb.ey ], [ %i.pl, %bb.ew ] ; 2 uses
  %i.pk = icmp eq i64 %.val2.i.i, 0
  br i1 %i.pk, label %bb.fg, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i31.i.i.i.i, i64 noundef %i.mk, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !7895
  br label %bb.fg

bb.ew:                                            ; preds = %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd2df9fdc10c89dc5E.exit.i.i"
  %i.pl = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.ex:                                            ; preds = %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd2df9fdc10c89dc5E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7893
  %i.pm = getelementptr inbounds nuw i8, ptr %i.hh, i64 224
  %.val3.i.i = load ptr, ptr %i.pm, align 8, !alias.scope !7887, !noalias !7888, !nonnull !6, !noundef !6
  %i.pn = getelementptr inbounds nuw i8, ptr %i.hh, i64 232
  %.val4.i.i = load i64, ptr %i.pn, align 8, !alias.scope !7887, !noalias !7888, !noundef !6
  invoke fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf49bec782a24e97aE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %.val3.i.i, i64 %.val4.i.i)
          to label %bb.fc unwind label %bb.ey, !noalias !7894

bb.ey:                                            ; preds = %bb.ex
  %i.po = landingpad { ptr, i32 }
          cleanup
  call void @"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$pest..parser_state..ParsingToken$GT$$GT$17h030e44d4bc9542e3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #58, !noalias !7894
  br label %bb.eu

bb.ez:                                            ; preds = %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !7860
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !7860
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %i.k, i64 120, i1 false), !noalias !7864
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !7860
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ff, %bb.ez
  call fastcc void @"_ZN4core3ptr125drop_in_place$LT$alloc..boxed..Box$LT$pest..parser_state..ParserState$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$17h117c2a345cd6a86aE"(ptr nonnull %i.hh), !noalias !7845
  br label %_ZN4pest12parser_state5state17h51e0ea72371a02dcE.exit

bb.fb:                                            ; preds = %bb.es
  %i.pp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

.body103.i:                                       ; preds = %bb.fc
  %i.pq = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr102drop_in_place$LT$pest..parser_state..ParseAttempts$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h436b53f27f89978dE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.l) #58, !noalias !7896
  br label %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h040725f7e42063feE.exit98.i"

bb.fc:                                            ; preds = %bb.ex
  %i.pr = getelementptr inbounds nuw i8, ptr %i.hh, i64 240
  %i.ps = load i64, ptr %i.pr, align 8, !alias.scope !7887, !noalias !7888, !noundef !6
  %i.pt = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  store i8 1, ptr %i.pt, align 8, !alias.scope !7886, !noalias !7897
  store i64 %.val2.i.i, ptr %i.l, align 8, !alias.scope !7886, !noalias !7897
  %.sroa.5.0..sroa_idx.i100.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %.sroa.10.0.i31.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i100.i, align 8, !alias.scope !7886, !noalias !7897
  %.sroa.7.0..sroa_idx.i101.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %.val2.i.i, ptr %.sroa.7.0..sroa_idx.i101.i, align 8, !alias.scope !7886, !noalias !7897
  %i.pu = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pu, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !7897
  %i.pv = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pv, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !7897
  %i.pw = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  store i64 %i.ps, ptr %i.pw, align 8, !alias.scope !7886, !noalias !7897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7893
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7898
  invoke fastcc void @"_ZN4pest5error14Error$LT$R$GT$12new_from_pos17h1834878f83f7e23aE"(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.m)
          to label %bb.fd unwind label %.body103.i, !noalias !7899

bb.fd:                                            ; preds = %bb.fc
  %i.px = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.py = load ptr, ptr %i.px, align 8, !noalias !7898, !nonnull !6, !align !9, !noundef !6
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 72 ; 3 uses
  %i.qa = load i64, ptr %i.pz, align 8, !range !10, !alias.scope !7900, !noalias !7901, !noundef !6
  %i.qb = icmp eq i64 %i.qa, -9223372036854775808
  br i1 %i.qb, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  call fastcc void @"_ZN4core3ptr102drop_in_place$LT$pest..parser_state..ParseAttempts$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h436b53f27f89978dE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.pz), !noalias !7901
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.pz, ptr noundef nonnull readonly align 8 dereferenceable(88) %i.l, i64 88, i1 false), !noalias !7896
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %i.b, i64 120, i1 false), !noalias !7864
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !7860
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !7860
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !7860
  br label %bb.fa

bb.fg:                                            ; preds = %bb.fb, %bb.ev, %bb.eu
  %eh.lpad-body104.ph.i = phi { ptr, i32 } [ %i.pp, %bb.fb ], [ %.pn.i.i, %bb.ev ], [ %.pn.i.i, %bb.eu ] ; 2 uses
  switch i64 %.sroa.03.0.i, label %bb.fh [
    i64 -9223372036854775808, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h215b66a6f537a8d1E.exit.sink.split.i"
    i64 0, label %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h040725f7e42063feE.exit.i3"
  ]

bb.fh:                                            ; preds = %bb.fg
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.sroa.0.0.i, i64 noundef %.sroa.03.0.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !7902
  br label %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h040725f7e42063feE.exit.i3"

"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h040725f7e42063feE.exit.i3": ; preds = %bb.fg, %bb.fh
  %i.qc = icmp eq i64 %.sroa.6.sroa.7.sroa.0.0.i, 0
  br i1 %i.qc, label %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h040725f7e42063feE.exit98.i", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h215b66a6f537a8d1E.exit.sink.split.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h215b66a6f537a8d1E.exit.sink.split.i": ; preds = %bb.fg, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h040725f7e42063feE.exit.i3"
  %.val1.i5.i = phi ptr [ %.sroa.6.sroa.7.sroa.6.sroa.0.0.i, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h040725f7e42063feE.exit.i3" ], [ %i.mn, %bb.fg ]
  %.val.i4.sink.i = phi i64 [ %.sroa.6.sroa.7.sroa.0.0.i, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h040725f7e42063feE.exit.i3" ], [ %i.mm, %bb.fg ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i, i64 noundef %.val.i4.sink.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !7903
  br label %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h040725f7e42063feE.exit98.i"

_ZN4pest12parser_state5state17h51e0ea72371a02dcE.exit: ; preds = %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h040725f7e42063feE.exit42.i", %bb.fa
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @"_ZN137_$LT$liquid_core..parser..parser..inner..LiquidParser$u20$as$u20$pest..parser..Parser$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$5parse5rules7visible10Expression17h4722ce7801c2bf79E"(ptr noalias noundef nonnull align 8 %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.025.0.copyload.i = load i64, ptr %0, align 8, !alias.scope !7994
  %.sroa.526.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = trunc nuw i64 %.sroa.025.0.copyload.i to i1
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.sroa.627.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.627.0.copyload.i = load i64, ptr %.sroa.627.0..sroa_idx.i, align 8, !alias.scope !7994
  %.sroa.526.0.copyload.i = load i64, ptr %.sroa.526.0..sroa_idx.i, align 8, !alias.scope !7994 ; 2 uses
  %.not.i = icmp ult i64 %.sroa.526.0.copyload.i, %.sroa.627.0.copyload.i
  br i1 %.not.i, label %bb.c, label %"_ZN4pest12parser_state20ParserState$LT$R$GT$4rule17haa5b28bfc885e226E.exit"

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i64 %.sroa.526.0.copyload.i, 1
  store i64 %i.g, ptr %.sroa.526.0..sroa_idx.i, align 8, !alias.scope !7994
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !7994, !noundef !6 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !7994, !noundef !6 ; 12 uses
  %i.l = icmp ult i64 %i.k, 230584300921369396
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !7994, !noundef !6 ; 3 uses
  %i.o = icmp eq i64 %i.i, %i.n
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !7994, !noundef !6 ; 2 uses
  %i.r = icmp sgt i64 %i.q, -1
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !7994, !noundef !6 ; 2 uses
  %i.u = icmp sgt i64 %i.t, -1
  tail call void @llvm.assume(i1 %i.u)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.029.0.i = phi i64 [ %i.t, %bb.e ], [ 0, %bb.d ] ; 5 uses
  %.sroa.028.0.i = phi i64 [ %i.q, %bb.e ], [ 0, %bb.d ] ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.w = load i8, ptr %i.v, align 8, !range !27, !alias.scope !7994, !noundef !6
  %i.x = icmp eq i8 %i.w, 2
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 289
  %i.z = load i8, ptr %i.y, align 1, !range !27, !alias.scope !7994, !noundef !6
  %.not33.i = icmp eq i8 %i.z, 0
  br i1 %.not33.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.k, %bb.g, %bb.f
  %i.aa = phi i64 [ %i.k, %bb.f ], [ %i.aj, %bb.k ], [ %i.k, %bb.g ] ; 3 uses
  %i.ab = phi i64 [ %i.n, %bb.f ], [ %.pre.i, %bb.k ], [ %i.n, %bb.g ]
  %i.ac = icmp eq i64 %i.ab, %i.i
  br i1 %i.ac, label %bb.l, label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7995)
  %i.ae = load i64, ptr %i.ad, align 8, !range !21, !alias.scope !7996, !noalias !7997, !noundef !6
  %i.af = icmp eq i64 %i.k, %i.ae
end_hunk_0
