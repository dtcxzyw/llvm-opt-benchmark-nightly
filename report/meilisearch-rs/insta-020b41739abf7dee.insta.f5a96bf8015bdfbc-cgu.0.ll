Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/insta-020b41739abf7dee.insta.f5a96bf8015bdfbc-cgu.0?download=true
inline.NumInlined: 7723
inline.NumDeleted: 3104
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 145
begin_hunk_0_@"_ZN101_$LT$insta..redaction..SelectParser$u20$as$u20$pest..parser..Parser$LT$insta..redaction..Rule$GT$$GT$5parse17h461b7ffe1ae87f13E":bb.a
  %.val13.i81.i.prol = load i8, ptr %i.rs, align 1, !range !24, !noalias !353, !noundef !17
  %i.rt = icmp eq i8 %.val12.i80.i.prol, %.val13.i81.i.prol
  br i1 %i.rt, label %.lr.ph.i77.i.prol.loopexit.unr-lcssa, label %bb.gf

bb.gf:                                            ; preds = %.lr.ph.i77.i.prol
  store i8 %.val12.i80.i.prol, ptr %i.rr, align 1, !noalias !353
  %i.ru = add i64 %.sroa.0.023.i69.i, 1
  br label %.lr.ph.i77.i.prol.loopexit.unr-lcssa

.lr.ph.i77.i.prol.loopexit.unr-lcssa:             ; preds = %bb.gf, %.lr.ph.i77.i.prol
  %.sroa.11.1.i82.i.prol = phi i64 [ %i.ru, %bb.gf ], [ %.sroa.0.023.i69.i, %.lr.ph.i77.i.prol ] ; 2 uses
  %.sroa.5.0.i83.i.prol = add nuw i64 %.sroa.0.023.i69.i, 2
  br label %.lr.ph.i77.i.prol.loopexit

.lr.ph.i77.i.prol.loopexit:                       ; preds = %.lr.ph.i77.i.prol.loopexit.unr-lcssa, %.lr.ph.i77.i.preheader
  %.sroa.11.1.i82.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i77.i.preheader ], [ %.sroa.11.1.i82.i.prol, %.lr.ph.i77.i.prol.loopexit.unr-lcssa ]
  %.sroa.5.026.i78.i.unr = phi i64 [ %.sroa.5.024.i74.i, %.lr.ph.i77.i.preheader ], [ %.sroa.5.0.i83.i.prol, %.lr.ph.i77.i.prol.loopexit.unr-lcssa ]
  %.sroa.11.025.i79.i.unr = phi i64 [ %.sroa.0.023.i69.i, %.lr.ph.i77.i.preheader ], [ %.sroa.11.1.i82.i.prol, %.lr.ph.i77.i.prol.loopexit.unr-lcssa ]
  %i.rv = icmp eq i64 %i.rp, %indvar72
  br i1 %i.rv, label %._crit_edge.i75.i, label %.lr.ph.i77.i

bb.gg:                                            ; preds = %bb.ge
  %.not.i72.i = icmp eq i64 %.sroa.5.024.i74.i, %.pr81.i
  %indvar.next73 = add i64 %indvar72, 1
  br i1 %.not.i72.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17h7f203e9018b33cf8E.exit85.i", label %bb.ge

._crit_edge.i75.i:                                ; preds = %.lr.ph.i77.i.prol.loopexit, %bb.gj, %.preheader.i73.i
  %.sroa.11.0.lcssa.i76.i = phi i64 [ %.sroa.0.023.i69.i, %.preheader.i73.i ], [ %.sroa.11.1.i82.i.lcssa.unr, %.lr.ph.i77.i.prol.loopexit ], [ %.sroa.11.1.i82.i.1, %bb.gj ]
  store i64 %.sroa.11.0.lcssa.i76.i, ptr %i.qx, align 8, !alias.scope !352, !noalias !285
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17h7f203e9018b33cf8E.exit85.i"

.lr.ph.i77.i:                                     ; preds = %.lr.ph.i77.i.prol.loopexit, %bb.gj
  %.sroa.5.026.i78.i = phi i64 [ %.sroa.5.0.i83.i.1, %bb.gj ], [ %.sroa.5.026.i78.i.unr, %.lr.ph.i77.i.prol.loopexit ] ; 3 uses
  %.sroa.11.025.i79.i = phi i64 [ %.sroa.11.1.i82.i.1, %bb.gj ], [ %.sroa.11.025.i79.i.unr, %.lr.ph.i77.i.prol.loopexit ] ; 3 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rj, i64 %.sroa.5.026.i78.i
  %i.rx = getelementptr i8, ptr %i.rj, i64 %.sroa.11.025.i79.i ; 2 uses
  %i.ry = getelementptr i8, ptr %i.rx, i64 -1
  %.val12.i80.i = load i8, ptr %i.rw, align 1, !range !24, !noalias !353, !noundef !17 ; 2 uses
  %.val13.i81.i = load i8, ptr %i.ry, align 1, !range !24, !noalias !353, !noundef !17
  %i.rz = icmp eq i8 %.val12.i80.i, %.val13.i81.i
  br i1 %i.rz, label %.lr.ph.i77.i.1, label %bb.gh

bb.gh:                                            ; preds = %.lr.ph.i77.i
  store i8 %.val12.i80.i, ptr %i.rx, align 1, !noalias !353
  %i.sa = add i64 %.sroa.11.025.i79.i, 1
  br label %.lr.ph.i77.i.1

.lr.ph.i77.i.1:                                   ; preds = %bb.gh, %.lr.ph.i77.i
  %.sroa.11.1.i82.i = phi i64 [ %i.sa, %bb.gh ], [ %.sroa.11.025.i79.i, %.lr.ph.i77.i ] ; 3 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rj, i64 %.sroa.5.026.i78.i
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 1
  %i.sd = getelementptr i8, ptr %i.rj, i64 %.sroa.11.1.i82.i ; 2 uses
  %i.se = getelementptr i8, ptr %i.sd, i64 -1
  %.val12.i80.i.1 = load i8, ptr %i.sc, align 1, !range !24, !noalias !353, !noundef !17 ; 2 uses
  %.val13.i81.i.1 = load i8, ptr %i.se, align 1, !range !24, !noalias !353, !noundef !17
  %i.sf = icmp eq i8 %.val12.i80.i.1, %.val13.i81.i.1
  br i1 %i.sf, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %.lr.ph.i77.i.1
  store i8 %.val12.i80.i.1, ptr %i.sd, align 1, !noalias !353
  %i.sg = add i64 %.sroa.11.1.i82.i, 1
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %.lr.ph.i77.i.1
  %.sroa.11.1.i82.i.1 = phi i64 [ %i.sg, %bb.gi ], [ %.sroa.11.1.i82.i, %.lr.ph.i77.i.1 ] ; 2 uses
  %.sroa.5.0.i83.i.1 = add nuw nsw i64 %.sroa.5.026.i78.i, 2 ; 2 uses
  %exitcond.not.i84.i.1 = icmp eq i64 %.sroa.5.0.i83.i.1, %.pr81.i
  br i1 %exitcond.not.i84.i.1, label %._crit_edge.i75.i, label %.lr.ph.i77.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17h7f203e9018b33cf8E.exit85.i": ; preds = %bb.gg, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17h7f203e9018b33cf8E.exit.i", %._crit_edge.i75.i, %_ZN5alloc5slice11stable_sort17h602dcb7a4568849fE.exit68.i
  %.val32.i = load ptr, ptr %i.pg, align 8, !noalias !285, !nonnull !17, !noundef !17
  %.val33.i = load i64, ptr %i.pi, align 8, !noalias !285, !noundef !17 ; 9 uses
  %i.sh = icmp slt i64 %.val33.i, 0
  br i1 %i.sh, label %.invoke.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !15

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17h7f203e9018b33cf8E.exit85.i"
  %i.si = icmp eq i64 %.val33.i, 0                ; 2 uses
  br i1 %i.si, label %bb.gk, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !354
  %i.sj = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val33.i, i64 noundef range(i64 1, 17) 1) #51, !noalias !354 ; 2 uses
  %i.sk = icmp eq ptr %i.sj, null
  br i1 %i.sk, label %.invoke.i, label %bb.gk

.invoke.i:                                        ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17h7f203e9018b33cf8E.exit85.i", %bb.fr
  %i.sl = phi i64 [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17h7f203e9018b33cf8E.exit85.i" ], [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i" ], [ 1, %bb.fr ]
  %i.sm = phi i64 [ %.val33.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17h7f203e9018b33cf8E.exit85.i" ], [ %.val33.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i" ], [ 18, %bb.fr ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.sl, i64 %i.sm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @927) #54
          to label %.cont.i unwind label %bb.fs, !noalias !285

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.gk:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.sj, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i" ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 1 %.val32.i, i64 %.val33.i, i1 false), !noalias !355
  %.val30.i = load ptr, ptr %i.qv, align 8, !noalias !285, !nonnull !17, !noundef !17
  %.val31.i = load i64, ptr %i.qx, align 8, !noalias !285, !noundef !17 ; 7 uses
  %i.sn = icmp slt i64 %.val31.i, 0
  br i1 %i.sn, label %bb.gl, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i87.i, !prof !15

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i87.i: ; preds = %bb.gk
  %i.so = icmp eq i64 %.val31.i, 0
  br i1 %i.so, label %bb.go, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i88.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i88.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i87.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !356
  %i.sp = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val31.i, i64 noundef range(i64 1, 17) 1) #51, !noalias !356 ; 2 uses
  %i.sq = icmp eq ptr %i.sp, null
  br i1 %i.sq, label %bb.gl, label %bb.go

bb.gl:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i88.i", %bb.gk
  %.sroa.4.0.ph.i.i.i92.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i88.i" ], [ 0, %bb.gk ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i92.i, i64 %.val31.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @927) #54
          to label %.noexc93.i unwind label %bb.gm, !noalias !285

.noexc93.i:                                       ; preds = %bb.gl
  unreachable

bb.gm:                                            ; preds = %bb.gl
  %i.sr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.si, label %"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$insta..redaction..Rule$GT$$GT$17h74edf76b37db10c2E.exit97.i", label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i, i64 noundef %.val33.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !357
  br label %"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$insta..redaction..Rule$GT$$GT$17h74edf76b37db10c2E.exit97.i"

bb.go:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i88.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i87.i
  %.sroa.10.0.i.i.i89.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i87.i ], [ %i.sp, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i88.i" ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i89.i, ptr nonnull readonly align 1 %.val30.i, i64 %.val31.i, i1 false), !noalias !358
  br label %bb.gp

bb.gp:                                            ; preds = %bb.gq, %bb.go
  %.sroa.6.sroa.7.sroa.6.sroa.5.0.i = phi i64 [ %.val31.i, %bb.go ], [ undef, %bb.gq ] ; 2 uses
  %.sroa.6.sroa.7.sroa.6.sroa.0.0.i = phi ptr [ %.sroa.10.0.i.i.i89.i, %bb.go ], [ undef, %bb.gq ] ; 3 uses
  %.sroa.6.sroa.7.sroa.0.0.i = phi i64 [ %.val31.i, %bb.go ], [ 18, %bb.gq ] ; 4 uses
  %.sroa.6.sroa.6.0.i = phi i64 [ %.val33.i, %bb.go ], [ %i.sw, %bb.gq ] ; 3 uses
  %.sroa.6.sroa.0.0.i = phi ptr [ %.sroa.10.0.i.i.i.i, %bb.go ], [ inttoptr (i64 18 to ptr), %bb.gq ] ; 4 uses
  %.sroa.03.0.i = phi i64 [ %.val33.i, %bb.go ], [ -9223372036854775808, %bb.gq ] ; 4 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.oc, i64 248
  %i.st = load i8, ptr %i.ss, align 8, !range !21, !noalias !285, !noundef !17
  %i.su = trunc nuw i8 %i.st to i1
  %i.sv = getelementptr inbounds nuw i8, ptr %i.oc, i64 280 ; 2 uses
  br i1 %i.su, label %bb.gs, label %bb.gr

bb.gq:                                            ; preds = %bb.fr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.ps, ptr noundef nonnull align 1 dereferenceable(18) @139, i64 18, i1 false), !noalias !359
  %i.sw = ptrtoint ptr %i.ps to i64
  br label %bb.gp

bb.gr:                                            ; preds = %bb.gp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !334
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !334
  store i64 %.sroa.03.0.i, ptr %i.l, align 8, !noalias !334
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %.sroa.6.sroa.0.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !334
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %.sroa.6.sroa.6.0.i, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.i, align 8, !noalias !334
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %.sroa.6.sroa.7.sroa.0.0.i, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx.i, align 8, !noalias !334
  %.sroa.6.sroa.7.sroa.6.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %.sroa.6.sroa.7.sroa.6.sroa.0.0.i, ptr %.sroa.6.sroa.7.sroa.6.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !334
  %.sroa.6.sroa.7.sroa.6.sroa.5.0..sroa.6.sroa.7.sroa.6.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i64 %.sroa.6.sroa.7.sroa.6.sroa.5.0.i, ptr %.sroa.6.sroa.7.sroa.6.sroa.5.0..sroa.6.sroa.7.sroa.6.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !334
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !334
  %i.sx = load i64, ptr %i.sv, align 8, !noalias !285, !noundef !17
  store ptr %2, ptr %i.k, align 8, !noalias !334
  %i.sy = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %3, ptr %i.sy, align 8, !noalias !334
  %i.sz = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.sx, ptr %i.sz, align 8, !noalias !334
  invoke fastcc void @"_ZN4pest5error14Error$LT$R$GT$12new_from_pos17he600dd2395617165E"(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.m, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.l, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.k)
          to label %bb.ha unwind label %bb.fs, !noalias !285

bb.gs:                                            ; preds = %bb.gp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !334
  store i64 %.sroa.03.0.i, ptr %i.p, align 8, !noalias !334
  %.sroa.6.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %.sroa.6.sroa.0.0.i, ptr %.sroa.6.0..sroa_idx6.i, align 8, !noalias !334
  store i64 %.sroa.6.sroa.6.0.i, ptr %.sink9.i.sroa.gep, align 8, !noalias !334
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx6.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 %.sroa.6.sroa.7.sroa.0.0.i, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx6.sroa_idx.i, align 8, !noalias !334
  store ptr %.sroa.6.sroa.7.sroa.6.sroa.0.0.i, ptr %.sink9.i.sroa.gep4, align 8, !noalias !334
  %.sroa.6.sroa.7.sroa.6.sroa.5.0..sroa.6.sroa.7.sroa.6.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx6.sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i64 %.sroa.6.sroa.7.sroa.6.sroa.5.0.i, ptr %.sroa.6.sroa.7.sroa.6.sroa.5.0..sroa.6.sroa.7.sroa.6.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx6.sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !334
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !334
  %i.ta = load i64, ptr %i.sv, align 8, !noalias !285, !noundef !17
  store ptr %2, ptr %i.o, align 8, !noalias !334
  %i.tb = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %3, ptr %i.tb, align 8, !noalias !334
  %i.tc = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.ta, ptr %i.tc, align 8, !noalias !334
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !334
  call void @llvm.experimental.noalias.scope.decl(metadata !360)
  call void @llvm.experimental.noalias.scope.decl(metadata !361)
  %i.td = getelementptr inbounds nuw i8, ptr %i.oc, i64 176
  %.val.i98.i = load ptr, ptr %i.td, align 8, !alias.scope !361, !noalias !362, !nonnull !17, !noundef !17 ; 11 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.oc, i64 184
  %.val2.i.i = load i64, ptr %i.te, align 8, !alias.scope !361, !noalias !362, !noundef !17 ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !363)
  %i.tf = shl i64 %.val2.i.i, 1                   ; 5 uses
  %i.tg = or i64 %i.tf, %.val2.i.i
  %or.cond.i.i.i.not.i.i.i.i = icmp sgt i64 %i.tg, -1
  %i.th = ptrtoint ptr %.sroa.6.sroa.0.0.i to i64
  %i.ti = inttoptr i64 %.sroa.6.sroa.6.0.i to ptr
  br i1 %or.cond.i.i.i.not.i.i.i.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, label %bb.gt, !prof !25

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.gs
  %i.tj = icmp eq i64 %i.tf, 0
  br i1 %i.tj, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.thread.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.thread.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %i.tk = icmp eq i64 %.val2.i.i, 0
  call void @llvm.assume(i1 %i.tk)
  br label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7f57ba00103f2100E.exit.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !364
  %i.tl = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.tf, i64 noundef range(i64 1, 17) 1) #51, !noalias !364 ; 5 uses
  %i.tm = icmp eq ptr %i.tl, null
  br i1 %i.tm, label %bb.gt, label %.lr.ph.i.i.i.i.preheader.a

bb.gt:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i", %bb.gs
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i" ], [ 0, %bb.gs ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.tf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @928) #54
          to label %.noexc102.i unwind label %bb.hc, !noalias !285

.noexc102.i:                                      ; preds = %bb.gt
  unreachable

.lr.ph.i.i.i.i.preheader.a:                       ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i"
  %4 = getelementptr inbounds nuw [2 x i8], ptr %.val.i98.i, i64 %.val2.i.i
  %i.tn = and i64 %.val2.i.i, 9223372036854775807
  %i.to = add i64 %.val2.i.i, -1
  %i.tp = call i64 @llvm.umin.i64(i64 %i.tn, i64 %i.to) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.tp, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader66, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader.a
  %i.tq = add nuw i64 %i.tp, 1                    ; 2 uses
  %i.tr = and i64 %i.tq, 7                        ; 2 uses
  %i.ts = icmp eq i64 %i.tr, 0
  %i.tt = select i1 %i.ts, i64 8, i64 %i.tr
  %n.vec = sub i64 %i.tq, %i.tt                   ; 4 uses
  %i.tu = shl i64 %n.vec, 1
  %i.tv = getelementptr i8, ptr %.val.i98.i, i64 %i.tu
  %i.tw = sub i64 %.val2.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.tx = shl i64 %index, 1                       ; 8 uses
  %next.gep = getelementptr i8, ptr %.val.i98.i, i64 %i.tx ; 2 uses
  %i.ty = getelementptr i8, ptr %.val.i98.i, i64 %i.tx ; 2 uses
  %next.gep57 = getelementptr i8, ptr %i.ty, i64 2
  %i.tz = getelementptr i8, ptr %.val.i98.i, i64 %i.tx ; 2 uses
  %next.gep58 = getelementptr i8, ptr %i.tz, i64 4
  %i.ua = getelementptr i8, ptr %.val.i98.i, i64 %i.tx ; 2 uses
  %next.gep59 = getelementptr i8, ptr %i.ua, i64 6
  %i.ub = getelementptr i8, ptr %.val.i98.i, i64 %i.tx ; 2 uses
  %next.gep60 = getelementptr i8, ptr %i.ub, i64 8
  %i.uc = getelementptr i8, ptr %.val.i98.i, i64 %i.tx ; 2 uses
  %next.gep61 = getelementptr i8, ptr %i.uc, i64 10
  %i.ud = getelementptr i8, ptr %.val.i98.i, i64 %i.tx ; 2 uses
  %next.gep62 = getelementptr i8, ptr %i.ud, i64 12
  %i.ue = getelementptr i8, ptr %.val.i98.i, i64 %i.tx ; 2 uses
  %next.gep63 = getelementptr i8, ptr %i.ue, i64 14
  %i.uf = load i8, ptr %next.gep, align 1, !range !26, !alias.scope !363, !noalias !365, !noundef !17
  %i.ug = load i8, ptr %next.gep57, align 1, !range !26, !alias.scope !363, !noalias !365, !noundef !17
  %i.uh = load i8, ptr %next.gep58, align 1, !range !26, !alias.scope !363, !noalias !365, !noundef !17
  %i.ui = load i8, ptr %next.gep59, align 1, !range !26, !alias.scope !363, !noalias !365, !noundef !17
  %i.uj = load i8, ptr %next.gep60, align 1, !range !26, !alias.scope !363, !noalias !365, !noundef !17
  %i.uk = load i8, ptr %next.gep61, align 1, !range !26, !alias.scope !363, !noalias !365, !noundef !17
  %i.ul = load i8, ptr %next.gep62, align 1, !range !26, !alias.scope !363, !noalias !365, !noundef !17
  %i.um = load i8, ptr %next.gep63, align 1, !range !26, !alias.scope !363, !noalias !365, !noundef !17
  %i.un = insertelement <8 x i8> poison, i8 %i.uf, i64 0
  %i.uo = insertelement <8 x i8> %i.un, i8 %i.ug, i64 1
  %i.up = insertelement <8 x i8> %i.uo, i8 %i.uh, i64 2
  %i.uq = insertelement <8 x i8> %i.up, i8 %i.ui, i64 3
  %i.ur = insertelement <8 x i8> %i.uq, i8 %i.uj, i64 4
  %i.us = insertelement <8 x i8> %i.ur, i8 %i.uk, i64 5
  %i.ut = insertelement <8 x i8> %i.us, i8 %i.ul, i64 6
  %i.uu = insertelement <8 x i8> %i.ut, i8 %i.um, i64 7
  %i.uv = getelementptr i8, ptr %next.gep, i64 1
  %i.uw = getelementptr i8, ptr %i.ty, i64 3
  %i.ux = getelementptr i8, ptr %i.tz, i64 5
  %i.uy = getelementptr i8, ptr %i.ua, i64 7
  %i.uz = getelementptr i8, ptr %i.ub, i64 9
  %i.va = getelementptr i8, ptr %i.uc, i64 11
  %i.vb = getelementptr i8, ptr %i.ud, i64 13
  %i.vc = getelementptr i8, ptr %i.ue, i64 15
  %i.vd = load i8, ptr %i.uv, align 1, !alias.scope !363, !noalias !365
  %i.ve = load i8, ptr %i.uw, align 1, !alias.scope !363, !noalias !365
  %i.vf = load i8, ptr %i.ux, align 1, !alias.scope !363, !noalias !365
  %i.vg = load i8, ptr %i.uy, align 1, !alias.scope !363, !noalias !365
  %i.vh = load i8, ptr %i.uz, align 1, !alias.scope !363, !noalias !365
  %i.vi = load i8, ptr %i.va, align 1, !alias.scope !363, !noalias !365
  %i.vj = load i8, ptr %i.vb, align 1, !alias.scope !363, !noalias !365
  %i.vk = load i8, ptr %i.vc, align 1, !alias.scope !363, !noalias !365
  %i.vl = insertelement <8 x i8> poison, i8 %i.vd, i64 0
  %i.vm = insertelement <8 x i8> %i.vl, i8 %i.ve, i64 1
  %i.vn = insertelement <8 x i8> %i.vm, i8 %i.vf, i64 2
  %i.vo = insertelement <8 x i8> %i.vn, i8 %i.vg, i64 3
  %i.vp = insertelement <8 x i8> %i.vo, i8 %i.vh, i64 4
  %i.vq = insertelement <8 x i8> %i.vp, i8 %i.vi, i64 5
  %i.vr = insertelement <8 x i8> %i.vq, i8 %i.vj, i64 6
  %i.vs = insertelement <8 x i8> %i.vr, i8 %i.vk, i64 7
  %i.vt = getelementptr inbounds nuw [2 x i8], ptr %i.tl, i64 %index
  %interleaved.vec = shufflevector <8 x i8> %i.uu, <8 x i8> %i.vs, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.vt, align 1, !noalias !366
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.vu = icmp eq i64 %index.next, %n.vec
  br i1 %i.vu, label %.lr.ph.i.i.i.i.preheader66, label %vector.body, !llvm.loop !270

.lr.ph.i.i.i.i.preheader66:                       ; preds = %vector.body, %.lr.ph.i.i.i.i.preheader.a
  %.sroa.014.023.i.i.i.i.ph = phi ptr [ %.val.i98.i, %.lr.ph.i.i.i.i.preheader.a ], [ %i.tv, %vector.body ]
  %.sroa.7.022.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.a ], [ %n.vec, %vector.body ]
  %.sroa.10.021.i.i.i.i.ph = phi i64 [ %.val2.i.i, %.lr.ph.i.i.i.i.preheader.a ], [ %i.tw, %vector.body ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader66, %bb.gu
  %.sroa.014.023.i.i.i.i = phi ptr [ %i.vy, %bb.gu ], [ %.sroa.014.023.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader66 ] ; 4 uses
  %.sroa.7.022.i.i.i.i = phi i64 [ %i.vx, %bb.gu ], [ %.sroa.7.022.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader66 ] ; 2 uses
  %.sroa.10.021.i.i.i.i = phi i64 [ %i.vw, %bb.gu ], [ %.sroa.10.021.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader66 ]
  %i.vv = icmp eq ptr %.sroa.014.023.i.i.i.i, %4
  br i1 %i.vv, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7f57ba00103f2100E.exit.i.i", label %bb.gu

bb.gu:                                            ; preds = %.lr.ph.i.i.i.i
  %i.vw = add nsw i64 %.sroa.10.021.i.i.i.i, -1   ; 2 uses
  %i.vx = add nuw nsw i64 %.sroa.7.022.i.i.i.i, 1
  %i.vy = getelementptr inbounds nuw i8, ptr %.sroa.014.023.i.i.i.i, i64 2
  %.val.i.i.i.i = load i8, ptr %.sroa.014.023.i.i.i.i, align 1, !range !26, !alias.scope !363, !noalias !365, !noundef !17
  %i.vz = getelementptr i8, ptr %.sroa.014.023.i.i.i.i, i64 1
  %.val11.i.i.i.i = load i8, ptr %i.vz, align 1, !alias.scope !363, !noalias !365
  %i.wa = getelementptr inbounds nuw [2 x i8], ptr %i.tl, i64 %.sroa.7.022.i.i.i.i ; 2 uses
  store i8 %.val.i.i.i.i, ptr %i.wa, align 1, !noalias !366
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 1
  store i8 %.val11.i.i.i.i, ptr %i.wb, align 1, !noalias !366
  %i.wc = icmp eq i64 %i.vw, 0
  br i1 %i.wc, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7f57ba00103f2100E.exit.i.i", label %.lr.ph.i.i.i.i, !llvm.loop !271

"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7f57ba00103f2100E.exit.i.i": ; preds = %bb.gu, %.lr.ph.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.thread.i.i.i.i"
  %.sroa.10.0.i31.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.thread.i.i.i.i" ], [ %i.tl, %.lr.ph.i.i.i.i ], [ %i.tl, %bb.gu ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !367
  %i.wd = getelementptr inbounds nuw i8, ptr %i.oc, i64 200
  %.val5.i.i = load ptr, ptr %i.wd, align 8, !alias.scope !361, !noalias !362, !nonnull !17, !noundef !17
  %i.we = getelementptr inbounds nuw i8, ptr %i.oc, i64 208
  %.val6.i.i = load i64, ptr %i.we, align 8, !alias.scope !361, !noalias !362, !noundef !17
  invoke fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hed72057b100fbe83E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, ptr nonnull %.val5.i.i, i64 %.val6.i.i)
          to label %bb.gy unwind label %bb.gx, !noalias !368

bb.gv:                                            ; preds = %bb.gz, %bb.gx
  %.pn.i99.i = phi { ptr, i32 } [ %i.wj, %bb.gz ], [ %i.wg, %bb.gx ] ; 2 uses
  %i.wf = icmp eq i64 %.val2.i.i, 0
  br i1 %i.wf, label %bb.hh, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i31.i.i.i.i, i64 noundef %i.tf, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !369
  br label %bb.hh

bb.gx:                                            ; preds = %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7f57ba00103f2100E.exit.i.i"
  %i.wg = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

bb.gy:                                            ; preds = %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7f57ba00103f2100E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !367
  %i.wh = getelementptr inbounds nuw i8, ptr %i.oc, i64 224
  %.val3.i.i = load ptr, ptr %i.wh, align 8, !alias.scope !361, !noalias !362, !nonnull !17, !noundef !17
  %i.wi = getelementptr inbounds nuw i8, ptr %i.oc, i64 232
  %.val4.i.i = load i64, ptr %i.wi, align 8, !alias.scope !361, !noalias !362, !noundef !17
  invoke fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hed72057b100fbe83E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %.val3.i.i, i64 %.val4.i.i)
          to label %bb.hd unwind label %bb.gz, !noalias !368

bb.gz:                                            ; preds = %bb.gy
  %i.wj = landingpad { ptr, i32 }
          cleanup
  call void @"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$pest..parser_state..ParsingToken$GT$$GT$17h4123408fd8756f23E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #55, !noalias !368
  br label %bb.gv

bb.ha:                                            ; preds = %bb.gr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !334
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %i.m, i64 120, i1 false), !noalias !338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !334
  br label %bb.hb

bb.hb:                                            ; preds = %bb.hg, %bb.ha
  call fastcc void @"_ZN4core3ptr107drop_in_place$LT$alloc..boxed..Box$LT$pest..parser_state..ParserState$LT$insta..redaction..Rule$GT$$GT$$GT$17hf5d7cfb0aa6de2eeE"(ptr nonnull %i.oc), !noalias !285
  br label %_ZN4pest12parser_state5state17h7719fb09e6a92622E.exit

bb.hc:                                            ; preds = %bb.gt
  %i.wk = landingpad { ptr, i32 }
          cleanup
  br label %bb.hh

.body103.i:                                       ; preds = %bb.hd
  %i.wl = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr84drop_in_place$LT$pest..parser_state..ParseAttempts$LT$insta..redaction..Rule$GT$$GT$17h143afa2829ebd929E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.n) #55, !noalias !370
  br label %"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$insta..redaction..Rule$GT$$GT$17h74edf76b37db10c2E.exit97.i"

bb.hd:                                            ; preds = %bb.gy
  %i.wm = getelementptr inbounds nuw i8, ptr %i.oc, i64 240
  %i.wn = load i64, ptr %i.wm, align 8, !alias.scope !361, !noalias !362, !noundef !17
  %i.wo = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  store i8 1, ptr %i.wo, align 8, !alias.scope !360, !noalias !371
  store i64 %.val2.i.i, ptr %i.n, align 8, !alias.scope !360, !noalias !371
  %.sroa.5.0..sroa_idx.i100.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.sroa.10.0.i31.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i100.i, align 8, !alias.scope !360, !noalias !371
  %.sroa.7.0..sroa_idx.i101.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.val2.i.i, ptr %.sroa.7.0..sroa_idx.i101.i, align 8, !alias.scope !360, !noalias !371
  %i.wp = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wp, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !371
  %i.wq = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wq, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !371
  %i.wr = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  store i64 %i.wn, ptr %i.wr, align 8, !alias.scope !360, !noalias !371
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !372
  invoke fastcc void @"_ZN4pest5error14Error$LT$R$GT$12new_from_pos17he600dd2395617165E"(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.o)
          to label %bb.he unwind label %.body103.i, !noalias !373

bb.he:                                            ; preds = %bb.hd
  %i.ws = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.wt = load ptr, ptr %i.ws, align 8, !noalias !372, !nonnull !17, !align !29, !noundef !17
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 72 ; 3 uses
  %i.wv = load i64, ptr %i.wu, align 8, !range !30, !alias.scope !374, !noalias !375, !noundef !17
  %i.ww = icmp eq i64 %i.wv, -9223372036854775808
  br i1 %i.ww, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  call fastcc void @"_ZN4core3ptr84drop_in_place$LT$pest..parser_state..ParseAttempts$LT$insta..redaction..Rule$GT$$GT$17h143afa2829ebd929E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.wu), !noalias !375
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %bb.he
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.wu, ptr noundef nonnull readonly align 8 dereferenceable(88) %i.n, i64 88, i1 false), !noalias !370
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %i.b, i64 120, i1 false), !noalias !338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !334
  br label %bb.hb

bb.hh:                                            ; preds = %bb.hc, %bb.gw, %bb.gv
  %eh.lpad-body104.ph.i = phi { ptr, i32 } [ %i.wk, %bb.hc ], [ %.pn.i99.i, %bb.gw ], [ %.pn.i99.i, %bb.gv ] ; 2 uses
  switch i64 %.sroa.03.0.i, label %bb.hi [
    i64 -9223372036854775808, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.sink.split.i"
    i64 0, label %"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$insta..redaction..Rule$GT$$GT$17h74edf76b37db10c2E.exit.i3"
  ]

bb.hi:                                            ; preds = %bb.hh
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.sroa.0.0.i, i64 noundef %.sroa.03.0.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !376
  br label %"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$insta..redaction..Rule$GT$$GT$17h74edf76b37db10c2E.exit.i3"

"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$insta..redaction..Rule$GT$$GT$17h74edf76b37db10c2E.exit.i3": ; preds = %bb.hh, %bb.hi
  %i.wx = icmp eq i64 %.sroa.6.sroa.7.sroa.0.0.i, 0
  br i1 %i.wx, label %"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$insta..redaction..Rule$GT$$GT$17h74edf76b37db10c2E.exit97.i", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.sink.split.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.sink.split.i": ; preds = %bb.hh, %"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$insta..redaction..Rule$GT$$GT$17h74edf76b37db10c2E.exit.i3"
  %.val1.i7.i = phi ptr [ %.sroa.6.sroa.7.sroa.6.sroa.0.0.i, %"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$insta..redaction..Rule$GT$$GT$17h74edf76b37db10c2E.exit.i3" ], [ %i.ti, %bb.hh ]
  %.val.i6.sink.i = phi i64 [ %.sroa.6.sroa.7.sroa.0.0.i, %"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$insta..redaction..Rule$GT$$GT$17h74edf76b37db10c2E.exit.i3" ], [ %i.th, %bb.hh ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i7.i, i64 noundef %.val.i6.sink.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !377
  br label %"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$insta..redaction..Rule$GT$$GT$17h74edf76b37db10c2E.exit97.i"

_ZN4pest12parser_state5state17h7719fb09e6a92622E.exit: ; preds = %"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$insta..redaction..Rule$GT$$GT$17h74edf76b37db10c2E.exit42.i", %bb.hb
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @"_ZN101_$LT$insta..redaction..SelectParser$u20$as$u20$pest..parser..Parser$LT$insta..redaction..Rule$GT$$GT$5parse5rules7visible10WHITESPACE28_$u7b$$u7b$closure$u7d$$u7d$17h8d4f0db533f076ebE"(ptr noalias noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !386)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !386, !noundef !17 ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !387)
  %i.e = load ptr, ptr %i.b, align 8, !alias.scope !388, !nonnull !17, !align !31, !noundef !17 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !388, !noundef !17 ; 8 uses
  %i.h = icmp eq i64 %i.d, 0
  br i1 %i.h, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp ult i64 %i.d, %i.g
  br i1 %.not.i.i.i, label %bb.c, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.b
  %i.i = icmp eq i64 %i.d, %i.g
  br i1 %i.i, label %bb.d, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !389, !noalias !388, !noundef !17
  %i.l = icmp sgt i8 %i.k, -65
  br i1 %i.l, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c, %.split.i.i.i, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d ; 4 uses
  %i.n = icmp samesign eq i64 %i.d, %i.g
  br i1 %i.n, label %_ZN4pest8position8Position13match_char_by17hb76620fadee40675E.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load i8, ptr %i.m, align 1, !noalias !390, !noundef !17 ; 5 uses
  %i.p = icmp sgt i8 %i.o, -1
  br i1 %i.p, label %bb.f, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i": ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.r = and i8 %i.o, 31
  %i.s = zext nneg i8 %i.r to i32                 ; 3 uses
  %i.t = add nuw nsw i64 %i.d, 1
  %i.u = icmp samesign ne i64 %i.t, %i.g
  tail call void @llvm.assume(i1 %i.u)
  %i.v = load i8, ptr %i.q, align 1, !noalias !390, !noundef !17
  %i.w = shl nuw nsw i32 %i.s, 6
  %i.x = and i8 %i.v, 63
  %i.y = zext nneg i8 %i.x to i32                 ; 2 uses
  %i.z = or disjoint i32 %i.w, %i.y
  %i.aa = icmp samesign ugt i8 %i.o, -33
  br i1 %i.aa, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i", label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ab = zext nneg i8 %i.o to i32
  br label %bb.h

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i"
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.ad = add nuw nsw i64 %i.d, 2
  %i.ae = icmp samesign ne i64 %i.ad, %i.g
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = load i8, ptr %i.ac, align 1, !noalias !390, !noundef !17
  %i.ag = shl nuw nsw i32 %i.y, 6
  %i.ah = and i8 %i.af, 63
  %i.ai = zext nneg i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.ag, %i.ai            ; 2 uses
  %i.ak = shl nuw nsw i32 %i.s, 12
  %i.al = or disjoint i32 %i.aj, %i.ak
  %i.am = icmp samesign ugt i8 %i.o, -17
  br i1 %i.am, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit16.i.i.i", label %bb.h
end_hunk_0
begin_hunk_1_@"_ZN62_$LT$insta..content..Content$u20$as$u20$core..clone..Clone$GT$5clone17hb85a41ce83ea0756E":bb.a
          to label %"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9976559853fb435cE.exit" unwind label %bb.v, !inline_history !19998

common.resume.sink.split:                         ; preds = %bb.v, %bb.ab, %bb.ae
  %.sink = phi ptr [ %i.ar, %bb.ae ], [ %i.z, %bb.ab ], [ %i.p, %bb.v ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.av, %bb.ae ], [ %i.ad, %bb.ab ], [ %i.t, %bb.v ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef 64, i64 noundef 16) #51, !noalias !17
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.v:                                             ; preds = %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h9785953e2ccd7338E.exit"
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9976559853fb435cE.exit": ; preds = %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h9785953e2ccd7338E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.p, ptr noundef nonnull align 16 dereferenceable(64) %i.e, i64 64, i1 false), !noalias !20045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20045
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.u, align 8
  store i8 17, ptr %0, align 16
  br label %bb.as

bb.w:                                             ; preds = %bb.a
  store i8 18, ptr %0, align 16
  br label %bb.as

bb.x:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(64) %1, i64 64, i1 false)
  br label %bb.as

bb.y:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(64) %1, i64 64, i1 false)
  br label %bb.as

bb.z:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !17, !align !31, !noundef !17
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i64, ptr %i.x, align 16, !noundef !17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20046)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !20046
  %i.z = tail call noalias noundef align 16 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 16) #51, !noalias !20046 ; 4 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.aa, label %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h9785953e2ccd7338E.exit7", !prof !22

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 16, i64 noundef 64) #54, !noalias !20046
  unreachable

"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h9785953e2ccd7338E.exit7": ; preds = %bb.z
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !20046, !nonnull !17, !align !50, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !20047
  invoke fastcc void @"_ZN62_$LT$insta..content..Content$u20$as$u20$core..clone..Clone$GT$5clone17hb85a41ce83ea0756E"(ptr noalias noundef align 16 captures(address) dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.ac)
          to label %"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9976559853fb435cE.exit3" unwind label %bb.ab, !inline_history !19998

bb.ab:                                            ; preds = %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h9785953e2ccd7338E.exit7"
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9976559853fb435cE.exit3": ; preds = %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h9785953e2ccd7338E.exit7"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.z, ptr noundef nonnull align 16 dereferenceable(64) %i.d, i64 64, i1 false), !noalias !20047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20047
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.y, ptr %i.af, align 16
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.z, ptr %i.ag, align 8
  store i8 21, ptr %0, align 16
  br label %bb.as

bb.ac:                                            ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !17, !align !31, !noundef !17
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = load i64, ptr %i.aj, align 16, !noundef !17
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.am = load i32, ptr %i.al, align 4, !noundef !17
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !17, !align !31, !noundef !17
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aq = load i64, ptr %i.ap, align 16, !noundef !17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20048)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !20048
  %i.ar = tail call noalias noundef align 16 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 16) #51, !noalias !20048 ; 4 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.ad, label %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h9785953e2ccd7338E.exit9", !prof !22

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 16, i64 noundef 64) #54, !noalias !20048
  unreachable

"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h9785953e2ccd7338E.exit9": ; preds = %bb.ac
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !20048, !nonnull !17, !align !50, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20049
  invoke fastcc void @"_ZN62_$LT$insta..content..Content$u20$as$u20$core..clone..Clone$GT$5clone17hb85a41ce83ea0756E"(ptr noalias noundef align 16 captures(address) dereferenceable(64) %i.c, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.au)
          to label %"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9976559853fb435cE.exit5" unwind label %bb.ae, !inline_history !19998

bb.ae:                                            ; preds = %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h9785953e2ccd7338E.exit9"
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9976559853fb435cE.exit5": ; preds = %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h9785953e2ccd7338E.exit9"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ar, ptr noundef nonnull align 16 dereferenceable(64) %i.c, i64 64, i1 false), !noalias !20049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20049
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ai, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ak, ptr %i.ax, align 16
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.am, ptr %i.ay, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ao, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.aq, ptr %i.ba, align 16
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ar, ptr %i.bb, align 8
  store i8 22, ptr %0, align 16
  br label %bb.as

bb.af:                                            ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load ptr, ptr %i.bd, align 16, !alias.scope !20050, !noalias !20051, !nonnull !17, !noundef !17
  %i.bf = load i64, ptr %i.bc, align 8, !alias.scope !20050, !noalias !20051, !noundef !17
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h2e4400eab0af5ce6E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bg, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.be, i64 noundef %i.bf)
  store i8 23, ptr %0, align 16
  br label %bb.as

bb.ag:                                            ; preds = %bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load ptr, ptr %i.bi, align 16, !alias.scope !20052, !noalias !20053, !nonnull !17, !noundef !17
  %i.bk = load i64, ptr %i.bh, align 8, !alias.scope !20052, !noalias !20053, !noundef !17
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h2e4400eab0af5ce6E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bl, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.bj, i64 noundef %i.bk)
  store i8 24, ptr %0, align 16
  br label %bb.as

bb.ah:                                            ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !nonnull !17, !align !31, !noundef !17
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bp = load i64, ptr %i.bo, align 16, !noundef !17
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bs = load ptr, ptr %i.br, align 16, !alias.scope !20054, !noalias !20055, !nonnull !17, !noundef !17
  %i.bt = load i64, ptr %i.bq, align 8, !alias.scope !20054, !noalias !20055, !noundef !17
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h2e4400eab0af5ce6E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bu, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.bs, i64 noundef %i.bt)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bn, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bp, ptr %i.bw, align 16
  store i8 25, ptr %0, align 16
  br label %bb.as

bb.ai:                                            ; preds = %bb.a
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !17, !align !31, !noundef !17
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ca = load i64, ptr %i.bz, align 16, !noundef !17
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !noundef !17
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !17, !align !31, !noundef !17
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cg = load i64, ptr %i.cf, align 16, !noundef !17
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cj = load ptr, ptr %i.ci, align 16, !alias.scope !20056, !noalias !20057, !nonnull !17, !noundef !17
  %i.ck = load i64, ptr %i.ch, align 8, !alias.scope !20056, !noalias !20057, !noundef !17
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call fastcc void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h2e4400eab0af5ce6E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.cl, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.cj, i64 noundef %i.ck)
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.by, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ca, ptr %i.cn, align 16
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.cc, ptr %i.co, align 4
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ce, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.cg, ptr %i.cq, align 16
  store i8 26, ptr %0, align 16
  br label %bb.as

bb.aj:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20058)
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ct = load ptr, ptr %i.cs, align 16, !alias.scope !20058, !noalias !20059, !nonnull !17, !noundef !17 ; 2 uses
  %i.cu = load i64, ptr %i.cr, align 8, !alias.scope !20058, !noalias !20059, !noundef !17 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20060
  %i.cv = shl i64 %i.cu, 7                        ; 4 uses
  %i.cw = icmp ugt i64 %i.cu, 144115188075855871
  %i.cx = icmp ugt i64 %i.cv, 9223372036854775792
  %or.cond.i.i.i.i = or i1 %i.cw, %i.cx
  br i1 %or.cond.i.i.i.i, label %bb.ak, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !15

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.aj
  %i.cy = icmp eq i64 %i.cv, 0
  br i1 %i.cy, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.i.thread", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.i.thread": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %i.cz = icmp eq i64 %i.cu, 0
  tail call void @llvm.assume(i1 %i.cz), !noalias !20058
  store i64 0, ptr %i.b, align 8, !noalias !20060
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 16 to ptr), ptr %i.da, align 8, !noalias !20060
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hda774eb01b0ad5a1E.exit"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !20061, !inline_history !20029
  %i.dc = tail call noundef align 16 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.cv, i64 noundef range(i64 1, 17) 16) #51, !noalias !20061, !inline_history !20029 ; 3 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.ak, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.i"

bb.ak:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %bb.aj
  %.sroa.4.0.ph.i.i = phi i64 [ 16, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ], [ 0, %bb.aj ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.cv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @928) #54, !noalias !20060, !inline_history !20029
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"
  store i64 %i.cu, ptr %i.b, align 8, !noalias !20060
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.dc, ptr %i.de, align 8, !noalias !20060
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.dg = getelementptr inbounds nuw [128 x i8], ptr %i.ct, i64 %i.cu
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  br label %bb.al

bb.al:                                            ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.i", %_ZN4core5clone5Clone5clone17he9611f6e5f08a33aE.exit.i
  %.sroa.016.031 = phi ptr [ %i.ct, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.i" ], [ %i.dj, %_ZN4core5clone5Clone5clone17he9611f6e5f08a33aE.exit.i ] ; 4 uses
  %.sroa.7.030 = phi i64 [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.i" ], [ %i.dk, %_ZN4core5clone5Clone5clone17he9611f6e5f08a33aE.exit.i ] ; 3 uses
  %.sroa.10.029 = phi i64 [ %i.cu, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.i" ], [ %i.dh, %_ZN4core5clone5Clone5clone17he9611f6e5f08a33aE.exit.i ]
  %i.dh = add nsw i64 %.sroa.10.029, -1           ; 2 uses
  %i.di = icmp eq ptr %.sroa.016.031, %i.dg
  br i1 %i.di, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hda774eb01b0ad5a1E.exit", label %bb.am

.loopexit:                                        ; preds = %bb.am
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit, %bb.an
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.dm, %bb.an ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7.030, ptr %i.df, align 8, !alias.scope !20062, !noalias !20063
  invoke fastcc void @"_ZN4core3ptr101drop_in_place$LT$alloc..vec..Vec$LT$$LP$insta..content..Content$C$insta..content..Content$RP$$GT$$GT$17h4cd106c49f921850E"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #55
          to label %common.resume unwind label %bb.ap, !noalias !20063, !inline_history !20029

bb.am:                                            ; preds = %bb.al
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.016.031, i64 128
  %i.dk = add nuw nsw i64 %.sroa.7.030, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20060
  invoke fastcc void @"_ZN62_$LT$insta..content..Content$u20$as$u20$core..clone..Clone$GT$5clone17hb85a41ce83ea0756E"(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(128) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %.sroa.016.031)
          to label %.noexc.i unwind label %.loopexit, !noalias !20063, !inline_history !20032

.noexc.i:                                         ; preds = %bb.am
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.016.031, i64 64
  invoke fastcc void @"_ZN62_$LT$insta..content..Content$u20$as$u20$core..clone..Clone$GT$5clone17hb85a41ce83ea0756E"(ptr noalias noundef align 16 captures(address) dereferenceable(64) %2, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.dl)
          to label %_ZN4core5clone5Clone5clone17he9611f6e5f08a33aE.exit.i unwind label %bb.an, !noalias !20063, !inline_history !20032

bb.an:                                            ; preds = %.noexc.i
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$insta..content..Content$GT$17hcb4984964b03ed1dE"(ptr noalias noundef nonnull align 16 dereferenceable(128) %i.a) #55
          to label %.body.i unwind label %bb.ao, !noalias !20063, !inline_history !20032

bb.ao:                                            ; preds = %bb.an
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !20064, !inline_history !20032
  unreachable

_ZN4core5clone5Clone5clone17he9611f6e5f08a33aE.exit.i: ; preds = %.noexc.i
  %i.do = getelementptr inbounds nuw [128 x i8], ptr %i.dc, i64 %.sroa.7.030
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.do, ptr noundef nonnull align 16 dereferenceable(128) %i.a, i64 128, i1 false), !noalias !20063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20060
  %i.dp = icmp eq i64 %i.dh, 0
  br i1 %i.dp, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hda774eb01b0ad5a1E.exit", label %bb.al

bb.ap:                                            ; preds = %.body.i
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !20063, !inline_history !20029
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hda774eb01b0ad5a1E.exit": ; preds = %_ZN4core5clone5Clone5clone17he9611f6e5f08a33aE.exit.i, %bb.al, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.i.thread"
  %3 = phi ptr [ %i.db, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.i.thread" ], [ %i.df, %bb.al ], [ %i.df, %_ZN4core5clone5Clone5clone17he9611f6e5f08a33aE.exit.i ]
  store i64 %i.cu, ptr %3, align 8, !noalias !20060
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20060
  store i8 27, ptr %0, align 16
  br label %bb.as

bb.aq:                                            ; preds = %bb.a
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !nonnull !17, !align !31, !noundef !17
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dv = load i64, ptr %i.du, align 16, !noundef !17
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dy = load ptr, ptr %i.dx, align 16, !alias.scope !20065, !noalias !20066, !nonnull !17, !noundef !17
  %i.dz = load i64, ptr %i.dw, align 8, !alias.scope !20065, !noalias !20066, !noundef !17
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0f8935c75673fe6bE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ea, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.dy, i64 noundef %i.dz)
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dt, ptr %i.eb, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dv, ptr %i.ec, align 16
  store i8 28, ptr %0, align 16
  br label %bb.as

bb.ar:                                            ; preds = %bb.a
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !nonnull !17, !align !31, !noundef !17
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.eg = load i64, ptr %i.ef, align 16, !noundef !17
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ei = load i32, ptr %i.eh, align 4, !noundef !17
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8, !nonnull !17, !align !31, !noundef !17
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.em = load i64, ptr %i.el, align 16, !noundef !17
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ep = load ptr, ptr %i.eo, align 16, !alias.scope !20067, !noalias !20068, !nonnull !17, !noundef !17
  %i.eq = load i64, ptr %i.en, align 8, !alias.scope !20067, !noalias !20068, !noundef !17
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call fastcc void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0f8935c75673fe6bE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.er, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.ep, i64 noundef %i.eq)
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ee, ptr %i.es, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.eg, ptr %i.et, align 16
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ei, ptr %i.eu, align 4
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ek, ptr %i.ev, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.em, ptr %i.ew, align 16
  store i8 29, ptr %0, align 16
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hda774eb01b0ad5a1E.exit", %bb.ai, %bb.ah, %bb.ag, %bb.af, %"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9976559853fb435cE.exit5", %"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9976559853fb435cE.exit3", %bb.y, %bb.x, %bb.w, %"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9976559853fb435cE.exit", %bb.s, %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hfb99831cc3ccaaa8E.exit", %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN63_$LT$pest..error..InputLocation$u20$as$u20$core..fmt..Debug$GT$3fmt17he46f465d2a6e2303E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i64, ptr %0, align 8, !range !44, !noundef !17
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @720, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @719)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %i.g = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @718, i64 noundef 3, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @173)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN63_$LT$std..time..SystemTimeError$u20$as$u20$core..fmt..Debug$GT$3fmt17hbc62ab0c0ef34aeeE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @722, i64 noundef 15, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @721)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN64_$LT$core..str..error..Utf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hf3a269e0e3ccc031E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h64a865faf2c41f70E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @725, i64 noundef 9, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @726, i64 noundef 11, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @723, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @727, i64 noundef 9, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @724)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @"_ZN64_$LT$insta..content..Content$u20$as$u20$core..cmp..PartialEq$GT$2eq17hdfe33e7aa0ed1a32E"(ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(64) %1) unnamed_addr #25 {
bb.a:
  %i.a = load i8, ptr %0, align 16, !range !51, !noundef !17 ; 2 uses
  %i.b = load i8, ptr %1, align 16, !range !51, !noundef !17
  %i.c = icmp eq i8 %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h2be83c5df940c3d1E.exit"

.lr.ph:                                           ; preds = %bb.a, %tailrecurse.backedge
  %i.d = phi i8 [ %i.cr, %tailrecurse.backedge ], [ %i.a, %bb.a ]
  %.tr118170 = phi ptr [ %.tr118.be, %tailrecurse.backedge ], [ %1, %bb.a ] ; 61 uses
  %.tr169 = phi ptr [ %.tr.be, %tailrecurse.backedge ], [ %0, %bb.a ] ; 61 uses
  switch i8 %i.d, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h2be83c5df940c3d1E.exit" [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
    i8 6, label %bb.j
    i8 7, label %bb.k
    i8 8, label %bb.l
    i8 9, label %bb.m
    i8 10, label %bb.n
    i8 11, label %bb.o
    i8 12, label %bb.p
    i8 13, label %bb.q
    i8 14, label %bb.r
    i8 15, label %bb.t
    i8 17, label %tailrecurse.backedge
    i8 19, label %bb.v
    i8 20, label %bb.x
    i8 21, label %bb.b
    i8 22, label %bb.c
    i8 23, label %bb.ad
    i8 24, label %bb.ae
    i8 25, label %bb.af
    i8 26, label %bb.ah
    i8 27, label %bb.al
    i8 28, label %bb.am
    i8 29, label %bb.ao
  ]

"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h2be83c5df940c3d1E.exit": ; preds = %tailrecurse.backedge, %.lr.ph, %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit75", %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit83", %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit79", %bb.c, %bb.b, %bb.ab, %bb.ac, %.lr.ph.i305, %.lr.ph.i297, %.lr.ph.i289, %.lr.ph.i, %.preheader.split.i303, %bb.ak, %.preheader.split.i295, %bb.ag, %.preheader.split.i287, %bb.ae, %.preheader.split.i, %bb.ad, %bb.a, %bb.aq, %bb.ap, %bb.am, %bb.aj, %bb.ai, %bb.af, %bb.y, %bb.aa, %bb.z, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.ao, %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit103", %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit107", %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit99", %bb.ah, %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit91", %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit95", %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit87", %bb.x, %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit67", %bb.ar, %bb.an, %bb.al, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.sroa.0.0.shrunk = phi i1 [ %i.cj, %bb.s ], [ %i.r, %bb.d ], [ %i.w, %bb.e ], [ %i.ab, %bb.f ], [ %i.ag, %bb.g ], [ %i.al, %bb.h ], [ %i.aq, %bb.i ], [ %i.av, %bb.j ], [ %i.ba, %bb.k ], [ %i.bf, %bb.l ], [ %i.bk, %bb.m ], [ %i.bp, %bb.n ], [ %i.bu, %bb.o ], [ %i.bz, %bb.p ], [ %i.ce, %bb.q ], [ false, %bb.ao ], [ false, %bb.r ], [ false, %bb.aq ], [ false, %bb.t ], [ false, %bb.ap ], [ %i.co, %bb.u ], [ false, %bb.am ], [ false, %bb.x ], [ false, %bb.aj ], [ %i.cy, %bb.w ], [ false, %bb.ad ], [ %i.ej, %.lr.ph.i ], [ true, %.preheader.split.i303 ], [ false, %bb.v ], [ false, %bb.ak ], [ false, %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit87" ], [ %i.gx, %bb.al ], [ %i.hl, %bb.an ], [ false, %bb.ah ], [ %i.ij, %bb.ar ], [ false, %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit99" ], [ false, %bb.y ], [ false, %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit103" ], [ false, %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit107" ], [ false, %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit91" ], [ false, %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit95" ], [ false, %bb.af ], [ false, %bb.ai ], [ %i.dn, %bb.aa ], [ false, %bb.z ], [ false, %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit67" ], [ false, %bb.a ], [ true, %.preheader.split.i ], [ %i.ev, %.lr.ph.i289 ], [ false, %bb.ae ], [ true, %.preheader.split.i287 ], [ %i.fm, %.lr.ph.i297 ], [ false, %bb.ag ], [ true, %.preheader.split.i295 ], [ %i.gn, %.lr.ph.i305 ], [ false, %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit79" ], [ false, %tailrecurse.backedge ], [ true, %.lr.ph ], [ false, %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit75" ], [ false, %bb.b ], [ false, %bb.ac ], [ false, %bb.ab ], [ false, %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit83" ], [ false, %bb.c ]
  ret i1 %.sroa.0.0.shrunk

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.tr169, i64 16
  %.val42 = load i64, ptr %i.e, align 8, !noundef !17 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.tr118170, i64 16
  %.val44 = load i64, ptr %i.f, align 8, !noundef !17
  %.not.i.i72 = icmp eq i64 %.val42, %.val44
  br i1 %.not.i.i72, label %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit75", label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h2be83c5df940c3d1E.exit"

bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.tr169, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %.tr118170, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %.tr169, i64 4
  %i.j = load i32, ptr %i.i, align 4, !noundef !17
  %i.k = getelementptr inbounds nuw i8, ptr %.tr118170, i64 4
  %i.l = load i32, ptr %i.k, align 4, !noundef !17
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.ab, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h2be83c5df940c3d1E.exit"

bb.d:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %.tr169, i64 1
  %i.o = load i8, ptr %i.n, align 1, !range !21, !noundef !17
  %i.p = getelementptr inbounds nuw i8, ptr %.tr118170, i64 1
  %i.q = load i8, ptr %i.p, align 1, !range !21, !noundef !17
  %i.r = icmp eq i8 %i.o, %i.q
  br label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h2be83c5df940c3d1E.exit"

bb.e:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.tr169, i64 1
  %i.t = load i8, ptr %i.s, align 1, !noundef !17
  %i.u = getelementptr inbounds nuw i8, ptr %.tr118170, i64 1
  %i.v = load i8, ptr %i.u, align 1, !noundef !17
  %i.w = icmp eq i8 %i.t, %i.v
  br label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h2be83c5df940c3d1E.exit"

bb.f:                                             ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %.tr169, i64 2
  %i.y = load i16, ptr %i.x, align 2, !noundef !17
  %i.z = getelementptr inbounds nuw i8, ptr %.tr118170, i64 2
  %i.aa = load i16, ptr %i.z, align 2, !noundef !17
  %i.ab = icmp eq i16 %i.y, %i.aa
  br label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h2be83c5df940c3d1E.exit"

bb.g:                                             ; preds = %.lr.ph
end_hunk_1
begin_hunk_2_@"_ZN83_$LT$insta..content..yaml..vendored..yaml..Yaml$u20$as$u20$core..cmp..PartialEq$GT$2eq17hde8fc5f8e49ce21aE":bb.a
  %i.bg = tail call fastcc noundef zeroext i1 @"_ZN83_$LT$insta..content..yaml..vendored..yaml..Yaml$u20$as$u20$core..cmp..PartialEq$GT$2eq17hde8fc5f8e49ce21aE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ay, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bf), !noalias !23864, !inline_history !23846
  br i1 %i.bg, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h592d5aa3f7b08086E.exit.i", label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h2be83c5df940c3d1E.exit"

_ZN4core4iter6traits8iterator8Iterator12try_for_each17hcee62b20428d47f6E.exit.i: ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h592d5aa3f7b08086E.exit.i"
  %i.bh = icmp eq ptr %.sroa.0.024.i, %.val7.i
  %.not5.i52.i = icmp eq ptr %.sroa.0.024.i, null
  %.not5.i.not.not.i = or i1 %i.bh, %.not5.i52.i
  br label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h2be83c5df940c3d1E.exit"
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN84_$LT$insta..content..yaml..vendored..scanner..Marker$u20$as$u20$core..fmt..Debug$GT$3fmt17h049b928ef2a5a53fE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field3_finish17h27b603c521e4e57eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @924, i64 noundef 6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @925, i64 noundef 5, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @723, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @658, i64 noundef 4, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @723, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @926, i64 noundef 3, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @173)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @"_ZN85_$LT$insta..runtime..TEST_NAME_CLASH_DETECTION$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf76c9bf2c9b38258E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN85_$LT$insta..runtime..TEST_NAME_CLASH_DETECTION$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h77354bf65dfa3273E", i64 32) acquire, align 8 ; 2 uses
  %i.b = icmp ult i8 %i.a, 4
  tail call void @llvm.assume(i1 %i.b)
  %.not.i = icmp eq i8 %i.a, 2
  br i1 %.not.i, label %"_ZN4spin4once17Once$LT$T$C$R$GT$13try_call_once17h94996273ca0d62bbE.exit", label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef nonnull align 8 ptr @"_ZN4spin4once17Once$LT$T$C$R$GT$18try_call_once_slow17hff91a1a0a7186ccbE"()
  br label %"_ZN4spin4once17Once$LT$T$C$R$GT$13try_call_once17h94996273ca0d62bbE.exit"

"_ZN4spin4once17Once$LT$T$C$R$GT$13try_call_once17h94996273ca0d62bbE.exit": ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.c, %bb.b ], [ @"_ZN85_$LT$insta..runtime..TEST_NAME_CLASH_DETECTION$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h77354bf65dfa3273E", %bb.a ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN85_$LT$insta..runtime..TEST_NAME_CLASH_DETECTION$u20$as$u20$lazy_static..LazyStatic$GT$10initialize17h7468e93a7735cbe5E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN85_$LT$insta..runtime..TEST_NAME_CLASH_DETECTION$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h77354bf65dfa3273E", i64 32) acquire, align 8 ; 2 uses
  %i.b = icmp ult i8 %i.a, 4
  tail call void @llvm.assume(i1 %i.b)
  %.not.i.i = icmp eq i8 %i.a, 2
  br i1 %.not.i.i, label %"_ZN85_$LT$insta..runtime..TEST_NAME_CLASH_DETECTION$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf76c9bf2c9b38258E.exit", label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef nonnull align 8 ptr @"_ZN4spin4once17Once$LT$T$C$R$GT$18try_call_once_slow17hff91a1a0a7186ccbE"() ; 0 uses
  br label %"_ZN85_$LT$insta..runtime..TEST_NAME_CLASH_DETECTION$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf76c9bf2c9b38258E.exit"

"_ZN85_$LT$insta..runtime..TEST_NAME_CLASH_DETECTION$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf76c9bf2c9b38258E.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0f8935c75673fe6bE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 16               ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = mul i64 %2, 80                           ; 3 uses
  %or.cond.i.i.i = icmp ugt i64 %2, 115292150460684697
  br i1 %or.cond.i.i.i, label %bb.b, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i, !prof !15

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i: ; preds = %bb.a
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.thread", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.thread": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  %i.e = icmp eq i64 %2, 0
  tail call void @llvm.assume(i1 %i.e)
  store i64 0, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 16 to ptr), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %.thread

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !23875
  %i.h = tail call noundef align 16 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, 17) 16) #51, !noalias !23875 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit"

bb.b:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i", %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 16, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i" ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i, i64 %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @928) #54
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i"
  store i64 %2, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.l = getelementptr inbounds nuw [80 x i8], ptr %1, i64 %2
  %i.m = icmp eq i64 %2, 0
  br i1 %i.m, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit"
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4core5clone5Clone5clone17hbd78de727227770bE.exit
  %.sroa.012.023 = phi ptr [ %1, %.lr.ph ], [ %i.x, %_ZN4core5clone5Clone5clone17hbd78de727227770bE.exit ] ; 5 uses
  %.sroa.7.022 = phi i64 [ 0, %.lr.ph ], [ %i.w, %_ZN4core5clone5Clone5clone17hbd78de727227770bE.exit ] ; 3 uses
  %.sroa.10.021 = phi i64 [ %2, %.lr.ph ], [ %i.p, %_ZN4core5clone5Clone5clone17hbd78de727227770bE.exit ]
  %i.p = add nsw i64 %.sroa.10.021, -1            ; 2 uses
  %i.q = icmp eq ptr %.sroa.012.023, %i.l
  br i1 %i.q, label %.thread, label %bb.d

.thread:                                          ; preds = %_ZN4core5clone5Clone5clone17hbd78de727227770bE.exit, %bb.c, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.thread", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit"
  %i.r = phi ptr [ %i.g, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.thread" ], [ %i.k, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit" ], [ %i.k, %bb.c ], [ %i.k, %_ZN4core5clone5Clone5clone17hbd78de727227770bE.exit ]
  store i64 %2, ptr %i.r, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23877)
  %i.s = load ptr, ptr %.sroa.012.023, align 8, !alias.scope !23877, !noalias !23876, !nonnull !17, !align !31, !noundef !17
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.012.023, i64 8
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !23877, !noalias !23876, !noundef !17
  store ptr %i.s, ptr %i.a, align 16, !alias.scope !23876, !noalias !23877
  store i64 %i.u, ptr %i.n, align 8, !alias.scope !23876, !noalias !23877
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.012.023, i64 16
  invoke fastcc void @"_ZN62_$LT$insta..content..Content$u20$as$u20$core..clone..Clone$GT$5clone17hb85a41ce83ea0756E"(ptr noalias noundef align 16 captures(address) dereferenceable(64) %i.o, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.v)
          to label %_ZN4core5clone5Clone5clone17hbd78de727227770bE.exit unwind label %bb.f, !inline_history !23872

_ZN4core5clone5Clone5clone17hbd78de727227770bE.exit: ; preds = %bb.d
  %i.w = add nuw nsw i64 %.sroa.7.022, 1
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.012.023, i64 80
  %i.y = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %.sroa.7.022
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.y, ptr noundef nonnull align 16 dereferenceable(80) %i.a, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.z = icmp eq i64 %i.p, 0
  br i1 %i.z, label %.thread, label %bb.c

bb.e:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

bb.f:                                             ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022, ptr %i.k, align 8, !alias.scope !23878
  invoke fastcc void @"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$str$C$insta..content..Content$RP$$GT$$GT$17h85f13650e2bcc60cE"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #55
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.loopexit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h2e4400eab0af5ce6E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = shl i64 %2, 6                            ; 4 uses
  %i.d = icmp ugt i64 %2, 288230376151711743
  %i.e = icmp ugt i64 %i.c, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.d, %i.e
  br i1 %or.cond.i.i.i, label %bb.b, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i, !prof !15

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i: ; preds = %bb.a
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.thread", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.thread": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  %i.g = icmp eq i64 %2, 0
  tail call void @llvm.assume(i1 %i.g)
  store i64 0, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 16 to ptr), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %.thread

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !23885
  %i.j = tail call noundef align 16 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, 17) 16) #51, !noalias !23885 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.b, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit"

bb.b:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i", %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 16, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i" ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i, i64 %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @928) #54
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i"
  store i64 %2, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %1, i64 %2
  br label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit", %bb.d
  %.sroa.012.023 = phi ptr [ %i.r, %bb.d ], [ %1, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit" ] ; 3 uses
  %.sroa.7.022 = phi i64 [ %i.q, %bb.d ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit" ] ; 3 uses
  %.sroa.10.021 = phi i64 [ %i.o, %bb.d ], [ %2, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit" ]
  %i.o = add nsw i64 %.sroa.10.021, -1            ; 2 uses
  %i.p = icmp eq ptr %.sroa.012.023, %i.n
  br i1 %i.p, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.d, %.lr.ph, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.thread"
  %3 = phi ptr [ %i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.thread" ], [ %i.m, %.lr.ph ], [ %i.m, %bb.d ]
  store i64 %2, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.c:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke fastcc void @"_ZN62_$LT$insta..content..Content$u20$as$u20$core..clone..Clone$GT$5clone17hb85a41ce83ea0756E"(ptr noalias noundef align 16 captures(address) dereferenceable(64) %i.a, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %.sroa.012.023)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = add nuw nsw i64 %.sroa.7.022, 1
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.012.023, i64 64
  %i.s = getelementptr inbounds nuw [64 x i8], ptr %i.j, i64 %.sroa.7.022
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.s, ptr noundef nonnull align 16 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.t = icmp eq i64 %i.o, 0
  br i1 %i.t, label %.thread, label %.lr.ph

bb.e:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

bb.f:                                             ; preds = %bb.c
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022, ptr %i.m, align 8, !alias.scope !23886
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$alloc..vec..Vec$LT$insta..content..Content$GT$$GT$17hf0ae366195e70e44E"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #55
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.loopexit
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN87_$LT$insta..content..Content$u20$as$u20$core..convert..From$LT$$RF$$u5b$u8$u5d$$GT$$GT$4from17hcbdc23319b7a7a1aE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 16 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i64 %2, 0
  br i1 %i.a, label %bb.b, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !15

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h040e81cb1e22e211E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !23894
  %i.c = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, 17) 1) #51, !noalias !23894 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h040e81cb1e22e211E.exit"

bb.b:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @927) #54, !noalias !23895
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h040e81cb1e22e211E.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.c, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !23896
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  store i8 15, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN87_$LT$insta..content..yaml..vendored..emitter..EmitError$u20$as$u20$core..fmt..Debug$GT$3fmt17hd8e87b7844efa593E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @931, i64 noundef 8, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @930)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN87_$LT$insta..content..yaml..vendored..scanner..ScanError$u20$as$u20$core..fmt..Debug$GT$3fmt17h2ada7957d9668cd5E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h64a865faf2c41f70E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @933, i64 noundef 9, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @934, i64 noundef 4, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @932, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @673, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @744)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN88_$LT$insta..snapshot..SnapshotContents$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h99704bb488acf187E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call fastcc void @"_ZN5alloc3str21_$LT$impl$u20$str$GT$7replace17h825828b0cbb0b431E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @12, i64 noundef 2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @13, i64 noundef 1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN89_$LT$insta..content..yaml..vendored..emitter..EmitError$u20$as$u20$core..fmt..Display$GT$3fmt17h01501f25b2714cffE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @"_ZN55_$LT$core..fmt..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h8ecc88e905e6ba03E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN89_$LT$insta..content..yaml..vendored..scanner..ScanError$u20$as$u20$core..fmt..Display$GT$3fmt17h8c169444a3192a69E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !noundef !17
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.42.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.h, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.46.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.c, ptr %i.i, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.410.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val11 = load ptr, ptr %i.j, align 8
  %.val = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23899
  store ptr @956, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 3, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 3, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.k = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val11, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !23899
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23899
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN90_$LT$insta..content..yaml..vendored..scanner..TScalarStyle$u20$as$u20$core..fmt..Debug$GT$3fmt17hfad6da63c9c4009eE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !37, !noundef !17 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN90_$LT$insta..content..yaml..vendored..scanner..TScalarStyle$u20$as$u20$core..fmt..Debug$GT$3fmt17hfad6da63c9c4009eE", i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN90_$LT$insta..content..yaml..vendored..scanner..TScalarStyle$u20$as$u20$core..fmt..Debug$GT$3fmt17hfad6da63c9c4009eE.1376", i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN91_$LT$insta..redaction..Redaction$u20$as$u20$core..convert..From$LT$$RF$$u5b$u8$u5d$$GT$$GT$4from17hdeb0ed21dca4d093E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 16 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i64 %2, 0
  br i1 %i.a, label %bb.b, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !15

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %"_ZN87_$LT$insta..content..Content$u20$as$u20$core..convert..From$LT$$RF$$u5b$u8$u5d$$GT$$GT$4from17hcbdc23319b7a7a1aE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !23910
  %i.c = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, 17) 1) #51, !noalias !23910 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %"_ZN87_$LT$insta..content..Content$u20$as$u20$core..convert..From$LT$$RF$$u5b$u8$u5d$$GT$$GT$4from17hcbdc23319b7a7a1aE.exit"

bb.b:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i", %bb.a
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i" ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @927) #54, !noalias !23911
  unreachable

"_ZN87_$LT$insta..content..Content$u20$as$u20$core..convert..From$LT$$RF$$u5b$u8$u5d$$GT$$GT$4from17hcbdc23319b7a7a1aE.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i"
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.c, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i" ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !23912
  store i8 15, ptr %0, align 16
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.41.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.5.0..sroa_idx, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
end_hunk_2
