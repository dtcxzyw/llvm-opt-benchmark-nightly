Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/insta-020b41739abf7dee.insta.f5a96bf8015bdfbc-cgu.0?download=true
inline.NumInlined: 7723
inline.NumDeleted: 3104
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 145
begin_hunk_0_@"_ZN101_$LT$insta..redaction..SelectParser$u20$as$u20$pest..parser..Parser$LT$insta..redaction..Rule$GT$$GT$5parse17h461b7ffe1ae87f13E":bb.a
  %.val13.i81.i = load i8, ptr %i.ry, align 1, !range !24, !noalias !347, !noundef !17
  %i.rz = icmp eq i8 %.val12.i80.i, %.val13.i81.i
  br i1 %i.rz, label %.lr.ph.i77.i.1, label %bb.gh

bb.gh:                                            ; preds = %.lr.ph.i77.i
  store i8 %.val12.i80.i, ptr %i.rx, align 1, !noalias !347
  %i.sa = add i64 %.sroa.11.025.i79.i, 1
  br label %.lr.ph.i77.i.1

.lr.ph.i77.i.1:                                   ; preds = %bb.gh, %.lr.ph.i77.i
  %.sroa.11.1.i82.i = phi i64 [ %i.sa, %bb.gh ], [ %.sroa.11.025.i79.i, %.lr.ph.i77.i ] ; 3 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rj, i64 %.sroa.5.026.i78.i
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 1
  %i.sd = getelementptr i8, ptr %i.rj, i64 %.sroa.11.1.i82.i ; 2 uses
  %i.se = getelementptr i8, ptr %i.sd, i64 -1
  %.val12.i80.i.1 = load i8, ptr %i.sc, align 1, !range !24, !noalias !347, !noundef !17 ; 2 uses
  %.val13.i81.i.1 = load i8, ptr %i.se, align 1, !range !24, !noalias !347, !noundef !17
  %i.sf = icmp eq i8 %.val12.i80.i.1, %.val13.i81.i.1
  br i1 %i.sf, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %.lr.ph.i77.i.1
  store i8 %.val12.i80.i.1, ptr %i.sd, align 1, !noalias !347
  %i.sg = add i64 %.sroa.11.1.i82.i, 1
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %.lr.ph.i77.i.1
  %.sroa.11.1.i82.i.1 = phi i64 [ %i.sg, %bb.gi ], [ %.sroa.11.1.i82.i, %.lr.ph.i77.i.1 ] ; 2 uses
  %.sroa.5.0.i83.i.1 = add nuw nsw i64 %.sroa.5.026.i78.i, 2 ; 2 uses
  %exitcond.not.i84.i.1 = icmp eq i64 %.sroa.5.0.i83.i.1, %.pr81.i
  br i1 %exitcond.not.i84.i.1, label %._crit_edge.i75.i, label %.lr.ph.i77.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17h7f203e9018b33cf8E.exit85.i": ; preds = %bb.gg, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17h7f203e9018b33cf8E.exit.i", %._crit_edge.i75.i, %_ZN5alloc5slice11stable_sort17h602dcb7a4568849fE.exit68.i
  %.val32.i = load ptr, ptr %i.pg, align 8, !noalias !281, !nonnull !17, !noundef !17
  %.val33.i = load i64, ptr %i.pi, align 8, !noalias !281, !noundef !17 ; 9 uses
  %i.sh = icmp slt i64 %.val33.i, 0
  br i1 %i.sh, label %.invoke.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !15

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17h7f203e9018b33cf8E.exit85.i"
  %i.si = icmp eq i64 %.val33.i, 0                ; 2 uses
  br i1 %i.si, label %bb.gk, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !348
  %i.sj = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val33.i, i64 noundef range(i64 1, 17) 1) #51, !noalias !348 ; 2 uses
  %i.sk = icmp eq ptr %i.sj, null
  br i1 %i.sk, label %.invoke.i, label %bb.gk

.invoke.i:                                        ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17h7f203e9018b33cf8E.exit85.i", %bb.fr
  %i.sl = phi i64 [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17h7f203e9018b33cf8E.exit85.i" ], [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i" ], [ 1, %bb.fr ]
  %i.sm = phi i64 [ %.val33.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17h7f203e9018b33cf8E.exit85.i" ], [ %.val33.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i" ], [ 18, %bb.fr ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.sl, i64 %i.sm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @927) #54
          to label %.cont.i unwind label %bb.fs, !noalias !281

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.gk:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.sj, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i" ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 1 %.val32.i, i64 %.val33.i, i1 false), !noalias !349
  %.val30.i = load ptr, ptr %i.qv, align 8, !noalias !281, !nonnull !17, !noundef !17
  %.val31.i = load i64, ptr %i.qx, align 8, !noalias !281, !noundef !17 ; 7 uses
  %i.sn = icmp slt i64 %.val31.i, 0
  br i1 %i.sn, label %bb.gl, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i87.i, !prof !15

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i87.i: ; preds = %bb.gk
  %i.so = icmp eq i64 %.val31.i, 0
  br i1 %i.so, label %bb.go, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i88.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i88.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i87.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !350
  %i.sp = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val31.i, i64 noundef range(i64 1, 17) 1) #51, !noalias !350 ; 2 uses
  %i.sq = icmp eq ptr %i.sp, null
  br i1 %i.sq, label %bb.gl, label %bb.go

bb.gl:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i88.i", %bb.gk
  %.sroa.4.0.ph.i.i.i92.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i88.i" ], [ 0, %bb.gk ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i92.i, i64 %.val31.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @927) #54
          to label %.noexc93.i unwind label %bb.gm, !noalias !281

.noexc93.i:                                       ; preds = %bb.gl
  unreachable

bb.gm:                                            ; preds = %bb.gl
  %i.sr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.si, label %"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$insta..redaction..Rule$GT$$GT$17h74edf76b37db10c2E.exit97.i", label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i, i64 noundef %.val33.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !351
  br label %"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$insta..redaction..Rule$GT$$GT$17h74edf76b37db10c2E.exit97.i"

bb.go:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i88.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i87.i
  %.sroa.10.0.i.i.i89.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i87.i ], [ %i.sp, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i88.i" ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i89.i, ptr nonnull readonly align 1 %.val30.i, i64 %.val31.i, i1 false), !noalias !352
  br label %bb.gp

bb.gp:                                            ; preds = %bb.gq, %bb.go
  %.sroa.6.sroa.7.sroa.6.sroa.5.0.i = phi i64 [ %.val31.i, %bb.go ], [ undef, %bb.gq ] ; 2 uses
  %.sroa.6.sroa.7.sroa.6.sroa.0.0.i = phi ptr [ %.sroa.10.0.i.i.i89.i, %bb.go ], [ undef, %bb.gq ] ; 3 uses
  %.sroa.6.sroa.7.sroa.0.0.i = phi i64 [ %.val31.i, %bb.go ], [ 18, %bb.gq ] ; 4 uses
  %.sroa.6.sroa.6.0.i = phi i64 [ %.val33.i, %bb.go ], [ %i.sw, %bb.gq ] ; 3 uses
  %.sroa.6.sroa.0.0.i = phi ptr [ %.sroa.10.0.i.i.i.i, %bb.go ], [ inttoptr (i64 18 to ptr), %bb.gq ] ; 4 uses
  %.sroa.03.0.i = phi i64 [ %.val33.i, %bb.go ], [ -9223372036854775808, %bb.gq ] ; 4 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.oc, i64 248
  %i.st = load i8, ptr %i.ss, align 8, !range !21, !noalias !281, !noundef !17
  %i.su = trunc nuw i8 %i.st to i1
  %i.sv = getelementptr inbounds nuw i8, ptr %i.oc, i64 280 ; 2 uses
  br i1 %i.su, label %bb.gs, label %bb.gr

bb.gq:                                            ; preds = %bb.fr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.ps, ptr noundef nonnull align 1 dereferenceable(18) @139, i64 18, i1 false), !noalias !353
  %i.sw = ptrtoint ptr %i.ps to i64
  br label %bb.gp

bb.gr:                                            ; preds = %bb.gp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !328
  store i64 %.sroa.03.0.i, ptr %i.l, align 8, !noalias !328
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %.sroa.6.sroa.0.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !328
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %.sroa.6.sroa.6.0.i, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.i, align 8, !noalias !328
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %.sroa.6.sroa.7.sroa.0.0.i, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx.i, align 8, !noalias !328
  %.sroa.6.sroa.7.sroa.6.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %.sroa.6.sroa.7.sroa.6.sroa.0.0.i, ptr %.sroa.6.sroa.7.sroa.6.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !328
  %.sroa.6.sroa.7.sroa.6.sroa.5.0..sroa.6.sroa.7.sroa.6.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i64 %.sroa.6.sroa.7.sroa.6.sroa.5.0.i, ptr %.sroa.6.sroa.7.sroa.6.sroa.5.0..sroa.6.sroa.7.sroa.6.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !328
  %i.sx = load i64, ptr %i.sv, align 8, !noalias !281, !noundef !17
  store ptr %2, ptr %i.k, align 8, !noalias !328
  %i.sy = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %3, ptr %i.sy, align 8, !noalias !328
  %i.sz = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.sx, ptr %i.sz, align 8, !noalias !328
  invoke fastcc void @"_ZN4pest5error14Error$LT$R$GT$12new_from_pos17he600dd2395617165E"(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.m, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.l, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.k)
          to label %bb.ha unwind label %bb.fs, !noalias !281

bb.gs:                                            ; preds = %bb.gp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !328
  store i64 %.sroa.03.0.i, ptr %i.p, align 8, !noalias !328
  %.sroa.6.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %.sroa.6.sroa.0.0.i, ptr %.sroa.6.0..sroa_idx6.i, align 8, !noalias !328
  store i64 %.sroa.6.sroa.6.0.i, ptr %.sink9.i.sroa.gep, align 8, !noalias !328
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx6.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 %.sroa.6.sroa.7.sroa.0.0.i, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx6.sroa_idx.i, align 8, !noalias !328
  store ptr %.sroa.6.sroa.7.sroa.6.sroa.0.0.i, ptr %.sink9.i.sroa.gep4, align 8, !noalias !328
  %.sroa.6.sroa.7.sroa.6.sroa.5.0..sroa.6.sroa.7.sroa.6.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx6.sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i64 %.sroa.6.sroa.7.sroa.6.sroa.5.0.i, ptr %.sroa.6.sroa.7.sroa.6.sroa.5.0..sroa.6.sroa.7.sroa.6.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx6.sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !328
  %i.ta = load i64, ptr %i.sv, align 8, !noalias !281, !noundef !17
  store ptr %2, ptr %i.o, align 8, !noalias !328
  %i.tb = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %3, ptr %i.tb, align 8, !noalias !328
  %i.tc = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.ta, ptr %i.tc, align 8, !noalias !328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !328
  call void @llvm.experimental.noalias.scope.decl(metadata !354)
  call void @llvm.experimental.noalias.scope.decl(metadata !355)
  %i.td = getelementptr inbounds nuw i8, ptr %i.oc, i64 176
  %.val.i98.i = load ptr, ptr %i.td, align 8, !alias.scope !355, !noalias !281, !nonnull !17, !noundef !17 ; 11 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.oc, i64 184
  %.val2.i.i = load i64, ptr %i.te, align 8, !alias.scope !355, !noalias !281, !noundef !17 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !356)
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
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !357
  %i.tl = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.tf, i64 noundef range(i64 1, 17) 1) #51, !noalias !357 ; 6 uses
  %i.tm = icmp eq ptr %i.tl, null
  br i1 %i.tm, label %bb.gt, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.i.i.i.i"

bb.gt:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i", %bb.gs
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i" ], [ 0, %bb.gs ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.tf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @928) #54
          to label %.noexc102.i unwind label %bb.hc, !noalias !281

.noexc102.i:                                      ; preds = %bb.gt
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i"
  %i.tn = getelementptr inbounds nuw [2 x i8], ptr %.val.i98.i, i64 %.val2.i.i
  %i.to = icmp eq i64 %.val2.i.i, 0
  br i1 %i.to, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7f57ba00103f2100E.exit.i.i", label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.i.i.i.i"
  %4 = and i64 %.val2.i.i, 9223372036854775807
  %i.tp = add i64 %.val2.i.i, -1
  %i.tq = call i64 @llvm.umin.i64(i64 %4, i64 %i.tp) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.tq, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader66, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %i.tr = add nuw i64 %i.tq, 1                    ; 2 uses
  %i.ts = and i64 %i.tr, 7                        ; 2 uses
  %i.tt = icmp eq i64 %i.ts, 0
  %i.tu = select i1 %i.tt, i64 8, i64 %i.ts
  %n.vec = sub i64 %i.tr, %i.tu                   ; 4 uses
  %i.tv = shl i64 %n.vec, 1
  %i.tw = getelementptr i8, ptr %.val.i98.i, i64 %i.tv
  %i.tx = sub i64 %.val2.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ty = shl i64 %index, 1                       ; 8 uses
  %next.gep = getelementptr i8, ptr %.val.i98.i, i64 %i.ty ; 2 uses
  %i.tz = getelementptr i8, ptr %.val.i98.i, i64 %i.ty ; 2 uses
  %next.gep57 = getelementptr i8, ptr %i.tz, i64 2
  %i.ua = getelementptr i8, ptr %.val.i98.i, i64 %i.ty ; 2 uses
  %next.gep58 = getelementptr i8, ptr %i.ua, i64 4
  %i.ub = getelementptr i8, ptr %.val.i98.i, i64 %i.ty ; 2 uses
  %next.gep59 = getelementptr i8, ptr %i.ub, i64 6
  %i.uc = getelementptr i8, ptr %.val.i98.i, i64 %i.ty ; 2 uses
  %next.gep60 = getelementptr i8, ptr %i.uc, i64 8
  %i.ud = getelementptr i8, ptr %.val.i98.i, i64 %i.ty ; 2 uses
  %next.gep61 = getelementptr i8, ptr %i.ud, i64 10
  %i.ue = getelementptr i8, ptr %.val.i98.i, i64 %i.ty ; 2 uses
  %next.gep62 = getelementptr i8, ptr %i.ue, i64 12
  %i.uf = getelementptr i8, ptr %.val.i98.i, i64 %i.ty ; 2 uses
  %next.gep63 = getelementptr i8, ptr %i.uf, i64 14
  %i.ug = load i8, ptr %next.gep, align 1, !range !26, !alias.scope !356, !noalias !358, !noundef !17
  %i.uh = load i8, ptr %next.gep57, align 1, !range !26, !alias.scope !356, !noalias !358, !noundef !17
  %i.ui = load i8, ptr %next.gep58, align 1, !range !26, !alias.scope !356, !noalias !358, !noundef !17
  %i.uj = load i8, ptr %next.gep59, align 1, !range !26, !alias.scope !356, !noalias !358, !noundef !17
  %i.uk = load i8, ptr %next.gep60, align 1, !range !26, !alias.scope !356, !noalias !358, !noundef !17
  %i.ul = load i8, ptr %next.gep61, align 1, !range !26, !alias.scope !356, !noalias !358, !noundef !17
  %i.um = load i8, ptr %next.gep62, align 1, !range !26, !alias.scope !356, !noalias !358, !noundef !17
  %i.un = load i8, ptr %next.gep63, align 1, !range !26, !alias.scope !356, !noalias !358, !noundef !17
  %i.uo = insertelement <8 x i8> poison, i8 %i.ug, i64 0
  %i.up = insertelement <8 x i8> %i.uo, i8 %i.uh, i64 1
  %i.uq = insertelement <8 x i8> %i.up, i8 %i.ui, i64 2
  %i.ur = insertelement <8 x i8> %i.uq, i8 %i.uj, i64 3
  %i.us = insertelement <8 x i8> %i.ur, i8 %i.uk, i64 4
  %i.ut = insertelement <8 x i8> %i.us, i8 %i.ul, i64 5
  %i.uu = insertelement <8 x i8> %i.ut, i8 %i.um, i64 6
  %i.uv = insertelement <8 x i8> %i.uu, i8 %i.un, i64 7
  %i.uw = getelementptr i8, ptr %next.gep, i64 1
  %i.ux = getelementptr i8, ptr %i.tz, i64 3
  %i.uy = getelementptr i8, ptr %i.ua, i64 5
  %i.uz = getelementptr i8, ptr %i.ub, i64 7
  %i.va = getelementptr i8, ptr %i.uc, i64 9
  %i.vb = getelementptr i8, ptr %i.ud, i64 11
  %i.vc = getelementptr i8, ptr %i.ue, i64 13
  %i.vd = getelementptr i8, ptr %i.uf, i64 15
  %i.ve = load i8, ptr %i.uw, align 1, !alias.scope !356, !noalias !358
  %i.vf = load i8, ptr %i.ux, align 1, !alias.scope !356, !noalias !358
  %i.vg = load i8, ptr %i.uy, align 1, !alias.scope !356, !noalias !358
  %i.vh = load i8, ptr %i.uz, align 1, !alias.scope !356, !noalias !358
  %i.vi = load i8, ptr %i.va, align 1, !alias.scope !356, !noalias !358
  %i.vj = load i8, ptr %i.vb, align 1, !alias.scope !356, !noalias !358
  %i.vk = load i8, ptr %i.vc, align 1, !alias.scope !356, !noalias !358
  %i.vl = load i8, ptr %i.vd, align 1, !alias.scope !356, !noalias !358
  %i.vm = insertelement <8 x i8> poison, i8 %i.ve, i64 0
  %i.vn = insertelement <8 x i8> %i.vm, i8 %i.vf, i64 1
  %i.vo = insertelement <8 x i8> %i.vn, i8 %i.vg, i64 2
  %i.vp = insertelement <8 x i8> %i.vo, i8 %i.vh, i64 3
  %i.vq = insertelement <8 x i8> %i.vp, i8 %i.vi, i64 4
  %i.vr = insertelement <8 x i8> %i.vq, i8 %i.vj, i64 5
  %i.vs = insertelement <8 x i8> %i.vr, i8 %i.vk, i64 6
  %i.vt = insertelement <8 x i8> %i.vs, i8 %i.vl, i64 7
  %i.vu = getelementptr inbounds nuw [2 x i8], ptr %i.tl, i64 %index
  %interleaved.vec = shufflevector <8 x i8> %i.uv, <8 x i8> %i.vt, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.vu, align 1, !noalias !359
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.vv = icmp eq i64 %index.next, %n.vec
  br i1 %i.vv, label %.lr.ph.i.i.i.i.preheader66, label %vector.body, !llvm.loop !266

.lr.ph.i.i.i.i.preheader66:                       ; preds = %vector.body, %.lr.ph.i.i.i.i.preheader
  %.sroa.014.023.i.i.i.i.ph = phi ptr [ %.val.i98.i, %.lr.ph.i.i.i.i.preheader ], [ %i.tw, %vector.body ]
  %.sroa.7.022.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %n.vec, %vector.body ]
  %.sroa.10.021.i.i.i.i.ph = phi i64 [ %.val2.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.tx, %vector.body ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader66, %bb.gu
  %.sroa.014.023.i.i.i.i = phi ptr [ %i.vz, %bb.gu ], [ %.sroa.014.023.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader66 ] ; 4 uses
  %.sroa.7.022.i.i.i.i = phi i64 [ %i.vy, %bb.gu ], [ %.sroa.7.022.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader66 ] ; 2 uses
  %.sroa.10.021.i.i.i.i = phi i64 [ %i.vx, %bb.gu ], [ %.sroa.10.021.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader66 ]
  %i.vw = icmp eq ptr %.sroa.014.023.i.i.i.i, %i.tn
  br i1 %i.vw, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7f57ba00103f2100E.exit.i.i", label %bb.gu

bb.gu:                                            ; preds = %.lr.ph.i.i.i.i
  %i.vx = add nsw i64 %.sroa.10.021.i.i.i.i, -1   ; 2 uses
  %i.vy = add nuw nsw i64 %.sroa.7.022.i.i.i.i, 1
  %i.vz = getelementptr inbounds nuw i8, ptr %.sroa.014.023.i.i.i.i, i64 2
  %.val.i.i.i.i = load i8, ptr %.sroa.014.023.i.i.i.i, align 1, !range !26, !alias.scope !356, !noalias !358, !noundef !17
  %i.wa = getelementptr i8, ptr %.sroa.014.023.i.i.i.i, i64 1
  %.val11.i.i.i.i = load i8, ptr %i.wa, align 1, !alias.scope !356, !noalias !358
  %i.wb = getelementptr inbounds nuw [2 x i8], ptr %i.tl, i64 %.sroa.7.022.i.i.i.i ; 2 uses
  store i8 %.val.i.i.i.i, ptr %i.wb, align 1, !noalias !359
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 1
  store i8 %.val11.i.i.i.i, ptr %i.wc, align 1, !noalias !359
  %i.wd = icmp eq i64 %i.vx, 0
  br i1 %i.wd, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7f57ba00103f2100E.exit.i.i", label %.lr.ph.i.i.i.i, !llvm.loop !267

"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7f57ba00103f2100E.exit.i.i": ; preds = %bb.gu, %.lr.ph.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.i.i.i.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.thread.i.i.i.i"
  %.sroa.10.0.i31.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.thread.i.i.i.i" ], [ %i.tl, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.i.i.i.i" ], [ %i.tl, %.lr.ph.i.i.i.i ], [ %i.tl, %bb.gu ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !360
  %i.we = getelementptr inbounds nuw i8, ptr %i.oc, i64 200
  %.val5.i.i = load ptr, ptr %i.we, align 8, !alias.scope !355, !noalias !281, !nonnull !17, !noundef !17
  %i.wf = getelementptr inbounds nuw i8, ptr %i.oc, i64 208
  %.val6.i.i = load i64, ptr %i.wf, align 8, !alias.scope !355, !noalias !281, !noundef !17
  invoke fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hed72057b100fbe83E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, ptr nonnull %.val5.i.i, i64 %.val6.i.i)
          to label %bb.gy unwind label %bb.gx, !noalias !361

bb.gv:                                            ; preds = %bb.gz, %bb.gx
  %.pn.i99.i = phi { ptr, i32 } [ %i.wk, %bb.gz ], [ %i.wh, %bb.gx ] ; 2 uses
  %i.wg = icmp eq i64 %.val2.i.i, 0
  br i1 %i.wg, label %bb.hh, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i31.i.i.i.i, i64 noundef %i.tf, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !362
  br label %bb.hh

bb.gx:                                            ; preds = %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7f57ba00103f2100E.exit.i.i"
  %i.wh = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

bb.gy:                                            ; preds = %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7f57ba00103f2100E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !360
  %i.wi = getelementptr inbounds nuw i8, ptr %i.oc, i64 224
  %.val3.i.i = load ptr, ptr %i.wi, align 8, !alias.scope !355, !noalias !281, !nonnull !17, !noundef !17
  %i.wj = getelementptr inbounds nuw i8, ptr %i.oc, i64 232
  %.val4.i.i = load i64, ptr %i.wj, align 8, !alias.scope !355, !noalias !281, !noundef !17
  invoke fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hed72057b100fbe83E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %.val3.i.i, i64 %.val4.i.i)
          to label %bb.hd unwind label %bb.gz, !noalias !361

bb.gz:                                            ; preds = %bb.gy
  %i.wk = landingpad { ptr, i32 }
          cleanup
  call void @"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$pest..parser_state..ParsingToken$GT$$GT$17h4123408fd8756f23E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #55, !noalias !361
  br label %bb.gv

bb.ha:                                            ; preds = %bb.gr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %i.m, i64 120, i1 false), !noalias !332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !328
  br label %bb.hb

bb.hb:                                            ; preds = %bb.hg, %bb.ha
  call fastcc void @"_ZN4core3ptr107drop_in_place$LT$alloc..boxed..Box$LT$pest..parser_state..ParserState$LT$insta..redaction..Rule$GT$$GT$$GT$17hf5d7cfb0aa6de2eeE"(ptr nonnull %i.oc), !noalias !281
  br label %_ZN4pest12parser_state5state17h7719fb09e6a92622E.exit

bb.hc:                                            ; preds = %bb.gt
  %i.wl = landingpad { ptr, i32 }
          cleanup
  br label %bb.hh

.body103.i:                                       ; preds = %bb.hd
  %i.wm = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr84drop_in_place$LT$pest..parser_state..ParseAttempts$LT$insta..redaction..Rule$GT$$GT$17h143afa2829ebd929E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.n) #55, !noalias !363
  br label %"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$insta..redaction..Rule$GT$$GT$17h74edf76b37db10c2E.exit97.i"

bb.hd:                                            ; preds = %bb.gy
  %i.wn = getelementptr inbounds nuw i8, ptr %i.oc, i64 240
  %i.wo = load i64, ptr %i.wn, align 8, !alias.scope !355, !noalias !281, !noundef !17
  %i.wp = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  store i8 1, ptr %i.wp, align 8, !alias.scope !354, !noalias !328
  store i64 %.val2.i.i, ptr %i.n, align 8, !alias.scope !354, !noalias !328
  %.sroa.5.0..sroa_idx.i100.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.sroa.10.0.i31.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i100.i, align 8, !alias.scope !354, !noalias !328
  %.sroa.7.0..sroa_idx.i101.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.val2.i.i, ptr %.sroa.7.0..sroa_idx.i101.i, align 8, !alias.scope !354, !noalias !328
  %i.wq = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wq, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !364
  %i.wr = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wr, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !364
  %i.ws = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  store i64 %i.wo, ptr %i.ws, align 8, !alias.scope !354, !noalias !328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !365
  invoke fastcc void @"_ZN4pest5error14Error$LT$R$GT$12new_from_pos17he600dd2395617165E"(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.o)
          to label %bb.he unwind label %.body103.i, !noalias !366

bb.he:                                            ; preds = %bb.hd
  %i.wt = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.wu = load ptr, ptr %i.wt, align 8, !noalias !365, !nonnull !17, !align !29, !noundef !17
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 72 ; 3 uses
  %i.ww = load i64, ptr %i.wv, align 8, !range !30, !alias.scope !367, !noalias !368, !noundef !17
  %i.wx = icmp eq i64 %i.ww, -9223372036854775808
  br i1 %i.wx, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  call fastcc void @"_ZN4core3ptr84drop_in_place$LT$pest..parser_state..ParseAttempts$LT$insta..redaction..Rule$GT$$GT$17h143afa2829ebd929E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.wv), !noalias !368
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %bb.he
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.wv, ptr noundef nonnull readonly align 8 dereferenceable(88) %i.n, i64 88, i1 false), !noalias !363
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %i.b, i64 120, i1 false), !noalias !332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !328
  br label %bb.hb

bb.hh:                                            ; preds = %bb.hc, %bb.gw, %bb.gv
  %eh.lpad-body104.ph.i = phi { ptr, i32 } [ %i.wl, %bb.hc ], [ %.pn.i99.i, %bb.gw ], [ %.pn.i99.i, %bb.gv ] ; 2 uses
  switch i64 %.sroa.03.0.i, label %bb.hi [
    i64 -9223372036854775808, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.sink.split.i"
    i64 0, label %"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$insta..redaction..Rule$GT$$GT$17h74edf76b37db10c2E.exit.i3"
  ]

bb.hi:                                            ; preds = %bb.hh
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.sroa.0.0.i, i64 noundef %.sroa.03.0.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !369
  br label %"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$insta..redaction..Rule$GT$$GT$17h74edf76b37db10c2E.exit.i3"

"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$insta..redaction..Rule$GT$$GT$17h74edf76b37db10c2E.exit.i3": ; preds = %bb.hh, %bb.hi
  %i.wy = icmp eq i64 %.sroa.6.sroa.7.sroa.0.0.i, 0
  br i1 %i.wy, label %"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$insta..redaction..Rule$GT$$GT$17h74edf76b37db10c2E.exit97.i", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.sink.split.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.sink.split.i": ; preds = %bb.hh, %"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$insta..redaction..Rule$GT$$GT$17h74edf76b37db10c2E.exit.i3"
  %.val1.i7.i = phi ptr [ %.sroa.6.sroa.7.sroa.6.sroa.0.0.i, %"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$insta..redaction..Rule$GT$$GT$17h74edf76b37db10c2E.exit.i3" ], [ %i.ti, %bb.hh ]
  %.val.i6.sink.i = phi i64 [ %.sroa.6.sroa.7.sroa.0.0.i, %"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$insta..redaction..Rule$GT$$GT$17h74edf76b37db10c2E.exit.i3" ], [ %i.th, %bb.hh ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i7.i, i64 noundef %.val.i6.sink.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !370
  br label %"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$insta..redaction..Rule$GT$$GT$17h74edf76b37db10c2E.exit97.i"

_ZN4pest12parser_state5state17h7719fb09e6a92622E.exit: ; preds = %"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$insta..redaction..Rule$GT$$GT$17h74edf76b37db10c2E.exit42.i", %bb.hb
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @"_ZN101_$LT$insta..redaction..SelectParser$u20$as$u20$pest..parser..Parser$LT$insta..redaction..Rule$GT$$GT$5parse5rules7visible10WHITESPACE28_$u7b$$u7b$closure$u7d$$u7d$17h8d4f0db533f076ebE"(ptr noalias noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !379, !noundef !17 ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %i.e = load ptr, ptr %i.b, align 8, !alias.scope !381, !nonnull !17, !align !31, !noundef !17 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !381, !noundef !17 ; 8 uses
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
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !382, !noalias !381, !noundef !17
  %i.l = icmp sgt i8 %i.k, -65
  br i1 %i.l, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c, %.split.i.i.i, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d ; 4 uses
  %i.n = icmp samesign eq i64 %i.d, %i.g
  br i1 %i.n, label %_ZN4pest8position8Position13match_char_by17hb76620fadee40675E.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load i8, ptr %i.m, align 1, !noalias !383, !noundef !17 ; 5 uses
  %i.p = icmp sgt i8 %i.o, -1
  br i1 %i.p, label %bb.f, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i": ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.r = and i8 %i.o, 31
  %i.s = zext nneg i8 %i.r to i32                 ; 3 uses
  %i.t = add nuw nsw i64 %i.d, 1
  %i.u = icmp samesign ne i64 %i.t, %i.g
  tail call void @llvm.assume(i1 %i.u)
  %i.v = load i8, ptr %i.q, align 1, !noalias !383, !noundef !17
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
end_hunk_0
begin_hunk_1_@"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h444883732a9a7648E":bb.a
  br label %"_ZN5insta7content13serialization41_$LT$impl$u20$insta..content..Content$GT$6as_key17hf33c3a74e10e08e1E.exit9.i"

bb.ac:                                            ; preds = %tailrecurse.i.i5.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.tr.i.i6.i, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !noalias !5619, !noundef !17
  br label %"_ZN5insta7content13serialization41_$LT$impl$u20$insta..content..Content$GT$6as_key17hf33c3a74e10e08e1E.exit9.i"

bb.ad:                                            ; preds = %tailrecurse.i.i5.i
  %i.br = getelementptr inbounds nuw i8, ptr %.tr.i.i6.i, i64 16
  %i.bs = load i128, ptr %i.br, align 16, !noalias !5619, !noundef !17
  br label %"_ZN5insta7content13serialization41_$LT$impl$u20$insta..content..Content$GT$6as_key17hf33c3a74e10e08e1E.exit9.i"

bb.ae:                                            ; preds = %tailrecurse.i.i5.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.tr.i.i6.i, i64 4
  %i.bu = load float, ptr %i.bt, align 4, !noalias !5619, !noundef !17
  %i.bv = fpext float %i.bu to double
  %i.bw = bitcast double %i.bv to i64
  br label %"_ZN5insta7content13serialization41_$LT$impl$u20$insta..content..Content$GT$6as_key17hf33c3a74e10e08e1E.exit9.i"

bb.af:                                            ; preds = %tailrecurse.i.i5.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.tr.i.i6.i, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !noalias !5619, !noundef !17
  br label %"_ZN5insta7content13serialization41_$LT$impl$u20$insta..content..Content$GT$6as_key17hf33c3a74e10e08e1E.exit9.i"

bb.ag:                                            ; preds = %tailrecurse.i.i5.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.tr.i.i6.i, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !range !56, !noalias !5619, !noundef !17
  %i.cb = zext nneg i32 %i.ca to i64
  br label %"_ZN5insta7content13serialization41_$LT$impl$u20$insta..content..Content$GT$6as_key17hf33c3a74e10e08e1E.exit9.i"

bb.ah:                                            ; preds = %tailrecurse.i.i5.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.tr.i.i6.i, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !5619, !nonnull !17, !noundef !17
  %i.ce = getelementptr inbounds nuw i8, ptr %.tr.i.i6.i, i64 24
  %i.cf = load i64, ptr %i.ce, align 8, !noalias !5619, !noundef !17
  %i.cg = ptrtoint ptr %i.cd to i64
  %.sroa.1510.16.insert.ext12.i = zext i64 %i.cf to i128
  br label %"_ZN5insta7content13serialization41_$LT$impl$u20$insta..content..Content$GT$6as_key17hf33c3a74e10e08e1E.exit9.i"

bb.ai:                                            ; preds = %tailrecurse.i.i5.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.tr.i.i6.i, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !5619, !nonnull !17, !noundef !17
  %i.cj = getelementptr inbounds nuw i8, ptr %.tr.i.i6.i, i64 24
  %i.ck = load i64, ptr %i.cj, align 8, !noalias !5619, !noundef !17
  %i.cl = ptrtoint ptr %i.ci to i64
  %.sroa.1510.16.insert.ext.i = zext i64 %i.ck to i128
  br label %"_ZN5insta7content13serialization41_$LT$impl$u20$insta..content..Content$GT$6as_key17hf33c3a74e10e08e1E.exit9.i"

"_ZN5insta7content13serialization41_$LT$impl$u20$insta..content..Content$GT$6as_key17hf33c3a74e10e08e1E.exit9.i": ; preds = %tailrecurse.i.i5.i, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %.sroa.37.0.i = phi i8 [ undef, %bb.ai ], [ %i.ay, %bb.v ], [ undef, %bb.w ], [ undef, %bb.x ], [ undef, %bb.y ], [ undef, %bb.z ], [ undef, %bb.aa ], [ undef, %bb.ab ], [ undef, %bb.ac ], [ undef, %bb.ad ], [ undef, %bb.ae ], [ undef, %bb.af ], [ undef, %bb.ag ], [ undef, %bb.ah ], [ undef, %tailrecurse.i.i5.i ]
  %.sroa.49.0.i = phi i64 [ %i.cl, %bb.ai ], [ undef, %bb.v ], [ %i.bb, %bb.w ], [ %i.be, %bb.x ], [ %i.bg, %bb.y ], [ undef, %bb.z ], [ %i.bl, %bb.aa ], [ %i.bo, %bb.ab ], [ %i.bq, %bb.ac ], [ undef, %bb.ad ], [ %i.bw, %bb.ae ], [ %i.by, %bb.af ], [ %i.cb, %bb.ag ], [ %i.cg, %bb.ah ], [ undef, %tailrecurse.i.i5.i ]
  %.sroa.1510.0.i = phi i128 [ %.sroa.1510.16.insert.ext.i, %bb.ai ], [ undef, %bb.v ], [ undef, %bb.w ], [ undef, %bb.x ], [ undef, %bb.y ], [ %i.bi, %bb.z ], [ undef, %bb.aa ], [ undef, %bb.ab ], [ undef, %bb.ac ], [ %i.bs, %bb.ad ], [ undef, %bb.ae ], [ undef, %bb.af ], [ undef, %bb.ag ], [ %.sroa.1510.16.insert.ext12.i, %bb.ah ], [ undef, %tailrecurse.i.i5.i ]
  %or.cond.i = phi i1 [ %i.at, %bb.ai ], [ %i.at, %bb.v ], [ %i.at, %bb.w ], [ %i.at, %bb.x ], [ %i.at, %bb.y ], [ %i.at, %bb.z ], [ %i.at, %bb.aa ], [ %i.at, %bb.ab ], [ %i.at, %bb.ac ], [ %i.at, %bb.ad ], [ %i.at, %bb.ae ], [ %i.at, %bb.af ], [ %i.at, %bb.ag ], [ %i.at, %bb.ah ], [ true, %tailrecurse.i.i5.i ]
  %.sink.i7.i = phi i8 [ 7, %bb.ai ], [ 0, %bb.v ], [ 1, %bb.w ], [ 1, %bb.x ], [ 1, %bb.y ], [ 4, %bb.z ], [ 2, %bb.aa ], [ 2, %bb.ab ], [ 2, %bb.ac ], [ 5, %bb.ad ], [ 3, %bb.ae ], [ 3, %bb.af ], [ 1, %bb.ag ], [ 6, %bb.ah ], [ 8, %tailrecurse.i.i5.i ]
  store i8 %.sink.i.i, ptr %i.a, align 16, !noalias !5617
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %.sroa.3.0.i, ptr %.sroa.3.0..sroa_idx.i, align 1, !noalias !5617
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.41.0.i, ptr %.sroa.41.0..sroa_idx.i, align 8, !noalias !5617
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i128 %.sroa.15.0.i, ptr %.sroa.15.0..sroa_idx.i, align 16, !noalias !5617
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i8 %.sink.i7.i, ptr %i.cm, align 16, !noalias !5617
  %.sroa.37.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  store i8 %.sroa.37.0.i, ptr %.sroa.37.0..sroa_idx.i, align 1, !noalias !5617
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.sroa.49.0.i, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !5617
  %.sroa.1510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i128 %.sroa.1510.0.i, ptr %.sroa.1510.0..sroa_idx.i, align 16, !noalias !5617
  br i1 %or.cond.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %"_ZN5insta7content13serialization41_$LT$impl$u20$insta..content..Content$GT$6as_key17hf33c3a74e10e08e1E.exit9.i"
  %i.cn = tail call fastcc noundef i8 @"_ZN65_$LT$insta..content..Content$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h761b9a327945ec58E"(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %1) ; 2 uses
  %.not.i = icmp eq i8 %i.cn, 2
  %..i = select i1 %.not.i, i8 0, i8 %i.cn
  br label %"_ZN5insta7content13serialization41_$LT$impl$u20$insta..content..Content$GT$9sort_maps28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hf09aed2e87040be3E.exit"

bb.ak:                                            ; preds = %"_ZN5insta7content13serialization41_$LT$impl$u20$insta..content..Content$GT$6as_key17hf33c3a74e10e08e1E.exit9.i"
  %i.co = call noundef i8 @"_ZN69_$LT$insta..content..serialization..Key$u20$as$u20$core..cmp..Ord$GT$3cmp17h8c8e35885fc35e8eE"(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.cm), !noalias !5617
  br label %"_ZN5insta7content13serialization41_$LT$impl$u20$insta..content..Content$GT$9sort_maps28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hf09aed2e87040be3E.exit"

"_ZN5insta7content13serialization41_$LT$impl$u20$insta..content..Content$GT$9sort_maps28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hf09aed2e87040be3E.exit": ; preds = %bb.aj, %bb.ak
  %.sroa.0.1.i = phi i8 [ %..i, %bb.aj ], [ %i.co, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5617
  %i.cp = icmp eq i8 %.sroa.0.1.i, -1
  ret i1 %i.cp
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN5alloc6string6String8truncate17hf71e28f22521745fE(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !17 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not = icmp ugt i64 %1, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ne i64 %1, 0
  %.not2 = icmp samesign ult i64 %1, %i.b
  %or.cond = select i1 %i.d, i1 %.not2, i1 false
  br i1 %or.cond, label %bb.d, label %.split

bb.c:                                             ; preds = %.split, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !17, !noundef !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %1
  %i.h = load i8, ptr %i.g, align 1, !noundef !17
  %i.i = icmp sgt i8 %i.h, -65
  br i1 %i.i, label %.split, label %bb.e, !prof !23

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @235, i64 noundef 48, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #54
  unreachable

.split:                                           ; preds = %bb.d, %bb.b
  store i64 %1, ptr %i.a, align 8
  br label %bb.c
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_ZN5alloc7raw_vec11finish_grow17h2eff9c9a35364fbfE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, i64 noundef range(i64 1, -9223372036854775807) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load i64, ptr %i.a, align 8, !range !30, !noundef !17 ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !17 ; 3 uses
  %i.e = icmp eq i64 %i.b, %1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = inttoptr i64 %1 to ptr
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit.thread"

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51
  %i.i = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %1) #51
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit"

bb.f:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %3, align 8, !nonnull !17, !noundef !17
  %i.k = icmp uge i64 %2, %i.d
  tail call void @llvm.assume(i1 %i.k)
  %i.l = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.j, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %1, i64 noundef %2) #51
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit"

bb.g:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %2, 0
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = inttoptr i64 %1 to ptr
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit.thread"

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51
  %i.o = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %1) #51
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit": ; preds = %bb.i, %bb.f, %bb.e
  %.sroa.012.0.i.i.pn = phi ptr [ %i.l, %bb.f ], [ %i.o, %bb.i ], [ %i.i, %bb.e ] ; 2 uses
  %i.p = icmp eq ptr %.sroa.012.0.i.i.pn, null    ; 2 uses
  %i.q = inttoptr i64 %1 to ptr
  %spec.select = select i1 %i.p, ptr %i.q, ptr %.sroa.012.0.i.i.pn
  %spec.select8 = zext i1 %i.p to i64
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit.thread"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit.thread": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit", %bb.h, %bb.d
  %.sroa.012.0.i.i.pn.sink = phi ptr [ %i.h, %bb.d ], [ %spec.select, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit" ], [ %i.n, %bb.h ]
  %storemerge = phi i64 [ 0, %bb.d ], [ %spec.select8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit" ], [ 0, %bb.h ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.012.0.i.i.pn.sink, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.s, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h03df61c740894d99E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = load i64, ptr %0, align 8, !range !20, !noundef !17 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5624)
  %i.d = shl nuw i64 %i.c, 1                      ; 2 uses
  %i.e = tail call i64 @llvm.umax.i64(i64 %i.d, i64 4) ; 4 uses
  %i.f = shl i64 %i.e, 1                          ; 2 uses
  %i.g = or i64 %i.f, %i.e
  %or.cond.i.i.not = icmp sgt i64 %i.g, -1
  br i1 %or.cond.i.i.not, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i, label %bb.d, !prof !25

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5624
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5624
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = icmp eq i64 %i.c, 0
  br i1 %i.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h778ad7e3e477c9e0E.exit.i", label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.val31.i = load ptr, ptr %i.h, align 8, !alias.scope !5624, !nonnull !17, !noundef !17
  store ptr %.val31.i, ptr %i.a, align 8, !alias.scope !5625, !noalias !5624
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !5625, !noalias !5624
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h778ad7e3e477c9e0E.exit.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h778ad7e3e477c9e0E.exit.i": ; preds = %bb.b, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.sink.i.i = phi i64 [ 1, %bb.b ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sink.i.i, ptr %i.j, align 8, !alias.scope !5625, !noalias !5624
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17h2eff9c9a35364fbfE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 1, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a), !noalias !5624
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5624
  %i.k = load i64, ptr %i.b, align 8, !range !44, !noalias !5624, !noundef !17
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h778ad7e3e477c9e0E.exit.i"
  %i.n = load i64, ptr %i.m, align 8, !range !30, !noalias !5624, !noundef !17
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noalias !5624
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5624
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.6.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.p, %bb.c ]
  %.sroa.04.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.n, %bb.c ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.04.0.i.ph, i64 %.sroa.6.0.i.ph, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #54
  unreachable

bb.e:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h778ad7e3e477c9e0E.exit.i"
  %i.q = load ptr, ptr %i.m, align 8, !noalias !5624, !nonnull !17, !noundef !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5624
  store ptr %i.q, ptr %i.h, align 8, !alias.scope !5624
  %2 = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %2)
  store i64 %i.e, ptr %0, align 8, !alias.scope !5624
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h09eb233f299a52c0E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = load i64, ptr %0, align 8, !range !20, !noundef !17 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5630)
  %i.d = shl nuw i64 %i.c, 1
  %i.e = tail call i64 @llvm.umax.i64(i64 %i.d, i64 4) ; 2 uses
  %i.f = mul i64 %i.e, 40
  %or.cond.i.i = icmp samesign ugt i64 %i.c, 115292150460684697
  br i1 %or.cond.i.i, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i, !prof !15

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5630
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5630
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = icmp eq i64 %i.c, 0
  br i1 %i.h, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h778ad7e3e477c9e0E.exit.i", label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.val31.i = load ptr, ptr %i.g, align 8, !alias.scope !5630, !nonnull !17, !noundef !17
  %i.i = mul nuw nsw i64 %i.c, 40
  store ptr %.val31.i, ptr %i.a, align 8, !alias.scope !5631, !noalias !5630
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !5631, !noalias !5630
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h778ad7e3e477c9e0E.exit.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h778ad7e3e477c9e0E.exit.i": ; preds = %bb.b, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.sink.i.i = phi i64 [ 8, %bb.b ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sink.i.i, ptr %i.j, align 8, !alias.scope !5631, !noalias !5630
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17h2eff9c9a35364fbfE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 8, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a), !noalias !5630
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5630
  %i.k = load i64, ptr %i.b, align 8, !range !44, !noalias !5630, !noundef !17
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h778ad7e3e477c9e0E.exit.i"
  %i.n = load i64, ptr %i.m, align 8, !range !30, !noalias !5630, !noundef !17
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noalias !5630
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5630
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.6.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.p, %bb.c ]
  %.sroa.04.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.n, %bb.c ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.04.0.i.ph, i64 %.sroa.6.0.i.ph, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #54
  unreachable

bb.e:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h778ad7e3e477c9e0E.exit.i"
  %i.q = load ptr, ptr %i.m, align 8, !noalias !5630, !nonnull !17, !noundef !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5630
  store ptr %i.q, ptr %i.g, align 8, !alias.scope !5630
  store i64 %i.e, ptr %0, align 8, !alias.scope !5630
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h182e1fad708ddfe7E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = load i64, ptr %0, align 8, !range !20, !noundef !17 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5636)
  %i.d = shl nuw i64 %i.c, 1
  %i.e = tail call i64 @llvm.umax.i64(i64 %i.d, i64 4) ; 2 uses
  %i.f = shl i64 %i.e, 5                          ; 2 uses
  %i.g = icmp samesign ugt i64 %i.c, 288230376151711743
  %i.h = icmp ugt i64 %i.f, 9223372036854775800
  %or.cond.i.i = select i1 %i.g, i1 true, i1 %i.h, !prof !15
  br i1 %or.cond.i.i, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i, !prof !15

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5636
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5636
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = icmp eq i64 %i.c, 0
  br i1 %i.j, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h778ad7e3e477c9e0E.exit.i", label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.val31.i = load ptr, ptr %i.i, align 8, !alias.scope !5636, !nonnull !17, !noundef !17
  %i.k = shl nuw nsw i64 %i.c, 5
  store ptr %.val31.i, ptr %i.a, align 8, !alias.scope !5637, !noalias !5636
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.k, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !5637, !noalias !5636
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h778ad7e3e477c9e0E.exit.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h778ad7e3e477c9e0E.exit.i": ; preds = %bb.b, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.sink.i.i = phi i64 [ 8, %bb.b ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sink.i.i, ptr %i.l, align 8, !alias.scope !5637, !noalias !5636
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17h2eff9c9a35364fbfE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 8, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a), !noalias !5636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5636
  %i.m = load i64, ptr %i.b, align 8, !range !44, !noalias !5636, !noundef !17
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h778ad7e3e477c9e0E.exit.i"
  %i.p = load i64, ptr %i.o, align 8, !range !30, !noalias !5636, !noundef !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load i64, ptr %i.q, align 8, !noalias !5636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5636
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.6.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.r, %bb.c ]
  %.sroa.04.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.p, %bb.c ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.04.0.i.ph, i64 %.sroa.6.0.i.ph, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #54
  unreachable

bb.e:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h778ad7e3e477c9e0E.exit.i"
  %i.s = load ptr, ptr %i.o, align 8, !noalias !5636, !nonnull !17, !noundef !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5636
  store ptr %i.s, ptr %i.i, align 8, !alias.scope !5636
  store i64 %i.e, ptr %0, align 8, !alias.scope !5636
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h21eb156589dec202E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = load i64, ptr %0, align 8, !range !20, !noundef !17 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5642)
  %i.d = shl nuw i64 %i.c, 1
  %i.e = tail call i64 @llvm.umax.i64(i64 %i.d, i64 4) ; 2 uses
  %i.f = mul i64 %i.e, 24
  %or.cond.i.i = icmp samesign ugt i64 %i.c, 192153584101141162
  br i1 %or.cond.i.i, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i, !prof !15

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5642
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = icmp eq i64 %i.c, 0
  br i1 %i.h, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h778ad7e3e477c9e0E.exit.i", label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.val31.i = load ptr, ptr %i.g, align 8, !alias.scope !5642, !nonnull !17, !noundef !17
  %i.i = mul nuw nsw i64 %i.c, 24
  store ptr %.val31.i, ptr %i.a, align 8, !alias.scope !5643, !noalias !5642
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !5643, !noalias !5642
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h778ad7e3e477c9e0E.exit.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h778ad7e3e477c9e0E.exit.i": ; preds = %bb.b, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.sink.i.i = phi i64 [ 8, %bb.b ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sink.i.i, ptr %i.j, align 8, !alias.scope !5643, !noalias !5642
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17h2eff9c9a35364fbfE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 8, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a), !noalias !5642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5642
  %i.k = load i64, ptr %i.b, align 8, !range !44, !noalias !5642, !noundef !17
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h778ad7e3e477c9e0E.exit.i"
  %i.n = load i64, ptr %i.m, align 8, !range !30, !noalias !5642, !noundef !17
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noalias !5642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5642
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.6.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.p, %bb.c ]
  %.sroa.04.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.n, %bb.c ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.04.0.i.ph, i64 %.sroa.6.0.i.ph, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #54
  unreachable

bb.e:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h778ad7e3e477c9e0E.exit.i"
  %i.q = load ptr, ptr %i.m, align 8, !noalias !5642, !nonnull !17, !noundef !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5642
  store ptr %i.q, ptr %i.g, align 8, !alias.scope !5642
  store i64 %i.e, ptr %0, align 8, !alias.scope !5642
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h297addfbdf2101a4E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = load i64, ptr %0, align 8, !range !20, !noundef !17 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5648)
  %i.d = shl nuw i64 %i.c, 1
  %i.e = tail call i64 @llvm.umax.i64(i64 %i.d, i64 4) ; 2 uses
  %i.f = mul i64 %i.e, 80
  %or.cond.i.i = icmp samesign ugt i64 %i.c, 57646075230342348
  br i1 %or.cond.i.i, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i, !prof !15

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i: ; preds = %bb.a
end_hunk_1
