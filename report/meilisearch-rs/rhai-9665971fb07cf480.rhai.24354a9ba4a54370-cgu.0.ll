Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/rhai-9665971fb07cf480.rhai.24354a9ba4a54370-cgu.0?download=true
inline.NumInlined: 22837
inline.NumDeleted: 6491
loop-unroll.NumCompletelyUnrolled: 109
loop-unroll.NumRuntimeUnrolled: 148
loop-unroll.NumUnrolled: 257
begin_hunk_0_@"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$10parse_stmt17h2907d6ea8753547bE":bb.a
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !41197
  %i.px = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !41197 ; 3 uses
  %i.py = icmp eq ptr %i.px, null
  br i1 %i.py, label %bb.cq, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h517742f9c40b3acdE.exit", !prof !63

bb.cq:                                            ; preds = %bb.cp
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #70
          to label %.noexc1466 unwind label %bb.cr

.noexc1466:                                       ; preds = %bb.cq
  unreachable

bb.cr:                                            ; preds = %bb.cq
  %i.pz = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.pt) #72
          to label %common.resume1494 unwind label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.qa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h517742f9c40b3acdE.exit": ; preds = %bb.cp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.px, ptr noundef nonnull align 8 dereferenceable(16) %i.pt, i64 16, i1 false)
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 13, ptr %i.qb, align 8
  %.sroa.487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.02.0.i, ptr %.sroa.487.0..sroa_idx, align 1
  %.sroa.588.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i32 %.sroa.41480.0.copyload, ptr %.sroa.588.0..sroa_idx, align 2
  %.sroa.791.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.px, ptr %.sroa.791.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$15parse_try_catch17h59c746056825ecb9E.exit"

bb.ct:                                            ; preds = %bb.co, %bb.cw
  %i.qc = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

bb.cu:                                            ; preds = %.noexc686, %bb.cn
  %i.qd = phi i32 [ %.pre.i685, %.noexc686 ], [ %i.pw, %bb.cn ]
  %.not579 = icmp eq i32 %i.qd, 86
  br i1 %.not579, label %bb.cw, label %bb.cv, !prof !71

bb.cv:                                            ; preds = %bb.cu
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pu, i64 240
  %i.qf = load i16, ptr %i.qe, align 8, !noundef !60
  %i.qg = icmp eq i16 %i.qf, %i.pc
  br i1 %i.qg, label %bb.cx, label %bb.cy

bb.cw:                                            ; preds = %bb.cu
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1243) #70
          to label %bb.bv unwind label %bb.ct

bb.cx:                                            ; preds = %bb.cv
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pu, i64 242
  %i.qi = load i16, ptr %i.qh, align 2, !noundef !60
  %i.qj = icmp eq i16 %i.qi, %i.pe
  br i1 %i.qj, label %.critedge636, label %bb.cy

bb.cy:                                            ; preds = %bb.cv, %bb.cx
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0851.0.copyload, ptr %i.qk, align 8
  %.sroa.4857.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6853.0.copyload, ptr %.sroa.4857.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$15parse_try_catch17h59c746056825ecb9E.exit"

.critedge636:                                     ; preds = %bb.cx
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 13, ptr %i.ql, align 8
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.02.0.i, ptr %.sroa.495.0..sroa_idx, align 1
  %.sroa.596.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i32 %.sroa.41480.0.copyload, ptr %.sroa.596.0..sroa_idx, align 2
  %.sroa.799.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.799.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0851.0.copyload) ]
  tail call fastcc void @"_ZN4core3ptr57drop_in_place$LT$rhai..types..parse_error..ParseError$GT$17h02f1ef1c73905fb1E"(ptr %.sroa.0851.0.copyload)
  br label %"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$15parse_try_catch17h59c746056825ecb9E.exit"

bb.cz:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fb)
  store i64 34, ptr %i.fb, align 8
  call void @"_ZN4rhai6parser58_$LT$impl$u20$rhai..types..parse_error..ParseErrorType$GT$8into_err17he5d999a47a55ea69E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.fc, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.fb, i16 noundef %i.ha, i16 noundef %i.hc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fb)
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.qn = load <2 x i64>, ptr %i.fc, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fc)
  store <2 x i64> %i.qn, ptr %i.qm, align 8
  store i64 1, ptr %0, align 8
  br label %"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$15parse_try_catch17h59c746056825ecb9E.exit"

bb.da:                                            ; preds = %bb.x
  %i.qo = add i64 %i.jl, 1
  %i.qp = getelementptr inbounds nuw i8, ptr %3, i64 22
  %i.qq = load i8, ptr %i.qp, align 2, !noundef !60
  %i.qr = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.qs = load i16, ptr %i.qr, align 4, !noundef !60
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41199)
  %i.qt = load ptr, ptr %2, align 8, !alias.scope !41199, !nonnull !60, !align !61, !noundef !60 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41200)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !41201
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 224 ; 2 uses
  %.sroa.0.0.copyload.i.i1467 = load i32, ptr %i.qu, align 8, !alias.scope !41200, !noalias !41202 ; 3 uses
  store i32 87, ptr %i.qu, align 8, !alias.scope !41200, !noalias !41202
  %.not.i113.i = icmp eq i32 %.sroa.0.0.copyload.i.i1467, 87
  br i1 %.not.i113.i, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %.sroa.5.0..sroa_idx.i.i1468 = getelementptr inbounds nuw i8, ptr %i.qt, i64 228
  %.sroa.4.0..sroa_idx.i.i1469 = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4.0..sroa_idx.i.i1469, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..sroa_idx.i.i1468, i64 20, i1 false), !noalias !41203
  store i32 %.sroa.0.0.copyload.i.i1467, ptr %i.d, align 8, !noalias !41201
  br label %bb.dd

bb.dc:                                            ; preds = %bb.da
  call void @"_ZN89_$LT$rhai..tokenizer..TokenIterator$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc956a9b882b5a932E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(248) %i.qt), !noalias !41203, !inline_history !40960
  %.pr.i = load i32, ptr %i.d, align 8, !noalias !41201
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.qv = phi i32 [ %.pr.i, %bb.dc ], [ %.sroa.0.0.copyload.i.i1467, %bb.db ]
  %.not6.i.i1470 = icmp eq i32 %i.qv, 86
  br i1 %.not6.i.i1470, label %bb.de, label %_ZN4rhai6parser9eat_token17h748fc12e2bd8feeaE.exit.i1471, !prof !71

bb.de:                                            ; preds = %bb.dd
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1454) #70, !noalias !41203, !inline_history !40960
  unreachable

_ZN4rhai6parser9eat_token17h748fc12e2bd8feeaE.exit.i1471: ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !41201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !noalias !41201
  %i.qw = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.qx = load i16, ptr %i.qw, align 8, !noalias !41201, !noundef !60 ; 4 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.d, i64 18
  %i.qz = load i16, ptr %i.qy, align 2, !noalias !41201, !noundef !60 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !41201
  call void @"_ZN4core3ptr43drop_in_place$LT$rhai..tokenizer..Token$GT$17ha4e996b9761910c4E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e), !noalias !41203, !inline_history !40960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !41201
  %or.cond.i.i = icmp ult i64 %i.jm, %i.qo
  br i1 %or.cond.i.i, label %bb.df, label %bb.dg, !prof !73

bb.df:                                            ; preds = %_ZN4rhai6parser9eat_token17h748fc12e2bd8feeaE.exit.i1471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !41204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !41204
  store i64 34, ptr %i.a, align 8, !noalias !41204
  call void @"_ZN4rhai6parser58_$LT$impl$u20$rhai..types..parse_error..ParseErrorType$GT$8into_err17he5d999a47a55ea69E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a, i16 noundef %i.ha, i16 noundef %i.hc), !noalias !41205, !inline_history !40960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !41204
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.rb = load <2 x i64>, ptr %i.b, align 16, !noalias !41204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !41204
  store <2 x i64> %i.rb, ptr %i.ra, align 8, !alias.scope !41198
  store i64 1, ptr %0, align 8, !alias.scope !41198
  br label %"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$15parse_try_catch17h59c746056825ecb9E.exit"

bb.dg:                                            ; preds = %_ZN4rhai6parser9eat_token17h748fc12e2bd8feeaE.exit.i1471
  %i.rc = add i64 %i.jl, 2                        ; 2 uses
  %.sroa.11.20.insert.ext.i.i = zext i16 %i.qs to i32
  %.sroa.11.22.insert.ext.i.i = zext i8 %i.qq to i32
  %.sroa.11.22.insert.shift.i.i = shl nuw nsw i32 %.sroa.11.22.insert.ext.i.i, 16
  %.sroa.11.22.insert.insert.i.i = or disjoint i32 %.sroa.11.22.insert.shift.i.i, %.sroa.11.20.insert.ext.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !41202
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i), !noalias !41202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !41202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !41202
  store i64 %i.rc, ptr %i.k, align 8, !noalias !41202
  %.sroa.01.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.jj, ptr %.sroa.01.sroa.3.0..sroa_idx.i, align 8, !noalias !41202
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i16 %i.qx, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !41202
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 18
  store i16 %i.qz, ptr %.sroa.56.0..sroa_idx.i, align 2, !noalias !41202
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  store i32 %.sroa.11.22.insert.insert.i.i, ptr %.sroa.7.0..sroa_idx.i, align 4, !noalias !41202
  call fastcc void @"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$11parse_block17h3edac4abab9a228aE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ac, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(96) %2, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !41202
  %i.rd = load i64, ptr %i.ac, align 8, !range !68, !noalias !41202, !noundef !60
  %i.re = trunc nuw i64 %i.rd to i1
  %i.rf = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %i.rf, i64 16, i1 false), !noalias !41202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !41202
  br i1 %i.re, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rg, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false), !noalias !41206
  store i64 1, ptr %0, align 8, !alias.scope !41198
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i), !noalias !41202
  br label %bb.gn

bb.di:                                            ; preds = %bb.dg
  %.sroa.01482.0.copyload = load i8, ptr %.sroa.5.i, align 8, !noalias !41202
  %.sroa.41484.0..sroa.5.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5.i, i64 2
  %4 = load <1 x i32>, ptr %.sroa.41484.0..sroa.5.i.sroa_idx, align 2, !noalias !41202
  %.sroa.61487.0..sroa.5.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5.i, i64 8
  %.sroa.61487.0.copyload = load ptr, ptr %.sroa.61487.0..sroa.5.i.sroa_idx, align 8, !noalias !41202 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41207)
  switch i8 %.sroa.01482.0.copyload, label %bb.dj [
    i8 0, label %bb.dk
    i8 9, label %.thread.i.i
  ]

bb.dj:                                            ; preds = %bb.di
  %i.rh = invoke { i16, i16 } @_ZN4rhai3ast4stmt4Stmt8position17h00f99734812725e4E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.5.i)
          to label %bb.dl unwind label %bb.dm, !noalias !41203, !inline_history !40960 ; 2 uses

.thread.i.i:                                      ; preds = %bb.di
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.61487.0.copyload) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ad, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.61487.0.copyload, i64 144, i1 false), !noalias !41208
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.61487.0.copyload, i64 noundef 144, i64 noundef 8) #71, !noalias !41209, !inline_history !40960
  br label %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit.i"

bb.dk:                                            ; preds = %bb.di
  %.sroa.4.0..sroa_idx.i138.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 128
  store i64 0, ptr %.sroa.4.0..sroa_idx.i138.i, align 8, !alias.scope !41207, !noalias !41202
  %i.ri = getelementptr inbounds nuw i8, ptr %i.ad, i64 136
  %5 = shufflevector <1 x i32> %4, <1 x i32> poison, <2 x i32> zeroinitializer
  store <2 x i32> %5, ptr %i.ri, align 8, !alias.scope !41207, !noalias !41202
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..stmt..Stmt$GT$17h8c7cea9300790c9cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %.sroa.5.i), !noalias !41203, !inline_history !40960
  br label %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit.i"

bb.dl:                                            ; preds = %bb.dj
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !41209, !inline_history !40960
  %i.rj = extractvalue { i16, i16 } %i.rh, 1
  %i.rk = extractvalue { i16, i16 } %i.rh, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false), !noalias !41202
  %.sroa.4.0..sroa_idx29.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 128
  store i64 1, ptr %.sroa.4.0..sroa_idx29.i.i, align 8, !alias.scope !41207, !noalias !41202
  %i.rl = getelementptr inbounds nuw i8, ptr %i.ad, i64 136
  store i16 %i.rk, ptr %i.rl, align 8, !alias.scope !41207, !noalias !41202
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 138
  store i16 %i.rj, ptr %.sroa.44.0..sroa_idx.i.i, align 2, !alias.scope !41207, !noalias !41202
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 140
  store i16 0, ptr %.sroa.55.0..sroa_idx.i.i, align 4, !alias.scope !41207, !noalias !41202
  %.sroa.66.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 142
  store i16 0, ptr %.sroa.66.0..sroa_idx.i.i, align 2, !alias.scope !41207, !noalias !41202
  br label %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit.i"

bb.dm:                                            ; preds = %bb.dj
  %i.rm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..stmt..Stmt$GT$17h8c7cea9300790c9cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %.sroa.5.i) #72
          to label %common.resume1494 unwind label %bb.dn, !noalias !41203, !inline_history !40960

bb.dn:                                            ; preds = %bb.dm
  %i.rn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !41209, !inline_history !40960
  unreachable

"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit.i": ; preds = %bb.dl, %bb.dk, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i), !noalias !41202
  %i.ro = load ptr, ptr %2, align 8, !alias.scope !41199, !nonnull !60, !align !61, !noundef !60
  %i.rp = invoke fastcc i48 @_ZN4rhai6parser11match_token17h0c04483dc30cfa23E(ptr noalias noundef align 8 dereferenceable(248) %i.ro, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) @1373)
          to label %bb.do unwind label %bb.ej, !noalias !41203, !inline_history !40960 ; 3 uses

.body118.i:                                       ; preds = %bb.gl, %.thread235.i
  br i1 %.sroa.085.2239.i, label %.thread.i, label %common.resume1494

bb.do:                                            ; preds = %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit.i"
  %.sroa.095.2.extract.shift.i = lshr i48 %i.rp, 16
  %.sroa.095.2.extract.trunc.i = trunc i48 %.sroa.095.2.extract.shift.i to i16
  %.sroa.095.4.extract.shift.i = lshr i48 %i.rp, 32
  %.sroa.095.4.extract.trunc.i = trunc nuw i48 %.sroa.095.4.extract.shift.i to i16
  %i.rq = trunc i48 %i.rp to i1
  br i1 %i.rq, label %bb.dt, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !41202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !41202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !41202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !41202
  store i32 69, ptr %i.y, align 8, !noalias !41202
  invoke fastcc void @"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hed1e3aadb7a44a63E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.y)
          to label %bb.dr unwind label %bb.dq, !noalias !41203, !inline_history !40960

bb.dq:                                            ; preds = %bb.dp
  %i.rr = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr43drop_in_place$LT$rhai..tokenizer..Token$GT$17ha4e996b9761910c4E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y) #72
          to label %.thread.i unwind label %bb.ds, !noalias !41210, !inline_history !40960

bb.dr:                                            ; preds = %bb.dp
  invoke void @"_ZN4core3ptr43drop_in_place$LT$rhai..tokenizer..Token$GT$17ha4e996b9761910c4E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y)
          to label %"_ZN4rhai9tokenizer101_$LT$impl$u20$core..convert..From$LT$rhai..tokenizer..Token$GT$$u20$for$u20$alloc..string..String$GT$4from17hce2618d7b645fb9fE.exit120.i" unwind label %bb.ej, !noalias !41203, !inline_history !40960

bb.ds:                                            ; preds = %bb.dq
  %i.rs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !41210, !inline_history !40960
  unreachable

bb.dt:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !41202
  %i.rt = load ptr, ptr %2, align 8, !alias.scope !41199, !nonnull !60, !align !61, !noundef !60
  %i.ru = invoke fastcc i48 @_ZN4rhai6parser11match_token17h0c04483dc30cfa23E(ptr noalias noundef align 8 dereferenceable(248) %i.rt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) @1333)
          to label %bb.eb unwind label %bb.ej, !noalias !41203, !inline_history !40960

"_ZN4rhai9tokenizer101_$LT$impl$u20$core..convert..From$LT$rhai..tokenizer..Token$GT$$u20$for$u20$alloc..string..String$GT$4from17hce2618d7b645fb9fE.exit120.i": ; preds = %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !41202
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !41211, !inline_history !40960
  %i.rv = call noundef dereferenceable_or_null(23) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 23, i64 noundef range(i64 1, 9) 1) #71, !noalias !41211, !inline_history !40960 ; 3 uses
  %i.rw = icmp eq ptr %i.rv, null
  br i1 %i.rw, label %bb.du, label %bb.dx

bb.du:                                            ; preds = %"_ZN4rhai9tokenizer101_$LT$impl$u20$core..convert..From$LT$rhai..tokenizer..Token$GT$$u20$for$u20$alloc..string..String$GT$4from17hce2618d7b645fb9fE.exit120.i"
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 23, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @3069) #70
          to label %.noexc142.i unwind label %bb.dv, !noalias !41203, !inline_history !40960

.noexc142.i:                                      ; preds = %bb.du
  unreachable

bb.dv:                                            ; preds = %bb.du
  %i.rx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41212)
  call void @llvm.experimental.noalias.scope.decl(metadata !41213)
  %.val.i.i.i = load i64, ptr %i.z, align 8, !range !70, !alias.scope !41214, !noalias !41202, !noundef !60 ; 2 uses
  %i.ry = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ry, label %.thread.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.rz = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.val1.i.i.i = load ptr, ptr %i.rz, align 8, !alias.scope !41214, !noalias !41202, !nonnull !60, !noundef !60
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !41215, !inline_history !40960
  br label %.thread.i

bb.dx:                                            ; preds = %"_ZN4rhai9tokenizer101_$LT$impl$u20$core..convert..From$LT$rhai..tokenizer..Token$GT$$u20$for$u20$alloc..string..String$GT$4from17hce2618d7b645fb9fE.exit120.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.rv, ptr noundef nonnull align 1 dereferenceable(23) @1374, i64 23, i1 false), !noalias !41216
  %i.sa = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sa, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !41202
  %i.sb = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store i64 23, ptr %i.sb, align 8, !noalias !41202
  %.sroa.4209.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store ptr %i.rv, ptr %.sroa.4209.0..sroa_idx.i, align 8, !noalias !41202
  %.sroa.5210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store i64 23, ptr %.sroa.5210.0..sroa_idx.i, align 8, !noalias !41202
  store i64 3, ptr %i.aa, align 8, !noalias !41202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !41202
  invoke void @"_ZN4rhai6parser58_$LT$impl$u20$rhai..types..parse_error..ParseErrorType$GT$8into_err17he5d999a47a55ea69E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ab, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.aa, i16 noundef %.sroa.095.2.extract.trunc.i, i16 noundef %.sroa.095.4.extract.trunc.i)
          to label %bb.dy unwind label %bb.ej, !noalias !41203, !inline_history !40960

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !41202
  %i.sc = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sc, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false), !noalias !41206
  store i64 1, ptr %0, align 8, !alias.scope !41198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !41202
  br label %bb.dz

bb.dz:                                            ; preds = %"_ZN4core3ptr44drop_in_place$LT$rhai..ast..ident..Ident$GT$17hbc8d83296ceba044E.exit.i", %bb.dy
  call fastcc void @"_ZN69_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b307487833700cdE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(144) %i.ad), !noalias !41203, !inline_history !40980
  br label %bb.gn

bb.ea:                                            ; preds = %.thread.i, %bb.gm, %.thread228.i, %bb.gl, %.loopexit.split-lp.loopexit.split-lp.i, %bb.fd
  %i.sd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !41203, !inline_history !40960
  unreachable

bb.eb:                                            ; preds = %bb.dt
  %i.se = trunc i48 %i.ru to i1
  br i1 %i.se, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.sf = invoke fastcc noundef nonnull ptr @_ZN4rhai6engine6Engine19get_interned_string17heaefd3ff7337519aE(ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
          to label %bb.ee unwind label %bb.ej, !noalias !41203, !inline_history !40960 ; 2 uses

bb.ed:                                            ; preds = %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.521.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !41202
  %i.sg = load ptr, ptr %2, align 8, !alias.scope !41199, !nonnull !60, !align !61, !noundef !60
  invoke fastcc void @_ZN4rhai6parser14parse_var_name17h7f6c9926177a0e2dE(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.v, ptr noalias noundef align 8 dereferenceable(248) %i.sg)
          to label %bb.eg unwind label %bb.ej, !noalias !41203, !inline_history !40960

bb.ee:                                            ; preds = %bb.ec
  store ptr %i.sf, ptr %i.x, align 8, !noalias !41202
  %i.sh = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i16 0, ptr %i.sh, align 8, !noalias !41202
  %i.si = getelementptr inbounds nuw i8, ptr %i.x, i64 10
  store i16 0, ptr %i.si, align 2, !noalias !41202
  br label %bb.ef

bb.ef:                                            ; preds = %bb.fe, %bb.ee
  %i.sj = phi i16 [ %.sroa.691.0.copyload.i, %bb.fe ], [ 0, %bb.ee ] ; 2 uses
  %i.sk = phi i16 [ %.sroa.590.0.copyload.i, %bb.fe ], [ 0, %bb.ee ] ; 2 uses
  %i.sl = phi ptr [ %i.sv, %bb.fe ], [ %i.sf, %bb.ee ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !41202
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.527.i), !noalias !41202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !41202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !41202
  store i64 %i.rc, ptr %i.j, align 8, !noalias !41202
  %.sroa.01.sroa.3.0..sroa_idx197.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.jj, ptr %.sroa.01.sroa.3.0..sroa_idx197.i, align 8, !noalias !41202
  %.sroa.3.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i16 %i.qx, ptr %.sroa.3.0..sroa_idx2.i, align 8, !noalias !41202
  %.sroa.56.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.j, i64 18
  store i16 %i.qz, ptr %.sroa.56.0..sroa_idx7.i, align 2, !noalias !41202
  %.sroa.7.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  store i32 %.sroa.11.22.insert.insert.i.i, ptr %.sroa.7.0..sroa_idx11.i, align 4, !noalias !41202
  invoke fastcc void @"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$11parse_block17h3edac4abab9a228aE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.n, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(96) %2, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.j)
          to label %bb.fg unwind label %bb.ff

bb.eg:                                            ; preds = %bb.ed
  %i.sm = load i64, ptr %i.v, align 8, !range !68, !noalias !41202, !noundef !60
  %i.sn = trunc nuw i64 %i.sm to i1
  %i.so = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  br i1 %i.sn, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.521.i, ptr noundef nonnull align 8 dereferenceable(16) %i.so, i64 16, i1 false), !noalias !41202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !41202
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sp, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.521.i, i64 16, i1 false), !noalias !41206
  store i64 1, ptr %0, align 8, !alias.scope !41198
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.521.i)
  br label %"_ZN4core3ptr44drop_in_place$LT$rhai..ast..ident..Ident$GT$17hbc8d83296ceba044E.exit.i"

end_hunk_0
begin_hunk_1_@"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$10parse_stmt17h2907d6ea8753547bE":bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !41202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !41202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !41202
  store i32 9, ptr %i.r, align 8, !noalias !41202
  invoke fastcc void @"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hed1e3aadb7a44a63E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.r)
          to label %bb.en unwind label %bb.em, !noalias !41203, !inline_history !40960

bb.em:                                            ; preds = %bb.el
  %i.st = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr43drop_in_place$LT$rhai..tokenizer..Token$GT$17ha4e996b9761910c4E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r) #72
          to label %.thread228.i unwind label %bb.eo, !noalias !41217, !inline_history !40960

bb.en:                                            ; preds = %bb.el
  invoke void @"_ZN4core3ptr43drop_in_place$LT$rhai..tokenizer..Token$GT$17ha4e996b9761910c4E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r)
          to label %"_ZN4rhai9tokenizer101_$LT$impl$u20$core..convert..From$LT$rhai..tokenizer..Token$GT$$u20$for$u20$alloc..string..String$GT$4from17hce2618d7b645fb9fE.exit.i1476" unwind label %.thread232.i, !noalias !41203, !inline_history !40960

bb.eo:                                            ; preds = %bb.em
  %i.su = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !41217, !inline_history !40960
  unreachable

bb.ep:                                            ; preds = %bb.ek
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !41202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !41202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !noalias !41202
  %i.sv = invoke fastcc noundef nonnull ptr @_ZN4rhai6engine6Engine19get_interned_string17h3d1f80e19b203d70E(ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p)
          to label %bb.ev unwind label %bb.ej, !noalias !41203, !inline_history !40960 ; 6 uses

"_ZN4rhai9tokenizer101_$LT$impl$u20$core..convert..From$LT$rhai..tokenizer..Token$GT$$u20$for$u20$alloc..string..String$GT$4from17hce2618d7b645fb9fE.exit.i1476": ; preds = %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !41202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !41202
  invoke fastcc void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1375, i64 noundef 29)
          to label %bb.es unwind label %bb.eq, !noalias !41203, !inline_history !40960

bb.eq:                                            ; preds = %"_ZN4rhai9tokenizer101_$LT$impl$u20$core..convert..From$LT$rhai..tokenizer..Token$GT$$u20$for$u20$alloc..string..String$GT$4from17hce2618d7b645fb9fE.exit.i1476"
  %i.sw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41218)
  call void @llvm.experimental.noalias.scope.decl(metadata !41219)
  %.val.i.i143.i = load i64, ptr %i.s, align 8, !range !70, !alias.scope !41220, !noalias !41202, !noundef !60 ; 2 uses
  %i.sx = icmp eq i64 %.val.i.i143.i, 0
  br i1 %i.sx, label %.thread228.i, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.sy = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val1.i.i144.i = load ptr, ptr %i.sy, align 8, !alias.scope !41220, !noalias !41202, !nonnull !60, !noundef !60
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i144.i, i64 noundef %.val.i.i143.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !41221, !inline_history !40960
  br label %.thread228.i

bb.es:                                            ; preds = %"_ZN4rhai9tokenizer101_$LT$impl$u20$core..convert..From$LT$rhai..tokenizer..Token$GT$$u20$for$u20$alloc..string..String$GT$4from17hce2618d7b645fb9fE.exit.i1476"
  %i.sz = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sz, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !41202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !41202
  %i.ta = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ta, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !41202
  store i64 3, ptr %i.t, align 8, !noalias !41202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !41202
  invoke void @"_ZN4rhai6parser58_$LT$impl$u20$rhai..types..parse_error..ParseErrorType$GT$8into_err17he5d999a47a55ea69E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.u, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.t, i16 noundef %.sroa.099.2.extract.trunc.i, i16 noundef %.sroa.099.4.extract.trunc.i)
          to label %bb.et unwind label %.thread232.i, !noalias !41203, !inline_history !40960

bb.et:                                            ; preds = %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !41202
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tb, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !noalias !41206
  store i64 1, ptr %0, align 8, !alias.scope !41198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !41202
  %i.tc = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w)
          to label %.noexc146.i unwind label %bb.ej, !noalias !41203, !inline_history !40960

.noexc146.i:                                      ; preds = %bb.et
  br i1 %i.tc, label %"_ZN4core3ptr85drop_in_place$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$17h3ebc508e0d306a65E.exit.i", label %bb.eu

bb.eu:                                            ; preds = %.noexc146.i
  invoke void @"_ZN73_$LT$smartstring..boxed..BoxedString$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f1af6f1d0a8e3b0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %"_ZN4core3ptr85drop_in_place$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$17h3ebc508e0d306a65E.exit.i" unwind label %bb.ej, !noalias !41203, !inline_history !40960

"_ZN4core3ptr85drop_in_place$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$17h3ebc508e0d306a65E.exit.i": ; preds = %bb.eu, %.noexc146.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !41202
  br label %"_ZN4core3ptr44drop_in_place$LT$rhai..ast..ident..Ident$GT$17hbc8d83296ceba044E.exit.i"

bb.ev:                                            ; preds = %bb.ep
  store ptr %i.sv, ptr %i.q, align 8, !noalias !41202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !41202
  %i.td = atomicrmw add ptr %i.sv, i64 1 monotonic, align 8, !noalias !41203
  %i.te = icmp slt i64 %i.td, 0
  br i1 %i.te, label %bb.fb, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.tf = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !41222
  invoke fastcc void @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h08c594d0c244b78dE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull %i.sv)
          to label %.noexc111.i unwind label %bb.fc, !noalias !41203, !inline_history !40960

.noexc111.i:                                      ; preds = %bb.ew
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !41222
  store i64 1, ptr %i.f, align 8, !noalias !41222
  %i.tg = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.tg, align 8, !noalias !41222
  %i.th = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.th, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !41222
  %i.ti = invoke fastcc noundef ptr @_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E(i64 noundef 40, i64 noundef 8)
          to label %bb.fa unwind label %bb.ex, !noalias !41223, !inline_history !40960 ; 2 uses

bb.ex:                                            ; preds = %.noexc111.i
  %i.tj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tk = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.th)
          to label %.noexc148.i unwind label %bb.ez, !noalias !41203, !inline_history !40960

.noexc148.i:                                      ; preds = %bb.ex
  br i1 %i.tk, label %.body.i1477, label %bb.ey

bb.ey:                                            ; preds = %.noexc148.i
  invoke void @"_ZN73_$LT$smartstring..boxed..BoxedString$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f1af6f1d0a8e3b0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.th)
          to label %.body.i1477 unwind label %bb.ez, !noalias !41203, !inline_history !40960

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  %i.tl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !41203, !inline_history !40960
  unreachable

bb.fa:                                            ; preds = %.noexc111.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ti, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false), !noalias !41203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !41222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !41222
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !41222
  store i8 0, ptr %i.g, align 8, !alias.scope !41224, !noalias !41222
  %.sroa.440.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store i8 0, ptr %.sroa.440.0..sroa_idx.i.i, align 1, !alias.scope !41224, !noalias !41222
  %.sroa.542.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 0, ptr %.sroa.542.0..sroa_idx.i.i, align 4, !alias.scope !41224, !noalias !41222
  %i.tm = invoke fastcc noundef align 8 dereferenceable(24) ptr @_ZN4rhai5types5scope5Scope10push_entry17h5e3d67a8058d4099E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.tf, ptr noundef nonnull %i.ti, i1 noundef zeroext false, ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.g)
          to label %bb.fe unwind label %bb.fc, !noalias !41203, !inline_history !40960 ; 0 uses

bb.fb:                                            ; preds = %bb.ev
  call void @llvm.trap()
  unreachable

bb.fc:                                            ; preds = %bb.fa, %bb.ew
  %i.tn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i1477

.body.i1477:                                      ; preds = %bb.fc, %bb.ey, %.noexc148.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.tj, %bb.ey ], [ %i.tn, %bb.fc ], [ %i.tj, %.noexc148.i ] ; 2 uses
  %i.to = atomicrmw add ptr %i.sv, i64 -1 release, align 8, !noalias !41225
  %i.tp = icmp eq i64 %i.to, 1
  br i1 %i.tp, label %bb.fd, label %.thread.i

bb.fd:                                            ; preds = %.body.i1477
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.q)
          to label %.thread.i unwind label %bb.ea, !noalias !41203, !inline_history !40960

bb.fe:                                            ; preds = %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !41222
  store ptr %i.sv, ptr %i.x, align 8, !noalias !41202
  %i.tq = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i16 %.sroa.590.0.copyload.i, ptr %i.tq, align 8, !noalias !41202
  %i.tr = getelementptr inbounds nuw i8, ptr %i.x, i64 10
  store i16 %.sroa.691.0.copyload.i, ptr %i.tr, align 2, !noalias !41202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !41202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !41202
  br label %bb.ef

bb.ff:                                            ; preds = %bb.ef, %bb.fl
  %i.ts = landingpad { ptr, i32 }
          cleanup
  br label %.thread235.i

bb.fg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !41202
  %i.tt = load i64, ptr %i.n, align 8, !range !68, !noalias !41202, !noundef !60
  %i.tu = trunc nuw i64 %i.tt to i1
  %i.tv = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.527.i, ptr noundef nonnull align 8 dereferenceable(16) %i.tv, i64 16, i1 false), !noalias !41202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !41202
  br i1 %i.tu, label %bb.fh, label %bb.fj

bb.fh:                                            ; preds = %bb.fg
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tw, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.527.i, i64 16, i1 false), !noalias !41206
  store i64 1, ptr %0, align 8, !alias.scope !41198
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.527.i), !noalias !41202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !41202
  %i.tx = atomicrmw add ptr %i.sl, i64 -1 release, align 8, !noalias !41226
  %i.ty = icmp eq i64 %i.tx, 1
  br i1 %i.ty, label %bb.fi, label %"_ZN4core3ptr44drop_in_place$LT$rhai..ast..ident..Ident$GT$17hbc8d83296ceba044E.exit.i"

bb.fi:                                            ; preds = %bb.fh
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.x)
          to label %"_ZN4core3ptr44drop_in_place$LT$rhai..ast..ident..Ident$GT$17hbc8d83296ceba044E.exit.i" unwind label %bb.ej, !noalias !41203, !inline_history !40960

bb.fj:                                            ; preds = %bb.fg
  %.sroa.01488.0.copyload = load i8, ptr %.sroa.527.i, align 8, !noalias !41202
  %.sroa.41490.0..sroa.527.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.527.i, i64 2
  %6 = load <1 x i32>, ptr %.sroa.41490.0..sroa.527.i.sroa_idx, align 2, !noalias !41202
  %.sroa.61493.0..sroa.527.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.527.i, i64 8
  %.sroa.61493.0.copyload = load ptr, ptr %.sroa.61493.0..sroa.527.i.sroa_idx, align 8, !noalias !41202 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41227)
  switch i8 %.sroa.01488.0.copyload, label %bb.fk [
    i8 0, label %bb.fl
    i8 9, label %.thread.i154.i
  ]

bb.fk:                                            ; preds = %bb.fj
  %i.tz = invoke { i16, i16 } @_ZN4rhai3ast4stmt4Stmt8position17h00f99734812725e4E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.527.i)
          to label %bb.fm unwind label %bb.fn, !noalias !41203, !inline_history !40960 ; 2 uses

.thread.i154.i:                                   ; preds = %bb.fj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.61493.0.copyload) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.o, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.61493.0.copyload, i64 144, i1 false), !noalias !41228
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.61493.0.copyload, i64 noundef 144, i64 noundef 8) #71, !noalias !41229, !inline_history !40960
  br label %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit167.i"

bb.fl:                                            ; preds = %bb.fj
  %.sroa.4.0..sroa_idx.i155.i = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  store i64 0, ptr %.sroa.4.0..sroa_idx.i155.i, align 8, !alias.scope !41227, !noalias !41202
  %i.ua = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  %7 = shufflevector <1 x i32> %6, <1 x i32> poison, <2 x i32> zeroinitializer
  store <2 x i32> %7, ptr %i.ua, align 8, !alias.scope !41227, !noalias !41202
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..stmt..Stmt$GT$17h8c7cea9300790c9cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %.sroa.527.i)
          to label %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit167.i" unwind label %bb.ff, !noalias !41203, !inline_history !40960

bb.fm:                                            ; preds = %bb.fk
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !41229, !inline_history !40960
  %i.ub = extractvalue { i16, i16 } %i.tz, 1
  %i.uc = extractvalue { i16, i16 } %i.tz, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.527.i, i64 16, i1 false), !noalias !41202
  %.sroa.4.0..sroa_idx29.i160.i = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  store i64 1, ptr %.sroa.4.0..sroa_idx29.i160.i, align 8, !alias.scope !41227, !noalias !41202
  %i.ud = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  store i16 %i.uc, ptr %i.ud, align 8, !alias.scope !41227, !noalias !41202
  %.sroa.44.0..sroa_idx.i161.i = getelementptr inbounds nuw i8, ptr %i.o, i64 138
  store i16 %i.ub, ptr %.sroa.44.0..sroa_idx.i161.i, align 2, !alias.scope !41227, !noalias !41202
  %.sroa.55.0..sroa_idx.i162.i = getelementptr inbounds nuw i8, ptr %i.o, i64 140
  store i16 0, ptr %.sroa.55.0..sroa_idx.i162.i, align 4, !alias.scope !41227, !noalias !41202
  %.sroa.66.0..sroa_idx.i163.i = getelementptr inbounds nuw i8, ptr %i.o, i64 142
  store i16 0, ptr %.sroa.66.0..sroa_idx.i163.i, align 2, !alias.scope !41227, !noalias !41202
  br label %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit167.i"

bb.fn:                                            ; preds = %bb.fk
  %i.ue = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..stmt..Stmt$GT$17h8c7cea9300790c9cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %.sroa.527.i) #72
          to label %.thread235.i unwind label %bb.fo, !noalias !41203, !inline_history !40960

bb.fo:                                            ; preds = %bb.fn
  %i.uf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !41229, !inline_history !40960
  unreachable

"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit167.i": ; preds = %bb.fm, %bb.fl, %.thread.i154.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.527.i), !noalias !41202
  %i.ug = getelementptr inbounds nuw i8, ptr %i.sl, i64 16 ; 2 uses
  %i.uh = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ug)
          to label %.noexc134.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !41203, !inline_history !40960

.noexc134.i:                                      ; preds = %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit167.i"
  br i1 %i.uh, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %.noexc134.i
  %i.ui = invoke { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ug)
          to label %.noexc135.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !41203, !inline_history !40960

.noexc135.i:                                      ; preds = %bb.fp
  %i.uj = extractvalue { ptr, i64 } %i.ui, 1
  br label %bb.fr

bb.fq:                                            ; preds = %.noexc134.i
  %i.uk = getelementptr inbounds nuw i8, ptr %i.sl, i64 32
  %i.ul = load i64, ptr %i.uk, align 8, !noalias !41203, !noundef !60
  br label %bb.fr

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.fy, %.lr.ph.i.i, %bb.fz, %bb.fx, %bb.fp, %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit167.i"
  %lpad.loopexit.split-lp1785 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp.i

bb.fr:                                            ; preds = %bb.fq, %.noexc135.i
  %.merged.i.i1472 = phi i64 [ %i.uj, %.noexc135.i ], [ %i.ul, %bb.fq ]
  %i.um = icmp eq i64 %.merged.i.i1472, 0
  br i1 %i.um, label %bb.fs, label %bb.fv

bb.fs:                                            ; preds = %bb.fr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !41202
  store i8 9, ptr %i.m, align 8, !noalias !41202
  %.sroa.1067.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  store i16 %i.sk, ptr %.sroa.1067.0..sroa_idx.i, align 2, !noalias !41202
  %.sroa.1270.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i16 %i.sj, ptr %.sroa.1270.0..sroa_idx.i, align 4, !noalias !41202
  %i.un = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.un, ptr noundef nonnull align 8 dereferenceable(144) %i.ad, i64 144, i1 false), !noalias !41202
  %i.uo = getelementptr inbounds nuw i8, ptr %i.m, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.uo, ptr noundef nonnull align 8 dereferenceable(144) %i.o, i64 144, i1 false), !noalias !41202
  %i.up = invoke fastcc noundef ptr @_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E(i64 noundef 304, i64 noundef 8)
          to label %bb.ga unwind label %bb.ft, !noalias !41230, !inline_history !40960 ; 2 uses

bb.ft:                                            ; preds = %bb.fs
  %i.uq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$rhai..ast..stmt..FlowControl$GT$17h22b456693a9894f5E"(ptr noalias noundef nonnull align 8 dereferenceable(304) %i.m) #72
          to label %.thread235.i unwind label %bb.fu, !noalias !41203, !inline_history !40960

bb.fu:                                            ; preds = %bb.ft
  %i.ur = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !41203, !inline_history !40960
  unreachable

bb.fv:                                            ; preds = %bb.fr
  %i.us = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.experimental.noalias.scope.decl(metadata !41231)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !41232
  %i.ut = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %.val137.i = load ptr, ptr %i.ut, align 8, !alias.scope !41199, !nonnull !60, !noundef !60 ; 3 uses
  %i.uu = load i64, ptr %.val137.i, align 8, !noalias !41203, !noundef !60 ; 2 uses
  %i.uv = icmp eq i64 %i.uu, 0
  br i1 %i.uv, label %bb.fz, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.uw = add i64 %i.uu, -1                       ; 2 uses
  store i64 %i.uw, ptr %.val137.i, align 8, !noalias !41203
  %i.ux = getelementptr inbounds nuw i8, ptr %.val137.i, i64 16
  %i.uy = getelementptr inbounds nuw [8 x i8], ptr %i.ux, i64 %i.uw
  %i.uz = load ptr, ptr %i.uy, align 8, !noalias !41203, !nonnull !60, !noundef !60 ; 2 uses
  store ptr %i.uz, ptr %i.i, align 8, !noalias !41232
  %i.va = atomicrmw add ptr %i.uz, i64 -1 release, align 8, !noalias !41233
  %i.vb = icmp eq i64 %i.va, 1
  br i1 %i.vb, label %bb.fx, label %.noexc107.i

bb.fx:                                            ; preds = %bb.fw
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.i)
          to label %.noexc107.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !41203, !inline_history !40960

.noexc107.i:                                      ; preds = %bb.fx, %bb.fw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !41232
  %i.vc = load ptr, ptr %i.ut, align 8, !alias.scope !41234, !nonnull !60, !noundef !60
  %i.vd = load i64, ptr %i.vc, align 8, !noalias !41203, !noundef !60 ; 3 uses
  %.val.i1473 = load ptr, ptr %i.us, align 8, !alias.scope !41199, !nonnull !60, !noundef !60 ; 4 uses
  %i.ve = load i64, ptr %.val.i1473, align 8, !noalias !41203, !noundef !60 ; 2 uses
  %i.vf = icmp ult i64 %i.vd, %i.ve
  br i1 %i.vf, label %.lr.ph.i.i, label %.noexc108.i

.lr.ph.i.i:                                       ; preds = %.noexc107.i, %.noexc171.i
  %i.vg = phi i64 [ %i.vj, %.noexc171.i ], [ %i.ve, %.noexc107.i ] ; 2 uses
  %i.vh = add i64 %i.vg, -1
  store i64 %i.vh, ptr %.val.i1473, align 8, !noalias !41203
  %i.vi = getelementptr [16 x i8], ptr %.val.i1473, i64 %i.vg
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.vi)
          to label %.noexc171.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !41203, !inline_history !40960

.noexc171.i:                                      ; preds = %.lr.ph.i.i
  %i.vj = load i64, ptr %.val.i1473, align 8, !noalias !41203, !noundef !60 ; 2 uses
  %i.vk = icmp ult i64 %i.vd, %i.vj
  br i1 %i.vk, label %.lr.ph.i.i, label %.noexc108.loopexit.i

.noexc108.loopexit.i:                             ; preds = %.noexc171.i
  %.pre.i1474 = load ptr, ptr %i.ut, align 8, !alias.scope !41234
  %.pre267.i = load i64, ptr %.pre.i1474, align 8, !noalias !41203
  br label %.noexc108.i

.noexc108.i:                                      ; preds = %.noexc108.loopexit.i, %.noexc107.i
  %i.vl = phi i64 [ %.pre267.i, %.noexc108.loopexit.i ], [ %i.vd, %.noexc107.i ] ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.val136.i = load ptr, ptr %i.vm, align 8, !alias.scope !41199, !nonnull !60, !noundef !60 ; 4 uses
  %i.vn = load i64, ptr %.val136.i, align 8, !noalias !41203, !noundef !60 ; 2 uses
  %i.vo = icmp ult i64 %i.vl, %i.vn
  br i1 %i.vo, label %.lr.ph.i172.i, label %_ZN4rhai5types5scope5Scope3pop17hed55e3e4c72cd018E.exit.i

.lr.ph.i172.i:                                    ; preds = %.noexc108.i
  %i.vp = getelementptr inbounds nuw i8, ptr %.val136.i, i64 16
  br label %bb.fy

bb.fy:                                            ; preds = %.noexc173.i, %.lr.ph.i172.i
  %i.vq = phi i64 [ %i.vn, %.lr.ph.i172.i ], [ %i.vt, %.noexc173.i ]
  %i.vr = add i64 %i.vq, -1                       ; 2 uses
  store i64 %i.vr, ptr %.val136.i, align 8, !noalias !41203
  %i.vs = getelementptr inbounds nuw [32 x i8], ptr %i.vp, i64 %i.vr
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$smallvec..SmallVec$LT$$u5b$rhai..types..immutable_string..ImmutableString$u3b$$u20$3$u5d$$GT$$GT$17he9a634324b0db34aE"(ptr noalias noundef align 8 dereferenceable(32) %i.vs)
          to label %.noexc173.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !41203, !inline_history !40960

.noexc173.i:                                      ; preds = %bb.fy
  %i.vt = load i64, ptr %.val136.i, align 8, !noalias !41203, !noundef !60 ; 2 uses
  %i.vu = icmp ult i64 %i.vl, %i.vt
  br i1 %i.vu, label %bb.fy, label %_ZN4rhai5types5scope5Scope3pop17hed55e3e4c72cd018E.exit.i

bb.fz:                                            ; preds = %bb.fv
  invoke void @_ZN3std9panicking11begin_panic17h3ae8d44fd2c8c89bE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1038, i64 noundef 16, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1039) #70
          to label %.noexc110.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !41203, !inline_history !40960

.noexc110.i:                                      ; preds = %bb.fz
  unreachable

bb.ga:                                            ; preds = %bb.fs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.up, ptr noundef nonnull align 8 dereferenceable(304) %i.m, i64 304, i1 false), !noalias !41203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !41202
  %i.vv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 10, ptr %i.vv, align 8, !alias.scope !41198
  %.sroa.848.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %i.qx, ptr %.sroa.848.0..sroa_idx.i, align 2, !alias.scope !41198
  %.sroa.1051.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 %i.qz, ptr %.sroa.1051.0..sroa_idx.i, align 4, !alias.scope !41198
  %.sroa.1257.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.up, ptr %.sroa.1257.0..sroa_idx.i, align 8, !alias.scope !41198
  store i64 0, ptr %0, align 8, !alias.scope !41198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !41202
  %i.vw = atomicrmw add ptr %i.sl, i64 -1 release, align 8, !noalias !41235
  %i.vx = icmp eq i64 %i.vw, 1
  br i1 %i.vx, label %bb.gb, label %"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit175.i"

bb.gb:                                            ; preds = %bb.ga
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.x), !noalias !41203, !inline_history !40960
  br label %"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit175.i"

"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit175.i": ; preds = %bb.gk, %bb.gb, %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !41202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !41202
end_hunk_1
begin_hunk_2_@"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$13parse_primary17h6ac24a27b0335decE":bb.a
bb.qb:                                            ; preds = %bb.g
  call void @"_ZN89_$LT$rhai..tokenizer..TokenIterator$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc956a9b882b5a932E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.nh, ptr noalias noundef nonnull align 8 dereferenceable(224) %i.oj)
  %.pr2054 = load i32, ptr %i.nh, align 8
  br label %bb.qc

bb.qc:                                            ; preds = %bb.qb, %bb.qa
  %i.ara = phi i32 [ %.pr2054, %bb.qb ], [ %.sroa.0193.0.copyload, %bb.qa ]
  %.not701 = icmp eq i32 %i.ara, 86
  br i1 %.not701, label %bb.qe, label %bb.qd, !prof !71

bb.qd:                                            ; preds = %bb.qc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ni, ptr noundef nonnull align 8 dereferenceable(24) %i.nh, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nh)
  %i.arb = load i32, ptr %i.ni, align 8, !range !101, !noundef !60
  switch i32 %i.arb, label %bb.qf [
    i32 0, label %bb.qg
    i32 3, label %bb.qh
    i32 4, label %bb.qi
    i32 37, label %bb.qj
    i32 38, label %bb.qk
  ], !prof !42906

bb.qe:                                            ; preds = %bb.qc
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1336) #70
  unreachable

bb.qf:                                            ; preds = %bb.qd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nf)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nf, ptr noundef nonnull align 8 dereferenceable(16) %i.ni, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ne)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nd)
  store ptr %i.nf, ptr %i.nd, align 8
  %.sroa.4212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  store ptr @"_ZN59_$LT$rhai..tokenizer..Token$u20$as$u20$core..fmt..Debug$GT$3fmt17ha8c472cf5d45c32aE", ptr %.sroa.4212.0..sroa_idx, align 8
  store ptr @1338, ptr %i.ne, align 8
  %i.arc = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  store i64 1, ptr %i.arc, align 8
  %i.ard = getelementptr inbounds nuw i8, ptr %i.ne, i64 32
  store ptr null, ptr %i.ard, align 8
  %i.are = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  store ptr %i.nd, ptr %i.are, align 8
  %i.arf = getelementptr inbounds nuw i8, ptr %i.ne, i64 24
  store i64 1, ptr %i.arf, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ne, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1339) #70
          to label %bb.av unwind label %bb.qp

bb.qg:                                            ; preds = %bb.qd
  %i.arg = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %i.arh = load i64, ptr %i.arg, align 8, !noundef !60
  %i.ari = load <2 x i16>, ptr %i.nu, align 8
  %i.arj = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  store i64 %i.arh, ptr %i.arj, align 8
  br label %bb.qo

bb.qh:                                            ; preds = %bb.qd
  %i.ark = getelementptr inbounds nuw i8, ptr %i.ni, i64 4
  %i.arl = load i32, ptr %i.ark, align 4, !range !67, !noundef !60
  %i.arm = load <2 x i16>, ptr %i.nu, align 8
  %i.arn = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  store i32 %i.arl, ptr %i.arn, align 8
  br label %bb.qo

bb.qi:                                            ; preds = %bb.qd
  %i.aro = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %i.arp = load ptr, ptr %i.aro, align 8, !nonnull !60, !align !61, !noundef !60 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ng)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ng, ptr noundef nonnull align 8 dereferenceable(24) %i.arp, i64 24, i1 false)
  %i.arq = invoke fastcc noundef nonnull ptr @_ZN4rhai6engine6Engine19get_interned_string17h3d1f80e19b203d70E(ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ng)
          to label %bb.ql unwind label %bb.qm

bb.qj:                                            ; preds = %bb.qd
  %i.arr = load <2 x i16>, ptr %i.nu, align 8
  %i.ars = getelementptr inbounds nuw i8, ptr %i.no, i64 1
  store i8 1, ptr %i.ars, align 1
  br label %bb.qo

bb.qk:                                            ; preds = %bb.qd
  %i.art = load <2 x i16>, ptr %i.nu, align 8
  %i.aru = getelementptr inbounds nuw i8, ptr %i.no, i64 1
  store i8 0, ptr %i.aru, align 1
  br label %bb.qo

bb.ql:                                            ; preds = %bb.qi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ng)
  %i.arv = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  store ptr %i.arq, ptr %i.arv, align 8
  %i.arw = getelementptr inbounds nuw i8, ptr %i.no, i64 2
  %i.arx = load <2 x i16>, ptr %i.nu, align 8
  store <2 x i16> %i.arx, ptr %i.arw, align 2
  store i8 5, ptr %i.no, align 16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.arp, i64 noundef 24, i64 noundef 8) #71
  br label %bb.qn

bb.qm:                                            ; preds = %bb.qi
  %i.ary = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.arp, i64 noundef 24, i64 noundef 8) #71
  br label %common.resume3979

bb.qn:                                            ; preds = %bb.ql, %bb.qo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ni)
  br label %bb.aj

bb.qo:                                            ; preds = %bb.qk, %bb.qj, %bb.qh, %bb.qg
  %.sink = phi i8 [ 1, %bb.qk ], [ 1, %bb.qj ], [ 4, %bb.qh ], [ 2, %bb.qg ]
  %i.arz = phi <2 x i16> [ %i.art, %bb.qk ], [ %i.arr, %bb.qj ], [ %i.arm, %bb.qh ], [ %i.ari, %bb.qg ]
  %i.asa = getelementptr inbounds nuw i8, ptr %i.no, i64 2
  store <2 x i16> %i.arz, ptr %i.asa, align 2
  store i8 %.sink, ptr %i.no, align 16
  call void @"_ZN4core3ptr43drop_in_place$LT$rhai..tokenizer..Token$GT$17ha4e996b9761910c4E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ni)
  br label %bb.qn

bb.qp:                                            ; preds = %bb.qf
  %i.asb = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr43drop_in_place$LT$rhai..tokenizer..Token$GT$17ha4e996b9761910c4E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.nf) #72
          to label %common.resume3979 unwind label %bb.bz

bb.qq:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mi)
  %i.asc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.asd = load i64, ptr %i.asc, align 8, !noundef !60 ; 2 uses
  %i.ase = load i64, ptr %3, align 8
  %i.asf = freeze i64 %i.ase                      ; 2 uses
  %i.asg = add i64 %i.asd, -1
  %or.cond2387.not = icmp ult i64 %i.asg, %i.asf
  br i1 %or.cond2387.not, label %bb.qr, label %bb.qs, !prof !73

bb.qr:                                            ; preds = %bb.qq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.je)
  store i64 34, ptr %i.je, align 8
  %i.ash = load i16, ptr %i.nu, align 8, !noundef !60
  %i.asi = load i16, ptr %i.nv, align 2, !noundef !60
  call void @"_ZN4rhai6parser58_$LT$impl$u20$rhai..types..parse_error..ParseErrorType$GT$8into_err17he5d999a47a55ea69E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.jf, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.je, i16 noundef %i.ash, i16 noundef %i.asi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.je)
  %i.asj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ask = load <2 x i64>, ptr %i.jf, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jf)
  store <2 x i64> %i.ask, ptr %i.asj, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mj)
  br label %bb.ajh

bb.qs:                                            ; preds = %bb.qq
  %i.asl = add i64 %i.asf, 1
  %i.asm = getelementptr inbounds nuw i8, ptr %3, i64 22
  %i.asn = load i8, ptr %i.asm, align 2, !noundef !60
  store i64 %i.asl, ptr %i.mh, align 8
  %.sroa.637.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  store i64 %i.asd, ptr %.sroa.637.sroa.7.0..sroa_idx, align 8
  %.sroa.637.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  %i.aso = load <2 x i16>, ptr %i.nu, align 8
  store <2 x i16> %i.aso, ptr %.sroa.637.sroa.8.0..sroa_idx, align 8
  %.sroa.637.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mh, i64 20
  store i16 %i.qc, ptr %.sroa.637.sroa.10.0..sroa_idx, align 4
  %.sroa.637.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mh, i64 22
  store i8 %i.asn, ptr %.sroa.637.sroa.11.0..sroa_idx, align 2
  call fastcc void @"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$8parse_if17hb6f07026dce792f3E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.mi, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(96) %2, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.mh)
  %i.asp = load i64, ptr %i.mi, align 8, !range !68, !noundef !60
  %i.asq = trunc nuw i64 %i.asp to i1
  %i.asr = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.635, ptr noundef nonnull align 8 dereferenceable(16) %i.asr, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mi)
  br i1 %i.asq, label %bb.qt, label %bb.qu

bb.qt:                                            ; preds = %bb.qs
  %i.ass = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ass, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.635, i64 16, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mj)
  br label %bb.ajh

bb.qu:                                            ; preds = %bb.qs
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42907)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42908)
  %i.ast = load i8, ptr %.sroa.635, align 8, !range !102, !alias.scope !42908, !noundef !60 ; 2 uses
  switch i8 %i.ast, label %bb.qv [
    i8 0, label %bb.qw
    i8 9, label %.thread.i3761
  ]

bb.qv:                                            ; preds = %bb.qu
  %i.asu = invoke { i16, i16 } @_ZN4rhai3ast4stmt4Stmt8position17h00f99734812725e4E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.635)
          to label %bb.qx unwind label %bb.qy, !noalias !42907 ; 2 uses

.thread.i3761:                                    ; preds = %bb.qu
  %i.asv = getelementptr inbounds nuw i8, ptr %.sroa.635, i64 8
  %i.asw = load ptr, ptr %i.asv, align 8, !alias.scope !42908, !nonnull !60, !noundef !60 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.mj, ptr noundef nonnull align 8 dereferenceable(144) %i.asw, i64 144, i1 false), !noalias !42908
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.asw, i64 noundef 144, i64 noundef 8) #71, !noalias !42909
  br label %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit3771"

bb.qw:                                            ; preds = %bb.qu
  %i.asx = getelementptr inbounds nuw i8, ptr %.sroa.635, i64 2
  %.sroa.4.0..sroa_idx.i3762 = getelementptr inbounds nuw i8, ptr %i.mj, i64 128
  store i64 0, ptr %.sroa.4.0..sroa_idx.i3762, align 8, !alias.scope !42907
  %i.asy = getelementptr inbounds nuw i8, ptr %i.mj, i64 136
  %5 = load <1 x i32>, ptr %i.asx, align 2, !alias.scope !42908
  %6 = shufflevector <1 x i32> %5, <1 x i32> poison, <2 x i32> zeroinitializer
  store <2 x i32> %6, ptr %i.asy, align 8, !alias.scope !42907
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..stmt..Stmt$GT$17h8c7cea9300790c9cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %.sroa.635), !noalias !42907
  br label %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit3771"

bb.qx:                                            ; preds = %bb.qv
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !42909
  %i.asz = extractvalue { i16, i16 } %i.asu, 1
  %i.ata = extractvalue { i16, i16 } %i.asu, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.mj, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.635, i64 16, i1 false), !alias.scope !42909
  %.sroa.4.0..sroa_idx29.i3767 = getelementptr inbounds nuw i8, ptr %i.mj, i64 128
  store i64 1, ptr %.sroa.4.0..sroa_idx29.i3767, align 8, !alias.scope !42907
  %i.atb = getelementptr inbounds nuw i8, ptr %i.mj, i64 136
  store i16 %i.ata, ptr %i.atb, align 8, !alias.scope !42907
  %.sroa.44.0..sroa_idx.i3768 = getelementptr inbounds nuw i8, ptr %i.mj, i64 138
  store i16 %i.asz, ptr %.sroa.44.0..sroa_idx.i3768, align 2, !alias.scope !42907
  %.sroa.55.0..sroa_idx.i3769 = getelementptr inbounds nuw i8, ptr %i.mj, i64 140
  store i16 0, ptr %.sroa.55.0..sroa_idx.i3769, align 4, !alias.scope !42907
  %.sroa.66.0..sroa_idx.i3770 = getelementptr inbounds nuw i8, ptr %i.mj, i64 142
  store i16 0, ptr %.sroa.66.0..sroa_idx.i3770, align 2, !alias.scope !42907
  br label %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit3771"

bb.qy:                                            ; preds = %bb.qv
  %i.atc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.atd = icmp eq i8 %i.ast, 9
  br i1 %i.atd, label %common.resume3979, label %bb.qz

bb.qz:                                            ; preds = %bb.qy
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..stmt..Stmt$GT$17h8c7cea9300790c9cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %.sroa.635) #72
          to label %common.resume3979 unwind label %bb.ra, !noalias !42907

bb.ra:                                            ; preds = %bb.qz
  %i.ate = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !42909
  unreachable

"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit3771": ; preds = %.thread.i3761, %bb.qw, %bb.qx
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !42910
  %i.atf = tail call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 144, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !42910 ; 3 uses
  %i.atg = icmp eq ptr %i.atf, null
  br i1 %i.atg, label %bb.rb, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hffb8924bb0d5526dE.exit725", !prof !63

bb.rb:                                            ; preds = %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit3771"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 144) #70
          to label %.noexc3772 unwind label %bb.rc

.noexc3772:                                       ; preds = %bb.rb
  unreachable

bb.rc:                                            ; preds = %bb.rb
  %i.ath = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN69_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b307487833700cdE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(144) %i.mj)
          to label %common.resume3979 unwind label %bb.rd, !inline_history !122

bb.rd:                                            ; preds = %bb.rc
  %i.ati = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17hffb8924bb0d5526dE.exit725": ; preds = %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit3771"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.atf, ptr noundef nonnull align 8 dereferenceable(144) %i.mj, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mj)
  %i.atj = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  store ptr %i.atf, ptr %i.atj, align 8
  store i8 14, ptr %i.no, align 16
  br label %bb.aj

bb.re:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lw)
  %i.atk = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.atl = load i64, ptr %i.atk, align 8, !noundef !60 ; 2 uses
  %i.atm = load i64, ptr %3, align 8
  %i.atn = freeze i64 %i.atm                      ; 2 uses
  %i.ato = add i64 %i.atl, -1
  %or.cond2388.not = icmp ult i64 %i.ato, %i.atn
  br i1 %or.cond2388.not, label %bb.rf, label %bb.rg, !prof !73

bb.rf:                                            ; preds = %bb.re
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ix)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iw)
  store i64 34, ptr %i.iw, align 8
  %i.atp = load i16, ptr %i.nu, align 8, !noundef !60
  %i.atq = load i16, ptr %i.nv, align 2, !noundef !60
  call void @"_ZN4rhai6parser58_$LT$impl$u20$rhai..types..parse_error..ParseErrorType$GT$8into_err17he5d999a47a55ea69E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ix, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.iw, i16 noundef %i.atp, i16 noundef %i.atq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iw)
  %i.atr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ats = load <2 x i64>, ptr %i.ix, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ix)
  store <2 x i64> %i.ats, ptr %i.atr, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lx)
  br label %bb.ajh

bb.rg:                                            ; preds = %bb.re
  %i.att = add i64 %i.atn, 1
  %i.atu = getelementptr inbounds nuw i8, ptr %3, i64 22
  %i.atv = load i8, ptr %i.atu, align 2, !noundef !60
  store i64 %i.att, ptr %i.lv, align 8
  %.sroa.661.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  store i64 %i.atl, ptr %.sroa.661.sroa.7.0..sroa_idx, align 8
  %.sroa.661.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  %i.atw = load <2 x i16>, ptr %i.nu, align 8
  store <2 x i16> %i.atw, ptr %.sroa.661.sroa.8.0..sroa_idx, align 8
  %.sroa.661.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lv, i64 20
  store i16 %i.qf, ptr %.sroa.661.sroa.10.0..sroa_idx, align 4
  %.sroa.661.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lv, i64 22
  store i8 %i.atv, ptr %.sroa.661.sroa.11.0..sroa_idx, align 2
  call fastcc void @"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$12parse_switch17h830ffb40b48321c4E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.lw, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(96) %2, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.lv)
  %i.atx = load i64, ptr %i.lw, align 8, !range !68, !noundef !60
  %i.aty = trunc nuw i64 %i.atx to i1
  %i.atz = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.659, ptr noundef nonnull align 8 dereferenceable(16) %i.atz, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lw)
  br i1 %i.aty, label %bb.rh, label %bb.ri

bb.rh:                                            ; preds = %bb.rg
  %i.aua = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aua, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.659, i64 16, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lx)
  br label %bb.ajh

bb.ri:                                            ; preds = %bb.rg
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42911)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42912)
  %i.aub = load i8, ptr %.sroa.659, align 8, !range !102, !alias.scope !42912, !noundef !60 ; 2 uses
  switch i8 %i.aub, label %bb.rj [
    i8 0, label %bb.rk
    i8 9, label %.thread.i3774
  ]

bb.rj:                                            ; preds = %bb.ri
  %i.auc = invoke { i16, i16 } @_ZN4rhai3ast4stmt4Stmt8position17h00f99734812725e4E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.659)
          to label %bb.rl unwind label %bb.rm, !noalias !42911 ; 2 uses

.thread.i3774:                                    ; preds = %bb.ri
  %i.aud = getelementptr inbounds nuw i8, ptr %.sroa.659, i64 8
  %i.aue = load ptr, ptr %i.aud, align 8, !alias.scope !42912, !nonnull !60, !noundef !60 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.lx, ptr noundef nonnull align 8 dereferenceable(144) %i.aue, i64 144, i1 false), !noalias !42912
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aue, i64 noundef 144, i64 noundef 8) #71, !noalias !42913
  br label %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit3784"

bb.rk:                                            ; preds = %bb.ri
  %i.auf = getelementptr inbounds nuw i8, ptr %.sroa.659, i64 2
  %.sroa.4.0..sroa_idx.i3775 = getelementptr inbounds nuw i8, ptr %i.lx, i64 128
  store i64 0, ptr %.sroa.4.0..sroa_idx.i3775, align 8, !alias.scope !42911
  %i.aug = getelementptr inbounds nuw i8, ptr %i.lx, i64 136
  %7 = load <1 x i32>, ptr %i.auf, align 2, !alias.scope !42912
  %8 = shufflevector <1 x i32> %7, <1 x i32> poison, <2 x i32> zeroinitializer
  store <2 x i32> %8, ptr %i.aug, align 8, !alias.scope !42911
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..stmt..Stmt$GT$17h8c7cea9300790c9cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %.sroa.659), !noalias !42911
  br label %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit3784"

bb.rl:                                            ; preds = %bb.rj
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !42913
  %i.auh = extractvalue { i16, i16 } %i.auc, 1
  %i.aui = extractvalue { i16, i16 } %i.auc, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.lx, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.659, i64 16, i1 false), !alias.scope !42913
  %.sroa.4.0..sroa_idx29.i3780 = getelementptr inbounds nuw i8, ptr %i.lx, i64 128
  store i64 1, ptr %.sroa.4.0..sroa_idx29.i3780, align 8, !alias.scope !42911
  %i.auj = getelementptr inbounds nuw i8, ptr %i.lx, i64 136
  store i16 %i.aui, ptr %i.auj, align 8, !alias.scope !42911
  %.sroa.44.0..sroa_idx.i3781 = getelementptr inbounds nuw i8, ptr %i.lx, i64 138
  store i16 %i.auh, ptr %.sroa.44.0..sroa_idx.i3781, align 2, !alias.scope !42911
  %.sroa.55.0..sroa_idx.i3782 = getelementptr inbounds nuw i8, ptr %i.lx, i64 140
  store i16 0, ptr %.sroa.55.0..sroa_idx.i3782, align 4, !alias.scope !42911
  %.sroa.66.0..sroa_idx.i3783 = getelementptr inbounds nuw i8, ptr %i.lx, i64 142
  store i16 0, ptr %.sroa.66.0..sroa_idx.i3783, align 2, !alias.scope !42911
  br label %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit3784"

bb.rm:                                            ; preds = %bb.rj
  %i.auk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aul = icmp eq i8 %i.aub, 9
  br i1 %i.aul, label %common.resume3979, label %bb.rn

bb.rn:                                            ; preds = %bb.rm
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..stmt..Stmt$GT$17h8c7cea9300790c9cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %.sroa.659) #72
          to label %common.resume3979 unwind label %bb.ro, !noalias !42911

bb.ro:                                            ; preds = %bb.rn
  %i.aum = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !42913
  unreachable

"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit3784": ; preds = %.thread.i3774, %bb.rk, %bb.rl
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !42914
  %i.aun = tail call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 144, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !42914 ; 3 uses
  %i.auo = icmp eq ptr %i.aun, null
  br i1 %i.auo, label %bb.rp, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hffb8924bb0d5526dE.exit724", !prof !63

bb.rp:                                            ; preds = %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit3784"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 144) #70
          to label %.noexc3785 unwind label %bb.rq

.noexc3785:                                       ; preds = %bb.rp
  unreachable

bb.rq:                                            ; preds = %bb.rp
  %i.aup = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN69_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b307487833700cdE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(144) %i.lx)
          to label %common.resume3979 unwind label %bb.rr, !inline_history !122

bb.rr:                                            ; preds = %bb.rq
  %i.auq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17hffb8924bb0d5526dE.exit724": ; preds = %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit3784"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.aun, ptr noundef nonnull align 8 dereferenceable(144) %i.lx, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lx)
  %i.aur = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  store ptr %i.aun, ptr %i.aur, align 8
  store i8 14, ptr %i.no, align 16
  br label %bb.aj

bb.rs:                                            ; preds = %bb.w
  %i.aus = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.aut = load i16, ptr %i.aus, align 4, !noundef !60 ; 2 uses
  %i.auu = and i16 %i.aut, 4
  %.not657 = icmp eq i16 %i.auu, 0
  br i1 %.not657, label %.thread2108, label %bb.rt, !prof !71

bb.rt:                                            ; preds = %bb.rs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.md)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mc)
  %i.auv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.auw = load i64, ptr %i.auv, align 8, !noundef !60 ; 2 uses
  %i.aux = load i64, ptr %3, align 8
  %i.auy = freeze i64 %i.aux                      ; 2 uses
  %i.auz = add i64 %i.auw, -1
  %or.cond2389.not = icmp ult i64 %i.auz, %i.auy
  br i1 %or.cond2389.not, label %bb.ru, label %bb.rv, !prof !73

bb.ru:                                            ; preds = %bb.rt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ja)
  store i64 34, ptr %i.ja, align 8
  %i.ava = load i16, ptr %i.nu, align 8, !noundef !60
  %i.avb = load i16, ptr %i.nv, align 2, !noundef !60
  call void @"_ZN4rhai6parser58_$LT$impl$u20$rhai..types..parse_error..ParseErrorType$GT$8into_err17he5d999a47a55ea69E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.jb, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.ja, i16 noundef %i.ava, i16 noundef %i.avb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ja)
  %i.avc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.avd = load <2 x i64>, ptr %i.jb, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jb)
  store <2 x i64> %i.avd, ptr %i.avc, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.md)
  br label %bb.ajh

bb.rv:                                            ; preds = %bb.rt
  %i.ave = add i64 %i.auy, 1
  %i.avf = getelementptr inbounds nuw i8, ptr %3, i64 22
  %i.avg = load i8, ptr %i.avf, align 2, !noundef !60
  store i64 %i.ave, ptr %i.mb, align 8
  %.sroa.649.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  store i64 %i.auw, ptr %.sroa.649.sroa.7.0..sroa_idx, align 8
  %.sroa.649.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mb, i64 16
  %i.avh = load <2 x i16>, ptr %i.nu, align 8
  store <2 x i16> %i.avh, ptr %.sroa.649.sroa.8.0..sroa_idx, align 8
  %.sroa.649.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mb, i64 20
  store i16 %i.aut, ptr %.sroa.649.sroa.10.0..sroa_idx, align 4
  %.sroa.649.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mb, i64 22
  store i8 %i.avg, ptr %.sroa.649.sroa.11.0..sroa_idx, align 2
  call fastcc void @"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$8parse_do17h41fbbfb0879caf3dE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.mc, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(96) %2, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.mb)
  %i.avi = load i64, ptr %i.mc, align 8, !range !68, !noundef !60
  %i.avj = trunc nuw i64 %i.avi to i1
  %i.avk = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.647, ptr noundef nonnull align 8 dereferenceable(16) %i.avk, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mc)
  br i1 %i.avj, label %bb.rw, label %bb.rx

bb.rw:                                            ; preds = %bb.rv
  %i.avl = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.avl, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.647, i64 16, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.md)
  br label %bb.ajh

bb.rx:                                            ; preds = %bb.rv
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42915)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42916)
  %i.avm = load i8, ptr %.sroa.647, align 8, !range !102, !alias.scope !42916, !noundef !60 ; 2 uses
  switch i8 %i.avm, label %bb.ry [
    i8 0, label %bb.rz
    i8 9, label %.thread.i3787
  ]

bb.ry:                                            ; preds = %bb.rx
  %i.avn = invoke { i16, i16 } @_ZN4rhai3ast4stmt4Stmt8position17h00f99734812725e4E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.647)
          to label %bb.sa unwind label %bb.sb, !noalias !42915 ; 2 uses

.thread.i3787:                                    ; preds = %bb.rx
  %i.avo = getelementptr inbounds nuw i8, ptr %.sroa.647, i64 8
  %i.avp = load ptr, ptr %i.avo, align 8, !alias.scope !42916, !nonnull !60, !noundef !60 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.md, ptr noundef nonnull align 8 dereferenceable(144) %i.avp, i64 144, i1 false), !noalias !42916
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.avp, i64 noundef 144, i64 noundef 8) #71, !noalias !42917
  br label %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit3797"

bb.rz:                                            ; preds = %bb.rx
  %i.avq = getelementptr inbounds nuw i8, ptr %.sroa.647, i64 2
  %.sroa.4.0..sroa_idx.i3788 = getelementptr inbounds nuw i8, ptr %i.md, i64 128
  store i64 0, ptr %.sroa.4.0..sroa_idx.i3788, align 8, !alias.scope !42915
  %i.avr = getelementptr inbounds nuw i8, ptr %i.md, i64 136
  %9 = load <1 x i32>, ptr %i.avq, align 2, !alias.scope !42916
  %10 = shufflevector <1 x i32> %9, <1 x i32> poison, <2 x i32> zeroinitializer
  store <2 x i32> %10, ptr %i.avr, align 8, !alias.scope !42915
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..stmt..Stmt$GT$17h8c7cea9300790c9cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %.sroa.647), !noalias !42915
  br label %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit3797"

bb.sa:                                            ; preds = %bb.ry
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !42917
  %i.avs = extractvalue { i16, i16 } %i.avn, 1
  %i.avt = extractvalue { i16, i16 } %i.avn, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.md, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.647, i64 16, i1 false), !alias.scope !42917
  %.sroa.4.0..sroa_idx29.i3793 = getelementptr inbounds nuw i8, ptr %i.md, i64 128
  store i64 1, ptr %.sroa.4.0..sroa_idx29.i3793, align 8, !alias.scope !42915
  %i.avu = getelementptr inbounds nuw i8, ptr %i.md, i64 136
  store i16 %i.avt, ptr %i.avu, align 8, !alias.scope !42915
  %.sroa.44.0..sroa_idx.i3794 = getelementptr inbounds nuw i8, ptr %i.md, i64 138
  store i16 %i.avs, ptr %.sroa.44.0..sroa_idx.i3794, align 2, !alias.scope !42915
  %.sroa.55.0..sroa_idx.i3795 = getelementptr inbounds nuw i8, ptr %i.md, i64 140
  store i16 0, ptr %.sroa.55.0..sroa_idx.i3795, align 4, !alias.scope !42915
  %.sroa.66.0..sroa_idx.i3796 = getelementptr inbounds nuw i8, ptr %i.md, i64 142
  store i16 0, ptr %.sroa.66.0..sroa_idx.i3796, align 2, !alias.scope !42915
  br label %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit3797"

bb.sb:                                            ; preds = %bb.ry
  %i.avv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.avw = icmp eq i8 %i.avm, 9
  br i1 %i.avw, label %common.resume3979, label %bb.sc

bb.sc:                                            ; preds = %bb.sb
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..stmt..Stmt$GT$17h8c7cea9300790c9cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %.sroa.647) #72
          to label %common.resume3979 unwind label %bb.sd, !noalias !42915

bb.sd:                                            ; preds = %bb.sc
  %i.avx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !42917
  unreachable

"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit3797": ; preds = %.thread.i3787, %bb.rz, %bb.sa
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !42918
  %i.avy = tail call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 144, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !42918 ; 3 uses
  %i.avz = icmp eq ptr %i.avy, null
  br i1 %i.avz, label %bb.se, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hffb8924bb0d5526dE.exit723", !prof !63

bb.se:                                            ; preds = %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit3797"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 144) #70
          to label %.noexc3798 unwind label %bb.sf

.noexc3798:                                       ; preds = %bb.se
  unreachable

bb.sf:                                            ; preds = %bb.se
  %i.awa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN69_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b307487833700cdE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(144) %i.md)
          to label %common.resume3979 unwind label %bb.sg, !inline_history !122

bb.sg:                                            ; preds = %bb.sf
  %i.awb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17hffb8924bb0d5526dE.exit723": ; preds = %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit3797"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.avy, ptr noundef nonnull align 8 dereferenceable(144) %i.md, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.md)
  %i.awc = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  store ptr %i.avy, ptr %i.awc, align 8
  store i8 14, ptr %i.no, align 16
  br label %bb.aj

bb.sh:                                            ; preds = %bb.x
  %i.awd = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.awe = load i16, ptr %i.awd, align 4, !noundef !60 ; 2 uses
  %i.awf = and i16 %i.awe, 4
  %.not653 = icmp eq i16 %i.awf, 0
  br i1 %.not653, label %.thread2108, label %bb.si, !prof !71

bb.si:                                            ; preds = %bb.sj, %bb.sh
  %i.awg = phi i16 [ %i.awn, %bb.sj ], [ %i.awe, %bb.sh ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mg)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.641)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mf)
  %i.awh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.awi = load i64, ptr %i.awh, align 8, !noundef !60 ; 2 uses
  %i.awj = load i64, ptr %3, align 8
  %i.awk = freeze i64 %i.awj                      ; 2 uses
  %i.awl = add i64 %i.awi, -1
  %or.cond2390.not = icmp ult i64 %i.awl, %i.awk
  br i1 %or.cond2390.not, label %bb.sk, label %bb.sl, !prof !73

bb.sj:                                            ; preds = %bb.y
  %i.awm = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.awn = load i16, ptr %i.awm, align 4, !noundef !60 ; 2 uses
  %i.awo = and i16 %i.awn, 4
  %.not651 = icmp eq i16 %i.awo, 0
  br i1 %.not651, label %.thread2108, label %bb.si, !prof !71

bb.sk:                                            ; preds = %bb.si
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jc)
  store i64 34, ptr %i.jc, align 8
  %i.awp = load i16, ptr %i.nu, align 8, !noundef !60
  %i.awq = load i16, ptr %i.nv, align 2, !noundef !60
  call void @"_ZN4rhai6parser58_$LT$impl$u20$rhai..types..parse_error..ParseErrorType$GT$8into_err17he5d999a47a55ea69E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.jd, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.jc, i16 noundef %i.awp, i16 noundef %i.awq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jc)
  %i.awr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aws = load <2 x i64>, ptr %i.jd, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jd)
  store <2 x i64> %i.aws, ptr %i.awr, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mf)
  br label %bb.sw

bb.sl:                                            ; preds = %bb.si
  %i.awt = add i64 %i.awk, 1
  %i.awu = getelementptr inbounds nuw i8, ptr %3, i64 22
  %i.awv = load i8, ptr %i.awu, align 2, !noundef !60
  store i64 %i.awt, ptr %i.me, align 8
  %.sroa.643.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  store i64 %i.awi, ptr %.sroa.643.sroa.7.0..sroa_idx, align 8
  %.sroa.643.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  %i.aww = load <2 x i16>, ptr %i.nu, align 8
  store <2 x i16> %i.aww, ptr %.sroa.643.sroa.8.0..sroa_idx, align 8
  %.sroa.643.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.me, i64 20
  store i16 %i.awg, ptr %.sroa.643.sroa.10.0..sroa_idx, align 4
  %.sroa.643.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.me, i64 22
  store i8 %i.awv, ptr %.sroa.643.sroa.11.0..sroa_idx, align 2
  call fastcc void @"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$16parse_while_loop17h0eedeca77f98aaf6E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.mf, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(96) %2, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.me)
  %i.awx = load i64, ptr %i.mf, align 8, !range !68, !noundef !60
  %i.awy = trunc nuw i64 %i.awx to i1
  %i.awz = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.641, ptr noundef nonnull align 8 dereferenceable(16) %i.awz, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mf)
  br i1 %i.awy, label %bb.sm, label %bb.sn

bb.sm:                                            ; preds = %bb.sl
  %i.axa = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.axa, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.641, i64 16, i1 false)
  store i64 1, ptr %0, align 8
  br label %bb.sw

bb.sn:                                            ; preds = %bb.sl
  %.sroa.03922.0.copyload = load i8, ptr %.sroa.641, align 8
  %.sroa.23924.0..sroa.641.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.641, i64 2
  %11 = load <1 x i32>, ptr %.sroa.23924.0..sroa.641.sroa_idx, align 2
  %.sroa.43926.0..sroa.641.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.641, i64 8
  %.sroa.43926.0.copyload = load ptr, ptr %.sroa.43926.0..sroa.641.sroa_idx, align 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42919)
  switch i8 %.sroa.03922.0.copyload, label %bb.so [
    i8 0, label %bb.sp
    i8 9, label %.thread.i855
  ]

bb.so:                                            ; preds = %bb.sn
  %i.axb = invoke { i16, i16 } @_ZN4rhai3ast4stmt4Stmt8position17h00f99734812725e4E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.641)
          to label %bb.sq unwind label %bb.sr     ; 2 uses

.thread.i855:                                     ; preds = %bb.sn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.43926.0.copyload) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.mg, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.43926.0.copyload, i64 144, i1 false), !noalias !42920
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.43926.0.copyload, i64 noundef 144, i64 noundef 8) #71, !noalias !42921
  br label %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit865"

bb.sp:                                            ; preds = %bb.sn
  %.sroa.4.0..sroa_idx.i856 = getelementptr inbounds nuw i8, ptr %i.mg, i64 128
  store i64 0, ptr %.sroa.4.0..sroa_idx.i856, align 8, !alias.scope !42919
  %i.axc = getelementptr inbounds nuw i8, ptr %i.mg, i64 136
  %12 = shufflevector <1 x i32> %11, <1 x i32> poison, <2 x i32> zeroinitializer
  store <2 x i32> %12, ptr %i.axc, align 8, !alias.scope !42919
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..stmt..Stmt$GT$17h8c7cea9300790c9cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %.sroa.641)
  br label %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit865"

bb.sq:                                            ; preds = %bb.so
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !42921
  %i.axd = extractvalue { i16, i16 } %i.axb, 1
  %i.axe = extractvalue { i16, i16 } %i.axb, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mg, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.641, i64 16, i1 false)
  %.sroa.4.0..sroa_idx29.i861 = getelementptr inbounds nuw i8, ptr %i.mg, i64 128
  store i64 1, ptr %.sroa.4.0..sroa_idx29.i861, align 8, !alias.scope !42919
  %i.axf = getelementptr inbounds nuw i8, ptr %i.mg, i64 136
  store i16 %i.axe, ptr %i.axf, align 8, !alias.scope !42919
  %.sroa.44.0..sroa_idx.i862 = getelementptr inbounds nuw i8, ptr %i.mg, i64 138
  store i16 %i.axd, ptr %.sroa.44.0..sroa_idx.i862, align 2, !alias.scope !42919
  %.sroa.55.0..sroa_idx.i863 = getelementptr inbounds nuw i8, ptr %i.mg, i64 140
  store i16 0, ptr %.sroa.55.0..sroa_idx.i863, align 4, !alias.scope !42919
  %.sroa.66.0..sroa_idx.i864 = getelementptr inbounds nuw i8, ptr %i.mg, i64 142
  store i16 0, ptr %.sroa.66.0..sroa_idx.i864, align 2, !alias.scope !42919
  br label %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit865"

bb.sr:                                            ; preds = %bb.so
  %i.axg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..stmt..Stmt$GT$17h8c7cea9300790c9cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %.sroa.641) #72
          to label %common.resume3979 unwind label %bb.ss

bb.ss:                                            ; preds = %bb.sr
  %i.axh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !42921
  unreachable

"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit865": ; preds = %.thread.i855, %bb.sp, %bb.sq
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !42922
  %i.axi = tail call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 144, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !42922 ; 3 uses
  %i.axj = icmp eq ptr %i.axi, null
  br i1 %i.axj, label %bb.st, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hffb8924bb0d5526dE.exit722", !prof !63

bb.st:                                            ; preds = %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit865"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 144) #70
          to label %.noexc866 unwind label %bb.su

.noexc866:                                        ; preds = %bb.st
  unreachable

bb.su:                                            ; preds = %bb.st
  %i.axk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN69_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b307487833700cdE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(144) %i.mg)
          to label %common.resume3979 unwind label %bb.sv, !inline_history !122

bb.sv:                                            ; preds = %bb.su
  %i.axl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17hffb8924bb0d5526dE.exit722": ; preds = %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit865"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.axi, ptr noundef nonnull align 8 dereferenceable(144) %i.mg, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mg)
  %i.axm = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  store ptr %i.axi, ptr %i.axm, align 8
  store i8 14, ptr %i.no, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.641)
  br label %bb.aj

bb.sw:                                            ; preds = %bb.sm, %bb.sk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mg)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.641)
  br label %bb.ajh

bb.sx:                                            ; preds = %bb.z
  %i.axn = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.axo = load i16, ptr %i.axn, align 4, !noundef !60 ; 2 uses
  %i.axp = and i16 %i.axo, 4
  %.not647 = icmp eq i16 %i.axp, 0
  br i1 %.not647, label %.thread2108, label %bb.sy, !prof !71

bb.sy:                                            ; preds = %bb.sx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ma)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lz)
  %i.axq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.axr = load i64, ptr %i.axq, align 8, !noundef !60 ; 2 uses
  %i.axs = load i64, ptr %3, align 8
  %i.axt = freeze i64 %i.axs                      ; 2 uses
  %i.axu = add i64 %i.axr, -1
  %or.cond2391.not = icmp ult i64 %i.axu, %i.axt
  br i1 %or.cond2391.not, label %bb.sz, label %bb.ta, !prof !73

bb.sz:                                            ; preds = %bb.sy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iy)
  store i64 34, ptr %i.iy, align 8
  %i.axv = load i16, ptr %i.nu, align 8, !noundef !60
  %i.axw = load i16, ptr %i.nv, align 2, !noundef !60
  call void @"_ZN4rhai6parser58_$LT$impl$u20$rhai..types..parse_error..ParseErrorType$GT$8into_err17he5d999a47a55ea69E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.iz, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.iy, i16 noundef %i.axv, i16 noundef %i.axw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iy)
  %i.axx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.axy = load <2 x i64>, ptr %i.iz, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iz)
  store <2 x i64> %i.axy, ptr %i.axx, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ma)
  br label %bb.ajh

bb.ta:                                            ; preds = %bb.sy
  %i.axz = add i64 %i.axt, 1
  %i.aya = getelementptr inbounds nuw i8, ptr %3, i64 22
  %i.ayb = load i8, ptr %i.aya, align 2, !noundef !60
  store i64 %i.axz, ptr %i.ly, align 8
  %.sroa.655.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  store i64 %i.axr, ptr %.sroa.655.sroa.7.0..sroa_idx, align 8
  %.sroa.655.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  %i.ayc = load <2 x i16>, ptr %i.nu, align 8
  store <2 x i16> %i.ayc, ptr %.sroa.655.sroa.8.0..sroa_idx, align 8
  %.sroa.655.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ly, i64 20
  store i16 %i.axo, ptr %.sroa.655.sroa.10.0..sroa_idx, align 4
  %.sroa.655.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ly, i64 22
  store i8 %i.ayb, ptr %.sroa.655.sroa.11.0..sroa_idx, align 2
  call fastcc void @"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$9parse_for17hcceb752c528a343fE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.lz, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(96) %2, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.ly)
  %i.ayd = load i64, ptr %i.lz, align 8, !range !68, !noundef !60
  %i.aye = trunc nuw i64 %i.ayd to i1
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.653, ptr noundef nonnull align 8 dereferenceable(16) %i.ayf, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lz)
  br i1 %i.aye, label %bb.tb, label %bb.tc

bb.tb:                                            ; preds = %bb.ta
  %i.ayg = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ayg, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.653, i64 16, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ma)
  br label %bb.ajh

bb.tc:                                            ; preds = %bb.ta
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42923)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42924)
  %i.ayh = load i8, ptr %.sroa.653, align 8, !range !102, !alias.scope !42924, !noundef !60 ; 2 uses
  switch i8 %i.ayh, label %bb.td [
    i8 0, label %bb.te
    i8 9, label %.thread.i3800
  ]

bb.td:                                            ; preds = %bb.tc
  %i.ayi = invoke { i16, i16 } @_ZN4rhai3ast4stmt4Stmt8position17h00f99734812725e4E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.653)
          to label %bb.tf unwind label %bb.tg, !noalias !42923 ; 2 uses

.thread.i3800:                                    ; preds = %bb.tc
  %i.ayj = getelementptr inbounds nuw i8, ptr %.sroa.653, i64 8
  %i.ayk = load ptr, ptr %i.ayj, align 8, !alias.scope !42924, !nonnull !60, !noundef !60 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ma, ptr noundef nonnull align 8 dereferenceable(144) %i.ayk, i64 144, i1 false), !noalias !42924
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ayk, i64 noundef 144, i64 noundef 8) #71, !noalias !42925
  br label %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit3810"

bb.te:                                            ; preds = %bb.tc
  %i.ayl = getelementptr inbounds nuw i8, ptr %.sroa.653, i64 2
  %.sroa.4.0..sroa_idx.i3801 = getelementptr inbounds nuw i8, ptr %i.ma, i64 128
  store i64 0, ptr %.sroa.4.0..sroa_idx.i3801, align 8, !alias.scope !42923
  %i.aym = getelementptr inbounds nuw i8, ptr %i.ma, i64 136
  %13 = load <1 x i32>, ptr %i.ayl, align 2, !alias.scope !42924
  %14 = shufflevector <1 x i32> %13, <1 x i32> poison, <2 x i32> zeroinitializer
  store <2 x i32> %14, ptr %i.aym, align 8, !alias.scope !42923
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..stmt..Stmt$GT$17h8c7cea9300790c9cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %.sroa.653), !noalias !42923
  br label %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit3810"

bb.tf:                                            ; preds = %bb.td
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !42925
  %i.ayn = extractvalue { i16, i16 } %i.ayi, 1
  %i.ayo = extractvalue { i16, i16 } %i.ayi, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ma, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.653, i64 16, i1 false), !alias.scope !42925
  %.sroa.4.0..sroa_idx29.i3806 = getelementptr inbounds nuw i8, ptr %i.ma, i64 128
  store i64 1, ptr %.sroa.4.0..sroa_idx29.i3806, align 8, !alias.scope !42923
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.ma, i64 136
  store i16 %i.ayo, ptr %i.ayp, align 8, !alias.scope !42923
  %.sroa.44.0..sroa_idx.i3807 = getelementptr inbounds nuw i8, ptr %i.ma, i64 138
  store i16 %i.ayn, ptr %.sroa.44.0..sroa_idx.i3807, align 2, !alias.scope !42923
  %.sroa.55.0..sroa_idx.i3808 = getelementptr inbounds nuw i8, ptr %i.ma, i64 140
  store i16 0, ptr %.sroa.55.0..sroa_idx.i3808, align 4, !alias.scope !42923
  %.sroa.66.0..sroa_idx.i3809 = getelementptr inbounds nuw i8, ptr %i.ma, i64 142
  store i16 0, ptr %.sroa.66.0..sroa_idx.i3809, align 2, !alias.scope !42923
  br label %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit3810"

bb.tg:                                            ; preds = %bb.td
  %i.ayq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ayr = icmp eq i8 %i.ayh, 9
  br i1 %i.ayr, label %common.resume3979, label %bb.th

bb.th:                                            ; preds = %bb.tg
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..stmt..Stmt$GT$17h8c7cea9300790c9cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %.sroa.653) #72
          to label %common.resume3979 unwind label %bb.ti, !noalias !42923

bb.ti:                                            ; preds = %bb.th
  %i.ays = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !42925
  unreachable

"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit3810": ; preds = %.thread.i3800, %bb.te, %bb.tf
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !42926
  %i.ayt = tail call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 144, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !42926 ; 3 uses
  %i.ayu = icmp eq ptr %i.ayt, null
  br i1 %i.ayu, label %bb.tj, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hffb8924bb0d5526dE.exit", !prof !63

bb.tj:                                            ; preds = %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit3810"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 144) #70
          to label %.noexc3811 unwind label %bb.tk

.noexc3811:                                       ; preds = %bb.tj
  unreachable

bb.tk:                                            ; preds = %bb.tj
  %i.ayv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN69_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b307487833700cdE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(144) %i.ma)
          to label %common.resume3979 unwind label %bb.tl, !inline_history !122

bb.tl:                                            ; preds = %bb.tk
  %i.ayw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17hffb8924bb0d5526dE.exit": ; preds = %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit3810"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ayt, ptr noundef nonnull align 8 dereferenceable(144) %i.ma, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ma)
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  store ptr %i.ayt, ptr %i.ayx, align 8
  store i8 14, ptr %i.no, align 16
  br label %bb.aj

bb.tm:                                            ; preds = %bb.aa
  %i.ayy = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ayz = load ptr, ptr %i.ayy, align 8, !nonnull !60, !align !61, !noundef !60 ; 2 uses
  %i.aza = getelementptr inbounds nuw i8, ptr %i.ayz, i64 24
  %i.azb = load i64, ptr %i.aza, align 8, !noundef !60
  %i.azc = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.azd = load i64, ptr %i.azc, align 8, !noundef !60
  %.not644 = icmp ult i64 %i.azb, %i.azd
  br i1 %.not644, label %bb.tn, label %bb.abf, !prof !79

bb.tn:                                            ; preds = %bb.abg, %bb.tm
  %i.aze = phi ptr [ %i.bvt, %bb.abg ], [ %i.ayz, %bb.tm ]
  %.sroa.7.0.copyload = phi i16 [ %i.qx, %bb.abg ], [ %i.qu, %bb.tm ]
  %.sroa.01197.0.copyload = load i64, ptr %3, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx1198 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx1198, align 8 ; 2 uses
  %.sroa.5.0.copyload = load i16, ptr %i.nu, align 8 ; 4 uses
  %.sroa.61199.0.copyload = load i16, ptr %i.nv, align 2 ; 4 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 22
  %.sroa.8.0.copyload = load i8, ptr %.sroa.8.0..sroa_idx, align 2 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42927)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee), !noalias !42928
  %i.azf = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.azg = load ptr, ptr %i.azf, align 8, !alias.scope !42927, !align !61, !noundef !60
  %i.azh = load ptr, ptr %2, align 8, !alias.scope !42927, !nonnull !60, !align !61, !noundef !60 ; 4 uses
  %i.azi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.azj = load ptr, ptr %i.azi, align 8, !alias.scope !42927, !nonnull !60, !noundef !60 ; 3 uses
  %.val.i1113 = load i64, ptr %i.azj, align 8, !noalias !42928, !noundef !60 ; 2 uses
  %i.azk = icmp ne i64 %.val.i1113, 0
  tail call void @llvm.assume(i1 %i.azk), !noalias !42928
  %i.azl = add i64 %.val.i1113, 1                 ; 2 uses
  store i64 %i.azl, ptr %i.azj, align 8, !noalias !42928
  %i.azm = icmp eq i64 %i.azl, 0
  br i1 %i.azm, label %bb.to, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17hc9bb176068977430E.exit, !prof !71

bb.to:                                            ; preds = %bb.tn
  tail call void @llvm.trap(), !noalias !42928
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17hc9bb176068977430E.exit: ; preds = %bb.tn
  %i.azn = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.azh, ptr %i.ee, align 8, !alias.scope !42929, !noalias !42928
  %i.azo = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store ptr %i.azj, ptr %i.azo, align 8, !alias.scope !42929, !noalias !42928
  %i.azp = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store ptr %i.aze, ptr %i.azp, align 8, !alias.scope !42929, !noalias !42928
  %i.azq = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  store ptr @_ZN4core3ops8function6FnOnce9call_once17hbb60dadd69713e9eE, ptr %i.azq, align 8, !alias.scope !42929, !noalias !42928
  %i.azr = getelementptr inbounds nuw i8, ptr %i.ee, i64 64
  store ptr %i.azg, ptr %i.azr, align 8, !alias.scope !42929, !noalias !42928
  %i.azs = getelementptr inbounds nuw i8, ptr %i.ee, i64 72
  store ptr null, ptr %i.azs, align 8, !alias.scope !42929, !noalias !42928
  %i.azt = getelementptr inbounds nuw i8, ptr %i.ee, i64 32 ; 2 uses
  store i64 ptrtoint (ptr @_ZN8thin_vec12EMPTY_HEADER17h705e9b5c893b15cbE to i64), ptr %i.azt, align 8, !alias.scope !42929, !noalias !42928
  %.sroa.4.0..sroa_idx.i1111 = getelementptr inbounds nuw i8, ptr %i.ee, i64 40
  store i64 ptrtoint (ptr @_ZN8thin_vec12EMPTY_HEADER17h705e9b5c893b15cbE to i64), ptr %.sroa.4.0..sroa_idx.i1111, align 8, !alias.scope !42929, !noalias !42928
  %.sroa.5.0..sroa_idx.i1112 = getelementptr inbounds nuw i8, ptr %i.ee, i64 48
  store i64 ptrtoint (ptr @_ZN8thin_vec12EMPTY_HEADER17h705e9b5c893b15cbE to i64), ptr %.sroa.5.0..sroa_idx.i1112, align 8, !alias.scope !42929, !noalias !42928
  %i.azu = getelementptr inbounds nuw i8, ptr %i.ee, i64 80
  store i64 0, ptr %i.azu, align 8, !alias.scope !42929, !noalias !42928
  %i.azv = getelementptr inbounds nuw i8, ptr %i.ee, i64 56 ; 3 uses
  store i64 ptrtoint (ptr @_ZN8thin_vec12EMPTY_HEADER17h705e9b5c893b15cbE to i64), ptr %i.azv, align 8, !alias.scope !42929, !noalias !42928
  %i.azw = getelementptr inbounds nuw i8, ptr %i.ee, i64 88
  store i8 1, ptr %i.azw, align 8, !alias.scope !42929, !noalias !42928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed), !noalias !42928
  store i64 0, ptr %i.ed, align 8, !noalias !42928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec), !noalias !42928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb), !noalias !42928
  %i.azx = getelementptr inbounds nuw i8, ptr %i.azh, i64 224 ; 2 uses
  %.sroa.033.0.copyload.i = load i32, ptr %i.azx, align 8, !noalias !42928 ; 3 uses
  store i32 87, ptr %i.azx, align 8, !noalias !42928
  %.not.i874 = icmp eq i32 %.sroa.033.0.copyload.i, 87
  br i1 %.not.i874, label %bb.tq, label %bb.tp

bb.tp:                                            ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17hc9bb176068977430E.exit
  %.sroa.535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.azh, i64 228
  %.sroa.438.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.438.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.535.0..sroa_idx.i, i64 20, i1 false)
  store i32 %.sroa.033.0.copyload.i, ptr %i.eb, align 8, !noalias !42928
  br label %bb.tr

bb.tq:                                            ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17hc9bb176068977430E.exit
  invoke void @"_ZN89_$LT$rhai..tokenizer..TokenIterator$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc956a9b882b5a932E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.eb, ptr noalias noundef nonnull align 8 dereferenceable(224) %i.azh)
          to label %thread-pre-split2109 unwind label %.loopexit.split-lp2482.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !42928, !inline_history !42475

"_ZN4core3ptr85drop_in_place$LT$$LP$rhai..tokenizer..Token$C$rhai..types..position..Position$RP$$GT$17h6080924dcc8505c6E.exit1110": ; preds = %.loopexit.split-lp2482.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %"_ZN4core3ptr85drop_in_place$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$17h3ebc508e0d306a65E.exit1089", %bb.vt, %bb.wf, %bb.vw, %.noexc1042, %.thread2142, %bb.tt, %bb.abe, %bb.wm, %.thread2154, %.thread2154, %bb.vm, %.body152.i
  %.pn139.pn.pn.i = phi { ptr, i32 } [ %.pn139.pn.i.ph, %bb.abe ], [ %i.bda, %bb.vw ], [ %i.bdj, %bb.wf ], [ %.pn128.i2148, %bb.wm ], [ %.pn128.i2148, %.thread2154 ], [ %.pn128.i2148, %.thread2154 ], [ %.pn126.i2117, %"_ZN4core3ptr85drop_in_place$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$17h3ebc508e0d306a65E.exit1089" ], [ %.pn.i894, %.body152.i ], [ %.pn.i894, %bb.vm ], [ %i.baa, %bb.tt ], [ %i.bcd, %.thread2142 ], [ %.pn136.pn.i2187, %.noexc1042 ], [ %i.bcw, %bb.vt ], [ %lpad.loopexit.split-lp7397, %.loopexit.split-lp2482.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$smallvec..SmallVec$LT$$u5b$rhai..types..immutable_string..ImmutableString$u3b$$u20$3$u5d$$GT$$GT$17he9a634324b0db34aE"(ptr noalias noundef align 8 dereferenceable(32) %i.ed) #72
          to label %bb.aaf unwind label %bb.vf, !noalias !42930, !inline_history !42475

thread-pre-split2109:                             ; preds = %bb.tq
  %.pr2110 = load i32, ptr %i.eb, align 8, !noalias !42928
  br label %bb.tr

bb.tr:                                            ; preds = %thread-pre-split2109, %bb.tp
  %i.azy = phi i32 [ %.pr2110, %thread-pre-split2109 ], [ %.sroa.033.0.copyload.i, %bb.tp ]
  %.not120.i = icmp eq i32 %i.azy, 86
  br i1 %.not120.i, label %.invoke3718, label %bb.ts, !prof !71

bb.ts:                                            ; preds = %bb.tr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, ptr noundef nonnull align 8 dereferenceable(24) %i.eb, i64 24, i1 false), !noalias !42928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb), !noalias !42928
  %i.azz = invoke fastcc noundef zeroext i1 @"_ZN63_$LT$rhai..tokenizer..Token$u20$as$u20$core..cmp..PartialEq$GT$2eq17h42b22208bedd3d4aE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ec, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) @1285)
          to label %bb.tu unwind label %bb.tt, !noalias !42928, !inline_history !42475

bb.tt:                                            ; preds = %bb.ts
  %i.baa = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr43drop_in_place$LT$rhai..tokenizer..Token$GT$17ha4e996b9761910c4E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.ec)
          to label %"_ZN4core3ptr85drop_in_place$LT$$LP$rhai..tokenizer..Token$C$rhai..types..position..Position$RP$$GT$17h6080924dcc8505c6E.exit1110" unwind label %bb.vf

bb.tu:                                            ; preds = %bb.ts
  br i1 %i.azz, label %bb.tv, label %bb.tw

bb.tv:                                            ; preds = %bb.tu
  invoke void @"_ZN4core3ptr43drop_in_place$LT$rhai..tokenizer..Token$GT$17ha4e996b9761910c4E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.ec)
          to label %"_ZN4core3ptr85drop_in_place$LT$$LP$rhai..tokenizer..Token$C$rhai..types..position..Position$RP$$GT$17h6080924dcc8505c6E.exit1108" unwind label %.loopexit.split-lp2482.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.tw:                                            ; preds = %bb.tu
  invoke void @"_ZN4core3ptr43drop_in_place$LT$rhai..tokenizer..Token$GT$17ha4e996b9761910c4E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.ec)
          to label %"_ZN4core3ptr85drop_in_place$LT$$LP$rhai..tokenizer..Token$C$rhai..types..position..Position$RP$$GT$17h6080924dcc8505c6E.exit1106" unwind label %.loopexit.split-lp2482.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZN4core3ptr85drop_in_place$LT$$LP$rhai..tokenizer..Token$C$rhai..types..position..Position$RP$$GT$17h6080924dcc8505c6E.exit1108": ; preds = %bb.tv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec), !noalias !42928
  br label %bb.wn

"_ZN4core3ptr85drop_in_place$LT$$LP$rhai..tokenizer..Token$C$rhai..types..position..Position$RP$$GT$17h6080924dcc8505c6E.exit1106": ; preds = %bb.tw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec), !noalias !42928
end_hunk_2
begin_hunk_3_@"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$15parse_binary_op17h7cd09c0d2d9887e8E":bb.a
          to label %.critedge400 unwind label %.loopexit.split-lp

.critedge400:                                     ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.is, ptr noundef nonnull align 8 dereferenceable(16) %i.cf, i64 16, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  br label %bb.qa

switch.lookup:                                    ; preds = %bb.r
  %i.it = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$15parse_binary_op17h7cd09c0d2d9887e8E.3295", i64 %i.it
  %switch.load = load i8, ptr %switch.gep, align 1 ; 5 uses
  %i.iu = icmp ne i32 %i.gc, 20                   ; 2 uses
  br i1 %.not344, label %.thread935, label %.split

.split:                                           ; preds = %switch.lookup
  %i.iv = icmp ult i8 %switch.load, %4
  %i.iw = icmp eq i8 %switch.load, %4
  %i.ix = and i1 %i.iu, %i.iw
  %or.cond = or i1 %i.iv, %i.ix
  br i1 %or.cond, label %.critedge.sink.split, label %.thread935

.thread935:                                       ; preds = %.split, %switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  %i.iy = load ptr, ptr %2, align 8, !nonnull !60, !align !61, !noundef !60 ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 224 ; 2 uses
  %.sroa.0198.0.copyload = load i32, ptr %i.iz, align 8 ; 3 uses
  store i32 87, ptr %i.iz, align 8
  %.not = icmp eq i32 %.sroa.0198.0.copyload, 87
  br i1 %.not, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.thread935
  %.sroa.5200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iy, i64 228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4203.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5200.0..sroa_idx, i64 20, i1 false)
  store i32 %.sroa.0198.0.copyload, ptr %i.cc, align 8
  br label %bb.ai

bb.ah:                                            ; preds = %.thread935
  invoke void @"_ZN89_$LT$rhai..tokenizer..TokenIterator$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc956a9b882b5a932E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cc, ptr noalias noundef nonnull align 8 dereferenceable(224) %i.iy)
          to label %thread-pre-split937 unwind label %.loopexit1319

thread-pre-split937:                              ; preds = %bb.ah
  %.pr938 = load i32, ptr %i.cc, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %thread-pre-split937, %bb.ag
  %i.ja = phi i32 [ %.pr938, %thread-pre-split937 ], [ %.sroa.0198.0.copyload, %bb.ag ]
  %.not350 = icmp eq i32 %i.ja, 86
  br i1 %.not350, label %.invoke, label %bb.aj, !prof !71

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i64 16, i1 false)
  %i.jb = load <2 x i16>, ptr %i.cv, align 8      ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  %i.jc = load i32, ptr %i.cd, align 8, !range !101, !noundef !60
  switch i32 %i.jc, label %bb.ak [
    i32 31, label %bb.al
    i32 33, label %bb.an
    i32 34, label %bb.ap
  ]

bb.ak:                                            ; preds = %bb.bn, %bb.bk, %bb.as, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.640)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  invoke fastcc void @"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$11parse_unary17h8c60aa360561bd76E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bx, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(96) %2, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bw)
          to label %bb.bq unwind label %.loopexit.split-lp1322.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.al:                                            ; preds = %bb.aj
  %i.jd = load ptr, ptr %2, align 8, !nonnull !60, !align !61, !noundef !60 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 224 ; 3 uses
  %i.jf = load i32, ptr %i.je, align 8, !range !128, !noundef !60 ; 2 uses
  %.not.i477 = icmp eq i32 %i.jf, 87
  br i1 %.not.i477, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !43459
  invoke void @"_ZN89_$LT$rhai..tokenizer..TokenIterator$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc956a9b882b5a932E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(224) %i.jd)
          to label %.noexc479 unwind label %.loopexit.split-lp1322.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc479:                                        ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.je, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !43460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !43459
  %.pre.i478 = load i32, ptr %i.je, align 8, !range !128
  br label %bb.ar

bb.an:                                            ; preds = %bb.aj
  %i.jg = load ptr, ptr %2, align 8, !nonnull !60, !align !61, !noundef !60 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 224 ; 3 uses
  %i.ji = load i32, ptr %i.jh, align 8, !range !128, !noundef !60 ; 2 uses
  %.not.i481 = icmp eq i32 %i.ji, 87
  br i1 %.not.i481, label %bb.ao, label %bb.bk

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !43461
  invoke void @"_ZN89_$LT$rhai..tokenizer..TokenIterator$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc956a9b882b5a932E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(224) %i.jg)
          to label %.noexc483 unwind label %.loopexit.split-lp1322.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc483:                                        ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jh, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !43462
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !43461
  %.pre.i482 = load i32, ptr %i.jh, align 8, !range !128
  br label %bb.bk

bb.ap:                                            ; preds = %bb.aj
  %i.jj = load ptr, ptr %2, align 8, !nonnull !60, !align !61, !noundef !60 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 224 ; 3 uses
  %i.jl = load i32, ptr %i.jk, align 8, !range !128, !noundef !60 ; 2 uses
  %.not.i485 = icmp eq i32 %i.jl, 87
  br i1 %.not.i485, label %bb.aq, label %bb.bn

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !43463
  invoke void @"_ZN89_$LT$rhai..tokenizer..TokenIterator$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc956a9b882b5a932E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(224) %i.jj)
          to label %.noexc487 unwind label %.loopexit.split-lp1322.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc487:                                        ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jk, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !noalias !43464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !43463
  %.pre.i486 = load i32, ptr %i.jk, align 8, !range !128
  br label %bb.bn

.thread942:                                       ; preds = %.body.thread1045, %.noexc553, %bb.px, %.loopexit.split-lp1331.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread947, %.body442
  %.sroa.0185.4 = phi i8 [ 1, %.body442 ], [ 1, %.thread947 ], [ 1, %.loopexit.split-lp1331.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0185.11.ph, %.body.thread1045 ], [ %.sroa.0185.12, %.noexc553 ], [ %.sroa.0185.101035, %bb.px ]
  %.sroa.0330.2 = phi ptr [ %i.jm, %.body442 ], [ %i.bbe, %.thread947 ], [ %i.ku, %.loopexit.split-lp1331.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ou, %.body.thread1045 ], [ %.sroa.0330.5, %.noexc553 ], [ %.sroa.0330.41037, %bb.px ]
  %.sroa.48.2 = phi i32 [ %i.jn, %.body442 ], [ %i.bbf, %.thread947 ], [ %i.kv, %.loopexit.split-lp1331.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ov, %.body.thread1045 ], [ %.sroa.48.5, %.noexc553 ], [ %.sroa.48.41039, %bb.px ]
  invoke void @"_ZN4core3ptr43drop_in_place$LT$rhai..tokenizer..Token$GT$17ha4e996b9761910c4E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cd) #72
          to label %bb.i unwind label %bb.kf

.loopexit.split-lp1322.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bm, %bb.ay, %bb.aq, %bb.ao, %bb.am, %bb.at, %bb.ak, %.invoke2587, %bb.py
  %lpad.loopexit.split-lp2910 = landingpad { ptr, i32 }
          cleanup
  br label %.body442

.body442:                                         ; preds = %.loopexit.split-lp1322.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.be, %bb.ba, %bb.bb
  %eh.lpad-body443 = phi { ptr, i32 } [ %i.jy, %bb.ba ], [ %i.kd, %bb.be ], [ %i.jy, %bb.bb ], [ %lpad.loopexit.split-lp2910, %.loopexit.split-lp1322.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.jm = extractvalue { ptr, i32 } %eh.lpad-body443, 0
  %i.jn = extractvalue { ptr, i32 } %eh.lpad-body443, 1
  br label %.thread942

bb.ar:                                            ; preds = %.noexc479, %bb.al
  %i.jo = phi i32 [ %.pre.i478, %.noexc479 ], [ %i.jf, %bb.al ] ; 2 uses
  %.not364 = icmp eq i32 %i.jo, 86
  br i1 %.not364, label %.invoke2587, label %bb.as, !prof !71

bb.as:                                            ; preds = %bb.ar
  %i.jp = and i32 %i.jo, 124
  %switch = icmp eq i32 %i.jp, 64
  br i1 %switch, label %bb.at, label %bb.ak

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  invoke void @"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$10parse_stmt17h2907d6ea8753547bE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cb, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(96) %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ca)
          to label %bb.au unwind label %.loopexit.split-lp1322.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  %i.jq = load i64, ptr %i.cb, align 8, !range !68, !noundef !60
  %i.jr = trunc nuw i64 %i.jq to i1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %i.cx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  br i1 %i.jr, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.js, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.bj

bb.aw:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.experimental.noalias.scope.decl(metadata !43465)
  call void @llvm.experimental.noalias.scope.decl(metadata !43466)
  %i.jt = load i8, ptr %i.bz, align 8, !range !102, !alias.scope !43466, !noundef !60 ; 2 uses
  switch i8 %i.jt, label %bb.ax [
    i8 0, label %bb.ay
    i8 9, label %.thread.i
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.ju = invoke { i16, i16 } @_ZN4rhai3ast4stmt4Stmt8position17h00f99734812725e4E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bz)
          to label %bb.az unwind label %bb.ba, !noalias !43465 ; 2 uses

.thread.i:                                        ; preds = %bb.aw
  %i.jv = load ptr, ptr %i.cy, align 8, !alias.scope !43466, !nonnull !60, !noundef !60 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.by, ptr noundef nonnull align 8 dereferenceable(144) %i.jv, i64 144, i1 false), !noalias !43466
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jv, i64 noundef 144, i64 noundef 8) #71, !noalias !43467
  br label %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit"

bb.ay:                                            ; preds = %bb.aw
  store i64 0, ptr %.sroa.4.0..sroa_idx.i489, align 8, !alias.scope !43465
  %6 = load <1 x i32>, ptr %i.cz, align 2, !alias.scope !43466
  %7 = shufflevector <1 x i32> %6, <1 x i32> poison, <2 x i32> zeroinitializer
  store <2 x i32> %7, ptr %i.da, align 8, !alias.scope !43465
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..stmt..Stmt$GT$17h8c7cea9300790c9cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.bz)
          to label %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit" unwind label %.loopexit.split-lp1322.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.az:                                            ; preds = %bb.ax
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !43467
  %i.jw = extractvalue { i16, i16 } %i.ju, 1
  %i.jx = extractvalue { i16, i16 } %i.ju, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.by, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.bz, i64 16, i1 false), !alias.scope !43467
  store i64 1, ptr %.sroa.4.0..sroa_idx.i489, align 8, !alias.scope !43465
  store i16 %i.jx, ptr %i.da, align 8, !alias.scope !43465
  store i16 %i.jw, ptr %.sroa.42.0..sroa_idx.i490, align 2, !alias.scope !43465
  store i16 0, ptr %.sroa.5.0..sroa_idx.i491, align 4, !alias.scope !43465
  store i16 0, ptr %.sroa.6.0..sroa_idx.i, align 2, !alias.scope !43465
  br label %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit"

bb.ba:                                            ; preds = %bb.ax
  %i.jy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jz = icmp eq i8 %i.jt, 9
  br i1 %i.jz, label %.body442, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..stmt..Stmt$GT$17h8c7cea9300790c9cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.bz) #72
          to label %.body442 unwind label %bb.bc, !noalias !43465

bb.bc:                                            ; preds = %bb.bb
  %i.ka = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !43467
  unreachable

"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit": ; preds = %bb.az, %.thread.i, %bb.ay
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !43468
  %i.kb = call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 144, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !43468 ; 3 uses
  %i.kc = icmp eq ptr %i.kb, null
  br i1 %i.kc, label %bb.bd, label %bb.bg, !prof !63

bb.bd:                                            ; preds = %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 144) #70
          to label %.noexc497 unwind label %bb.be

.noexc497:                                        ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %bb.bd
  %i.kd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN69_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b307487833700cdE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(144) %i.by)
          to label %.body442 unwind label %bb.bf, !inline_history !122

bb.bf:                                            ; preds = %bb.be
  %i.ke = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

bb.bg:                                            ; preds = %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.kb, ptr noundef nonnull align 8 dereferenceable(144) %i.by, i64 144, i1 false)
  store ptr %i.kb, ptr %i.db, align 8
  store i8 14, ptr %i.bq, align 8
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bs, %bb.bp, %bb.bg
  %i.kf = load ptr, ptr %2, align 8, !nonnull !60, !align !61, !noundef !60 ; 6 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 224 ; 4 uses
  %i.kh = load i32, ptr %i.kg, align 8, !range !128, !noundef !60 ; 2 uses
  %.not.i499 = icmp eq i32 %i.kh, 87
  br i1 %.not.i499, label %bb.bi, label %bb.bt

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !43469
  invoke void @"_ZN89_$LT$rhai..tokenizer..TokenIterator$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc956a9b882b5a932E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(224) %i.kf)
          to label %.noexc501 unwind label %.thread953.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc501:                                        ; preds = %bb.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kg, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !43470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !43469
  %.pre.i500 = load i32, ptr %i.kg, align 8, !range !128
  br label %bb.bt

bb.bj:                                            ; preds = %bb.cn, %.thread965, %bb.py, %bb.br, %bb.av
  %.sroa.0185.6 = phi i8 [ 1, %bb.br ], [ 1, %bb.py ], [ 1, %bb.cn ], [ 1, %bb.av ], [ %.sroa.0181.51281, %.thread965 ] ; 2 uses
  invoke void @"_ZN4core3ptr43drop_in_place$LT$rhai..tokenizer..Token$GT$17ha4e996b9761910c4E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cd)
          to label %bb.pz unwind label %.loopexit.split-lp

bb.bk:                                            ; preds = %.noexc483, %bb.an
  %i.ki = phi i32 [ %.pre.i482, %.noexc483 ], [ %i.ji, %bb.an ]
  switch i32 %i.ki, label %bb.ak [
    i32 86, label %.invoke2587
    i32 7, label %bb.bl
    i32 9, label %bb.bl
    i32 11, label %bb.bl
    i32 23, label %bb.bl
    i32 26, label %bb.bl
    i32 28, label %bb.bl
  ], !prof !43471

bb.bl:                                            ; preds = %bb.bn, %bb.bn, %bb.bn, %bb.bn, %bb.bn, %bb.bn, %bb.bk, %bb.bk, %bb.bk, %bb.bk, %bb.bk, %bb.bk
  %i.kj = load ptr, ptr %2, align 8, !nonnull !60, !align !61, !noundef !60 ; 3 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 224 ; 3 uses
  %i.kl = load i32, ptr %i.kk, align 8, !range !128, !noundef !60 ; 2 uses
  %.not.i503 = icmp eq i32 %i.kl, 87
  br i1 %.not.i503, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !43472
  invoke void @"_ZN89_$LT$rhai..tokenizer..TokenIterator$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc956a9b882b5a932E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(224) %i.kj)
          to label %.noexc505 unwind label %.loopexit.split-lp1322.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc505:                                        ; preds = %bb.bm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kk, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !43473
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !43472
  %.pre.i504 = load i32, ptr %i.kk, align 8, !range !128
  br label %bb.bo

bb.bn:                                            ; preds = %.noexc487, %bb.ap
  %i.km = phi i32 [ %.pre.i486, %.noexc487 ], [ %i.jl, %bb.ap ]
  switch i32 %i.km, label %bb.ak [
    i32 86, label %.invoke2587
    i32 7, label %bb.bl
    i32 9, label %bb.bl
    i32 11, label %bb.bl
    i32 23, label %bb.bl
    i32 26, label %bb.bl
    i32 28, label %bb.bl
  ], !prof !43471

bb.bo:                                            ; preds = %.noexc505, %bb.bl
  %i.kn = phi i32 [ %.pre.i504, %.noexc505 ], [ %i.kl, %bb.bl ]
  %.not360 = icmp eq i32 %i.kn, 86
  br i1 %.not360, label %.invoke2587, label %bb.bp, !prof !71

bb.bp:                                            ; preds = %bb.bo
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kj, i64 240
  %i.kp = load <2 x i16>, ptr %i.ko, align 8
  store <2 x i16> %i.kp, ptr %i.cw, align 2
  store i8 9, ptr %i.bq, align 8
  br label %bb.bh

.invoke2587:                                      ; preds = %bb.bo, %bb.bn, %bb.bk, %bb.ar
  %i.kq = phi ptr [ @1356, %bb.bn ], [ @1356, %bb.bk ], [ @1355, %bb.ar ], [ @1357, %bb.bo ]
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kq) #70
          to label %.cont2588 unwind label %.loopexit.split-lp1322.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont2588:                                        ; preds = %.invoke2587
  unreachable

bb.bq:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  %i.kr = load i64, ptr %i.bx, align 8, !range !68, !noundef !60
  %i.ks = trunc nuw i64 %i.kr to i1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.640, ptr noundef nonnull align 8 dereferenceable(16) %i.dc, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  br i1 %i.ks, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kt, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.640, i64 16, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.640)
  br label %bb.bj

bb.bs:                                            ; preds = %bb.bq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.640, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.640)
  br label %bb.bh

.thread953.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bi, %bb.bv, %bb.bw, %bb.cp, %bb.cm, %bb.bu
  %lpad.loopexit.split-lp2912 = landingpad { ptr, i32 }
          cleanup
  br label %.thread947

.loopexit.split-lp1331.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cq, %bb.pw
  %lpad.loopexit.split-lp2916 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ku = extractvalue { ptr, i32 } %lpad.loopexit.split-lp2916, 0
  %i.kv = extractvalue { ptr, i32 } %lpad.loopexit.split-lp2916, 1
  br label %.thread942

bb.bt:                                            ; preds = %.noexc501, %bb.bh
  %i.kw = phi i32 [ %.pre.i500, %.noexc501 ], [ %i.kh, %bb.bh ] ; 2 uses
  switch i32 %i.kw, label %bb.by [
    i32 86, label %bb.bu
    i32 84, label %bb.bv
  ], !prof !139

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1358) #70
          to label %bb.l unwind label %.thread953.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bv:                                            ; preds = %bb.bt
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kf, i64 232
  %i.ky = load ptr, ptr %i.kx, align 8, !nonnull !60, !align !61, !noundef !60 ; 4 uses
  %i.kz = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ky)
          to label %.noexc454 unwind label %.thread953.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc454:                                        ; preds = %bb.bv
  br i1 %i.kz, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %.noexc454
end_hunk_3
begin_hunk_4_@"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$26convert_expr_into_property17h461a4b09a4a01433E":bb.a
bb.gy:                                            ; preds = %bb.gx
  %i.akc = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef 16, i64 noundef 8) #71
  br label %.body167

bb.gz:                                            ; preds = %bb.gx, %bb.gw
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef 16, i64 noundef 8) #71
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.c
  ret void

bb.hb:                                            ; preds = %bb.gh, %_ZN4rhai6engine6Engine19get_interned_setter17h61b0a12848f2aef4E.exit, %bb.gm
  %i.akd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ake = atomicrmw add ptr %.sroa.0.0.i38, i64 -1 release, align 8, !noalias !44494
  %i.akf = icmp eq i64 %i.ake, 1
  br i1 %i.akf, label %bb.hc, label %bb.he

bb.hc:                                            ; preds = %bb.hb
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.n)
          to label %bb.he unwind label %bb.hd

bb.hd:                                            ; preds = %bb.hh, %bb.hf, %bb.hc, %.body
  %i.akg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

bb.he:                                            ; preds = %bb.cp, %.body.i62, %bb.fz, %.noexc58.i53, %bb.fu, %.noexc53.i51, %bb.ek, %.noexc38.i39, %bb.ef, %.noexc.i34, %bb.dv, %bb.hc, %bb.hb
  %.pn.ph = phi { ptr, i32 } [ %eh.lpad-body.i63, %.body.i62 ], [ %i.na, %bb.cp ], [ %i.aea, %bb.fz ], [ %i.tr, %bb.dv ], [ %i.ui, %bb.ef ], [ %i.ur, %bb.ek ], [ %i.adr, %bb.fu ], [ %i.ui, %.noexc.i34 ], [ %i.ur, %.noexc38.i39 ], [ %i.adr, %.noexc53.i51 ], [ %i.aea, %.noexc58.i53 ], [ %i.akd, %bb.hc ], [ %i.akd, %bb.hb ] ; 2 uses
  %i.akh = atomicrmw add ptr %.sroa.0.0.i16, i64 -1 release, align 8, !noalias !44495
  %i.aki = icmp eq i64 %i.akh, 1
  br i1 %i.aki, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %bb.he
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.o)
          to label %bb.hg unwind label %bb.hd

.body:                                            ; preds = %bb.hg, %bb.hh, %bb.gu
  %.pn.pn227 = phi { ptr, i32 } [ %i.ajv, %bb.gu ], [ %.pn.pn.ph, %bb.hh ], [ %.pn.pn.ph, %bb.hg ]
  invoke fastcc void @"_ZN4core3ptr171drop_in_place$LT$alloc..boxed..Box$LT$$LP$core..option..Option$LT$core..num..nonzero..NonZero$LT$usize$GT$$GT$$C$rhai..types..immutable_string..ImmutableString$RP$$GT$$GT$17h424320a4a6518adbE"(ptr nonnull %i.t) #72
          to label %.body167 unwind label %bb.hd

bb.hg:                                            ; preds = %bb.z, %.noexc.i, %bb.aj, %.noexc38.i, %bb.ao, %.noexc53.i, %bb.by, %.noexc58.i, %bb.cd, %.body.i, %bb.cm, %bb.hf, %bb.he
  %.pn.pn.ph = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.mr, %bb.cm ], [ %i.mf, %bb.cd ], [ %i.bw, %bb.z ], [ %i.cn, %bb.aj ], [ %i.cw, %bb.ao ], [ %i.lw, %bb.by ], [ %i.cn, %.noexc.i ], [ %i.cw, %.noexc38.i ], [ %i.lw, %.noexc53.i ], [ %i.mf, %.noexc58.i ], [ %.pn.ph, %bb.hf ], [ %.pn.ph, %bb.he ] ; 2 uses
  %i.akj = atomicrmw add ptr %i.aa, i64 -1 release, align 8, !noalias !44496
  %i.akk = icmp eq i64 %i.akj, 1
  br i1 %i.akk, label %bb.hh, label %.body

bb.hh:                                            ; preds = %bb.hg
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.p)
          to label %.body unwind label %bb.hd

.body167:                                         ; preds = %.body, %bb.gy
  %.pn7 = phi { ptr, i32 } [ %.pn.pn227, %.body ], [ %i.akc, %bb.gy ]
  resume { ptr, i32 } %.pn7
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$8parse_do17h41fbbfb0879caf3dE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(96) %2, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #8 personality ptr @rust_eh_personality !guid !44526 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [304 x i8], align 8               ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.535 = alloca [16 x i8], align 8          ; 3 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.533 = alloca [16 x i8], align 8          ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 7 uses
  %i.m = alloca [16 x i8], align 8                ; 6 uses
  %i.n = alloca [16 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [56 x i8], align 8                ; 8 uses
  %i.q = alloca [16 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 10 uses
  %i.t = alloca [24 x i8], align 8                ; 10 uses
  %i.u = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 12 uses
  %i.v = alloca [144 x i8], align 8               ; 15 uses
  %i.w = load ptr, ptr %2, align 8, !nonnull !60, !align !61, !noundef !60 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44527)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !44527
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 224 ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.x, align 8, !alias.scope !44527 ; 3 uses
  store i32 87, ptr %i.x, align 8, !alias.scope !44527
  %.not.i = icmp eq i32 %.sroa.0.0.copyload.i, 87
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 228
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..sroa_idx.i, i64 20, i1 false)
  store i32 %.sroa.0.0.copyload.i, ptr %i.e, align 8, !noalias !44527
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @"_ZN89_$LT$rhai..tokenizer..TokenIterator$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc956a9b882b5a932E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(248) %i.w)
  %.pr = load i32, ptr %i.e, align 8, !noalias !44527
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.y = phi i32 [ %.pr, %bb.c ], [ %.sroa.0.0.copyload.i, %bb.b ]
  %.not6.i = icmp eq i32 %i.y, 86
  br i1 %.not6.i, label %bb.e, label %_ZN4rhai6parser9eat_token17h748fc12e2bd8feeaE.exit, !prof !71

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1454) #70
  unreachable

_ZN4rhai6parser9eat_token17h748fc12e2bd8feeaE.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !44527
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !noalias !44527
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.aa = load i16, ptr %i.z, align 8, !noalias !44527, !noundef !60 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 18
  %i.ac = load i16, ptr %i.ab, align 2, !noalias !44527, !noundef !60 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !44527
  call void @"_ZN4core3ptr43drop_in_place$LT$rhai..tokenizer..Token$GT$17ha4e996b9761910c4E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !44527
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44528)
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !44528, !noundef !60 ; 3 uses
  %i.af = load i64, ptr %3, align 8, !alias.scope !44528
  %i.ag = freeze i64 %i.af                        ; 2 uses
  %i.ah = add i64 %i.ae, -1
  %or.cond.i = icmp ult i64 %i.ah, %i.ag
  br i1 %or.cond.i, label %bb.f, label %bb.g, !prof !73

bb.f:                                             ; preds = %_ZN4rhai6parser9eat_token17h748fc12e2bd8feeaE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !44529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !44529
  store i64 34, ptr %i.c, align 8, !noalias !44529
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aj = load i16, ptr %i.ai, align 8, !alias.scope !44528, !noundef !60
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 18
  %i.al = load i16, ptr %i.ak, align 2, !alias.scope !44528, !noundef !60
  call void @"_ZN4rhai6parser58_$LT$impl$u20$rhai..types..parse_error..ParseErrorType$GT$8into_err17he5d999a47a55ea69E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.c, i16 noundef %i.aj, i16 noundef %i.al), !noalias !44529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !44529
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load <2 x i64>, ptr %i.d, align 16, !noalias !44529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !44529
  store <2 x i64> %i.an, ptr %i.am, align 8
  store i64 1, ptr %0, align 8
  br label %bb.ao

bb.g:                                             ; preds = %_ZN4rhai6parser9eat_token17h748fc12e2bd8feeaE.exit
  %i.ao = add i64 %i.ag, 1                        ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 22
  %i.aq = load i8, ptr %i.ap, align 2, !alias.scope !44528, !noundef !60 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.as = load i16, ptr %i.ar, align 4, !alias.scope !44528, !noundef !60 ; 2 uses
  %i.at = or i8 %i.aq, 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 %i.ao, ptr %i.t, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.ae, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i16 %i.aa, ptr %.sroa.6.0..sroa_idx1, align 8
  %.sroa.7.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.t, i64 18
  store i16 %i.ac, ptr %.sroa.7.0..sroa_idx5, align 2
  %.sroa.8.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  store i16 %i.as, ptr %.sroa.8.0..sroa_idx9, align 4
  %.sroa.813.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.t, i64 22
  store i8 %i.at, ptr %.sroa.813.0..sroa_idx14, align 2
  %.sroa.13.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.t, i64 23
  store i8 0, ptr %.sroa.13.0..sroa_idx20, align 1
  call fastcc void @"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$11parse_block17h3edac4abab9a228aE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.u, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(96) %2, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.au = load i64, ptr %i.u, align 8, !range !68, !noundef !60
  %i.av = trunc nuw i64 %i.au to i1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.ba

bb.i:                                             ; preds = %bb.g
  %.sroa.0.0.copyload = load i8, ptr %.sroa.5, align 8
  %.sroa.2122.0..sroa.5.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 2
  %4 = load <1 x i32>, ptr %.sroa.2122.0..sroa.5.sroa_idx, align 2
  %.sroa.4123.0..sroa.5.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 8
  %.sroa.4123.0.copyload = load ptr, ptr %.sroa.4123.0..sroa.5.sroa_idx, align 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44530)
  switch i8 %.sroa.0.0.copyload, label %bb.j [
    i8 0, label %bb.k
    i8 9, label %.thread.i
  ]

bb.j:                                             ; preds = %bb.i
  %i.ay = invoke { i16, i16 } @_ZN4rhai3ast4stmt4Stmt8position17h00f99734812725e4E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.5)
          to label %bb.l unwind label %bb.m       ; 2 uses

.thread.i:                                        ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4123.0.copyload) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.v, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.4123.0.copyload, i64 144, i1 false), !noalias !44531
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4123.0.copyload, i64 noundef 144, i64 noundef 8) #71, !noalias !44532
  br label %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit"

bb.k:                                             ; preds = %bb.i
  %.sroa.4.0..sroa_idx.i67 = getelementptr inbounds nuw i8, ptr %i.v, i64 128
  store i64 0, ptr %.sroa.4.0..sroa_idx.i67, align 8, !alias.scope !44530
  %i.az = getelementptr inbounds nuw i8, ptr %i.v, i64 136
  %5 = shufflevector <1 x i32> %4, <1 x i32> poison, <2 x i32> zeroinitializer
  store <2 x i32> %5, ptr %i.az, align 8, !alias.scope !44530
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..stmt..Stmt$GT$17h8c7cea9300790c9cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %.sroa.5)
  br label %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit"

bb.l:                                             ; preds = %bb.j
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !44532
  %i.ba = extractvalue { i16, i16 } %i.ay, 1
  %i.bb = extractvalue { i16, i16 } %i.ay, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  %.sroa.4.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %i.v, i64 128
  store i64 1, ptr %.sroa.4.0..sroa_idx29.i, align 8, !alias.scope !44530
  %i.bc = getelementptr inbounds nuw i8, ptr %i.v, i64 136
  store i16 %i.bb, ptr %i.bc, align 8, !alias.scope !44530
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 138
  store i16 %i.ba, ptr %.sroa.44.0..sroa_idx.i, align 2, !alias.scope !44530
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 140
  store i16 0, ptr %.sroa.55.0..sroa_idx.i, align 4, !alias.scope !44530
  %.sroa.66.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 142
  store i16 0, ptr %.sroa.66.0..sroa_idx.i, align 2, !alias.scope !44530
  br label %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit"

common.resume:                                    ; preds = %bb.am, %bb.bb, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %.pn63.ph, %bb.bb ], [ %i.bd, %bb.m ], [ %i.cq, %bb.am ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.j
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..stmt..Stmt$GT$17h8c7cea9300790c9cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %.sroa.5) #72
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !44532
  unreachable

"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit": ; preds = %.thread.i, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.bf = load ptr, ptr %2, align 8, !nonnull !60, !align !61, !noundef !60 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 224 ; 2 uses
  %.sroa.049.0.copyload = load i32, ptr %i.bg, align 8 ; 3 uses
  store i32 87, ptr %i.bg, align 8
  %.not58 = icmp eq i32 %.sroa.049.0.copyload, 87
  br i1 %.not58, label %bb.p, label %bb.o

bb.o:                                             ; preds = %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit"
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 228
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.454.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.551.0..sroa_idx, i64 20, i1 false)
  store i32 %.sroa.049.0.copyload, ptr %i.r, align 8
  br label %bb.r

bb.p:                                             ; preds = %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit"
  invoke void @"_ZN89_$LT$rhai..tokenizer..TokenIterator$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc956a9b882b5a932E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(224) %i.bf)
          to label %thread-pre-split unwind label %bb.q

bb.q:                                             ; preds = %bb.aa, %.invoke, %bb.az, %.noexc70, %bb.z, %bb.y, %bb.aj, %bb.ae, %_ZN4rhai6parser25ensure_not_statement_expr17h05698f4885d4f48cE.exit.thread, %bb.p
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

thread-pre-split:                                 ; preds = %bb.p
  %.pr113 = load i32, ptr %i.r, align 8
  br label %bb.r

bb.r:                                             ; preds = %thread-pre-split, %bb.o
  %i.bi = phi i32 [ %.pr113, %thread-pre-split ], [ %.sroa.049.0.copyload, %bb.o ]
  %.not59 = icmp eq i32 %i.bi, 86
  br i1 %.not59, label %.invoke, label %bb.s, !prof !71

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.bj = load i32, ptr %i.s, align 8, !range !101, !noundef !60
  switch i32 %i.bj, label %bb.t [
    i32 45, label %bb.y
    i32 46, label %bb.x
  ]

bb.t:                                             ; preds = %bb.s
  %i.bk = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.bl = load i16, ptr %i.bk, align 8, !noundef !60
  %i.bm = getelementptr inbounds nuw i8, ptr %i.s, i64 18
  %i.bn = load i16, ptr %i.bm, align 2, !noundef !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i32 45, ptr %i.n, align 8
  invoke fastcc void @"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hed1e3aadb7a44a63E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr43drop_in_place$LT$rhai..tokenizer..Token$GT$17ha4e996b9761910c4E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n) #72
          to label %.body unwind label %bb.w, !noalias !44533

bb.v:                                             ; preds = %bb.t
  invoke void @"_ZN4core3ptr43drop_in_place$LT$rhai..tokenizer..Token$GT$17ha4e996b9761910c4E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %"_ZN4rhai9tokenizer101_$LT$impl$u20$core..convert..From$LT$rhai..tokenizer..Token$GT$$u20$for$u20$alloc..string..String$GT$4from17hce2618d7b645fb9fE.exit" unwind label %bb.au

bb.w:                                             ; preds = %bb.u
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !44533
  unreachable

bb.x:                                             ; preds = %bb.s
  br label %bb.y

bb.y:                                             ; preds = %bb.s, %bb.x
  %.sroa.031.0 = phi i8 [ 4, %bb.x ], [ 0, %bb.s ]
  invoke void @"_ZN4core3ptr43drop_in_place$LT$rhai..tokenizer..Token$GT$17ha4e996b9761910c4E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.s)
          to label %"_ZN4core3ptr85drop_in_place$LT$$LP$rhai..tokenizer..Token$C$rhai..types..position..Position$RP$$GT$17h6080924dcc8505c6E.exit" unwind label %bb.q

"_ZN4core3ptr85drop_in_place$LT$$LP$rhai..tokenizer..Token$C$rhai..types..position..Position$RP$$GT$17h6080924dcc8505c6E.exit": ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.bq = load ptr, ptr %2, align 8, !nonnull !60, !align !61, !noundef !60 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44534)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 224 ; 3 uses
  %i.bs = load i32, ptr %i.br, align 8, !range !128, !alias.scope !44534, !noundef !60 ; 2 uses
  %.not.i.i = icmp eq i32 %i.bs, 87
  br i1 %.not.i.i, label %bb.z, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hbd57ee0bf72b5adbE.exit.i"

bb.z:                                             ; preds = %"_ZN4core3ptr85drop_in_place$LT$$LP$rhai..tokenizer..Token$C$rhai..types..position..Position$RP$$GT$17h6080924dcc8505c6E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44535
  invoke void @"_ZN89_$LT$rhai..tokenizer..TokenIterator$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc956a9b882b5a932E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(248) %i.bq)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !44536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44535
  %.pre.i.i = load i32, ptr %i.br, align 8, !range !128, !alias.scope !44534
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hbd57ee0bf72b5adbE.exit.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hbd57ee0bf72b5adbE.exit.i": ; preds = %.noexc, %"_ZN4core3ptr85drop_in_place$LT$$LP$rhai..tokenizer..Token$C$rhai..types..position..Position$RP$$GT$17h6080924dcc8505c6E.exit"
  %i.bt = phi i32 [ %i.bs, %"_ZN4core3ptr85drop_in_place$LT$$LP$rhai..tokenizer..Token$C$rhai..types..position..Position$RP$$GT$17h6080924dcc8505c6E.exit" ], [ %.pre.i.i, %.noexc ]
  switch i32 %i.bt, label %_ZN4rhai6parser25ensure_not_statement_expr17h05698f4885d4f48cE.exit.thread [
    i32 86, label %.invoke
    i32 6, label %bb.aa
  ], !prof !154

.invoke:                                          ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hbd57ee0bf72b5adbE.exit.i", %bb.r
  %i.bu = phi ptr [ @1421, %bb.r ], [ @1236, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hbd57ee0bf72b5adbE.exit.i" ]
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bu) #70
          to label %.cont unwind label %bb.q

.cont:                                            ; preds = %.invoke
  unreachable

bb.aa:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hbd57ee0bf72b5adbE.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !44537
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  invoke fastcc void @"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17ha14a942d1aebe194E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bv)
          to label %.noexc70 unwind label %bb.q

.noexc70:                                         ; preds = %bb.aa
  store i64 20, ptr %i.b, align 8, !noalias !44537
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 240
  %i.bx = load i16, ptr %i.bw, align 8, !alias.scope !44534, !noundef !60
  %i.by = getelementptr inbounds nuw i8, ptr %i.bq, i64 242
  %i.bz = load i16, ptr %i.by, align 2, !alias.scope !44534, !noundef !60
  invoke void @"_ZN4rhai6parser58_$LT$impl$u20$rhai..types..parse_error..ParseErrorType$GT$8into_err17he5d999a47a55ea69E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.b, i16 noundef %i.bx, i16 noundef %i.bz)
          to label %_ZN4rhai6parser25ensure_not_statement_expr17h05698f4885d4f48cE.exit unwind label %bb.q

_ZN4rhai6parser25ensure_not_statement_expr17h05698f4885d4f48cE.exit: ; preds = %.noexc70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !44537
  %.pr114 = load ptr, ptr %i.m, align 8
  %.not60 = icmp eq ptr %.pr114, null
  br i1 %.not60, label %_ZN4rhai6parser25ensure_not_statement_expr17h05698f4885d4f48cE.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %_ZN4rhai6parser25ensure_not_statement_expr17h05698f4885d4f48cE.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i64 1, ptr %0, align 8
  br label %bb.at

_ZN4rhai6parser25ensure_not_statement_expr17h05698f4885d4f48cE.exit.thread: ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hbd57ee0bf72b5adbE.exit.i", %_ZN4rhai6parser25ensure_not_statement_expr17h05698f4885d4f48cE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.533)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %i.ao, ptr %i.i, align 8
  %.sroa.0.sroa.6.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.ae, ptr %.sroa.0.sroa.6.0..sroa_idx90, align 8
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i16 %i.aa, ptr %.sroa.6.0..sroa_idx3, align 8
  %.sroa.7.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.i, i64 18
  store i16 %i.ac, ptr %.sroa.7.0..sroa_idx7, align 2
  %.sroa.8.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  store i16 %i.as, ptr %.sroa.8.0..sroa_idx11, align 4
  %.sroa.813.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.i, i64 22
  store i8 %i.aq, ptr %.sroa.813.0..sroa_idx16, align 2
end_hunk_4
begin_hunk_5_@"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$8parse_if17hb6f07026dce792f3E":bb.a
  %i.aj = load i16, ptr %i.ai, align 8, !alias.scope !44568, !noundef !60
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 18
  %i.al = load i16, ptr %i.ak, align 2, !alias.scope !44568, !noundef !60
  call void @"_ZN4rhai6parser58_$LT$impl$u20$rhai..types..parse_error..ParseErrorType$GT$8into_err17he5d999a47a55ea69E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.d, i16 noundef %i.aj, i16 noundef %i.al), !noalias !44569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !44569
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load <2 x i64>, ptr %i.e, align 16, !noalias !44569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !44569
  store <2 x i64> %i.an, ptr %i.am, align 8
  store i64 1, ptr %0, align 8
  br label %bb.az

bb.g:                                             ; preds = %_ZN4rhai6parser9eat_token17h748fc12e2bd8feeaE.exit
  %i.ao = add i64 %i.ag, 1                        ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 22
  %i.aq = load i8, ptr %i.ap, align 2, !alias.scope !44568, !noundef !60
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.as = load i16, ptr %i.ar, align 4, !alias.scope !44568, !noundef !60
  %.sroa.11.20.insert.ext.i = zext i16 %i.as to i32
  %.sroa.11.22.insert.ext.i = zext i8 %i.aq to i32
  %.sroa.11.22.insert.shift.i = shl nuw nsw i32 %.sroa.11.22.insert.ext.i, 16
  %.sroa.11.22.insert.insert.i = or disjoint i32 %.sroa.11.22.insert.shift.i, %.sroa.11.20.insert.ext.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.at = load ptr, ptr %2, align 8, !nonnull !60, !align !61, !noundef !60 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44570)
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 224 ; 3 uses
  %i.av = load i32, ptr %i.au, align 8, !range !128, !alias.scope !44570, !noundef !60 ; 2 uses
  %.not.i.i = icmp eq i32 %i.av, 87
  br i1 %.not.i.i, label %bb.h, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hbd57ee0bf72b5adbE.exit.i"

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !44571
  call void @"_ZN89_$LT$rhai..tokenizer..TokenIterator$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc956a9b882b5a932E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(248) %i.at), !noalias !44572
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !44573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !44571
  %.pre.i.i = load i32, ptr %i.au, align 8, !range !128, !alias.scope !44570
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hbd57ee0bf72b5adbE.exit.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hbd57ee0bf72b5adbE.exit.i": ; preds = %bb.h, %bb.g
  %i.aw = phi i32 [ %i.av, %bb.g ], [ %.pre.i.i, %bb.h ]
  switch i32 %i.aw, label %_ZN4rhai6parser25ensure_not_statement_expr17h05698f4885d4f48cE.exit.thread [
    i32 86, label %bb.i
    i32 6, label %_ZN4rhai6parser25ensure_not_statement_expr17h05698f4885d4f48cE.exit
  ], !prof !154

bb.i:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hbd57ee0bf72b5adbE.exit.i"
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1236) #70, !noalias !44574
  unreachable

_ZN4rhai6parser25ensure_not_statement_expr17h05698f4885d4f48cE.exit: ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hbd57ee0bf72b5adbE.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !44575
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call fastcc void @"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17ha14a942d1aebe194E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ax)
  store i64 20, ptr %i.c, align 8, !noalias !44575
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 240
  %i.az = load i16, ptr %i.ay, align 8, !alias.scope !44570, !noundef !60
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 242
  %i.bb = load i16, ptr %i.ba, align 2, !alias.scope !44570, !noundef !60
  call void @"_ZN4rhai6parser58_$LT$impl$u20$rhai..types..parse_error..ParseErrorType$GT$8into_err17he5d999a47a55ea69E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.v, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.c, i16 noundef %i.az, i16 noundef %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !44575
  %.pr89 = load ptr, ptr %i.v, align 8
  %.not = icmp eq ptr %.pr89, null
  br i1 %.not, label %_ZN4rhai6parser25ensure_not_statement_expr17h05698f4885d4f48cE.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN4rhai6parser25ensure_not_statement_expr17h05698f4885d4f48cE.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  store i64 1, ptr %0, align 8
  br label %bb.az

_ZN4rhai6parser25ensure_not_statement_expr17h05698f4885d4f48cE.exit.thread: ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hbd57ee0bf72b5adbE.exit.i", %_ZN4rhai6parser25ensure_not_statement_expr17h05698f4885d4f48cE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 %i.ao, ptr %i.k, align 8
  %.sroa.01.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.ae, ptr %.sroa.01.sroa.5.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i16 %i.aa, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 18
  store i16 %i.ac, ptr %.sroa.6.0..sroa_idx, align 2
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  store i32 %.sroa.11.22.insert.insert.i, ptr %.sroa.7.0..sroa_idx, align 4
  call void @"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$10parse_expr17hdb2973dc2f24b26aE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(96) %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bd = load i64, ptr %i.s, align 8, !range !68, !noundef !60
  %i.be = trunc nuw i64 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.526, ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br i1 %i.be, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4rhai6parser25ensure_not_statement_expr17h05698f4885d4f48cE.exit.thread
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.526, i64 16, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.be

bb.l:                                             ; preds = %_ZN4rhai6parser25ensure_not_statement_expr17h05698f4885d4f48cE.exit.thread
  call fastcc void @"_ZN4rhai6parser39_$LT$impl$u20$rhai..ast..expr..Expr$GT$16ensure_bool_expr17h0b9ac381c965ee17E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef align 8 captures(address) dereferenceable(16) %.sroa.526)
  %i.bh = load i64, ptr %i.t, align 8, !range !68, !noundef !60
  %i.bi = trunc nuw i64 %i.bh to i1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br i1 %i.bi, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  store i64 1, ptr %0, align 8
  br label %bb.be

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.bl = load ptr, ptr %2, align 8, !nonnull !60, !align !61, !noundef !60
  invoke fastcc void @_ZN4rhai6parser21ensure_not_assignment17h1b747bb0c24555c6E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.r, ptr noalias noundef align 8 dereferenceable(248) %i.bl)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.r, %bb.w, %bb.as, %bb.n
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.body105

bb.p:                                             ; preds = %bb.n
  %i.bn = load ptr, ptr %i.r, align 8, !noundef !60
  %.not52 = icmp eq ptr %i.bn, null
  br i1 %.not52, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  store i64 1, ptr %0, align 8
  br label %bb.bc

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 %i.ao, ptr %i.j, align 8
  %.sroa.01.sroa.5.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.ae, ptr %.sroa.01.sroa.5.0..sroa_idx71, align 8
  %.sroa.52.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i16 %i.aa, ptr %.sroa.52.0..sroa_idx3, align 8
  %.sroa.6.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.j, i64 18
  store i16 %i.ac, ptr %.sroa.6.0..sroa_idx10, align 2
  %.sroa.7.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  store i32 %.sroa.11.22.insert.insert.i, ptr %.sroa.7.0..sroa_idx17, align 4
  invoke fastcc void @"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$11parse_block17h3edac4abab9a228aE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(96) %2, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.j)
          to label %bb.s unwind label %bb.o

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.bp = load i64, ptr %i.p, align 8, !range !68, !noundef !60
  %i.bq = trunc nuw i64 %i.bp to i1
  %i.br = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.528, ptr noundef nonnull align 8 dereferenceable(16) %i.br, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br i1 %i.bq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.528, i64 16, i1 false)
  store i64 1, ptr %0, align 8
  br label %"_ZN4core3ptr47drop_in_place$LT$rhai..ast..stmt..StmtBlock$GT$17h9df425a2257407e3E.exit"

bb.u:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44576)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44577)
  %i.bt = load i8, ptr %.sroa.528, align 8, !range !102, !alias.scope !44577, !noundef !60 ; 2 uses
  switch i8 %i.bt, label %bb.v [
    i8 0, label %bb.w
    i8 9, label %.thread.i
  ]

bb.v:                                             ; preds = %bb.u
  %i.bu = invoke { i16, i16 } @_ZN4rhai3ast4stmt4Stmt8position17h00f99734812725e4E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.528)
          to label %bb.x unwind label %bb.y, !noalias !44576 ; 2 uses

.thread.i:                                        ; preds = %bb.u
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.528, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !44577, !nonnull !60, !noundef !60 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.q, ptr noundef nonnull align 8 dereferenceable(144) %i.bw, i64 144, i1 false), !noalias !44577
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bw, i64 noundef 144, i64 noundef 8) #71, !noalias !44578
  br label %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit"

bb.w:                                             ; preds = %bb.u
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.528, i64 2
  %.sroa.4.0..sroa_idx.i102 = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  store i64 0, ptr %.sroa.4.0..sroa_idx.i102, align 8, !alias.scope !44576
  %i.by = getelementptr inbounds nuw i8, ptr %i.q, i64 136
  %4 = load <1 x i32>, ptr %i.bx, align 2, !alias.scope !44577
  %5 = shufflevector <1 x i32> %4, <1 x i32> poison, <2 x i32> zeroinitializer
  store <2 x i32> %5, ptr %i.by, align 8, !alias.scope !44576
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..stmt..Stmt$GT$17h8c7cea9300790c9cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %.sroa.528)
          to label %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit" unwind label %bb.o

bb.x:                                             ; preds = %bb.v
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !44578
  %i.bz = extractvalue { i16, i16 } %i.bu, 1
  %i.ca = extractvalue { i16, i16 } %i.bu, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.528, i64 16, i1 false), !alias.scope !44578
  %.sroa.4.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  store i64 1, ptr %.sroa.4.0..sroa_idx29.i, align 8, !alias.scope !44576
  %i.cb = getelementptr inbounds nuw i8, ptr %i.q, i64 136
  store i16 %i.ca, ptr %i.cb, align 8, !alias.scope !44576
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 138
  store i16 %i.bz, ptr %.sroa.44.0..sroa_idx.i, align 2, !alias.scope !44576
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 140
  store i16 0, ptr %.sroa.55.0..sroa_idx.i, align 4, !alias.scope !44576
  %.sroa.66.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 142
  store i16 0, ptr %.sroa.66.0..sroa_idx.i, align 2, !alias.scope !44576
  br label %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit"

bb.y:                                             ; preds = %bb.v
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = icmp eq i8 %i.bt, 9
  br i1 %i.cd, label %.body105, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..stmt..Stmt$GT$17h8c7cea9300790c9cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %.sroa.528) #72
          to label %.body105 unwind label %bb.aa, !noalias !44576

bb.aa:                                            ; preds = %bb.z
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !44578
  unreachable

"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit": ; preds = %bb.x, %.thread.i, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cf = load ptr, ptr %2, align 8, !nonnull !60, !align !61, !noundef !60
  %i.cg = invoke fastcc i48 @_ZN4rhai6parser11match_token17h0c04483dc30cfa23E(ptr noalias noundef align 8 dereferenceable(248) %i.cf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) @1438)
          to label %bb.ab unwind label %bb.ba

bb.ab:                                            ; preds = %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit"
  %i.ch = trunc i48 %i.cg to i1
  br i1 %i.ch, label %bb.ac, label %.thread

.thread:                                          ; preds = %bb.ab
  %i.ci = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  store i16 0, ptr %i.ci, align 2
  %i.cj = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i16 0, ptr %i.cj, align 4
  store i8 0, ptr %i.o, align 8
  br label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.ck = load ptr, ptr %2, align 8, !nonnull !60, !align !61, !noundef !60 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 224 ; 3 uses
  %i.cm = load i32, ptr %i.cl, align 8, !range !128, !noundef !60 ; 2 uses
  %.not.i56 = icmp eq i32 %i.cm, 87
  br i1 %.not.i56, label %bb.ad, label %bb.ak

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44579
  invoke void @"_ZN89_$LT$rhai..tokenizer..TokenIterator$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc956a9b882b5a932E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(224) %i.ck)
          to label %.noexc unwind label %bb.ba

.noexc:                                           ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !44580
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44579
  %.pre.i = load i32, ptr %i.cl, align 8, !range !128
  br label %bb.ak

bb.ae:                                            ; preds = %bb.ar, %bb.av
  %.pr133 = load i8, ptr %i.o, align 8, !alias.scope !44581
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44582)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44581)
  switch i8 %.pr133, label %bb.af [
    i8 0, label %._crit_edge
    i8 9, label %.thread.i106
  ]

._crit_edge:                                      ; preds = %bb.ae
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.cn = load <2 x i16>, ptr %.phi.trans.insert, align 2, !alias.scope !44581
  %i.co = shufflevector <2 x i16> %i.cn, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cp = invoke { i16, i16 } @_ZN4rhai3ast4stmt4Stmt8position17h00f99734812725e4E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.o)
          to label %bb.ah unwind label %bb.ai, !noalias !44582 ; 2 uses

.thread.i106:                                     ; preds = %bb.ae
  %i.cq = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !44581, !nonnull !60, !noundef !60 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(128) %i.cr, i64 128, i1 false), !noalias !44581
  %.sroa.3.0..sroa_idx121 = getelementptr inbounds nuw i8, ptr %i.cr, i64 128
  %.sroa.3.0.copyload122 = load i64, ptr %.sroa.3.0..sroa_idx121, align 8, !noalias !44581
  %.sroa.5123.0..sroa_idx124 = getelementptr inbounds nuw i8, ptr %i.cr, i64 136
  %i.cs = load <4 x i16>, ptr %.sroa.5123.0..sroa_idx124, align 8, !noalias !44581
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cr, i64 noundef 144, i64 noundef 8) #71, !noalias !44583
  br label %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit119"

bb.ag:                                            ; preds = %._crit_edge, %.thread
  %i.ct = phi <4 x i16> [ %i.co, %._crit_edge ], [ zeroinitializer, %.thread ]
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..stmt..Stmt$GT$17h8c7cea9300790c9cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.o)
          to label %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit119" unwind label %bb.ba

bb.ah:                                            ; preds = %bb.af
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !44583
  %i.cu = extractvalue { i16, i16 } %i.cp, 1
  %i.cv = extractvalue { i16, i16 } %i.cp, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false), !alias.scope !44583
  %i.cw = insertelement <4 x i16> <i16 poison, i16 poison, i16 0, i16 0>, i16 %i.cv, i64 0
  %i.cx = insertelement <4 x i16> %i.cw, i16 %i.cu, i64 1
  br label %"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E.exit119"

bb.ai:                                            ; preds = %bb.af
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..stmt..Stmt$GT$17h8c7cea9300790c9cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.o) #72
          to label %.body117 unwind label %bb.aj, !noalias !44582

bb.aj:                                            ; preds = %bb.ai
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !44583
  unreachable

bb.ak:                                            ; preds = %.noexc, %bb.ac
  %i.da = phi i32 [ %.pre.i, %.noexc ], [ %i.cm, %bb.ac ]
  switch i32 %i.da, label %bb.ao [
    i32 86, label %bb.al
    i32 41, label %bb.an
  ], !prof !139

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1439) #70
          to label %bb.am unwind label %bb.ba

bb.am:                                            ; preds = %bb.al
  unreachable

bb.an:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.534)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %i.ao, ptr %i.i, align 8
  %.sroa.01.sroa.5.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.ae, ptr %.sroa.01.sroa.5.0..sroa_idx73, align 8
  %.sroa.52.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i16 %i.aa, ptr %.sroa.52.0..sroa_idx5, align 8
  %.sroa.6.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.i, i64 18
  store i16 %i.ac, ptr %.sroa.6.0..sroa_idx12, align 2
  %.sroa.7.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  store i32 %.sroa.11.22.insert.insert.i, ptr %.sroa.7.0..sroa_idx19, align 4
  invoke fastcc void @"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$8parse_if17hb6f07026dce792f3E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.n, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(96) %2, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.i)
          to label %bb.ap unwind label %bb.ba

bb.ao:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.636)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %i.ao, ptr %i.h, align 8
  %.sroa.01.sroa.5.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.ae, ptr %.sroa.01.sroa.5.0..sroa_idx75, align 8
  %.sroa.52.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i16 %i.aa, ptr %.sroa.52.0..sroa_idx7, align 8
  %.sroa.6.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.h, i64 18
  store i16 %i.ac, ptr %.sroa.6.0..sroa_idx14, align 2
  %.sroa.7.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  store i32 %.sroa.11.22.insert.insert.i, ptr %.sroa.7.0..sroa_idx21, align 4
  invoke fastcc void @"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$11parse_block17h3edac4abab9a228aE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(96) %2, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.h)
          to label %bb.at unwind label %bb.ba

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.db = load i64, ptr %i.n, align 8, !range !68, !noundef !60
  %i.dc = trunc nuw i64 %i.db to i1
  %i.dd = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.534, ptr noundef nonnull align 8 dereferenceable(16) %i.dd, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br i1 %i.dc, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.de, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.534, i64 16, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.534)
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.534, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.534)
  br label %bb.ae

bb.as:                                            ; preds = %bb.au, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke fastcc void @"_ZN69_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b307487833700cdE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(144) %i.q)
          to label %"_ZN4core3ptr47drop_in_place$LT$rhai..ast..stmt..StmtBlock$GT$17h9df425a2257407e3E.exit" unwind label %bb.o, !inline_history !122

end_hunk_5
begin_hunk_6_@_ZN4rhai9optimizer13optimize_stmt17h1fd8d7a6bfb03e75E:bb.a
          to label %bb.fh unwind label %bb.ff

bb.fh:                                            ; preds = %bb.fg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %i.si = load i8, ptr %i.rr, align 8, !range !115, !noundef !60
  %.not598 = icmp eq i8 %i.si, 2
  %.sroa.0489.0 = select i1 %.not598, ptr %i.rt, ptr %i.rq
  %i.sj = load i64, ptr %.sroa.0489.0, align 8, !noundef !60
  %i.sk = invoke fastcc noundef align 8 dereferenceable(32) ptr @"_ZN83_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h667a0cf67f5f0d5bE"(ptr noalias noundef align 8 dereferenceable(168) %i.lp, i64 noundef %i.sj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2219)
          to label %bb.fi unwind label %.thread996 ; 3 uses

.thread996:                                       ; preds = %bb.fh, %bb.fl
  %i.sl = landingpad { ptr, i32 }
          cleanup
  br label %.thread992

bb.fi:                                            ; preds = %bb.fh
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sk, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.sm, i64 16, i1 false)
  store i8 9, ptr %i.sm, align 8
  %.sroa.4492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sk, i64 18
  store i16 0, ptr %.sroa.4492.0..sroa_idx, align 2
  %.sroa.5493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sk, i64 20
  store i16 0, ptr %.sroa.5493.0..sroa_idx, align 4
  %i.sn = invoke fastcc noundef ptr @_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E(i64 noundef 16, i64 noundef 8)
          to label %bb.fl unwind label %bb.fj, !noalias !53585 ; 2 uses

bb.fj:                                            ; preds = %bb.fi
  %i.so = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.as) #72
          to label %.thread992 unwind label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.sp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

bb.fl:                                            ; preds = %bb.fi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sn, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %i.sq = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.sn, ptr %i.sq, align 8
  store i8 11, ptr %i.at, align 8
  invoke fastcc void @"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E"(ptr noalias noundef align 8 captures(address) dereferenceable(144) %i.au, ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.at)
          to label %bb.fm unwind label %.thread996

bb.fm:                                            ; preds = %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 16, i1 false)
  %i.sr = getelementptr inbounds nuw i8, ptr %i.aq, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.sr, ptr noundef nonnull align 8 dereferenceable(144) %i.av, i64 144, i1 false)
  %i.ss = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ss, ptr noundef nonnull align 8 dereferenceable(144) %i.au, i64 144, i1 false)
  %i.st = invoke fastcc noundef ptr @_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E(i64 noundef 304, i64 noundef 8)
          to label %bb.fp unwind label %bb.fn, !noalias !53586 ; 4 uses

bb.fn:                                            ; preds = %bb.fm
  %i.su = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$rhai..ast..stmt..FlowControl$GT$17h22b456693a9894f5E"(ptr noalias noundef nonnull align 8 dereferenceable(304) %i.aq) #72
          to label %.body637 unwind label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.sv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

bb.fp:                                            ; preds = %bb.fm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.st, ptr noundef nonnull align 8 dereferenceable(304) %i.aq, i64 304, i1 false)
  store ptr %i.st, ptr %i.ar, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %i.sw = invoke fastcc { i16, i16 } @_ZN4rhai3ast4expr4Expr14start_position17h6e2b0253b346af39E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %.pre1239)
          to label %bb.fr unwind label %bb.fq     ; 2 uses

bb.fq:                                            ; preds = %bb.fp
  %i.sx = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr74drop_in_place$LT$alloc..boxed..Box$LT$rhai..ast..stmt..FlowControl$GT$$GT$17h626e5aef2a0de676E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ar) #72
          to label %.body637 unwind label %bb.ag

bb.fr:                                            ; preds = %bb.fp
  %i.sy = extractvalue { i16, i16 } %i.sw, 0      ; 2 uses
  %i.sz = extractvalue { i16, i16 } %i.sw, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..stmt..Stmt$GT$17h8c7cea9300790c9cE"(ptr noalias noundef align 8 dereferenceable(16) %0)
          to label %bb.ft unwind label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.ta = landingpad { ptr, i32 }
          cleanup
  store i8 1, ptr %0, align 8
  store i16 %i.sy, ptr %i.do, align 2
  %.sroa.6175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 %i.sz, ptr %.sroa.6175.0..sroa_idx, align 4
  store ptr %i.st, ptr %i.dn, align 8
  br label %.body637

bb.ft:                                            ; preds = %bb.fr
  store i8 1, ptr %0, align 8
  store i16 %i.sy, ptr %i.do, align 2
  %.sroa.6175.0..sroa_idx176 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 %i.sz, ptr %.sroa.6175.0..sroa_idx176, align 4
  store ptr %i.st, ptr %i.dn, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %bb.fu

bb.fu:                                            ; preds = %bb.gc, %bb.ft
  %i.tb = getelementptr inbounds nuw i8, ptr %1, i64 328
  store i8 1, ptr %i.tb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %.loopexit

.thread992:                                       ; preds = %bb.fj, %.thread996
  %eh.lpad-body644995 = phi { ptr, i32 } [ %i.sl, %.thread996 ], [ %i.so, %bb.fj ]
  invoke fastcc void @"_ZN69_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b307487833700cdE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(144) %i.av)
          to label %bb.fv unwind label %bb.ag, !inline_history !122

bb.fv:                                            ; preds = %bb.ff, %.thread992
  %.pn599.pn.ph = phi { ptr, i32 } [ %i.se, %bb.ff ], [ %eh.lpad-body644995, %.thread992 ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aw) #72
          to label %.body637 unwind label %bb.ag

bb.fw:                                            ; preds = %bb.fe
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sd, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.tc, i64 16, i1 false)
  store i8 9, ptr %i.tc, align 8
  %.sroa.4481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sd, i64 18
  store i16 0, ptr %.sroa.4481.0..sroa_idx, align 2
  %.sroa.5482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sd, i64 20
  store i16 0, ptr %.sroa.5482.0..sroa_idx, align 4
  %i.td = invoke fastcc noundef ptr @_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E(i64 noundef 16, i64 noundef 8)
          to label %bb.fz unwind label %bb.fx, !noalias !53587 ; 2 uses

bb.fx:                                            ; preds = %bb.fw
  %i.te = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ay) #72
          to label %.body637 unwind label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.tf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

bb.fz:                                            ; preds = %bb.fw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.td, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  %i.tg = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.td, ptr %i.tg, align 8
  store i8 11, ptr %i.az, align 8
  invoke fastcc void @_ZN4rhai9optimizer13optimize_stmt17h1fd8d7a6bfb03e75E(ptr noalias noundef align 8 dereferenceable(16) %i.az, ptr noalias noundef align 8 dereferenceable(336) %1, i1 noundef zeroext true)
          to label %bb.gb unwind label %bb.gd

bb.ga:                                            ; preds = %bb.gb
  %i.th = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 16, i1 false)
  br label %.body637

bb.gb:                                            ; preds = %bb.fz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 16, i1 false)
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..stmt..Stmt$GT$17h8c7cea9300790c9cE"(ptr noalias noundef align 8 dereferenceable(16) %0)
          to label %bb.gc unwind label %bb.ga

bb.gc:                                            ; preds = %bb.gb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %bb.fu

bb.gd:                                            ; preds = %bb.fz
  %i.ti = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..stmt..Stmt$GT$17h8c7cea9300790c9cE"(ptr noalias noundef align 8 dereferenceable(16) %i.az) #72
          to label %.body637 unwind label %bb.ag

bb.ge:                                            ; preds = %bb.el
  %i.tj = getelementptr inbounds nuw i8, ptr %.pre1239, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.tk = load i64, ptr %i.tj, align 8, !noundef !60
  %i.tl = invoke fastcc noundef align 8 dereferenceable(32) ptr @"_ZN83_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h667a0cf67f5f0d5bE"(ptr noalias noundef align 8 dereferenceable(168) %i.lp, i64 noundef %i.tk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2221)
          to label %bb.gi unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.gf:                                            ; preds = %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %.sroa.4497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 128
  store i64 0, ptr %.sroa.4497.0..sroa_idx, align 8
  %i.tm = getelementptr inbounds nuw i8, ptr %i.am, i64 136
  %3 = load <1 x i32>, ptr %i.do, align 2
  %4 = shufflevector <1 x i32> %3, <1 x i32> poison, <2 x i32> zeroinitializer
  store <2 x i32> %4, ptr %i.tm, align 8
  %i.tn = invoke fastcc noundef ptr @_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E(i64 noundef 144, i64 noundef 8)
          to label %bb.gr unwind label %bb.gg, !noalias !53588 ; 3 uses

bb.gg:                                            ; preds = %bb.gf
  %i.to = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN69_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b307487833700cdE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(144) %i.am)
          to label %.body637 unwind label %bb.gh, !inline_history !122

bb.gh:                                            ; preds = %bb.gg
  %i.tp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

bb.gi:                                            ; preds = %bb.ge
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tl, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %i.tq, i64 16, i1 false)
  store i8 9, ptr %i.tq, align 8
  %.sroa.4504.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tl, i64 18
  store i16 0, ptr %.sroa.4504.0..sroa_idx, align 2
  %.sroa.5505.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tl, i64 20
  store i16 0, ptr %.sroa.5505.0..sroa_idx, align 4
  %i.tr = invoke fastcc noundef ptr @_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E(i64 noundef 16, i64 noundef 8)
          to label %bb.gl unwind label %bb.gj, !noalias !53589 ; 2 uses

bb.gj:                                            ; preds = %bb.gi
  %i.ts = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ao) #72
          to label %.body637 unwind label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.tt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

bb.gl:                                            ; preds = %bb.gi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tr, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  %i.tu = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.tr, ptr %i.tu, align 8
  store i8 11, ptr %i.ap, align 8
  invoke fastcc void @_ZN4rhai9optimizer13optimize_stmt17h1fd8d7a6bfb03e75E(ptr noalias noundef align 8 dereferenceable(16) %i.ap, ptr noalias noundef align 8 dereferenceable(336) %1, i1 noundef zeroext true)
          to label %bb.gn unwind label %bb.gq

bb.gm:                                            ; preds = %bb.gn
  %i.tv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false)
  br label %.body637

bb.gn:                                            ; preds = %bb.gl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false)
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..stmt..Stmt$GT$17h8c7cea9300790c9cE"(ptr noalias noundef align 8 dereferenceable(16) %0)
          to label %bb.go unwind label %bb.gm

bb.go:                                            ; preds = %bb.gn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %bb.gp

bb.gp:                                            ; preds = %bb.gt, %bb.go
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.bs), !inline_history !78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  br label %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hd82e89e59abb0be1E.exit"

bb.gq:                                            ; preds = %bb.gl
  %i.tw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..stmt..Stmt$GT$17h8c7cea9300790c9cE"(ptr noalias noundef align 8 dereferenceable(16) %i.ap) #72
          to label %.body637 unwind label %bb.ag

bb.gr:                                            ; preds = %bb.gf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.tn, ptr noundef nonnull align 8 dereferenceable(144) %i.am, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..stmt..Stmt$GT$17h8c7cea9300790c9cE"(ptr noalias noundef align 8 dereferenceable(16) %0)
          to label %bb.gt unwind label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.tx = landingpad { ptr, i32 }
          cleanup
  store i8 9, ptr %0, align 8
  store ptr %i.tn, ptr %i.dn, align 8
  br label %.body637

bb.gt:                                            ; preds = %bb.gr
  store i8 9, ptr %0, align 8
  store ptr %i.tn, ptr %i.dn, align 8
  br label %bb.gp

bb.gu:                                            ; preds = %.lr.ph, %.critedge
  %.sroa.0550.11152 = phi ptr [ %.sroa.0550.11150, %.lr.ph ], [ %.sroa.0550.1, %.critedge ] ; 3 uses
  %.sroa.0550.01151 = phi ptr [ %.sink10.i.i, %.lr.ph ], [ %.sroa.0550.11152, %.critedge ] ; 13 uses
  tail call fastcc void @_ZN4rhai9optimizer13optimize_expr17haeffafea56131100E(ptr noalias noundef align 8 dereferenceable(16) %.sroa.0550.01151, ptr noalias noundef align 8 dereferenceable(336) %1, i1 noundef zeroext false)
  %i.ty = getelementptr inbounds nuw i8, ptr %.sroa.0550.01151, i64 16 ; 5 uses
  tail call fastcc void @_ZN4rhai9optimizer13optimize_expr17haeffafea56131100E(ptr noalias noundef align 8 dereferenceable(16) %i.ty, ptr noalias noundef align 8 dereferenceable(336) %1, i1 noundef zeroext false)
  %i.tz = load i8, ptr %.sroa.0550.01151, align 8, !range !104, !noundef !60
  %i.ua = icmp eq i8 %i.tz, 1
  br i1 %i.ua, label %bb.if, label %.critedge

._crit_edge:                                      ; preds = %.critedge, %bb.cl
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53590)
  %i.ub = getelementptr inbounds nuw i8, ptr %i.kx, i64 40
  %i.uc = getelementptr inbounds nuw i8, ptr %i.kx, i64 56 ; 4 uses
  %i.ud = load i64, ptr %i.uc, align 8, !alias.scope !53590, !noundef !60 ; 2 uses
  %i.ue = icmp eq i64 %i.ud, 0
  br i1 %i.ue, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6retain17hefafc5957eff1790E.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.uf = load ptr, ptr %i.la, align 8, !alias.scope !53590, !nonnull !60, !noundef !60 ; 3 uses
  %.val3.i.i = load <16 x i8>, ptr %i.uf, align 16, !noalias !53591
  %i.ug = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.uh = bitcast <16 x i1> %i.ug to i16
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uf, i64 16
  %i.uj = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 3 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.kx, i64 48 ; 2 uses
  br label %bb.gv

bb.gv:                                            ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5erase17h7166d8547db04975E.exit.i", %.lr.ph.i
  %.sroa.1013.047.i = phi i64 [ %i.ud, %.lr.ph.i ], [ %i.uw, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5erase17h7166d8547db04975E.exit.i" ]
  %.sroa.812.046.i = phi i16 [ %i.uh, %.lr.ph.i ], [ %i.ut, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5erase17h7166d8547db04975E.exit.i" ] ; 2 uses
  %.sroa.011.045.i = phi ptr [ %i.uf, %.lr.ph.i ], [ %.sroa.011.1.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5erase17h7166d8547db04975E.exit.i" ] ; 2 uses
  %.sroa.6.044.i = phi ptr [ %i.ui, %.lr.ph.i ], [ %.sroa.6.1.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5erase17h7166d8547db04975E.exit.i" ] ; 2 uses
  %.not13.i.i = icmp eq i16 %.sroa.812.046.i, 0
  br i1 %.not13.i.i, label %.lr.ph.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h61dbbaa345429e07E.exit.i"

.lr.ph.i.i:                                       ; preds = %bb.gv, %.lr.ph.i.i
  %i.ul = phi ptr [ %i.up, %.lr.ph.i.i ], [ %.sroa.6.044.i, %bb.gv ] ; 2 uses
  %i.um = phi ptr [ %i.uo, %.lr.ph.i.i ], [ %.sroa.011.045.i, %bb.gv ]
  %.val11.i.i = load <16 x i8>, ptr %i.ul, align 16, !noalias !53592
  %i.un = icmp sgt <16 x i8> %.val11.i.i, splat (i8 -1)
  %i.uo = getelementptr inbounds i8, ptr %i.um, i64 -512 ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.ul, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.un to i16     ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h61dbbaa345429e07E.exit.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h61dbbaa345429e07E.exit.i": ; preds = %.lr.ph.i.i, %bb.gv
  %.sroa.6.1.i = phi ptr [ %.sroa.6.044.i, %bb.gv ], [ %i.up, %.lr.ph.i.i ]
  %.sroa.011.1.i = phi ptr [ %.sroa.011.045.i, %bb.gv ], [ %i.uo, %.lr.ph.i.i ] ; 2 uses
  %.lcssa.i.i = phi i16 [ %.sroa.812.046.i, %bb.gv ], [ %.cast.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.uq = add i16 %.lcssa.i.i, -1
  %i.ur = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.us = zext nneg i16 %i.ur to i64
  %i.ut = and i16 %i.uq, %.lcssa.i.i
  %i.uu = sub nsw i64 0, %i.us
  %i.uv = getelementptr inbounds [32 x i8], ptr %.sroa.011.1.i, i64 %i.uu ; 4 uses
  %i.uw = add i64 %.sroa.1013.047.i, -1           ; 2 uses
  %i.ux = getelementptr inbounds i8, ptr %i.uv, i64 -24 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53593)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53594)
  %i.uy = getelementptr i8, ptr %i.uv, i64 -8     ; 8 uses
  %i.uz = load i64, ptr %i.uy, align 8, !alias.scope !53595, !noalias !53596, !noundef !60 ; 3 uses
  %i.va = icmp ugt i64 %i.uz, 2
  %i.vb = getelementptr inbounds i8, ptr %i.uv, i64 -16 ; 6 uses
  %i.vc = load i64, ptr %i.vb, align 8, !alias.scope !53595, !noalias !53596
  %.sink10.i.i.i.i = select i1 %i.va, i64 %i.vc, i64 %i.uz ; 3 uses
  %.not38.i.i.i = icmp eq i64 %.sink10.i.i.i.i, 0
  br i1 %.not38.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.ha
  %.pre.i.i.i = load i64, ptr %i.uy, align 8, !alias.scope !53597, !noalias !53596
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h61dbbaa345429e07E.exit.i"
  %i.vd = phi i64 [ %i.uz, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h61dbbaa345429e07E.exit.i" ], [ %.pre.i.i.i, %._crit_edge.loopexit.i.i.i ] ; 2 uses
  %.sroa.0.0.lcssa.i.i.i = phi i64 [ 0, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h61dbbaa345429e07E.exit.i" ], [ %.sroa.0.1.i.i.i, %._crit_edge.loopexit.i.i.i ]
  %i.ve = sub i64 %.sink10.i.i.i.i, %.sroa.0.0.lcssa.i.i.i ; 2 uses
  %i.vf = icmp ugt i64 %i.vd, 2
  %.sink9.i.i.i.i.i = select i1 %i.vf, ptr %i.vb, ptr %i.uy ; 2 uses
  %.sink9.i.promoted.i.i.i.i = load i64, ptr %.sink9.i.i.i.i.i, align 8, !alias.scope !53598, !noalias !53596
  %i.vg = icmp ult i64 %i.ve, %.sink9.i.promoted.i.i.i.i
  br i1 %i.vg, label %.lr.ph.preheader.i.i.i.i, label %"_ZN8smallvec17SmallVec$LT$A$GT$6retain17hcdbfcc907be3a1d0E.exit.i.i"

.lr.ph.preheader.i.i.i.i:                         ; preds = %._crit_edge.i.i.i
  store i64 %i.ve, ptr %.sink9.i.i.i.i.i, align 8, !alias.scope !53598, !noalias !53596
  %.pre.i9.i = load i64, ptr %i.uy, align 8, !alias.scope !53599, !noalias !53596
  br label %"_ZN8smallvec17SmallVec$LT$A$GT$6retain17hcdbfcc907be3a1d0E.exit.i.i"

.lr.ph.i.i.i:                                     ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h61dbbaa345429e07E.exit.i", %bb.ha
  %.sroa.0.037.i.i.i = phi i64 [ %.sroa.0.1.i.i.i, %bb.ha ], [ 0, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h61dbbaa345429e07E.exit.i" ] ; 4 uses
  %.sroa.05.036.i.i.i = phi i64 [ %i.vh, %bb.ha ], [ 0, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h61dbbaa345429e07E.exit.i" ] ; 5 uses
  %i.vh = add nuw i64 %.sroa.05.036.i.i.i, 1      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53600)
  %i.vi = load i64, ptr %i.uy, align 8, !alias.scope !53601, !noalias !53596, !noundef !60 ; 2 uses
  %i.vj = icmp ugt i64 %i.vi, 2                   ; 2 uses
  %.val.i.i.i.i = load i64, ptr %i.vb, align 8, !alias.scope !53602, !noalias !53596
  %i.vk = select i1 %i.vj, i64 %.val.i.i.i.i, i64 %i.vi ; 4 uses
  %i.vl = icmp ult i64 %.sroa.05.036.i.i.i, %i.vk
  br i1 %i.vl, label %"_ZN83_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h37f72b7ac85b89f0E.exit.i.i.i", label %bb.gw

bb.gw:                                            ; preds = %.lr.ph.i.i.i
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.05.036.i.i.i, i64 noundef %i.vk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3268) #70, !noalias !53603
  unreachable
end_hunk_6
begin_hunk_7_@"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8for_each17hf88b8eb0ebc98d13E":bb.a
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8, !noalias !64984, !nonnull !60, !align !61, !noundef !60 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %"_ZN4rhai9optimizer13optimize_expr28_$u7b$$u7b$closure$u7d$$u7d$17h80b196bb00dd5889E.exit"
  %.sroa.0.08 = phi ptr [ %0, %.lr.ph ], [ %i.d, %"_ZN4rhai9optimizer13optimize_expr28_$u7b$$u7b$closure$u7d$$u7d$17h80b196bb00dd5889E.exit" ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.08, i64 16 ; 2 uses
  tail call fastcc void @_ZN4rhai9optimizer13optimize_expr17haeffafea56131100E(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.0.08, ptr noalias noundef align 8 dereferenceable(336) %i.b, i1 noundef zeroext false), !noalias !64985, !inline_history !64982
  %i.e = tail call fastcc noundef zeroext i1 @_ZN4rhai9optimizer17move_constant_arg17h78e31fe6a1a0bdd4E(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.0.08), !noalias !64985, !inline_history !64982
  br i1 %i.e, label %bb.c, label %"_ZN4rhai9optimizer13optimize_expr28_$u7b$$u7b$closure$u7d$$u7d$17h80b196bb00dd5889E.exit"

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.c, align 8, !noalias !64985
  br label %"_ZN4rhai9optimizer13optimize_expr28_$u7b$$u7b$closure$u7d$$u7d$17h80b196bb00dd5889E.exit"

"_ZN4rhai9optimizer13optimize_expr28_$u7b$$u7b$closure$u7d$$u7d$17h80b196bb00dd5889E.exit": ; preds = %bb.b, %bb.c
  %i.f = icmp eq ptr %i.d, %1
  br i1 %i.f, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %"_ZN4rhai9optimizer13optimize_expr28_$u7b$$u7b$closure$u7d$$u7d$17h80b196bb00dd5889E.exit", %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN94_$LT$rhai..types..immutable_string..ImmutableString$u20$as$u20$core..ops..arith..AddAssign$GT$10add_assign17h471f6420cfa01a13E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !64998 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.c = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
          to label %.noexc12 unwind label %bb.s

.noexc12:                                         ; preds = %bb.a
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc12
  %i.d = invoke { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
          to label %.noexc13 unwind label %bb.s

.noexc13:                                         ; preds = %bb.b
  %i.e = extractvalue { ptr, i64 } %i.d, 1
  br label %bb.e

bb.c:                                             ; preds = %.noexc12
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i64, ptr %i.f, align 8, !noundef !60
  br label %bb.e

bb.d:                                             ; preds = %bb.m
  %i.h = landingpad { ptr, i32 }
          cleanup
  store ptr %1, ptr %0, align 8
  br label %"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E.exit25"

bb.e:                                             ; preds = %bb.c, %.noexc13
  %.merged.i11 = phi i64 [ %i.e, %.noexc13 ], [ %i.g, %bb.c ]
  %i.i = icmp eq i64 %.merged.i11, 0
  br i1 %i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %0, align 8, !nonnull !60, !noundef !60 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.l = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
          to label %.noexc7 unwind label %bb.s

.noexc7:                                          ; preds = %bb.f
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.noexc7
  %i.m = invoke { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
          to label %.noexc8 unwind label %bb.s

.noexc8:                                          ; preds = %bb.g
  %i.n = extractvalue { ptr, i64 } %i.m, 1
  br label %bb.k

bb.h:                                             ; preds = %.noexc7
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.p = load i64, ptr %i.o, align 8, !noundef !60
  br label %bb.k

bb.i:                                             ; preds = %bb.r, %bb.e
  %i.q = atomicrmw add ptr %1, i64 -1 release, align 8, !noalias !64999
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.j, label %"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E.exit"

bb.j:                                             ; preds = %bb.i
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a)
  br label %"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E.exit"

bb.k:                                             ; preds = %bb.h, %.noexc8
  %.merged.i6 = phi i64 [ %i.n, %.noexc8 ], [ %i.p, %bb.h ]
  %i.s = icmp eq i64 %.merged.i6, 0
  br i1 %i.s, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.t = atomicrmw add ptr %i.j, i64 -1 release, align 8, !noalias !65000
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.m, label %"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E.exit20"

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %0)
          to label %"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E.exit20" unwind label %bb.d

bb.n:                                             ; preds = %bb.k
  %i.v = invoke fastcc noundef align 8 dereferenceable(24) ptr @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$8make_mut17hbebdc65590243689E"(ptr noalias noundef align 8 dereferenceable(8) %0)
          to label %bb.o unwind label %bb.s

"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E.exit20": ; preds = %bb.l, %bb.m
  store ptr %1, ptr %0, align 8
  br label %"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E.exit"

"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E.exit": ; preds = %bb.j, %bb.i, %"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E.exit20"
  ret void

bb.o:                                             ; preds = %bb.n
  %i.w = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.o
  br i1 %i.w, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.noexc
  %i.x = invoke { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
          to label %.noexc4 unwind label %bb.s    ; 2 uses

.noexc4:                                          ; preds = %bb.p
  %i.y = extractvalue { ptr, i64 } %i.x, 0
  %i.z = extractvalue { ptr, i64 } %i.x, 1
  br label %bb.r

bb.q:                                             ; preds = %.noexc
  %i.aa = load ptr, ptr %i.b, align 8, !nonnull !60, !noundef !60
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !60
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.noexc4
  %.pre-phi = phi ptr [ %i.aa, %bb.q ], [ %i.y, %.noexc4 ] ; 2 uses
  %.merged.i = phi i64 [ %i.ac, %bb.q ], [ %i.z, %.noexc4 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pre-phi) ]
  invoke fastcc void @"_ZN11smartstring23SmartString$LT$Mode$GT$8push_str17he2803cb6aef450faE"(ptr noalias noundef align 8 dereferenceable(24) %i.v, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.pre-phi, i64 noundef %.merged.i)
          to label %bb.i unwind label %bb.s

"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E.exit25": ; preds = %bb.s, %bb.t, %bb.d
  %.pn28 = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.ad, %bb.t ], [ %i.ad, %bb.s ]
  resume { ptr, i32 } %.pn28

bb.s:                                             ; preds = %bb.o, %bb.f, %bb.a, %bb.b, %bb.g, %bb.p, %bb.r, %bb.n
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = atomicrmw add ptr %1, i64 -1 release, align 8, !noalias !65001
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.t, label %"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E.exit25"

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a)
          to label %"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E.exit25" unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(144) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !65002 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !range !102, !noundef !60 ; 2 uses
  switch i8 %i.a, label %bb.b [
    i8 0, label %bb.d
    i8 9, label %.thread
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = invoke { i16, i16 } @_ZN4rhai3ast4stmt4Stmt8position17h00f99734812725e4E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %bb.e unwind label %bb.f       ; 2 uses

.thread:                                          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !60, !noundef !60 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %i.d, i64 144, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 144, i64 noundef 8) #71
  br label %bb.c

bb.c:                                             ; preds = %.thread, %bb.e, %bb.d
  ret void

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %2 = load <1 x i32>, ptr %i.e, align 2
  %3 = shufflevector <1 x i32> %2, <1 x i32> poison, <2 x i32> zeroinitializer
  store <2 x i32> %3, ptr %i.f, align 8
  tail call fastcc void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..stmt..Stmt$GT$17h8c7cea9300790c9cE"(ptr noalias noundef align 8 dereferenceable(16) %1)
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.g = extractvalue { i16, i16 } %i.b, 1
  %i.h = extractvalue { i16, i16 } %i.b, 0
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %.sroa.4.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 1, ptr %.sroa.4.0..sroa_idx29, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i16 %i.h, ptr %i.i, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 138
  store i16 %i.g, ptr %.sroa.44.0..sroa_idx, align 2
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i16 0, ptr %.sroa.55.0..sroa_idx, align 4
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 142
  store i16 0, ptr %.sroa.66.0..sroa_idx, align 2
  br label %bb.c

.body:                                            ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.j

bb.f:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = icmp eq i8 %i.a, 9
  br i1 %i.k, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..stmt..Stmt$GT$17h8c7cea9300790c9cE"(ptr noalias noundef align 8 dereferenceable(16) %1) #72
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone13clone_subtree17h4b1634439a4a1c65E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #8 personality ptr @rust_eh_personality !guid !65030 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = icmp eq i64 %2, 0
  %.sroa.036.0.sroa.gep = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.03.0.sroa.gep = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.j = tail call noalias noundef align 8 dereferenceable_or_null(456) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 456, i64 noundef range(i64 1, -9223372036854775807) 8) #71 ; 6 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %bb.g, !prof !71

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 456) #70
  unreachable

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 456 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !noalias !65031, !nonnull !60, !noundef !60
  %i.n = add i64 %2, -1                           ; 2 uses
  call fastcc void @"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone13clone_subtree17h4b1634439a4a1c65E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull %i.m, i64 noundef %i.n)
  %i.o = load ptr, ptr %i.e, align 8, !noundef !60 ; 4 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.v, label %bb.w, !prof !71

.body:                                            ; preds = %.noexc106, %bb.t, %bb.q, %.noexc.i, %bb.e
  %.pn93 = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.p, %bb.e ], [ %i.ae, %.noexc.i ], [ %i.ao, %bb.t ], [ %i.ao, %.noexc106 ]
  invoke void @"_ZN4core3ptr165drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17he2bc0935439e1204E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #72
          to label %bb.aw unwind label %bb.u

bb.e:                                             ; preds = %bb.k, %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.6.0165, ptr %i.s, align 8
  br label %.body

bb.f:                                             ; preds = %bb.v
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 176
  store ptr null, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 450 ; 3 uses
  store i16 0, ptr %i.r, align 2
  store ptr %i.j, ptr %i.h, align 8
  store i64 0, ptr %.sroa.03.0.sroa.gep, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 450 ; 2 uses
  %i.u = load i16, ptr %i.t, align 2, !noundef !60
  %.not170 = icmp eq i16 %i.u, 0
  br i1 %.not170, label %._crit_edge168, label %.lr.ph167

.lr.ph167:                                        ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 184
  br label %bb.i

._crit_edge168:                                   ; preds = %bb.r, %bb.g
  %storemerge.lcssa = phi i64 [ 0, %bb.g ], [ %i.aa, %bb.r ]
  store i64 %storemerge.lcssa, ptr %i.s, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.h

bb.h:                                             ; preds = %bb.aa, %._crit_edge168
  ret void

bb.i:                                             ; preds = %.lr.ph167, %bb.r
  %.sroa.6.0165 = phi i64 [ 0, %.lr.ph167 ], [ %i.aa, %bb.r ] ; 7 uses
  %i.x = icmp samesign ult i64 %.sroa.6.0165, 11
  call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %.sroa.6.0165 ; 3 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.6.0165
  %i.aa = add nuw nsw i64 %.sroa.6.0165, 1        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ab = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.i
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.y, i64 24, i1 false), !alias.scope !65032
  br label %"_ZN75_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he46ba88336015572E.exit"

bb.k:                                             ; preds = %.noexc
  invoke void @"_ZN70_$LT$smartstring..boxed..BoxedString$u20$as$u20$core..clone..Clone$GT$5clone17h57d38e5bd813c3d3E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y)
          to label %"_ZN75_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he46ba88336015572E.exit" unwind label %bb.e

"_ZN75_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he46ba88336015572E.exit": ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @"_ZN68_$LT$rhai..types..dynamic..Dynamic$u20$as$u20$core..clone..Clone$GT$5clone17h1b28c043977b7655E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.z)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %"_ZN75_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he46ba88336015572E.exit"
  %i.ac = load i16, ptr %i.r, align 2, !noalias !65033, !noundef !60 ; 3 uses
  %i.ad = icmp ult i16 %i.ac, 11
  br i1 %i.ad, label %bb.r, label %bb.m, !prof !79

bb.m:                                             ; preds = %bb.l
  store i64 %.sroa.6.0165, ptr %i.s, align 8
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2584, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2585) #70
          to label %bb.o unwind label %bb.n, !noalias !65033

bb.n:                                             ; preds = %bb.m
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.f)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.i" unwind label %bb.p, !noalias !65034, !inline_history !78

bb.o:                                             ; preds = %bb.m
  unreachable

bb.p:                                             ; preds = %bb.q, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.i", %bb.n
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !65035
  unreachable

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.i": ; preds = %bb.n
  %i.ag = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
          to label %.noexc.i unwind label %bb.p, !noalias !65035

.noexc.i:                                         ; preds = %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.i"
  br i1 %i.ag, label %.body, label %bb.q

bb.q:                                             ; preds = %.noexc.i
  invoke void @"_ZN73_$LT$smartstring..boxed..BoxedString$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f1af6f1d0a8e3b0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body unwind label %bb.p, !noalias !65035

bb.r:                                             ; preds = %bb.l
  %i.ah = zext nneg i16 %i.ac to i64              ; 2 uses
  %i.ai = add nuw nsw i16 %i.ac, 1
  store i16 %i.ai, ptr %i.r, align 2, !noalias !65033
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !65035
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.f, i64 16, i1 false), !noalias !65034
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.al = load i16, ptr %i.t, align 2, !noundef !60
  %i.am = zext i16 %i.al to i64
  %i.an = icmp samesign ult i64 %i.aa, %i.am
  br i1 %i.an, label %bb.i, label %._crit_edge168

bb.s:                                             ; preds = %"_ZN75_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he46ba88336015572E.exit"
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
end_hunk_7
